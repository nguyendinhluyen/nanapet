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
    .danhmuc
    {
        color: #420062;
    }
    .danhmuc a
    {
        color: #420062;
    }
</style>

<div class ="container">
    <div class ="row">
        <div class = "hidden-xs hidden-sm col-md-3 col-lg-3" style="padding-left: 50px; margin-bottom: 30px ">            
            <img alt="danh mục" 
                src="{linkS}layout/bootstrap/images/ho_tro.png"
                style="float: left;
                       clear: both; 
                       width: 100%; 
                       margin-top: 30px;
                       margin-bottom: 20px;"/>
            {category}
        </div>
        <div class ="col-xs-9 col-sm-9 col-md-9 col-lg-9" 
             style="padding-right: 50px;">            
            <div id="breakcrumb" 
                 style="font-size:14px; 
                        font-family: RobotoSlabRegular;
                        margin-top: 30px;
                        margin-bottom: 15px">
                {breadcrumbs_path}
            </div>                                    
            <form method="post" name="contact" id="contact" enctype="multipart/form-data">
                <table border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                            <div class="tieude_help" style = "margin-bottom: 15px">
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
                                          text-align: justify;
                                          line-height:25px; 
                                          font-size: 14px">
                                {noidung}
                            </div>
                        </td>
                    </tr>
                </table>                                                            
            </form>			      
        </div>                                                                                                                           
    </div>                                  
</div>
                    