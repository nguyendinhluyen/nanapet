<div class="selected_category" id="selected_category" 
     data-toggle="collapse">
    <img src="{linkS}layout/bootstrap/images/icon_category_mobile.png"
        data-toggle="collapse"
        href="#collapsecategoryparent"
        aria-expanded="false"
        aria-controls="collapsecategoryparent"
        width="30px"
        height="30px"
        style="margin-right:10px; cursor: pointer;">
    <span class="selected_category_text">{selected_category}</span>
</div>
<div class="danhmuc collapse" id="collapsecategoryparent">
    <!--BEGINLIST_CATEGORY-->
    <!--BEGIN_CATEGORY-->
    <ul class = "main_category_mobile">
        <li class="danhmuc_main_mobile"
            data-toggle="collapse"
            href="#collapsecategory_{id_danhmuc_main}"
            aria-expanded="false"
            aria-controls="collapsecategory_{id_danhmuc_main}">
            <div href="{linkS}{category_key}/" 
                 style="outline:none; cursor: pointer"
                 class="{id_danhmuc_main}">{category_name} &nbsp<span class="caret"></span></div>
        </li>
        <ul class="main_sub_mobile collapse" id="collapsecategory_{id_danhmuc_main}">
            <!--BEGINLIST_SUBCATEGORY-->
            <!--BEGIN_SUBCATEGORY-->
            <li class="danhmuc_sub_mobile">
                <a href="{linkS}{category_sub_key}/" style = "outline:none;" 
                   class="{id_danhmuc_sub}">{category_sub_name}</a>
            </li>
            <!--END_SUBCATEGORY-->
            <!--ENDLIST_SUBCATEGORY-->
        </ul>
    </ul>
    <!--END_CATEGORY-->
    <!--ENDLIST_CATEGORY-->
</div>