<!--Begin Mask Phone-->
<script type="text/javascript" src="{linkS}layout/js/jquery.maskedinput.min.js"></script>
<script type="text/javascript">
    jQuery(function($) {
        $('#text_mobile_receiver').mask('(999) 999 - 9999?9',{placeholder:" "});
        $('#text_mobile_buy').mask('(999) 999 - 9999?9',{placeholder:" "});
    });
</script>
<!--End Mask Phone-->
<link href="{linkS}layout/bootstrap/css/jquery/jquery-ui.css" rel="stylesheet">
<script src="{linkS}layout/bootstrap/css/jquery/jquery.js"></script>
<script src="{linkS}layout/bootstrap/css/jquery/jquery-ui.js"></script>
<script>
    $(function() {
        var availableChungCuTags = [
            '194 Golden Building',
            'A&B Tower',
            'Abacus Tower',
            'Alpha Tower',
            'An Bình',
            'An Hạ Residence',
            'An Hòa 1',
            'An Hòa 2',
            'An Hòa 3',
            'An Hòa 4',
            'An Hòa 5',
            'An Hội - Gò Vấp',
            'An Khang',
            'An Lạc Plaza',
            'An Lộc 1 - Gò Vấp',
            'An Lộc 2 - Quận 2',
            'An Phú - An Khánh',
            'An Phú Apartment 2',
            'Ấn Quang',
            'An Sương',
            'An Thịnh',
            'An Viên',
            'Anh Tuan Apartment',
            'Âu Cơ Tower',
            'Avalon Saigon',
            'Babylon Residence',
            'Bắc Bình',
            'Bắc Lương Bèo',
            'Bắc Rạch Chiếc',
            'Bàu Cát 1',
            'Bàu Cát 2',
            'BCCI',
            'Beautiful Saigon 1',
            'Beautiful Saigon 2',
            'Belleza',
            'Ben Thanh Tower',
            'Bình Khán An Phú',
            'Bình Khánh',
            'Bình Minh',
            'Bình Phú 1',
            'Bình Tân',
            'Bình Triệu Riverside',
            'Bitexco Financial Tower',
            'Blooming Park',
            'Blue Sapphire Bình Phú',
            'BMC Bến Chương Dương',
            'Botanic Towers',
            'Broadway Office Park',
            'Bưu Điện 270B',
            'C&T An Phúc',
            'Cảnh Viên 2',
            'Cantavil Hoàn Cầu',
            'Capital Place',
            'Carina Plaza',
            'Cây Mai',
            'Centec Tower',
            'Central Garden',
            'Central Garden 2',
            'Centrepoint',
            'Chánh Hưng',
            'Cheery 2 - Quận 12',
            'Cheery 3 - Hóc Môn',
            'Cheery 4 - Thủ Đức',
            'Cherry 1 - Quận 2',
            'Chợ Quán',
            'Ji',
            'Citilight Tower',
            'City Garden',
            'City Gate Towers',
            'Cô Giang',
            'Công Nghệ Cao Tinh Hoa',
            'Conic Đình Khiêm',
            'Conic Đông Nam Á',
            'Conic Garden',
            'Conic Gateway',
            'Conic Paradise',
            'Conic Riverside',
            'Cotec Building',
            'Crescent Mall',
            'CT Plaza',
            'Cử Nhân',
            'Cửu Long',
            'D5',
            'Da Sà',
            'Đại Thế Giới',
            'Đào Duy Từ',
            'Đào Huy Từ',
            'Đào Tấn',
            'Đất Phương Nam',
            'Đất Việt',
            'Diamond Plaza',
            'Điền Phúc Thành',
            'Dolphin Plaza',
            'Dong Han Building',
            'DTS Tower',
            'EFG Sư Vạn Hạnh Quận 10',
            'E-Home 1 Quận 9',
            'E-Home 2 Đông Saigon',
            'E-Home 3 Tây Saigon',
            'E-Home 4 Thủ Đức',
            'Elys Garden',
            'Emerald Apartment',
            'Empire Tower ',
            'Era Town',
            'Estar',
            'Etown 1',
            'Etown 2',
            'Etown 3',
            'Fideco Tower',
            'Fortuna',
            'Garden Court 1',
            'Garden Court 2',
            'Gelexim',
            'Gemadept',
            'Gia Phú Khang',
            'Gia Tue Central Square',
            'Giai Việt',
            'Giáng Hương',
            'Gò Sao',
            'Gold Hill',
            'Golden Tower',
            'Green Building',
            'Green Hills',
            'Green View',
            'H2',
            'Hà Kiều',
            'HAGL1',
            'HAGL2',
            'HAGL3',
            'Hai Bà Trưng',
            'Happy Plaza',
            'Havana',
            'HBT Court',
            'HBT Tower',
            'HCM Tower',
            'Hiệp Bình Chánh',
            'Him Lam Nam Khánh',
            'Him Lam Riverside',
            'Him Lam Trung Sơn',
            'HMTC',
            'Hòa Bình',
            'Hòa Bình Tower',
            'Hoàng Anh',
            'Hòang Anh River View',
            'Hoàng Anh Safomec',
            'Hoàng Kim',
            'Hóc Môn Plaza',
            'Hồng Lĩnh',
            'Hồng Tân',
            'Horizon Building',
            'HPL',
            'Hưng Thuận',
            'Hùng Việt',
            'Hùng Vương Plaza',
            'Impria An Phú',
            'Incomex TP.HCM',
            'Indochina Park Tower',
            'Infinity Management',
            'International Plaza',
            'Internet New City',
            'Intresco',
            'Investco Babylon',
            'IPC Tower ',
            'K26',
            'K300',
            'Kenton Residence',
            'Khang Gia',
            'Khang Gia - Gò Vấp',
            'Khang Thông',
            'Khánh Hội',
            'Khánh Hội 1',
            'Khánh Hôi 2',
            'Khánh Hội 3',
            'Khiêm Khải',
            'Kim Hồng',
            'Kumho Asiana Plaza',
            'Ký Con',
            'Lakai',
            'Lan Phương MHBR Tower',
            'Lê Thành',
            'Lilama SHB Building',
            'Long Bình',
            'Long Phụng',
            'Lori Plaza',
            'Lotte Mart',
            'Lotte Mart Nam Saigion',
            'Lotte Mart Phú Thọ',
            'Lotus Building',
            'LTT Court',
            'Lữ Gia',
            'Lữ Gia Plaza',
            'Lucky Apartment',
            'Lucky Plaza',
            'Lương Định Của',
            'Luxury Apartment',
            'Lý Chiêu Hoàng',
            'Lý Thường Kiệt',
            'Maritime Bank Tower',
            'May Apartment',
            'MB Sunny Tower',
            'Melody Tower',
            'Melody Tower 2',
            'Metropolitan - HSBC',
            'Miếu Nổi',
            'Minh Thành',
            'Morning Star Plaza',
            'Mỹ Đức',
            'Mỹ Khang',
            'Mỹ Long',
            'Mỹ Phát',
            'Mỹ Phú Riverpark',
            'Mỹ Phước',
            'Mỹ Vinh',
            'Nam Giao Building 1',
            'Nam Khang',
            'New Generation',
            'New Pearl',
            'New Saigon',
            'Newtown Apartment',
            'Ngô Gia Tự',
            'Ngô Quyền',
            'Ngọc Lan - Phú Thuận',
            'Ngọc Phương Nam',
            'Nguyễn Chí Thanh',
            'Nguyễn Cư Trinh Center',
            'Nguyễn Kim',
            'Nguyễn Ngọc Phương',
            'Nguyễn Phúc Nguyên',
            'Nguyễn Thị Nghĩa',
            'Nguyễn Văn Cừ',
            'Nguyễn Văn Lượng',
            'Nhất Lan',
            'Nhơn Đức Nhà Bè',
            'Noble Apartment',
            'NVN Court',
            'Opera View',
            'Orient Apartment',
            'Parkson CT Plaza',
            'Parkson Flemington',
            'Parkson Hùng Vương',
            'Parkson Lê Thánh Tôn',
            'Parkson Paragon',
            'Pasteur Court',
            'Phạm Viết Chánh',
            'Phan Văn Trị',
            'Phố Đông Hoa Sen',
            'Phú Đạt',
            'Phú Gia Hưng',
            'Phú Giang',
            'Phú Hoàng Anh',
            'Phú Lợi',
            'Phú Lợi 1',
            'Phú Mỹ',
            'Phú Mỹ Thuận',
            'Phú Thọ',
            'Phú Vinh',
            'Phúc Thịnh',
            'Phúc Yên',
            'Phước Hưng',
            'Phước Long A',
            'Pico Plaza',
            'PNT Court',
            'PNTechcons',
            'Preche Thảo Điền',
            'QC Office Building',
            'Quang Thái',
            'Quốc Cường Gia Lai 1',
            'Res 3',
            'Resco',
            'Resco Bến Ba Đình',
            'Resco Tô Hiến Thành',
            'Richard Emarald',
            'River Garden Executive Residences',
            'Riverpark Residence',
            'Riverside Garden',
            'Riverside Linh Đông',
            'Riverside Residence',
            'Riverview',
            'Rolanno',
            'Royal',
            'Royal Tower',
            'Ruby 1 - Saigon Pearl 1',
            'Ruby 2 - Saigon Pearl 1',
            'Ruby Garden',
            'Sacombank',
            'Saigon Airport Plaza',
            'Saigon Center',
            'Saigon ICT Tower',
            'Saigon M&C Tower',
            'Saigon Pavillon',
            'Saigon Royal',
            'Saigon Times Square',
            'Saigon Tower',
            'Saigon Trade Center',
            'Sailing Tower',
            'Sao Mai',
            'Sapphire 1 - Saigon Pearl 3',
            'Sapphire 2 - Saigon Pearl 3',
            'Satra Citiland Plaza',
            'Satra Eximland',
            'Screc Tower',
            'SETCO Tower',
            'Sherwood Residence',
            'Silver Sea Tower',
            'SK Telecom IT Center',
            'Sky Garden 1',
            'Sky Garden 2',
            'Sky Garden3',
            'SMS Tower',
            'Somerset Chancellor',
            'Sơn Kỳ',
            'Sông Đà Riverside',
            'Sông Đà Tower',
            'Spring Court',
            'Star Hill',
            'Sư Vạn Hạnh Quận 5',
            'Sunny Villa',
            'Sunrise City',
            'Sunset Sanato',
            'Sunview 1',
            'Sunview 2',
            'Sunview 3',
            'Sunwah Tower',
            'Suối Sơn',
            'Taka Plaza',
            'Tam Bình',
            'Tản Đà',
            'Tân Mỹ',
            'Tân Phước',
            'Tân Quy',
            'Tân Sơn Nhì',
            'Tân Thạnh',
            'Tanimex',
            'Tanni Office',
            'TDH Hiệp Phú',
            'TDH Trường Thọ',
            'Tecco Tower',
            'Tenimex',
            'Terra Rosa',
            'Thái An',
            'Thái Sơn Building',
            'Thăng Long Building',
            'Thanh Dung Tower',
            'Thanh Nhựt',
            'Thanh Niên',
            'Thanh Niên Apartment',
            'Thành Thái',
            'THD Phước Long',
            'The Crescent',
            'The Estella',
            'The Everrich 1 - Quận 11',
            'The Everrich 2 - Quận 7',
            'The Grand View',
            'The Harmona Apartment',
            'The Manor 1',
            'The Manor 2',
            'The Mansion',
            'The Montana',
            'The Panorama',
            'The Rubyland',
            'The Splendor',
            'Thiên Nam Apartment',
            'Thiên Quý',
            'Thiên Sơn Plaza',
            'Thịnh Vượng',
            'Thọ Nam Sang',
            'Thủ Thiêm Star',
            'Thuận Kiều Plaza 1',
            'Thuận Kiều Plaza 2',
            'Thuận Kiều Plaza 3',
            'TNA Building',
            'Tôn Thất Thuyết',
            'Topaz 1 - Saigon Pearl 2',
            'Topaz 2 - Saigon Pearl 2',
            'Trần Cao Vân',
            'Trần Quang Diệu',
            'Trần Quốc Thảo',
            'Trần Văn Kiểu',
            'Trung Tâm Phần Mềm Thủ Thiêm',
            'Trương Định',
            'Tuệ Tĩnh',
            'Valentina Court',
            'Vạn Đô',
            'Vạn Hưng Phát',
            'Văn Phú Victoria',
            'Veronica',
            'Vietcombank - Bonday Bến Thành',
            'Vinaconex Thảo Điền',
            'Vincom Center A',
            'Vincom Center B',
            'Vĩnh Hội',
            'Vĩnh Phước',
            'Vĩnh Tân',
            'Vĩnh Tường',
            'VNR Building',
            'Waseco',
            'Waterfront Residences',
            'Windsor Plaza',
            'Wonder Town',
            'Xi Riverview Palace',
            'Zen Plaza'
        ];
        $( "#text_edit_number_address_Chung_Cu" ).autocomplete({
            source: availableChungCuTags
        });
        $( "#text_edit_number_address_Chung_Cu_Receiver" ).autocomplete({
            source: availableChungCuTags
        });
    });
</script>
<script>
    $(function() {
        var availableTags = [
            "Phường 1",
            "Phường 2",
            "Phường 3",
            "Phường 4",
            "Phường 5",
            "Phường 6",
            "Phường 7",
            "Phường 8",
            "Phường 9",
            "Phường 10",
            "Phường 11",
            "Phường 12",
            "Phường 13",
            "Phường 14",
            "Phường 15",
            "Phường 16",
            "Phường 17",
            "Phường 18",
            "Phường 19",
            "Phường 20",
            "Phường 21",
            "Phường 22",
            "Phường 23",
            "Phường 24",
            "Phường 25",
            "Phường 26",
            "Phường 27",
            "Phường 28",
            "Phường Bến Nghé",
            "Phường Bến Thành",
            "Phường Cô Giang",
            "Phường Cầu Kho",
            "Phường Cầu Ông Lãnh",
            "Phường Đa Kao",
            "Phường Nguyễn Thái Bình",
            "Phường Nguyễn Cư Trinh",
            "Phường Phạm Ngũ Lão",
            "Phường Tân Định",
            "Phường An Khánh",
            "Phường An Lợi Đông",
            "Phường An Phú",
            "Phường Bình An",
            "Phường Bình Khánh",
            "Phường Bình Trưng Đông",
            "Phường Bình Trưng Tây",
            "Phường Cát Lái",
            "Phường Thạnh Mỹ Lợi",
            "Phường Thảo Điền",
            "Phường Thủ Thiêm",
            "Phường Bình Thuận",
            "Phường Phú Mỹ",
            "Phường Phú Thuận",
            "Phường Tân Hưng",
            "Phường Tân Kiểng",
            "Phường Tân Phong",
            "Phường Tân Phú",
            "Phường Tân Quy",
            "Phường Tân Thuận Đông",
            "Phường Tân Thuận Tây",
            "Phường Phước Long A",
            "Phường Phước Long B",
            "Phường Tăng Nhơn Phú A",
            "Phường Tăng Nhơn Phú B",
            "Phường Long Trường",
            "Phường Trường Thạnh",
            "Phường Phước Bình",
            "Phường Tân Phú",
            "Phường Hiệp Phú",
            "Phường Long Thạnh Mỹ",
            "Phường Long Bình",
            "Phường Long Phước",
            "Phường Phú Hữu",
            "Phường Thạnh Xuân",
            "Phường Hiệp Thành",
            "Phường Thới An",
            "Phường Thạnh Lộc",
            "Phường Tân Chánh Hiệp",
            "Phường Tân Thới Hiệp",
            "Phường An Phú Đông",
            "Phường Trung Mỹ Tây",
            "Phường Tân Thới Nhất",
            "Phường Đông Hưng Thuận",
            "Phường Tân Hưng Thuận",
            "Phường Hiệp Bình Chánh",
            "Phường Hiệp Bình Phước",
            "Phường Tam Phú",
            "Phường Tam Bình",
            "Phường Linh Chiểu",
            "Phường Linh Ðông",
            "Phường Linh Tây",
            "Phường LinhXuân",
            "Phường Linh Trung",
            "Phường Bình Thọ",
            "Phường Bình Chiểu",
            "Phường Trường Thọ",
            "Phường Tân Sơn Nhì",
            "Phường Tây Thạnh",
            "Phường Sơn Kỳ",
            "Phường Tân Quý",
            "Phường Tân Thành",
            "Phường Phú Thọ Hòa",
            "Phường Phú Thạnh",
            "Phường Phú Trung",
            "Phường Hòa Thạnh",
            "Phường Hiệp Tân",
            "Phường Tân Thới Hòa",
            "Phường Bình Hưng Hoà",
            "Phường Bình Hưng Hoà A",
            "Phường Bình Hưng Hoà B",
            "Phường Bình Trị Đông",
            "Phường Bình Trị Đông A",
            "Phường Bình Trị Đông B",
            "Phường Tân Tạo",
            "Phường Tân Tạo A",
            "Phường An Lạc",
            "Phường An Lạc A",
            "Thị Trấn Tân Túc",
            "Xã An Phú Tây",
            "Xã Bình Chánh",
            "Xã Bình Hưng",
            "Xã Bình Lợi",
            "Xã Đa Phước",
            "Xã Hưng Long",
            "Xã Lê Minh Xuân",
            "Xã Phạm Văn Hai",
            "Xã Phong Phú",
            "Xã Quy Đức",
            "Xã Tân Kiên",
            "Xã Tân Nhựt",
            "Xã Tân Quý Tây",
            "Xã Vĩnh Lộc A",
            "Xã Vĩnh Lộc B",
            "Thị Trấn Cần Thạnh",
            "Xã Bình Khánh",
            "Xã An Thới Đông",
            "Xã Tam Thôn Hiệp",
            "Xã Thạnh An",
            "Xã Lý Nhơn",
            "Xã Long Hoà",
            "Thị Trấn Củ Chi",
            "Xã Phú Hòa Đông",
            "Xã Tân Thạnh Đông",
            "Xã Tân Thạnh Tây",
            "Xã Tân An Hội",
            "Xã Tân Thông Hội",
            "Xã Trung An",
            "Xã Phước Vĩnh An",
            "Xã Hòa Phú",
            "Xã Thái Mỹ",
            "Xã Phước Thạnh",
            "Xã An Phú",
            "Xã Trung Lập Thượng",
            "Xã Nhuận Đức",
            "Xã Phạm Văn Cội",
            "Xã Bình Mỹ",
            "Xã Phước Hiệp",
            "Xã Trung Lập Hạ",
            "Xã Tân Phú Trung",
            "Xã Phú Mỹ Hưng",
            "Xã An Nhơn Tây",
            "Thị Trấn Hóc Môn",
            "Xã Nhị Bình",
            "Xã Xuân Thới Đông",
            "Xã Xuân Thới Thượng",
            "Xã Xuân Thới Sơn",
            "Xã Bà Điểm",
            "Xã Đông Thạnh",
            "Xã Tân Hiệp",
            "Xã Thới Tam Thôn",
            "Xã Trung Chánh",
            "Xã Tân Xuân",
            "Xã Tân Thới Nhì",
            "Thị Trấn Nhà Bè",
            "Xã Phú Xuân",
            "Xã Long Thới",
            "Xã Nhơn Đức",
            "Xã Phước Kiển",
            "Xã Hiệp Phước",
            "Xã Phước Lộc"
        ];
        $( "#text_edit_number_ward" ).autocomplete({
            source: availableTags
        });
	$( "#text_edit_number_ward_receiver" ).autocomplete({
            source: availableTags
        });
    });
