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
</style>
<body onload="setTextArea();">
    <div class="container">
        <div class ="row">
            <div class ="col-sx-12 col-sm-12 col-md-12 col-lg-12" style="padding-left: 50px">
                <div id="breakcrumb"
                     style="font-family: RobotoSlabRegular;
                            margin-top: 30px">
                    {breadcrumbs_path}
                </div> 
            </div>
            <div class ="col-sx-12 col-sm-12 col-md-12 col-lg-12" 
                 style="padding-left: 35px">
                <div class="col-sx-12 col-lg-12" 
                     style="line-height: 30px; 
                            font-family: RobotoSlabRegular;
                            font-size: 15px;
                            margin-top: 20px;
                            margin-bottom: 20px">
                    <span style="font-size: 20px;">NanaPet Shop</span> <br>
                    - Văn phòng kho: Tầng trệt, 21/11 Tự Lập, P.4, Q.Tân Bình, TP Hồ Chí Minh <br>
                    - Thời gian làm việc: 09:00 - 16:30 từ T2 đến T7 <br/>
                    - Hotline: (08) 2212.8888 <br>
                    - Mobile: 0933.103.203 (Ms Chi) <br>
                    - Website: <a href="http://nanapet.com"> nanapet.com </a> <br>
                    - Email: support@nanapet.com<br>
                    <span style="font-style:italic">* Quý khách vui lòng liên hệ trước khi đến để được 
                        đón tiếp chu đáo và phục vụ nhanh chóng hơn * </span>
                </div>
                <div class="col-sx-12 col-lg-12">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3919.243964663456!2d106.6532502!3d10.7926176!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xc389e32bb83ac615!2sNanaPet+Shop!5e0!3m2!1sen!2s!4v1482570247573" 
                            width="97%" 
                            height="500" 
                            frameborder="0" 
                            style="border:0; " 
                            allowfullscreen></iframe>
                </div>
                <hr style = "border-width:1px;                                
                            border-color:#eee; 
                            width:94%; 
                            float:left;
                            margin-left:15px;
                            margin-top: 50px">
            </div>
            <div class ="col-sx-12 col-sm-12 col-md-12 col-lg-12" 
                 style="padding-right: 50px">
                <form method="post" name="contact" id="contact" enctype="multipart/form-data">
                    <div class ="col-sx-12 col-lg-6" style="margin-top: 30px">
                        <img alt="Liên hệ NanaPet"  
                            src="{linkS}layout/bootstrap/images/lien_he.png" 
                            height="250" 
                            width="200"
                            style = "margin-left: auto;
                                     margin-right: auto;
                                     display: block">
                    </div>

                    <div class ="col-sx-12 col-lg-6" 
                         style="padding-right: 25px">                            
                        <div style="margin-top:40px; 
                                    margin-left: -10px; 
                                    margin-bottom: 20px">
                            {success}
                        </div>                        
                        <div class ="form-horizontal">
                            <div class ="form-group">
                                <input  type="text"          
                                        class ="form-control"
                                        id="txtHoten"
                                        name="txtHoten"                                                                        
                                        placeholder = "Họ và tên"
                                        onkeydown="myKeyDownName();"
                                        style ="-webkit-border-radius: 15px;
                                                -moz-border-radius: 15px;
                                                border-radius: 15px;
                                                height: 40px;
                                                outline:none;
                                                padding: 5px;
                                                font-family: RobotoSlabRegular;
                                                font-size: 14px;
                                                border: 1px solid #ddd;
                                                font-weight: lighter;
                                                color: #adadad"
                                        maxlength="50"/>

                            </div>                            
                        </div>  
                        <div class ="form-horizontal">
                            <div class ="form-group">
                                <input  type="text"          
                                        class ="form-control"
                                        id="txtEmail"
                                        name="txtEmail"                                                                        
                                        placeholder = "Email"
                                        onkeydown="myKeyDownEmail();"
                                        style = "-webkit-border-radius: 15px;
                                                 -moz-border-radius: 15px;
                                                 border-radius: 15px;
                                                 height: 40px;
                                                 outline:none;
                                                 padding: 5px;
                                                 font-family: RobotoSlabRegular;
                                                 font-size: 14px;                                            
                                                 border: 1px solid #ddd;
                                                 font-weight: lighter;
                                                 color: #adadad"
                                        maxlength="50"/>
                            </div>
                            <div class ="form-group">
                                <input  type="text"          
                                        class ="form-control"
                                        id="txtDienthoai"
                                        name="txtDienthoai"                                                                        
                                        placeholder = "Điện thoại liên lạc"
                                        onkeydown="myKeyDownPhone();"
                                        style = "-webkit-border-radius: 15px;
                                                 -moz-border-radius: 15px;
                                                 border-radius: 15px;
                                                 height: 40px;
                                                 outline:none;
                                                 padding: 5px;
                                                 font-family: RobotoSlabRegular;
                                                 font-size: 14px;                                            
                                                 border: 1px solid #ddd;
                                                 font-weight: lighter;
                                                 color: #adadad"
                                        maxlength="11"/>
                            </div>                            
                            <div class ="form-group">                        
                                <textarea rows="5"                                        
                                        class="form-control" 
                                        id="txtNoidung" 
                                        name ="txtNoidung"
                                        placeholder="Nội dung"
                                        onkeydown="myKeyDownContent();"
                                        maxlength="250"
                                        style = "-webkit-border-radius: 15px;
                                                 -moz-border-radius: 15px;
                                                 border-radius: 15px;
                                                 outline:none;
                                                 font-family: RobotoSlabRegular;
                                                 font-size: 14px;
                                                 border: 1px solid #ddd;
                                                 font-weight: lighter;  
                                                 color: #adadad;
                                                 height: 160px">
                               </textarea>
                               <br/>
                               <input type="submit" 
                                    name="butSub"
                                    value="Gửi đến chúng tôi"
                                    onclick="checkform();"
                                    style="outline:none;
                                           float:right;
                                           background-color: #ff767c;
                                           border: none;
                                           color: #fff;
                                           font-family:PoetsenOne;
                                           -webkit-border-radius: 20px;
                                           -moz-border-radius: 20px;
                                           border-radius: 20px;
                                           padding: 10px;
                                           margin-bottom: 50px;
                                           font-size: 15px">
                            </div>                                                
                        </div>                                                                                                                          
                    </div>
                </form>			
            </div>        
        </div><!-- end product_main -->                       
    </div>
