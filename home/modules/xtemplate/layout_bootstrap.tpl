<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=9">        
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="{linkS}layout/bootstrap/css/style.css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <title>{title}</title>
        <meta name="description" content="{description}">
        <meta name="keywords" content="{keywords}">
        <meta name="author" content="NanaPet">
        {script_product_detail}
        <!-- Begin control message facebook-->
        <meta property="fb:admins" content="1119844474"/>
        <meta property="fb:admins" content="100000096874902"/>
        <meta property="fb:app_id" content="1491869401059003"/>
        <link rel="shortcut icon" href="{linkS}layout/images/favicon.png"/>
        <!-- End control message facebook-->        
        <!--Begin Banner-->        
        <script type="text/javascript" src="{linkS}layout/js/sliderman.js"></script>
        
        <!--End Banner-->
        <!--Begin Logo Slick-->
        <link rel="stylesheet" type="text/css" href="{linkS}layout/bootstrap/css/slick/slick/slick.css"/>
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/jquery/jquery-1.11.2.min.js"></script>        
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/jquery/jquery-migrate-1.2.1.min.js"></script>
        <script type="text/javascript" src="{linkS}layout/bootstrap/css/slick/slick/slick.min.js"></script>
        <!--End Logo Slick-->   
        <!--Bootstrap-->
        <link href="{linkS}layout/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <script src="{linkS}layout/bootstrap/js/bootstrap.min.js"></script>
        <!--End Bootstrap-->
        <!--Begin Zoom Image-->
        <link rel="stylesheet" type="text/css" href="{linkS}layout/css/cloud-zoom.css"/>
        <script type="text/javascript" src="{linkS}layout/js/cloud-zoom.1.0.2.js"></script>
        <!--End Zoom Image-->
        <!--Begin Mask Phone-->
        <script type="text/javascript" src="{linkS}layout/js/jquery.maskedinput.js"></script>                 
        <!--End Mask Phone-->
        <!--Begin product navigation-->
        {link_product_navigation}
        <!--End product navigation-->
        <!--Begin jqxRating-->   
        <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.base.css" type="text/css"/>
        <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.arctic.css" type="text/css"/>
        <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxcore.js"></script>
        <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxrating.js"></script>
        <!--End jqxRating-->
        <script>
              (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
              (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
              m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
              })(window,document,'script','//www.google-analytics.com/analytics.js','ga');	
              ga('create', 'UA-48947150-1', 'nanapet.com');
              ga('send', 'pageview');
        </script>    	
        <script type="text/javascript">		
            jQuery(function($)
            {														
                $('#phone_2_field').mask('(999) 999 - 9999?9',{placeholder:" "});
                $('#phone').mask('(999) 999 - 9999?9',{placeholder:" "});
                $('#text_mobile_receiver').mask('(999) 999 - 9999?9',{placeholder:" "});
                $('#text_mobile_buy').mask('(999) 999 - 9999?9',{placeholder:" "});
            });       									 
        </script>
        <!-- Facebook -->
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "http://connect.facebook.net/vi_VN/sdk.js#xfbml=1&appId=1491869401059003&version=v2.5";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
        <!--End Facebook Code-->
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    </head>
    
    <style>        
        input[type=search], div.button {
            -moz-box-sizing: border-box;
            height: 35px;            
            box-sizing: border-box;  
            font-family: inherit;
            font-size: inherit;
        }
        input[type=search] {
            margin: 0;
            padding: 0 10px;
            background-color: #f8f8f8;
            border: 0;
            border-top-left-radius: 10px;
            border-bottom-left-radius: 10px;
            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px;
        }
        a:hover{
            cursor:pointer;
        }
                
        /* Begin TOP button */
        .cd-top {
            display: inline-block;
            height: 64px;
            width: 64px;
            position: fixed;
            bottom: 220px;
            right: 5px;            
            /* image replacement properties */
            overflow: hidden;
            text-indent: 100%;
            white-space: nowrap;
            background: url({linkS}layout/bootstrap/images/len_dau_trang.png) no-repeat center 50%;
            visibility: hidden;
            opacity: 0;
            -webkit-transition: opacity .3s 0s, visibility 0s .3s;
            -moz-transition: opacity .3s 0s, visibility 0s .3s;
            transition: opacity .3s 0s, visibility 0s .3s;
        }
        .cd-top.cd-is-visible, .cd-top.cd-fade-out, .no-touch .cd-top:hover {
            -webkit-transition: opacity .3s 0s, visibility 0s 0s;
            -moz-transition: opacity .3s 0s, visibility 0s 0s;
            transition: opacity .3s 0s, visibility 0s 0s;
        }
        .cd-top.cd-is-visible {
            /* the button becomes visible */
            visibility: visible;
            opacity: 1;
        }
        .cd-top.cd-fade-out {
            /* if the user keeps scrolling down, the button is out of focus and becomes less visible */
            opacity: 0.8;
        }
        .no-touch .cd-top:hover cd-is-visible:hover{
            opacity: 1;
        }
        @media only screen and (min-width: 768px) {
            .cd-top {                
                right: 5px;            
                bottom: 220px;
            }
        }
        @media only screen and (min-width: 1024px) {
            .cd-top {
                height: 64px;
                width: 64px;
                bottom: 220px;
                right: 5px;
            }
        }
        /* End TOP button */
    </style>
    <script>
        function share(){
            alert("Tính năng đang phát triển.");
        }
        function myKeyDown(){
            document.getElementById('search_box').setCustomValidity('');
        }    
        
        function myTrim(x) {
            return x.replace(/^\s+|\s+$/gm,'');
        }
        
        function checkForm(){         
            document.getElementById("search_box").required = true;
            if (myTrim(document.getElementById('search_box').value) === ""){
                document.getElementById('search_box').setCustomValidity('Vui lòng nhập thông tin tìm kiếm.');
            }
            else {
                document.getElementById('search_box').setCustomValidity('');
            }           
        }
        
        // Begin JS TOP button
        jQuery(document).ready(function($) {
            // Browser window scroll (in pixels) after which the "back to top" link is shown
            var offset = 300,
            // Browser window scroll (in pixels) after which the "back to top" link opacity is reduced
            offset_opacity = 1200,
            // Duration of the top scrolling animation (in ms)
            scroll_top_duration = 700,
            // Grab the "back to top" link
            $back_to_top = $('.cd-top');

            // Hide or show the "back to top" link
            $(window).scroll(function() {
                ($(this).scrollTop() > offset) ? $back_to_top.addClass('cd-is-visible') : $back_to_top.removeClass('cd-is-visible cd-fade-out');
                if( $(this).scrollTop() > offset_opacity ) { 
                    $back_to_top.addClass('cd-fade-out');
                }
            });

            // Smooth scroll to top
            $back_to_top.on('click', function(event){
                event.preventDefault();
                $('body,html').animate({
                        scrollTop: 0 ,
                    }, scroll_top_duration
                );
            });
        });
        // End JS TOP button
        
        $(function() {
            $( "#search_box" ).autocomplete({
                source: '{linkS}home/modules/ajax/search.php'
            });
        });
    </script>
    <body>
        <header style="padding-top: 10px;">	
            <!-- begin div header-->
            <div class ="container" style="padding-bottom:10px">
                <div class ="row" 
                     style="margin-left: auto; 
                            margin-right: auto; 
                            display: block;
                            margin-top: 5px">
                    <div class ="col-xs-5 col-sm-5 col-md-2 col-lg-2"
                         style="padding-left: 20px">
                        <table>
                            <tr>                    
                                <td>
                                    <img src="{linkS}layout/bootstrap/images/zalo.png" 
                                         alt="zalo" 
                                         height="17px"/>&nbsp;&nbsp;
                                </td>
                                <td>
                                    <img src="{linkS}layout/bootstrap/images/viber.png"
                                         alt="viber" 
                                         height="17px"/>&nbsp;&nbsp;
                                </td>
                                <td>
                                    <span style="font-family: RobotoSlabRegular;
                                                 font-size: 14px;
                                                 color: #a88c79;">
                                        <b><A name="section0">0933 103 203</A></b>
                                    </span>
                                </td>
                            </tr>
                        </table>                                                            
                    </div>

                    <div class ="col-md-6 col-lg-6">
                        <div id="search" class ="hidden-xs hidden-sm">
                            <form name ="form_search" action="{linkS}tim-kiem/trang-1" method="POST">
                                <table style=" width:100%">
                                    <tr>
                                        <td>
                                            <input  type='search'
                                                    name="search_box"
                                                    id="search_box"
                                                    placeholder='Tìm kiếm theo sản phẩm, danh mục hay nhãn hàng'
                                                    class ="form-control"
                                                    onkeydown="myKeyDown();"
                                                    style ="font-family:RobotoSlabRegular;
                                                            color:#a88c79;
                                                            width:85%;
                                                            font-size:14px;
                                                            outline:none;
                                                            margin-left:10%"
                                                    maxlength="50">
                                            
                                        </td>
                                        <td>
                                            <input class="search_button"
                                                   type="submit" 
                                                   value=""
                                                   name="submit"
                                                   style="outline:none;                                              
                                                          border:0px;  
                                                          width: 20px;
                                                          margin-left: -10px;
                                                          background:url('{linkS}layout/bootstrap/images/search_button.png') no-repeat left center;"
                                                   onclick="checkForm();">
                                        </td>
                                    </tr>                                    
                                </table>                                                                
                            </form>
                        </div><!-- end search -->
                    </div>
                    <div class ="col-xs-5 col-sm-5 col-md-2 col-lg-2">                                                            
                        <div id ="account">
                            <span>
                                {acount}                            
                            </span>                        
                        </div>                                                                                                                             
                    </div>

                    <div class ="col-xs-2 col-sm-2 col-md-2 col-lg-2"
                         style="padding-right: 35px">
                        <a href ="{linkS}gio-hang" 
                           class ="hidden-xs hidden-sm"
                           rel='nofollow'
                           style="color:#bba799;                                               
                                  font-size: 14px;
                                  font-weight: 300;
                                  font-family: RobotoSlabRegular;
                                  float: right;
                                  outline:none">
                            <img alt="giỏ hàng"
                                 src="{linkS}layout/bootstrap/images/gio_hang.png" 
                                 style = "float:left; margin-top: -2px;"/>
                            &nbsp;Giỏ hàng {giohang}
                        </a>      

                        <a href ="{linkS}gio-hang"
                           rel='nofollow'
                           class ="hidden-md hidden-lg"
                           style="color:#bba799;
                                  font-size: 14px;
                                  font-weight: 300;
                                  font-family: RobotoSlabRegular;
                                  float: right;
                                  outline:none">
                            <img alt="giỏ hàng" 
                                src="{linkS}layout/bootstrap/images/gio_hang.png"
                                style = "float:left; margin-top: -2px;"/>
                                {giohang}
                        </a>
                    </div>
                </div>
            </div> <!-- end div header-->

            <!-- begin div menu-->
            <div class ="container-fluid" 
                 style="background:url({linkS}layout/bootstrap/images/background_header.png) repeat;
                        padding-top: 40px;
                        padding-bottom:20px">
                <div class="hidden-xs hidden-sm hidden-md">
                    <div class ="container">
                        <div class="row" 
                             style="margin-left: auto; 
                                    margin-right: auto; 
                                    display: block;
                                    padding-left: 80px">
                            <span class="col-md-3 col-lg-3">
                                <a class="img-responsive" href="{linkS}" style = "outline:none">
                                    <img alt="nanapet logo" 
                                         src="{linkS}layout/bootstrap/images/logo.png"/>
                                </a>
                            </span>                    
                            <span class="col-md-9 col-lg-9" style="padding: 0px">
                                <span id="menu">                             
                                    <ul class="nav">
                                        <li style="width: 50px; margin-top: 10px; margin-left: 60px">
                                            <a class="home" href="{linkS}" style ="outline:none">
                                                <img alt="trang chủ"
                                                     src="{linkS}layout/bootstrap/images/home.png" 
                                                     width="17px" 
                                                     height="15px"/>
                                            </a>
                                        </li>
                                        <li><a class="{introduce}" href="{linkS}gioi-thieu"
                                               style="padding-top: 10px; height: 60px; outline: none">Giới thiệu</a></li>
                                        <li><a class="{product_menu}" href="{linkS}san-pham/"
                                               style="padding-top: 10px; height: 60px; outline: none">Sản phẩm</a></li>                                        
                                        <li><a class="{blog}" href="{linkS}doi-song-pets"
                                               style="padding-top: 10px; height: 60px; outline: none">Đời sống Pets</a></li>                 
                                        <li><a class="{service}" href="{linkS}tro-giup"
                                               style="padding-top: 10px; height: 60px; outline: none">Hỗ trợ</a></li>
                                        <!--href="{linkS}chia-se"
                                        <li><a class="{share}" onclick="share();"
                                               style="padding-top: 10px; height: 60px; outline: none">Chia sẻ</a></li>-->
                                        <li><a class="{contact}" href="{linkS}lien-he" rel='nofollow'
                                               style="padding-top: 10px; height: 60px; outline: none">Liên hệ</a></li>
                                    </ul>
                                </span><!-- end menu -->  
                            </span>
                        </div>
                    </div>           
                </div>
                
                <!--Mobile display -->
                <div class="visible-xs-block visible-sm-block visible-md-block">
                    <div class ="container">
                        <div class="row">                        
                            <table>
                                <tr>
                                    <td class="col-xs-5 col-sm-5 col-md-5" 
                                        style="padding-left: 50px">                                        
                                        <span>
                                            <a href="{linkS}" style = "outline:none">
                                                <img alt="logo điện thoại nanapet" 
                                                     src="{linkS}layout/bootstrap/images/logo_mobile.png" width="250px"/>
                                            </a>
                                        </span>     
                                    </td>
                                    <td class="col-xs-6 col-sm-6 col-md-6"> 
                                    </td>
                                    <td>
                                        <!-- Drop Down Menu -->
                                        <span class="col-xs-4 col-sm-4" style = "z-index:999">
                                          <button type="button" 
                                                  class="btn btn-info dropdown-toggle" 
                                                  data-toggle="dropdown" 
                                                  aria-expanded="false"
                                                  style ="font-family:PoetsenOne">
                                               &nbsp;Danh mục &nbsp;
                                            <span class="caret"></span>
                                          </button>
                                            <ul class="dropdown-menu" role="menu" 
                                                style = "margin-left: 10px; 
                                                        border-color: #ffccff; 
                                                        border-style:solid;
                                                        border-width: 1px;
                                                        margin-top: 20px;
                                                        font-family: PoetsenOne">
                                                <li><a class="home" 
                                                       href="{linkS}" 
                                                       style="outline: none">Trang chủ</a></li>  
                                                <li><a class="introduce" 
                                                       href="{linkS}gioi-thieu" 
                                                       style="outline: none">Giới thiệu</a></li>
                                                <li><a class="product" 
                                                       href="{linkS}san-pham/"
                                                       style="outline: none">Sản phẩm</a></li>                                                
                                                <li><a class="blog" 
                                                       href="{linkS}doi-song-pets"
                                                       style="outline: none">Đời sống Pets</a></li>                 
                                                <li><a class="service" 
                                                       href="{linkS}tro-giup"
                                                       style="outline: none">Hỗ trợ</a></li>
                                                <!--href="{linkS}chia-se"
                                                <li><a class="share" 
                                                       onclick="share();"
                                                       style="outline: none">Chia sẻ</a></li>-->
                                                <li><a class="contact" 
                                                       href="{linkS}lien-he" rel='nofollow'
                                                       style="outline: none">Liên hệ</a></li>
                                            </ul>
                                        </span>
                                    </td>
                                </tr>
                            </table>                        
                        </div>
                    </div>
                </div>
            </div><!-- end div menu-->   
        </header>
                                          
        <!-- content-->
        {content}
        <!--End content-->
        
        <!-- footer -->
        <footer>
            <div class ="container-fluid hidden-sm hidden-xs" 
                 style = "background-color: #ff767c; 
                          height: 70px;">
                <div class = "container" 
                     style="padding-left:50px; padding-right: 50px">
                    <div class = "row">
                        <div class ="col-md-5 col-lg-5" style = "float:left">
                            <br/>
                            <span style ="font-family:RobotoSlabRegular; 
                                          font-weight: 500; 
                                          font-size: 18px; 
                                          color: white;">
                                Nhận các thông tin bổ ích từ NanaPet 
                            </span>
                        </div>
                        <div class =" visible-xs-block visible-sm-block col-xs-5 col-sm-5" style = "float:left">
                            <br/>
                            <span style ="font-family:RobotoSlabRegular; 
                                          font-weight: 500; 
                                          font-size: 18px; 
                                          color: white;">
                                Nhận thông tin từ NanaPet
                            </span>
                        </div>
                        <div class ="col-xs-7 col-sm-7 col-md-7 col-lg-7">
                            <br/>
                            <span>
                                <div id="search">                                                               
                                    <input type='search'
                                           placeholder='Email của bạn ...'
                                           style ="font-family:RobotoSlabRegular; 
                                                   color: #a88c79;
                                                   width: 90%;
                                                   font-size: 14px;
                                                   float: left;
                                                   outline: none">
                                    <span>
                                        <a style = "outline:none">
                                            <img alt="nhận thông tin từ nanapet" 
                                                src="{linkS}layout/bootstrap/images/send.png" 
                                                width="47px" 
                                                height="37px" 
                                                style="float:left; margin-left: -10px; margin-top: -1px"
                                                onclick="share();"/>
                                        </a>
                                    </span>
                                </div><!-- end search -->
                            </span>
                        </div>
                    </div>            
                </div>                                                                                                                                                                    
            </div>

            <div class="container-fluid"
                 style="background-color:#e1fbf8;
                        height:auto;
                        padding:0px">
                <div class ="container" 
                     style ="padding-top: 40px; padding-left: 50px; padding-right: 50px">
                    <div class ="row hidden-sm hidden-xs">
                        <div class ="col-xs-6 col-sm-6 col-md-3 col-lg-3">
                            <img alt="logo nanapet" 
                                src="{linkS}layout/bootstrap/images/logo.png" width="80%"/>
                            
                            <div style="color:#777c7b; 
                                        font-weight: 500; 
                                        font-size: 14px; 
                                        margin-top: 20px">
                                {left_facebook_box}
                            </div>
                        </div>
                        <div class ="col-xs-12 col-sm-12 col-md-3 col-lg-3" 
                             style="padding-left: 30px; line-height: 25px">
                            <div style ="font-family:RobotoSlabRegular;
                                        color:#5c5c5c; 
                                        font-weight:bold;
                                        font-size:14px;
                                        margin-top: 10px;
                                        padding-right: 20px">
                                THÔNG TIN LIÊN HỆ
                            </div>
                            <div style ="font-family:RobotoSlabRegular; 
                                          color:#5c5c5c; 
                                          font-weight:500;
                                          font-size:14px;
                                          margin-top: 20px">
                                Email: support@nanapet.com
                            </div>
                             <div style ="font-family:RobotoSlabRegular; 
                                          color:#5c5c5c; 
                                          font-weight:500;
                                          font-size:14px;
                                          margin-top: 10px">
                                Điện thoại: 0933 103 203
                            </div>
                        </div>

                        <!--San pham -->
                        <div class ="hidden-xs hidden-sm col-md-3 col-lg-3" 
                             style="background:url({linkS}layout/bootstrap/images/line_footer.png) no-repeat;
                                    padding-left: 52px;
                                    line-height: 25px">
                            <div style ="margin-top: 10px">
                                <a href="{linkS}danh-rieng-cho-cho-cung-319.htm"
                                   style="font-family:RobotoSlabRegular;
                                          color:#5c5c5c;
                                          font-weight:500;
                                          font-size:14px;
                                          outline:none">
                                    Sản phẩm dành cho chó
                                </a>
                            </div>
                            <div style ="margin-top: 10px">
                                <a href="{linkS}danh-rieng-cho-meo-yeu-321.htm" 
                                   style ="font-family:RobotoSlabRegular; 
                                           color:#5c5c5c; 
                                           font-weight:500;
                                           font-size:14px;
                                           outline:none">
                                    Sản phẩm dành cho mèo
                                </a>
                            </div>
                            <div style ="margin-top: 10px">
                                <a href="{linkS}san-pham-khuyen-mai.htmls" 
                                   style ="font-family:RobotoSlabRegular; 
                                           color:#5c5c5c; 
                                           font-weight:500;
                                           font-size:14px;
                                           outline:none">
                                    Sản phẩm được khuyến mãi
                                </a>
                            </div>
                            <div style ="margin-top: 10px">
                                <a href="{linkS}san-pham-ban-chay.htmls" 
                                   style ="font-family:RobotoSlabRegular; 
                                           color:#5c5c5c; 
                                           font-weight:500;
                                           font-size:14px;
                                           outline:none">
                                    Sản phẩm bán chạy nhất
                                </a>
                            </div>
                            <div style ="margin-top: 10px">
                                <a href="{linkS}san-pham-moi.htmls" 
                                   style ="font-family:RobotoSlabRegular; 
                                           color:#5c5c5c; 
                                           font-weight:500;
                                           font-size:14px;
                                           outline:none">
                                    Sản phẩm mới nhất
                                </a>
                            </div>
                        </div>                    

                        <!--Van chuyen-->
                        <div class ="hidden-xs hidden-sm col-md-3 col-lg-3" 
                             style="background:url({linkS}layout/bootstrap/images/line_footer.png) no-repeat;
                                    padding-left: 52px;
                                    line-height: 25px">                          
                            <div style ="margin-top: 10px">
                                <a href="{linkS}tro-giup/dich-vu-van-chuyen.html" 
                                   style ="font-family:RobotoSlabRegular; 
                                           color:#5c5c5c; 
                                           font-weight:500;
                                           font-size:14px;
                                           outline:none">
                                    Dịch vụ vận chuyển
                                </a>
                            </div>
                            <div style ="margin-top: 10px">
                                <a href="{linkS}tro-giup/cach-thuc-thanh-toan.html"
                                   style ="font-family:RobotoSlabRegular;
                                           color:#5c5c5c;
                                           font-weight:500;
                                           font-size:14px;
                                           outline:none">
                                    Cách thức thanh toán
                                </a>
                            </div>
                            <div style ="margin-top: 10px">
                                <a href="{linkS}tro-giup/huong-dan-mua-hang.html" 
                                   style ="font-family:RobotoSlabRegular; 
                                           color:#5c5c5c; 
                                           font-weight:500;
                                           font-size:14px;
                                           outline:none">
                                    Hướng dẫn mua hàng
                                </a>
                            </div>
                            <div style ="margin-top: 10px">
                                <a href="{linkS}tro-giup/cau-hoi-thuong-gap.html" 
                                   style ="font-family:RobotoSlabRegular; 
                                           color:#5c5c5c; 
                                           font-weight:500;
                                           font-size:14px;
                                           outline:none">
                                    Câu hỏi thường gặp
                                </a>
                            </div>
                            <div style ="margin-top: 10px">
                                <a href="{linkS}tro-giup" 
                                   style ="font-family:RobotoSlabRegular; 
                                           color:#5c5c5c; 
                                           font-weight:500;
                                           font-size:14px;
                                           outline:none">
                                    Trợ giúp
                                </a>
                            </div>
                        </div>                                                                                                                                
                    </div>                                                                                                                               

                    <!--San pham Mobile-->
                    <div class ="visible-sm-block visible-xs-block col-xs-12 col-sm-12"
                         style ="padding-left: 0px">
                        <div style ="margin-top: 0px">
                            <a href="{linkS}danh-rieng-cho-cho-cung-319.htm"
                               style="font-family:RobotoSlabRegular;
                                      color:#5c5c5c;
                                      font-weight:500;
                                      font-size:14px;
                                      outline:none">
                                Sản phẩm cho chó
                            </a>
                        </div>
                        <div style ="margin-top: 10px">
                            <a href="{linkS}danh-rieng-cho-meo-yeu-321.htm" 
                               style ="font-family:RobotoSlabRegular; 
                                       color:#5c5c5c; 
                                       font-weight:500;
                                       font-size:14px;
                                       outline:none">
                                Sản phẩm cho mèo
                            </a>
                        </div>
                        <div style ="margin-top: 10px">
                            <a href="{linkS}san-pham-khuyen-mai.htmls" 
                               style ="font-family:RobotoSlabRegular; 
                                       color:#5c5c5c; 
                                       font-weight:500;
                                       font-size:14px;
                                       outline:none">
                                Sản phẩm khuyến mãi
                            </a>
                        </div>
                        <div style ="margin-top: 10px">
                            <a href="{linkS}san-pham-ban-chay.htmls" 
                               style ="font-family:RobotoSlabRegular; 
                                       color:#5c5c5c; 
                                       font-weight:500;
                                       font-size:14px;
                                       outline:none">
                                Sản phẩm bán chạy
                            </a>
                        </div>
                        <div style ="margin-top: 10px">
                            <a href="{linkS}san-pham-moi.htmls" 
                               style ="font-family:RobotoSlabRegular; 
                                       color:#5c5c5c; 
                                       font-weight:500;
                                       font-size:14px;
                                       outline:none">
                                Sản phẩm mới nhất
                            </a>
                        </div>
                    </div>                    

                    <!--Van chuyen Mobile-->
                    <div class ="visible-sm-block visible-xs-block col-xs-12 col-sm-12"
                         style ="padding-left: 0px">
                        <div style ="margin-top: 10px">
                            <a href="{linkS}tro-giup/dich-vu-van-chuyen.html" 
                               style ="font-family:RobotoSlabRegular; 
                                       color:#5c5c5c; 
                                       font-weight:500;
                                       font-size:14px;
                                       outline:none">
                                Dịch vụ vận chuyển
                            </a>
                        </div>
                        <div style ="margin-top: 10px">
                            <a href="{linkS}tro-giup/cach-thuc-thanh-toan.html"
                               style ="font-family:RobotoSlabRegular;
                                       color:#5c5c5c;
                                       font-weight:500;
                                       font-size:14px;
                                       outline:none">
                                Cách thức thanh toán
                            </a>
                        </div>
                        <div style ="margin-top: 10px">
                            <a href="{linkS}tro-giup/huong-dan-mua-hang.html" 
                               style ="font-family:RobotoSlabRegular; 
                                       color:#5c5c5c; 
                                       font-weight:500;
                                       font-size:14px;
                                       outline:none">
                                Hướng dẫn mua hàng
                            </a>
                        </div>
                        <div style ="margin-top: 10px">
                            <a href="{linkS}tro-giup/cau-hoi-thuong-gap.html" 
                               style ="font-family:RobotoSlabRegular; 
                                       color:#5c5c5c; 
                                       font-weight:500;
                                       font-size:14px;
                                       outline:none">
                                Câu hỏi thường gặp
                            </a>
                        </div>
                        <div style ="margin-top: 10px">
                            <a href="{linkS}tro-giup" 
                               style ="font-family:RobotoSlabRegular; 
                                       color:#5c5c5c; 
                                       font-weight:500;
                                       font-size:14px;
                                       outline:none">
                                Trợ giúp
                            </a>
                        </div>
                        <br/>
                    </div>
                </div>

                <div class="container hidden-sm hidden-xs"
                     style="margin-top:20px;
                            margin-bottom:40px;">
                    <div class ="row">
                        <div class="col-sm-12 col-xs-12 col-md-6 col-lg-6">                            
                            <a href="{linkS}" height="10%" style = "outline:none">
                                <img alt="logo nanapet"
                                    src="{linkS}layout/bootstrap/images/foot.png"
                                    width="190px"
                                    height="57px"
                                    style = "display: block;
                                            float: right" />
                            </a>
                        </div>
                                         
                        <div class="col-sm-12 col-xs-12 col-md-6 col-lg-6">
                            <a href="http://www.dmca.com/Protection/Status.aspx?ID=4902d07b-8b1f-4ad7-8f66-7eb96d066e80" 
                               title="DMCA"
                               target="_blank"> 
                                <img src ="http://images.dmca.com/Badges/DMCA_logo-green150w.png?ID=4902d07b-8b1f-4ad7-8f66-7eb96d066e80" 
                                    alt="DMCA.com"
                                    width="145px"
                                    height="57px"
                                    style="float:left;
                                           display: block"/>
                            </a>
                        </div>
                    </div>
                </div> 
                <div class="container-fluid"
                     style="background-color:#b2d9d4">
                    <div class="container"
                         style="margin-top:10px; 
                                margin-bottom:10px">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12"
                                 style="text-align: center;">
                                <span style = "color: #5c5c5c; font-size: 12px; font-family:RobotoSlabRegular">
                                    Copyright @ 2016 nanapet.com, all rights reserved. Design by luyen.nguyen.itbb@jvn.edu.vn
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <a href="#0" class="cd-top">Top</a>
        
        <!--Facebook message-->
        <style>
            #cfacebook{
                position:fixed;
                bottom:0px;
                right:10px;
                z-index:999999999999999;
                width:250px;
                height:auto;
                border-top-left-radius:5px;
                border-top-right-radius:5px;
                overflow:hidden;
                font-family: RobotoSlabRegular;
            }
            #cfacebook .fchat {
                float:left;
                width:100%;
                height:270px;
                overflow:hidden;
                display:none;
                background-color:#fff;
            }
            #cfacebook .fchat .fb-page {
                margin-top:-130px;
                float:left;
            }
            #cfacebook a.chat_fb {
                float:left;
                padding:0 25px;
                width:350px;
                color:#fff;
                text-decoration:none;
                height:40px;
                line-height:40px;
                text-shadow:0 1px 0 rgba(0,0,0,0.1);
                background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAqCAMAAABFoMFOAAAAWlBMV…8/UxBxQDQuFwlpqgBZBq6+P+unVY1GnDgwqbD2zGz5e1lBdwvGGPE6OgAAAABJRU5ErkJggg==);
                background-repeat:repeat-x;
                background-size:auto;
                background-position:0 0;
                background-color:#3a5795;
                border:0;
                border-bottom:1px solid #133783;
                z-index:9999999;
                margin-right:12px;
                font-size:17px;
            }
            #cfacebook a.chat_fb:hover {
                color:yellow;
                text-decoration:none;
                cursor:pointer;
            }
        </style>
        <script>
            jQuery(document).ready(function () {
                jQuery(".chat_fb").click(function() {
                jQuery('.fchat').toggle('slow');
            });
            });
        </script>
        <div id="cfacebook">
            <a href="javascript:;" class="chat_fb" 
               onclick="return:false;">
                <i class="fa fa-facebook-square"></i> Gửi tin nhắn tới NanaPet
            </a>
            <div class="fchat">
                <div class="fb-page" 
                     data-tabs="messages" 
                     data-href="https://www.facebook.com/NanaPetOnline/" 
                     data-width="250" 
                     data-height="400" 
                     data-small-header="false" 
                     data-adapt-container-width="true" 
                     data-hide-cover="false" 
                     data-show-facepile="true" 
                     data-show-posts="false"></div>
            </div>
        </div>
        <!--End Facebook message-->
    </body>    
</html>