</script>
<script>
    $(function() {
        var availableTags_Street = [
            "Alexandre De Rhodes",
            "An Bình",
            "An Dương Vương",
            "An Điềm",
            "An Hạ",
            "An Hội",
            "An Nhơn",
            "An Phú",
            "An Phú Tây",
            "An Thới Đông",
            "Âu Cơ",
            "Âu Dương Lân",
            "Ba Đình",
            "Ba Gia",
            "3 Tháng 2",
            "Ba Tơ",
            "Ba Vân",
            "Ba Vì",
            "Bà Hạt",
            "Bà Hom",
            "Bà Huyện Thanh Quan",
            "Bà Ký",
            "Bà Lài",
            "Bà Lê Chân",
            "Bà Triệu",
            "Bác Ái",
            "Bạch Đằng",
            "Bạch Mã",
            "Bạch Vân",
            "Bãi Sậy",
            "Bàn Cờ",
            "Bành Văn Trân",
            "Bàu Trâm",
            "Bàu Tre",
            "Bắc Hải",
            "Bế Văn Cấm",
            "Bế Văn Đàn",
            "Bến Cát",
            "Bến Cỏ",
            "Bến Đình",
            "Bến Súc",
            "Bến Than",
            "Bình Đông",
            "Bình Đức",
            "Bình Hưng",
            "Bình Long",
            "Bình Lợi",
            "Bình Mỹ",
            "Bình Quới",
            "Bình Tây",
            "Bình Thới",
            "Bình Tiên",
            "Bình Trị Đông",
            "Bình Trưng",
            "Bình Trường",
            "Bông Sao",
            "Bông Văn Dĩa",
            "Bùi Chi Nhuận",
            "Bùi Công Trừng",
            "Bùi Dương Lịch",
            "Bùi Đình Túy",
            "Bùi Huy Bích",
            "Bùi Hữu Diên",
            "Bùi Hữu Nghĩa",
            "Bùi Lâm",
            "Bùi Minh Trực",
            "Bùi Thanh Khiết",
            "Bùi Thị Điệt",
            "Bùi Thị He",
            "Bùi Thị Xuân",
            "Bùi Tư Đoàn",
            "Bùi Văn Ba",
            "Bùi Văn Ngữ",
            "Bùi Viện",
            "Bưng Sáu Xã",
            "Bửu Long",
            "Ca Văn Thỉnh",
            "Cá Lăng",
            "Cách Mạng Tháng Tám",
            "Calmette",
            "Cao Bá Nhạ",
            "Cao Bá Quát",
            "Cao Đạt",
            "Cao Lỗ",
            "Cao Thắng",
            "Cao Văn Lầu",
            "Cao Xuân Dục",
            "Cao Xuân Huy",
            "Cầm Bá Thước",
            "Cầu Đình",
            "Cây Trắc",
            "Chánh Hưng",
            "Châu Thới",
            "Châu Văn Liêm",
            "Châu Vĩnh Tế",
            "Chế Lan Viên",
            "Chiêu Anh Các",
            "Chu Mạnh Trinh",
            "Chu Thiên",
            "Chu Văn An",
            "Chử Đồng Tử",
            "Chương Dương",
            "Cô Bắc",
            "Cô Giang",
            "Công Chúa Ngọc Hân",
            "Cống Quỳnh",
            "Cộng Hòa",
            "Cù Chính Lan",
            "Cư Xá Đô Thành",
            "Cửu Long",
            "Dạ Nam",
            "Dã Tượng",
            "Dân Chủ",
            "Dân Tộc",
            "Dân Trí",
            "Diên Hồng",
            "Duy Tân",
            "Duyên Hải",
            "Dương Bá Cung",
            "Dương Bá Trạc",
            "Dương Bạch Mai",
            "Dương Đình Nghệ",
            "Dương Đức Hiền",
            "Dương Khuê",
            "Dương Quảng Hàm",
            "Dương Tử Giang",
            "Dương Văn Dương",
            "Dương Văn Hạnh",
            "Dương Vân Nga",
            "Đào Cam Mộc",
            "Đào Duy Anh",
            "Đào Duy Từ",
            "Đào Nguyên Phổ",
            "Đào Sư Tích",
            "Đào Tấn",
            "Đào Tông Nguyên",
            "Đào Trí",
            "Đào Trinh Nhất",
            "Đặng Chất",
            "Đặng Dung",
            "Đặng Lộ",
            "Đặng Minh Khiêm",
            "Đặng Nguyên Cẩn",
            "Đặng Tất",
            "Đặng Thai Mai",
            "Đặng Thái Cân",
            "Đặng Thị Nhu",
            "Đặng Trần Côn",
            "Đặng Văn Ngữ",
            "Đề Thám",
            "Điện Biên Phủ",
            "Đinh Bộ Lĩnh",
            "Đinh Công Tráng",
            "Đinh Điền",
            "Đinh Đức Thiện",
            "Đinh Hòa",
            "Đinh Lễ",
            "Đinh Liệt",
            "Đinh Tiên Hoàng",
            "Đình Phong Phú",
            "Đoàn Công Bửu",
            "Đoàn Giỏi",
            "Đoàn Nhữ Hài",
            "Đoàn Phú Tứ",
            "Đoàn Thị Điểm",
            "Đoàn Văn Bơ",
            "Đô Đốc Chấn",
            "Đô Đốc Long",
            "Đô Đốc Lộc",
            "Đô Đốc Thủ",
            "Đồ Sơn",
            "Đỗ Công Tường",
            "Đỗ Đức Dục",
            "Đỗ Năng Tế",
            "Đỗ Ngọc Thạnh",
            "Đỗ Nhuận",
            "Đỗ Quang Đẩu",
            "Đỗ Tấn Phong",
            "Đỗ Văn Sữu",
            "Đỗ Xuân Hợp",
            "Đông Du",
            "Đông Hồ",
            "Đông Sơn",
            "Đồng Đen",
            "Đồng Khởi",
            "Đồng Nai",
            "Đống Đa",
            "Einstein",
            "Gia Phú",
            "Giải Phóng",
            "Giang Cự Vọng",
            "Giồng Ao",
            "Giồng Cát",
            "Gò Cẩm Đệm",
            "Gò Công",
            "Gò Dưa",
            "Gò Đình",
            "Gót Chàng",
            "Hà Bà Tường",
            "Hà Huy Giáp",
            "Hà Tôn Quyền",
            "Hai Bà Trưng",
            "Hải Thượng Lãn Ông",
            "Hải Triều",
            "Hàm Nghi",
            "Hàm Tử",
            "Hàn Hải Nguyên",
            "Hàn Mặc Tử",
            "Hàn Thuyên",
            "Hạnh Thông",
            "Hậu Giang",
            "Hiền Vương",
            "Hiệp Bình",
            "Hòa Bình",
            "Hòa Hảo",
            "Hòa Hưng",
            "Hòa Mỹ",
            "Hoài Thanh",
            "Hoàng Bá Huân",
            "Hoàng Bật Đạt",
            "Hoàng Diệu",
            "Hoàng Dư Khương",
            "Hoàng Đạo Thúy",
            "Hoàng Đức Tương",
            "Hoàng Hoa Thám",
            "Hoàng Hữu Nam",
            "Hoàng Kế Viêm",
            "Hoàng Lệ Kha",
            "Hoàng Minh Giám",
            "Hoàng Ngọc Phách",
            "Hoàng Quốc Việt",
            "Hoàng Sa",
            "Hoàng Sĩ Khải",
            "Hoàng Tăng Bí",
            "Hoàng Thiều Hoa",
            "Hoàng Văn Thụ",
            "Hoàng Việt",
            "Hoàng Xuân Nhị",
            "Học Lạc",
            "Hồ Bá Kiện",
            "Hồ Biểu Chánh",
            "Hồ Đắc Di",
            "Hồ Hảo Hớn",
            "Hồ Học Lãm",
            "Hồ Huấn Nghiệp",
            "Hồ Ngọc Cẩn",
            "Hồ Tùng Mậu",
            "Hồ Văn Huê",
            "Hồ Xuân Hương",
            "Hồng Bàng",
            "Hồng Đức",
            "Hồng Hà",
            "Hồng Lĩnh",
            "Hồng Sến",
            "Hùng Vương",
            "Huyền Quang",
            "Huyền Trân Công Chúa",
            "Huyện Toại",
            "Huỳnh Bá Chánh",
            "Huỳnh Đình Hai",
            "Huỳnh Khương An",
            "Huỳnh Khương Ninh",
            "Huỳnh Mẫn Đạt",
            "Huỳnh Tấn Phát",
            "Huỳnh Thị Phụng",
            "Huỳnh Thiện Lộc",
            "Huỳnh Thúc Kháng",
            "Huỳnh Tịnh Của",
            "Huỳnh Văn Bánh",
            "Huỳnh Văn Chính",
            "Huỳnh Văn Nghệ",
            "Huỳnh Văn Trí",
            "Hưng Long",
            "Hưng Phú",
            "Hương Giang",
            "Kha Vạn Cân",
            "Khái Hưng",
            "Khánh Hội",
            "Khiếu Năng Tĩnh",
            "Khổng Tử",
            "Khuông Việt",
            "Kim Biên",
            "Kinh Dương Vương",
            "Kỳ Đồng",
            "Ký Con",
            "Ký Hòa",
            "Lã Xuân Oai",
            "Lạc Long Quân",
            "Lam Sơn",
            "Lan Mê Linh",
            "Láng Le - Bàu Cò",
            "Láng Thé",
            "Lãnh Binh Thăng",
            "Lão Tử",
            "Lâm Hoành",
            "Lâm Văn Tết",
            "Lê Anh Xuân",
            "Lê Bá Trinh",
            "Lê Cao Lãng",
            "Lê Cẩn",
            "Lê Công Kiều",
            "Lê Cơ",
            "Lê Duẫn",
            "Lê Duy Nhuận",
            "Lê Đại Hành",
            "Lê Đình Cẩn",
            "Lê Đình Chi",
            "Lê Đình Thám",
            "Lê Đức Thọ",
            "Lê Hi",
            "Lê Hồng Phong",
            "Lê Lai",
            "Lê Lâm",
            "Lê Lợi",
            "Lê Minh Xuân",
            "Lê Ngân",
            "Lê Ngô Cát",
            "Lê Ngung",
            "Lê Quang Định",
            "Lê Quang Kim",
            "Lê Quang Sung",
            "Lê Quốc Hưng",
            "Lê Quý Đôn",
            "Lê Sát",
            "Lê Tấn Kế",
            "Lê Tấn Quốc",
            "Lê Thạch",
            "Lê Thành Phương",
            "Lê Thánh Tôn",
            "Lê Thị Bạch Cát",
            "Lê Thị Hoa",
            "Lê Thị Hồng Gấm",
            "Lê Thị Riêng",
            "Lê Thọ Xuân",
            "Lê Thúc Hoạch",
            "Lê Thương",
            "Lê Trọng Tấn",
            "Lê Trung Nghĩa",
            "Lê Trực",
            "Lê Tung",
            "Lê Tự Tài",
            "Lê Văn Chí",
            "Lê Văn Hữu",
            "Lê Văn Linh",
            "Lê Văn Lương",
            "Lê Văn Sĩ",
            "Lê Văn Thọ",
            "Lê Văn Việt",
            "Linh Đông",
            "Linh Trung",
            "Linh Xuân",
            "Lò Gốm",
            "Lò Siêu",
            "Long Hưng",
            "Lũy Bán Bích",
            "Lữ Gia",
            "Lương Đắc Bằng",
            "Lương Định Của",
            "Lương Hữu Khánh",
            "Lương Khải Siêu",
            "Lương Khánh Thiện",
            "Lương Ngọc Quyến",
            "Lương Nhữ Hộc",
            "Lương Thế Vinh",
            "Lương Văn Can",
            "Lương Văn Nho",
            "Lưu Hữu Phước",
            "Lưu Khai Hồng",
            "Lưu Nhân Chú",
            "Lưu Quí Kỳ",
            "Lưu Trọng Lư",
            "Lưu Văn Lang",
            "Lưu Xuân Tín",
            "Lý Chiêu Hoàng",
            "Lý Chính Thắng",
            "Lý Đạo Thành",
            "Lý Nam Đế",
            "Lý Phục Man",
            "Lý Tế Xuyên",
            "Lý Thái Tổ",
            "Lý Thái Tông",
            "Lý Thánh Tông",
            "Lý Thường Kiệt",
            "Lý Tự Trọng",
            "Lý Văn Phức",
            "Mả Lò",
            "Mã Lộ",
            "Mạc Cửu",
            "Mạc Đĩnh Chi",
            "Mạc Thị Bưởi",
            "Mạc Thiên Tích",
            "Mai Am",
            "Mai Bá Hương",
            "Mai Hắc Đế",
            "Mai Lão Bạng",
            "Mai Thị Lưu",
            "Mai Văn Ngọc",
            "Mai Xuân Thưởng",
            "Man Thiện",
            "Mặc Vân",
            "Mễ Cốc",
            "Minh Phụng",
            "Mít Nài",
            "Quốc Lộ 1A",
            "Mỹ Hòa",
            "Nam Cao",
            "Nam Hòa",
            "Nam Kỳ Khởi Nghĩa",
            "Nam Quốc Cang",
            "Năm Châu",
            "Năm Mươi(50)",
            "Nghĩa Thục",
            "Ngô Chí Quốc",
            "Ngô Đức Kế",
            "Ngô Gia Tự",
            "Ngô Nhân Tịnh",
            "Ngô Quang Huy",
            "Ngô Quyền",
            "Ngô Sĩ Liên",
            "Ngô Tất Tố",
            "Ngô Thời Nhiệm",
            "Ngô Văn Năm",
            "Ngô Văn Sở",
            "Ngô Y Linh",
            "Nguyên Hồng",
            "Nguyễn An Khương",
            "Nguyễn An Ninh",
            "Nguyễn Án",
            "Nguyễn Ảnh Thủ",
            "Nguyễn Bá Học",
            "Nguyễn Bá Luật",
            "Nguyễn Bặc",
            "Nguyễn Biểu",
            "Nguyễn Bình",
            "Nguyễn Bỉnh Khiêm",
            "Nguyễn Cảnh Chân",
            "Nguyễn Cảnh Dị",
            "Nguyễn Chánh Sắt",
            "Nguyễn Chế Nghĩa",
            "Nguyễn Chí Thanh",
            "Nguyễn Chích",
            "Nguyễn Công Hoan",
            "Nguyễn Công Tiễu",
            "Nguyễn Công Trứ",
            "Nguyễn Cư Trinh",
            "Nguyễn Cửu Đàm",
            "Nguyễn Cửu Phú",
            "Nguyễn Cửu Vân",
            "Nguyễn Du",
            "Nguyễn Duy",
            "Nguyễn Duy Dương",
            "Nguyễn Duy Trình",
            "Nguyễn Dữ",
            "Nguyễn Đại Năng",
            "Nguyễn Đình Chi",
            "Nguyễn Đình Chiểu",
            "Nguyễn Đình Chính",
            "Nguyễn Đình Huân",
            "Nguyễn Đình Khơi",
            "Nguyễn Gia Thiều",
            "Nguyễn Giản Thanh",
            "Nguyễn Hậu",
            "Nguyễn Hiền",
            "Nguyễn Hiến Lê",
            "Nguyễn Hồng Đào",
            "Nguyễn Hới",
            "Nguyễn Huệ",
            "Nguyễn Huy Lượng",
            "Nguyễn Huy Tự",
            "Nguyễn Huy Tưởng",
            "Nguyễn Hữu Cảnh",
            "Nguyễn Hữu Cầu",
            "Nguyễn Hữu Dật",
            "Nguyễn Hữu Hào",
            "Nguyễn Hữu Thận",
            "Nguyễn Hữu Thọ",
            "Nguyễn Hữu Tiến",
            "Nguyễn Hữu Trí",
            "Nguyễn Khắc Nhu",
            "Nguyễn Khoái",
            "Nguyễn Khuyến",
            "Nguyễn Kiệm",
            "Nguyễn Kim",
            "Nguyễn Kim Cương",
            "Nguyễn Lâm",
            "Nguyễn Minh Châu",
            "Nguyễn Mỹ Ca",
            "Nguyễn Ngọc Cung",
            "Nguyễn Ngọc Lộc",
            "Nguyễn Ngọc Nhựt",
            "Nguyễn Ngọc Phương",
            "Nguyễn Nhược Thị",
            "Nguyễn Oanh",
            "Nguyễn Phạm Tuân",
            "Nguyễn Phi Khanh",
            "Nguyễn Phong Sắc",
            "Nguyễn Phúc Chu",
            "Nguyễn Phúc Nguyên",
            "Nguyễn Phúc Trú",
            "Nguyễn Quyền",
            "Nguyễn Sĩ Cố",
            "Nguyễn Sơn",
            "Nguyễn Sơn Hà",
            "Nguyễn Súy",
            "Nguyễn Tất Thành",
            "Nguyễn Thái Bình",
            "Nguyễn Thái Học",
            "Nguyễn Thái Sơn",
            "Nguyễn Thanh Tuyền",
            "Nguyễn Thành Vĩnh",
            "Nguyễn Thành Ý",
            "Nguyễn Thần Hiến",
            "Nguyễn Thi",
            "Nguyễn Thị Diệu",
            "Nguyễn Thị Định",
            "Nguyễn Thị Huỳnh",
            "Nguyễn Thị Minh Khai",
            "Nguyễn Thị Nghĩa",
            "Nguyễn Thị Nhỏ",
            "Nguyễn Thị Rành",
            "Nguyễn Thị Tần",
            "Nguyễn Thị Thập",
            "Nguyễn Thị Thử",
            "Nguyễn Thiện Thuật",
            "Nguyễn Thiếp",
            "Nguyễn Thông",
            "Nguyễn Thời Trung",
            "Nguyễn Thức Đường",
            "Nguyễn Thượng Hiền",
            "Nguyễn Tiểu La",
            "Nguyễn Trãi",
            "Nguyễn Tri Phương",
            "Nguyễn Trọng Lội",
            "Nguyễn Trọng Tuyển",
            "Nguyễn Trung Ngạn",
            "Nguyễn Trung Trực",
            "Nguyễn Trường Tộ",
            "Nguyễn Tuân",
            "Nguyễn Tư Nghiêm",
            "Nguyễn Tử Nha",
            "Nguyễn Văn Bảo",
            "Nguyễn Văn Bình",
            "Nguyễn Văn Chiêm",
            "Nguyễn Văn Công",
            "Nguyễn Văn Của",
            "Nguyễn Văn Cừ",
            "Nguyễn Văn Cự",
            "Nguyễn Văn Dung",
            "Nguyễn Văn Dưỡng",
            "Nguyễn Văn Đậu",
            "Nguyễn Văn Đừng",
            "Nguyễn Văn Giai",
            "Nguyễn Văn Giáp",
            "Nguyễn Văn Hoài",
            "Nguyễn Văn Huyên",
            "Nguyễn Văn Hưởng",
            "Nguyễn Văn Linh",
            "Nguyễn Văn Luông",
            "Nguyễn Văn Mai",
            "Nguyễn Văn Mại",
            "Nguyễn Văn Nghi",
            "Nguyễn Văn Nghĩa",
            "Nguyễn Văn Ngọc",
            "Nguyễn Văn Nguyễn",
            "Nguyễn Văn Phú",
            "Nguyễn Văn Quá",
            "Nguyễn Văn Tạo",
            "Nguyễn Văn Tăng",
            "Nguyễn Văn Thạnh",
            "Nguyễn Văn Thủ",
            "Nguyễn Văn Tố",
            "Nguyễn Văn Tráng",
            "Nguyễn Văn Trỗi",
            "Nguyễn Văn Vĩ",
            "Nguyễn Văn Vĩnh",
            "Nguyễn Viết Xuân",
            "Nguyễn Xí",
            "Nguyễn Xiển",
            "Nguyễn Xuân Khoát",
            "Nguyễn Xuân Ôn",
            "Nguyễn Xuân Phụng",
            "Nhất Chi Mai",
            "Nhật Lệ",
            "Nhật Tảo",
            "Nhiêu Tâm",
            "Nhiêu Tứ",
            "Nhữ Tiến Hiền",
            "Ni Sư Huỳnh Liên",
            "Ninh Tốn",
            "Nơ Trang Long",
            "Ông Ích Khiêm",
            "Pasteur",
            "Phạm Bành",
            "Phạm Bân",
            "Phạm Cự Lượng",
            "Phạm Đình Hổ",
            "Phạm Đình Toái",
            "Phạm Đôn",
            "Phạm Hồng Thái",
            "Phạm Hùng",
            "Phạm Huy Thông",
            "Phạm Hữu Chí",
            "Phạm Hữu Lầu",
            "Phạm Ngọc",
            "Phạm Ngọc Thạch",
            "Phạm Ngũ Lão",
            "Phạm Phú Thứ",
            "Phạm Phú Tiết",
            "Phạm Thế Hiển",
            "Phạm Văn Bạch",
            "Phạm Văn Chí",
            "Phạm Văn Chiêu",
            "Phạm Văn Cội",
            "Phạm Văn Hai",
            "Phạm Văn Xảo",
            "Phạm Vấn",
            "Phạm Viết Chánh",
            "Phan Anh",
            "Phan Bội Châu",
            "Phan Cát Tưu",
            "Phan Châu Trinh",
            "Phan Đăng Lưu",
            "Phan Đình Giót",
            "Phan Đình Phùng",
            "Phan Đình Thông",
            "Phan Huy Chú",
            "Phan Huy Ích",
            "Phan Huy Ôn",
            "Phan Huy Thực",
            "Phan Kế Bính",
            "Phan Liêm",
            "Phan Ngữ",
            "Phan Phù Tiên",
            "Phan Thúc Duyện",
            "Phan Tôn",
            "Phan Trọng Tuệ",
            "Phan Văn Đạt",
            "Phan Văn Hân",
            "Phan Văn Hớn",
            "Phan Văn Khỏe",
            "Phan Văn Lân",
            "Phan Văn Sửu",
            "Phan Văn Trị",
            "Phan Văn Trường",
            "Phan Xích Long",
            "Phó Cơ Điều",
            "Phó Đức Chính",
            "Phong Phú",
            "Phổ Quang",
            "Phù Đổng Thiên Vương",
            "Phú Châu",
            "Phú Định",
            "Phú Giáo",
            "Phú Hiệp",
            "Phú Hòa",
            "Phú Hữu",
            "Phú Lâm",
            "Phú Mỹ",
            "Phú Thọ",
            "Phú Thọ Hòa",
            "Phú Trung",
            "Phùng Chí Kiên",
            "Phùng Hưng",
            "Phùng Khắc Khoan",
            "Phùng Tá Chu",
            "Phùng Văn Cung",
            "Phước Hưng",
            "Phước Thiện",
            "Quách Văn Tuấn",
            "Quách Vũ",
            "Quang Trung",
            "Quảng Xuyên",
            "Quốc Hương",
            "Quy Đức",
            "Rạch Cát",
            "Rạch Sậy",
            "Rừng Sác",
            "Sông Đa",
            "Sông Đáy",
            "Sông Lu",
            "Sông Nhuệ",
            "Sông Thương",
            "Sơn Cang",
            "Sơn Kỳ",
            "Suối Lội",
            "Sư Thiện Chiếu",
            "Sư Vạn Hạnh",
            "Sương Nguyệt Ánh",
            "Tagore",
            "Tạ Dương Minh",
            "Tạ Mỹ Duật",
            "Tạ Quang Bửu",
            "Tạ Uyên",
            "Tam Đa",
            "Tam Đảo",
            "Tam Tân",
            "Tản Đà",
            "Tản Viên",
            "Tăng Bạt Hổ",
            "Tăng Nhơn Phú",
            "Tân Canh",
            "Tân Châu",
            "Tân Hàng",
            "Tân Hòa",
            "Tân Hòa Đông",
            "Tân Hóa",
            "Tân Hưng",
            "Tân Hương",
            "Tân Khai",
            "Tân Kiên",
            "Tân Kỳ - Tân Quý",
            "Tân Liêm",
            "Tân Long",
            "Tân Nhựt",
            "Tân Phước",
            "Tân Sơn Hòa",
            "Tân Sơn Nhì",
            "Tân Thành",
            "Tân Thuận Tây",
            "Tân Vĩnh",
            "Tây Hòa",
            "Tây Sơn",
            "Tây Thạnh",
            "Tên Lửa",
            "Thạch Lam",
            "Thạch Thị Thanh",
            "Thái Phiên",
            "Thái Văn Lung",
            "Thanh Đa",
            "Thanh Niên",
            "Thành Thái",
            "Thạnh Mỹ Lợi",
            "Tháp Mười",
            "Thăng Long",
            "Thân Nhân Trung",
            "Thép Mới",
            "Thế Lữ",
            "Thi Sách",
            "Thích Bửu Đăng",
            "Thích Mật Thể",
            "Thích Minh Nguyệt",
            "Thích Quảng Đức",
            "Thích Thiện Hòa",
            "Thiên Giang",
            "Thoại Ngọc Hầu",
            "Thông Tây Hội",
            "Thủ Khoa Huân",
            "Thuận Kiều",
            "Tô Hiến Thành",
            "Tô Hiệu",
            "Tô Ngọc Vân",
            "Tô Vĩnh Diện",
            "Tôn Đản",
            "Tôn Đức Thắng",
            "Tôn Quang Phiệt",
            "Tôn Thất Đạm",
            "Tôn Thất Hiệp",
            "Tôn Thất Điệp",
            "Tôn Thất Thuyết",
            "Tôn Thất Tùng",
            "Tống Duy Tân",
            "Tống Văn Trân",
            "Tổng Lung",
            "Trà Khúc",
            "Trang Tử",
            "Trần Bá Giao",
            "Trần Bình",
            "Trần Bình Trọng",
            "Trần Cao Vân",
            "Trần Chánh Chiếu",
            "Trần Doãn Khanh",
            "Trần Đại Nghĩa",
            "Trần Điện",
            "Trần Đình Xu",
            "Trần Hải Phụng",
            "Trần Hòa",
            "Trần Huy Liệu",
            "Trần Hưng Đạo",
            "Trần Hữu Trang",
            "Trần Kế Xương",
            "Trần Khánh Dư",
            "Trần Khắc Chân",
            "Trần Mai Ninh",
            "Trần Minh Quyền",
            "Trần Não",
            "Trần Nguyên Hãn",
            "Trần Nhân Tôn",
            "Trần Nhật Duật",
            "Trần Phú",
            "Trần Phú Cương",
            "Trần Quang Cơ",
            "Trần Quang Diệu",
            "Trần Quang Đạo",
            "Trần Quang Khải",
            "Trần Quốc Thảo",
            "Trần Quốc Toản",
            "Trần Quý",
            "Trần Quý Cáp",
            "Trần Quý Khoách",
            "Trần Thái Tông",
            "Trần Thanh Mại",
            "Trần Thánh Tông",
            "Trần Thiện Chánh",
            "Trần Thủ Độ",
            "Trần Triệu Luật",
            "Trần Trung Lập",
            "Trần Tuấn Khải",
            "Trần Tướng Công",
            "Trần Văn Dư",
            "Trần Văn Đang",
            "Trần Văn Giáp",
            "Trần Văn Kiểu",
            "Trần Văn Kỷ",
            "Trần Văn Ơn",
            "Trần Văn Thành",
            "Trần Xuân Hòa",
            "Trần Xuân Soạn",
            "Triệu Quang Phục",
            "Trịnh Đình Thảo",
            "Trịnh Đình Trọng",
            "Trịnh Hoài Đức",
            "Trịnh Như Khuê",
            "Trịnh Văn Cấn",
            "Trúc Đường",
            "Trung An",
            "Trung Chánh",
            "Trung Hưng",
            "Trung Mỹ Tây",
            "Truông Tre",
            "Trương Công Định",
            "Trương Đăng Quế",
            "Trương Đình Hội",
            "Trương Định",
            "Trương Hán Siêu",
            "Trương Hanh",
            "Trương Minh Ký",
            "Trương Phước Phan",
            "Trương Quốc Dụng",
            "Trương Văn Đa",
            "Trương Quyền",
            "Trương Vân Lĩnh",
            "Trương Vĩnh Ký",
            "Trường Chinh",
            "Trường Lưu",
            "Trường Sa",
            "Trường Sơn",
            "Trường Thọ",
            "Tú Mỡ",
            "Tú Xương",
            "Tuệ Tĩnh",
            "Tùng Thiện Vương",
            "Tuy Lý Vương",
            "Ung Văn Khiêm",
            "Út Tịch",
            "Ưu Long",
            "Vạn Kiếp",
            "Vạn Tượng",
            "Văn Cao",
            "Văn Chung",
            "Văn Thân",
            "Vân Đồn",
            "Vĩnh Hội",
            "Vĩnh Khánh",
            "Vĩnh Lộc",
            "Vĩnh Nam",
            "Vĩnh Viễn",
            "Võ Duy Ninh",
            "Võ Thành Trang",
            "Võ Thị Sáu",
            "Võ Trứ",
            "Võ Trường Toản",
            "Võ Văn Kiệt",
            "Võ Văn Ngân",
            "Võ Văn Tần",
            "Vũ Chí Hiếu",
            "Vũ Đình Long",
            "Vũ Ngọc Phan",
            "Vũ Trọng Phụng",
            "Vũ Tụ",
            "Vũ Tùng",
            "Vườn Chuối",
            "Vườn Lài",
            "Vườn Thơm",
            "Xóm Chỉ",
            "Xóm Chiếu",
            "Xóm Củi",
            "Xóm Đất",
            "Xóm Huế",
            "Xóm Thuốc",
            "Xóm Vôi",
            "Xô Viết Nghệ Tĩnh",
            "Xuân Diệu",
            "Xuân Hồng",
            "Ỷ Lan",
            "Yersin",
            "Yên Thế",
            "Yết Kêu",
            "Số 1",
            "Số 2",
            "Số 3",
            "Số 4",
            "Số 5",
            "Số 6",
            "Số 7",
            "Số 8",
            "Số 9",
            "Số 10",
            "Số 11",
            "Số 12",
            "Số 13",
            "Số 14",
            "Số 15",
            "Số 16",
            "Số 17",
            "Số 18",
            "Số 19",
            "Số 20",
            "Số 21",
            "Số 22",
            "Số 23",
            "Số 24",
            "Số 25",
            "Số 26",
            "Số 27",
            "Số 28",
            "Số 29",
            "Số 30",
            "Số 31",
            "Số 32",
            "Số 33",
            "Số 34",
            "Số 35",
            "Số 36",
            "Số 37",
            "Số 38",
            "Số 39",
            "Số 40",
            "Số 41",
            "Số 42",
            "Số 43",
            "Số 44",
            "Số 45",
            "Số 46",
            "Số 47",
            "Số 48",
            "Số 49",
            "Số 50",
            "Số 51",
            "Số 52",
            "Số 53",
            "Số 54",
            "Số 55",
            "Số 56",
            "Số 57",
            "Số 58",
            "Số 59",
            "Số 60",
            "Số 61",
            "Số 62",
            "Số 63",
            "Số 64",
            "Số 65",
            "Số 66",
            "Số 67",
            "Số 68",
            "Số 69",
            "Số 70",
            "Số 71",
            "Số 72",
            "Số 73",
            "Số 74",
            "Số 75",
            "Số 76",
            "Số 77",
            "Số 78",
            "Số 79",
            "Số 80",
            "Số 81",
            "Số 82",
            "Số 83",
            "Số 84",
            "Số 85",
            "Số 86",
            "Số 87",
            "Số 88",
            "Số 89",
            "Số 90",
            "Số 91",
            "Số 92",
            "Số 93",
            "Số 94",
            "Số 95",
            "Số 96",
            "Số 97",
            "Số 98",
            "Số 99",
            "Số 100",
            "Số 101",
            "Số 102",
            "Số 103",
            "Số 104",
            "Số 105",
            "Số 106",
            "Số 107",
            "Số 108",
            "Số 109",
            "Số 110",
            "Số 111",
            "Số 112",
            "Số 113",
            "Số 114",
            "Số 115",
            "Số 116",
            "Số 117",
            "Số 118",
            "Số 119",
            "Số 120"
        ];
        $( "#text_edit_number_street" ).autocomplete({
            source: availableTags_Street
        });
        $( "#text_edit_number_street_receiver" ).autocomplete({
            source: availableTags_Street
        });
    });
