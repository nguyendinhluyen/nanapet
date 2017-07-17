<style>
a.product_name:hover, 
a.product_name:link, 
a.product_name:visited {
    text-decoration: none;
    color:#646464;
}
a.list_product_name:hover, 
a.list_product_name:link, 
a.list_product_name:visited {
    text-decoration: none;
}
.product_detail{
    position: relative;
    overflow: hidden;
}
.product_detail .textbox {
    width:100%;
    height:170px;
    position:absolute;
    top:0;
    left:0;
    margin-top:-215px;
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
<div class="container">
    <div class="row">
        <div class="col-lg-12 hidden-xs hidden-sm hidden-md">
            <div id="breakcrumb"
                 style="font-family: RobotoSlabRegular;
                     margin-top: 30px;
                     margin-bottom: 20px;">{breadcrumbs_path}</div>
        </div>
        <div class="col-xs-12" 
            style="margin-bottom: 20px">
            <div class="product_main" {display_realtion_product}>
                <hr style="margin-top: 10px;
                        margin-bottom: 10px;
                        border-width:1px;
                        border-color:#79afc4;
                        width:100%;
                        float:left">
                <div style="font-family:RobotoSlabRegular;
                        font-size:18px;
                        float:left;
                        line-height:30px">SẢN PHẨM LIÊN QUAN
                </div>
                <div style="float:right; 
                     line-height:30px;
                     font-family:RobotoSlabRegular;
                     color:#05b3fc;">
                    <a class="see_all" 
                    href="{linkS}tim-kiem/tat-ca-san-pham/trang-1">Xem tất cả >></a>
                </div>
                <hr style="margin-top: 10px;
                        margin-bottom: 30px;
                        border-width:1px;
                        border-color:#79afc4;
                        width:100%;
                        float:left">
            </div>
            <div class="product_main" {display_realtion_product}>
                <!--BEGINLIST_PRODUCTS-->
                <!--BEGIN_PRODUCT-->
                <li class="col-xs-6 col-sm-4 col-md-2">
                    <a class = "list_product_name"
                       href="{linkS}{category}/{product_key}.htm"
                       style = "outline:none;">
                        <div class="product_detail" 
                            style="width: 100%; 
                                height: 170px">   
                            <img class="img-responsive center-block" 
                               src="{linkS}upload/product/thumb/{product_img}" 
                               width="100%"                                     
                               alt="{product_name}"
                               style="cursor: pointer;
                                    margin-bottom: 10px">
                            <div class="textbox"
                                style="padding-top: 40px;
                                    padding-left: 17px">
                               <img alt="Xem chi tiết" 
                                    src="{linkS}layout/bootstrap/images/xem_chi_tiet.png"
                                    width="110px"
                                    style = "cursor: pointer; 
                                    margin-bottom: 5px">
                            </div>                            
                        </div>   
                        <div class="product_tit col-xs-12"
                            style="height: 70px">
                           <div style="font-size: 14px;
                                color: #929292;
                                cursor: pointer;
                                font-family: RobotoSlabRegular;">{product_name}
                           </div>
                        </div>
                        <div class="product_price col-xs-12" 
                            style=" cursor: pointer;
                            font-family:RobotoSlabRegular;
                            font-size: 14px;
                            margin-top: 5px;">{encourage_price}
                        </div>
                        <div class="product_price col-xs-12" 
                            style=" cursor: pointer;
                            font-family:RobotoSlabRegular;
                            font-size: 14px;
                            margin-top: -15px;
                            color:black;
                            text-decoration:line-through;">{product_price}
                        </div>
                    </a>
                </li>
                <!--END_PRODUCT-->
                <!--ENDLIST_PRODUCTS-->
            </div>
            <div class="product_main" {display_realtion_news}>
                <hr style = "margin-bottom: 10px;
                    border-width:1px;
                    border-color:#79afc4; 
                    width:100%; 
                    float:left">
                <div style="font-family:RobotoSlabRegular;
                     font-size:18px;
                     float:left;
                     line-height:30px">THÔNG TIN LIÊN QUAN
                </div>
                <hr style ="margin-top: 10px;
                    margin-bottom: 30px;
                    border-width:1px;
                    border-color:#79afc4; 
                    width:100%; 
                    float:left">
            </div>

            <div class="news_main" {display_realtion_news}>
                <!--BEGINLIST_NEWS-->
                <!--BEGIN_NEWS-->
                <li>
                    <div class="news_detail_searching">
                        <div class="news_column"> 
                            <div class="news_name" 
                                 style="font-size: 14px; 
                                 color: #929292;
                                 cursor: pointer;
                                 font-family: RobotoSlabRegular;
                                 clear:both">
                                <a class="news_name" 
                                   href="{linkS}{news_category}/{news_key}.htm">{news_name}</a>
                            </div>
                            <div class="news_content"
                                 style = "cursor: pointer;
                                 font-family:RobotoSlabRegular;
                                 font-size: 14px;
                                 margin-top: 5px; 
                                 line-height: 25px;
                                 clear:both;">{news_content}</div>
                        </div>
                    </div>
                </li>
                <!--END_NEWS-->
                <!--ENDLIST_NEWS-->
            </div>
            <div class="pagination"
                 align="center"
                 style="margin-left: auto;
                 margin-right: auto;
                 font-size: 14px;
                 font-family: RobotoSlabRegular;
                 display: block">{page}</div>
            <div class="news_main" {display_no_relation}> 
                <div style="text-align: center; 
                     font-family: RobotoSlabRegular;
                     font-size: 17px; 
                     margin-top: 40px; 
                     margin-bottom: 100px;">
                    Không tìm thấy thông tin " {search_key} "
                </div>
            </div> 
        </div>
    </div>
</div>