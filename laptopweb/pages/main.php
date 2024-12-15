<?php
// Danh sách các trang không hiển thị sidebar
$no_sidebar_pages = ['giohang', 'tintuc', 'lienhe', 'trangchu', 'sanpham', 'dangky','thanhtoan','dangnhap'];

// Kiểm tra nếu không thuộc các trang cần ẩn sidebar thì hiển thị sidebar
if (!isset($_GET['quanly']) || !in_array($_GET['quanly'], $no_sidebar_pages)) {
    include("sidebar/sidebar.php");
}

// Xử lý các trang chính
if (isset($_GET['quanly'])) {
    $tam = $_GET['quanly'];
} else {
    $tam = '';
}

if ($tam == 'danhmucsanpham') {
    include("main/danhmuc.php");
} elseif ($tam == 'giohang') {
    include("main/giohang.php");
} elseif ($tam == 'tintuc') {
    include("main/tintuc.php");
} elseif ($tam == 'lienhe') {
    include("main/lienhe.php");
} elseif ($tam == 'sanpham') {
    include("main/sanpham.php");
} elseif ($tam == 'trangchu') {
    include("main/trangchu.php");
} elseif ($tam == 'dangky') {
    include("main/dangky.php");
} elseif ($tam == 'thanhtoan') {
    include("main/thanhtoan.php");
} elseif ($tam == 'dangnhap') {
    include("main/dangnhap.php");
} elseif ($tam == 'timkiem') {
    include("main/timkiem.php");
} else {
    include("main/index.php");
}