</script>
<style>
    .input_box_from{
        width: 350px;
        height: 50px;
    }
    .cart{
	border-top:1px solid #BCDDEE;
    }
    .cart td,.cart th{
	border-bottom:1px solid #BCDDEE;
	border-left:1px solid #BCDDEE;
	border-right:1px solid #BCDDEE;
	padding:3px;
    }

    .recycle_bin_empty{
	background:url('{linkS}layout/images/recycle_bin_empty.png') no-repeat left center;
	text-indent:20px;
	padding:3px;
	border:2px solid #BCDDEE
    }

    .order{
	padding:3px;
	border:2px solid #ccc;
	color:#999;
	text-indent:20px;
	background:url('{linkS}layout/images/shopping.png') no-repeat left center;
    }
</style>
<style media="screen" type="text/css">
    #p_edit_buy{
        text-decoration:underline;
        color:#00F;
        cursor: pointer;
    }
    #p_edit_transport{
        text-decoration:underline;
        color:#00F;
        cursor: pointer;
    }
    #p_edit_bill{
        text-decoration:underline;
        color:#00F;
        cursor: pointer;
    }
    #p_edit_receiver{
        text-decoration:underline;
        color:#00F;
        cursor: pointer;
    }
    #p_edit_receiver_2{
        text-decoration:underline;
        color:#00F;
        cursor: pointer;
    }
