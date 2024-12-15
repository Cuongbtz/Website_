-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 15, 2024 lúc 04:10 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `laptopstore`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'admin', '123', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(17, 'Nguyen quoc cuong', 'cuongaz399@gmail.com', 'Quang Ninh', '123', '0123456789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(500) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(1, 'Laptop', 1),
(2, 'PC, Màn Hình', 2),
(3, 'Phụ Kiện Máy Tính', 3),
(4, 'Linh Kiện PC, Laptop', 4),
(5, 'TV', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(100) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(100) NOT NULL,
  `tomtat` varchar(500) NOT NULL,
  `noidung` varchar(500) NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(6, 'Laptop Dell Inspiron 15 3520-5810BLK 102F0', 'DELL', '12990000', 10, '1731771149_laptop2.webp', 'New 100%', 'abc', 1, 1),
(7, 'Laptop Dell Latitude 3540 71038100', 'DELL', '16990000', 10, '1731771793_laptop3.webp', 'New 100%', 'abc', 1, 1),
(8, 'Apple MacBook Air M1 256GB 2020', 'MAC', '18290000', 10, '1731771899_laptop4.webp', 'New 100%', 'abc', 1, 1),
(9, 'Laptop ASUS Gaming VivoBook K3605ZF-RP634W', 'ASUS', '17390000', 10, '1731771983_laptop5.webp', 'New 99%', 'abc', 1, 1),
(10, 'MacBook Pro 14 M3 Pro 18GB - 1TB', 'MAC', '56990000', 10, '1731772086_laptop6.webp', 'New 100%', 'aa', 1, 1),
(11, 'Màn hình Gaming LG UltraGear OLED 45GR95QE-B 45 inch', 'LG', '30990000', 3, '1731772231_manhinh1.webp', 'New 100%', 'a', 1, 2),
(13, 'Màn hình MSI MP251 E2 25 inch 120Hz', 'MSI', '2390000', 5, '1731772330_manhinh1.webp', 'New 100%', 'q', 1, 2),
(14, 'Màn hình LG 27UP850N 27 inch', 'LG', '7690000', 6, '1731772830_manhinh3.webp', 'New 100%', 'w', 1, 2),
(15, 'Bàn Phím Cơ Gaming không dây Asus', 'ASUS', '300000', 5, '1731772937_banphim1.jpg', 'New 100%', 'q', 1, 3),
(16, 'Chuột Gaming không dây Asus ', 'ASUS', '1200000', 5, '1731773018_chuot1.jpg', 'New 100%', 'Q', 1, 3),
(17, 'Google Tivi Coocaa FHD 43 inch 43Z72', 'TV', '4900000', 5, '1731891854_tv1.webp', 'New 100%', 'a', 1, 5),
(18, 'Tivi Xiaomi A Pro 4K 55 inch QLED 2025', 'TV', '6000000', 10, '1731891932_tv2.webp', 'New 100%', 'e', 1, 5),
(19, 'Smart Tivi Samsung QLED 4K 55 inch 2024', 'TV', '8000000', 6, '1731891996_tv3.webp', 'New 100%', 'e', 1, 5),
(20, 'Mainboard ASUS TUF GAMING X870-PLUS', 'ASUS', '9500000', 10, '1731892160_linhkien3.jpg', 'New 100%', 'q', 1, 4),
(21, 'Card màn hình Asus DUAL-RTX 3060-O12G-V2', 'ASUS', '7790000', 10, '1731892224_linhkien1.jpg', 'New 100%', 'r', 1, 4),
(22, 'Card màn hình Asus DUAL-RTX 3050-O6G', 'ASUS', '6990000', 10, '1731892287_linhkien3.jpg', 'New 100%', 'a', 1, 4);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
