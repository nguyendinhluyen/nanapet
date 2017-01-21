<style>
    a.product_name:hover{
        text-decoration: none;
    }    
    a.product_name:link{
        text-decoration: none;            
    }
</style>

<style>
    .product_main_col {
        position:relative;
        overflow:hidden;
    }
    .product_main_col .textbox {
        width:200px;
        height:230px;
        position:absolute;
        top:30px;
        left:0;
        margin-top:-265px;        
        border-radius:15px;
        background-color: #66d0f1;
        border-style:solid;
        border-width: 10px;        
        border-color: #e0f8ff;        
    }       
    .product_main_col:hover .textbox {
        margin-top:0;
    }   
    .textbox {
        -webkit-transition: all 0.5s ease;
        transition: all 0.5s ease;
        cursor: pointer;        
    }
</style>

<div class = "container">
    <div class ="row">
        <div class = "hidden-xs hidden-sm col-md-3 col-lg-3"
             style="padding-left: 20px;padding-top: 10px">
            <img alt="danh mục sản phẩm" 
                src="{linkS}layout/bootstrap/images/category.png" 
                style="clear: both; 
                       width: 90%"/>
            {category}
            {left_facebook_page_plugin}
        </div>    
        <div class ="col-xs-9 col-sm-9 col-md-9 col-lg-9" 
             style = "padding-right: 50px;
                      padding-left: 10px">
            <div id="breakcrumb" 
                 style="font-size:14px; 
                        font-family: RobotoSlabRegular;
                        margin-top: 30px;">
                {breadcrumbs_path}
                <span class ="hidden-xs hidden-sm hidden-md hidden-lg" 
                      style="float: right; margin-right: 4%">
                    <p style="display:none"id ="session_order_by"> {order_by}</p>
                    <p style="display:none"id ="pp_num"> {quannum}</p>
                    <span>
                        <table>
                            <tr>
                                <td id='order_by'/>
                                <td style="width:10px"/>
                                <td id='num'/>
                            </tr>
                        </table>
                    </span>
                </span>
            </div>
                    
            <div style="padding-top: 25px; padding-right: 0px; margin-left: -5px">
                <a href="{linkS}combo-sieu-tiet-kiem-317.htm">
                    <img alt="compo siêu tiết kiệm"
                        src="{linkS}layout/bootstrap/images/product_combo.png" 
                        width="100%"
                        alt="Combo tiết kiệm"
                        style = "cursor: pointer;"/>
                </a>
                <h1 style="font-size: 17px; 
                           text-align: center; 
                           font-family: RobotoSlabRegular;
                           margin-top: 30px;
                           margin-bottom: 10px;
                           text-transform: uppercase">
                    {category_name}
                </h1>
            </div>
            <!--BEGIN SEO CATEGORY-->
            <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12" style="{display_seo}">
                <p style="text-align:left;
                          font-family: RobotoSlabBold;
                          font-size: 15px;
                          color:#929292;
                          line-height: 25px;">
                    CÓ THỂ BẠN CHƯA BIẾT
                </p>
                <p style="text-align:left;
                          font-family: RobotoSlabRegular;
                          font-size: 15px;
                          color:#929292;
                          line-height: 25px">
                    {text_seo}
                </p>
                <hr style = "border-width:1px;                                
                            border-color:#eee; width:100%; float:left">
            </div>
            <!--END SEO CATEGORY-->
                
            <div class="product_main">
                <!--BEGINLIST_PRODUCTS-->
                <!--BEGIN_PRODUCT-->
                <li> 
                    <a class = "product_name" href="{linkS}{category}/{product_key}.htm" style = "outline:none">
                        <div class="product_main_detail">
                            <div class="product_main_col">
                                <table border="0">                                
                                    <tr>
                                        <td> 
                                            <!--{promotion_Sale}-->
                                            <h4>
                                                <a href="{linkS}{category}/{product_key}.htm" class="preview">
                                                    <img src="{linkS}upload/product/{product_img}" 
                                                        width="160"
                                                        height="160"
                                                        alt="{product_name_nocut}"
                                                        style="display: block;
                                                               margin-left: auto;
                                                               margin-right: auto;
                                                               margin-top: 30px"/>
                                                </a>
                                            </h4>                                        
                                        </td>
                                    </tr>                                
                                    <tr>
                                        <td>
                                            <h3 style="margin-top: 0px;">
                                                <div class="product_main_title">
                                                    <span class = "product_name"
                                                       style = "color:#929292;">
                                                        {product_name}
                                                    </span>
                                                </div>
                                            </h3>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="product_main_price">{product_price} VNĐ</div> 
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>                                        
                                            <div class="product_main_price_en">{product_price_old}</div>                                
                                        </td>
                                    </tr>
                                </table>
                                <div class="textbox"  
                                     style = "padding-top: 70px; padding-left: 35px">
                                    <img alt="Xem chi tiết" 
                                        src="{linkS}layout/bootstrap/images/xem_chi_tiet.png"
                                        width="110px"
                                        style = "cursor: pointer; 
                                                 margin-bottom: 5px">
                                </div>  
                            </div><!-- end product_col -->                                                                                                                                                      
                        </div><!-- end product_detail -->
                    </a>
                 </li>
                <!--END_PRODUCT-->
                <!--ENDLIST_PRODUCTS-->
            </div><!-- end product_main -->

            <div class="clear"></div>
            <div class=" line_end" style="margin-top:10px;"></div>
            
            <!-- BEGIN PAGE NAVIGATION -->
            <div align="center">
                <div class="pagination" align="center" 
                     style="margin-left: auto;
                            margin-right: auto;
                            font-size:14px;
                            font-family:RobotoSlabRegular;
                            margin-top: 20px">
                    {page}
                </div> 
            </div>
            <!-- END PAGE NAVIGATION -->    
        </div>
    </div>
