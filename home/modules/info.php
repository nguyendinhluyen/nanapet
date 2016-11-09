<?php
    $info = '';
    $news = new News();

    // Lay thong tin bai viet theo loai danh muc thu vien
    if (!empty($_GET['choose'])) {
        if (input($_GET['choose']) === "bai-viet-cho") {
            $libaries = $news->getNewsListAllLibaryDog();
        } else if (input($_GET['choose']) === "bai-viet-meo") {
            $libaries = $news->getNewsListAllLibaryCat();
        } else {
            $libaries = $news->getNewsListAllLibaryMainKeyWord($_GET['choose']);
        }
    } else if (!empty($_GET['choose2'])) {
        $libaries = $news->getNewsListAllLibaryKeyWord($_GET['choose2']);
    } else {
        $libaries = $news->getNewsListAllLibary();
    }
    
    $info = $xtemplate->load('libary_bootstrap');
    $total = count($libaries);

    // Navigation
    $pp = 10;
    $p_now = intval($_GET ['page']);
    $numofpages = $total / $pp;
    $page = 0;

    if ($p_now <= 0) {
        $page = 1;
    } else {
        if ($p_now <= ceil($numofpages)) {
            $page = $p_now;
        } else {
            $page = 1;
        }
    }
    $limitvalue = $page * $pp - ($pp);
    // End navigation

    $begin = $limitvalue;
    if ($numofpages != $p_now) {
        $end = $begin + $pp;
    } else {
        $end = $total;
    }
    $block = $xtemplate->get_block_from_str($info, 'PROMOTION');
    $tpl = '';
    $n = count($libaries);
    for ($i = $begin; $i < $end; $i++) {
        if ($libaries[$i]['news_name'] != "") {
            $info_author = $news->getInfoAuthor($libaries[$i]['translator']);
            $idadmin = $info_author["idadmin_control_user"];
            $date_array = split('-', $libaries[$i]['date_publisher']);
            $tpl.= $xtemplate->assign_vars($block, array(
                'news_name' => $libaries[$i]['news_name'],
                'news_short' => $libaries[$i]['news_shortcontent'],
                'news_key' => $libaries[$i]['news_key'],
                'news_image' => $libaries[$i]['news_image'],
                'date' => $date_array[2],
                'month' => $date_array[1],
                'year' => $date_array[0],
                'person_up' => 'Tác giả :&nbsp; <a ref="nofollow" href="{linkS}cong-tac-vien/' . $idadmin . '.html/page=0">'
                . '<b style= "font-family:RobotoSlabRegular; text-transform: uppercase; color: #337ab7">'
                . $libaries[$i]['translator'] . '</a>&nbsp;&nbsp;|&nbsp;&nbsp;</b>',
            ));
        }
    }

    $breadcrumbs_path .= '<a href="{linkS}">NanaPet</a>';
    $breadcrumbs_path .= ' &raquo; ' . 'Đời sống Pets';
    if (!empty($category_selected)) {
        $breadcrumbs_path .= ' &raquo; ' . $category_selected;
        $tilte_page = $category_selected . " | NanaPet";
    } else {
        $tilte_page = 'Đời sống Pets' . " | NanaPet";
        $category_selected = "Đời sống Pets";
    }

    $info = $xtemplate->assign_blocks_content($info, array(
        'PROMOTION' => $tpl
    ));

    $info = $xtemplate->replace($info, array(
        'category' => $category_libary,
        'category_selected' => $category_selected
    ));

    if (!empty($_GET['choose'])) {
        if (input($_GET['choose']) == "bai-viet-cho") {
            $info = $xtemplate->replace($info, array(
                'page' => str_replace("page=", "trang-", 
                        pagination($linkS . "doi-song-pets/bai-viet-cho/", ceil($numofpages), $page)),
            ));
        } else if (input($_GET['choose']) == "bai-viet-meo") {
            $info = $xtemplate->replace($info, array(
                'page' => str_replace("page=", "trang-", 
                        pagination($linkS . "doi-song-pets/bai-viet-meo/", ceil($numofpages), $page)),
            ));
        } else {
            $info = $xtemplate->replace($info, array(
                'page' => str_replace("page=", "trang-", 
                        pagination($linkS . "doi-song-pets/" . $_GET['choose'] . '/', ceil($numofpages), $page)),
            ));
        }
    } else if (!empty($_GET['choose2'])) {
        $info = $xtemplate->replace($info, array(
            'page' => str_replace("page=", "trang-", 
                        pagination($linkS . "doi-song-pets/" . $_GET['choose1'] . '/'
                            . $_GET['choose2'] . '/', ceil($numofpages), $page)),
        ));
    } else {
        $info = $xtemplate->replace($info, array(
            'page' => str_replace("page=", "trang-", 
                    pagination($linkS . "doi-song-pets/", ceil($numofpages), $page)),
        ));
    }
    
    // Load relation read news
    $array_temp = explode(',', $promotionNews['upgrade_news_catalogue']);
    $relationNews = $news->getListNewsByCategory(41, 0, 5, "ASC", $news_key);
    $n = count($relationNews);
    $tpl = '';
    $block = $xtemplate->get_block_from_str($info, 'NEWSCATEGORY');
    for ($i = 0; $i < $n; ++$i) {
        $tpl.= $xtemplate->assign_vars($block, array(
            'news_image' => $relationNews[$i]['news_image'],
            'news_name' => $relationNews[$i]['news_name'],
            'news_key' => $relationNews[$i]['news_key']
        ));
    }
    $info = $xtemplate->assign_blocks_content($info, array(
        'NEWSCATEGORY' => $tpl
    ));

    $content = $info;
?>