<?php        
    $news_key = input($_GET['news_key']);
    if($news_key == '') {
        $news_key = $News -> getFistRowsOfIntroduceByCategory();
    }
        
    $category = $xtemplate->load('category_news_introduce');
    $Cate = new Category();
    $categories = $Cate -> getCategoriesParent_introduce();
    $n = count($categories);
    $tpl = '';
    $block = $xtemplate->get_block_from_str($category,'CATEGORY');
    for($i = 0 ; $i < $n ; ++$i) {
        $categories_sub = $Cate -> getCategoriesSub_introduce($categories[$i]['categoriesintroduce_id']);
        $m = count($categories_sub);
        if($i !=0 ) {
            $tpl .= "<hr style = 'margin-top: 10px;"
                                . "margin-bottom: 10px;"
                                . "border-width:1px;"                                
                                . "border-color:#79afc4; width:95%; float:left'>";
        }
		
        if($m > 0) {		            
            // Thu muc cha co duong link con dau tien
            // Check the selected category
            $id_danhmuc_main = $categories_sub[0]['categoriesintroduce_id'];
            if($news_key == $categories_sub[0]['categoriesintroduce_key']){
                $id_danhmuc_main = "selected";
            }
            $tpl.= $xtemplate->assign_vars($block,array(
                'category_name'     => $categories[$i]['categoriesintroduce_name'],
                'category_key'      => $categories_sub[0]['categoriesintroduce_key'],
                'id_danhmuc_main'   => $id_danhmuc_main
            ));
        }
        else {
            // Check the selected category
            $id_danhmuc_main = $categories[$i]['categoriesintroduce_id'];
            if($news_key == $categories[$i]['categoriesintroduce_key']){
                $id_danhmuc_main = "selected";
            }
            $tpl.= $xtemplate->assign_vars($block,array(
                'category_name'     => $categories[$i]['categoriesintroduce_name'],
                'category_key'      => $categories[$i]['categoriesintroduce_key'],
                'id_danhmuc_main'   => $id_danhmuc_main    
            ));
        }

        $block_sub = $xtemplate -> get_block_from_str($category,'SUBCATEGORY');		
        $tpl2 = '';

        if($m > 0) {									
            for($j = 0 ; $j < $m ; ++$j) {
                //Check the selected category
                //$id_danhmuc_sub = $categories_sub[$j]['categoriesintroduce_key'];
                //$img_danhmuc_sub_display = "display:none";
                //if( $news_key === $categories_sub[$j]['categoriesintroduce_key']) {
                //    $id_danhmuc_sub = "selected";
                //    $img_danhmuc_sub_display = " display:inline; margin-left: -15px";
                //}
                
                $tpl2.= $xtemplate->assign_vars($block_sub,array(
                    'category_sub_name' 	=> $categories_sub[$j]['categoriesintroduce_name'],
                    'category_sub_key'          => $categories_sub[$j]['categoriesintroduce_key'],
                    'category_key'              => $categories[$i]['categoriesintroduce_key'],
                    //'id_danhmuc_sub'            =>  $id_danhmuc_sub,
                    //'img_danhmuc_sub_display'   =>  $img_danhmuc_sub_display
                ));
            }
        }
			
        $tpl = $xtemplate->assign_blocks_content($tpl,array(            
            'SUBCATEGORY'   =>  $tpl2
        ));
    }
	
    $category = $xtemplate -> assign_blocks_content($category,array(
        'CATEGORY'  =>  $tpl
    ));	
?>