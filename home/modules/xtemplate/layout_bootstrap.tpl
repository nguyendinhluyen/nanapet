<!DOCTYPE html>
<html lang="vi">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=9">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">        
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
        <link rel="stylesheet" type="text/css" href="{linkS}layout/bootstrap/css/style.min.css"/>
        <!--Begin Banner-->        
        <script type="text/javascript" src="{linkS}layout/js/sliderman.min.js"></script>        
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
        <!--Begin Mask Phone-->
        <script type="text/javascript" src="{linkS}layout/js/jquery.maskedinput.min.js"></script>                 
        <!--End Mask Phone-->
        <!--Begin product navigation-->
        {link_product_navigation}
        <!--End product navigation-->        
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
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.min.css">
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
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
            z-index: 1000;
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
    <body>
        <header style="padding-top: 10px;">	
            <!-- begin div header-->
            <div class ="container hidden-xs hidden-sm hidden-md">
                <div class ="row" 
                     style="margin-left: auto;
                            margin-right: auto; 
                            display: block;
                            margin-top: 5px">
                    <div class ="col-lg-2" style="padding-left:0px">
                        <A name="section0">
                            <img src="{linkS}layout/bootstrap/images/support_free.jpg" 
                                 alt="Tư vấn miễn phí">
                        </A>
                    </div>
                    <div class ="col-lg-6">
                        <div id="search">
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
                                                          width: 35px;
                                                          height: 32px;
                                                          margin-left: -10px;
                                                          background:url('{linkS}layout/bootstrap/images/search_button.png') no-repeat left center;"
                                                   onclick="checkForm();">
                                        </td>
                                    </tr>    
                                    <tr>
                                        <td style="color: #a88c79; 
                                                    padding-top: 15px;
                                                    font-family: RobotoSlabLight;
                                                    font-size: 14px;
                                                    padding-left: 50px;">
                                            <img alt="giao hàng"
                                                src="{linkS}layout/bootstrap/images/deliver.png" 
                                                style = "float:left; margin-top: -2px;"> 
                                            <span style="margin-left: 7px">
                                            FREE SHIP nội thành SG cho HĐ từ 400k & hỗ trợ cho HĐ từ 200k
                                            </span>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div><!-- end search -->
                    </div>
                    <div class ="col-lg-2"> 
                        <div id ="account" style="padding-left: 40px">
                            <span>{acount} </span> 
                        </div>
                    </div>
                    <div class ="col-lg-2"
                         style="padding-right: 0px">
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
                                 style = "float:left; margin-top: -2px;">
                            &nbsp;Giỏ hàng <span class="cart_score">{giohang}</span>
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
                                style = "float:left; margin-top: -2px;">
                            <span class="cart_score">
                                {giohang}
                            </span>    
                        </a>
                    </div>
                </div>
            </div> 
            <!-- end div header-->
            <!-- begin div menu-->
            <div class ="container-fluid hidden-xs hidden-sm hidden-md"
                 style="background:url({linkS}layout/bootstrap/images/background_header.png) repeat;
                        padding-top: 40px;
                        padding-bottom:20px">
                <div class ="container">
                    <div class="row" 
                         style="margin-left: auto;
                                margin-right: auto; 
                                display: block;
                                padding-left: 80px">
                        <span class="col-lg-3">
                            <a class="img-responsive" href="{linkS}" style = "outline:none">
                                <img alt="nanapet logo" 
                                     src="{linkS}layout/bootstrap/images/logo.png">
                            </a>
                        </span>                    
                        <span class="col-lg-9" style="padding: 0px">
                            <span id="menu"> 
                                <ul class="nav">
                                    <li style="width: 50px; margin-top: 10px; margin-left: 60px">
                                        <a class="home" href="{linkS}" style ="outline:none">
                                            <img alt="trang chủ"
                                                 src="{linkS}layout/bootstrap/images/home.png" 
                                                 width="17px" 
                                                 height="15px"/></a></li>
                                    <li><a class="{introduce}" href="{linkS}gioi-thieu"
                                           style="padding-top: 10px; height: 60px; outline: none">Giới thiệu</a></li>
                                    <li><a class="{product_menu}" href="{linkS}san-pham/"
                                           style="padding-top: 10px; height: 60px; outline: none">Sản phẩm</a></li>                                        
                                    <li><a class="{blog}" href="{linkS}doi-song-pets"
                                           style="padding-top: 10px; height: 60px; outline: none">Đời sống Pets</a></li>                 
                                    <li><a class="{service}" href="{linkS}tro-giup"
                                           style="padding-top: 10px; height: 60px; outline: none">Hỗ trợ</a></li>
                                    <li><a class="{contact}" href="{linkS}lien-he" rel='nofollow'
                                           style="padding-top: 10px; height: 60px; outline: none">Liên hệ</a></li>
                                </ul>
                            </span><!-- end menu -->  
                        </span>
                    </div>
                </div>
            </div><!-- end div menu-->   
            
            <!--Mobile display -->
            <div class="hidden-lg">
                <div class="container">
                    <div class="row" 
                         style="margin-top: 15px; 
                                margin-bottom: 10px">
                        <a href="{linkS}">
                            <img alt="logo nanapet"
                                 src="{linkS}layout/bootstrap/images/logo_mobile.png" 
                                 width="250px"
                                 style = "outline:none; 
                                        margin-left: auto;
                                        margin-right: auto; 
                                        display: block">
                        </a>
                    </div>
                    <div class="row" style="margin-top: 10px"> 
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <img data-toggle="collapse"
                                href="#collapsemenu"
                                aria-expanded="false"
                                aria-controls="collapsemenu"
                                src="{linkS}layout/bootstrap/images/icon_menu_mobile.png" 
                                alt="icon menu"
                                style="padding:0px; 
                                       width:40px;
                                       margin-bottom:10px;
                                       outline:none;">
                        </div>
                        <div class="col-xs-6 col-sm-6 col-md-6">
                            <a href="{linkS}gio-hang">
                                <span class="cart_score" 
                                    style="float:right; 
                                          margin-top:7px;
                                          margin-left:5px;
                                          color:#ff767c;
                                          font-family:RobotoSlabRegular;
                                          font-size:17px">
                                    {giohang}
                                </span>
                                <img src="{linkS}layout/bootstrap/images/mobile_basket.png" 
                                    alt="giỏ hàng"
                                    style="width:40px;
                                           margin-bottom:10px;
                                           outline:none;
                                           float:right">
                            </a>
                        </div>
                    </div> 
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="collapse" id="collapsemenu">
                                <ul style="font-family: RobotoSlabBold;
                                           padding-left: 0px;
                                           margin-top: 7px;
                                           font-size: 14px">
                                    <li><a class="home" 
                                           href="{linkS}"
                                           style="outline: none; color: #000">TRANG CHỦ</a></li>
                                    <li><hr style = "margin-top: 10px;
                                                    margin-bottom: 10px;
                                                    border-width:1px;
                                                    border-color:#f0f0f0;  
                                                    float:left;
                                                    width: 100%;"></li>
                                    <li><a class="introduce" 
                                           href="{linkS}gioi-thieu" 
                                           style="outline: none; color: #000">GIỚI THIỆU</a></li>
                                    <li><hr style = "margin-top: 10px;
                                                    margin-bottom: 10px;
                                                    border-width:1px; 
                                                    border-color:#f0f0f0;  
                                                    float:left;
                                                    width: 100%;"></li>
                                    <li><a class="product" 
                                           href="{linkS}san-pham/"
                                           style="outline: none; color: #000">SẢN PHẨM</a></li>
                                    <li><hr style = "margin-top: 10px;
                                                    margin-bottom: 10px;
                                                    border-width:1px;
                                                    border-color:#f0f0f0;
                                                    float:left;
                                                    width: 100%;"></li>
                                    <li><a class="blog" 
                                           href="{linkS}doi-song-pets"
                                           style="outline: none; color: #000">ĐỜI SỐNG PETS</a></li>
                                    <li><hr style = "margin-top: 10px;
                                                    margin-bottom: 10px;
                                                    border-width:1px; 
                                                    border-color:#f0f0f0;  
                                                    float:left;
                                                    width: 100%;"></li>
                                    <li><a class="service" 
                                           href="{linkS}tro-giup"
                                           style="outline: none; color: #000">HỖ TRỢ</a></li>
                                    <li><hr style = "margin-top: 10px;
                                                    margin-bottom: 10px;
                                                    border-width:1px; 
                                                    border-color:#f0f0f0;  
                                                    float:left;
                                                    width: 100%;"></li>
                                    <li><a class="contact" 
                                           href="{linkS}lien-he" rel='nofollow'
                                           style="outline: none; color: #000">LIÊN HỆ</a></li>
                                    <li><hr style = "margin-top: 10px;
                                                    margin-bottom: 10px;
                                                    border-width:1px; 
                                                    border-color:#f0f0f0;  
                                                    float:left;
                                                    width: 100%;"></li>
                                    <li><a class="contact" 
                                           href="{linkS}thong-tin-tai-khoan" rel='nofollow'
                                           style="outline: none">TÀI KHOẢN CỦA BẠN</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 10px; margin-bottom: 10px">
                        <form name ="form_search" action="{linkS}tim-kiem/trang-1" method="POST">
                            <div class="col-xs-10 col-sm-11 col-md-11"
                                 style="padding-right:0px">
                                <input type='search'
                                    name="search_box"
                                    id="search_box"
                                    placeholder='Tìm kiếm sản phẩm'
                                    class ="form-control"
                                    onkeydown="myKeyDown();"
                                    style ="font-family:RobotoSlabRegular;
                                            color:#a88c79;
                                            font-size:14px;
                                            outline:none;
                                            width: 100%;"
                                    maxlength="50">
                            </div>
                            <div class="col-xs-2 col-sm-1 col-md-1">
                                <input class="search_button"
                                    type="submit" 
                                    value=""
                                    name="submit"
                                    style="outline:none;
                                           float: left;
                                           width: 35px;
                                           border: 0px;
                                           height: 32px;
                                           background:url('{linkS}layout/bootstrap/images/search_button.png') no-repeat left center;"
                                    onclick="checkForm();">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </header>
        <!-- content-->
        {content}
        <!--End content-->
        <!-- footer -->
        <footer>
            <div class="container-fluid hidden-xs hidden-sm hidden-md"
                 style="background-color: #ff767c;
                        height:auto;
                        padding:0px">
                <div class="container"
                    style="padding-top: 40px;">
                    <div class ="row">
                        <!--NanaPet Support-->
                        <div class ="col-lg-3" 
                             style="padding-left: 20px; line-height: 25px">
                            <div style="font-family:RobotoSlabBold;
                                        font-size:14px;
                                        margin-bottom: 10px;
                                        padding-right: 20px;
                                        font-weight: bold;
                                        color:#000;">HỖ TRỢ KHÁCH HÀNG</div>
                            <div style="font-family:RobotoSlabRegular; 
                                        font-size:14px;
                                        outline:none;
                                        line-height: 30px">
                                <ul class="list-unstyled" style="margin-bottom:0px">
                                    <li><a href="{linkS}tro-giup/dich-vu-van-chuyen.html"
                                           style="color:#000;">Phương thức vận chuyển</a></li>
                                    <li><a href="{linkS}tro-giup/cach-thuc-thanh-toan.html"
                                           style="color:#000;">Cách thức thanh toán</a></li>
                                    <li><a href="{linkS}tro-giup/doi-tra-san-pham.html"
                                           style="color:#000;">Chính sách đổi trả</a></li>
                                    <li><a href="{linkS}tro-giup/cau-hoi-thuong-gap.html"
                                           style="color:#000;">Câu hỏi thường gặp</a></li>
                                    <li><a href="{linkS}tro-giup/huong-dan-mua-hang.html"
                                           style="color:#000;">Hướng dẫn đặt hàng</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--NanaPet Shop-->
                        <div class ="col-lg-3" 
                             style="padding-left: 30px; line-height: 25px">
                            <div style="font-family:RobotoSlabBold;
                                        font-size:14px;
                                        margin-bottom: 10px;
                                        padding-right: 20px;
                                        font-weight: bold;
                                        color:#000;">VỀ NANAPET SHOP</div>
                            <div style="font-family:RobotoSlabRegular; 
                                        font-size:14px;
                                        outline:none;
                                        line-height: 30px">
                                <ul class="list-unstyled" style="margin-bottom:0px">
                                    <li><a href="{linkS}gioi-thieu/doi-net-ve-chung-toi.htm"
                                           style="color: #000">Đôi nét về chúng tôi</a></li>
                                    <li><a href="{linkS}gioi-thieu/cam-hung-va-dong-luc.htm"
                                           style="color: #000">Cảm hứng & động lực</a></li>
                                    <li><a href="{linkS}tro-giup/chinh-sach-bao-mat.html" 
                                           style="color: #000">Chính sách bảo mật</a></li>
                                    <li><a href="{linkS}tro-giup/dieu-khoan-su-dung.html" 
                                           style="color: #000">Điều khoản sử dụng</a></li>
                                </ul>
                            </div>
                        </div>
                        <!--Partner NanaPet -->
                        <div class ="col-lg-3" 
                             style="padding-left: 30px; line-height: 25px">
                            <div style="font-family:RobotoSlabBold;
                                        font-size:14px;
                                        margin-bottom: 10px;
                                        padding-right: 20px;
                                        font-weight: bold;
                                        color:#000;">LIÊN KẾT & HỢP TÁC</div>
                            <div style="font-family:RobotoSlabRegular; 
                                        font-size:14px;
                                        outline:none;
                                        line-height: 30px">
                                <ul class="list-unstyled" style="margin-bottom:0px">
                                    <li><a href="{linkS}tro-giup/ky-gui-san-pham.html"
                                           style="color: #000">Ký gửi sản phẩm</a></li>
                                    <li><a href="{linkS}tro-giup/lien-ket-doi-tac.html"
                                           style="color: #000">Liên kết - Đối tác</a></li>
                                    <li><a href="{linkS}tro-giup/dai-ly-phan-phoi.html"
                                           style="color: #000">Đại lý - Phân phối</a></li>
                                    <li><a href="{linkS}tro-giup/gia-nhap-nacol-team.html"
                                           style="color:#000">Gia nhập NaCol Team</a></li>
                                </ul>
                            </div>
                        </div>
                                   
                        <!--THÔNG TIN LIÊN HỆ-->
                        <div class ="col-lg-3" 
                             style="padding-left: 30px; line-height: 25px">
                            <div style ="font-family:RobotoSlabBold;
                                        font-weight:bold;
                                        font-size:14px;
                                        margin-bottom: 10px;
                                        padding-right: 20px;
                                        font-weight: bold;
                                        color:#000;">THÔNG TIN LIÊN HỆ</div>
                            <div style ="margin-top: 5px; clear:both">
                                <span style ="font-family:RobotoSlabRegular; 
                                           color:#000;
                                           font-size:14px;
                                           outline:none">
                                    <span style="font-family:RobotoSlabBold">Hotline:</span> (08) 2212.8888
                                </span>
                            </div>
                            <div style ="margin-top: 5px">
                                <span style ="font-family:RobotoSlabRegular; 
                                           color:#000;
                                           font-size:14px;
                                           outline:none">
                                    <span style="font-family:RobotoSlabBold">Mobile:</span> 0933.103.203 (Zalo Viber)
                                </span>
                            </div>
                            <div style ="margin-top: 5px">
                                <span style ="font-family:RobotoSlabRegular; 
                                           font-weight:500;
                                           color:#000;
                                           font-size:14px;
                                           outline:none">
                                    <span style="font-family:RobotoSlabBold">Văn Phòng Kho:</span> tầng trệt, 21/11 
                                    <br>Tự Lập P4 Tân Bình TP HCM 
                                    <br>Thứ 2 - Thứ 7, 09:00 - 16:30
                                </span>
                            </div>
                        </div>
                    </div> 
                    <div class ="row">
                        <div class ="col-lg-6" 
                             style="padding-left: 20px; line-height: 25px">
                            <div style ="font-family:RobotoSlabBold;
                                        font-weight:bold;
                                        font-size:14px;
                                        margin-top: 20px;
                                        margin-bottom: 10px;
                                        padding-right: 20px;
                                        font-weight: bold;
                                        color:#000;">CHẤP NHẬN THANH TOÁN VỚI NGÂN HÀNG</div>
                            <div style="clear:both">
                                <a href="{linkS}tro-giup/cach-thuc-thanh-toan.html"
                                   target ="_blank">
                                    <img alt="ngân hàng"
                                        src="{linkS}layout/bootstrap/images/bank.jpg" 
                                        style = "float:left; 
                                                 margin-top: -2px;
                                                 margin-left: -10px"> 
                                </a>
                            </div>                            
                        </div>  
                        <div class="col-lg-6"
                            style="padding-left: 30px; padding-top: 10px; line-height: 25px">
                            <div style ="font-family:RobotoSlabBold;
                                        font-weight:bold;
                                        font-size:14px;
                                        padding-top: 10px;
                                        margin-bottom: 10px;
                                        padding-right: 20px;
                                        font-weight: bold;
                                        color:#000;
                                        clear:both">ĐỐI TÁC / DỊCH VỤ GIAO HÀNG</div>
                            <div style="clear:both">
                                <a href="{linkS}tro-giup/dich-vu-van-chuyen.html"
                                    target ="_blank">
                                     <img alt="ngân hàng"
                                         src="{linkS}layout/bootstrap/images/shipping.jpg" 
                                         style = "float:left; 
                                                  margin-top: -2px;
                                                  margin-left: -10px"> 
                                </a>
                            </div>
                        </div>                      
                    </div>       
                    <hr style = "margin-top: 40px;
                                margin-bottom: 20px;
                                border-width:1px; 
                                border-color:white;  
                                float:left;
                                width: 98%;
                                margin-left: 5px;">
                </div>
                <div class="container">
                    <div class="row center-block" style="width: 80%">
                        <ul class="nav_menu_bottom" style="padding-left: 20px">
                            <li><a href="{linkS}"
                                   style="height: 50px; outline: none; width:90px">Trang chủ</a></li>
                            <li><a href=""
                                   style="height: 50px; outline: none; width:3px">|</a></li>
                            <li><a href="{linkS}gioi-thieu"
                                   style="height: 50px; outline: none; width:90px">Giới thiệu</a></li>
                            <li><a href=""
                                   style="height: 50px; outline: none; width:3px">|</a></li>
                            <li><a  href="{linkS}san-pham/"
                                   style="height: 50px; outline: none; width:90px">Sản phẩm</a></li>
                            <li><a href=""
                                   style="height: 50px; outline: none; width:4px">|</a></li>
                            <li><a href="{linkS}doi-song-pets"
                                   style="height: 50px; outline: none; width:115px">Đời sống Pets</a></li>
                            <li><a href=""
                                   style="height: 50px; outline: none; width:3px">|</a></li>
                            <li><a href="{linkS}tro-giup"
                                   style="height: 50px; outline: none;width:65px">Hỗ trợ</a></li>
                            <li><a href=""
                                   style="height: 50px; outline: none; width:3px">|</a></li>
                            <li><a c href="{linkS}lien-he" rel='nofollow'
                                   style="height: 50px; outline: none; width:75px">Liên hệ</a></li>
                            <li><a href=""
                                   style="height: 50px; outline: none; width:4px">|</a></li>
                            <li><a c href="{linkS}tro-giup/chinh-sach-bao-mat.html"
                                   style="height: 50px; outline: none; width:162px">Chính sách bảo mật</a></li>
                            <li><a href=""
                                   style="height: 50px; outline: none; width:4px">|</a></li>
                            <li><a c href="{linkS}tro-giup/quy-dinh-dmca.html"
                                   style="height: 50px; outline: none; width:145px">Quy định sử dụng</a></li>
                        </ul>
                    </div>
                </div>
                <div class="container-fluid"
                     style="background-color:#b2d9d4;
                            padding-top: 10px;
                            padding-bottom: 20px">
                    <div class="row" 
                         style="font-family: RobotoSlabRegular;  
                                line-height: 20px;
                                text-align: center;
                                font-size: 14px">
                        © 2012-2018 - Bản quyền thuộc về Hộ Kinh Doanh Thú Cưng Na Na - NanaPet.com
                        <br>Giấy chứng nhận Đăng ký Hộ kinh doanh số 41N8033112 do Ủy Ban Nhân Dân Quận Tân Bình cấp ngày 11/01/2017
                    </div>
                    <div class="row center-block hidden-xs hidden-sm hidden-md" 
                         style="width: 320px; margin-top: 10px">
                        <a href="http://online.gov.vn/HomePage/CustomWebsiteDisplay.aspx?DocId=30853" 
                           title="bộ công thương"
                           target="_blank"> 
                            <img src ="{linkS}layout/bootstrap/images/bocongthuong.png" 
                                alt="bộ công thương"
                                width="145px"
                                height="57px"
                                style="float:left;
                                       display: block;">
                        </a>
                        <a href="http://www.dmca.com/Protection/Status.aspx?ID=4902d07b-8b1f-4ad7-8f66-7eb96d066e80" 
                           title="DMCA"
                           target="_blank"> 
                            <img src ="http://images.dmca.com/Badges/DMCA_logo-green150w.png?ID=4902d07b-8b1f-4ad7-8f66-7eb96d066e80" 
                                alt="DMCA.com"
                                width="145px"
                                height="57px"
                                style="float:left;
                                       display: block;
                                       margin-left: 20px">
                        </a>
                    </div>
                </div>
            </div>
                                
            <!--Moblie Tablet-->
            <div class="container-fluid hidden-lg"
                style="background-color: #ff767c;
                       height:auto;
                       padding:0px;
                       padding-bottom: 30px">
                <div class ="container"
                    style ="padding-top: 10px; 
                            padding-left: 40px; 
                            padding-right: 40px">
                    <div class ="row">
                        <!--NanaPet Support-->
                        <div id="support_customer" 
                            style="font-family:RobotoSlabBold;
                                font-size:14px;
                                margin-bottom: 10px;
                                margin-top: 20px;
                                padding-right: 20px;
                                font-weight: bold;
                                color:#000;
                                cursor: pointer">
                            HỖ TRỢ KHÁCH HÀNG <span class="caret"></span>
                        </div>
                        <div id="dis_hid_support_customer" hidden
                            style="font-family:RobotoSlabRegular; 
                                    font-size:14px;
                                    outline:none;
                                    line-height: 30px">
                            <ul class="list-unstyled" style="margin-bottom:0px">
                                <li><a href="{linkS}tro-giup/dich-vu-van-chuyen.html"
                                       style="color: #000">Phương thức vận chuyển</a></li>
                                <li><a href="{linkS}tro-giup/cach-thuc-thanh-toan.html"
                                       style="color: #000">Cách thức thanh toán</a></li>
                                <li><a href="{linkS}tro-giup/doi-tra-san-pham.html"
                                       style="color: #000">Chính sách đổi trả</a></li>
                                <li><a href="{linkS}tro-giup/cau-hoi-thuong-gap.html"
                                       style="color: #000">Câu hỏi thường gặp</a></li>
                                <li><a href="{linkS}tro-giup/huong-dan-mua-hang.html"
                                       style="color: #000">Hướng dẫn đặt hàng</a></li>
                            </ul>
                        </div>
                        <hr  style = "border-width:1px; 
                                    border-color: #f26d71; 
                                    width:100%; 
                                    float:left;
                                    margin-top: 10px">
                        <!--About NanaPet-->
                        <div id="about_customer" 
                            style="font-family:RobotoSlabBold;
                                    font-size:14px;
                                    margin-bottom: 10px;
                                    padding-right: 20px;
                                    font-weight: bold;
                                    color:#000;
                                    cursor: pointer">
                            VỀ NANAPET SHOP <span class="caret"></span>
                        </div>
                        <div id="dis_hid_about_customer" hidden
                            style="font-family:RobotoSlabRegular; 
                                    font-size:14px;
                                    outline:none;
                                    line-height: 30px">
                            <ul class="list-unstyled" style="margin-bottom:0px">
                                <li><a href="{linkS}gioi-thieu/doi-net-ve-chung-toi.htm"
                                       style="color: #000">Đôi nét về chúng tôi</a></li>
                                <li><a href="{linkS}gioi-thieu/cam-hung-va-dong-luc.htm"
                                       style="color: #000">Cảm hứng & động lực</a></li>
                                <li><a href="{linkS}tro-giup/chinh-sach-bao-mat.html" 
                                       style="color: #000">Chính sách bảo mật</a></li>
                                <li><a href="{linkS}tro-giup/dieu-khoan-su-dung.html" 
                                       style="color: #000">Điều khoản sử dụng</a></li>
                            </ul>
                        </div>  
                        <hr style="border-width:1px;
                                border-color: #f26d71; 
                                width:100%; 
                                float:left;
                                margin-top: 10px">
                        <!--Partner NanaPet-->
                        <div id="partner_customer" 
                            style="font-family:RobotoSlabBold;
                                    font-size:14px;
                                    margin-bottom: 10px;
                                    padding-right: 20px;
                                    font-weight: bold;
                                    color:#000;
                                    cursor: pointer">
                            LIÊN KẾT & HỢP TÁC <span class="caret"></span>
                        </div>
                        <div id="dis_hid_partner_customer" hidden
                            style="font-family:RobotoSlabRegular; 
                                    font-size:14px;
                                    outline:none;
                                    line-height: 30px">
                            <ul class="list-unstyled" style="margin-bottom:0px">
                                <li><a href="{linkS}tro-giup/ky-gui-san-pham.html"
                                           style="color: #000">Ký gửi sản phẩm</a></li>
                                <li><a href="{linkS}tro-giup/lien-ket-doi-tac.html"
                                       style="color: #000">Liên kết - Đối tác</a></li>
                                <li><a href="{linkS}tro-giup/dai-ly-phan-phoi.html"
                                       style="color: #000">Đại lý - Phân phối</a></li>
                                <li><a href="{linkS}tro-giup/gia-nhap-nacol-team.html"
                                       style="color:#000">Gia nhập NaCol Team</a></li>
                            </ul>
                        </div>
                        <hr style="border-width:1px;
                                border-color: #f26d71;
                                width:100%; 
                                float:left;
                                margin-top: 10px">
                        <!--THÔNG TIN LIÊN HỆ-->
                        <div id="partner_customer" 
                            style="font-family:RobotoSlabBold;
                                    font-size:14px;
                                    margin-bottom: 10px;
                                    padding-right: 20px;
                                    font-weight: bold;
                                    color:#000;">
                            THÔNG TIN LIÊN HỆ
                        </div>
                        <div style ="margin-top: 5px; clear:both">
                            <span style ="font-family:RobotoSlabRegular; 
                                       color:#000;
                                       font-size:14px;
                                       outline:none">
                                <span style="font-family:RobotoSlabBold">Hotline:</span> (08) 2212.8888
                            </span>
                        </div>
                        <div style ="margin-top: 5px">
                            <span style ="font-family:RobotoSlabRegular; 
                                       color:#000;
                                       font-size:14px;
                                       outline:none">
                                <span style="font-family:RobotoSlabBold">Mobile:</span> 0933.103.203 (Zalo Viber)
                            </span>
                        </div>
                        <div style ="margin-top: 5px">
                            <span style ="font-family:RobotoSlabRegular; 
                                       font-weight:500;
                                       color:#000;
                                       font-size:14px;
                                       outline:none">
                                <span style="font-family:RobotoSlabBold">Văn Phòng Kho:</span> tầng trệt, 21/11 
                                <br>Tự Lập P4 Tân Bình TP HCM 
                                <br>Thứ 2 - Thứ 7, 09:00 - 16:30
                            </span>
                        </div>
                    </div>
                </div>
            </div> 
            <div class="container-fluid hidden-lg"
                style="font-family: RobotoSlabRegular;  
                       line-height: 20px;
                       text-align: center;
                       font-size: 14px;
                       background-color: #b2d9d4;
                       padding-top: 20px;
                       padding-bottom: 20px;">
               © 2012-2018 - Bản quyền thuộc về Hộ Kinh Doanh Thú Cưng Na Na - NanaPet.com
               <br>Giấy chứng nhận Đăng ký Hộ kinh doanh số 41N8033112 do Ủy Ban Nhân Dân Quận Tân Bình cấp ngày 11/01/2017
               <div class="row center-block" 
                    style="width: 280px; margin-top: 10px; padding-bottom: 30px">
                   <a href="http://online.gov.vn/HomePage/CustomWebsiteDisplay.aspx?DocId=30853" 
                      title="bộ công thương"
                      target="_blank"> 
                       <img src ="{linkS}layout/bootstrap/images/bocongthuong.png" 
                           alt="bộ công thương"
                           width="130px"
                           height="50px"
                           style="float:left;
                                  display: block;">
                   </a>
                   <a href="http://www.dmca.com/Protection/Status.aspx?ID=4902d07b-8b1f-4ad7-8f66-7eb96d066e80" 
                      title="DMCA"
                      target="_blank"> 
                       <img src ="http://images.dmca.com/Badges/DMCA_logo-green150w.png?ID=4902d07b-8b1f-4ad7-8f66-7eb96d066e80" 
                           alt="DMCA.com"
                           width="130px"
                           height="50px"
                           style="float:left;
                                  display: block;
                                  margin-left: 20px">
                   </a>
               </div>
           </div>
        </footer>
        <a href="#0" class="cd-top">Top</a>
        <!--Facebook message-->
        <style>
            #cfacebook{
                position:fixed;
                bottom:0px;
                right:0px;
                z-index:999999999999999;
                width:185px;
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
                padding:0 10px;
                width:185px;
                color:#fff;
                text-decoration:none;
                height:40px;
                line-height:40px;
                text-shadow:0 1px 0 rgba(0,0,0,0.1);                
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
                <i class="fa fa-facebook-square"></i> Tư vấn với NanaPet
            </a>
            <div class="fchat">
                <div class="fb-page" 
                     data-tabs="messages" 
                     data-href="https://www.facebook.com/NanaPetOnline/" 
                     data-width="190" 
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

<script>
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
    $( "#support_customer" ).click(function() {
        if ($( "#dis_hid_support_customer" ).is(":hidden")) {
            $( "#dis_hid_support_customer" ).show(200);
        } else {
            $( "#dis_hid_support_customer" ).hide(200);
        }
    });
    $( "#about_customer" ).click(function() {
        if ($( "#dis_hid_about_customer" ).is(":hidden")) {
            $( "#dis_hid_about_customer" ).show(200);
        } else {
            $( "#dis_hid_about_customer" ).hide(200);
        }
    });
    $( "#partner_customer" ).click(function() {
        if ($( "#dis_hid_partner_customer" ).is(":hidden")) {
            $( "#dis_hid_partner_customer" ).show(200);
        } else {
            $( "#dis_hid_partner_customer" ).hide(200);
        }
    });
</script>