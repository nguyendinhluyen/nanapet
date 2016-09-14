<style>
    a:hover, a:link{
        text-decoration: none;
    }    
    #sharefacebook_icon a img{
        opacity: 0.8;
    }    
    #sharefacebook_icon a:hover img{                
        opacity: 1;
    }    
    #sharefacebook_icon a:hover {
        text-decoration: none;
    }    
    #sharefacebook_icon a:active {
        text-decoration: none;
    }
    #sharefacebook_icon a:link {
        text-decoration: none;
    }    
    #ShareButton{        
        padding-bottom: 10px;     
    }    
    #stretch{        
        padding-bottom: 10px;
    }    
    #line{        
        height:1px;
        margin-left: 100px;
        margin-right: 100px;
        color:#CCF;
        box-shadow: 0 0 2px #B0ACFB;
        margin-bottom: 10px;
        -moz-box-shadow: 0 0 2px #B0ACFB;
        -webkit-box-shadow: 0 0 2px#B0ACFB;
    }
    #twitter-widget-0{
        width:80px !important;
    }    
    #___plusone_0{
        width:62px !important;
    }    
</style>

<!-- Facebook SDK -->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=1491869401059003&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!--End Facebook SDK -->

<script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>

<script src="https://apis.google.com/js/platform.js" async defer>
  {lang: 'vi'}
</script>

<script>
    !function(d,s,id)
    {
        var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';
        if(!d.getElementById(id))
        {
            js=d.createElement(s);
            js.id=id;
            js.src=p+'://platform.twitter.com/widgets.js';
            fjs.parentNode.insertBefore(js,fjs);
        }
    }(document, 'script', 'twitter-wjs');
</script>
    
<script src="//platform.linkedin.com/in.js" type="text/javascript">
    lang: en_US
</script>

