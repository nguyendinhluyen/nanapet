<?php
function getOldProducts($lastest_products, $max_number_product, $config_name, $n_all_product, $condition) {
    // Get top lastest products
    $n_lastest_product = count($lastest_products);
    if ($n_lastest_product > $max_number_product) {
        $products = $lastest_products;
    } else {
        // Count number of old products
        $n_old_product = $max_number_product - $n_lastest_product;

        // Get index of previous products
        $Product = new Product();
        $old_pro = $Product->getPreviousLimitProduct($config_name);
        $start_limit_old_product = $old_pro[0]["config_value"];

        // Calculate end limit products
        $end_limit_old_product = $start_limit_old_product + $n_old_product;

        // Reset start limit old product in case show full product
        if (intval($end_limit_old_product + $max_number_product) > intval($n_all_product - $n_lastest_product)) {
            $end_limit_old_product = 0;
            $start_limit_old_product = 0;
        }

        // Update config limit products
        $date_added_pro = $old_pro[0]["date_added"];
        if ($date_added_pro != date('Y-m-d')) {
            $Product->updateLimitProduct($end_limit_old_product, $config_name);
        }

        // Load old products
        $old_products = $Product->getProductsLimitOrderById($start_limit_old_product
                , $n_old_product, $condition);
        $products = array_merge($lastest_products, $old_products);
    }
    return $products;
}

function getpercent($str1, $str2) {
    $encourage = (int) str_replace(".", "", $str1);
    $price = (int) str_replace(".", "", $str2);
    if ($encourage > $price) {
        $saleoff = round(($encourage - $price) / $encourage * 100);
    }
    $saleoff = $saleoff . '%';
    return $saleoff;
}

$disCountVIPCustomer = 0;
if ($_SESSION['username'] != '') {
    // discount info
    $Discount_honorUser = $Product->getDiscountOfCustomer($_SESSION['username']);
    if (intval($Discount_honorUser) > 0) {
        $disCountVIPCustomer = (int) $Discount_honorUser;
    }
}

function getProducts($condition, $config_name, $n_display_product) {
    $Product = new Product();
    $week_days = 7;
    $lastest_best_sale_products = $Product->getProductsInWeek($week_days, $condition);
    $n_all_best_sale_product = $Product->countAllWithConditionProduct($condition);
    $products = getOldProducts($lastest_best_sale_products, $n_display_product
            , $config_name, $n_all_best_sale_product, $condition);
    return $products;
}

function showProducts(&$home, $areadisplay, $products, $displayofline, $total_display_product) {
    $tpl = '';
    $tpl_temp = '<div class="row" id="product_home" style="float:right">
                                <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <ul>';
    global $xtemplate;
    $block = $xtemplate->get_block_from_str($home, $areadisplay);
    $flag = 0;
    $n = count($products);
    if ($n > $total_display_product) {
        $n = $total_display_product;
    }
    for ($i = 0; $i < $n; ++$i) {
        $flag ++;
        $price_encourage = $products[$i]['products_price'];
        $price_not_discount_product = "<div style='height:50px'> </div>";
        if ($products[$i]['product_encourage'] != '' && $products[$i]['p_type'] == '') {
            $price_not_discount_product = $products[$i]['products_price'];
            $price_encourage = (int) str_replace(".", "", $products[$i]['product_encourage']);
            $price_of_product = (int) str_replace(".", "", $price_not_discount_product);
            global $disCountVIPCustomer;
            $priceDiscountVIPCustomer = ($price_of_product * $disCountVIPCustomer) / 100;
            $priceVIPCustomer = $price_of_product - $priceDiscountVIPCustomer;
            if ($price_encourage > $priceVIPCustomer) {
                $priceVIPCustomer = round($priceVIPCustomer / 1000) * 1000;
                $price_encourage = common::convertIntToFormatMoney($priceVIPCustomer);
                $PromotionSale = '<span class="promotion">
                                                <span class="promotion_sale">-' . $disCountVIPCustomer
                        . '%' . '</span>
                                    </span>';
            } else {
                $price_encourage = common::convertIntToFormatMoney($price_encourage);
                $percent = getpercent($products[$i]['products_price'], $price_encourage);
                $PromotionSale = '<span class="promotion">
                                                <span class="promotion_sale">-' . $percent . '</span>
                                            </span>';
            }
            $price_not_discount_product = $price_not_discount_product . " VNĐ";
        } else {
            $PromotionSale = '';
        }

        $Category = new Category();
        $category_key = $Category->getCategoryKeyByProductID($products[$i]['products_id']);
        $tpl_temp .= $xtemplate->assign_vars($block, array(
            'product_img' => $products[$i]['products_image'],
            'product_name' => common::limitContent($products[$i]['products_name'], 100),
            'promotion_Sale' => $PromotionSale,
            'product_price' => $price_encourage,
            'price_not_discount_product' => $price_not_discount_product,
            'product_short' => common::limitContent($products[$i]['description'], 50),
            'product_key' => $products[$i]['products_key'],
            'category' => $category_key
        ));
        if ($flag % $displayofline == 0) {
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp . '</div></div>';
            $tpl_temp = '<div class="row" id="product_home" style="float:right">
                                        <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <ul>';
        }
    }
    $home = $xtemplate->assign_blocks_content($home, array(
        $areadisplay => $tpl
    ));
}

