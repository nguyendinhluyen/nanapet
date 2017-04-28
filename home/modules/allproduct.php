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
    
    function showProducts(&$content, $areadisplayline, $areadisplay, $products, 
                        $nbdisplayofline, $style="margin-left: -43px") {
        $n = count($products);
        $tpl = '';
        $tpl_temp = '<div class="row" id="product_main">
                        <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                            <ul style ="'.$style.'">';
        $flag = 0;
        global $xtemplate;
        $block = $xtemplate->get_block_from_str($content, $areadisplayline);
        for ($i = 0; $i < $n; ++$i) {
            $flag ++;
            $price_encourage = $products[$i]['products_price'];
            $price_not_discount_product = "";
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

            if ($flag % $nbdisplayofline == 0 || $i > $n - 2) {
                $tpl_temp .= ' </ul>';
                $tpl .= $tpl_temp . '</div></div>';
                $tpl_temp = '<div class="row" id="product_main">
                                <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12">
                                    <ul style ="'.$style.'">';
            }
        }
        $content = $xtemplate->assign_blocks_content($content, array(
            $areadisplay => $tpl,
        ));
    }
    
    function showMobileLayout() {
        $html_mobile = '<div class = "container hidden-lg hidden-sm hidden-md">
                            <div class ="row">
                                <div class="col-xs-12">
                                    <div id="breakcrumb" 
                                         style="font-size:14px; 
                                                font-family: RobotoSlabRegular;">
                                        {breadcrumbs_path}
                                    </div>
                                    <div style="padding-top: 20px; 
                                                margin-left: -15px; 
                                                margin-right: -15px">
                                        <a href="{linkS}combo-sieu-tiet-kiem-317/">
                                            <img class="img-reponsive" 
                                                alt="combo siêu tiết kiệm"
                                                src="{linkS}layout/bootstrap/images/product_combo.png" 
                                                alt="combo tiết kiệm"
                                                width="100%"
                                                style="cursor: pointer;">
                                        </a>
                                    </div>
                                    <!--BEGIN SEO CATEGORY-->
                                    <div class ="col-lg-12" style="{display_seo}">
                                        <p style="text-align:left;
                                                font-family: RobotoSlabBold;
                                                font-size: 15px;
                                                color:#929292;
                                                line-height: 25px;
                                                margin-top:20px">
                                            CÓ THỂ BẠN CHƯA BIẾT
                                        </p>
                                        <p style="text-align:left;
                                                font-family:RobotoSlabRegular;
                                                font-size:15px;
                                                color:#929292;
                                                line-height:25px">
                                            {text_seo}
                                        </p>
                                        <hr style = "border-width:1px;                               
                                                    border-color:#eee; 
                                                    width:100%; 
                                                    float:left;
                                                    margin-top:10px;
                                                    margin-bottom: 10px">
                                    </div>
                                    <!--END SEO CATEGORY-->
                                    <div class="product_main">
                                        <!--BEGINLIST_PRODUCTS_MOBILE-->
                                        <!--BEGIN_PRODUCT_MOBILE-->
                                        <li class="col-xs-6" style="margin-top:20px">
                                            <a href="{linkS}{category}/{product_key}.htm" style = "outline:none">
                                                <h4>
                                                    <a href="{linkS}{category}/{product_key}.htm" class="preview">
                                                        <img class="img-responsive center-block" 
                                                            src="{linkS}upload/product/{product_img}" 
                                                            alt="{product_name_nocut}"
                                                            style="width:100%">
                                                    </a>
                                                </h4>                                       
                                                <h3 style="text-align:center">
                                                    <span class="product_main_title_mobile">
                                                        {product_name}
                                                    </span>
                                                </h3>
                                                <div class="product_main_price_mobile">{product_price} VNĐ</div> 
                                                <div class="product_main_price_en_mobile">{product_price_old}</div>                                
                                            </a>
                                         </li>
                                        <!--END_PRODUCT_MOBILE-->
                                        <!--ENDLIST_PRODUCTS_MOBILE-->
                                    </div>

                                    <!-- BEGIN PAGE NAVIGATION -->
                                    <div align="center">
                                        <div class="pagination" align="center" 
                                             style="margin-left: auto;
                                                    margin-right: auto;
                                                    font-size:14px;
                                                    font-family:RobotoSlabRegular;
                                                    margin-top: 20px;
                                                    margin-bottom: 20px">
                                            {page}
                                        </div> 
                                    </div>
                                    <!-- END PAGE NAVIGATION -->    
                                </div>
                            </div>
                        </div>';
        return $html_mobile;
    }
    
    function showTabletLayout() {
        $html_tablet = '<div class = "container hidden-lg hidden-xs">
                            <div class ="row">
                                <div class="col-xs-12">
                                    <div id="breakcrumb" 
                                         style="font-size:14px; 
                                                font-family: RobotoSlabRegular;">
                                        {breadcrumbs_path}
                                    </div>
                                    <div style="padding-top: 20px; 
                                                margin-left: -50px; 
                                                margin-right: -50px">
                                        <a href="{linkS}combo-sieu-tiet-kiem-317/">
                                            <img class="img-reponsive" 
                                                alt="combo siêu tiết kiệm"
                                                src="{linkS}layout/bootstrap/images/product_combo.png" 
                                                alt="combo tiết kiệm"
                                                width="100%"
                                                style="cursor: pointer;">
                                        </a>
                                    </div>
                                    <!--BEGIN SEO CATEGORY-->
                                    <div class ="col-lg-12" style="{display_seo}">
                                        <p style="text-align:left;
                                                font-family: RobotoSlabBold;
                                                font-size: 15px;
                                                color:#929292;
                                                line-height: 25px;
                                                margin-top:20px">
                                            CÓ THỂ BẠN CHƯA BIẾT
                                        </p>
                                        <p style="text-align:left;
                                                font-family:RobotoSlabRegular;
                                                font-size:15px;
                                                color:#929292;
                                                line-height:25px">
                                            {text_seo}
                                        </p>
                                        <hr style = "border-width:1px;                               
                                                    border-color:#eee; 
                                                    width:100%; 
                                                    float:left;
                                                    margin-top:10px;
                                                    margin-bottom: 10px">
                                    </div>
                                    <!--END SEO CATEGORY-->
                                    <div class="product_main">
                                        <!--BEGINLIST_PRODUCTS_TABLET-->
                                        <!--BEGIN_PRODUCT_TABLET-->
                                        <li class="col-sm-3 col-md-3" style="margin-top:20px">
                                            <a href="{linkS}{category}/{product_key}.htm" style = "outline:none">
                                                <h4>
                                                    <a href="{linkS}{category}/{product_key}.htm" class="preview">
                                                        <img class="img-responsive center-block" 
                                                            src="{linkS}upload/product/{product_img}" 
                                                            alt="{product_name_nocut}"
                                                            style="width:100%">
                                                    </a>
                                                </h4>                                       
                                                <h3 style="text-align:center">
                                                    <span class="product_main_title_mobile">
                                                        {product_name}
                                                    </span>
                                                </h3>
                                                <div class="product_main_price_mobile">{product_price} VNĐ</div> 
                                                <div class="product_main_price_en_mobile">{product_price_old}</div>                                
                                            </a>
                                         </li>
                                        <!--END_PRODUCT_TABLET-->
                                        <!--ENDLIST_PRODUCTS_TABLET-->
                                    </div>

                                    <!-- BEGIN PAGE NAVIGATION -->
                                    <div align="center">
                                        <div class="pagination" align="center" 
                                             style="margin-left: auto;
                                                    margin-right: auto;
                                                    font-size:14px;
                                                    font-family:RobotoSlabRegular;
                                                    margin-top: 20px;
                                                    margin-bottom: 20px">
                                            {page}
                                        </div> 
                                    </div>
                                    <!-- END PAGE NAVIGATION -->    
                                </div>
                            </div>
                        </div>';
        return $html_tablet;
    }

    $Product = new Product();
    if ($_SESSION['username'] != '') {
        // Discount for customer
        $Discount_honorUser = $Product->getDiscountOfCustomer($_SESSION['username']);
        if (intval($Discount_honorUser) > 0) {
            $disCountVIPCustomer = (int) $Discount_honorUser;
        }
    }
    
    // Get category of products
    $category_key = input($_GET['category_key']);
    if (isset($_GET['category_sub_key'])) {
        $category_key = input($_GET['category_sub_key']);
    }
    
    // Bread crumbs
    $Category = new Category();
     if (!empty($category_key)) {
        $breadcrumbs = $Category->getCategoryPath($category_key);
        $breadcrumbs_path = '<a style = "outline:none" href="{linkS}">NanaPet</a> &raquo; '
                . '<a style = "outline:none" href="{linkS}san-pham/">Sản Phẩm</a>';
    } else {
        $breadcrumbs_path = '<a href="{linkS}">NanaPet</a> » Sản Phẩm';     
    }

    // Title for page all product SEO
    $title_page = '';
    $page_now = intval($_GET['trang']);
    
    if(empty($title_page)) {
        if (!empty($breadcrumbs[0]['name'])
                && (!isset($page_now) || $page_now == 1 || $page_now == 0)) {
            $title_page = $breadcrumbs[0]['name'];
        } else if (!empty($breadcrumbs[0]['name']) && isset($page_now)) {
            $title_page = $breadcrumbs[0]['name'] . " - trang $page_now";
        } else if (empty($breadcrumbs[0]['name'])) {
            if (!isset($page_now) || $page_now == 1 || $page_now == 0) {
                $title_page = 'Thức ăn cho chó và mèo';
            } else {
                $title_page = "Thức ăn cho chó và mèo - trang $page_now";     
            }
        }
    } else {
        if(isset($page_now) && $page_now != 0) {
            $title_page .= " - trang $page_now";
        }
    }
    
    // Description
    if(empty($description)) {
        $description = $title_page;
    } else {
        if(isset($page_now) && $page_now != 0) {
            $description .= " - trang $page_now";
        }
    }

    if (empty($keywords)) {
        $keywords = "thức ăn cho chó, thức ăn cho mèo";
    }
    
    // Check link page for navigation
    if (empty($category_key)) {
        $linkPage = 'san-pham/';
    } else {
        $linkPage = $breadcrumbs[0]['key'] . '/';
        if ($category_key == 'sale-off') {
            $breadcrumbs_path .= ' &raquo; Sản phẩm giảm giá';
            $title_page = "Sản phẩm giảm giá";
            if(isset($page_now) && $page_now != 0) {
                $title_page .= " - trang $page_now";
            }
            $description = $title_page;
            $keywords = "thức ăn cho chó, thức ăn cho mèo";
            $linkPage = 'sale-off/';
        }
    }
    
    // Begin navigation
    if(empty($category_key)) {
        $total = intval($Product->getProductsNewCount());
    } else {
        $products_t = $Product->getProductsByCategoryKey($category_key); 
        $total = count($products_t);
    }
    
    if ($total == 0) {
        ?>
        <script>
            window.location = "<?php echo $linkS; ?>";
        </script>
        <?php
    }

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
    // end navigation

    // load products
    if (empty($category_key)) {
        $products = $Product->getProductsNewLimit($limitvalue, $pp);     
    } else {
        $products = $Product->getProductsByCategoryKeyLimitOrderBy($products_t, 
                            $category_key, $limitvalue, $pp);
    }
    
    // show desktop
    $content = $xtemplate->load('product_bootstrap');
    $tablet_layout = showTabletLayout();
    $mobile_layout = showMobileLayout();
    $content = $xtemplate->replace($content, array(
        'tablet_layout' => $tablet_layout,
        'mobile_layout' => $mobile_layout
    ));
    $areadisplayline = "PRODUCT";
    $areadisplay = "PRODUCTS";
    $nbdisplayofline = 4;
    showProducts($content, $areadisplayline, $areadisplay, $products, $nbdisplayofline);

    // show mobile
    $areadisplayline_mobile = "PRODUCT_MOBILE";
    $areadisplay_mobile = "PRODUCTS_MOBILE";
    $nbdisplayofline_mobile = 2;
    showProducts($content, $areadisplayline_mobile, $areadisplay_mobile, 
            $products, $nbdisplayofline_mobile,"padding:0px");
    
    // show tablet
    $areadisplayline_tablet = "PRODUCT_TABLET";
    $areadisplay_tablet = "PRODUCTS_TABLET";
    $nbdisplayofline_tablet = 4;
    showProducts($content, $areadisplayline_tablet, $areadisplay_tablet, 
            $products, $nbdisplayofline_tablet,"padding:0px");
    
    // begin load news
    $News = new News();
    $news = $News->getNewsNewest("4");
    $n = count($news);
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
    // end load news
    
    // load advs
    $list_advs = '';
    $arrAdvs = GetRows('adver_id, adver_logo, adver_link, adver_webname', 'ads', "adver_status = 1");
    foreach ($arrAdvs as $adv) {
        $list_advs .= '<div>'
                . '<a rel="nofollow" target="_blank" style = "outline: none" href="{linkS}thuong-hieu/' 
                . $adv['adver_id']. '">'
                . '<img alt="' . $adv['adver_webname'] . '" src="{linkS}upload/adver/thumb/' 
                . $adv['adver_logo'] . '" width = "90px" height= "70px"/>'
                . '</a> '
                . '</div>';
    }
    
    // pagination product for SEO - Please check home/index.php for more info
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
    
    if (empty($text_seo)) {
        $display_seo ="display:none";
    } else {
        $display_seo ="display:block";
    }
    
    // $nav_page = str_replace("page=", "trang-", pagination($linkS . $linkPage ."/", ceil($numofpages), $page));
    $nav_page = pagination($linkS . $linkPage , ceil($numofpages), $page);
    $nav_page = str_replace("page=", "trang-", $nav_page);
    $content = $xtemplate->replace($content, array(
        'page' => $nav_page,
        'category' => $category,
        'list_advs' => $list_advs,
        'category_name' => $category_name,
        'display_seo' => $display_seo,
        'text_seo' => $text_seo // Check category.php for data text seo
    ));
?>