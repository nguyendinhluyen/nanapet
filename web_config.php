<?php

	$timeout = 1; //khoáº£ng thá»�i gian giá»¯a 2 láº§n up sáº£n pháº©m

	$pp = 1;//sá»‘ sáº£n pháº©m hiá»ƒn thá»‹

	$imgExtent = 'jpg|gif|png|jpeg';//file hÃ¬nh Ä‘Æ°á»£c phÃ©p upload

	$mediaExtent ='swf|flv';//file media Ä‘Æ°á»£c phÃ©p upload

	$imgSize = '512000';//dung lÆ°á»£ng hÃ¬nh cho phÃ©p

	$mediaSize = '1024000';//dung lÆ°á»£ng media cho phÃ©p

	$ImgW	= 140;//resize áº£nh theo width

	$upMedia = 2;

	$upImg = 5;

	$linkS ='/';

	//===========================================================
	//Khiem
	//dinh nghia servername cho viec chinh sua thong tin don hang
	//, account google dung chung thuc mail khi send
	$server_name = 'http://nanapet.com/';
	$SMTP_Host = "ssl://fpt02.bin.com.vn";
	$SMTP_Port = 465;
	$SMTP_account = "info@nanapet.com";
	$SMTP_password = "123456";
	
	if($_SERVER['SERVER_NAME']=='192.168.4.39')
	{
		$server_name = 'http://nanapet.com/';
	}
	//===========================================================
	if($_SERVER['SERVER_NAME']=='localhost' or $_SERVER['SERVER_NAME']=='192.168.4.39')
	{
		$linkS ='/nanapet/';
	}

?>