function showNews(&$home, $areadisplay, $category) {
    $News = new News();
    $news = $News->getLastestNewsByCategory($category);
    $n = count($news);
    // Load news
    $tpl = '';
    $tpl_temp = '<div class="row" id="news_home">
                                <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <ul>';
    global $xtemplate;
    $block = $xtemplate->get_block_from_str($home, $areadisplay);
    $flag = 0;
    for ($i = 0; $i < $n; ++$i) {
        $flag ++;
        $tpl_temp .= $xtemplate->assign_vars($block, array(
            'news_name' => $news[$i]['news_name'],
            'news_key' => $news[$i]['news_key'],
            'news_image' => $news[$i]['news_image'],
        ));

        if ($flag % 4 == 0) {
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp . '</div></div>';
            $tpl_temp = '<div class="row" id="product_home">
                                        <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                            <ul>';
        }
    }
    $home = $xtemplate->assign_blocks_content($home, array(
        $areadisplay => $tpl
    ));
}

// Load layout
$home = $xtemplate->load('home_bootstrap');

// Begin combo ban chay nhat
$Product = new Product();
$condition_combo = " AND upgrade_categories_id LIKE '%,337,%' ";
$configname_combo = "pre_limit_combo_best_sale";
$totaldisplayproduct_combo = 5;
$products_combo = getProducts($condition_combo, $configname_combo, $totaldisplayproduct_combo);
$areadisplay_combo = 'BESTCOMBOPRODUCTS';
showProducts($home, $areadisplay_combo, $products_combo, $totaldisplayproduct_combo, $totaldisplayproduct_combo);
// End combo ban chay nhat

// Begin san pham ban chay
$condition_bestsale = " AND p_bestsell = 1 ";
$configname_bestsale = "pre_limit_product";
$totaldisplayproduct_bestsale = 10;
$products_bestsale = getProducts($condition_bestsale, $configname_bestsale, $totaldisplayproduct_bestsale);
$areadisplay_bestsale = 'HOTPRODUCTSNEW';
$displayofline_bestsale = 5;
showProducts($home, $areadisplay_bestsale, $products_bestsale, $displayofline_bestsale, $totaldisplayproduct_bestsale);
// End san pham ban chay

// Begin danh cho cun cung
$condition_dog = " AND species='10' "; // 10: Dog, 01: Cat
$configname_dog = "pre_limit_product_dog";
$totaldisplayproduct_dog = 6;
$products_dog = getProducts($condition_dog, $configname_dog, $totaldisplayproduct_dog);
$areadisplay_dog = 'DOGPRODUCTSNEW';
$displayofline_dog = 3;
showProducts($home, $areadisplay_dog, $products_dog, $displayofline_dog, $totaldisplayproduct_dog);

// Load Dog news
showNews($home, 'DOGNEWS', "27");

// Begin danh cho meo cung
$condition_cat = " AND species='01' "; // 10: Dog, 01: Cat
$configname_cat = "pre_limit_product_cat";
$totaldisplayproduct_cat = 6;
$products_cat = getProducts($condition_cat, $configname_cat, $totaldisplayproduct_cat);
$areadisplay_cat = 'CATPRODUCTSNEW';
$displayofline_cat = 3;
showProducts($home, $areadisplay_cat, $products_cat, $displayofline_cat, $totaldisplayproduct_cat);
// End danh cho meo cung

// Load cat news
showNews($home, 'CATNEWS', "28");

// Begin tu thuoc phong than
$condition_medicine = " AND CONCAT(' ',upgrade_categories_id,' ') LIKE '%,271,%'";
$configname_medicine = "pre_limit_product_medicine";
$totaldisplayproduct_medicine = 5;
$products_medicine = getProducts($condition_medicine, $configname_medicine, $totaldisplayproduct_medicine);
$areadisplay_medicine = 'MEDICINEPRODUCTSNEW';
showProducts($home, $areadisplay_medicine, $products_medicine, $totaldisplayproduct_medicine, $totaldisplayproduct_medicine);
// End tu thuoc phong than

// List advs home
$arrAdvs = GetRows('adver_id, adver_logo, adver_webname'
        , 'ads'
        , "adver_status = 1");
$list_advs = '';
foreach ($arrAdvs as $adv) {
    $list_advs .= '<div>'
            . '<a rel="nofollow" target="_blank" style = "outline: none" href="{linkS}thuong-hieu/'
            . $adv['adver_id'] . '">'
            . '<img alt="' . $adv['adver_webname'] . '" src="{linkS}upload/adver/thumb/'
            . $adv['adver_logo'] . '" width = "100px" height= "75px"/>'
            . '</a> '
            . '</div>';
}
$home = $xtemplate->replace($home, array('list_advs' => $list_advs));
$content = $home;
?>