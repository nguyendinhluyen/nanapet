<style>
    a.list_product_name:hover {
        text-decoration: none;
    }    
    a.list_product_name:link {
        text-decoration: none;
    }    
    a.news_name {
        color: #929292;
    }
    a.news_name:hover {
        text-decoration: none;
        color:#ff767c;
    }
    a.news_name:link {
        text-decoration: none;
    }
    a.news_name_destail:hover {
        text-decoration: none;
    }
    .product_detail {
        position:relative;
        overflow:hidden;
    }
    .product_detail .textbox {
        width:195px;
        height:220px;
        position:absolute;
        top:0;
        left:0;
        margin-top:-220px;
        border-radius:15px;
        background-color: #66d0f1;
        border-style:solid;
        border-width: 10px;        
        border-color: #e0f8ff;        
    }       
    .product_detail:hover .textbox {
        margin-top:0;
    }   
    .textbox {
        -webkit-transition: all 0.5s ease;
        transition: all 0.5s ease;
        cursor: pointer;        
    }

</style>
<!-- Begin banner-->
<div class="container-fluid" 
     style="padding:0px;">
    <div class="hidden-xs hidden-sm"
         style="padding-bottom: 60px">
        <!-- use jssor.slider.mini.js (40KB) instead for release -->
        <!-- jssor.slider.mini.js = (jssor.js + jssor.slider.js) -->
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/slider/js/jssor.js"></script>
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/slider/js/jssor.slider.js"></script>
        <script>
            jQuery(document).ready(function ($) {
                var _CaptionTransitions = [];
                _CaptionTransitions["L"] = {$Duration: 900, x: 0.6, $Easing: {$Left: $JssorEasing$.$EaseInOutSine}, $Opacity: 2};
                _CaptionTransitions["R"] = {$Duration: 900, x: -0.6, $Easing: {$Left: $JssorEasing$.$EaseInOutSine}, $Opacity: 2};
                _CaptionTransitions["T"] = {$Duration: 900, y: 0.6, $Easing: {$Top: $JssorEasing$.$EaseInOutSine}, $Opacity: 2};
                _CaptionTransitions["B"] = {$Duration: 900, y: -0.6, $Easing: {$Top: $JssorEasing$.$EaseInOutSine}, $Opacity: 2};
                _CaptionTransitions["ZMF|10"] = {$Duration: 900, $Zoom: 11, $Easing: {$Zoom: $JssorEasing$.$EaseOutQuad, $Opacity: $JssorEasing$.$EaseLinear}, $Opacity: 2};
                _CaptionTransitions["RTT|10"] = {$Duration: 900, $Zoom: 11, $Rotate: 1, $Easing: {$Zoom: $JssorEasing$.$EaseOutQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo}, $Opacity: 2, $Round: {$Rotate: 0.8}};
                _CaptionTransitions["RTT|2"] = {$Duration: 900, $Zoom: 3, $Rotate: 1, $Easing: {$Zoom: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad}, $Opacity: 2, $Round: {$Rotate: 0.5}};
                _CaptionTransitions["RTTL|BR"] = {$Duration: 900, x: -0.6, y: -0.6, $Zoom: 11, $Rotate: 1, $Easing: {$Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInCubic}, $Opacity: 2, $Round: {$Rotate: 0.8}};
                _CaptionTransitions["CLIP|LR"] = {$Duration: 900, $Clip: 15, $Easing: {$Clip: $JssorEasing$.$EaseInOutCubic}, $Opacity: 2};
                _CaptionTransitions["MCLIP|L"] = {$Duration: 900, $Clip: 1, $Move: true, $Easing: {$Clip: $JssorEasing$.$EaseInOutCubic}};
                _CaptionTransitions["MCLIP|R"] = {$Duration: 900, $Clip: 2, $Move: true, $Easing: {$Clip: $JssorEasing$.$EaseInOutCubic}};

                var options = {
                    $FillMode: 2, //[Optional] The way to fill image in slide, 0 stretch, 1 contain (keep aspect ratio and put all inside slide), 2 cover (keep aspect ratio and cover whole slide), 4 actual size, 5 contain for large image, actual size for small image, default value is 0
                    $AutoPlay: true, //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                    $AutoPlayInterval: 4000, //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                    $PauseOnHover: 1, //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

                    $ArrowKeyNavigation: true, //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                    $SlideEasing: $JssorEasing$.$EaseOutQuint, //[Optional] Specifies easing for right to left animation, default value is $JssorEasing$.$EaseOutQuad
                    $SlideDuration: 800, //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                    $MinDragOffsetToSlide: 20, //[Optional] Minimum drag offset to trigger slide , default value is 20
                    //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                    //$SlideHeight: 300,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                    $SlideSpacing: 0, //[Optional] Space between each slide in pixels, default value is 0
                    $DisplayPieces: 1, //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                    $ParkingPosition: 0, //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                    $UISearchMode: 1, //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
                    $PlayOrientation: 1, //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
                    $DragOrientation: 1, //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                    $CaptionSliderOptions: {//[Optional] Options which specifies how to animate caption
                        $Class: $JssorCaptionSlider$, //[Required] Class to create instance to animate caption
                        $CaptionTransitions: _CaptionTransitions, //[Required] An array of caption transitions to play caption, see caption transition section at jssor slideshow transition builder
                        $PlayInMode: 1, //[Optional] 0 None (no play), 1 Chain (goes after main slide), 3 Chain Flatten (goes after main slide and flatten all caption animations), default value is 1
                        $PlayOutMode: 3                                 //[Optional] 0 None (no play), 1 Chain (goes before main slide), 3 Chain Flatten (goes before main slide and flatten all caption animations), default value is 1
            },
                    $BulletNavigatorOptions: {//[Optional] Options to specify and enable navigator or not
                        $Class: $JssorBulletNavigator$, //[Required] Class to create navigator instance
                        $ChanceToShow: 2, //[Required] 0 Never, 1 Mouse Over, 2 Always
                        $AutoCenter: 1, //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                        $Steps: 1, //[Optional] Steps to go for each navigation request, default value is 1
                        $Lanes: 1, //[Optional] Specify lanes to arrange items, default value is 1
                        $SpacingX: 8, //[Optional] Horizontal space between each item in pixel, default value is 0
                        $SpacingY: 8, //[Optional] Vertical space between each item in pixel, default value is 0
                        $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
            },
                    $ArrowNavigatorOptions: {//[Optional] Options to specify and enable arrow navigator or not
                        $Class: $JssorArrowNavigator$, //[Requried] Class to create arrow navigator instance
                        $ChanceToShow: 1, //[Required] 0 Never, 1 Mouse Over, 2 Always
                        $AutoCenter: 2, //[Optional] Auto center arrows in parent container, 0 No, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                        $Steps: 1                                       //[Optional] Steps to go for each navigation request, default value is 1
            }
                };

                var jssor_slider1 = new $JssorSlider$("slider1_container", options);

                //responsive code begin
                //you can remove responsive code if you don't buttonwant the slider scales while window resizes
                function ScaleSlider() {
                    var bodyWidth = document.body.clientWidth;
                    if (bodyWidth)
                        jssor_slider1.$ScaleWidth(Math.min(bodyWidth, 1920));
                    else
                        window.setTimeout(ScaleSlider, 30);
                }
                ScaleSlider();

                $(window).bind("load", ScaleSlider);
                $(window).bind("resize", ScaleSlider);
                $(window).bind("orientationchange", ScaleSlider);
                //responsive code end
            });
        </script>
        <!-- Jssor Slider Begin -->
        <!-- To move inline styles to css file/block, please specify a class name for each element. --> 
        <div id="slider1_container"
             style="position: relative;
             margin: 0 auto;
             top: 0px;
             left: 0px;
             width: 1300px;
             height: 410px; 
             overflow: hidden;
             margin-top: -5px">
            <!-- Loading Screen -->
            <div u="loading" style="position: absolute; 
                 top: 0px; 
                 left: 0px;">
                <div style="filter: alpha(opacity=70); 
                     opacity: 0.7;
                     position: absolute;
                     display: block;
                     top: 0px;
                     left: 0px;
                     width: 100%;
                     height: 100%;">
                </div>
                <div style="position: absolute;
                     display: block;
                     background: url({linkS}layout/bootstrap/css/slider/img/loading.gif) no-repeat center center;
                     top: 0px;
                     left: 0px;
                     width: 100%;
                     height: 100%;">
                </div>
            </div>
            <!-- Slides Container -->
            <div u="slides" style="cursor: pointer;
                 position: absolute;
                 left: 0px;
                 top: 0px;
                 width: 1300px;
                 height: 410px;
                 overflow: hidden;">
                {main_banner}
            </div>

            <!--#region Bullet Navigator Skin Begin -->
            <!-- Help: http://www.jssor.com/development/slider-with-bullet-navigator-jquery.html -->
            <style>
                /* jssor slider bullet navigator skin 21 css */
                /*
                .jssorb21 div           (normal)
                .jssorb21 div:hover     (normal mouseover)
                .jssorb21 .av           (active)
                .jssorb21 .av:hover     (active mouseover)
                .jssorb21 .dn           (mousedown)
                */
                .jssorb21 {
                    position: absolute;
                }
                .jssorb21 div, .jssorb21 div:hover, .jssorb21 .av {
                    position: absolute;
                    /* size of bullet elment */
                    width: 19px;
                    height: 19px;
                    text-align: center;
                    line-height: 19px;
                    color: white;
                    font-size: 12px;
                    background: url({linkS}layout/bootstrap/css/slider/img/b21.png) no-repeat;
                    overflow: hidden;
                    cursor: pointer;
                }
                .jssorb21 div { background-position: -5px -5px; }
                .jssorb21 div:hover, .jssorb21 .av:hover { background-position: -35px -5px; }
                .jssorb21 .av { background-position: -65px -5px; }
                .jssorb21 .dn, .jssorb21 .dn:hover { background-position: -95px -5px; }
            </style>
            <!-- bullet navigator container -->
            <div u="navigator" class="jssorb21" style="bottom: 26px; right: 6px;">
                <!-- bullet navigator item prototype -->
                <div u="prototype"></div>
            </div>
            <!--#endregion Bullet Navigator Skin End -->

            <!--#region Arrow Navigator Skin Begin -->
            <!-- Help: http://www.jssor.com/development/slider-with-arrow-navigator-jquery.html -->
            <style>
                /* jssor slider arrow navigator skin 21 css */
                /*
                .jssora21l                  (normal)
                .jssora21r                  (normal)
                .jssora21l:hover            (normal mouseover)
                .jssora21r:hover            (normal mouseover)
                .jssora21l.jssora21ldn      (mousedown)
                .jssora21r.jssora21rdn      (mousedown)
                */
                .jssora21l, .jssora21r {
                    display: block;
                    position: absolute;
                    /* size of arrow element */
                    width: 55px;
                    height: 55px;
                    cursor: pointer;
                    background: url({linkS}layout/bootstrap/css/slider/img/a21.png) center center no-repeat;
                    overflow: hidden;
                }
                .jssora21l { background-position: -3px -33px; }
                .jssora21r { background-position: -63px -33px; }
                .jssora21l:hover { background-position: -123px -33px; }
                .jssora21r:hover { background-position: -183px -33px; }
                .jssora21l.jssora21ldn { background-position: -243px -33px; }
                .jssora21r.jssora21rdn { background-position: -303px -33px; }
            </style>
            <!-- Arrow Left -->
            <span u="arrowleft" class="jssora21l" style="top: 123px; left: 8px;">
            </span>
            <!-- Arrow Right -->
            <span u="arrowright" class="jssora21r" style="top: 123px; right: 8px;">
            </span>
            <!--#endregion Arrow Navigator Skin End -->
            <a style="display: none" href="http://www.jssor.com">Image Slider</a>
        </div>
        <!-- Jssor Slider End -->
    </div>        
