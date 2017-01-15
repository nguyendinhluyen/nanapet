<style>
    .topNews td{
        font-family: Tahoma; 
        font-size: 12px;
        color:#333333;
        height:20px;
        line-height:20px;
        text-align:left;
        margin:5px;
        padding:5px;
    }
    .danhmuc{
        color: #420062;
    }
    .danhmuc a{
        color: #420062;
    }
</style>

<div class ="container">
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
                                        margin-top: 30px;
                                        margin-bottom: 15px">
                {breadcrumbs_path}
            </div>
                        
            <form method="post" name="contact" id="contact" enctype="multipart/form-data">
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                            <div class="tieude_help" style = "margin-bottom: 15px; ">
                                <span style="font-size: 30px; 
                                             color: #0099FF; 
                                             font-family: PoetsenOne;">
                                    {tieude}
                                </span>                                
                            </div>                                                        
                        </td>
                    </tr>                    
                    <tr>
                        <td>
                            <div class="noidung_help"
                                 style = "margin-bottom: 20px;
                                          font-family: RobotoSlabLight;
                                          font-size: 14px;
                                          text-align: justify;
                                          line-height: 25px;
                                          margin-right: -25px">
                                {noidung}
                            </div>
                        </td>
                    </tr>                    
                </table> 
                <table class="row col-md-12 col-lg-12" 
                       style="margin-bottom: 50px; margin-left: 20px; margin-top: 20px">
                    <tr>
                        <td class="col-md-6 col-lg-6"
                            style="">
                            <div style="background-color:#ff767c;
                                        padding: 10px;
                                        -moz-border-radius:10px;
                                        -webkit-border-radius:10px;
                                        border-radius: 10px;
                                        text-align: center;
                                        width: 190px;                                        
                                        font-family: RobotoSlabRegular;
                                        font-size: 15px;
                                        float: right">
                                <a href="{linkS}san-pham/" style="color: #ffffff;">Mua Sản Phẩm</a>
                            </div>
                        </td>
                        <td class="col-md-6 col-lg-6"
                            style="">
                            <div style="background-color:#ff767c;
                                        padding: 10px;
                                        -moz-border-radius:10px;
                                        -webkit-border-radius:10px;
                                        border-radius: 10px;
                                        text-align: center;
                                        width: 190px;                                        
                                        font-family: RobotoSlabRegular;
                                        font-size: 15px;
                                        float: left">
                                <a href="{linkS}doi-song-pets" style="color: #ffffff;">Tìm Hiểu Đời Sống Pet</a>
                            </div>
                        </td>
                    </tr>
                </table>
            </form>
        </div>
                            
        <div class = "hidden-xs hidden-sm col-md-3 col-lg-3" 
             style="padding-right: 50px; padding-top: 30px; padding-left: 40px">
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
</div>