</style>
<script>
    $(function() {
        // Auto chieu cao
        $( "#accordion" ).accordion({
            heightStyle: "content"
        });

        var icons =
        {
            header: "ui-icon-circle-arrow-e",
            activeHeader: "ui-icon-circle-arrow-s"
        };

        $( "#accordion" ).accordion({
            icons: icons
        });
    });

    // Xu ly su kien Xac nhan dia chi nguoi mua
    function btAcceptAdress_buy_display() {
        // Kiem tra list box la chon dia chi moi va xac nhan thi se thong bao
        var selected_address = document.getElementById("address");
        var text_selected_address = selected_address.options[selected_address.selectedIndex].text;
        if(text_selected_address === 'Địa chỉ mới') {
            alert('Vui lòng chọn địa chỉ người mua hoặc click Nhập địa chỉ mới!');
        }
        else {
            // Hien thi thong tin nguoi nhan
            document.getElementById("table_info_buy").style.display = "block";
            // Hoac va bt Nhap Dia Chi Moi
            document.getElementById("table_Nhap_Dia_Chi_Moi").style.display = "none";
            // Cac thong tin cho khi them dia chi
            document.getElementById("table_Dia_Chi_Moi").style.display = "none";
            document.getElementById("div_address_buy").style.display = "none";
            document.getElementById("title_buy").style.display = "none";
            document.getElementById("btAcceptAdress_buy").style.display = "none";
            document.getElementById("bt_accept_transport").style.display = "none";
            document.getElementById("bt_accept_money").style.display = "none";
            document.getElementById("p_edit_buy").style.display = "block";

            //Hien thi thong tin nguoi nhan
            document.getElementById("table_info_receiver").style.display = "block";
            document.getElementById("bt_add_new_address_receiver_1").style.display = "block";
            document.getElementById("check_info_buy").style.display = "none";
            document.getElementById("table_checkbox").style.display = "block";
            document.getElementById("bt_add_new_address_receiver_1").style.display = "block";
            var check_receive = document.getElementById("check_receive");
            check_receive.checked = true;
            var selected_address = document.getElementById("address");
            var text_selected_address = selected_address.options[selected_address.selectedIndex].text;
            var p_address = document.getElementById("p_address_buy");
            p_address.innerHTML = text_selected_address;
            var p_edit_buy = document.getElementById("p_edit_buy");
            p_edit_buy.innerHTML = "Sửa";

            //Xu ly cho thong tin nguoi nhan giong nguoi mua
            var p_name = document.getElementById("p_name_buy");
            var p_name_receiver = document.getElementById("p_name_receiver");
            p_name_receiver.innerHTML = p_name.innerHTML;
            var p_address_receiver = document.getElementById("p_address_receiver");
            p_address_receiver.innerHTML = text_selected_address;
            var p_cellphone = document.getElementById("p_cellphone_buy");
            var p_phone_receiver = document.getElementById("p_phone_receiver");
            p_phone_receiver.innerHTML = p_cellphone.innerHTML;
            $( "#accordion" ).accordion({ active: 1 });
        }
    }

    //Xu ly su kien Edit dia chi nguoi mua
    function edit_address_buy() {
        document.getElementById("div_address_buy").style.display = "block";
        document.getElementById("title_buy").style.display = "block";
        document.getElementById("btAcceptAdress_buy").style.display = "block";
        document.getElementById("table_Nhap_Dia_Chi_Moi").style.display = "block";
        document.getElementById("p_edit_buy").style.display = "none";
        document.getElementById("table_info_buy").style.display = "none";
        document.getElementById("table_checkbox").style.display = "none";
        document.getElementById("bt_add_new_address_receiver_1").style.display = "none";
        document.getElementById("bt_add_new_address_receiver_2").style.display = "none";
        document.getElementById("table_info_receiver").style.display = "none";
        document.getElementById("table_Dia_Chi_Moi_Nguoi_Nhan").style.display = "none";
        document.getElementById("info_Country_City_District_Receive").style.display = "none";
        document.getElementById("table_info_name_receive").style.display = "none";
        document.getElementById("check_info_buy").style.display = "block";
        document.getElementById("p_edit_receiver").style.display = "none";
        document.getElementById("p_edit_receiver_2").style.display = "none";
        document.getElementById("p_agree_receiver").style.display = "none";
        document.getElementById("check_info_receive").style.display = "block";
        document.getElementById("table_info_transport").style.display = "none";
        document.getElementById("check_info_transport").style.display = "block";
        document.getElementById("table_cash_bank").style.display = "none";
        document.getElementById("check_info_cash_bank").style.display = "block";
        document.getElementById("che-bas-shopping-cart-items").style.display = "none";
        document.getElementById("che-bas-bottom-right-wrapper").style.display = "none";
        document.getElementById("contact_info").style.display = "none";
        document.getElementById("contact").style.display = "none";
        document.getElementById("p_edit_transport").style.display = "none";
        document.getElementById("p_edit_bill").style.display = "none";
        document.getElementById("bt_accept_transport").style.display = "none";
        document.getElementById("bt_accept_money").style.display = "none";
        var check_receive = document.getElementById("check_receive");
        check_receive.checked = true;
        check_receive.disabled = false;

        //Xu ly cho thong tin nguoi nhan giong nguoi mua
        var p_name_receiver = document.getElementById("p_name_receiver");
        p_name_receiver.innerHTML = "";
        var p_address_receiver = document.getElementById("p_address_receiver");
        p_address_receiver.innerHTML = "";
        var p_phone_receiver = document.getElementById("p_phone_receiver");
        p_phone_receiver.innerHTML = "";
    }

    //Bat su kien bt Nhap dia chi moi
    function btAdd_Address_buy_display() {
        document.getElementById("table_Dia_Chi_Moi").style.display = "block";
        document.getElementById("info_Country_City_District").style.display = "block";
        document.getElementById("bt_add_new_adress").style.display = "block";
        document.getElementById("title_buy").style.display = "none";
        document.getElementById("btAcceptAdress_buy").style.display = "none";
        document.getElementById("btAdd_Address_buy").style.display = "none";

        //Cho list box hien thi Dia Chi Moi
        var listbox_address_buy = document.getElementById("address");
        var i = listbox_address_buy.options.length;
        listbox_address_buy.options[i-1].selected = true;
    }

    // Bat su kien check_box cua nguoi nhan
    function checkAddress(checkbox) {
        if (checkbox.checked) {
            document.getElementById("table_info_receiver").style.display = "block";
            document.getElementById("table_Dia_Chi_Moi_Nguoi_Nhan").style.display = "none";
            document.getElementById("info_Country_City_District_Receive").style.display = "none";
            document.getElementById("table_info_name_receive").style.display = "none";
            document.getElementById("bt_add_new_address_receiver_1").style.display = "block";
            document.getElementById("bt_add_new_address_receiver_2").style.display = "none";
            // Lay thong tin cua nguoi mua gan cho nguoi nhan
            document.getElementById("p_name_receiver").innerHTML = document.getElementById("p_name_buy").innerHTML;
            document.getElementById("p_address_receiver").innerHTML = document.getElementById("p_address_buy").innerHTML;
            document.getElementById("p_phone_receiver").innerHTML = document.getElementById("p_cellphone_buy").innerHTML;
        }
        else {
            document.getElementById("table_info_receiver").style.display = "none";
            document.getElementById("table_Dia_Chi_Moi_Nguoi_Nhan").style.display = "block";
            document.getElementById("info_Country_City_District_Receive").style.display = "block";
            document.getElementById("table_info_name_receive").style.display = "block";
            document.getElementById("bt_add_new_address_receiver_1").style.display = "none";
            document.getElementById("bt_add_new_address_receiver_2").style.display = "block";
        }
    }

    // Bat su kien xac nhan thong tin nguoi nhan hang
    function function_add_adress_receiver_1() {
        var p_edit_receiver = document.getElementById("p_edit_receiver");
        p_edit_receiver.innerHTML = "Sửa";
        p_edit_receiver.style.display = "block";
        var check_receive = document.getElementById("check_receive");
        check_receive.disabled = true;
        document.getElementById("bt_add_new_address_receiver_1").style.display = "none";
        document.getElementById("p_agree_receiver").style.display = "block";
        document.getElementById("check_info_receive").style.display = "none";
        document.getElementById("table_info_transport").style.display = "block";

        // Hien thi lai cac lua chon cho transport
        var bt_accept_transport = document.getElementById("bt_accept_transport");
        bt_accept_transport.style.display = "block";
        table_info_transport.disabled = false;
        var radio_motobike_transport = document.getElementById("radio_motobike_transport");
        radio_motobike_transport.disabled = false;
        var radio_fast_fax_transport = document.getElementById("radio_fast_fax_transport");
        radio_fast_fax_transport.disabled = false;
        var radio_car_transport = document.getElementById("radio_car_transport");
        radio_car_transport.disabled = false;
        var radio_post_house_transport = document.getElementById("radio_post_house_transport");
        radio_post_house_transport.disabled = false;

        // Gan cac thong tin cho nguoi mua trong Kiem tra lai don hang
        var txtDiaChi_Info =document.getElementById("txtDiaChi_Info");
        txtDiaChi_Info.innerHTML = document.getElementById("p_address_buy").innerHTML;
        var txtDiaChi =document.getElementById("txtDiaChi");
        txtDiaChi.value = document.getElementById("p_address_buy").innerHTML;

        // Gan cac thong tin cho nguoi nhan trong Kiem tra lai don hang
        var txtHotenNguoiNhan_Info =document.getElementById("txtHotenNguoiNhan_Info");
        txtHotenNguoiNhan_Info.innerHTML = document.getElementById("p_name_receiver").innerHTML;
        var txtHotenNguoiNhan =document.getElementById("txtHotenNguoiNhan");
        txtHotenNguoiNhan.value = document.getElementById("p_name_receiver").innerHTML;
        var txtDienthoaiNguoiNhan_Info = document.getElementById("txtDienthoaiNguoiNhan_Info");
        txtDienthoaiNguoiNhan_Info.innerHTML = document.getElementById("p_phone_receiver").innerHTML;
        var txtDienthoaiNguoiNhan = document.getElementById("txtDienthoaiNguoiNhan");
        txtDienthoaiNguoiNhan.value = document.getElementById("p_phone_receiver").innerHTML;
        var txtDiachiNguoiNhan_Info =document.getElementById("txtDiachiNguoiNhan_Info");
        txtDiachiNguoiNhan_Info.innerHTML = document.getElementById("p_address_receiver").innerHTML;
        var txtDiachiNguoiNhan =document.getElementById("txtDiachiNguoiNhan");
        txtDiachiNguoiNhan.innerHTML = document.getElementById("p_address_receiver").innerHTML;

        // Tinh tien tu dong
        var adress_receiver = document.getElementById("p_address_receiver").innerHTML;
        var n = adress_receiver.indexOf('Hồ Chí Minh');

        // Nếu địa chỉ tại TP Hồ Chí Minh mới tính tiền vận chuyển tận nhà
        if(n > 15) {
            var m = adress_receiver.indexOf('Quận');
            if(m >= 5) {
                var split_adress = adress_receiver.split('Quận');
                var split_district = split_adress[1].split(' Hồ Chí Minh');
                var name_district = "Quận" + split_district[0];
            }

            if( m < 5) {
                var split_adress = adress_receiver.split('Huyện');
                var split_district = split_adress[1].split(' Hồ Chí Minh');
                var name_district = "Huyện" + split_district[0];
            }

            // Xu ly van chuyen cho cac quan co the van chuyen
            // Lay thong tin danh sach quan va tien phi tung quan
            var txt_transport_fee = document.getElementById("transport_fee");
            txtPhiVanChuyen = txt_transport_fee.value;

            // Kiem tra xem quan co ton tai trong danh sach cac quan co phi hay khong
            var n_transport_fee = txtPhiVanChuyen.indexOf(name_district);
            if(txtPhiVanChuyen !== "" && n_transport_fee >= 0) {
                fee_district(txtPhiVanChuyen,split_district[0], name_district);
            }
            else {
                fee_transport_district = "NanaPet không vận chuyển tận nhà " + name_district;
                document.getElementById("total_fee").style.color = "black";
                document.getElementById("total_fee").innerHTML = "Hãy chọn PT vận chuyển";
                document.getElementById("total_fee_product_transport").innerHTML = 'Thông báo sau';
                // Luu tru phi van chuyen
                document.getElementById("txtfeetransport").value = 'Chưa chọn PT vận chuyển';
                document.getElementById("txttotalproductfee").value = 'Thông báo sau';
                var fee_transport = document.getElementById("fee_transport");
                fee_transport.innerHTML = fee_transport_district;
            }
            $( "#accordion" ).accordion({ active: 2 });
        }

        // Không phải thành phố Hồ Chí Minh thì nanapet sẽ thông báo chưa chọn PT vận chuyển
        else  {
            fee_transport_district = "NanaPet không vận chuyển tận nhà ngoài TP Hồ Chí Minh - Vui lòng chọn phương thức khác!";
            document.getElementById("total_fee").style.color = "black";
            document.getElementById("total_fee").innerHTML = "Chưa chọn PT vận chuyển";
            document.getElementById("total_fee_product_transport").innerHTML = 'Thông báo sau';
            // Luu tru phi van chuyen
            document.getElementById("txtfeetransport").value = 'Chưa chọn PT vận chuyển';
            document.getElementById("txttotalproductfee").value = 'Thông báo sau';
            var fee_transport = document.getElementById("fee_transport");
            fee_transport.innerHTML = fee_transport_district;
            $( "#accordion" ).accordion({ active: 2 });
        }
    }

    //Su kien nguoi nhan them dia chi moi
    function function_add_adress_receiver_2() {
        // Lay thong tin Ho Ten
        var text_family_name_receiver = document.getElementById("text_family_name_receiver");
        family_name_receiver = text_family_name_receiver.value;
        name_receiver = "";

        // Lay thong tin so dt
        var text_mobile_receiver = document.getElementById("text_mobile_receiver");
        mobile_receiver = text_mobile_receiver.value;

        // Lay thong tin So Nha , Duong , Phuong
        var text_edit_number_address_receiver = document.getElementById("text_edit_number_address_receiver");
        address_receiver = text_edit_number_address_receiver.value;
        var text_edit_number_street_receiver = document.getElementById("text_edit_number_street_receiver");
        street_receiver = text_edit_number_street_receiver.value;
        var text_edit_number_ward_receiver = document.getElementById("text_edit_number_ward_receiver");
        ward_receiver = text_edit_number_ward_receiver.value;
        ward_receiver = ward_receiver.replace("Phường","");

        // Lay thong tin Thanh pho, quan
        var selected_city_receiver = document.getElementById("list_city_receive");
        text_selected_city_buy = selected_city_receiver.options[selected_city_receiver.selectedIndex].text;
        var selected_district_receiver = document.getElementById("list_district_receive");
        text_selected_district_receiver = selected_district_receiver.options[selected_district_receiver.selectedIndex].text;

        //Lay thong tin Chung Cu
        var text_address_Chung_Cu_Receiver = document.getElementById("text_edit_number_address_Chung_Cu_Receiver");
        address_buyer_Chung_Cu_Receiver = text_address_Chung_Cu_Receiver.value;
        var text_address_floor_Receiver = document.getElementById("text_edit_floor_Chung_Cu_Receiver");
        address_buyer_floor_Receiver = text_address_floor_Receiver.value;
        var text_address_room_Receiver = document.getElementById("text_edit_room_Chung_Cu_Receiver");
        address_buyer_room_Receiver = text_address_room_Receiver.value;

        if(family_name_receiver.trim() === ''
            || mobile_receiver.trim() === ''
            || address_receiver.trim() === ''
            || street_receiver.trim() === ''
            || ward_receiver.trim() === ''
            || text_selected_city_buy.trim() === 'Chọn tỉnh thành'
            || text_selected_district_receiver.trim() === 'Chọn quận huyện') {
            alert('Vui lòng cung cấp đầy đủ thông tin Họ Tên, Số điện thoại, Số Nhà, Đường, Phường, Quận, Thành Phố!');
        } else {
            document.getElementById("table_info_name_receive").style.display = "none";
            document.getElementById("table_Dia_Chi_Moi_Nguoi_Nhan").style.display = "none";
            document.getElementById("info_Country_City_District_Receive").style.display = "none";
            document.getElementById("bt_add_new_address_receiver_2").style.display = "none";
            var check_receive = document.getElementById("check_receive");
            check_receive.checked = false;
            check_receive.disabled = true;
            var p_edit_receiver = document.getElementById("p_edit_receiver_2");
            p_edit_receiver.innerHTML = "Sửa";
            p_edit_receiver.style.display = "block";
            document.getElementById("table_info_receiver").style.display = "block";
            document.getElementById("p_agree_receiver").style.display = "block";
            var selected_man_woman = document.getElementById("list_man_woman");
            text_selected_man_woman = selected_man_woman.options[selected_man_woman.selectedIndex].text;
            name_reciver_result = '(';
            var p_name_receiver = document.getElementById("p_name_receiver");
            p_name_receiver.innerHTML = name_reciver_result.concat(text_selected_man_woman,') ',family_name_receiver,' ', name_receiver);
            var p_address_receiver = document.getElementById("p_address_receiver");
            p_address_receiver.innerHTML = address_receiver.concat(' Đường ',street_receiver,' Phường ',ward_receiver,' ' ,text_selected_district_receiver,' ',text_selected_city_buy );
            if(address_buyer_Chung_Cu_Receiver !== "") {
                p_address_receiver.innerHTML = address_buyer_Chung_Cu_Receiver.concat(' - ',p_address_receiver.innerHTML,'  ');
                chung_cu = ' Chung cư/Tòa nhà ';
                p_address_receiver.innerHTML = chung_cu.concat(p_address_receiver.innerHTML);
            }

            if(address_buyer_floor_Receiver !== "") {
                p_address_receiver.innerHTML = address_buyer_floor_Receiver.concat(p_address_receiver.innerHTML,' ');
                lau = 'Lầu ';
                p_address_receiver.innerHTML = lau.concat(p_address_receiver.innerHTML);
            }

            if(address_buyer_room_Receiver !== "") {
                p_address_receiver.innerHTML = address_buyer_room_Receiver.concat(' ',p_address_receiver.innerHTML);
                canho = 'Căn hộ ';
                p_address_receiver.innerHTML = canho.concat(p_address_receiver.innerHTML);
            }

            p_address_receiver.innerHTML = p_name_receiver.innerHTML.concat(', ',p_address_receiver.innerHTML);
            document.getElementById("p_phone_receiver").innerHTML = mobile_receiver;
            // Thuc hien viec hien thi cac thong tin tiep theo
            document.getElementById("check_info_receive").style.display = "none";
            document.getElementById("table_info_transport").style.display = "block";
            // Hien thi lai cac lua chon cho transport
            var bt_accept_transport = document.getElementById("bt_accept_transport");
            bt_accept_transport.style.display = "block";
            table_info_transport.disabled = false;
            var radio_motobike_transport = document.getElementById("radio_motobike_transport");
            radio_motobike_transport.disabled = false;
            var radio_fast_fax_transport = document.getElementById("radio_fast_fax_transport");
            radio_fast_fax_transport.disabled = false;
            var radio_car_transport = document.getElementById("radio_car_transport");
            radio_car_transport.disabled = false;
            var radio_post_house_transport = document.getElementById("radio_post_house_transport");
            radio_post_house_transport.disabled = false;

            // Gan cac thong tin cho nguoi mua trong Kiem tra lai don hang
            var txtDiaChi_Info =document.getElementById("txtDiaChi_Info");
            txtDiaChi_Info.innerHTML = document.getElementById("p_address_buy").innerHTML;
            var txtDiaChi =document.getElementById("txtDiaChi");
            txtDiaChi.value = document.getElementById("p_address_buy").innerHTML;

            // Gan cac thong tin cho nguoi nhan trong Kiem tra lai don hang
            var txtHotenNguoiNhan_Info =document.getElementById("txtHotenNguoiNhan_Info");
            txtHotenNguoiNhan_Info.innerHTML = document.getElementById("p_name_receiver").innerHTML;
            var txtHotenNguoiNhan =document.getElementById("txtHotenNguoiNhan");
            txtHotenNguoiNhan.value = document.getElementById("p_name_receiver").innerHTML;
            var txtDienthoaiNguoiNhan_Info =document.getElementById("txtDienthoaiNguoiNhan_Info");
            txtDienthoaiNguoiNhan_Info.innerHTML = document.getElementById("p_phone_receiver").innerHTML;
            var txtDienthoaiNguoiNhan =document.getElementById("txtDienthoaiNguoiNhan");
            txtDienthoaiNguoiNhan.value = document.getElementById("p_phone_receiver").innerHTML;
            var txtDiachiNguoiNhan_Info =document.getElementById("txtDiachiNguoiNhan_Info");
            txtDiachiNguoiNhan_Info.innerHTML = document.getElementById("p_address_receiver").innerHTML;
            var txtDiachiNguoiNhan =document.getElementById("txtDiachiNguoiNhan");
            txtDiachiNguoiNhan.innerHTML = document.getElementById("p_address_receiver").innerHTML;

            // Tinh tien tu dong
            var adress_receiver = document.getElementById("p_address_receiver").innerHTML;
            var n = adress_receiver.indexOf('Hồ Chí Minh');

            // Nếu địa chỉ tại TP Hồ Chí Minh mới tính tiền vận chuyển tận nhà
            if(n > 15) {
                var m = adress_receiver.indexOf('Quận');
                if(m >= 5) {
                    var split_adress = adress_receiver.split('Quận');
                    var split_district = split_adress[1].split(' Hồ Chí Minh');
                    var name_district = "Quận" + split_district[0];
                }

                if( m < 5) {
                    var split_adress = adress_receiver.split('Huyện');
                    var split_district = split_adress[1].split(' Hồ Chí Minh');
                    var name_district = "Huyện" + split_district[0];
                }

                // Xu ly van chuyen cho cac quan co the van chuyen
                // Lay thong tin danh sach quan va tien phi tung quan
                var txt_transport_fee = document.getElementById("transport_fee");
                txtPhiVanChuyen = txt_transport_fee.value;

                // Kiem tra xem quan co ton tai trong danh sach cac quan co phi hay khong
                var n_transport_fee = txtPhiVanChuyen.indexOf(name_district);
                if(txtPhiVanChuyen !== "" && n_transport_fee >= 0) {
                    fee_district(txtPhiVanChuyen,split_district[0], name_district);
                } else {
                    fee_transport_district = "NanaPet không vận chuyển tận nhà " + name_district;
                    document.getElementById("total_fee").style.color = "black";
                    document.getElementById("total_fee").innerHTML = "Chưa chọn PT vận chuyển";
                    document.getElementById("total_fee_product_transport").innerHTML = 'Thông báo sau';

                    // Luu tru phi van chuyen
                    document.getElementById("txtfeetransport").value = 'Chưa chọn PT vận chuyển';
                    document.getElementById("txttotalproductfee").value = 'Thông báo sau';
                    var fee_transport = document.getElementById("fee_transport");
                    fee_transport.innerHTML = fee_transport_district;
                }
            } else {
                fee_transport_district = "NanaPet không vận chuyển tận nhà ngoài TP Hồ Chí Minh - Vui lòng chọn phương thức khác!";
                document.getElementById("total_fee").style.color = "black";
                document.getElementById("total_fee").innerHTML = "Chưa chọn PT vận chuyển";
                document.getElementById("total_fee_product_transport").innerHTML = 'Thông báo sau';

                // Luu tru phi van chuyen
                document.getElementById("txtfeetransport").value = 'Chưa chọn PT vận chuyển';
                document.getElementById("txttotalproductfee").value = 'Thông báo sau';
                var fee_transport = document.getElementById("fee_transport");
                fee_transport.innerHTML = fee_transport_district;
            }
            $( "#accordion" ).accordion({ active: 2 });
        }
    }

    // Su kien edit nguoi nhan
    function edit_address_receiver() {
        var p_edit_receiver = document.getElementById("p_edit_receiver");
        p_edit_receiver.innerHTML = "";
        p_edit_receiver.style.display = "none";
        var check_receive = document.getElementById("check_receive");
        check_receive.disabled = false;
        document.getElementById("bt_add_new_address_receiver_1").style.display = "block";
        document.getElementById("p_agree_receiver").style.display = "none";
        document.getElementById("check_info_receive").style.display = "block";
        document.getElementById("table_info_transport").style.display = "none";
        document.getElementById("check_info_transport").style.display = "block";
        document.getElementById("table_cash_bank").style.display = "none";
        document.getElementById("check_info_cash_bank").style.display = "block";
        document.getElementById("che-bas-shopping-cart-items").style.display = "none";
        document.getElementById("che-bas-bottom-right-wrapper").style.display = "none";
        document.getElementById("contact_info").style.display = "none";
        document.getElementById("contact").style.display = "none";
        document.getElementById("p_edit_transport").style.display = "none";
        document.getElementById("p_edit_bill").style.display = "none";
        document.getElementById("bt_accept_transport").style.display = "none";
        document.getElementById("bt_accept_money").style.display = "none";
    }

    function edit_address_receiver_2() {
        var p_edit_receiver = document.getElementById("p_edit_receiver_2");
        p_edit_receiver.innerHTML = "";
        p_edit_receiver.style.display = "none";
        var check_receive = document.getElementById("check_receive");
        check_receive.disabled = false;
        document.getElementById("table_info_receiver").style.display = "none";
        document.getElementById("table_info_name_receive").style.display = "block";
        document.getElementById("table_Dia_Chi_Moi_Nguoi_Nhan").style.display = "block";
        document.getElementById("info_Country_City_District_Receive").style.display = "block";
        document.getElementById("bt_add_new_address_receiver_2").style.display = "block";
        document.getElementById("check_info_receive").style.display = "block";
        document.getElementById("table_info_transport").style.display = "none";
        document.getElementById("check_info_transport").style.display = "block";
        document.getElementById("table_cash_bank").style.display = "none";
        document.getElementById("check_info_cash_bank").style.display = "block";
        document.getElementById("che-bas-shopping-cart-items").style.display = "none";
        document.getElementById("che-bas-bottom-right-wrapper").style.display = "none";
        document.getElementById("contact_info").style.display = "none";
        document.getElementById("contact").style.display = "none";
        document.getElementById("p_edit_transport").style.display = "none";
        document.getElementById("p_edit_bill").style.display = "none";
    }

    // Bat su kien van chuyen bang motobike noi bo
    function function_transport(type_of_transport) {
        if(type_of_transport === "radio_motobike_transport") {
            document.getElementById("cell_fee_transport").style.display = "block";
            document.getElementById("cell_fee_fast_fax").style.display = "none";
            document.getElementById("cell_fee_car").style.display = "none";
            document.getElementById("cell_fee_post_house").style.display = "none";
            var radio_fast_fax_transport = document.getElementById("radio_fast_fax_transport");
            radio_fast_fax_transport.checked = false;
            var radio_car_transport = document.getElementById("radio_car_transport");
            radio_car_transport.checked = false;
            var radio_post_house_transport = document.getElementById("radio_post_house_transport");
            radio_post_house_transport.checked = false;
            // Tinh tien tu dong
            var adress_receiver = document.getElementById("p_address_receiver").innerHTML;
            var n = adress_receiver.indexOf('Hồ Chí Minh');
            // Nếu địa chỉ tại TP Hồ Chí Minh mới tính tiền vận chuyển tận nhà
            if(n > 15) {
                var m = adress_receiver.indexOf('Quận');
                if(m >= 5) {
                    var split_adress = adress_receiver.split('Quận');
                    var split_district = split_adress[1].split(' Hồ Chí Minh');
                    var name_district = "Quận" + split_district[0];
                }
                if( m < 5) {
                    var split_adress = adress_receiver.split('Huyện');
                    var split_district = split_adress[1].split(' Hồ Chí Minh');
                    var name_district = "Huyện" + split_district[0];
                }
                // Xu ly van chuyen cho cac quan co the van chuyen
                // Lay thong tin danh sach quan va tien phi tung quan
                var txt_transport_fee =document.getElementById("transport_fee");
                txtPhiVanChuyen = txt_transport_fee.value;

                // Kiem tra xem quan co ton tai trong danh sach cac quan co phi hay khong
                var n_transport_fee = txtPhiVanChuyen.indexOf(name_district);
                if(txtPhiVanChuyen !=="" && n_transport_fee >= 0) {
                    fee_district(txtPhiVanChuyen,split_district[0], name_district);
                } else {
                    fee_transport_district = "Nanapet không vận chuyển tận nhà " + name_district;
                    document.getElementById("total_fee").style.color = "black";
                    document.getElementById("total_fee").innerHTML = "Chưa chọn PT vận chuyển";
                    document.getElementById("total_fee_product_transport").innerHTML = 'Thông báo sau';

                    // Luu tru phi van chuyen
                    document.getElementById("txtfeetransport").value = 'Chưa chọn PT vận chuyển';
                    document.getElementById("txttotalproductfee").value = 'Thông báo sau';
                    var fee_transport = document.getElementById("fee_transport");
                    fee_transport.innerHTML = fee_transport_district;
                }
            } else  {
                // Không phải thành phố Hồ Chí Minh thì nanapet sẽ thông báo chưa chọn phương thức vận chuyển
                fee_transport_district = "NanaPet không vận chuyển tận nhà ngoài TP Hồ Chí Minh - Vui lòng chọn phương thức khác!";
                document.getElementById("total_fee").style.color = "black";
                document.getElementById("total_fee").innerHTML = "Chưa chọn PT vận chuyển";
                document.getElementById("total_fee_product_transport").innerHTML = 'Thông báo sau';
                // Luu tru phi van chuyen
                document.getElementById("txtfeetransport").value = 'Chưa chọn PT vận chuyển';
                document.getElementById("txttotalproductfee").value = 'Thông báo sau';
                var fee_transport = document.getElementById("fee_transport");
                fee_transport.innerHTML = fee_transport_district;
            }
        } else if(type_of_transport === "radio_fast_fax_transport") {
            document.getElementById("cell_fee_transport").style.display = "none";
            document.getElementById("cell_fee_fast_fax").style.display = "block";
            document.getElementById("cell_fee_car").style.display = "none";
            document.getElementById("cell_fee_post_house").style.display = "none";
            var radio_motobike_transport = document.getElementById("radio_motobike_transport");
            radio_motobike_transport.checked = false;
            var radio_car_transport = document.getElementById("radio_car_transport");
            radio_car_transport.checked = false;
            var radio_post_house_transport = document.getElementById("radio_post_house_transport");
            radio_post_house_transport.checked = false;
            document.getElementById("total_fee").innerHTML = "Thông báo sau";
            document.getElementById("total_fee_product_transport").innerHTML = 'Thông báo sau';

            // Luu tru phi van chuyen
            document.getElementById("txtfeetransport").value = 'Chuyển phát nhanh: Phí thông báo sau';
            document.getElementById("txttotalproductfee").value = 'Thông báo sau';
        } else if(type_of_transport === "radio_car_transport") {
            document.getElementById("cell_fee_transport").style.display = "none";
            document.getElementById("cell_fee_fast_fax").style.display = "none";
            document.getElementById("cell_fee_car").style.display = "block";
            document.getElementById("cell_fee_post_house").style.display = "none";
            var radio_motobike_transport = document.getElementById("radio_motobike_transport");
            radio_motobike_transport.checked = false;
            var radio_fast_fax_transport = document.getElementById("radio_fast_fax_transport");
            radio_fast_fax_transport.checked = false;
            var radio_post_house_transport = document.getElementById("radio_post_house_transport");
            radio_post_house_transport.checked = false;
            document.getElementById("total_fee").innerHTML = "Thông báo sau";
            document.getElementById("total_fee_product_transport").innerHTML = 'Thông báo sau';

            // Luu tru phi van chuyen
            document.getElementById("txtfeetransport").value = 'Thông qua nhà xe: Phí thông báo sau';
            document.getElementById("txttotalproductfee").value = 'Thông báo sau';
        } else {
            document.getElementById("cell_fee_transport").style.display = "none";
            document.getElementById("cell_fee_fast_fax").style.display = "none";
            document.getElementById("cell_fee_car").style.display = "none";
            document.getElementById("cell_fee_post_house").style.display = "block";
            var radio_motobike_transport = document.getElementById("radio_motobike_transport");
            radio_motobike_transport.checked = false;
            var radio_car_transport = document.getElementById("radio_car_transport");
            radio_car_transport.checked = false;
            var radio_fast_fax_transport = document.getElementById("radio_fast_fax_transport");
            radio_fast_fax_transport.checked = false;
            document.getElementById("total_fee").innerHTML = "Thông báo sau";
            document.getElementById("total_fee_product_transport").innerHTML = 'Thông báo sau';

            // Luu tru phi van chuyen
            document.getElementById("txtfeetransport").value = 'Thông qua bưu điện: Phí thông báo sau';
            document.getElementById("txttotalproductfee").value = 'Thông báo sau';
        }
    }

    String.prototype.replaceAll = function(strTarget, strSubString) {
        var strText = this;
        var intIndexOfMatch = strText.indexOf(strTarget);

        // Keep looping while an instance of the target string
        // still exists in the string.
        while (intIndexOfMatch !== -1) {
            // Relace out the current instance
            strText = strText.replace( strTarget, strSubString);
            // Get the index of any next matching substring
            intIndexOfMatch = strText.indexOf( strTarget );
        }

        // Return the updated string with ALL the target strings
        // replaced out with the new substring.
        return( strText );
    };

    function formatDollar(num) {
        var p = num.toFixed(2).split(".");
        return p[0].split("").reverse().reduce(function(acc, num, i, orig)
        {
            return  num + (i && !(i % 3) ? "," : "") + acc;
        }, "") + "." + p[1];
    }

    function fee_district(txtPhiVanChuyen,text_district_transport,text_name_transport) {
        var array_fee = txtPhiVanChuyen.split("nanapet");
        array_fee[0] = " " + array_fee[0];
        for(i = 0; i < array_fee.length; i++) {
            // Lay tien tu co so du lieu
            var n_fee = array_fee[i].indexOf(text_name_transport);
            var arr_district = array_fee[i].split("-");
            if( n_fee >= 0 && arr_district[0].length - 1 === text_name_transport.length) {
                var arr_fee = array_fee[i].split("-");
                galary_begin_price = parseFloat(arr_fee[1]);
                galary_end_price = parseFloat(arr_fee[2]);
                galary_fee = parseFloat(arr_fee[3]);

                // Lay gia mua san pham
                fee_transport_district = "";
                var total_money = document.getElementById("total_money");
                money_buy = total_money.innerHTML;
                money_buy = money_buy.replaceAll('.','');
                money_buy = money_buy.replace(' VNĐ','');
                if(parseFloat(money_buy) >= galary_begin_price && parseFloat(money_buy) <= galary_end_price) {
                    total_discount = parseFloat(document.getElementById("discount_total").innerHTML.replace('.','').replace(' VNĐ',''));
                    fee_transport_district = "Phí vận chuyển: "+ formatDollar(galary_fee).replace('.00','') + " VNĐ";
                    document.getElementById("total_fee").style.color = "black";
                    document.getElementById("total_fee").innerHTML = "+" + formatDollar(galary_fee).replace('.00','') + " VNĐ";
                    money = Math.round((parseFloat(money_buy) + galary_fee + total_discount)/1000)*1000;
                    total_money = formatDollar(money);
                    total_money = total_money.replace('.00','');
                    document.getElementById("total_fee_product_transport").innerHTML = total_money + ' VNĐ';

                    // Luu tru phi van chuyen
                    document.getElementById("txtfeetransport").value = 'Vận chuyển tận nhà ' + text_name_transport + ": "+ formatDollar(galary_fee).replace(".00","").replace(",",".")+" VNĐ";
                    document.getElementById("txttotalproductfee").value = total_money + ' VNĐ';
                    document.getElementById("discount_total_save").value = document.getElementById("discount_total").innerHTML;
                    var fee_transport = document.getElementById("fee_transport");
                    fee_transport.innerHTML = fee_transport_district;
                }
            }
        }

        if(parseFloat(money_buy) >= 1000000000) {
            fee_transport_district = 'Vận chuyển tận nhà: Thông báo sau';
            document.getElementById("total_fee").style.color = "black";
            document.getElementById("total_fee").innerHTML = "Thông báo sau";
            document.getElementById("total_fee_product_transport").innerHTML = 'Thông báo sau';

            // Luu tru phi van chuyen
            document.getElementById("txtfeetransport").value = 'Thông báo sau';
            document.getElementById("txttotalproductfee").value = 'Thông báo sau';
            var fee_transport = document.getElementById("fee_transport");
            fee_transport.innerHTML = fee_transport_district;
        }
    }

    // bt Accept khi them dia chi moi
    function bt_accept_new_address_buy() {
        // Lay thong tin Ho Ten
        var text_family_name = document.getElementById("text_family_name_buy");
        name_buyer = text_family_name.value;

        // Lay thong tin So dien
        var text_phone_buyer = document.getElementById("text_mobile_buy");
        phone_buyer = text_phone_buyer.value;

        // Lay thong tin So Nha , Duong , Phuong
        var text_number_address = document.getElementById("text_edit_number_address");
        address_buyer = text_number_address.value;
        var text_number_street = document.getElementById("text_edit_number_street");
        street_buyer = text_number_street.value;
        var text_number_ward = document.getElementById("text_edit_number_ward");
        ward_buyer = text_number_ward.value;
        ward_buyer = ward_buyer.replace("Phường","");

        // Lay thong tin Thanh pho, quan
        var selected_city_buy = document.getElementById("list_city_buy");
        text_selected_city_buy = selected_city_buy.options[selected_city_buy.selectedIndex].text;
        var selected_district_buy = document.getElementById("list_district_buy");
        text_selected_district_buy = selected_district_buy.options[selected_district_buy.selectedIndex].text;

        // Lay thong tin chung cu
        var text_address_Chung_Cu = document.getElementById("text_edit_number_address_Chung_Cu");
        address_buyer_Chung_Cu = text_address_Chung_Cu.value;
        var text_address_floor = document.getElementById("text_edit_floor_Chung_Cu");
        address_buyer_floor = text_address_floor.value;
        var text_address_room = document.getElementById("text_edit_room_Chung_Cu");
        address_buyer_room = text_address_room.value;

        if(name_buyer.trim() === ''
            || phone_buyer.trim() === ''
            || address_buyer.trim() === ''
            || street_buyer.trim() === ''
            || ward_buyer.trim() === ''
            || text_selected_city_buy.trim() === 'Chọn tỉnh thành'
            || text_selected_district_buy.trim() === 'Chọn quận huyện') {
            alert('Vui lòng cung cấp đầy đủ: Họ tên, điện thoại và địa chỉ');
        } else {
            document.getElementById("div_address_buy").style.display = "none";
            document.getElementById("table_Nhap_Dia_Chi_Moi").style.display = "none";
            document.getElementById("table_Dia_Chi_Moi").style.display = "none";
            document.getElementById("info_Country_City_District").style.display = "none";
            document.getElementById("bt_add_new_adress").style.display = "none";
            document.getElementById("bt_accept_transport").style.display = "none";
            document.getElementById("bt_accept_money").style.display = "none";
            document.getElementById("p_edit_buy").style.display = "block";
            document.getElementById("table_info_buy").style.display = "block";
            document.getElementById("p_agree").style.display = "block";
            var p_edit_buy = document.getElementById("p_edit_buy");
            p_edit_buy.innerHTML = "Sửa";

            //Hien thi thong tin nguoi nhan
            document.getElementById("check_info_buy").style.display = "none";
            document.getElementById("table_checkbox").style.display = "block";
            document.getElementById("table_info_receiver").style.display = "block";
            document.getElementById("bt_add_new_address_receiver_1").style.display = "block";
            var check_receive = document.getElementById("check_receive");
            check_receive.checked = true;

            // Hien thi thong tin xac nhan
            new_address_buyer = address_buyer.concat(' Đường ',street_buyer,' Phường '
                                                    ,ward_buyer,' '
                                                    ,text_selected_district_buy,' '
                                                    ,text_selected_city_buy);
            if(address_buyer_Chung_Cu !== "") {
                new_address_buyer = address_buyer_Chung_Cu.concat(' - ',new_address_buyer,'  ');
                chung_cu = ' Chung cư/Tòa nhà ';
                new_address_buyer = chung_cu.concat(new_address_buyer);
            }

            if(address_buyer_floor !== "") {
                new_address_buyer = address_buyer_floor.concat(new_address_buyer,' ');
                lau = 'Lầu ';
                new_address_buyer = lau.concat(new_address_buyer);
            }

            if(address_buyer_room !== "") {
                new_address_buyer = address_buyer_room.concat(' ',new_address_buyer);
                canho = 'Căn hộ ';
                new_address_buyer = canho.concat(new_address_buyer);
            }
            new_address_buyer = name_buyer.trim().concat(', ',new_address_buyer);
            var p_address_buy = document.getElementById("p_address_buy");
            p_address_buy.innerHTML = new_address_buyer;

            // Xu ly cho nguoi nhan hang
            var check_receive = document.getElementById("check_receive");
            check_receive.checked = true;

            //Xu ly cho thong tin nguoi nhan giong nguoi mua
            var p_name_receiver = document.getElementById("p_name_receiver");
            p_name_receiver.innerHTML = name_buyer;
            var txt_hoten_buyer = document.getElementById("txtHoten_Info");
            txt_hoten_buyer.innerHTML = name_buyer;
            var p_address_receiver = document.getElementById("p_address_receiver");
            p_address_receiver.innerHTML = new_address_buyer;

            // var p_cellphone = document.getElementById("p_cellphone_buy");
            var p_phone_receiver = document.getElementById("p_phone_receiver");
            p_phone_receiver.innerHTML = phone_buyer;
            var txt_dienthoai_info = document.getElementById("txtDienthoai_Info");
            txt_dienthoai_info.innerHTML = phone_buyer;
            var txtHoten = document.getElementById("txtHoten");
            txtHoten.value = name_buyer;
            var txtdienthoai = document.getElementById("txtDienthoai");
            txtdienthoai.value = phone_buyer;
            $( "#accordion" ).accordion({ active: 1});
        }
    }

    function function_bill(typeOfBill) {
        if(typeOfBill === "Cash") {
            var radio_cash = document.getElementById("radio_cash");
            radio_cash.checked = true;
            var radio_bank = document.getElementById("radio_bank");
            radio_bank.checked = false;
            document.getElementById("txttypeofcash").value = "Thanh toán tiền mặt";
        } else if (typeOfBill === "Banking") {
            document.getElementById("txttypeofcash").value = "Thanh toán chuyển khoản";
            var radio_cash = document.getElementById("radio_cash");
            radio_cash.checked = false;
            var radio_bank = document.getElementById("radio_bank");
            radio_bank.checked = true;
        }
    }

    // Bat su kien xac nhan thong tin van chuyen
    function funtion_bt_accept_transport() {
        document.getElementById("check_info_transport").style.display = "none";
        document.getElementById("p_edit_bill").style.display = "none";
        document.getElementById("table_cash_bank").style.display = "block";
        document.getElementById("bt_accept_money").style.display = "block";
        document.getElementById("radio_bank").disabled = false;
        document.getElementById("radio_cash").disabled = false;
        $("#accordion" ).accordion({ active: 3 });
        var p_edit_transport = document.getElementById("p_edit_transport");
        p_edit_transport.innerHTML = "Sửa";
        p_edit_transport.style.display = "block";
        var bt_accept_transport = document.getElementById("bt_accept_transport");
        bt_accept_transport.style.display = "none";
        var radio_motobike_transport = document.getElementById("radio_motobike_transport");
        radio_motobike_transport.disabled = true;
        var radio_fast_fax_transport = document.getElementById("radio_fast_fax_transport");
        radio_fast_fax_transport.disabled = true;
        var radio_car_transport = document.getElementById("radio_car_transport");
        radio_car_transport.disabled = true;
        var radio_post_house_transport = document.getElementById("radio_post_house_transport");
        radio_post_house_transport.disabled = true;
    }

    function funtion_edit_accept_transport() {
        var p_edit_transport = document.getElementById("p_edit_transport");
        p_edit_transport.innerHTML = "";
        p_edit_transport.style.display = "none";
        var bt_accept_transport = document.getElementById("bt_accept_transport");
        bt_accept_transport.style.display = "block";
        table_info_transport.disabled = false;
        var radio_motobike_transport = document.getElementById("radio_motobike_transport");
        radio_motobike_transport.disabled = false;
        var radio_fast_fax_transport = document.getElementById("radio_fast_fax_transport");
        radio_fast_fax_transport.disabled = false;
        var radio_car_transport = document.getElementById("radio_car_transport");
        radio_car_transport.disabled = false;
        var radio_post_house_transport = document.getElementById("radio_post_house_transport");
        radio_post_house_transport.disabled = false;
        document.getElementById("check_info_transport").style.display = "block";
        document.getElementById("p_edit_bill").style.display = "none";
        document.getElementById("table_cash_bank").style.display = "none";
        document.getElementById("bt_accept_money").style.display = "none";
        document.getElementById("check_info_cash_bank").style.display = "block";
        document.getElementById("che-bas-shopping-cart-items").style.display = "none";
        document.getElementById("che-bas-bottom-right-wrapper").style.display = "none";
        document.getElementById("contact_info").style.display = "none";
        document.getElementById("contact").style.display = "none";
    }

    function funtion_bt_accept_money() {
        var p_edit_bill = document.getElementById("p_edit_bill");
        p_edit_bill.style.display = "block";
        p_edit_bill.innerHTML = "Sửa";
        document.getElementById("radio_bank").disabled = true;
        document.getElementById("radio_cash").disabled = true;
        document.getElementById("bt_accept_money").style.display = "none";
        document.getElementById("check_info_cash_bank").style.display = "none";
        document.getElementById("che-bas-shopping-cart-items").style.display = "block";
        document.getElementById("che-bas-bottom-right-wrapper").style.display = "block";
        document.getElementById("contact_info").style.display = "block";
        document.getElementById("contact").style.display = "block";
        $( "#accordion" ).accordion({ active: 4 });
    }

    function function_edit_bill() {
        var p_edit_bill = document.getElementById("p_edit_bill");
        p_edit_bill.style.display = "none";
        p_edit_bill.innerHTML = "";
        document.getElementById("radio_bank").disabled = false;
        document.getElementById("radio_cash").disabled = false;
        document.getElementById("bt_accept_money").style.display = "block";
        document.getElementById("check_info_cash_bank").style.display = "block";
        document.getElementById("che-bas-shopping-cart-items").style.display = "none";
        document.getElementById("che-bas-bottom-right-wrapper").style.display = "none";
        document.getElementById("contact_info").style.display = "none";
        document.getElementById("contact").style.display = "none";
    }

    //Bat su kien change tren list box
    function listbox_change_address_buy() {
        if(document.getElementById("address").value !== "-1") {
            document.getElementById("table_Dia_Chi_Moi").style.display = "none";
            document.getElementById("info_Country_City_District").style.display = "none";
            document.getElementById("bt_add_new_adress").style.display = "none";
            document.getElementById("title_buy").style.display = "block";
            document.getElementById("btAcceptAdress_buy").style.display = "block";
            document.getElementById("btAdd_Address_buy").style.display = "block";
            var txtHoten = document.getElementById("txtHoten");
            txtHoten.value = document.getElementById("p_name_buy").innerHTML;
            var txtdienthoai = document.getElementById("txtDienthoai");
            txtdienthoai.value = document.getElementById("p_cellphone_buy").innerHTML;
        } else {
            //Khi click vao lua chon: Dia Chi Moi
            btAdd_Address_buy_display();
        }
    }

    function addOption(selectbox,text,value ) {
        var optn = document.createElement("OPTION");
        optn.text = text;
        optn.value = value;
        selectbox.options.add(optn);
    }

    function removeAllOptions(selectbox) {
        var i;
        for(i=selectbox.options.length-1;i>=0;i--) {
            selectbox.remove(i);
        }
    }

    //Bat su kien city duoc lua chon
    function city_selected(typeofcity, typeoflist) {
        var list_city = document.getElementById(typeofcity);
        var list_district = document.getElementById(typeoflist);
        removeAllOptions(list_district);
        if(list_city.value === "0") {
            addOption(list_district, "Chọn quận huyện","0");
        } else if(list_city.value === "1") {
            //TP Ha Noi
            addOption(list_district,"Chọn quận huyện","0");
            addOption(list_district,"Quận Ba Đình", "1");
            addOption(list_district,"Quận Hoàn Kiếm", "2");
            addOption(list_district,"Quận Hai Bà Trưng", "3");
            addOption(list_district,"Quận Đống Đa", "4");
            addOption(list_district,"Quận Tây Hồ", "5");
            addOption(list_district,"Quận Cầu Giấy", "6");
            addOption(list_district,"Quận Thanh Xuân", "7");
            addOption(list_district,"Quận Hoàng Mai", "8");
            addOption(list_district,"Quận Long Biên", "9");
            addOption(list_district,"Huyện Từ Liêm", "10");
            addOption(list_district,"Huyện Thanh Trì", "11");
            addOption(list_district,"Huyện Gia Lâm", "12");
            addOption(list_district,"Huyện Đông Anh", "13");
            addOption(list_district,"Huyện Sóc Sơn", "14");
            addOption(list_district,"Quận Hà Đông", "15");
            addOption(list_district,"Thị xã Sơn Tây", "16");
            addOption(list_district,"Huyện Ba Vì", "17");
            addOption(list_district,"Huyện Phúc Thọ", "18");
            addOption(list_district,"Huyện Thạch Thất", "19");
            addOption(list_district,"Huyện Quốc Oai", "20");
            addOption(list_district,"Huyện Chương Mỹ", "21");
            addOption(list_district,"Huyện Đan Phượng", "22");
            addOption(list_district,"Huyện Hoài Đức", "23");
            addOption(list_district,"Huyện Thanh Oai", "24");
            addOption(list_district,"Huyện Mỹ Đức", "25");
            addOption(list_district,"Huyện Ứng Hoà", "26");
            addOption(list_district,"Huyện Thường Tín", "27");
            addOption(list_district,"Huyện Phú Xuyên", "28");
            addOption(list_district,"Huyện Mê Linh", "29");
        } else if(list_city.value === "2") {
            // TP HCM
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "Quận 1" ,"1");
            addOption(list_district, "Quận 2" ,"2");
            addOption(list_district, "Quận 3" ,"3");
            addOption(list_district, "Quận 4" ,"4");
            addOption(list_district, "Quận 5" ,"5");
            addOption(list_district, "Quận 6" ,"6");
            addOption(list_district, "Quận 7" ,"7");
            addOption(list_district, "Quận 8" ,"8");
            addOption(list_district, "Quận 9" ,"9");
            addOption(list_district, "Quận 10","10");
            addOption(list_district, "Quận 11","11");
            addOption(list_district, "Quận 12","12");
            addOption(list_district, "Quận Thủ Đức", "13");
            addOption(list_district, "Quận Gò Vấp", "14");
            addOption(list_district, "Quận Bình Thạnh", "15");
            addOption(list_district, "Quận Tân Bình", "16");
            addOption(list_district, "Quận Tân Phú", "17");
            addOption(list_district, "Quận Phú Nhuận", "18");
            addOption(list_district, "Quận Bình Tân", "19");
            addOption(list_district, "Huyện Củ Chi", "20");
            addOption(list_district, "Huyện Hóc Môn", "21");
            addOption(list_district, "Huyện Bình Chánh", "22");
            addOption(list_district, "Huyện Nhà Bè", "23");
            addOption(list_district, "Huyện Cần Giờ", "24");
        } else if(list_city.value === "3") {
            // Tinh Ha Giang
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Hà Giang","1");
            addOption(list_district, "Huyện Đồng Văn","2");
            addOption(list_district, "Huyện Mèo Vạc","3");
            addOption(list_district, "Huyện Yên Minh","4");
            addOption(list_district, "Huyện Quản Bạ","5");
            addOption(list_district, "Huyện Vị Xuyên","6");
            addOption(list_district, "Huyện Bắc Mê","7");
            addOption(list_district, "Huyện Hoàng Su Phì","8");
            addOption(list_district, "Huyện Xín Mần","9");
            addOption(list_district, "Huyện Bắc Quang","10");
            addOption(list_district, "Huyện Quang Bình","11");
        } else if(list_city.value === "4") {
            // Tinh Cao Bang
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "Thị xã Cao Bằng","1");
            addOption(list_district, "Huyện Bảo Lạc","2");
            addOption(list_district, "Huyện Thông Nông","3");
            addOption(list_district, "Huyện Hà Quảng","4");
            addOption(list_district, "Huyện Trà Lĩnh","5");
            addOption(list_district, "Huyện Trùng Khánh","6");
            addOption(list_district, "Huyện Nguyên Bình","7");
            addOption(list_district, "Huyện Hoà An","8");
            addOption(list_district, "Huyện Quảng Uyên","9");
            addOption(list_district, "Huyện Thạch An","10");
            addOption(list_district, "Huyện Hạ Lang","11");
            addOption(list_district, "Huyện Bảo Lâm","12");
            addOption(list_district, "Huyện Phục Hoà","13");
        } else if(list_city.value === "5") {
            // Tinh Bac Kan
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "Thị xã Bắc Kạn","1");
            addOption(list_district, "Huyện Chợ Đồn","2");
            addOption(list_district, "Huyện Bạch Thông","3");
            addOption(list_district, "Huyện Na Rì","4");
            addOption(list_district, "Huyện Ngân Sơn","5");
            addOption(list_district, "Huyện Ba Bể","6");
            addOption(list_district, "Huyện Chợ Mới","7");
            addOption(list_district, "Huyện Pác Nặm","8");
        } else if(list_city.value === "6") {
            // Tinh Tuyen Quang
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Tuyên Quang","1");
            addOption(list_district, "Huyện Lâm Bình","2");
            addOption(list_district, "Huyện Na Hang","3");
            addOption(list_district, "Huyện Chiêm Hoá","4");
            addOption(list_district, "Huyện Hàm Yên","5");
            addOption(list_district, "Huyện Yên Sơn","6");
            addOption(list_district, "Huyện Sơn Dương","7");
        } else if(list_city.value === "7") {
            // Tinh LaoCai
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Lào Cai","1");
            addOption(list_district, "Huyện Xi Ma Cai","2");
            addOption(list_district, "Huyện Bát Xát","3");
            addOption(list_district, "Huyện Bảo Thắng","4");
            addOption(list_district, "Huyện Sa Pa","5");
            addOption(list_district, "Huyện Văn Bàn","6");
            addOption(list_district, "Huyện Bảo Yên","7");
            addOption(list_district, "Huyện Bắc Hà","8");
            addOption(list_district, "Huyện Mường Khương","9");
        } else if(list_city.value === "8") {
            // Tinh Dien Bien
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Điện Biên Phủ","1");
            addOption(list_district, "Thị xã Mường Lay","2");
            addOption(list_district, "Huyện Điện Biên","3");
            addOption(list_district, "Huyện Tuần Giáo","4");
            addOption(list_district, "Huyện Mường Chà","5");
            addOption(list_district, "Huyện Tủa Chùa","6");
            addOption(list_district, "Huyện Điện Biên Đông","7");
            addOption(list_district, "Huyện Mường Nhé","8");
            addOption(list_district, "Huyện Mường Ảng","9");
        } else if(list_city.value === "9") {
            // Tinh LaiChau
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "Thị xã Lai Châu","1");
            addOption(list_district, "Huyện Tam Đường","2");
            addOption(list_district, "Huyện Phong Thổ","3");
            addOption(list_district, "Huyện Sìn Hồ","4");
            addOption(list_district, "Huyện Mường Tè","5");
            addOption(list_district, "Huyện Than Uyên","6");
            addOption(list_district, "Huyện Tân Uyên","7");
            addOption(list_district, "Huyện Nậm Nhùn","8");
        } else if(list_city.value === "10") {
            // Tinh Son La
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Sơn La","1");
            addOption(list_district, "Huyện Quỳnh Nhai","2");
            addOption(list_district, "Huyện Mường La","3");
            addOption(list_district, "Huyện Thuận Châu","4");
            addOption(list_district, "Huyện Bắc Yên","5");
            addOption(list_district, "Huyện Phù Yên","6");
            addOption(list_district, "Huyện Mai Sơn","7");
            addOption(list_district, "Huyện Yên Châu","8");
            addOption(list_district, "Huyện Sông Mã","9");
            addOption(list_district, "Huyện Mộc Châu","10");
            addOption(list_district, "Huyện Sốp Cộp","11");
        } else if(list_city.value === "11") {
            // Tinh Yen Bai
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Yên Bái","1");
            addOption(list_district, "Thị xã Nghĩa Lộ","2");
            addOption(list_district, "Huyện Văn Yên","3");
            addOption(list_district, "Huyện Yên Bình","4");
            addOption(list_district, "Huyện Mù Cang Chải","5");
            addOption(list_district, "Huyện Văn Chấn","6");
            addOption(list_district, "Huyện Trấn Yên","7");
            addOption(list_district, "Huyện Trạm Tấu","8");
            addOption(list_district, "Huyện Lục Yên","9");
        } else if(list_city.value === "12") {
            // Tinh Hoa Binh
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Hoà Bình","1");
            addOption(list_district, "Huyện Đà Bắc","2");
            addOption(list_district, "Huyện Mai Châu","3");
            addOption(list_district, "Huyện Tân Lạc","4");
            addOption(list_district, "Huyện Lạc Sơn","5");
            addOption(list_district, "Huyện Kỳ Sơn","6");
            addOption(list_district, "Huyện Lương Sơn","7");
            addOption(list_district, "Huyện Kim Bôi","8");
            addOption(list_district, "Huyện Lạc Thuỷ","9");
            addOption(list_district, "Huyện Yên Thuỷ","10");
            addOption(list_district, "Huyện Cao Phong","11");
        } else if(list_city.value === "13") {
            // Tinh Thai Nguyen
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Thái Nguyên","1");
            addOption(list_district, "Thị xã Sông Công","2");
            addOption(list_district, "Huyện Định Hoá","3");
            addOption(list_district, "Huyện Phú Lương","4");
            addOption(list_district, "Huyện Võ Nhai","5");
            addOption(list_district, "Huyện Đại Từ","6");
            addOption(list_district, "Huyện Đồng Hỷ","7");
            addOption(list_district, "Huyện Phú Bình","8");
            addOption(list_district, "Huyện Phổ Yên","9");
        } else if(list_city.value === "14") {
            // Tinh Lang Son
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Lạng Sơn","1");
            addOption(list_district, "Huyện Tràng Định","2");
            addOption(list_district, "Huyện Bình Gia","3");
            addOption(list_district, "Huyện Văn Lãng","4");
            addOption(list_district, "Huyện Bắc Sơn","5");
            addOption(list_district, "Huyện Văn Quan","6");
            addOption(list_district, "Huyện Cao Lộc	","7");
            addOption(list_district, "Huyện Lộc Bình","8");
            addOption(list_district, "Huyện Chi Lăng","9");
            addOption(list_district, "Huyện Đình Lập","10");
            addOption(list_district, "Huyện Hữu Lũng","11");
        } else if(list_city.value === "15") {
            // Tinh Quang Ninh
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Hạ Long","1");
            addOption(list_district, "TP. Cẩm Phả","2");
            addOption(list_district, "TP. Uông Bí","3");
            addOption(list_district, "TP. Móng Cái","4");
            addOption(list_district, "Huyện Bình Liêu","5");
            addOption(list_district, "Huyện Đầm Hà","6");
            addOption(list_district, "Huyện Hải Hà","7");
            addOption(list_district, "Huyện Tiên Yên","8");
            addOption(list_district, "Huyện Ba Chẽ","9");
            addOption(list_district, "Huyện Đông Triều","10");
            addOption(list_district, "Huyện Yên Hưng","11");
            addOption(list_district, "Huyện Hoành Bồ","12");
            addOption(list_district, "Huyện Vân Đồn","13");
            addOption(list_district, "Huyện Cô Tô","14");
        } else if(list_city.value === "16") {
            // Tinh Bac Giang
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Bắc Giang","1");
            addOption(list_district, "Huyện Yên Thế","2");
            addOption(list_district, "Huyện Lục Ngạn","3");
            addOption(list_district, "Huyện Sơn Động","4");
            addOption(list_district, "Huyện Lục Nam","5");
            addOption(list_district, "Huyện Tân Yên","6");
            addOption(list_district, "Huyện Hiệp Hoà","7");
            addOption(list_district, "Huyện Lạng Giang","8");
            addOption(list_district, "Huyện Việt Yên","9");
            addOption(list_district, "Huyện Yên Dũng","10");
        } else if(list_city.value === "17") {
            // Tinh Phu Tho
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Việt Trì","1");
            addOption(list_district, "Thị xã Phú Thọ","2");
            addOption(list_district, "Huyện Đoan Hùng","3");
            addOption(list_district, "Huyện Thanh Ba","4");
            addOption(list_district, "Huyện Hạ Hoà","5");
            addOption(list_district, "Huyện Cẩm Khê","6");
            addOption(list_district, "Huyện Yên Lập","7");
            addOption(list_district, "Huyện Thanh Sơn","8");
            addOption(list_district, "Huyện Phù Ninh","9");
            addOption(list_district, "Huyện Lâm Thao","10");
            addOption(list_district, "Huyện Tam Nông","11");
            addOption(list_district, "Huyện Thanh Thủy","12");
            addOption(list_district, "Huyện Tân Sơn","13");
        } else if(list_city.value === "18") {
            // Tinh Vinh Phuc
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Vĩnh Yên","1");
            addOption(list_district, "Huyện Tam Dương","2");
            addOption(list_district, "Huyện Lập Thạch","3");
            addOption(list_district, "Huyện Vĩnh Tường","4");
            addOption(list_district, "Huyện Yên Lạc","5");
            addOption(list_district, "Huyện Bình Xuyên","6");
            addOption(list_district, "Huyện Sông Lô	","7");
            addOption(list_district, "Thị xã Phúc Yên","8");
            addOption(list_district, "Huyện Tam Đảo","9");
        } else if(list_city.value === "19") {
            // Tinh Bac Ninh
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Bắc Ninh","1");
            addOption(list_district, "Huyện Yên Phong","2");
            addOption(list_district, "Huyện Quế Võ","3");
            addOption(list_district, "Huyện Tiên Du","4");
            addOption(list_district, "Thị xã Từ Sơn	","5");
            addOption(list_district, "Huyện Thuận Thành","6");
            addOption(list_district, "Huyện Gia Bình","7");
            addOption(list_district, "Huyện Lương Tài","8");
        } else if(list_city.value === "20") {
            // Tinh Hai Duong
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Hải Dương","1");
            addOption(list_district, "Thị xã Chí Linh","2");
            addOption(list_district, "Huyện Nam Sách","3");
            addOption(list_district, "Huyện Kinh Môn","4");
            addOption(list_district, "Huyện Gia Lộc","5");
            addOption(list_district, "Huyện Tứ Kỳ","6");
            addOption(list_district, "Huyện Thanh Miện","7");
            addOption(list_district, "Huyện Ninh Giang","8");
            addOption(list_district, "Huyện Cẩm Giàng","9");
            addOption(list_district, "Huyện Thanh Hà","10");
            addOption(list_district, "Huyện Kim Thành","11");
            addOption(list_district, "Huyện Bình Giang","12");
        } else if(list_city.value === "21") {
            // TP Hai Phong
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "Quận Hồng Bàng","1");
            addOption(list_district, "Quận Lê Chân","2");
            addOption(list_district, "Quận Ngô Quyền","3");
            addOption(list_district, "Quận Kiến An","4");
            addOption(list_district, "Quận Hải An","5");
            addOption(list_district, "Quận Đồ Sơn","6");
            addOption(list_district, "Huyện An Lão","7");
            addOption(list_district, "Huyện Kiến Thụy","8");
            addOption(list_district, "Huyện Thủy Nguyên","9");
            addOption(list_district, "Huyện An Dương","10");
            addOption(list_district, "Huyện Tiên Lãng","11");
            addOption(list_district, "Huyện Vĩnh Bảo","12");
            addOption(list_district, "Huyện Cát Hải","13");
            addOption(list_district, "Huyện Bạch Long Vĩ","14");
            addOption(list_district, "Quận Dương Kinh","15");
        } else if(list_city.value === "22") {
            // Tinh Hung Yen
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Hưng Yên","1");
            addOption(list_district, "Huyện Kim Động","2");
            addOption(list_district, "Huyện Ân Thi","3");
            addOption(list_district, "Huyện Khoái Châu","4");
            addOption(list_district, "Huyện Yên Mỹ","5");
            addOption(list_district, "Huyện Tiên Lữ","6");
            addOption(list_district, "Huyện Phù Cừ","7");
            addOption(list_district, "Huyện Mỹ Hào","8");
            addOption(list_district, "Huyện Văn Lâm","9");
            addOption(list_district, "Huyện Văn Giang","10");
        } else if(list_city.value === "23") {
            // Tinh Thai Binh
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Thái Bình","1");
            addOption(list_district, "Huyện Quỳnh Phụ","2");
            addOption(list_district, "Huyện Hưng Hà","3");
            addOption(list_district, "Huyện Đông Hưng","4");
            addOption(list_district, "Huyện Vũ Thư","5");
            addOption(list_district, "Huyện Kiến Xương","6");
            addOption(list_district, "Huyện Tiền Hải","7");
            addOption(list_district, "Huyện Thái Thuỵ","8");
        } else if(list_city.value === "24") {
            // Tinh Ha Nam
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Phủ Lý","1");
            addOption(list_district, "Huyện Duy Tiên","2");
            addOption(list_district, "Huyện Kim Bảng","3");
            addOption(list_district, "Huyện Lý Nhân","4");
            addOption(list_district, "Huyện Thanh Liêm","5");
            addOption(list_district, "Huyện Bình Lục","6");
        } else if(list_city.value === "25") {
            // Tinh Nam Dinh
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Nam Định","1");
            addOption(list_district, "Huyện Mỹ Lộc","2");
            addOption(list_district, "Huyện Xuân Trường","3");
            addOption(list_district, "Huyện Giao Thủy","4");
            addOption(list_district, "Huyện Ý Yên","5");
            addOption(list_district, "Huyện Vụ Bản","6");
            addOption(list_district, "Huyện Nam Trực","7");
            addOption(list_district, "Huyện Trực Ninh","8");
            addOption(list_district, "Huyện Nghĩa Hưng","9");
            addOption(list_district, "Huyện Hải Hậu","10");
        } else if(list_city.value === "26") {
            // Tinh Ninh Binh
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Ninh Bình","1");
            addOption(list_district, "Thị xã Tam Điệp","2");
            addOption(list_district, "Huyện Nho Quan","3");
            addOption(list_district, "Huyện Gia Viễn","4");
            addOption(list_district, "Huyện Hoa Lư","5");
            addOption(list_district, "Huyện Yên Mô","6");
            addOption(list_district, "Huyện Kim Sơn","7");
            addOption(list_district, "Huyện Yên Khánh","8");
        } else if(list_city.value === "27") {
            // Tinh Thanh Hoa
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Thanh Hoá","1");
            addOption(list_district, "Thị xã Bỉm Sơn","2");
            addOption(list_district, "Thị xã Sầm Sơn","3");
            addOption(list_district, "Huyện Quan Hoá","4");
            addOption(list_district, "Huyện Quan Sơn","5");
            addOption(list_district, "Huyện Mường Lát","6");
            addOption(list_district, "Huyện Bá Thước","7");
            addOption(list_district, "Huyện Thường Xuân","8");
            addOption(list_district, "Huyện Như Xuân","9");
            addOption(list_district, "Huyện Như Thanh","10");
            addOption(list_district, "Huyện Lang Chánh","11");
            addOption(list_district, "Huyện Ngọc Lặc","12");
            addOption(list_district, "Huyện Thạch Thành","13");
            addOption(list_district, "Huyện Cẩm Thủy","14");
            addOption(list_district, "Huyện Thọ Xuân","15");
            addOption(list_district, "Huyện Vĩnh Lộc","16");
            addOption(list_district, "Huyện Thiệu Hoá","17");
            addOption(list_district, "Huyện Triệu Sơn","18");
            addOption(list_district, "Huyện Nông Cống","19");
            addOption(list_district, "Huyện Đông Sơn","20");
            addOption(list_district, "Huyện Hà Trung","21");
            addOption(list_district, "Huyện Hoằng Hoá","22");
            addOption(list_district, "Huyện Nga Sơn","23");
            addOption(list_district, "Huyện Hậu Lộc","24");
            addOption(list_district, "Huyện Quảng Xương","25");
            addOption(list_district, "Huyện Tĩnh Gia","26");
            addOption(list_district, "Huyện Yên Định","27");
        } else if(list_city.value === "28") {
            // Tinh Nghe An
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Vinh","1");
            addOption(list_district, "Thị xã Cửa Lò","2");
            addOption(list_district, "Huyện Quỳ Châu","3");
            addOption(list_district, "Huyện Quỳ Hợp","4");
            addOption(list_district, "Huyện Nghĩa Đàn","5");
            addOption(list_district, "Huyện Quỳnh Lưu","6");
            addOption(list_district, "Huyện Kỳ Sơn","7");
            addOption(list_district, "Huyện Tương Dương","8");
            addOption(list_district, "Huyện Con Cuông","9");
            addOption(list_district, "Huyện Tân Kỳ","10");
            addOption(list_district, "Huyện Yên Thành","11");
            addOption(list_district, "Huyện Diễn Châu","12");
            addOption(list_district, "Huyện Anh Sơn","13");
            addOption(list_district, "Huyện Đô Lương","14");
            addOption(list_district, "Huyện Thanh Chương","15");
            addOption(list_district, "Huyện Nghi Lộc","16");
            addOption(list_district, "Huyện Nam Đàn","17");
            addOption(list_district, "Huyện Hưng Nguyên","18");
            addOption(list_district, "Huyện Quế Phong","19");
            addOption(list_district, "Thị xã Thái Hòa","20");
        } else if(list_city.value === "29") {
            // Tinh Ha Tinh
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Hà Tĩnh","1");
            addOption(list_district, "Thị xã Hồng Lĩnh","2");
            addOption(list_district, "Huyện Hương Sơn","3");
            addOption(list_district, "Huyện Đức Thọ","4");
            addOption(list_district, "Huyện Nghi Xuân","5");
            addOption(list_district, "Huyện Can Lộc","6");
            addOption(list_district, "Huyện Hương Khê","7");
            addOption(list_district, "Huyện Thạch Hà","8");
            addOption(list_district, "Huyện Cẩm Xuyên","9");
            addOption(list_district, "Huyện Kỳ Anh","10");
            addOption(list_district, "Huyện Vũ Quang","11");
            addOption(list_district, "Huyện Lộc Hà","12");
        } else if(list_city.value === "30") {
            // Tinh Quang Binh
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Đồng Hới","1");
            addOption(list_district, "Huyện Tuyên Hoá","2");
            addOption(list_district, "Huyện Minh Hoá","3");
            addOption(list_district, "Huyện Quảng Trạch","4");
            addOption(list_district, "Huyện Bố Trạch","5");
            addOption(list_district, "Huyện Quảng Ninh","6");
            addOption(list_district, "Huyện Lệ Thuỷ","7");
        } else if(list_city.value === "31") {
            // Tinh Quang Tri
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Đông Hà","1");
            addOption(list_district, "Thị xã Quảng Trị","2");
            addOption(list_district, "Huyện Vĩnh Linh","3");
            addOption(list_district, "Huyện Gio Linh","4");
            addOption(list_district, "Huyện Cam Lộ","5");
            addOption(list_district, "Huyện Triệu Phong","6");
            addOption(list_district, "Huyện Hải Lăng","7");
            addOption(list_district, "Huyện Hướng Hóa","8");
            addOption(list_district, "Huyện Đăk Rông","9");
            addOption(list_district, "Huyện đảo Cồn Cỏ","10");
        } else if(list_city.value === "32") {
            // Tinh Thua Thien Hue
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Huế","1");
            addOption(list_district, "Huyện Phong Điền","2");
            addOption(list_district, "Huyện Quảng Điền","3");
            addOption(list_district, "Huyện Hương Trà","4");
            addOption(list_district, "Huyện Phú Vang","5");
            addOption(list_district, "Huyện Hương Thủy","6");
            addOption(list_district, "Huyện Phú Lộc","7");
            addOption(list_district, "Huyện Nam Đông","8");
            addOption(list_district, "Huyện A Lưới","9");
        } else if(list_city.value === "33") {
            // Thanh Pho Da Nang
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "Quận Hải Châu","1");
            addOption(list_district, "Quận Thanh Khê","2");
            addOption(list_district, "Quận Sơn Trà","3");
            addOption(list_district, "Quận Ngũ Hành Sơn","4");
            addOption(list_district, "Quận Liên Chiểu","5");
            addOption(list_district, "Huyện Hoà Vang","6");
            addOption(list_district, "Quận Cẩm Lệ","7");
        } else if(list_city.value === "34") {
            // Tinh Quang Nam
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Tam Kỳ","1");
            addOption(list_district, "TP. Hội An","2");
            addOption(list_district, "Huyện Nông Sơn","3");
            addOption(list_district, "Huyện Duy Xuyên","4");
            addOption(list_district, "Huyện Điện Bàn","5");
            addOption(list_district, "Huyện Đại Lộc","6");
            addOption(list_district, "Huyện Quế Sơn","7");
            addOption(list_district, "Huyện Hiệp Đức","8");
            addOption(list_district, "Huyện Thăng Bình","9");
            addOption(list_district, "Huyện Núi Thành","10");
            addOption(list_district, "Huyện Tiên Phước","11");
            addOption(list_district, "Huyện Bắc Trà My","12");
            addOption(list_district, "Huyện Đông Giang","13");
            addOption(list_district, "Huyện Nam Giang","14");
            addOption(list_district, "Huyện Phước Sơn","15");
            addOption(list_district, "Huyện Nam Trà My","16");
            addOption(list_district, "Huyện Tây Giang","17");
            addOption(list_district, "Huyện Phú Ninh","18");
            addOption(list_district, "Huyện Nông Sơn","19");
        } else if(list_city.value === "35") {
            // Tinh Quang Ngai
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Quảng Ngãi","1");
            addOption(list_district, "Huyện Lý Sơn","2");
            addOption(list_district, "Huyện Bình Sơn","3");
            addOption(list_district, "Huyện Trà Bồng","4");
            addOption(list_district, "Huyện Sơn Tịnh","5");
            addOption(list_district, "Huyện Sơn Hà","6");
            addOption(list_district, "Huyện Tư Nghĩa","7");
            addOption(list_district, "Huyện Nghĩa Hành","8");
            addOption(list_district, "Huyện Minh Long","9");
            addOption(list_district, "Huyện Mộ Đức","10");
            addOption(list_district, "Huyện Đức Phổ","11");
            addOption(list_district, "Huyện Ba Tơ","12");
            addOption(list_district, "Huyện Sơn Tây","13");
            addOption(list_district, "Huyện Tây Trà","14");
        }  else if(list_city.value === "36") {
            // Tinh Binh Dinh
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Quy Nhơn","1");
            addOption(list_district, "Huyện An Lão","2");
            addOption(list_district, "Huyện Hoài Ân","3");
            addOption(list_district, "Huyện Hoài Nhơn","4");
            addOption(list_district, "Huyện Phù Mỹ","5");
            addOption(list_district, "Huyện Phù Cát","6");
            addOption(list_district, "Huyện Vĩnh Thạnh","7");
            addOption(list_district, "Huyện Tây Sơn","8");
            addOption(list_district, "Huyện Vân Canh","9");
            addOption(list_district, "Huyện An Nhơn","10");
            addOption(list_district, "Huyện Tuy Phước","11");
        } else if(list_city.value === "37") {
            // Tinh Phu Yen
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Tuy Hoà","0");
            addOption(list_district, "Huyện Đồng Xuân","0");
            addOption(list_district, "Thị xã Sông Cầu","0");
            addOption(list_district, "Huyện Tuy An","0");
            addOption(list_district, "Huyện Sơn Hoà","0");
            addOption(list_district, "Huyện Sông Hinh","0");
            addOption(list_district, "Huyện Đông Hoà","0");
            addOption(list_district, "Huyện Phú Hoà","0");
            addOption(list_district, "Huyện Tây Hoà","0");
        } else if(list_city.value === "38") {
            // Tinh Khanh Hoa
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Nha Trang","1");
            addOption(list_district, "Huyện Vạn Ninh","2");
            addOption(list_district, "Huyện Ninh Hoà","3");
            addOption(list_district, "Huyện Diên Khánh","4");
            addOption(list_district, "Huyện Khánh Vĩnh","5");
            addOption(list_district, "Thị xã Cam Ranh","6");
            addOption(list_district, "Huyện Khánh Sơn","7");
            addOption(list_district, "Huyện đảo Trường Sa","8");
            addOption(list_district, "Huyện Cam Lâm","9");
        } else if(list_city.value === "39") {
            // Tinh Ninh Thuan
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Phan Rang -Tháp Chàm","1");
            addOption(list_district, "Huyện Ninh Sơn","2");
            addOption(list_district, "Huyện Ninh Hải","3");
            addOption(list_district, "Huyện Ninh Phước","4");
            addOption(list_district, "Huyện Bác Ái","5");
            addOption(list_district, "Huyện Thuận Bắc","6");
            addOption(list_district, "Huyện Thuận Nam","7");
        } else if(list_city.value === "40") {
            // Tinh Binh Thuan
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Phan Thiết","1");
            addOption(list_district, "Huyện Tuy Phong","2");
            addOption(list_district, "Huyện Bắc Bình","3");
            addOption(list_district, "H. Hàm Thuận Bắc","4");
            addOption(list_district, "H. Hàm Thuận Nam","5");
            addOption(list_district, "Huyện Hàm Tân","6");
            addOption(list_district, "Huyện Đức Linh","7");
            addOption(list_district, "Huyện Tánh Linh","8");
            addOption(list_district, "Huyện đảo Phú Quý","9");
            addOption(list_district, "Thị xã La Gi","10");
        } else if(list_city.value === "41") {
            // Tinh Kon Tum
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. KonTum","1");
            addOption(list_district, "Huyện Đăk Glei","2");
            addOption(list_district, "Huyện Ngọc Hồi","3");
            addOption(list_district, "Huyện Đăk Tô","4");
            addOption(list_district, "Huyện Sa Thầy","5");
            addOption(list_district, "Huyện Kon Plong","6");
            addOption(list_district, "Huyện Đăk Hà","7");
            addOption(list_district, "Huyện Kon Rẫy","8");
            addOption(list_district, "Huyện Tu Mơ Rông","9");
        } else if(list_city.value === "42") {
            // Tinh Gia Lai
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Pleiku","1");
            addOption(list_district, "Huyện Chư Păh","2");
            addOption(list_district, "Huyện Mang Yang","3");
            addOption(list_district, "Huyện Kbang","4");
            addOption(list_district, "Thị xã An Khê","5");
            addOption(list_district, "Huyện Kông Chro","6");
            addOption(list_district, "Huyện Đức Cơ","7");
            addOption(list_district, "Huyện Chư Prông","8");
            addOption(list_district, "Huyện Chư Sê","9");
            addOption(list_district, "Thị xã Ayunpa","10");
            addOption(list_district, "Huyện Krông Pa","11");
            addOption(list_district, "Huyện Ia Grai","12");
            addOption(list_district, "Huyện Đăk Đoa","13");
            addOption(list_district, "Huyện Ia Pa","14");
            addOption(list_district, "Huyện Đăk Pơ","15");
            addOption(list_district, "Huyện Phú Thiện","16");
            addOption(list_district, "Huyện Chư Pưh","17");
        } else if(list_city.value === "43") {
            // Tinh Dak Lak
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Buôn Ma Thuột","1");
            addOption(list_district, "Huyện Ea H Leo","2");
            addOption(list_district, "Huyện Krông Buk","3");
            addOption(list_district, "Huyện Krông Năng","4");
            addOption(list_district, "Huyện Ea Súp","5");
            addOption(list_district, "Huyện Cư M’gar","6");
            addOption(list_district, "Huyện Krông Pắc","7");
            addOption(list_district, "Huyện Ea Kar","8");
            addOption(list_district, "Huyện M'Đrăk","9");
            addOption(list_district, "Huyện Krông Ana","10");
            addOption(list_district, "Huyện Krông Bông","11");
            addOption(list_district, "Huyện Lăk","12");
            addOption(list_district, "Huyện Buôn Đôn","13");
            addOption(list_district, "Huyện Cư Kuin","14");
            addOption(list_district, "Thị xã Buôn Hồ","15");
        } else if(list_city.value === "44") {
            // Tinh Dak Nong
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "Thị xã Gia Nghĩa","1");
            addOption(list_district, "Huyện Đắk R’Lấp","2");
            addOption(list_district, "Huyện Đắk Mil","3");
            addOption(list_district, "Huyện Cư Jút","4");
            addOption(list_district, "Huyện Đắk Song","5");
            addOption(list_district, "Huyện Krông Nô","6");
            addOption(list_district, "Huyện Đắk GLong","7");
            addOption(list_district, "Huyện Tuy Đức","8");
        } else if(list_city.value === "45") {
            // Tinh Lam Dong
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Đà Lạt","1");
            addOption(list_district, "Thị xã Bảo Lộc","2");
            addOption(list_district, "Huyện Đức Trọng","3");
            addOption(list_district, "Huyện Di Linh","4");
            addOption(list_district, "Huyện Đơn Dương","5");
            addOption(list_district, "Huyện Lạc Dương","6");
            addOption(list_district, "Huyện Đạ Huoai","7");
            addOption(list_district, "Huyện Đạ Tẻh","8");
            addOption(list_district, "Huyện Cát Tiên","9");
            addOption(list_district, "Huyện Lâm Hà","10");
            addOption(list_district, "Huyện Bảo Lâm","11");
            addOption(list_district, "Huyện Đam Rông","12");
        } else if(list_city.value === "46") {
            // Tinh Binh Phuoc
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "Thị xã Đồng Xoài","1");
            addOption(list_district, "Huyện Đồng Phú","2");
            addOption(list_district, "Huyện Chơn Thành","3");
            addOption(list_district, "Huyện Bình Long","4");
            addOption(list_district, "Huyện Lộc Ninh","5");
            addOption(list_district, "Huyện Bù Đốp","6");
            addOption(list_district, "Huyện Phước Long","7");
            addOption(list_district, "Huyện Bù Đăng","8");
            addOption(list_district, "Huyện Hớn Quản","9");
            addOption(list_district, "Huyện Bù Gia Mập","10");
        } else if(list_city.value === "47") {
            // Tinh Tay Ninh
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "Thị xã Tây Ninh","1");
            addOption(list_district, "Huyện Tân Biên","2");
            addOption(list_district, "Huyện Tân Châu","3");
            addOption(list_district, "H. Dương Minh Châu","4");
            addOption(list_district, "Huyện Châu Thành","5");
            addOption(list_district, "Huyện Hòa Thành","6");
            addOption(list_district, "Huyện Bến Cầu","7");
            addOption(list_district, "Huyện Gò Dầu","8");
            addOption(list_district, "Huyện Trảng Bàng","9");
        } else if(list_city.value === "48") {
            // Tinh Binh Duong
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "Thị xã Thủ Dầu Một","1");
            addOption(list_district, "Huyện Bến Cát","2");
            addOption(list_district, "Huyện Tân Uyên","3");
            addOption(list_district, "Huyện Thuận An","4");
            addOption(list_district, "Huyện Dĩ An","5");
            addOption(list_district, "Huyện Phú Giáo","6");
            addOption(list_district, "Huyện Dầu Tiếng","7");
        } else if(list_city.value === "49") {
            // Tinh Dong Nai
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Biên Hoà","1");
            addOption(list_district, "Huyện Vĩnh Cửu","2");
            addOption(list_district, "Huyện Tân Phú","3");
            addOption(list_district, "Huyện Định Quán","4");
            addOption(list_district, "Huyện Thống Nhất","5");
            addOption(list_district, "Thị xã Long Khánh","6");
            addOption(list_district, "Huyện Xuân Lộc","7");
            addOption(list_district, "Huyện Long Thành","8");
            addOption(list_district, "Huyện Nhơn Trạch","9");
            addOption(list_district, "Huyện Trảng Bom","10");
            addOption(list_district, "Huyện Cẩm Mỹ","11");
        } else if(list_city.value === "50") {
            // Tinh Vung Tau
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Vũng Tàu","1");
            addOption(list_district, "Thị xã Bà Rịa","2");
            addOption(list_district, "Huyện Xuyên Mộc","3");
            addOption(list_district, "Huyện Long Điền","4");
            addOption(list_district, "Huyện Côn Đảo","5");
            addOption(list_district, "Huyện Tân Thành","6");
            addOption(list_district, "Huyện Châu Đức","7");
            addOption(list_district, "Huyện Đất Đỏ","8");
        } else if(list_city.value === "51") {
            // Tinh Long An
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Tân An","1");
            addOption(list_district, "Huyện Vĩnh Hưng","2");
            addOption(list_district, "Huyện Mộc Hoá","3");
            addOption(list_district, "Huyện Tân Thạnh","4");
            addOption(list_district, "Huyện Thạnh Hoá","5");
            addOption(list_district, "Huyện Đức Huệ","6");
            addOption(list_district, "Huyện Đức Hoà","7");
            addOption(list_district, "Huyện Bến Lức","8");
            addOption(list_district, "Huyện Thủ Thừa","9");
            addOption(list_district, "Huyện Châu Thành","10");
            addOption(list_district, "Huyện Tân Trụ","11");
            addOption(list_district, "Huyện Cần Đước","12");
            addOption(list_district, "Huyện Cần Giuộc","13");
            addOption(list_district, "Huyện Tân Hưng","14");
        } else if(list_city.value === "52") {
            // Tinh Tien Giang
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Mỹ Tho","1");
            addOption(list_district, "Thị xã Gò Công","2");
            addOption(list_district, "Huyện Cái Bè","3");
            addOption(list_district, "Huyện Cai Lậy","4");
            addOption(list_district, "Huyện Châu Thành","5");
            addOption(list_district, "Huyện Chợ Gạo","6");
            addOption(list_district, "Huyện Gò Công Tây","7");
            addOption(list_district, "Huyện Gò Công Đông","8");
            addOption(list_district, "Huyện Tân Phước","9");
            addOption(list_district, "Huyện Tân Phú Đông","10");
        } else if(list_city.value === "53") {
            // Tinh Ben Tre
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Bến Tre","1");
            addOption(list_district, "Huyện Châu Thành","2");
            addOption(list_district, "Huyện Chợ Lách","3");
            addOption(list_district, "Huyện Mỏ Cày Bắc","4");
            addOption(list_district, "Huyện Giồng Trôm","5");
            addOption(list_district, "Huyện Bình Đại","6");
            addOption(list_district, "Huyện Ba Tri","7");
            addOption(list_district, "Huyện Thạnh Phú","8");
            addOption(list_district, "Huyện Mỏ Cày Nam","9");
        } else if(list_city.value === "54") {
            // Tinh Tra Vinh
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Trà Vinh","1");
            addOption(list_district, "Huyện Càng Long","2");
            addOption(list_district, "Huyện Cầu Kè","3");
            addOption(list_district, "Huyện Tiểu Cần","4");
            addOption(list_district, "Huyện Châu Thành","5");
            addOption(list_district, "Huyện Trà Cú","6");
            addOption(list_district, "Huyện Cầu Ngang","7");
            addOption(list_district, "Huyện Duyên Hải","8");
        } else if(list_city.value === "55") {
            // Tinh Vinh Long
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Vĩnh Long","1");
            addOption(list_district, "Huyện Long Hồ","2");
            addOption(list_district, "Huyện Mang Thít","3");
            addOption(list_district, "Huyện Bình Minh","4");
            addOption(list_district, "Huyện Tam Bình","5");
            addOption(list_district, "Huyện Trà Ôn","6");
            addOption(list_district, "Huyện Vũng Liêm","7");
            addOption(list_district, "Huyện Bình Tân","8");
        } else if(list_city.value === "56") {
            // Tinh Dong Thap
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Cao Lãnh","1");
            addOption(list_district, "Thị xã Sa Đéc","2");
            addOption(list_district, "Huyện Tân Hồng","3");
            addOption(list_district, "Huyện Hồng Ngự","4");
            addOption(list_district, "Huyện Tam Nông","5");
            addOption(list_district, "Huyện Thanh Bình","6");
            addOption(list_district, "Huyện Cao Lãnh","7");
            addOption(list_district, "Huyện Lấp Vò","8");
            addOption(list_district, "Huyện Tháp Mười","9");
            addOption(list_district, "Huyện Lai Vung","10");
            addOption(list_district, "Huyện Châu Thành","11");
            addOption(list_district, "Thị xã Hồng Ngự","12");
        } else if(list_city.value === "57") {
            // Tinh An Giang
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Long Xuyên","1");
            addOption(list_district, "Thị xã Châu Đốc","2");
            addOption(list_district, "Huyện An Phú","3");
            addOption(list_district, "Huyện Tân Châu","4");
            addOption(list_district, "Huyện Phú Tân","5");
            addOption(list_district, "Huyện Tịnh Biên","6");
            addOption(list_district, "Huyện Tri Tôn","7");
            addOption(list_district, "Huyện Châu Phú","8");
            addOption(list_district, "Huyện Chợ Mới","9");
            addOption(list_district, "Huyện Châu Thành","10");
            addOption(list_district, "Huyện Thoại Sơn","11");
        } else if(list_city.value === "58") {
            // Tinh Kien Giang
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Rạch Giá","1");
            addOption(list_district, "Thị xã Hà Tiên","2");
            addOption(list_district, "Huyện Kiên Lương","3");
            addOption(list_district, "Huyện Hòn Đất","4");
            addOption(list_district, "Huyện Tân Hiệp","5");
            addOption(list_district, "Huyện Châu Thành","6");
            addOption(list_district, "Huyện Giồng Riềng","7");
            addOption(list_district, "Huyện Gò Quao","8");
            addOption(list_district, "Huyện An Biên","9");
            addOption(list_district, "Huyện An Minh","10");
            addOption(list_district, "Huyện Vĩnh Thuận","11");
            addOption(list_district, "Huyện đảo Phú Quốc","12");
            addOption(list_district, "Huyện Kiên Hải","13");
            addOption(list_district, "Huyện U Minh Thượng","14");
            addOption(list_district, "Huyện Giang Thành","15");
        } else if(list_city.value === "59") {
            // TP Can Tho
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "Quận Ninh Kiều","1");
            addOption(list_district, "Quận Bình Thuỷ","2");
            addOption(list_district, "Quận Cái Răng","3");
            addOption(list_district, "Quận Ô Môn","4");
            addOption(list_district, "Huyện Phong Điền","5");
            addOption(list_district, "Huyện Cờ Đỏ","6");
            addOption(list_district, "Huyện Vĩnh Thạnh","7");
            addOption(list_district, "Quận Thốt Nốt","8");
            addOption(list_district, "Huyện Thới Lai","9");
        } else if(list_city.value === "60") {
            // Tinh Hau Giang
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Vị Thanh","1");
            addOption(list_district, "Huyện Vị Thuỷ","2");
            addOption(list_district, "Huyện Long Mỹ","3");
            addOption(list_district, "Huyện Phụng Hiệp","4");
            addOption(list_district, "Huyện Châu Thành","5");
            addOption(list_district, "Huyện Châu Thành A","6");
            addOption(list_district, "Thị xã Ngã Bảy","7");
        } else if(list_city.value === "61") {
            // Tinh Soc Trang
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Sóc Trăng","1");
            addOption(list_district, "Huyện Kế Sách","2");
            addOption(list_district, "Huyện Mỹ Tú","3");
            addOption(list_district, "Huyện Mỹ Xuyên","4");
            addOption(list_district, "Huyện Thạnh Trị","5");
            addOption(list_district, "Huyện Long Phú","6");
            addOption(list_district, "Thị xã Vĩnh Châu","7");
            addOption(list_district, "Huyện Cù Lao Dung","8");
            addOption(list_district, "Huyện Ngã Năm","9");
            addOption(list_district, "Huyện Châu Thành","10");
            addOption(list_district, "Huyện Trần Đề","11");
        } else if(list_city.value === "62") {
            // Tinh Bac Lieu
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Bạc Liêu","1");
            addOption(list_district, "Huyện Vĩnh Lợi","2");
            addOption(list_district, "Huyện Hồng Dân","3");
            addOption(list_district, "Huyện Giá Rai","4");
            addOption(list_district, "Huyện Phước Long","5");
            addOption(list_district, "Huyện Đông Hải","6");
            addOption(list_district, "Huyện Hoà Bình","7");
        } else if(list_city.value === "63") {
            // Tinh Ca Mau
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Cà Mau","1");
            addOption(list_district, "Huyện Thới Bình","2");
            addOption(list_district, "Huyện U Minh","3");
            addOption(list_district, "Huyện Trần Văn Thời","4");
            addOption(list_district, "Huyện Cái Nước","5");
            addOption(list_district, "Huyện Đầm Dơi","6");
            addOption(list_district, "Huyện Ngọc Hiển","7");
            addOption(list_district, "Huyện Năm Căn","8");
            addOption(list_district, "Huyện Phú Tân","9");
        } else if(list_city.value === "64") {
            // Tinh Ha Tay
            addOption(list_district, "Chọn quận huyện","0");
            addOption(list_district, "TP. Hà Đông","1");
            addOption(list_district, "TP. Sơn Tây","2");
            addOption(list_district, "Huyện Ba Vì","3");
            addOption(list_district, "Huyện Chương Mỹ","4");
            addOption(list_district, "Huyện Đan Phượng","5");
            addOption(list_district, "Huyện Hoài Đức","6");
            addOption(list_district, "Huyện Mỹ Đức","7");
            addOption(list_district, "Huyện Phú Xuyên","8");
            addOption(list_district, "Huyện Phúc Thọ","9");
            addOption(list_district, "Huyện Quốc Oai","10");
            addOption(list_district, "Huyện Thạch Thất","11");
            addOption(list_district, "Huyện Thanh Oai","12");
            addOption(list_district, "Huyện Thường Tín","13");
            addOption(list_district, "Huyện Ứng Hòa","14");
        } else {
            removeAllOptions(list_district);
        }

        function submitform() {
            document.contact.submit();
        }
    }
