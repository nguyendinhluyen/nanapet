<?php
    include 'category.php';
    function getpercent($str1, $str2) {
        $encourage = (int) str_replace(".", "", $str1);
        $price = (int) str_replace(".", "", $str2);
        if ($encourage > $price) {
            $saleoff = round(($encourage - $price) / $encourage * 100);
        }
        $saleoff = $saleoff . '%';
        return $saleoff;
    }

    $content = $xtemplate->load('product_bootstrap');
    $Product = new Product();
    if ($_SESSION['username'] != '') {
        // Discount for customer
        $Discount_honorUser = $Product->getDiscountOfCustomer($_SESSION['username']);
        if (intval($Discount_honorUser) > 0) {
            $disCountVIPCustomer = (int) $Discount_honorUser;
        }
    }

    // Title for page all product SEO
    $title_page = '';
    $page_now = intval($_GET['trang']);
    if (!isset($page_now) || $page_now === 1 || $page_now === 0) {
        $title_page = 'Thức ăn cho chó và mèo';
    } else {
        $title_page = "Thức ăn cho chó và mèo - trang $page_now";     
    }
    
    // Description
    $description = $title_page;
    
    $breadcrumbs_path = '<a href="{linkS}">NanaPet</a> » Sản Phẩm';
    $products = $Product->getProductsNewCount();
    $total = count($products);

    // Navigation for 24 products each page
    $p_now = 0;
    $pp = 24;
    if (isset($page_now)) {
        $p_now = intval($page_now);
    }
    $numofpages = $total / $pp;
    $page = 0;
    if ($p_now == 0) {
        $page = 1;
    } else {
        if ($p_now <= ceil($numofpages)) {
            $page = $p_now;
        } else {
            $page = 1;
        }
    }
    $limitvalue = ($page - 1) * $pp;
    // End navigation

    $linkPage = "san-pham";
    $nav_page = pagination($linkS . $linkPage ."/", ceil($numofpages), $page);
    $nav_page = str_replace("page=", "trang-", $nav_page);
    $products = $Product->getProductsNewLimit($limitvalue, $pp);
    $n = count($products);
    $tpl = '';

    // Bootstrap
    $tpl_temp = '<div class="row" id="product_main">
                        <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <ul style ="margin-left: -43px">';
    $flag = 0;
    $block = $xtemplate->get_block_from_str($content, 'PRODUCT');
    for ($i = 0; $i < $n; ++$i) {
        $flag ++;
        $price_encourage = $products[$i]['products_price'];
        $price_not_discount_product = "";
        if ($products[$i]['product_encourage'] != '' && $products[$i]['p_type'] == '') {
            $price_not_discount_product = $products[$i]['products_price'];
            $price_encourage = (int) str_replace(".", "", $products[$i]['product_encourage']);
            $price_of_product = (int) str_replace(".", "", $price_not_discount_product);
            $priceDiscountVIPCustomer = ($price_of_product * $disCountVIPCustomer) / 100;
            $priceVIPCustomer = $price_of_product - $priceDiscountVIPCustomer;

            if ($price_encourage > $priceVIPCustomer) {
                $priceVIPCustomer = round($priceVIPCustomer / 1000);
                $priceVIPCustomer = $priceVIPCustomer * 1000;
                $price_encourage = common::convertIntToFormatMoney($priceVIPCustomer);
                $PromotionSale = '<span class="promotion">
                                        <span class="promotion_sale">-' . $disCountVIPCustomer . '%' . '</span>
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
        $category_key = $Category->getCategoryKeyByProductKey($products[$i]['products_key']);
        $tpl_temp .= $xtemplate->assign_vars($block, array(
            'product_img' => $products[$i]['products_image'],
            'product_name' => $products[$i]['products_name'],
            'promotion_Sale' => $PromotionSale,
            'product_price' => $price_encourage,
            'product_price_old' => $price_not_discount_product,
            'product_short' => '',
            'product_key' => $products[$i]['products_key'],
            'category' => $category_key,
            'product_name_nocut' => $products[$i]['products_name']
        ));

        if ($flag % 4 == 0 || $i > $n - 2) {
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp . '</div></div>';
            $tpl_temp = '<div class="row" id="product_main">
                                <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <ul style ="margin-left: -43px">';
        }
    }

    $content = $xtemplate->assign_blocks_content($content, array(
        'PRODUCTS' => $tpl,
            ));

    $url = getFullUrl();
    $url .="/";
    $url1 = $url . "order/";

    // Load dog news
    $News = new News();
    $news = $News->getNewsNewest("4");
    $n = count($news);

    // Load news
    $tpl = '';
    $tpl_temp = '<div class="row" id="news_home">
                                <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <ul>';
    $block = $xtemplate->get_block_from_str($content, 'NEWS');
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
        }
    }

    $content = $xtemplate->assign_blocks_content($content, array(
        'NEWS' => $tpl
    ));

    //List advs
    $list_advs = '';
    $arrAdvs = GetRows('adver_id, adver_logo, adver_link, adver_webname', 'ads', "adver_status = 1");
    foreach ($arrAdvs as $adv) {
        $list_advs .= '<div>'
                . '<a rel="nofollow" style = "outline: none" href="{linkS}thuong-hieu/' 
                . $adv['adver_id']. '">'
                . '<img alt="' . $adv['adver_webname'] . '" src="{linkS}upload/adver/thumb/' 
                . $adv['adver_logo'] . '" width = "90px" height= "70px"/>'
                . '</a> '
                . '</div>';
    }
    
    // Pagination product for SEO
    // Please check index.php for more info
    if (ceil($numofpages) > 1) {
        if ($page == 1) {
            $showpage = $page + 1;
            $link_product_navigation .= "<link rel='canonical' href='" . $linkS . $linkPage . "'/>";
            $link_product_navigation .= "<link rel='next' href='" . $linkS . $linkPage . "/trang-$showpage'/>";
        } else if ($page > 1 && $page < ceil($numofpages)) {
            $showprepage = $page - 1;
            $shownextpage = $page + 1;
            $link_product_navigation .= "<link rel='prev' href='" . $linkS . $linkPage . "/trang-$showprepage'/>";
            $link_product_navigation .= "<link rel='next' href='" . $linkS . $linkPage . "/trang-$shownextpage'/>";
            $link_product_navigation .= "<meta name='robots' content='noindex,follow'/>";
        } else {
            $showprepage = $page - 1;
            $link_product_navigation .= "<link rel='prev' href='" . $linkS . $linkPage . "/trang-$showprepage'/>";
            $link_product_navigation .= "<meta name='robots' content='noindex,follow'/>";
        }    
    }
    
    $category_name = "";
    $content = $xtemplate->replace($content, array(
        'page' => $nav_page,
        'url' => $url,
        'url1' => $url1,
        'self_total' => '1 - 32',
        'total_product' => '32',
        'style_span' => 'style = "display:none"',
        'category' => $category,
        'list_advs' => $list_advs,
        'category_name' => $category_name,
        'display_seo' => 'display:none',
        'text_seo' => $text_seo // Check category.php for data text seo
    ));
?>