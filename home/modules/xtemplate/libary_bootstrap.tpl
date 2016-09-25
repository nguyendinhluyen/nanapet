<!--Use for combobox-->
<head>
    <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.base.css" type="text/css"/>
    <link rel="stylesheet" href="{linkS}layout/jqwidgets/styles/jqx.bootstrap.css" type="text/css"/>
    <script type="text/javascript" src="{linkS}layout/scripts/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxcore.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxbuttons.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxscrollbar.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxlistbox.js"></script>
    <script type="text/javascript" src="{linkS}layout/jqwidgets/jqxcombobox.js"></script>
</head>
<!--End use for combobox-->

<style type="text/css">
    .contentheading a:hover 
    {
        text-decoration:underline;
    }
    .linkDetail a:hover 
    {
        text-decoration:underline;
    }
    .jqx-combobox-input jqx-combobox-input-bootstrap jqx-widget-content jqx-widget-content-bootstrap jqx-rc-all jqx-rc-all-bootstrap
    {
        font-family: RobotoSlabRegular;
    }
</style>

<script type="text/javascript">
    
    $val = 0;
    
    $(document).ready(function (){
        
        $link = location.href;
        
        var str = $link;
        
        if(str.search("thu-vien/choose-all.html") > 0)
        {
            $val = 1;
        }						
        else if(str.search("thu-vien/choose-dog.html") > 0)
        {
            $val = 2;
        }		
        else if(str.search("thu-vien/choose-cat.html") > 0)
        {
            $val = 3;
        }			
       	var source = [
            "Lọc bài viết...",
            //"Tất cả",
            "Chó",
            "Mèo"
        ];
       	// Create a jqxComboBox
      	$("#jqxComboBox").jqxComboBox({ source: source, 
                                        selectedIndex: $val, 
                                        width: '110px',
                                        height: '25px', 
                                        theme: 'bootstrap' });                                     
                                    
        $("#jqxComboBox").jqxComboBox({autoDropDownHeight: true});
        
        $('#jqxComboBox').on('select', function (event)
        {
            var args = event.args;
            
            if (args)
            {                
                var item = args.item;
                                                
                var value = item.value;
                
                if(value === 'Chó')
                {
                    window.location='{linkS}thu-vien/choose-dog.html';
                }
                else if(value === 'Mèo')
                {
                    window.location='{linkS}thu-vien/choose-cat.html';
                }
                else if (value === 'Tất cả')
                {
                    window.location='{linkS}thu-vien/choose-all.html';
                }
            }
        }); 
    });
</script>

<!--Use Facebook-->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&appId=1491869401059003&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<!--End Use Facebook-->