</div>
<!-- End banner-->

<!--Begin combo Ban Chay Nhat-->
<div class="container">
    <div class="row"
         style="padding-bottom: 10px; margin-right: 0px">
        <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12" 
            style="padding-right: 0px;
                    padding-left: 0px">
            <img class="hidden-xs hidden-sm" 
                alt="combo bán chạy"
                src="{linkS}layout/bootstrap/images/combo_ban_chay_nhat.png"
                style = "width: 100%; padding-bottom: 40px;">
            <img class="hidden-lg hidden-md"
                alt="combo bán chạy"
                src="{linkS}layout/bootstrap/images/combo_ban_chay_nhat_mobile.png"
                style="width: 100%;
                    margin-top: 10px;
                    padding-left: 15px;
                    padding-bottom: 20px;">
        </div>
        <!--BEGINLIST_BESTCOMBOPRODUCTS-->
        <!--BEGIN_BESTCOMBOPRODUCTS-->
        {desktop_layout}
        <!--END_BESTCOMBOPRODUCTS-->
        <!--ENDLIST_BESTCOMBOPRODUCTS-->
        
        <!--BEGINLIST_BESTCOMBOPRODUCTS_TABLET-->
        <!--BEGIN_BESTCOMBOPRODUCTS_TABLET-->
        {tablet_layout}
        <!--END_BESTCOMBOPRODUCTS_TABLET-->
        <!--ENDLIST_BESTCOMBOPRODUCTS_TABLET-->
        
        <!--BEGINLIST_BESTCOMBOPRODUCTS_MOBILE-->
        <!--BEGIN_BESTCOMBOPRODUCTS_MOBILE-->
        {mobile_layout}
        <!--END_BESTCOMBOPRODUCTS_MOBILE-->
        <!--ENDLIST_BESTCOMBOPRODUCTS_MOBILE-->

        <!--Begin San Pham Ban Chay-->
        <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12" 
            style = "padding-right: 0px;
                    padding-left: 0px">
            <img class="hidden-xs hidden-sm"
                alt="sản phẩm bán chạy"
                src="{linkS}layout/bootstrap/images/san_pham_ban_chay.png"
                style = "width: 100%; padding-bottom: 40px;">
            <img class="hidden-lg hidden-md"
                alt="sản phẩm bán chạy"
                src="{linkS}layout/bootstrap/images/san_pham_ban_chay_mobile.png"
                style="width: 100%;
                    margin-top: 20px;
                    padding-left: 15px; 
                    padding-bottom: 20px;">
        </div>
        <!--BEGINLIST_HOTPRODUCTSNEW-->
        <!--BEGIN_HOTPRODUCTSNEW-->
        {desktop_layout}
        <!--END_HOTPRODUCTSNEW-->
        <!--ENDLIST_HOTPRODUCTSNEW-->
        
        <!--BEGINLIST_HOTPRODUCTSNEW_TABLET-->
        <!--BEGIN_HOTPRODUCTSNEW_TABLET-->
        {tablet_layout}
        <!--END_HOTPRODUCTSNEW_TABLET-->
        <!--ENDLIST_HOTPRODUCTSNEW_TABLET-->
        
        <!--BEGINLIST_HOTPRODUCTSNEW_MOBILE-->
        <!--BEGIN_HOTPRODUCTSNEW_MOBILE-->
        {mobile_layout}
        <!--END_HOTPRODUCTSNEW_MOBILE-->
        <!--ENDLIST_HOTPRODUCTSNEW_MOBILE-->

        <!--Begin San Pham Cun Cung-->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"
             style="padding-right: 0px;
                    padding-left: 0px;">
            <a href="{linkS}danh-rieng-cho-cho-cung-319/">
                <img class="hidden-xs hidden-sm"
                    alt="sản phẩm cún cưng"
                    src="{linkS}layout/bootstrap/images/san_pham_cun_cung.png"
                    style="width: 100%;
                           padding-bottom: 50px;">
                <img class="hidden-lg hidden-md"
                    alt="sản phẩm cún cưng"
                    src="{linkS}layout/bootstrap/images/danh_cho_cun_cung_mobile.png"
                    style="width: 100%;
                        margin-top:20px;
                        padding-left: 15px;
                        padding-bottom: 20px;">
            </a>
        </div>
        <div class="hidden-xs hidden-sm hidden-md col-lg-4">
            <a href="{linkS}danh-rieng-cho-cho-cung-319/">
                <img alt="{brand_dog}" 
                    src="{linkS}layout/bootstrap/images/san_pham_banner_cun_cung.jpg" 
                    width="460" 
                    height="505"
                    style = "margin-left: -12px; 
                            cursor: pointer;"
                    class="img-rounded">
            </a>
        </div>
        <div class="hidden-xs hidden-sm hidden-md col-lg-8"
            style="padding-left: 10px">
            <!--BEGINLIST_DOGPRODUCTSNEW-->
            <!--BEGIN_DOGPRODUCTSNEW-->
            {desktop_layout}
            <!--END_DOGPRODUCTSNEW-->
            <!--ENDLIST_DOGPRODUCTSNEW-->
        </div>
                        
        <!--BEGINLIST_DOGPRODUCTSNEW_TABLET-->
        <!--BEGIN_DOGPRODUCTSNEW_TABLET-->
        {tablet_layout}
        <!--END_DOGPRODUCTSNEW_TABLET-->
        <!--ENDLIST_DOGPRODUCTSNEW_TABLET-->
        
        <!--BEGINLIST_DOGPRODUCTSNEW_MOBILE-->
        <!--BEGIN_DOGPRODUCTSNEW_MOBILE-->
        {mobile_layout}
        <!--END_DOGPRODUCTSNEW_MOBILE-->
        <!--ENDLIST_DOGPRODUCTSNEW_MOBILE-->
               
        <div style="font-family: PoetsenOne;">
            <div style="text-align: right; font-size: 15px; margin-bottom: 20px;">
                <a  class="hidden-xs hidden-sm"
                    href="{linkS}danh-rieng-cho-cho-cung-319/" 
                    style="color:#ff767d;">
                    Xem tất cả sản phẩm cún cưng >>
                </a>
            </div>
            <div style="text-align: center; font-size: 15px;">
                <a class="hidden-md hidden-lg"
                    href="{linkS}danh-rieng-cho-cho-cung-319/" 
                    style="color:#ff767d;">
                    Xem tất cả sản phẩm cún cưng >>
                </a>
            </div>
        </div>
        <div class = "col-lg-12 hidden-xs hidden-sm hidden-md" 
             style="background-color:#e9f4f6; 
             margin-top: 10px;
             padding-bottom: 50px;
             margin-right: 0px">
            <div style="font-size: 17px; 
                 font-family: PoetsenOne;
                 padding-top: 20px;
                 padding-left: 25px">
                <table>
                    <tr>
                        <td style="padding-right: 28px; width: 150px">
                            <span style="color: #fb7224;">
                                Tin tức về cún
                            </span>
                        </td>
                        <td style="width: 87%">
                            <hr style="color: #dde7e9;
                                border-style:solid;
                                border-width: 1px;"/>
                        </td>
                    </tr>
                </table> 
            </div>
            <div class="container"
                 id="news_container"
                 style="margin-bottom: 0px; margin-left: -30px">
                <!--BEGINLIST_DOGNEWS-->
                <!--BEGIN_DOGNEWS-->
                <li>
                    <div class="news_detail">                                            
                        <div class="news_col" style = "float:left">                    
                            <a href="{linkS}doi-song-pets/{news_key}/" style = "outline:none">
                                <img src="{linkS}upload/news/{news_image}"
                                     width="130"
                                     height="130"
                                     alt="{news_name}"
                                     style="border-radius: 10px">
                            </a>
                        </div><!-- end product_right_col -->
                        <div class="news_title">
                            <div style="font-size: 14px; color: #929292;">
                                <a class = "news_name" href="{linkS}doi-song-pets/{news_key}/" 
                                   style="line-height: 25px;                                
                                   font-family: RobotoSlabRegular;
                                   font-size: 14px;
                                   outline:none">
                                    {news_name}
                                </a>
                            </div>
                        </div>
                    </div><!-- end news_detail -->
                </li>  	
                <!--END_DOGNEWS-->        
                <!--ENDLIST_DOGNEWS-->
            </div>
        </div>        
        <!--End San Pham Cun Cung-->

        <!--Begin San Pham Meo Cung-->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"
             style="padding-right: 0px;
                    padding-left: 0px">
            <a href="{linkS}danh-rieng-cho-meo-yeu-321/">
                <img class="hidden-xs hidden-sm"
                    alt="sản phẩm mèo cưng"
                    src="{linkS}layout/bootstrap/images/san_pham_meo_cung.png"
                    style="width: 100%;
                           padding-top: 50px;
                           padding-bottom: 50px;">
                <img class="hidden-lg hidden-md"
                    alt="sản phẩm mèo cưng"
                    src="{linkS}layout/bootstrap/images/danh_cho_meo_cung_mobile.png"
                    style="width: 100%;
                        margin-top:20px;
                        margin-bottom: 20px;
                        padding-left: 15px">
            </a>
        </div>
        <div class = "hidden-xs hidden-sm hidden-md col-lg-4">
            <a href="{linkS}danh-rieng-cho-meo-yeu-321/">
                <img src="{linkS}layout/bootstrap/images/san_pham_banner_meo_cung.jpg"
                     width="460" 
                     height="505"
                     alt="{brand_cat}"
                     style="margin-left: -12px; 
                            cursor: pointer;"
                     class="img-rounded">
            </a>
        </div>
        <div class = "hidden-xs hidden-sm hidden-md col-lg-8"
             style="padding-right: 0px; padding-left: 10px">
            <!--BEGINLIST_CATPRODUCTSNEW-->
            <!--BEGIN_CATPRODUCTSNEW-->
            {desktop_layout}	
            <!--END_CATPRODUCTSNEW-->
            <!--ENDLIST_CATPRODUCTSNEW-->
        </div>
                        
        <!--BEGINLIST_CATPRODUCTSNEW_TABLET-->
        <!--BEGIN_CATPRODUCTSNEW_TABLET-->
        {tablet_layout}
        <!--END_CATPRODUCTSNEW_TABLET-->
        <!--ENDLIST_CATPRODUCTSNEW_TABLET-->
        
        <!--BEGINLIST_CATPRODUCTSNEW_MOBILE-->
        <!--BEGIN_CATPRODUCTSNEW_MOBILE-->
        {mobile_layout}
        <!--END_CATPRODUCTSNEW_MOBILE-->
        <!--ENDLIST_CATPRODUCTSNEW_MOBILE-->
        
        <div style="font-family: PoetsenOne;">
            <div style="text-align: right; font-size: 15px;">
                <a  class="hidden-xs hidden-sm"
                    href="{linkS}danh-rieng-cho-cho-cung-319/" 
                    style="color:#ff767d; margin-bottom: 20px">
                    Xem tất cả sản phẩm mèo cưng >>
                </a>
            </div>
            <div style="text-align: center; font-size: 15px;">
                <a class="hidden-md hidden-lg"
                    href="{linkS}danh-rieng-cho-cho-cung-319/" 
                    style="color:#ff767d;">
                    Xem tất cả sản phẩm mèo cưng >>
                </a>
            </div>
        </div>
        <div class = "col-lg-12 hidden-xs hidden-sm hidden-md" 
             style="background-color:#e9f4f6; 
             margin-top: 20px; 
             padding-bottom: 50px;
             margin-right: 0px">
            <div style="font-size: 17px; 
                 font-family: PoetsenOne;
                 padding-top: 20px;
                 padding-left: 25px">
                <table>
                    <tr>                        
                        <td style="padding-right: 25px;">
                            <span style="color: #fb7224;">
                                Tin tức về mèo cưng
                            </span>
                        </td>
                        <td style="width: 84%">
                            <hr style="color: #dde7e9;
                                border-style:solid;
                                border-width: 1px;"/>
                        </td>
                    </tr>
                </table>                                
            </div>
            <div class="container"
                 id="news_container"
                 style="margin-bottom: 0px; margin-left: -30px">
                <!--BEGINLIST_CATNEWS-->
                <!--BEGIN_CATNEWS-->
                <li>
                    <div class="news_detail">                                            
                        <div class="news_col" style = "float:left">                    
                            <a href="{linkS}doi-song-pets/{news_key}/" style = "outline:none">
                                <img src="{linkS}upload/news/{news_image}"
                                    width="130"
                                    height="130"
                                    alt="{news_name}"
                                    style="border-radius: 10px">
                            </a>
                        </div><!-- end product_right_col -->

                        <div class="news_title">
                            <div style="font-size: 14px; color: #929292;">
                                <a class = "news_name" href="{linkS}doi-song-pets/{news_key}/" 
                                   style="line-height: 25px;                                
                                        font-family: RobotoSlabRegular;
                                        font-size: 14px;
                                        outline:none">
                                    {news_name}
                                </a>
                            </div>
                        </div>
                    </div><!-- end news_detail -->
                </li>  	
                <!--END_CATNEWS-->        
                <!--ENDLIST_CATNEWS-->
            </div>
        </div>        
        <!--End San Pham Meo Cung-->

        <!--Begin tu thuoc phong than cho-->
        <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12" 
             style="padding-right: 0px;
                    padding-left: 0px">
            <a href="{linkS}tu-thuoc-pet-phong-than-339/">
                <img class="hidden-xs hidden-sm" 
                    alt="tủ thuốc phòng thân cho thú cưng"
                    src="{linkS}layout/bootstrap/images/tu_thuoc_phong_than.png"
                    style="width: 100%;
                           padding-top: 50px;
                           padding-bottom: 50px">
                <img class="hidden-lg hidden-md"
                    alt="tủ thuốc phòng thân cho thú cưng"
                    src="{linkS}layout/bootstrap/images/tu_thuoc_phong_than_mobile.png"
                    style="width: 100%;
                        margin-top:20px;
                        margin-bottom: 20px;
                        padding-left: 15px">
            </a>
        </div>
        <!--BEGINLIST_MEDICINEPRODUCTSNEW-->
        <!--BEGIN_MEDICINEPRODUCTSNEW-->
        {desktop_layout}
        <!--END_MEDICINEPRODUCTSNEW-->
        <!--ENDLIST_MEDICINEPRODUCTSNEW-->
        
        <!--BEGINLIST_MEDICINEPRODUCTSNEW_TABLET-->
        <!--BEGIN_MEDICINEPRODUCTSNEW_TABLET-->
        {tablet_layout}
        <!--END_MEDICINEPRODUCTSNEW_TABLET-->
        <!--ENDLIST_MEDICINEPRODUCTSNEW_TABLET-->
        
        <!--BEGINLIST_MEDICINEPRODUCTSNEW_MOBILE-->
        <!--BEGIN_MEDICINEPRODUCTSNEW_MOBILE-->
        {mobile_layout}
        <!--END_MEDICINEPRODUCTSNEW_MOBILE-->
        <!--ENDLIST_MEDICINEPRODUCTSNEW_MOBILE-->
        
        <div class = "col-xs-12 col-sm-12 col-md-12 col-lg-12"
             style="font-family: PoetsenOne; 
                    font-size: 17px;                     
                    text-align: center;                    
                    line-height: 50px;
                    width: 100%;
                    margin-right: 0px">
            <a href="{linkS}tu-thuoc-pet-phong-than-339/" 
               style="color:#ff767d;">
                <img class="hidden-xs hidden-sm" 
                    alt="xem tất cả"
                    src="{linkS}layout/bootstrap/images/xem_tat_ca_thuoc.png" 
                    style= "display:block; 
                       margin-left: auto; 
                       margin-right: auto;
                       margin-bottom: 30px">
            </a>
        </div>
        <!--End Tu thuoc phong than cho-->

        <!-- Begin San Pham Theo Nhan Hieu-->
        <div class ="col-lg-12 hidden-xs hidden-sm hidden-md" 
            style="margin-right: 0px">
            <img alt="sản phẩm theo nhãn hàng"
                src="{linkS}layout/bootstrap/images/cac_san_pham_theo_nhan_hang.png" 
                style="display:block;
                       margin-left: auto;
                       margin-right: auto;
                       width: 100%;">
        </div>
        <!-- End San Pham Theo Nhan Hieu-->
        <!-- Begin Logo Slider-->
        <div class ="col-lg-12 hidden-xs hidden-sm hidden-md" style="height: 80px;margin-right: 0px">                                    
            <div class="responsive" style="height: 80px;">                
                {list_advs}                             
            </div>
            <style>
                .slick-prev
                {                    
                    background-image: url({linkS}layout/bootstrap/images/line.png);
                    height: 40px;
                    margin-top: -20px;
                    border-radius: 5px;                    
                }
                .slick-prev:hover
                {
                    background-color: #0099ff;
                    border-radius: 5px;
                }

                .slick-next 
                {                    
                    background-image: url({linkS}layout/bootstrap/images/line.png);
                    height: 40px;
                    margin-top: -20px;
                    border-radius: 5px;
                }
                .slick-next:hover
                {
                    background-color:#0099ff;
                    border-radius: 5px;
                }
            </style>
            <script type="text/javascript">
                $('.responsive').slick({
                    slidesToShow: 10,
                    slidesToScroll: 3,
                    autoplay: true,
                    autoplaySpeed: 2000,
                });
            </script>                      
        </div>
        <div class ="row">
            <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="margin-right: 0px">                  
                <br/>
                <div style = "height: 2px; 
                     background-color:#edf8fb;
                     margin-left: 10px; 
                     margin-right: 10px">                    
                </div>                                
            </div>
        </div>
        <!-- End Logo Slider-->

        <!--Begin introduce page-->
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12" 
             style="margin-bottom: 20px; 
                margin-top: 20px;
                text-align: center;
                color: #929292;
                margin-right: 0px">
            <h1 style="font-size: 17px;
                    font-family: RobotoSlabRegular;
                    line-height: 20px">
                {introduce_nanapet}
            </h1>
        </div>
    </div>
</div>