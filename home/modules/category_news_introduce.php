<?php
    $news_key = input($_GET['news_key']);
    if ($news_key == '') {
        $news_key = $News->getFistRowsOfIntroduceByCategory();
    }

    $category = $xtemplate->load('category_news_introduce');
    $Cate = new Category();
    $categories = $Cate->getCategoriesParent_introduce();
    $n = count($categories);
    $tpl = '';
    $block = $xtemplate->get_block_from_str($category, 'CATEGORY');
    for ($i = 0; $i < $n; ++$i) {
        if ($i != 0) {
            $tpl .= "<hr style = 'margin-top: 10px;"
                    . "margin-bottom: 10px;"
                    . "border-width:1px;"
                    . "border-color:#79afc4; width:95%; float:left'>";
        }

        // Check the selected category
        $id_danhmuc_main = $categories[$i]['categoriesintroduce_id'];
        if ($news_key == $categories[$i]['categoriesintroduce_key']) {
            $id_danhmuc_main = "selected";
            $title_page = $categories[$i]['title_category'];
            $description = $categories[$i]['descriptionintroduce'];
            $keywords = $categories[$i]['keywordsintroduce'];
        }
        $tpl.= $xtemplate->assign_vars($block, array(
            'category_name' => $categories[$i]['categoriesintroduce_name'],
            'category_key' => $categories[$i]['categoriesintroduce_key'],
            'id_danhmuc_main' => $id_danhmuc_main
        ));
    }

    $category = $xtemplate->assign_blocks_content($category, array(
        'CATEGORY' => $tpl
    ));
?>