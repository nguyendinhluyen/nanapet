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
                 style="padding-right: 50px">
                <form method="post" name="contact" id="contact" enctype="multipart/form-data">
                    <div class ="col-sx-12 col-sm-12 col-md-5 col-lg-5" style="margin-top: 30px">
                        <img alt="Liên hệ NanaPet"  
                            src="{linkS}layout/bootstrap/images/lien_he.png" 
                            height="250" 
                            width="200"
                            style = "margin-left: auto;
                                     margin-right: auto;
                                     display: block">
                        <div style="font-family:RobotoSlabRegular;
                                    font-size: 20px;
                                    font-weight: bold;
                                    text-align: center">
                            NanaPet Online Shop                        
                        </div>
                        <div style="font-family:RobotoSlabLight;
                                    font-size: 13px;
                                    font-weight: bold; 
                                    line-height: 30px;
                                    text-align: center">
                            <span style = "font-family:RobotoSlabRegular; 
                                           font-weight: bold">
                                Hotline:
                            </span>                         
                            <span>0933.103.203</span>
                        </div>
                        <div style="font-family:RobotoSlabLight;
                                    font-size: 13px;
                                    line-height: 30px;
                                    text-align: center">
                            <span style = "font-family:RobotoSlabRegular; 
                                           font-weight: bold">
                                Email:
                            </span> 
                            <span>support@nanapet.com</span>
                        </div>
                        <div style="font-family:RobotoSlabLight;
                                    font-size: 13px;
                                    font-weight: bold;
                                    line-height: 30px;
                                    text-align: center">
                            <span style = "font-family:RobotoSlabRegular; 
                                           font-weight: bold">
                                Thời gian làm việc
                            </span>                                                 
                        </div>
                        <div style="font-family:RobotoSlabLight;
                                    font-size: 13px;
                                    font-weight: bold;
                                    text-align: center">
                            9:00 - 22:00 các ngày trong tuần
                        </div>
                        <br/>
                        <br/>
                    </div>

                    <div class ="col-sx-12 col-sm-12 col-md-5 col-lg-5 col-md-offset-1 col-lg-offset-1">                            
                        <div style="margin-top:40px; margin-left: -10px; margin-bottom: 20px">
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
                                           padding: 10px;">
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
                    