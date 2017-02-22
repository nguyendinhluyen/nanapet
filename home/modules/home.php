<?php
    function getOldProducts($lastest_products, $max_number_product, $config_name, $n_all_product, $condition) {
        // Get top lastest products
        $n_lastest_product = count($lastest_products);
        if ($n_lastest_product > $max_number_product) {
            $products = $lastest_products;
        } else {
            // Count number of old product
            $n_old_product = $max_number_product - $n_lastest_product;

            // Get index of previous product
            $Product = new Product();
            $old_pro = $Product->getPreviousLimitProduct($config_name);
            $start_limit_old_product = $old_pro[0]["config_value"];

            // Calculate end limit product
            $end_limit_old_product = $start_limit_old_product + $n_old_product;

            // Reset start limit old product in case show full product
            if (intval($end_limit_old_product + $max_number_product) > intval($n_all_product - $n_lastest_product)) {
                $end_limit_old_product = 0;
                $start_limit_old_product = 0;
            }

            // Update config limit product
            $date_added_pro = $old_pro[0]["date_added"];
            if ($date_added_pro != date('Y-m-d')) {
                $Product->updateLimitProduct($end_limit_old_product, $config_name);
            }

            // Load old product
            $old_products = $Product->getProductsLimitOrderById($start_limit_old_product
                    , $n_old_product, $condition);
            $products = array_merge($lastest_products, $old_products);
        }
        return $products;
    }

    function getOldNews($lastest_news, $max_number_news, $config_name, $n_all_news, $condition) {
        $lastest_news = $News->getLastestNewsOnWeek(7);
        // Get top lastest news

        $n_lastest_product = count($lastest_products);
        if ($n_lastest_product > $max_number_product) {
            $products = $lastest_products;
        }

        return $news;
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
        // Discount info
        $Discount_honorUser = $Product->getDiscountOfCustomer($_SESSION['username']);
        if (intval($Discount_honorUser) > 0) {
            $disCountVIPCustomer = (int) $Discount_honorUser;
        }
    }

    // Load layout
    $home = $xtemplate->load('home_bootstrap');

    // Get all COMBO best sale
    $Product = new Product();
    $condition = " AND upgrade_categories_id LIKE '%,337,%' ";
    $config_name = "pre_limit_combo_best_sale";
    $n_display_product = 5;
    $lastest_best_sale_products = $Product->getProductsInWeek(7, $condition);
    $n_all_best_sale_product = $Product->countAllWithConditionProduct($condition);
    $products = getOldProducts($lastest_best_sale_products, $n_display_product
            , $config_name, $n_all_best_sale_product, $condition);
    $n = count($products);
    if ($n > $n_display_product) {
        $n = $n_display_product;
    }

    // Show products
    $tpl = '';
    $tpl_temp = '<div class="row" id="product_home">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul>';
    $block = $xtemplate->get_block_from_str($home, 'BESTCOMBOPRODUCTS');
    $flag = 0;
    for ($i = 0; $i < $n; ++$i) {
        $flag ++;
        $price_encourage = $products[$i]['products_price'];
        $price_not_discount_product = "<div style='height:50px'> </div>";
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
        if ($flag % 5 == 0) {
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp . '</div></div>';
            $tpl_temp = '<div class="row" id="product_home">
                                    <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <ul>';
        }
    }
    $home = $xtemplate->assign_blocks_content($home, array(
        'BESTCOMBOPRODUCTS' => $tpl
            ));

    // Get all Best Sell Products
    $Product = new Product();
    $condition = " AND p_bestsell = 1 ";
    $config_name = "pre_limit_product";
    $n_display_product = 10;
    $lastest_best_sale_products = $Product->getProductsInWeek(7, $condition);
    $n_all_best_sale_product = $Product->countAllWithConditionProduct($condition);
    $products = getOldProducts($lastest_best_sale_products, $n_display_product
            , $config_name, $n_all_best_sale_product, $condition);
    $n = count($products);
    if ($n > $n_display_product) {
        $n = $n_display_product;
    }

    // Show products
    $tpl = '';
    $tpl_temp = '<div class="row" id="product_home">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul>';
    $block = $xtemplate->get_block_from_str($home, 'HOTPRODUCTSNEW');
    $flag = 0;
    for ($i = 0; $i < $n; ++$i) {
        $flag ++;
        $price_encourage = $products[$i]['products_price'];
        $price_not_discount_product = "<div style='height:50px'> </div>";
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
        if ($flag % 5 == 0) {
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp . '</div></div>';
            $tpl_temp = '<div class="row" id="product_home">
                                    <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <ul>';
        }
    }
    $home = $xtemplate->assign_blocks_content($home, array(
        'HOTPRODUCTSNEW' => $tpl
            ));

    // Show Dog products
    $condition = " AND species='10' "; // 10: Dog, 01: Cat
    $config_name = "pre_limit_product_dog";
    $n_display_product = 6;
    $lastest_best_sale_products = $Product->getProductsInWeek(7, $condition);
    $n_all_product = $Product->countAllWithConditionProduct($condition);
    $products = getOldProducts($lastest_best_sale_products, $n_display_product
                , $config_name, $n_all_product, $condition);
    $n = count($products);
    if ($n > $n_display_product) {
        $n = $n_display_product;
    }

    // Display Dog products
    $tpl = '';
    $tpl_temp = '<div class="row" id="product_home" style="float:right">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul>';
    $block = $xtemplate->get_block_from_str($home, 'DOGPRODUCTSNEW');
    $flag = 0;
    for ($i = 0; $i < $n; ++$i) {
        $flag ++;
        $price_encourage = $products[$i]['products_price'];
        $price_not_discount_product = "<div style='height:50px'> </div>";
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
        if ($flag % 3 == 0) {
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp . '</div></div>';
            $tpl_temp = '<div class="row" id="product_home" style="float:right">
                                    <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <ul>';
        }
    }
    $home = $xtemplate->assign_blocks_content($home, array(
        'DOGPRODUCTSNEW' => $tpl
            ));

    // Show dog products -- Mobile
    $tpl = '';
    $tpl_temp = '<div class="row" id="product_home" style="float:left">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul>';
    $block = $xtemplate->get_block_from_str($home, 'MOBILEDOGPRODUCTSNEW');
    $flag = 0;
    for ($i = 0; $i < $n; ++$i) {
        $flag ++;
        $price_encourage = $products[$i]['products_price'];
        $price_not_discount_product = "<div style='height:50px'> </div>";
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
                                            <span class="promotion_sale">-' 
                                    . $disCountVIPCustomer . '%' . '</span>
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
        if ($flag % 4 == 0) {
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp . '</div></div>';
            $tpl_temp = '<div class="row" id="product_home" style="float:right">
                                    <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <ul>';
        }
    }
    $home = $xtemplate->assign_blocks_content($home, array(
        'MOBILEDOGPRODUCTSNEW' => $tpl
            ));

    // Load Dog news
    $News = new News();
    $news = $News->getLastestNewsByCategory("27");
    $n = count($news);
    // Load news
    $tpl = '';
    $tpl_temp = '<div class="row" id="news_home">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul>';
    $block = $xtemplate->get_block_from_str($home, 'DOGNEWS');
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
        'DOGNEWS' => $tpl
            ));

    // Show Cat product    
    $condition = " AND species='01' "; // 10: Dog, 01: Cat
    $config_name = "pre_limit_product_cat";
    $n_display_product = 6;
    $lastest_best_sale_products = $Product->getProductsInWeek(7, $condition);
    $n_all_product = $Product->countAllWithConditionProduct($condition);
    $products = getOldProducts($lastest_best_sale_products, $n_display_product, 
            $config_name, $n_all_product, $condition);
    $n = count($products);
    if ($n > $n_display_product) {
        $n = $n_display_product;
    }

    // Show Cat products
    $tpl = '';
    $tpl_temp = '<div class="row" id="product_home" style="float:right">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul>';
    $block = $xtemplate->get_block_from_str($home, 'CATPRODUCTSNEW');
    $flag = 0;
    for ($i = 0; $i < $n; ++$i) {
        $flag ++;
        $price_encourage = $products[$i]['products_price'];
        $price_not_discount_product = "<div style='height:50px'> </div>";
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
        if ($flag % 3 == 0) {
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp . '</div></div>';
            $tpl_temp = '<div class="row" id="product_home" style="float:right">
                                    <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <ul>';
        }
    }
    $home = $xtemplate->assign_blocks_content($home, array(
        'CATPRODUCTSNEW' => $tpl
            ));

    // Show cat products -- mobile
    $tpl = '';
    $tpl_temp = '<div class="row" id="product_home" style="float:left">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul>';
    $block = $xtemplate->get_block_from_str($home, 'MOBILECATPRODUCTSNEW');
    $flag = 0;
    for ($i = 0; $i < $n; ++$i) {
        $flag ++;
        $price_encourage = $products[$i]['products_price'];
        $price_not_discount_product = "<div style='height:50px'> </div>";
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
        if ($flag % 4 == 0) {
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp . '</div></div>';
            $tpl_temp = '<div class="row" id="product_home" style="float:right">
                                    <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <ul>';
        }
    }
    $home = $xtemplate->assign_blocks_content($home, array(
        'MOBILECATPRODUCTSNEW' => $tpl
            ));

    // Load cat news
    $News = new News();
    $news = $News->getLastestNewsByCategory("28");
    $n = count($news);

    // Load news
    $tpl = '';
    $tpl_temp = '<div class="row" id="news_home">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul>';
    $block = $xtemplate->get_block_from_str($home, 'CATNEWS');
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
        'CATNEWS' => $tpl
            ));

    // Get all tu thuoc phong than products
    //$products = $Product->getProductsLastestByCategory("271");    
    $condition = " AND CONCAT(' ',upgrade_categories_id,' ') LIKE '%,271,%'";
    $config_name = "pre_limit_product_medicine";
    $n_display_product = 5;
    $lastest_best_sale_products = $Product->getProductsInWeek(7, $condition);
    $n_all_product = $Product->countAllWithConditionProduct($condition);
    $products = getOldProducts($lastest_best_sale_products, $n_display_product, 
            $config_name, $n_all_product, $condition);

    $n = count($products);
    if ($n > $n_display_product) {
        $n = $n_display_product;
    }

    // Show products
    $tpl = '';
    $tpl_temp = '<div class="row" id="product_home" style="float:right; padding-right: 25px">
                            <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                <ul>';
    $block = $xtemplate->get_block_from_str($home, 'MEDICINEPRODUCTSNEW');
    $flag = 0;
    for ($i = 0; $i < $n; ++$i) {
        $flag ++;
        $price_encourage = $products[$i]['products_price'];
        $price_not_discount_product = "<div style='height:50px'> </div>";
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
                                            <span class="promotion_sale">-' 
                                            . $disCountVIPCustomer . '%' . '</span>
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

        if ($flag % 5 == 0) {
            $tpl_temp .= ' </ul>';
            $tpl .= $tpl_temp . '</div></div>';
            $tpl_temp = '<div class="row" id="product_home" style="float:right; padding-right: 25px">
                                    <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                        <ul>';
        }
    }
    $home = $xtemplate->assign_blocks_content($home, array(
        'MEDICINEPRODUCTSNEW' => $tpl,
    ));

    
    $home = $xtemplate->replace($home, array(
        'brand_dog' => "thức ăn cho chó",
        'brand_cat' => "thức ăn cho mèo",
        'introduce_nanapet' => $introduce_nanapet
    ));

    // List advs home
    $arrAdvs = GetRows('adver_id, adver_logo, adver_webname'
            , 'ads'
            , "adver_status = 1");
    $list_advs = '';
    foreach ($arrAdvs as $adv) {
        $list_advs .= '<div>'
                . '<a rel="nofollow" target="_blank" style = "outline: none" href="{linkS}thuong-hieu/' 
                . $adv['adver_id']. '">'
                . '<img alt="' . $adv['adver_webname'] . '" src="{linkS}upload/adver/thumb/' 
                . $adv['adver_logo'] . '" width = "100px" height= "75px"/>'
                . '</a> '
                . '</div>';
    }
    $home = $xtemplate->replace($home, array('list_advs' => $list_advs));
    $content = $home;
?>