<div class="container">
    <div class ="row">        
        <div class="col-sx-12 col-sm-12 col-md-9 col-lg-9"
             style="padding-left: 50px">
            <div id="breakcrumb" 
                 style="font-family: RobotoSlabRegular; 
                        font-size:14px;
                        margin-top: 30px;
                        margin-bottom: 15px">
                {breadcrumbs_path}
            </div>                         	        
            <div class="news_main_libary">
                <div id = "ShareButton">
                    <h1 class="contentheading" 
                        style="padding-top:5px;                                
                               font-family:PoetsenOne;
                               font-size: 30px"> 
                            {news_name}
                    </h1>														
                    <table>
                        <tr>
                            <td>
                                <div style="margin-bottom:10px;                                                
                                            color:black;
                                            font-size:14px;
                                            font-family: RobotoSlabRegular">                            
                                    <span style="color:#999999; font-family:RobotoSlabLight">{date_added}</span>
                                </div>
                            </td>    
                        </tr>
                        <tr>
                            <td colspan="3">
                                <h1 style="color:blue;                                    
                                           font-size:14px;                               
                                           font-family:RobotoSlabRegular;">
                                    <span style="color:black;">Chuyên Mục:&nbsp;</span> 
                                    <span style="text-decoration: none; 
                                                 line-height: 20px;
                                                 color: #999999">{chuyen_muc}</span>
                                </h1>
                            </td>                                                    
                        </tr>    
                        
                    </table>
                    <table>
                        <tr>                                
                            <td style="color:black;                                                                                       
                                       font-size:14px;                                         
                                       line-height:30px;
                                       font-family:RobotoSlabRegular;
                                       width: 120px">
                                Từ khóa bài viết:
                            </td>
                            <td style = "font-size:14px;
                                        color:#999999;
                                        line-height:25px;                                        
                                        text-transform: capitalize">
                                {author}
                            </td>
                        </tr>    
                    </table>
                    <table style="margin-top:10px; float:left;"
                           class="col-lg-8">
                        <tr>
                            <td style="width: 95px"> 
                                <span class="fb-like"                                     
                                      data-href="{linkSf}{news_key}"
                                      data-layout="button_count" 
                                      data-action="like" 
                                      data-show-faces="false" 
                                      data-share="false">
                                </span>   
                            </td>
                            <td style="width: 65px">
                                <span class="g-plusone" data-size="medium"></span>
                            </td>
                            <td> 
                                <span>
                                    <a href="{linkSf}{news_key}" class="twitter-share-button">Tweet</a>               
                                </span>
                            </td>                        
                        </tr>
                        
                    </table> 
                    <div style="float:left;                                 
                                margin-right: 0px;
                                text-align: right;
                                padding-right: 0px;
                                padding-bottom: 10px"
                        class="col-lg-4">
                        <span id = "sharefacebook_icon" 
                              style = "margin-right:5px">
                            <a  target="_blank"
                                href="http://www.facebook.com/sharer/sharer.php?s=100&amp;p[url]={linkSf}{news_key}&amp;p[images][0]= {linkSf}layout/images/logo/banner01.jpg&amp;p[title]={news_name}+&amp;p[summary]={news_shortcontent}">
                                <img alt="facebook" 
                                    src="{linkS}layout/images/facebook-icon.png" 
                                    title="Chia sẻ Facebook"
                                    width="40px"/>
                            </a>
                        </span>

                        <span id = "sharefacebook_icon" 
                              style = "margin-right:5px">
                            <a  href="https://plus.google.com/share?url={linkSf}{news_key}"
                                onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');;return false;">
                                <img alt="google+" 
                                    src="{linkS}layout/images/google-plus-icon.png"                                
                                    title="Chia sẻ Google+"
                                    width="40px"/>
                            </a>
                        </span>

                        <span id = "sharefacebook_icon"
                              style = "margin-right:5px">
                            <a href="https://twitter.com/intent/tweet?text={news_name_twitter}&url={linkSf}{news_key}&related=episod">
                                <img alt="tweet" 
                                    src="{linkS}layout/images/twitter-icon.png"
                                    title="Chia sẻ Tweet"
                                    width="40px"/>
                            </a>
                        </span>		                                                                    

                        <span id = "sharefacebook_icon">
                            <a href="http://www.linkedin.com/shareArticle?mini=true&url={linkSf}{news_key}&title={news_name}&summary={news_shortcontent}&source=nanapet.com" 
                               rel="nofollow" 
                               onclick="NewWindow(this.href,'template_window','550','400','yes','center');return false" 
                               onfocus="this.blur()"
                               target="_blank"> 
                                <img alt="linkedIn" 
                                    src="{linkS}layout/images/linkedIn-icon.png" 
                                    title="Chia sẻ LinkedIn"
                                    width="40px"/>
                            </a>
                        </span>   
                    </div>
                </div>
                                     
                <div class ="row" style="float:left">
                    <hr style="margin-top: 0.5em;
                               margin-bottom: 0.5em;
                               margin-left: auto;
                               margin-right: auto;                                                           
                               color: #999999;
                               margin-left: 15px;
                               margin-right: 15px">
                    
                    <div class="col-sx-12 col-sm-12 col-md-3 col-lg-3" style="float:left; padding-top: 45px">
                        <a href="{linkS}cong-tac-vien/{idadmin}.html/page=0">
                            <img alt="{name}"
                                class="img-circle"
                                src="{linkS}upload/avatar/{avata}"
                                style="width: 100%; clear: both">
                        </a>                                                        
                        <div style="font-family: PoetsenOne; 
                                    text-align: center; 
                                    font-size: 17px; 
                                    line-height: 30px;
                                    margin-top: 10px">
                            <a style="color: black; text-transform: uppercase"
                               href="{linkS}cong-tac-vien/{idadmin}.html/page=0">
                                {name}
                            </a>
                        </div>
                        <div style="text-transform: uppercase; 
                                    font-family:RobotoSlabRegular;
                                    text-align: center;
                                    color: #8f8f8f;
                                    margin-bottom: 20px">
                            Copywriter
                        </div> 
                        <div style="font-family: RobotoSlabLight; 
                                    text-align: center; 
                                    font-size: 14px; 
                                    line-height: 25px;
                                    padding-bottom: 10px">
                            {short_content}
                        </div>
                        <div style="padding-bottom: 10px">
                            <table>
                                <tr>
                                    <td {display_1}>
                                        <img alt="blue point" 
                                            src="{linkS}layout/bootstrap/images/bluePoint.png" 
                                            style="width: 15px; margin-right: 10px">
                                    </td>
                                    <td>
                                        <a style="font-family: RobotoSlabRegular; 
                                                  text-align: justify; 
                                                  font-size: 14px; 
                                                  line-height: 25px;" 
                                            href="{linkS}thu-vien/{relation_news_key_1}/">{relation_news_1}</a>
                                    </td>
                                </tr>
                            </table>
                        </div>
                                    
                        <div style="padding-bottom: 10px">
                            <table>
                                <tr>
                                    <td {display_2}>
                                        <img alt="blue point" 
                                            src="{linkS}layout/bootstrap/images/bluePoint.png" 
                                            style="width: 15px; margin-right: 10px">
                                    </td>
                                    <td>
                                        <a  style="font-family: RobotoSlabRegular;
                                                  text-align: justify; 
                                                  font-size: 14px; 
                                                  line-height: 25px;" 
                                            href="{linkS}thu-vien/{relation_news_key_2}/">{relation_news_2}</a>
                                    </td>
                                </tr>
                            </table>                                                        
                        </div>
                        <div style="padding-bottom: 10px">
                            <table>
                                <tr>
                                    <td {display_3}>
                                        <img alt="blue point"  
                                            src="{linkS}layout/bootstrap/images/bluePoint.png" 
                                            style="width: 15px; margin-right: 10px">
                                    </td>
                                    <td>
                                        <a  style="font-family: RobotoSlabRegular; 
                                                  text-align: justify; 
                                                  font-size: 14px; 
                                                  line-height: 25px;" 
                                            href="{linkS}thu-vien/{relation_news_key_3}/">{relation_news_3}</a>
                                    </td>
                                </tr>
                            </table>                                                        
                        </div>
                        <div style="padding-bottom: 10px">
                            <table>
                                <tr>
                                    <td {display_4}>
                                        <img alt="blue point" 
                                            src="{linkS}layout/bootstrap/images/bluePoint.png" 
                                            style="width: 15px; margin-right: 10px">
                                    </td>
                                    <td>
                                        <a  style="font-family: RobotoSlabRegular; 
                                                  text-align: justify; 
                                                  font-size: 14px; 
                                                  line-height: 25px;" 
                                            href="{linkS}thu-vien/{relation_news_key_4}/">{relation_news_4}</a>
                                    </td>
                                </tr>
                            </table>                                                        
                        </div>
                        <div style="padding-bottom: 10px">
                            <table>
                                <tr>
                                    <td {display_5}>
                                        <img alt="blue point"
                                            src="{linkS}layout/bootstrap/images/bluePoint.png" 
                                            style="width: 15px; margin-right: 10px">
                                    </td>
                                    <td>
                                        <a  style="font-family: RobotoSlabRegular; 
                                                  text-align: justify; 
                                                  font-size: 14px; 
                                                  line-height: 25px;" 
                                            href="{linkS}thu-vien/{relation_news_key_5}/">{relation_news_5}</a>
                                    </td>
                                </tr>
                            </table>                                                        
                        </div>                    
                    </div>
                    <div class="article-content col-sm-12 col-xs-12 col-md-9 col-lg-9"
                         style="line-height:25px;
                                font-size: 14px;                                
                                padding-top: 5px;">                        
                        <p>
                            <span style="text-align:justify;
                                         font-family:RobotoSlabRegular;">
                                {news_content}
                            </span>
                        </p> 
                        <!--<A href="#section0">
                            <b style="font-family:RobotoSlabLight;
                                      font-size:14px;">
                                Về đầu trang
                            </b>
                        </A>
                        <br/>-->
                        <div style="margin-bottom:10px; 
                                padding-top:10px;
                                color:#7F1F00; 
                                font-size:14px; 
                                font-family:RobotoSlabRegular">
                            <table style="text-align:left;">
                                <hr style="margin-top: 0.5em;
                                           margin-bottom: 0.5em;
                                           margin-left: auto;
                                           margin-right: auto;                                                           
                                           color: #999999;
                                           {display_disclaimer}">
                                <tr style="{display_disclaimer}">
                                    <td>
                                        <table>
                                            <tr>
                                                <td>
                                                    <img alt="disclamer"
                                                        src="{linkS}layout/images/disclamer.png"
                                                        title="Disclaimer"
                                                        width="30px"/>
                                                </td>
                                                <td style="color:black;
                                                    font-size:15px; 
                                                    width: 100%; 
                                                    line-height: 20px;
                                                    font-family: RobotoSlabLight;
                                                    text-align: justify;
                                                    font-style: italic;
                                                    padding-left: 10px">
                                                    Disclaimer
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>                                                                        
                                    <td style="color:black;
                                               font-size:12px; 
                                               width: 100%; 
                                               line-height: 25px;
                                               font-family: RobotoSlabLight;
                                               text-align: justify">
                                        {disclaimer}
                                    </td>
                                </tr>  
                                <tr style="{display_disclaimer}">
                                    <td>
                                        <hr style="margin-top: 0.5em;
                                                  margin-bottom: 0.5em;
                                                  margin-left: auto;
                                                  margin-right: auto;                                                           
                                                  color: #999999;">  
                                    </td>
                                </tr>
                                <hr style="margin-top: 0.5em;
                                        margin-bottom: 0.5em;
                                        margin-left: auto;
                                        margin-right: auto;                                                           
                                        color: #999999;
                                        {display_resource}">  
                                <tr>
                                    <td style="color:black;                                                                                       
                                               font-size:14px; 
                                               width: 100%; 
                                               line-height: 35px">
                                        Nguồn tham khảo:&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td style = "font-size:14px;
                                                 color:#337ab7;
                                                 line-height:25px;">
                                        {linkResource}
                                    </td>
                                </tr>                                    
                            </table>   
                            <hr style="margin-top: 0.5em;
                                    margin-bottom: 0.5em;
                                    margin-left: auto;
                                    margin-right: auto;                                                           
                                    color: #999999">
                            
                            <div class="col-sm-12 col-sx-12 col-md-8 col-lg-8" 
                                 style="padding-left: 0px; margin-top: 10px">
                                <table>
                                    <tr>
                                        <td style="width: 95px"> 
                                        <span class="fb-like"                                     
                                              data-href="{linkSf}{news_key}"
                                              data-layout="button_count" 
                                              data-action="like" 
                                              data-show-faces="false" 
                                              data-share="false">
                                        </span>   
                                    </td>
                                    <td style="max-width: 67px; min-width: 67px">
                                        <span class="g-plusone" data-size="medium" ></span>
                                    </td>
                                    <td> 
                                        <span>
                                            <a href="{linkSf}{news_key}" class="twitter-share-button">Tweet</a>               
                                        </span>
                                    </td>
                                    </tr>
                                </table>                                
                            </div>
                            <div class="col-sm-12 col-sx-12 col-md-4 col-lg-4" style="padding-right: 0px">
                                <table style="margin-bottom: 10px; margin-top: 10px">
                                    <tr>                                                                       

                                        <td>                                       
                                            <span id = "sharefacebook_icon" 
                                                  style = "margin-right:5px">
                                                <a  target="_blank" 
                                                    href="http://www.facebook.com/sharer/sharer.php?s=100&amp;p[url]={linkSf}{news_key}&amp;p[images][0]= {linkSf}layout/images/logo/banner01.jpg&amp;p[title]={news_name}+&amp;p[summary]={news_shortcontent}">
                                                    <img alt="facebook" 
                                                        src="{linkS}layout/images/facebook-icon.png" 
                                                        title="Chia sẻ Facebook"
                                                        width="40px"/>
                                                </a>
                                            </span>                                                                           
                                        </td>
                                        <td>
                                            <span id = "sharefacebook_icon" 
                                                  style = "margin-right:5px">
                                                <a  href="https://plus.google.com/share?url={linkSf}{news_key}"
                                                    onclick="javascript:window.open(this.href, '', 'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600');;return false;">
                                                    <img alt="google+" 
                                                        src="{linkS}layout/images/google-plus-icon.png"                                
                                                        title="Chia sẻ Google+"
                                                        width="40px"/>
                                                </a>
                                            </span>                                       
                                        </td>
                                        <td>
                                            <span id = "sharefacebook_icon"
                                                  style = "margin-right:5px">
                                                <a href="https://twitter.com/intent/tweet?text={news_name_twitter}&url={linkSf}{news_key}&related=episod">
                                                    <img alt="tweet" 
                                                        src="{linkS}layout/images/twitter-icon.png"
                                                        title="Chia sẻ Tweet"
                                                        width="40px"/>
                                                </a>
                                            </span>		                                                                    

                                        </td>
                                        <td>
                                        <span id = "sharefacebook_icon">
                                                <a href="http://www.linkedin.com/shareArticle?mini=true&url={linkSf}{news_key}&title={news_name}&summary={news_shortcontent}&source=nanapet.com" 
                                                   rel="nofollow" 
                                                   onclick="NewWindow(this.href,'template_window','550','400','yes','center');return false" 
                                                   onfocus="this.blur()"
                                                   target="_blank"> 
                                                    <img alt="linkedIn" 
                                                        src="{linkS}layout/images/linkedIn-icon.png" 
                                                        title="Chia sẻ LinkedIn"
                                                        width="40px"/>
                                                </a>
                                            </span>   
                                        </td>
                                    </tr>
                                </table>
                            </div>                                                            
                        </div>
                    </div>    
                </div>
                      
                <hr style="margin-top: 10px;
                           margin-bottom: 5px;
                           margin-left: auto;
                           margin-right: auto;                                                           
                           color: #999999">
                <div id = "stretch">                    
                    <div class="relation_product" {display_realtion_product}>
                        <hr style="margin-top: 10px;
                                   margin-bottom: 5px;
                                   margin-left: auto;
                                   margin-right: auto;                                                           
                                   color: #999999;
                                   clear: both">
                        <div style="background-color: #f1fdfb; padding-top: 10px; padding-bottom: 10px; clear:both">
                             
                            <table style="text-align: left;">
                                <tr>                                
                                    <td>
                                        <span style="color: #48817a;
                                                     font-size: 14px;
                                                     font-family: RobotoSlabRegular;
                                                     margin-left: 10px;">
                                            SẢN PHẨN LIÊN QUAN
                                        </span>
                                    </td>
                                </tr>                            
                            </table>                        
                        </div>  
                        <div style="padding-top: 30px ; padding-bottom: 40px">
                            <table>
                                <tr>
                                    {relation_product}
                                </tr>
                                <tr>
                                    {relation_product_2}
                                </tr>
                            </table>
                        </div>
                    </div>
                                
                    <div class="relation_chuyen_muc row">
                        <div class="col-lg-6 col-md-6">
                            <hr style="margin-top: 10px;
                                       margin-bottom: 5px;
                                       margin-left: auto;
                                       margin-right: auto;
                                       color: #999999">                    
                            <div style="background-color: #f1fdfb; 
                                        padding-top: 10px; 
                                        padding-bottom: 10px;
                                        margin-bottom: 15px">
                                <span style="color: #48817a;
                                            font-size: 14px;
                                            font-family: RobotoSlabRegular;
                                            margin-left: 10px;">
                                    BÀI CÙNG CHUYÊN MỤC
                                </span>                     
                            </div>
                            <div>
                                <ul style = "padding-left: 0px; clear:both">
                                    <!--BEGINLIST_NEWSCHUYENMUC-->
                                    <!--BEGIN_NEWSCHUYENMUC-->
                                    <li class="danhmuc_main">
                                        <a href="{linkS}thu-vien/{news_key}/" 
                                            style="outline: none; 
                                                 font-size: 14px;
                                                 font-family: RobotoSlabLight;
                                                 color: black;
                                                 text-transform: initial;
                                                 color: #337ab7">
                                            > &nbsp;{news_name}
                                        </a>   
                                    </li>
                                    <!--END_NEWSCHUYENMUC-->
                                    <!--ENDLIST_NEWSCHUYENMUC-->
                                </ul>
                            </div>                            
                        </div>
                        <div class="col-lg-6 col-md-6">
                            <hr style="margin-top: 10px;
                                       margin-bottom: 5px;
                                       margin-left: auto;
                                       margin-right: auto;
                                       color: #999999">                    
                            <div style="background-color: #f1fdfb; 
                                        padding-top: 10px; 
                                        padding-bottom: 10px;
                                        margin-bottom: 15px">
                                <span style="color: #48817a;
                                            font-size: 14px;
                                            font-family: RobotoSlabRegular;
                                            margin-left: 10px;">
                                    BÀI MỚI ĐĂNG
                                </span>                     
                            </div>
                            <div>
                                <ul style = "padding-left: 0px; clear:both">
                                    <!--BEGINLIST_LASTETSNEWS-->
                                    <!--BEGIN_LASTETSNEWS-->
                                    <li class="danhmuc_main">
                                        <a href="{linkS}thu-vien/{news_key}/" 
                                            style="outline: none; 
                                                 font-size: 14px;
                                                 font-family: RobotoSlabLight;
                                                 color: black;
                                                 text-transform: initial;
                                                 color: #337ab7">
                                            > &nbsp;{news_name}
                                        </a>   
                                    </li>
                                    <!--END_LASTETSNEWS-->
                                    <!--ENDLIST_LASTETSNEWS-->
                                </ul>
                            </div>                            
                        </div>
                    </div>                                
                    <hr style="margin-top: 10px;
                               margin-bottom: 5px;
                               margin-left: auto;
                               margin-right: auto;                                                           
                               color: #999999;">
                    <div style="background-color: #f1fdfb; padding-top: 10px; padding-bottom: 10px">
                        <table style="text-align: left;">
                            <tr>                                
                                <td>
                                    <span style="color: #48817a;
                                                 font-size: 14px;
                                                 font-family: RobotoSlabRegular;
                                                 margin-left: 10px;">
                                        THẢO LUẬN BÀI VIẾT
                                    </span>
                                </td>
                            </tr>
                        </table>                        
                    </div>
                    <br/>
                    <div class="fb-comments"                       
                        data-href="{linkSf}{news_key}"
                        data-numposts="5"
                        data-width ="810">
                    </div>
                </div>
            </div><!-- end product_main -->
            <br/>
            <br/>
        </div>
        <div class = "hidden-xs hidden-sm col-md-3 col-lg-3" 
             style="padding-right: 50px">
            <div>
                <img alt="đọc nhiều nhất" 
                    src="{linkS}layout/bootstrap/images/doc_nhieu_nhat.png"
                    style="float: right; 
                           clear: both; 
                           width: 100%; 
                           margin-top: 30px;
                           margin-bottom: 5px;"/>
                <ul style = "padding-left: 15px; clear:both">
                    <!--BEGINLIST_NEWSCATEGORY-->
                    <!--BEGIN_NEWSCATEGORY-->
                    <a href="{linkS}thu-vien/{news_key}/">
                        <li class="danhmuc_main">
                            <table>
                                <tr>
                                    <td>                                    
                                        <img alt="{news_name}" 
                                            src="{linkS}upload/news/{news_image}"
                                            width="100"
                                            height="90"
                                            style ="-moz-border-radius:10px; 
                                                    -webkit-border-radius:10px;
                                                    border-radius: 10px;
                                                    margin-top: 20px;
                                                    margin-right: 10px"/>
                                    </td>
                                    <td>

                                        <table>
                                            <tr>
                                                <td style="height: 90px; padding-top: 0px; line-height: 20px;">
                                                    <span  style="outline: none; 
                                                               font-size: 14px;
                                                               font-family: PoetsenOne;
                                                               color: #848484">
                                                        {news_name}
                                                    </span>
                                                </td>                                            
                                            </tr>
                                            <tr>
                                                <td style="font-family:RobotoSlabLight; 
                                                           font-size: 12px;">
                                                    <a style="text-transform: initial;
                                                              color: #05b4fa;">
                                                        Xem chi tiết
                                                    </a>
                                                </td>
                                            </tr>                                                                            
                                        </table> 

                                    </td>
                                </tr>
                            </table>
                        </li>
                    </a>
                    <!--END_NEWSCATEGORY-->
                    <!--ENDLIST_NEWSCATEGORY-->
                </ul>
            </div>
            <img alt="danh mục" 
                src="{linkS}layout/bootstrap/images/danh_muc_blog.png"
                style="float: right; 
                       clear: both; 
                       width: 100%; 
                       margin-top: 30px;
                       margin-bottom: 20px;"/>
            {category}
            <div id="banner_left" style="margin-left: 15px; margin-top: 15px">
                <div id="sliderBannerLeft">
                    <div id="SliderNameBannerLeft" class="SliderNameBannerLeft">                                                      
                        {left_banner_1}
                    </div>
                    <script type="text/javascript">
                        <!--fades,traight,swirl,snake-->
                        effectsDemo2_1 = 'fades,traight,swirl,snake';
                        var demoSlider_2_1 = Sliderman2.slider({container: 'SliderNameBannerLeft', 
                                                                width: 235, 
                                                                height: 500, 
                                                                effects: effectsDemo2_1,
                        display: {
                                autoplay: 3000,
                                loading: {background: '#000000', opacity: 0.5},
                                buttons: {hide: true, opacity: 1, 
                                prev: {className: 'SliderNamePrevBannerLeft', 
                                label: ''}, 
                                next: {className: 'SliderNameNextBannerLeft', label: ''}}
                                }
                        });
                    </script>
                </div>                                     
            </div>
            <!--<div id="banner_left_2" style="margin-left: 15px; margin-top: 15px">
                <div id="sliderBannerLeft_2">
                    <div id="SliderNameBannerLeft_2" class="SliderNameBannerLeft_2">                                                         
                        {left_banner_2}
                    </div>
                    <script type="text/javascript">
                        effectsDemo2_2 = 'fades,traight,swirl,snake';
                        var demoSlider_2_2 = Sliderman2.slider({container: 'SliderNameBannerLeft_2', 
                                                                width: 235, 
                                                                height: 500, 
                                                                effects: effectsDemo2_2,
                        display:{
                                autoplay: 3500,
                                loading: {background: '#000000', opacity: 0.5},
                                buttons: {hide: true, opacity: 1,
                                prev: {className: 'SliderNamePrevBannerLeft_2', label: ''}, 
                                next: {className: 'SliderNameNextBannerLeft_2', label: ''}}
                            }
                        });
                    </script>
                </div>                                                           
            </div>-->
            <div style="margin-left: 5px;
                        margin-bottom: 40px;
                        width: 245px">
                {left_facebook_page_plugin}
            </div>
        </div>                        
    </div>    
</div><!-- end blog -->