<div class="container">
    <div class = "row">
        <div class="col-sx-12 col-sm-12 col-md-9 col-lg-9" 
             style="padding-left: 50px">
            <div id="breakcrumb" 
                 style = "font-family: RobotoSlabRegular; 
                          font-size: 14px;
                          margin-top: 30px">{breadcrumbs_path} 
                <span style="float:right">
                    <div id='jqxComboBox'></div>
                </span>                                                                                                  
            </div>                 
                        
            <div class="news_main" style ="margin-top: 30px">
                <h1 style="margin-top: 20px;
                        margin-bottom: 25px; 
                        font-size: 23px;
                        font-family:PoetsenOne;
                        color: #ff767c;
                        text-transform: uppercase">
                    {category_selected}
                </h1>
                <!--BEGINLIST_PROMOTION-->
                <!--BEGIN_PROMOTION-->			                
                <div class="contentpaneopen">
                    <h2 class="contentheading" style="padding-bottom:10px">
                        <a  href = "{linkS}thu-vien/{news_key}/" 
                            style= "color:#000;
                                    font-size:23px;
                                    font-family:PoetsenOne;
                                    outline: none">{news_name}</a>
                    </h2>					
                    <div class="article-toolswrap">
                        <div class="article-tools clearfix">
                            <div class="article-meta">
                                <span class="createby"
                                      style="color:#5b5b5b;
                                            font-size:13px;
                                            font-family:RobotoSlabLight;">
                                    {person_up} 
                                    <span style ="color: #999999">Ngày {date}, Tháng {month}, Năm {year}</span>
                                </span>
                            </div>
                        </div>
                    </div>					
                    <div class="article-content">                         
                        <div class="row">
                            <div class="col-md-3 col-lg-3">
                                <h4>
                                    <a href="{linkS}thu-vien/{news_key}/"
                                       class="previews">
                                        <img alt="{news_name}"
                                            src="{linkS}upload/news/{news_image}" 
                                            width="200" 
                                            height="200"
                                            style ="-moz-border-radius:20px; 
                                                    -webkit-border-radius:20px;
                                                    border-radius: 20px;
                                                    margin-top: 10px"/>
                                    </a>
                                </h4> 
                            </div>
                            <div class="col-md-9 col-lg-9">
                                <h3 style="text-align:justify;
                                        font-family:RobotoSlabLight;
                                        font-size:14px;
                                        line-height: 23px;
                                        margin-top:15px;
                                        height: 170px;
                                        margin-left: 20px">
                                    <div>
                                        <span>
                                            {news_short}
                                        </span>
                                    </div>
                                </h3>  
                                <div class="fb-like" 
                                    data-href="{linkS}thu-vien/{news_key}/" 
                                    data-layout="button_count"
                                    data-action="like"
                                    data-show-faces="true" 
                                    data-share="true"
                                    style="margin-left: 20px"> 
                                </div>  
                            </div>
                        </div>
                    </div>
                    <hr style = "margin-bottom: 30px"/>                    
                </div>
                <p> </p>
                <!--END_PROMOTION-->
                <!--ENDLIST_PROMOTION-->
            </div><!-- end product_main -->
            <div class="pagination" 
                 align="center" 
                 style="margin-left: auto;
                        margin-right: auto;
                        font-size:14px;
                        font-family:RobotoSlabRegular;
                        display:block">
                {page}  
            </div>            
            <br/>
        </div>
        <div class = "hidden-xs hidden-sm col-md-3 col-lg-3" style="padding-right: 50px">
             <div>
                <img alt="bài viết đọc nhiều nhất" 
                    src="{linkS}layout/bootstrap/images/doc_nhieu_nhat.png"
                    style="float: right; 
                           clear: both; 
                           width: 100%; 
                           margin-top: 30px;
                           margin-bottom: 25px;"/>
                <ul style = "padding-left: 15px; clear:both">
                    <!--BEGINLIST_NEWSCATEGORY-->
                    <!--BEGIN_NEWSCATEGORY-->
                    <a href="{linkS}thu-vien/{news_key}/">
                        <li class="danhmuc_main">
                            <div class="row" style="margin-top: 20px">
                                <div class="col-md-6 col-lg-6">
                                    <img alt="{news_name}" 
                                        src="{linkS}upload/news/{news_image}"
                                        width="100"
                                        height="100"
                                        style ="-moz-border-radius:10px; 
                                                -webkit-border-radius:10px;
                                                border-radius: 10px;
                                                margin-right: 10px"/>
                                </div>
                                <div class="col-md-6 col-lg-6">
                                    <span  style="outline: none; 
                                            font-size: 14px;
                                            font-family: PoetsenOne;
                                            color: #848484;
                                            line-height: 20px">
                                     {news_name}
                                     </span>
                                </div>
                            </div>
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
            <!--<div style="margin-left: 15px; 
                        margin-top: 20px; 
                        margin-bottom: 20px">
                {left_facebook_box}
            </div>-->
                
            <div style="margin-left: 5px;
                        margin-bottom: 40px;
                        width: 245px">
                {left_facebook_page_plugin}
            </div>
        </div>
    </div>
</div><!-- end product -->