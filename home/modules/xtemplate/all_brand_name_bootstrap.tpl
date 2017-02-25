<style>
    .danhmuc{
        color: #420062;
    }
    .danhmuc a{
        color: #420062;
    }
</style>

<div class = "container">
    <div class ="row">
        <div class = "hidden-xs hidden-sm col-md-3 col-lg-3" 
             style="padding-left: 20px; padding-bottom: 40px">
            <img alt="giới thiệu" 
                src="{linkS}layout/bootstrap/images/gioi_thieu.png"
                style="clear: both;
                       width: 90%;
                       margin-top: 30px;
                       margin-bottom: 20px;">
            {category}
            <a href="{linkS}lien-he">
                <img alt="liên hệ" 
                    src="{linkS}layout/bootstrap/images/product_contact.png"
                    style="float: left;
                           clear: both;
                           width: 95%;
                           margin-top: 10px;
                           padding-left: 15px">
            </a>
        </div>
        <div class ="col-xs-6 col-sm-6 col-md-6 col-lg-6"
             style="padding-left: 10px;
                    padding-right: 0px">
            <div id="breakcrumb" style="font-size:14px;
                                        font-family: RobotoSlabRegular;
                                        margin-top: 40px;
                                        margin-left: 25px">
                {breadcrumbs_path}
            </div>
            <div class="product_main">
                <!--BEGINLIST_PRODUCTS-->
                <!--BEGIN_PRODUCT-->
                <li> 
                    <h4>
                        <a href="{linkS}thuong-hieu/{adver_id}" target="_blank"  class="preview">
                            <img src="{linkS}upload/adver/thumb/{brand_img}" 
                                width="180"
                                height="100"
                                alt="{brand_name}"
                                style="display: block; 
                                        padding-right: 15px; 
                                        margin-top: 20px;
                                        padding-left: 20px"/>
                        </a>
                    </h4>
                 </li>
                <!--END_PRODUCT-->
                <!--ENDLIST_PRODUCTS-->
            </div><!-- end product_main -->
            
            <!-- BEGIN PAGE NAVIGATION -->
            <div align="center">
                <div class="pagination" align="center" 
                     style="margin-left: auto;
                            margin-right: auto;
                            font-size:14px;
                            font-family:RobotoSlabRegular;
                            margin-top: 20px;
                            margin-bottom: 30px">
                    {page}
                </div> 
            </div>
            <!-- END PAGE NAVIGATION -->    
        </div>
                
        <div class = "hidden-xs hidden-sm col-md-3 col-lg-3" 
             style="padding-right: 50px; padding-top: 30px; padding-left: 10px">
            <ul class = "main_category">
                <li class="danhmuc_main">
                    <a href="{linkS}tro-giup/dich-vu-van-chuyen.html" style = "outline:none;">Dịch vụ vận chuyển</a></li>
                <hr style ="margin-top: 10px;
                            margin-bottom: 10px;
                            border-width:1px;
                            border-color:#79afc4; 
                            width:100%; 
                            float:left">
                <li class="danhmuc_main">
                    <a href="{linkS}tro-giup/cach-thuc-thanh-toan.html" style = "outline:none">Cách thức thanh toán</a></li>
                <hr style ="margin-top: 10px;
                            margin-bottom: 10px;
                            border-width:1px;
                            border-color:#79afc4; 
                            width:100%; 
                            float:left">
                <li class="danhmuc_main">
                    <a href="{linkS}tro-giup/huong-dan-mua-hang.html" style = "outline:none">Hướng dẫn mua hàng</a></li>
                <hr style ="margin-top: 10px;
                            margin-bottom: 10px;
                            border-width:1px;
                            border-color:#79afc4; 
                            width:100%; 
                            float:left">
                <li class="danhmuc_main">
                    <a href="{linkS}tro-giup/cau-hoi-thuong-gap.html" style = "outline:none">Câu hỏi thường gặp</a></li>
            </ul>            
        </div>
    </div>
</div><!-- End Product -->

 