</div><!-- End Product -->

<!--Begin news -->
<div class = "container">
    <div class ="row">
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12">                    
           <img alt="banner đời sống pet"
                src="{linkS}layout/bootstrap/images/doi_song_pet.png" 
                style = "margin-left: auto;
                        margin-right: auto; 
                        display: block;
                        margin-top: 20px"/>                                    
        </div>
    </div>
</div>

<div class = "container-fluid" style="background-color:#f8f9fb; margin-top: -25px">
    <div class="container"
        id="news_container"
        style="margin-top: 40px; margin-bottom:20px;">
            <!--BEGINLIST_NEWS-->
            <!--BEGIN_NEWS-->
            <li>
                <div class="news_detail">                                            
                    <div class="news_col" style = "float:left">
                        <a href="{linkS}doi-song-pets/{news_key}/" style = "outline:none">
                            <img alt="{news_name}"
                                src="{linkS}upload/news/{news_image}"
                                width="130"
                                height="130"
                                style="border-radius: 10px"/>
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
            <!--END_NEWS-->
            <!--ENDLIST_NEWS-->
            <a href="{linkS}doi-song-pets">
                <img alt="xem nhiều hơn"
                    src="{linkS}layout/bootstrap/images/xem_nhieu_hon.png"
                    style = "margin-left: auto;
                            margin-right: auto;
                            display: block;
                            margin-top: 20px;
                            margin-bottom: 20px"/>
            </a>
    </div>
</div>
<!--End news -->

<!-- Begin San Pham Theo Nhan Hieu-->
<div class = "container">
    <br/>    
    <div class ="row">
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12"
             style="padding-left: 50px; 
                    padding-right: 50px">
            <img alt="logo nhãn hàng" 
                src="{linkS}layout/bootstrap/images/cac_san_pham_theo_nhan_hang.png" 
                style = "display:block; 
                         margin-left: auto; 
                         margin-right: auto;
                         width: 100%;"/>       
            
        </div>
    </div>
</div>
<!-- End San Pham Theo Nhan Hieu-->

<!-- Begin Logo Slider-->                
<div class = "container">
    <div class="row">                
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12" 
             style="height: 80px; 
                    padding-left: 50px; 
                    padding-right: 50px">                                    
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
                    autoplaySpeed: 2000
                });
            </script>                      
        </div>                                                                                                                        
    </div>
    <div class ="row">
        <div class ="col-xs-12 col-sm-12 col-md-12 col-lg-12">
            <br/>
            <div style = "height: 2px;
                          background-color:#edf8fb;
                          margin-left: 40px;
                          margin-right: 40px">
            </div>
        </div>
    </div>
    <br/>
    <br/>
</div>
<!-- End Logo Slider-->               