</script>
<div class="container"
      style="margin-bottom: 20px;">
      <div class="row">
            <div id="breakcrumb"
                  style="font-size:14px;
                        margin-top: 20px;
                        margin-bottom: 20px;
                        margin-left: 20px">{breadcrumbs_path}</div>
            <!--ADDRESS OF BUYER-->
            <div class="col-xs-12">
                  <div id="accordion" style="font-family: RobotoSlabRegular">
                        <h3 id="tab_buy"
                              style="line-height: 25px; font-weight: bold">ĐỊA CHỈ NGƯỜI MUA</h3>
                        <div id="id_div_tab_buy" style="padding: 0px;">
                        <div id="p_edit_buy" class="col-xs-12"
                              style="display:none; margin-top: 20px"
                              onClick="edit_address_buy();"></div>
                        <div id="title_buy" class="col-xs-12"
                             style="font-size: 15px;
                                    margin-top: 20px;">Chọn địa chỉ người mua:</div>
                        <div id="div_address_buy" class="col-xs-12"
                              style="margin-top: 20px">
                              <select id = "address"
                                    class="form-control"
                                    onchange="listbox_change_address_buy();"
                                    style="-webkit-border-radius: 10px;
                                       -moz-border-radius: 10px;
                                       width: 97%;
                                       height: 40px;
                                       outline: none;
                                       border: 1px solid #ddd;
                                       padding: 5px">{list_address}
                                    <option value="-1">Địa chỉ mới</option>
                              </select>
                        </div>
                        <div id="table_info_buy" class="col-xs-12"
                              style="display: none;
                                    margin-top: 10px;
                                    margin-bottom: 20px;
                                    line-height: 30px">
                              <div id="p_name_buy"
                                    style="width:100%">{txt_name_buyer}</div>
                              <div id="p_address_buy"
                                    style="width:100%"></div>
                              <div id="p_cellphone_buy"
                                    style="width: 100%">{txt_cellphone_buyer}</div>
                              <div id="p_agree" style="color:#F00;font-size:12px"> </div>
                        </div>
                        <div id="table_Nhap_Dia_Chi_Moi" class="col-xs-12">
                              <div id="btAdd_Address_buy">
                                    <button type="button"
                                          onClick="btAdd_Address_buy_display();"
                                          class="check_coupon"
                                          style="-webkit-border-radius: 20px;
                                              -moz-border-radius: 20px;
                                              outline:none;
                                              background-color: #ff767c;
                                              border: none;
                                              color: #fff;
                                              font-family:PoetsenOne;
                                              border-radius: 20px;
                                              padding: 10px;
                                              width:150px;
                                              height:37px;
                                              margin-top: 20px">Nhập địa chỉ mới</button>
                              </div>
                        </div>
                        <!-- Xac nhan thong tin-->
                        <div id="btAcceptAdress_buy" class="col-xs-12">
                              <button type="button"
                                      onClick="btAcceptAdress_buy_display();"
                                      class ="check_coupon"
                                      style="outline:none;
                                              background-color: #ff767c;
                                              border: none;
                                              color: #fff;
                                              font-family:PoetsenOne;
                                              -webkit-border-radius: 20px;
                                              -moz-border-radius: 20px;
                                              border-radius: 20px;
                                              padding: 10px;
                                              margin-right: 145px;
                                              height:37px;
                                              width: 100px;
                                              margin-top: 20px;
                                              margin-bottom: 20px">Xác nhận</button>
                        </div>
                        <!--city, district-->
                        <div id="info_Country_City_District" class="col-xs-12"
                              style="display: none;">
                              <div id="info_family_buy" class="col-xs-12"
                                    style="padding-left:0px">
                                    <div id="family_name_buy"
                                         style="padding:0px; margin-top: 15px">
                                          Họ & tên
                                          <label style="color:red; font-weight: bold">*</label>
                                    </div>
                                    <input type="text"
                                          id="text_family_name_buy"
                                          class="form-control"
                                          style="-webkit-border-radius: 10px;
                                                -moz-border-radius: 10px;
                                                border-radius: 10px;
                                                width: 250px;
                                                height: 40px;
                                                outline: none;
                                                border: 1px solid #ddd;
                                                padding: 5px"
                                          maxlength="50"
                                          value="{text_family_name_buy}">
                              </div>
                              <div id="info_mobile_buy" class="col-xs-12"
                                    style="padding:0px; margin-top: 15px">
                                    <div id="family_mobile_buy">Số điện thoại
                                    <label style="color:red; font-weight: bold">*</label>
                                    </div>
                                    <input type="text"
                                          id="text_mobile_buy"
                                          class="form-control"
                                          style="-webkit-border-radius: 10px;
                                                -moz-border-radius: 10px;
                                                border-radius: 10px;
                                                width: 200px;
                                                height: 40px;
                                                outline: none;
                                                padding: 5px;
                                                border: 1px solid #ddd"
                                          maxlength="11"
                                          value="{text_mobile_buy}">
                              </div>
                              <div id="info_Country" class="col-xs-12 col-sm-4 col-md-3 col-lg-3"
                                    style="padding-left:0px; margin-right: 10px; margin-top: 15px">
                                    <div id="p_country" style="margin-bottom: 5px">Quốc Gia
                                    <span style="color:red;">*</span></div>
                                    <select id="country"
                                          class="form-control"
                                          style="width: 200px;
                                                -webkit-border-radius: 10px;
                                                -moz-border-radius: 10px;
                                                height: 40px;
                                                outline: none;
                                                padding: 5px;
                                                border: 1px solid #ddd;">
                                          <option>Việt Nam</option>
                                    </select>
                              </div>
                              <div id="info_City" class="col-xs-12 col-sm-4 col-md-3 col-lg-3"
                                    style="padding:0px; margin-right: 5px; margin-top: 15px">
                                    <div id="p_city" style="margin-bottom: 5px"> Thành phố
                                    <span style="color:red">*</span></div>
                                    <select id="list_city_buy"
                                          class="form-control"
                                          style="width: 200px;
                                                -webkit-border-radius: 10px;
                                                -moz-border-radius: 10px;
                                                height: 40px;
                                                outline: none;
                                                padding: 5px;
                                                border: 1px solid #ddd"
                                          onchange="city_selected('list_city_buy','list_district_buy');">
                                    <option value = "0">Chọn tỉnh thành</option>
                                    <option value = "1">Hà Nội</option>
                                    <option value = "2">Hồ Chí Minh</option>
                                    <option value = "3">Tỉnh Hà Giang</option>
                                    <option value = "4">Tỉnh Cao Bằng</option>
                                    <option value = "5">Tỉnh Bắc Kạn</option>
                                    <option value = "6">Tỉnh Tuyên Quang</option>
                                    <option value = "7">Tỉnh Lào Cai</option>
                                    <option value = "8">Tỉnh Điện Biên</option>
                                    <option value = "9">Tỉnh Lai Châu</option>
                                    <option value = "10">Tỉnh Sơn La</option>
                                    <option value = "11">Tỉnh Yên Bái</option>
                                    <option value = "12">Tỉnh Hoà Bình</option>
                                    <option value = "13">Tỉnh Thái Nguyên</option>
                                    <option value = "14">Tỉnh Lạng Sơn</option>
                                    <option value = "15">Tỉnh Quảng Ninh</option>
                                    <option value = "16">Tỉnh Bắc Giang</option>
                                    <option value = "17">Tỉnh Phú Thọ</option>
                                    <option value = "18">Tỉnh Vĩnh Phúc</option>
                                    <option value = "19">Tỉnh Bắc Ninh</option>
                                    <option value = "20">Tỉnh Hải Dương</option>
                                    <option value = "21">Thành phố Hải Phòng</option>
                                    <option value = "22">Tỉnh Hưng Yên</option>
                                    <option value = "23">Tỉnh Thái Bình</option>
                                    <option value = "24">Tỉnh Hà Nam</option>
                                    <option value = "25">Tỉnh Nam Định</option>
                                    <option value = "26">Tỉnh Ninh Bình</option>
                                    <option value = "27">Tỉnh Thanh Hoá</option>
                                    <option value = "28">Tỉnh Nghệ An</option>
                                    <option value = "29">Tỉnh Hà Tĩnh</option>
                                    <option value = "30">Tỉnh Quảng Bình</option>
                                    <option value = "31">Tỉnh Quảng Trị</option>
                                    <option value = "32">Tỉnh Thừa Thiên Huế</option>
                                    <option value = "33">Thành phố Đà Nẵng</option>
                                    <option value = "34">Tỉnh Quảng Nam</option>
                                    <option value = "35">Tỉnh Quảng Ngãi</option>
                                    <option value = "36">Tỉnh Bình Định</option>
                                    <option value = "37">Tỉnh Phú Yên</option>
                                    <option value = "38">Tỉnh Khánh Hoà</option>
                                    <option value = "39">Tỉnh Ninh Thuận</option>
                                    <option value = "40">Tỉnh Bình Thuận</option>
                                    <option value = "41">Tỉnh Kon Tum</option>
                                    <option value = "42">Tỉnh Gia Lai</option>
                                    <option value = "43">Tỉnh Đắk Lắk</option>
                                    <option value = "44">Tỉnh Đắk Nông</option>
                                    <option value = "45">Tỉnh Lâm Đồng</option>
                                    <option value = "46">Tỉnh Bình Phước</option>
                                    <option value = "47">Tỉnh Tây Ninh</option>
                                    <option value = "48">Tỉnh Bình Dương</option>
                                    <option value = "49">Tỉnh Đồng Nai</option>
                                    <option value = "50">Tỉnh Bà Rịa - Vũng Tàu</option>
                                    <option value = "51">Tỉnh Long An</option>
                                    <option value = "52">Tỉnh Tiền Giang</option>
                                    <option value = "53">Tỉnh Bến Tre</option>
                                    <option value = "54">Tỉnh Trà Vinh</option>
                                    <option value = "55">Tỉnh Vĩnh Long</option>
                                    <option value = "56">Tỉnh Đồng Tháp</option>
                                    <option value = "57">Tỉnh An Giang</option>
                                    <option value = "58">Tỉnh Kiên Giang</option>
                                    <option value = "59">Thành phố Cần Thơ</option>
                                    <option value = "60">Tỉnh Hậu Giang</option>
                                    <option value = "61">Tỉnh Sóc Trăng</option>
                                    <option value = "62">Tỉnh Bạc Liêu</option>
                                    <option value = "63">Tỉnh Cà Mau</option>
                                    <option value = "64">Tỉnh Hà Tây</option>
                              </select>
                        </div>
                        <div id="info_District" class="col-xs-12 col-sm-3 col-md-5 col-lg-5"
                              style="padding:0px; margin-top: 15px">
                              <div id="p_district" style="margin-bottom: 5px">Quận/Huyện
                              <span style="color:red">*</span>
                              </div>
                              <select id="list_district_buy"
                                    class="form-control"
                                    style="width: 200px;
                                      -webkit-border-radius: 10px;
                                      -moz-border-radius: 10px;
                                      height: 40px;
                                      outline: none;
                                      padding: 5px;
                                      border: 1px solid #ddd">
                                    <option value = "0">Chọn quận huyện</option>
                              </select>
                        </div>
                  </div>

                  <!--Address-->
                  <div id="table_Dia_Chi_Moi" class="col-xs-12"
                        style="display: none; padding:0px;">
                        <div id="info_ward" class="col-xs-12 col-sm-4 col-md-3 col-lg-3"
                              style="margin-top: 15px">
                              <div id="text_number_ward" style="margin-bottom: 5px">Phường
                              <span style="color:red">*</span>
                              </div>
                              <input type="text"
                                    id="text_edit_number_ward"
                                    class="form-control"
                                    style="width: 200px;
                                      -webkit-border-radius: 10px;
                                      -moz-border-radius: 10px;
                                      border-radius: 10px;
                                      height: 40px;
                                      outline: none;
                                      padding: 5px;
                                      border: 1px solid #ddd">
                        </div>
                        <div id="info_street" class="col-xs-12 col-sm-4 col-md-3 col-lg-3"
                              style="margin-top: 15px">
                              <div id="text_number_street" style="margin-bottom: 5px">Đường <span style="color:red">*</span></div>
                              <input type="text"
                                    id ="text_edit_number_street"
                                    class="form-control"
                                    style="width: 200px;
                                      -webkit-border-radius: 10px;
                                      -moz-border-radius: 10px;
                                      border-radius: 10px;
                                      height: 40px;
                                      outline: none;
                                      padding: 5px;
                                      border: 1px solid #ddd">
                        </div>
                        <div id="info_adress" class="col-xs-12 col-sm-4 col-md-5 col-lg-6"
                              style="margin-top: 15px">
                              <div id="text_number_address" style="margin-bottom: 5px">Số nhà <span style="color:red">*</span></div>
                              <input type="text"
                                    id="text_edit_number_address"
                                    class="form-control"
                                    style="width: 200px;
                                      -webkit-border-radius: 10px;
                                      -moz-border-radius: 10px;
                                      border-radius: 10px;
                                      height: 40px;
                                      outline: none;
                                      padding: 5px;
                                      border: 1px solid #ddd">
                        </div>
                        <div id="info_adress_Chung_Cu" class="col-xs-12 col-sm-4 col-md-3 col-lg-3"
                              style="margin-top: 15px">
                              <div id="text_address_Chung_Cu" style="margin-bottom: 5px">Chung cư / Tòa nhà </div>
                              <input type="text"
                                    id="text_edit_number_address_Chung_Cu"
                                    class="form-control"
                                    style="width: 200px;
                                      -webkit-border-radius: 10px;
                                      -moz-border-radius: 10px;
                                      border-radius: 10px;
                                      height: 40px;
                                      outline: none;
                                      padding: 5px;
                                      border: 1px solid #ddd;
                                      margin-right: 20px">
                        </div>
                        <div id="info_floor_Chung_Cu" class="col-xs-12 col-sm-4 col-md-3 col-lg-3"
                              style="margin-top: 15px">
                              <div id="text_floor_Chung_Cu" style="margin-bottom: 5px">Lầu </div>
                              <input type="text"
                                    id ="text_edit_floor_Chung_Cu"
                                    class="form-control"
                                    style="width: 200px;
                                          -webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          border-radius: 10px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd;
                                          margin-right: 20px">
                        </div>
                        <div id="info_room_Chung_Cu" class="col-xs-12 col-sm-4 col-md-3 col-lg-3"
                              style="margin-top: 15px">
                              <div id="text_room_Chung_Cu" style="margin-bottom: 5px">Căn hộ</div>
                              <input type="text"
                                    id="text_edit_room_Chung_Cu"
                                    class="form-control"
                                    style="width: 200px;
                                          -webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          border-radius: 10px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd">
                        </div>
                        <div id="bt_add_new_adress" class="col-xs-12"
                              style="display:none;">
                              <button type="button"
                                    onClick="bt_accept_new_address_buy();"
                                    class ="check_coupon"
                                    style="-webkit-border-radius: 20px;
                                        -moz-border-radius: 20px;
                                        outline: none;
                                        margin-right: 30px;
                                        background-color: #ff767c;
                                        border: none;
                                        color: #fff;
                                        font-family: PoetsenOne;
                                        border-radius: 20px;
                                        padding: 10px;
                                        height: 37px;
                                        width: 100px;
                                        margin-bottom: 20px;
                                        margin-top: 20px">Xác nhận</button>
                        </div>
                  </div>
            </div>
            <!--END ADDRESS OF BUYER-->

            <!--ADDRESS OF RECEIVER-->
            <h3 id="tab_receiver"
                  style="font-size:15px; line-height: 25px; font-weight: bold">ĐỊA CHỈ NGƯỜI NHẬN</h3>
            <div style="font-family: RobotoSlabRegular; padding: 0px;">
                  <label style="font-size:25px;
                        color:#F00;
                        display:block;
                        text-align:center;
                        font-weight:bold;
                        margin-top: 10px;
                        margin-bottom: 5px"
                        id="check_info_buy">HÃY XÁC NHẬN ĐỊA CHỈ NGƯỜI MUA</label>
                  <div class="col-xs-12">
                        <div id="p_edit_receiver"
                              style="display:none; margin-top: 20px"
                              onClick="edit_address_receiver();">
                        </div>
                        <div id="p_edit_receiver_2"
                             style="display:none; margin-top: 20px"
                             onClick="edit_address_receiver_2();">
                        </div>
                  </div>
                  <div class="col-xs-12"
                        id="table_checkbox"
                        style="display:none; margin-top: 10px">
                        <input type="checkbox"
                              id="check_receive"
                              onclick="checkAddress(this);"
                              style="outline:none;
                                    margin-right:5px;
                                    width:15px;
                                    margin-top:0px" checked/>
                        <label for="check_receive">
                        Địa chỉ người nhận giống người mua (Bỏ check để nhập địa chỉ mới)
                        </label>
                  </div>
                  <div class="col-xs-12"
                        id="table_info_receiver"
                        style="margin-top: 5px; margin-bottom: 10px; line-height: 30px">
                        <div id="p_name_receiver"></div>
                        <div id="p_address_receiver"></div>
                        <div id="p_phone_receiver"></div>
                        <div id="p_agree_receiver"
                              style="color:#F00; font-size:12px; display:none"></div>
                  </div>
                  <div class="col-xs-12"
                        id="bt_add_new_address_receiver_1"
                         style="display:none">
                        <button type="button"
                                class ="check_coupon"
                                onClick="function_add_adress_receiver_1();"
                                style="outline:none;
                                  margin-right: 145px;
                                  background-color: #ff767c;
                                  border: none;
                                  color: #fff;
                                  font-family:PoetsenOne;
                                  -webkit-border-radius: 20px;
                                  -moz-border-radius: 20px;
                                  border-radius: 20px;
                                  padding: 10px;
                                  height:37px;
                                  width: 100px;
                                  margin-bottom: 20px;
                                  margin-top: 5px">Xác nhận</button>
                  </div>
                  <div id="table_info_name_receive" style="display:none">
                        <div class="col-xs-12">
                              <div style="margin-top: 10px"> Danh xưng
                              <label style="color: red; font-weight: bold">*</label></div>
                              <select id="list_man_woman" class="form-control"
                                    style="-webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          float:left;
                                          width: 100px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd;
                                          font-weight: lighter">
                                    <option value = "0">Anh</option>
                                    <option value = "1">Chị</option>
                              </select>
                        </div>
                        <div id="info_family_receive" class="col-xs-12">
                              <div id="family_name_receiver"
                                    style = "font-size:14px; margin-top: 10px">
                                    Họ & tên <label style="color:red; font-weight: bold">*</label>
                              </div>
                              <input type="text"
                                    id="text_family_name_receiver"
                                    class="form-control"
                                    style="-webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          border-radius: 10px;
                                          width: 250px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd"
                                    maxlength = "50">
                        </div>
                        <div id="info_mobile_receive" class="col-xs-12">
                              <div id="family_name_receiver" style="margin-top: 10px">
                                    Số điện thoại <label style="color:red; font-weight: bold">*</label>
                              </div>
                              <input type="text"
                                    id="text_mobile_receiver"
                                    class="form-control"
                                    style="-webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          border-radius: 10px;
                                          width: 200px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd"
                                    maxlength = "11">
                        </div>
                  </div>

                  <!--city, district-->
                  <div id="info_Country_City_District_Receive"
                           style="display:none; margin-top: 10px">
                        <div id="info_Country_Receive" class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                              <div id="p_country_receive" style="margin-top: 10px">Quốc Gia
                              <label style="color:red; font-weight: bold">*</label></div>
                              <select id="country_receive"
                                    class="form-control"
                                    style="-webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          width: 200px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd;">
                                    <option>Việt Nam</option>
                              </select>
                        </div>
                        <div id = "info_City_Receive" class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                              <div id="p_city_receive" style="margin-top: 10px"> Thành phố
                                    <label style="color:red; font-weight: bold">*</label></div>
                              <select id="list_city_receive"
                                    class="form-control"
                                    style="-webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          width: 200px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd"
                                    onchange="city_selected('list_city_receive','list_district_receive');">
                                    <option value = "0">Chọn tỉnh thành</option>
                                    <option value = "1">Hà Nội</option>
                                    <option value = "2">Hồ Chí Minh</option>
                                    <option value = "3">Tỉnh Hà Giang</option>
                                    <option value = "4">Tỉnh Cao Bằng</option>
                                    <option value = "5">Tỉnh Bắc Kạn</option>
                                    <option value = "6">Tỉnh Tuyên Quang</option>
                                    <option value = "7">Tỉnh Lào Cai</option>
                                    <option value = "8">Tỉnh Điện Biên</option>
                                    <option value = "9">Tỉnh Lai Châu</option>
                                    <option value = "10">Tỉnh Sơn La</option>
                                    <option value = "11">Tỉnh Yên Bái</option>
                                    <option value = "12">Tỉnh Hoà Bình</option>
                                    <option value = "13">Tỉnh Thái Nguyên</option>
                                    <option value = "14">Tỉnh Lạng Sơn</option>
                                    <option value = "15">Tỉnh Quảng Ninh</option>
                                    <option value = "16">Tỉnh Bắc Giang</option>
                                    <option value = "17">Tỉnh Phú Thọ</option>
                                    <option value = "18">Tỉnh Vĩnh Phúc</option>
                                    <option value = "19">Tỉnh Bắc Ninh</option>
                                    <option value = "20">Tỉnh Hải Dương</option>
                                    <option value = "21">Thành phố Hải Phòng</option>
                                    <option value = "22">Tỉnh Hưng Yên</option>
                                    <option value = "23">Tỉnh Thái Bình</option>
                                    <option value = "24">Tỉnh Hà Nam</option>
                                    <option value = "25">Tỉnh Nam Định</option>
                                    <option value = "26">Tỉnh Ninh Bình</option>
                                    <option value = "27">Tỉnh Thanh Hoá</option>
                                    <option value = "28">Tỉnh Nghệ An</option>
                                    <option value = "29">Tỉnh Hà Tĩnh</option>
                                    <option value = "30">Tỉnh Quảng Bình</option>
                                    <option value = "31">Tỉnh Quảng Trị</option>
                                    <option value = "32">Tỉnh Thừa Thiên Huế</option>
                                    <option value = "33">Thành phố Đà Nẵng</option>
                                    <option value = "34">Tỉnh Quảng Nam</option>
                                    <option value = "35">Tỉnh Quảng Ngãi</option>
                                    <option value = "36">Tỉnh Bình Định</option>
                                    <option value = "37">Tỉnh Phú Yên</option>
                                    <option value = "38">Tỉnh Khánh Hoà</option>
                                    <option value = "39">Tỉnh Ninh Thuận</option>
                                    <option value = "40">Tỉnh Bình Thuận</option>
                                    <option value = "41">Tỉnh Kon Tum</option>
                                    <option value = "42">Tỉnh Gia Lai</option>
                                    <option value = "43">Tỉnh Đắk Lắk</option>
                                    <option value = "44">Tỉnh Đắk Nông</option>
                                    <option value = "45">Tỉnh Lâm Đồng</option>
                                    <option value = "46">Tỉnh Bình Phước</option>
                                    <option value = "47">Tỉnh Tây Ninh</option>
                                    <option value = "48">Tỉnh Bình Dương</option>
                                    <option value = "49">Tỉnh Đồng Nai</option>
                                    <option value = "50">Tỉnh Bà Rịa - Vũng Tàu</option>
                                    <option value = "51">Tỉnh Long An</option>
                                    <option value = "52">Tỉnh Tiền Giang</option>
                                    <option value = "53">Tỉnh Bến Tre</option>
                                    <option value = "54">Tỉnh Trà Vinh</option>
                                    <option value = "55">Tỉnh Vĩnh Long</option>
                                    <option value = "56">Tỉnh Đồng Tháp</option>
                                    <option value = "57">Tỉnh An Giang</option>
                                    <option value = "58">Tỉnh Kiên Giang</option>
                                    <option value = "59">Thành phố Cần Thơ</option>
                                    <option value = "60">Tỉnh Hậu Giang</option>
                                    <option value = "61">Tỉnh Sóc Trăng</option>
                                    <option value = "62">Tỉnh Bạc Liêu</option>
                                    <option value = "63">Tỉnh Cà Mau</option>
                                    <option value = "64">Tỉnh Hà Tây</option>
                              </select>
                        </div>
                        <div id="info_District_Receive" class="col-xs-12 col-sm-4 col-md-5 col-lg-5">
                              <div id="p_district_receive" style="margin-top: 10px">Quận/Huyện
                              <label style="color:red; font-weight: bold">*</label>
                              </div>
                              <select id="list_district_receive"
                                    class="form-control"
                                    style="-webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          width:200px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd">
                                    <option value = "0">Chọn quận huyện</option>
                              </select>
                        </div>
                  </div>
                  <div id="table_Dia_Chi_Moi_Nguoi_Nhan"
                        style="display:none;">
                        <div id="info_ward_receiver" class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                              <div id="text_number_ward_receiver" style="margin-top: 10px"> Phường
                              <label style="color:red; font-weight: bold">*</label>
                              </div>
                              <input type="text"
                                    id ="text_edit_number_ward_receiver"
                                    class="form-control"
                                    style="-webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          border-radius: 10px;
                                          width: 200px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd"></div>
                        <div id="info_street_receiver" class="col-xs-12 col-sm-4 col-md-3 col-lg-3">
                              <div id="text_number_street_receiver" style="margin-top: 10px"> Đường
                                    <label style="color:red; font-weight: bold">*</label>
                              </div>
                              <input type="text"
                                    id="text_edit_number_street_receiver"
                                    class="form-control"
                                    style="-webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          border-radius: 10px;
                                          width: 200px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd"></div>
                        <div id="info_adress_receiver" class="col-xs-12 col-sm-4 col-md-5 col-lg-5">
                              <div id="text_number_address_receiver" style="margin-top: 10px"> Số nhà
                              <label style="color:red; font-weight: bold">*</label>
                              </div>
                              <input type="text"
                                    id="text_edit_number_address_receiver"
                                    class="form-control"
                                    style="-webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          border-radius: 10px;
                                          width: 200px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd"></div>
                        <div id="info_adress_Chung_Cu_Receiver" class="col-xs-12 col-sm-4 col-md-3 col-lg-3"
                              style="padding-top: 10px">
                              <div id="text_address_Chung_Cu_Receiver"
                                    style="margin-bottom: 5px">Chung cư / Tòa nhà</div>
                              <input type="text"
                                    id="text_edit_number_address_Chung_Cu_Receiver"
                                    class="form-control"
                                    style="-webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          border-radius: 10px;
                                          width: 200px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd;
                                          margin-right: 20px"></div>
                        <div id="info_floor_Chung_Cu_Receiver" class="col-xs-12 col-sm-4 col-md-3 col-lg-3"
                              style="padding-top: 10px">
                              <div id="text_floor_Chung_Cu_Receiver"
                                    style="padding-bottom: 5px">Lầu</div>
                              <input type="text"
                                    id="text_edit_floor_Chung_Cu_Receiver"
                                    class="form-control"
                                    style="-webkit-border-radius: 10px;
                                        -moz-border-radius: 10px;
                                        border-radius: 10px;
                                        width: 200px;
                                        height: 40px;
                                        outline: none;
                                        padding: 5px;
                                        border: 1px solid #ddd;
                                        margin-right: 20px"></div>
                        <div id="info_room_Chung_Cu_Receiver" class="col-xs-12 col-sm-4 col-md-3 col-lg-5"
                              style = "padding-top: 10px">
                              <div id="text_room_Chung_Cu_Receiver"
                                    style="padding-bottom: 5px">Căn hộ</div>
                                <input type="text"
                                    id="text_edit_room_Chung_Cu_Receiver"
                                    class="form-control"
                                    style="-webkit-border-radius: 10px;
                                          -moz-border-radius: 10px;
                                          border-radius: 10px;
                                          width: 200px;
                                          height: 40px;
                                          outline: none;
                                          padding: 5px;
                                          border: 1px solid #ddd;
                                          margin-right: 20px"></div>
                  </div>
                  <div id="bt_add_new_address_receiver_2" class="col-xs-12"
                        style="display:none;">
                        <button type="button"
                              onClick="function_add_adress_receiver_2()"
                              class="check_coupon"
                              style="-webkit-border-radius: 20px;
                                    -moz-border-radius: 20px;
                                    border-radius: 20px;
                                    outline:none;
                                    background-color: #ff767c;
                                    border: none;
                                    color: #fff;
                                    font-family:PoetsenOne;
                                    padding: 10px;
                                    width:100px;
                                    height:37px;
                                    margin-top: 20px;
                                    margin-bottom: 20px">Xác nhận</button>
                  </div>
            </div>
            <!--END ADDRESS OF RECEIVER-->

            <!--TRANSPORT METHOD-->
            <h3 id="tab_transport"
                  style="font-size:15px; line-height: 25px">PHƯƠNG THỨC VẬN CHUYỂN</h3>
            <div style="padding-left: 15px; padding-right: 15px; line-height: 30px">
                  <label style="font-size:25px;
                              color:#F00;
                              text-align:center;
                              display:block;
                              font-weight: bold"
                        id="check_info_receive">HÃY XÁC NHẬN THÔNG TIN NGƯỜI NHẬN</label>
                  <div id="p_edit_transport"
                        style="display:none"
                        onClick="funtion_edit_accept_transport();"></div>
                  <div id="table_info_transport"
                        style="display:none">
                        <input type="radio"
                              id="radio_motobike_transport"
                              onchange="function_transport('radio_motobike_transport');"
                              checked="checked">
                        <label for="radio_motobike_transport">
                        Vận chuyển tận nhà trong một số quận nội thành Hồ Chí Minh</label><br>
                        <div id="cell_fee_transport"
                              style="display:block;">
                              <div id="fee_transport"
                                    style="color:#F00; line-height: 25px; margin-top: 5px; clear:both">
                              Phí vận chuyển: NanaPet sẽ thông báo sau!</div>
                        </div>
                        <input type="radio"
                              id="radio_car_transport"
                              onchange="function_transport('radio_car_transport');">
                        <label for="radio_car_transport"> Chuyển hàng bằng nhà xe </label><br>
                        <div id="cell_fee_car"
                              style="display:none;">
                              <div id="fee_car"
                                    style="color:#F00;line-height: 25px; margin-top: 5px; clear:both">
                              Phí vận chuyển: NanaPet sẽ thông báo sau!
                              </div>
                        </div>
                        <input type="radio"
                              id="radio_fast_fax_transport"
                              onchange="function_transport('radio_fast_fax_transport');"/>
                        <label for="radio_fast_fax_transport">Chuyển hàng bằng chuyển phát nhanh</label><br>
                        <div id="cell_fee_fast_fax"
                              style="display:none;">
                              <div id="fee_fast_fax"
                                    style="color:#F00;line-height: 25px; margin-top: 5px; clear:both">
                              Phí vận chuyển: NanaPet sẽ thông báo sau!
                              </div>
                        </div>
                        <input type="radio"
                              id = "radio_post_house_transport"
                              onchange = "function_transport('radio_post_house_transport');"/>
                        <label for="radio_post_house_transport">Chuyển hàng bằng bưu điện</label><br>
                        <div id="cell_fee_post_house"
                            style="display:none; ">
                              <div id = "fee_post_house"
                                    style="color:#F00;line-height: 25px; margin-top: 5px; clear:both">
                              Phí vận chuyển: NanaPet sẽ thông báo sau!
                              </div>
                        </div>
                  </div>
                  <button type="button"
                            onClick="funtion_bt_accept_transport();"
                            id="bt_accept_transport"
                            class ="check_coupon"
                            style="-webkit-border-radius: 20px;
                                    -moz-border-radius: 20px;
                                    outline:none;
                                    background-color: #ff767c;
                                    border: none;
                                    color: #fff;
                                    font-family: PoetsenOne;
                                    border-radius: 20px;
                                    padding: 10px;
                                    margin-right: 145px;
                                    height:37px;
                                    width: 100px;
                                    clear:both;
                                    display: none;
                                    line-height: 20px;
                                    margin-top: 15px;
                                    margin-bottom: 5px">Xác nhận</button>
            </div>
            <!--END TRANSPORT METHOD-->

            <!--PAYMENT-->
            <h3 id="tab_money"
                  style="line-height: 25px;
                        font-weight: bold">PHƯƠNG THỨC THANH TOÁN</h3>
            <div style="padding-left: 15px; padding-right: 15px">
                  <div style="font-size:25px; color:#F00;
                              text-align:center;
                              display:block;
                              font-weight: bold;"
                        id="check_info_transport">HÃY XÁC NHẬN PHƯƠNG THỨC VẬN CHUYỂN</div>
                  <div id="p_edit_bill"
                       style="display:none; margin-bottom: 10px"
                       onClick="function_edit_bill();">
                  </div>
                  <div id="table_cash_bank"
                        style="display:none">
                        <input type="radio"
                              id="radio_cash"
                              onchange = "function_bill('Cash');"
                              checked="checked">
                        <label for="radio_cash">Thanh toán Tiền Mặt (COD)</label><br>
                        <input type="radio"
                              id="radio_bank"
                              onchange="function_bill('Banking');">
                        <label for="radio_bank">Thanh toán chuyển khoản Ngân Hàng</label>
                        <img class="img-responsive"
                              src="{linkS}layout/images/bank-acc.jpg"
                              style=""
                              alt="bank account">
                  </div>
                  <button type="button"
                        onClick="funtion_bt_accept_money();"
                        id="bt_accept_money"
                        class="check_coupon"
                        style="-webkit-border-radius: 20px;
                              -moz-border-radius: 20px;
                              outline:none;
                              background-color: #ff767c;
                              border: none;
                              color: #fff;
                              font-family:PoetsenOne;
                              border-radius: 20px;
                              padding: 10px;
                              margin-right: 145px;
                              height:37px;
                              width: 100px;
                              margin-top:20px;
                              clear:both;
                              display: none">Xác nhận</button>
            </div>
            <!--END PAYMENT-->

            <!--CHECK ALL BILL-->
            <h3 id="tab_check_bill" style="line-height: 25px; font-weight: bold">
                  KIỂM TRA LẠI ĐƠN HÀNG</h3>
            <div style="padding-left: 15px;
                  padding-right: 15px">
                  <div style="font-size:25px;
                      color:#F00;
                      text-align:center;
                      display:block"
                  id="check_info_cash_bank">HÃY XÁC NHẬN PHƯƠNG THỨC THANH TOÁN</div>
                  <div id="contact_info"
                        style="display:none; line-height: 30px; margin-bottom: 30px">
                        <div style="font-family: PoetsenOne">NGƯỜI MUA</div>
                        <div id="yourname">
                              <span>Họ Tên: </span>
                              <span id="txtHoten_Info">{txtHoten_Info}</span>
                        </div>
                        <div id="yourphone">
                              <span> Ðiện thoại: </span>
                              <span id="txtDienthoai_Info">{txtDienthoai_Info}</span>
                        </div>
                        <div id="youraddress">
                              <span>Ðịa chỉ: </span>
                              <span id="txtDiaChi_Info">{txtDiaChi_Info}</span>
                        </div>
                        <div id="youremail" >
                              <span>Email: </span>
                              <span id="txtEmail_Info">{txtEmail_Info}</span>
                        </div>
                        <div style="font-family: PoetsenOne">NGƯỜI NHẬN</div>
                        <div id="yournamereceive">
                              <span>Họ Tên: </span>
                              <span id="txtHotenNguoiNhan_Info">{txtHotenNguoiNhan_Info}</span>
                        </div>
                        <div id="yourphonereceive">
                              <span>Ðiện thoại: </span>
                              <span id="txtDienthoaiNguoiNhan_Info">{txtDienthoaiNguoiNhan_Info}</span>
                        </div>
                        <div id="youraddressreceive">
                              <span>Ðịa chỉ: </span>
                              <span id="txtDiachiNguoiNhan_Info">{txtDiachiNguoiNhan_Info}</span>
                        </div>
                        <div id="yourcomment">
                              <div>Ghi chú: </div>
                              <textarea name="txtNoidung" class="hidden-xs"
                                    id="txtNoidung"
                                    rows="5"
                                    style="border: 2px solid #edf8fb;
                                          border-radius: 8px;
                                          width: 50%">
                              </textarea>
                              <textarea name="txtNoidung" class="hidden-lg hidden-md hidden-sm"
                                    id="txtNoidung"
                                    rows="5"
                                    style="border: 2px solid #edf8fb;
                                          border-radius: 8px;
                                          width: 100%">
                              </textarea>
                        </div>
                  </div>

                  <table id="che-bas-shopping-cart-items"
                        cellpadding="0"
                        width="100%"
                        cellspacing="0"
                        border="0"
                        style="display:none">
                        <tbody style="text-align: center !important">
                              <tr>
                              <th class="che-bas-cart-heading-image hidden-xs"
                              style="text-align: center">HÌNH ẢNH</th>
                              <th class="che-bas-cart-heading-description"
                              style="text-align: center">SẢN PHẨM</th>
                              <th class="che-bas-cart-heading-item-price"
                              style="text-align: center">GIÁ</th>
                              <th class="che-bas-cart-heading-qty hidden-xs"
                              style="text-align: center">SỐ LƯỢNG</th>
                              <th class="che-bas-cart-heading-total-price"
                              style="text-align: center">TỔNG TIỀN</th>
                              </tr>
                        </tbody>
                        <tbody>
                              <!--BEGINLIST_LISTCART-->
                              <!--BEGIN_LISTCART-->
                              <tr>
                                    <td class="che-bas-item-image-cell hidden-xs">
                                          <a tabindex="-1">
                                                <img class="item-img"
                                                style="width:120px;
                                                      height:130px;
                                                      border:0px;
                                                      padding:10px"
                                                src="{linkS}upload/product/{product_image}"
                                                alt="{product_name}"></a>
                                    </td>
                                    <td class="che-bas-item-name"
                                          style="width:43%;
                                                line-height: 25px;
                                                border-top:1px solid #ff767c;
                                                border-bottom:1px solid #ff767c;
                                                text-align: left;">
                                          <span class="che-bas-item-name"
                                                tabindex="-1"
                                                style="font-weight: bold">{product_name}</span>
                                          {color_des}
                                          {type_des}
                                    </td>
                                    <td class="che-bas-item-price"
                                          style="width:12%;
                                                text-align: left;
                                                padding-right: 0px;
                                                padding-left: 0px;
                                                line-height: 25px;
                                                border-top: 1px solid #ff767c;
                                                border-bottom: 1px solid #ff767c;
                                                vertical-align: middle;
                                                text-align: center">
                                          {price} {price_unit}<br>
                                          <span style="margin-right:4px;">
                                              {discount_price} {discount_price_unit}
                                          </span>
                                          <form action="{linkS}gio-hang/{product_key}/edit"
                                                method="post"
                                                name="edit_f{stt}"
                                                style="display: inline;"
                                                class="hidden-lg hidden-md hidden-sm">
                                                <span>SL: x</span>
                                                <span class="glo-form" style="height: 50px">
                                                      {quantity}<br>
                                                </span>
                                          </form>
                                    </td>
                                    <td class="che-bas-item-quantity hidden-xs"
                                          style="width:12%;
                                                text-align: center;
                                                padding-right: 0px;
                                                padding-left:0px;
                                                line-height: 25px;
                                                border-top: 1px solid #ff767c;
                                                border-bottom: 1px solid #ff767c;
                                                vertical-align: middle;
                                                text-align: center">
                                          <form action="{linkS}gio-hang/{product_key}/edit"
                                                method="post"
                                                name="edit_f{stt}"
                                                style="display: inline;">
                                                <span class="glo-form" style="height: 50px">
                                                      {quantity}<br>
                                                </span>
                                          </form>
                                    </td>
                                    <td class="che-bas-item-price-cell"
                                          style="width:50px;
                                                text-align:left;
                                                border-top:1px solid #ff767c;
                                                border-bottom:1px solid #ff767c;
                                                line-height: 25px;
                                                vertical-align: middle;
                                                text-align: center">
                                          {total_one} {price_unit}<br>
                                          <span style="margin-right:4px;">
                                              {discount_total_price} {discount_price_unit}
                                          </span>
                                    </td>
                              </tr>
                              <!--END_LISTCART-->
                              <!--ENDLIST_LISTCART-->
                        </tbody>
                  </table>
                  <div id="che-bas-bottom-right-wrapper"
                         style="display:none;
                                width: 100%">
                        <div class="col-xs-12" style="padding: 0px">
                              <div style="line-height: 30px;
                                          font-family: RobotoSlabRegular;
                                          font-size: 17px;
                                          margin-top: 20px">
                                    <span id="che-bas-estimated-total" class="hidden-xs"
                                          style="width: 200px; display: inline-block;">
                                          Tổng tiền sản phẩm: </span>
                                    <span id="che-bas-estimated-total"
                                          class="hidden-lg hidden-md hidden-sm">
                                          Tổng tiền sản phẩm <br></span>
                                    <span id="total_money">+{total} VNĐ</span> <br>
                                    <span id="che-bas-estimated-total" class="hidden-xs"
                                          style="width: 200px; display: inline-block;">
                                          Chi phí vận chuyển: </span>
                                    <span id="che-bas-estimated-total"
                                          class="hidden-lg hidden-md hidden-sm">
                                          Chi phí vận chuyển <br></span>
                                    <span id="total_fee">Chưa chọn quận</span> <br>
                                    <span id="che-bas-estimated-total" class="hidden-xs"
                                          style="width: 200px; display: inline-block;">
                                          Giảm giá coupon: </span>
                                    <span id="che-bas-estimated-total"
                                          class="hidden-lg hidden-md hidden-sm">
                                          Giảm giá coupon <br></span>
                                    <span id="discount_total">{total_discount}</span> <br>
                                    <span id="che-bas-estimated-total" class="hidden-xs"
                                          style="color: red; width: 200px; display: inline-block;">
                                          TỔNG TIỀN: </span>
                                    <span id="che-bas-estimated-total"
                                          class="hidden-lg hidden-md hidden-sm"
                                          style="color: red">
                                          TỔNG TIỀN <br></span>
                                    <span id="total_fee_product_transport"
                                          style="color: red">Thông báo sau</span>
                              </div>
                              <form method="post" name="contact" id="contact"
                                    enctype="multipart/form-data"
                                    style="display:none; width: 100%;">
                                    <table id="contact_form" style="width:100%">
                                          <tr id= "finish_buy_product" >
                                                <td align="center">
                                                <input type="hidden" name="finish" value="1">
                                                <input type="image"
                                                      name="btn"
                                                      onClick="submitform();"
                                                      src="{linkS}layout/images/guitt.png"
                                                      width="100"
                                                      border="0"
                                                      style="outline: none;
                                                            float: left;
                                                            margin-top: 10px"></td>
                                          </tr>
                                          <tr id="yourname">
                                                <td>
                                                <input name="txtHoten"
                                                      value="{txtHoten}"
                                                      type="text"
                                                      class="input_box_from"
                                                      id="txtHoten"
                                                      maxlength="34"
                                                      style="display:none">
                                                </td>
                                          </tr>
                                          <tr id="yourphone">
                                                <td>
                                                <input name="txtDienthoai"
                                                       value="{txtDienthoai}"
                                                       type="text"
                                                       class="input_box_from"
                                                       id="txtDienthoai"
                                                       maxlength="34"
                                                       style="display:none">
                                                </td>
                                          </tr>
                                          <tr id="youraddress">
                                                <td>
                                                <textarea rows="5"
                                                        cols="48"
                                                        name="txtDiaChi"
                                                        value="{txtDiaChi}"
                                                        type="text"
                                                        class="input_box_from"
                                                        id="txtDiaChi"
                                                        size="30"
                                                        style="display:none">
                                                </textarea>
                                                </td>
                                          </tr>
                                          <tr id="youremail" >
                                                <td>
                                                <input name="txtEmail"
                                                        value="{txtEmail}"
                                                        type="text"
                                                        class="input_box_from"
                                                        id="txtEmail"
                                                        maxlength="34"
                                                        style="display:none"/>
                                                </td>
                                          </tr>

                                          <tr id="yournamereceive" >
                                            <td>
                                                <input name="txtHotenNguoiNhan"
                                                        value="{txtHotenNguoiNhan}"
                                                        type="text"
                                                        class="input_box_from"
                                                        id="txtHotenNguoiNhan"
                                                        maxlength="34"
                                                        style="display:none"/>
                                            </td>
                                        </tr>

                                        <tr id="yourphonereceive" >
                                            <td>
                                                <input name="txtDienthoaiNguoiNhan"
                                                        value="{txtDienthoaiNguoiNhan}"
                                                        type="text"
                                                        class="input_box_from"
                                                        id="txtDienthoaiNguoiNhan"
                                                        maxlength="34"
                                                        style="display:none"/>
                                            </td>
                                        </tr>
                                        <tr id="youraddressreceive" >
                                            <td>
                                                <textarea rows="5"
                                                        cols="48"
                                                        name="txtDiachiNguoiNhan"
                                                        value="{txtDiachiNguoiNhan}"
                                                        type="text"
                                                        class="input_box_from"
                                                        id="txtDiachiNguoiNhan"
                                                        size="30"
                                                        style="display:none">
                                                </textarea>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input name="txtfeetransport"
                                                        value="{txtfeetransport}"
                                                        type="text"
                                                        class="input_box_from"
                                                        id="txtfeetransport"
                                                        maxlength="200"
                                                        style="display:none"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input name="txttypeofcash"
                                                        value="Thanh toán tiền mặt"
                                                        type="text"
                                                        class="input_box_from"
                                                        id="txttypeofcash"
                                                        maxlength="200"
                                                        style="display:none"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input name="txttotalproductfee"
                                                        value="{txttotalproductfee}"
                                                        type="text"
                                                        class="input_box_from"
                                                        id="txttotalproductfee"
                                                        maxlength="200"
                                                        style="display:none"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input name="transport_fee"
                                                   value="{transport_fee}"
                                                   type="text"
                                                   class="input_box_from"
                                                   id="transport_fee"
                                                   maxlength="200"
                                                   style="display:none"/>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <input name="discount_total_save"
                                                   value="{discount_total_save}"
                                                   type="text"
                                                   class="input_box_from"
                                                   id="discount_total_save"
                                                   maxlength="200"
                                                   style="display:none"/>
                                            </td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
      </div>
</div>
</div>