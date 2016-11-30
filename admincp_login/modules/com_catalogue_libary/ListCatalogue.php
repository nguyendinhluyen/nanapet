<?php
    $title = $arr_lang['cat_manage'];
    if (($_GET['action'] == 'del') && (isset($_GET['id']))) {
        include(_CLASS . 'cache.php');
        $cache = new cache();
        $cache->flush(_HOME . 'home/cache/');
        delete_cats_libary(intval($_GET['id']));
        header('location:./?show=catalogue_libary&p=' . intval($_GET['p'])
                . '&order=' . $_GET['order']);
    } else if (isset($_POST['btndel'])) {
        include(_CLASS . 'cache.php');
        $cache = new cache();
        $cache->flush(_HOME . 'home/cache/');
        $id = (count($_POST['chk']) > 0) ? implode($_POST['chk'], ',') : '';
        delete_cats_libary($id);
        if ($_GET['order'] != "") {
            header('location:./?show=catalogue_libary&order=' . $_GET['order'] . '&p=' . intval($_GET['p']));
        } else {
            header('location:./?show=catalogue_libary&p=' . intval($_GET['p']));
        }
    } else if (isset($_POST['btnstatus'])) {
        include(_CLASS . 'cache.php');
        $cache = new cache();
        $cache->flush(_HOME . 'home/cache/');
        $id = (count($_POST['chk']) > 0) ? implode($_POST['chk'], ',') : '';
        Set_status_catalogue_libary($id);
        if ($_GET['order'] != "") {
            header('location:./?show=catalogue_libary&order=' . $_GET['order'] . '&p=' . intval($_GET['p']));
        } else {
            header('location:./?show=catalogue_libary&p=' . intval($_GET['p']));
        }
    }

    $xtemplate->path = 'com_catalogue_libary/';
    $content = $xtemplate->load('ListCatalogue');
    $code_cats = $xtemplate->get_block_from_str($content, "CATALOGUE");

    // Navigation
    $p_now = intval($_GET ['p']);
    $mysql->setQuery("SELECT categorieslibary_id
                    FROM categorieslibary 
                    WHERE languagelibary ='" . $_SESSION['lag'] . "'");
    $mysql->query();
    $total = $mysql->getNumRows();
    $numofpages = $total / $pp;
    if ($p_now <= 0) {
        $page = 1;
    } else {
        if ($p_now <= ceil($numofpages)) {
            $page = $p_now;
        }
        else {
            $page = 1;
        }
    }
    $limitvalue = $page * $pp - ($pp);
    // End navigation
    

    switch ($_GET['order']) {
        case 'name':
            $orderby = ' categorieslibary_name asc';
            break;

        case 'name_desc':
            $orderby = ' categorieslibary_name desc';
            break;

        case 'catalogue_libary':
            $orderby = ' parentlibary_id asc';
            break;

        case 'catalogue_desc':
            $orderby = ' parentlibary_id desc';
            break;

        case 'status':
            $orderby = ' categorieslibary_status asc';
            break;

        case 'dateadd':
            $orderby = ' datelibary_added asc';
            break;

        case 'dateadd_desc':
            $orderby = ' datelibary_added desc';
            break;

        case 'datemodifiled':
            $orderby = ' modifiedlibary_date asc';
            break;

        case 'datemodifiled_desc':
            $orderby = ' modifiedlibary_date desc';
            break;

        default:
            $orderby = ' datelibary_added desc';
            break;
    }

    $sql = "SELECT * 
            FROM categorieslibary 
            WHERE languagelibary ='" . $_SESSION['lag'] 
            . "' order by " . $orderby 
            . " limit " . $limitvalue . "," . $pp;
    $mysql->setQuery($sql);
    $row = $mysql->loadAllRow();
    $n = count($row);
    $temp = '';

    for ($i = 0; $i < $n; ++$i) {
        $id = $row[$i]['categorieslibary_id'];
        $parent_name = get_parent_name_libary($row[$i]['parentlibary_id']);
        $makeEditable.="makeEditable('" . $id . "',1);";
        $makeEditable.="makeEditable('" . $id . "_status',3);";
        $makeEditable.="makeEditable('" . $id . "_order',2);";
        $makeEditable.="makeEditable('" . $id . "_parent_name',4);";
        $color = ($i % 2 == 0) ? '#d5d5d5' : '#e5e5e5';

        $temp.= $xtemplate->assign_vars($code_cats, array(
            'id' => $id,
            'cat_name' => output($row[$i]['categorieslibary_name']),
            'parent_name' => ($parent_name == '0') ? $arr_lang['root_cats'] : $parent_name,
            'order' => $row[$i]['sortlibary_order'],
            'status' => ($row[$i]['categorieslibary_status'] == '1') ? $arr_lang['show'] : '<i>' . $arr_lang['hidden'] . '</i>',
            'date_create' => date('G:i d/m/Y', $row[$i]['datelibary_added']),
            'date_modifiled' => ($row[$i]['modifiedlibary_date'] == '0') ? '0' : date('G:i d/m/Y', $row[$i]['modifiedlibary_date']),
            'color' => $color));
    }

    if ($_GET['order'] != "") {
        $type_of_order = '&order=' . $_GET['order'];
    } else {
        $type_of_order = '';
    }

    $content = $xtemplate->assign_blocks_content($content, array("CATALOGUE" => $temp));
    $content = $xtemplate->replace($content, array(
        'lag_cat_manager' => $arr_lang['cat_manage'],
        'lag_page' => $arr_lang['page'],
        'nav_page' => page_div("./?show=catalogue_libary&p=%d_pg&order=" 
                . $_GET['order'], "10", ceil($numofpages), $page),
        'p' => ($_GET['p'] == '') ? '1' : intval($_GET['p']),
        'orderby' => $_GET['order'],
        'lag_delete' => $arr_lang['del'],
        'lag_edit' => $arr_lang['edit'],
        'lag_cats_name' => $arr_lang['cat_name'],
        'makeEditable' => $makeEditable,
        'lag_status' => $arr_lang['status'],
        'lag_date_create' => $arr_lang['date_added'],
        'lag_date_modifiled' => $arr_lang['date_modifiled'],
        'delete_check' => $arr_lang['del_check'],
        'add_cat' => $arr_lang['add_cat'],
        'lag_order' => $arr_lang['order'],
        'del_confirm' => $arr_lang['del_confirm'],
        'viewastree' => $arr_lang['viewastree'],
        'ofcatalogue' => $arr_lang['ofcatalogue'],
        'shi' => $arr_lang['shi'],
        'type_of_order' => $type_of_order,
        'page' => $page,
    ));

    $script = $xtemplate->get_block_from_str($content, "SCRIPT");
    $content = $xtemplate->assign_blocks_content($content, array("SCRIPT" => ''));
?>