</body>
<script language="Javascript">
    function checkform(){
        // Ho Ten
        document.getElementById("txtHoten").required = true;        
        if (document.getElementById('txtHoten').value === ""){            
            document.getElementById('txtHoten').setCustomValidity('Vui lòng nhập họ tên.');
        }
        else {
            document.getElementById('txtHoten').setCustomValidity('');
        }        
        //Email
        document.getElementById("txtEmail").required = true;        
        if ((document.getElementById('txtEmail').value === "")
            || (document.getElementById('txtEmail').value.indexOf('@') === -1) 
            || (document.getElementById('txtEmail').value.indexOf('.') === -1)){
            document.getElementById('txtEmail').setCustomValidity('Vui lòng nhập đúng địa chỉ email.');
        }
        else{
            document.getElementById('txtEmail').setCustomValidity('');
        }        
        // Dien Thoai
        document.getElementById("txtDienthoai").required = true;        
        if (document.getElementById('txtDienthoai').value < 10){            
            document.getElementById('txtDienthoai').setCustomValidity('Vui lòng nhập số điện thoại.');
        }
        else{
            document.getElementById('txtDienthoai').setCustomValidity('');
        }        
        // Noi Dung
        document.getElementById("txtNoidung").required = true;                               
        if (document.getElementById('txtNoidung').value === ""){
            document.getElementById('txtNoidung').setCustomValidity('Vui lòng nhập nội dung.');             
        }
        else{
            document.getElementById('txtNoidung').setCustomValidity('');
        }       
    }    
    function myKeyDownName(){
        document.getElementById('txtHoten').setCustomValidity('');
    }    
    function myKeyDownEmail(){
        document.getElementById('txtEmail').setCustomValidity('');
    }    
    function myKeyDownPhone(){
        document.getElementById('txtDienthoai').setCustomValidity('');
    }    
    function myKeyDownContent(){
        document.getElementById('txtNoidung').setCustomValidity('');
    }    
    function setTextArea(){
        document.getElementById('txtNoidung').value = "";
    }
</script>
                    