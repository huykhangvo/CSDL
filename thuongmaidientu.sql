-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 10, 2022 at 11:44 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thuongmaidientu`
--

-- --------------------------------------------------------

--
-- Table structure for table `fileup`
--

CREATE TABLE `fileup` (
  `id_fileup` int(11) NOT NULL,
  `id_folder` int(11) DEFAULT NULL,
  `title_fileup` varchar(27) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_fileup` text COLLATE utf8mb4_unicode_ci,
  `isdelete` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `id_folder` int(11) NOT NULL,
  `name_folder` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`id_folder`, `name_folder`) VALUES
(1, 'a');

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoan`
--

CREATE TABLE `tai_khoan` (
  `id` int(11) NOT NULL,
  `ho` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ten` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `so_dt` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` tinyint(1) NOT NULL,
  `trang_thai` tinyint(1) NOT NULL,
  `truy_cap` int(11) NOT NULL,
  `ngay_tao` datetime NOT NULL,
  `ngay_sua` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tai_khoan`
--

INSERT INTO `tai_khoan` (`id`, `ho`, `ten`, `hinh_anh`, `email`, `mat_khau`, `so_dt`, `quyen`, `trang_thai`, `truy_cap`, `ngay_tao`, `ngay_sua`) VALUES
(1, 'V??', 'Huy Khang', 'admin.png', 'admin@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '0848741399', 0, 1, 273, '2022-02-08 13:51:10', '2022-02-08 13:51:10'),
(3, 'V??', 'Huy Khang', '1644897102.jpg', '18004057@student.vlute.edu.vn', 'c4ca4238a0b923820dcc509a6f75849b', '0794943324', 2, 1, 1, '2022-02-15 10:51:42', '2022-04-27 10:23:22');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id_cart` int(11) NOT NULL,
  `id_khachhang` int(11) NOT NULL,
  `code_cart` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cart_status` int(11) NOT NULL,
  `cart_date` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cart_payment` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `cart_shipping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart_details`
--

CREATE TABLE `tbl_cart_details` (
  `id_cart_details` int(11) NOT NULL,
  `code_cart` varchar(10) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_sanpham` int(11) NOT NULL,
  `soluongmua` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `ho` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ten` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `sdt` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `matkhau` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_thuonghieu` int(11) NOT NULL,
  `icon` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_thuonghieu`, `icon`, `title`, `parent_id`) VALUES
(1, 'cell-phone', '??i???n tho???i', 0),
(2, 'laptop', 'Laptop', 0),
(3, 'tablet', 'Tablet', 0),
(4, 'usb', 'Ph??? ki???n', 0),
(5, 'wireless-headphones', '??m thanh', 0),
(6, 'smart-watch', '?????ng h???', 0),
(7, 'smart-home', 'Nh?? th??ng minh', 0),
(8, 'processor', 'Linh ki???n PC', 0),
(9, 'computer', 'M??y t??nh', 0),
(10, 'apple', 'Apple', 1),
(11, 'samsung', 'Samsung', 1),
(12, 'xiaomi', 'Xiaomi', 1),
(13, 'oppo', 'OPPO', 1),
(14, 'nokia', 'Nokia', 1),
(15, 'realme', 'Realme', 1),
(16, 'vsmart', 'Vsmart', 1),
(17, 'asus', 'ASUS', 1),
(18, 'huawei', 'Huawei', 1),
(19, 'vivo', 'Vivo', 1),
(20, 'null', 'Thi???t b??? v??n ph??ng', 2),
(21, 'MacBook', 'MacBook', 2),
(22, 'Surface', 'Microsoft Surface', 2),
(23, 'null', 'Asus', 2),
(24, 'null', 'Dell', 2),
(25, 'null', 'MSI', 2),
(26, 'null', 'iPad Pro', 3),
(27, 'null', 'iPad 10.2', 3),
(28, 'null', 'iPad Air', 3),
(29, 'null', 'iPad 9.7', 3),
(30, 'null', 'iPad mini', 3),
(31, 'phukiennoibat', 'Ph??? ki???n n???i b???t', 4),
(32, 'baoda', 'Bao da ???p l??ng', 4),
(33, 'sacduphong', 'S???c d??? ph??ng', 4),
(34, 'thenho', 'Th??? nh???', 4),
(35, 'pkap', 'Ph??? ki???n Apple', 4),
(36, 'danmanghinh', 'D??n m??n h??nh', 4),
(37, 'tainghe', 'Tai nghe', 4),
(38, 'loa', 'Loa', 4),
(39, 'usbocung', 'USB - ??? c???ng', 4),
(40, 'capsac', 'S???c c??p', 4),
(41, 'chuot', 'Chu???t', 4),
(42, 'giadodt', 'Gi?? ????? ??i???n tho???i', 4),
(43, 'balotuisach', 'Balo - T??i x??ch', 4),
(44, 'daydongho', 'D??y ?????ng h???', 4),
(45, 'thietbimang', 'Thi???t b??? m???ng', 4);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuctructhuoc`
--

CREATE TABLE `tbl_danhmuctructhuoc` (
  `id_danhmuc` int(11) NOT NULL,
  `img` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `title` varchar(25) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_danhmuctructhuoc`
--

INSERT INTO `tbl_danhmuctructhuoc` (`id_danhmuc`, `img`, `title`, `id`) VALUES
(1, 'iphone-12-series', 'iPhone 12 Series', 10),
(2, 'iphone-11-series', 'iPhone 11 Series', 10),
(3, 'iphone-xs-xs-max', 'iPhone XS | XS MAX', 10),
(4, 'iphone-x-xr', 'iPhone X | XR', 10),
(5, 'iphone-8-8-plus', 'iPhone 8 | 8 Plus', 10),
(6, 'note', 'Galaxy Note', 11),
(7, 's', 'Galaxy S', 11),
(8, 'a', 'Galaxy A', 11),
(9, 'null', 'Galaxy J', 11),
(10, 'null', 'Galaxy M', 11),
(11, 'null', 'Xiaomi Redmi', 12),
(12, 'null', 'Xiaomi Mi', 12);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_momo`
--

CREATE TABLE `tbl_momo` (
  `id_momo` int(11) NOT NULL,
  `partner_code` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `order_id` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `amount` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `order_info` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `order_type` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `trans_id` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `pay_type` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `code_cart` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giagoc` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `giakhuyenmai` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `baohanh` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `khuyenmai` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_thuonghieu` int(11) NOT NULL,
  `id_loaisanpham` int(11) DEFAULT NULL,
  `id_tructhuoc` int(11) DEFAULT NULL,
  `tinh_trang` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `hopbaogom` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mota` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noi_bat` tinyint(4) NOT NULL DEFAULT '0',
  `img_avatar` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner1` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner2` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner3` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner4` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `banner5` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thong_so_ky_thuat` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `nguoitao` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ngaytao` date DEFAULT NULL,
  `nguoicapnhat` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ngaycapnhat` date DEFAULT NULL,
  `hienthi` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `giagoc`, `giakhuyenmai`, `baohanh`, `khuyenmai`, `id_thuonghieu`, `id_loaisanpham`, `id_tructhuoc`, `tinh_trang`, `hopbaogom`, `mota`, `noi_bat`, `img_avatar`, `banner1`, `banner2`, `banner3`, `banner4`, `banner5`, `thong_so_ky_thuat`, `nguoitao`, `ngaytao`, `nguoicapnhat`, `ngaycapnhat`, `hienthi`) VALUES
(1, 'iPhone 12 Pro Max 256GB Ch??nh H??ng (VN/A)', '33990000', '33590000', '0', '0', 1, 10, 1, '1', 'M??y m???i 100% , ch??nh h??ng Apple Vi???t Nam.', '????nh gi?? chi ti???t iPhone 12 Pro Max 256GB Ch??nh H??ng (VN/A)\r\n???Tr??m cu???i??? c???a d??ng iPhone 12 ???? xu???t hi???n. iPhone 12 Pro Max l?? chi???c iPhone c?? m??n h??nh l???n nh???t t??? tr?????c ?????n nay, mang tr??n m??nh b??? vi x??? l?? m???nh nh???t, camera ?????ng c???p pro c??ng k???t n???i 5G si??u t???c, cho b???n nh???ng tr???i nghi???m tuy???t v???i ch??a t???ng c??.  ', 1, 'https://i.imgur.com/dBPnHyr.png', 'https://i.imgur.com/nvY05nx.png', 'https://i.imgur.com/7B0Vu13.png', 'https://i.imgur.com/AF6NdwU.png', 'https://i.imgur.com/fr2R5x4.png', 'https://i.imgur.com/AbW59L5.png', 'Th??ng s??? k??? thu???t', '', NULL, '', NULL, 0),
(2, 'iPhone 12 128GB Ch??nh h??ng (VN/A)', '24990000', '22500000', '0', '0', 1, 10, 1, '1', 'M??y m???i 100% , ch??nh h??ng Apple Vi???t Nam.', '????nh gi?? chi ti???t iPhone 12 Pro Max 256GB Ch??nh H??ng (VN/A)\r\n???Tr??m cu???i??? c???a d??ng iPhone 12 ???? xu???t hi???n. iPhone 12 Pro Max l?? chi???c iPhone c?? m??n h??nh l???n nh???t t??? tr?????c ?????n nay, mang tr??n m??nh b??? vi x??? l?? m???nh nh???t, camera ?????ng c???p pro c??ng k???t n???i 5G si??u t???c, cho b???n nh???ng tr???i nghi???m tuy???t v???i ch??a t???ng c??.  ', 0, 'https://i.imgur.com/Fp6fLZJ.png', 'https://i.imgur.com/nvY05nx.png', 'https://i.imgur.com/7B0Vu13.png', 'https://i.imgur.com/AF6NdwU.png', 'https://i.imgur.com/fr2R5x4.png', 'https://i.imgur.com/AbW59L5.png', 'Th??ng s??? k??? thu???t', '', NULL, '', NULL, 0),
(3, 'iPhone 12 mini 64GB Ch??nh h??ng (VN/A)', '24990000', '18990000', '0', '0', 1, 10, 1, '1', 'M??y m???i 100% , ch??nh h??ng Apple Vi???t Nam.', '????nh gi?? chi ti???t iPhone 12 Pro Max 256GB Ch??nh H??ng (VN/A)\r\n???Tr??m cu???i??? c???a d??ng iPhone 12 ???? xu???t hi???n. iPhone 12 Pro Max l?? chi???c iPhone c?? m??n h??nh l???n nh???t t??? tr?????c ?????n nay, mang tr??n m??nh b??? vi x??? l?? m???nh nh???t, camera ?????ng c???p pro c??ng k???t n???i 5G si??u t???c, cho b???n nh???ng tr???i nghi???m tuy???t v???i ch??a t???ng c??.  ', 0, 'https://i.imgur.com/2E3lGln.png', 'https://i.imgur.com/nvY05nx.png', 'https://i.imgur.com/7B0Vu13.png', 'https://i.imgur.com/AF6NdwU.png', 'https://i.imgur.com/fr2R5x4.png', 'https://i.imgur.com/AbW59L5.png', 'Th??ng s??? k??? thu???t', '', NULL, '', NULL, 0),
(4, 'iPhone 11 Pro Max 512GB Ch??nh h??ng', '33990000', '30000000', '0', '0', 1, 10, 2, '0', 'M??y m???i 100% , ch??nh h??ng Apple Vi???t Nam.', '????nh gi?? chi ti???t iPhone 12 Pro Max 256GB Ch??nh H??ng (VN/A)\r\n???Tr??m cu???i??? c???a d??ng iPhone 12 ???? xu???t hi???n. iPhone 12 Pro Max l?? chi???c iPhone c?? m??n h??nh l???n nh???t t??? tr?????c ?????n nay, mang tr??n m??nh b??? vi x??? l?? m???nh nh???t, camera ?????ng c???p pro c??ng k???t n???i 5G si??u t???c, cho b???n nh???ng tr???i nghi???m tuy???t v???i ch??a t???ng c??.  ', 0, 'https://i.imgur.com/5ERLeWI.png', 'https://i.imgur.com/nvY05nx.png', 'https://i.imgur.com/7B0Vu13.png', 'https://i.imgur.com/AF6NdwU.png', 'https://i.imgur.com/fr2R5x4.png', 'https://i.imgur.com/AbW59L5.png', 'Th??ng s??? k??? thu???t', '', NULL, '', NULL, 0),
(5, 'iPhone 11 128GB Ch??nh h??ng (VN/A)', '20990000', '16990000', '0', '0', 1, 10, 2, '0', 'M??y m???i 100% , ch??nh h??ng Apple Vi???t Nam.', '????nh gi?? chi ti???t iPhone 12 Pro Max 256GB Ch??nh H??ng (VN/A)\r\n???Tr??m cu???i??? c???a d??ng iPhone 12 ???? xu???t hi???n. iPhone 12 Pro Max l?? chi???c iPhone c?? m??n h??nh l???n nh???t t??? tr?????c ?????n nay, mang tr??n m??nh b??? vi x??? l?? m???nh nh???t, camera ?????ng c???p pro c??ng k???t n???i 5G si??u t???c, cho b???n nh???ng tr???i nghi???m tuy???t v???i ch??a t???ng c??.  ', 0, 'https://i.imgur.com/rRbAi1v.png', 'https://i.imgur.com/nvY05nx.png', 'https://i.imgur.com/7B0Vu13.png', 'https://i.imgur.com/AF6NdwU.png', 'https://i.imgur.com/fr2R5x4.png', 'https://i.imgur.com/AbW59L5.png', 'Th??ng s??? k??? thu???t', '', NULL, '', NULL, 0),
(6, 'iPhone 12 256GB Ch??nh H??ng (VN/A)', '24990000', '22990000', '0', '0', 1, 10, 1, '1', 'M??y m???i 100% , ch??nh h??ng Apple Vi???t Nam.', '????nh gi?? chi ti???t iPhone 12 Pro Max 256GB Ch??nh H??ng (VN/A)\r\n???Tr??m cu???i??? c???a d??ng iPhone 12 ???? xu???t hi???n. iPhone 12 Pro Max l?? chi???c iPhone c?? m??n h??nh l???n nh???t t??? tr?????c ?????n nay, mang tr??n m??nh b??? vi x??? l?? m???nh nh???t, camera ?????ng c???p pro c??ng k???t n???i 5G si??u t???c, cho b???n nh???ng tr???i nghi???m tuy???t v???i ch??a t???ng c??.  ', 0, 'https://i.imgur.com/5k6aeXy.png', 'https://i.imgur.com/nvY05nx.png', 'https://i.imgur.com/7B0Vu13.png', 'https://i.imgur.com/AF6NdwU.png', 'https://i.imgur.com/fr2R5x4.png', 'https://i.imgur.com/AbW59L5.png', 'Th??ng s??? k??? thu???t', '', NULL, '', NULL, 0),
(7, 'iPhone 12 Pro Max 256GB Ch??nh H??ng (VN/A)', '33990000', '33590000', '0', '0', 1, 10, 1, '1', 'M??y m???i 100% , ch??nh h??ng Apple Vi???t Nam.', '????nh gi?? chi ti???t iPhone 12 Pro Max 256GB Ch??nh H??ng (VN/A)\r\n???Tr??m cu???i??? c???a d??ng iPhone 12 ???? xu???t hi???n. iPhone 12 Pro Max l?? chi???c iPhone c?? m??n h??nh l???n nh???t t??? tr?????c ?????n nay, mang tr??n m??nh b??? vi x??? l?? m???nh nh???t, camera ?????ng c???p pro c??ng k???t n???i 5G si??u t???c, cho b???n nh???ng tr???i nghi???m tuy???t v???i ch??a t???ng c??.  ', 0, 'https://i.imgur.com/0KKKNKC.png', 'https://i.imgur.com/nvY05nx.png', 'https://i.imgur.com/7B0Vu13.png', 'https://i.imgur.com/AF6NdwU.png', 'https://i.imgur.com/fr2R5x4.png', 'https://i.imgur.com/AbW59L5.png', 'Th??ng s??? k??? thu???t', '', NULL, '', NULL, 0),
(8, 'Laptop MSI Gaming GL65 LEOPARD 10SCXK-089VN', '24990000', '23990000', 'B???o h??nh 12 th??ng t???i trung t??m b???o h??nh ch??nh h??ng t???i Vi???t Nam. 1 ?????I 1 trong 30 ng??y n???u c?? l???i nh?? s???n xu???t.', 'Nh???p MOCA400 Gi???m/Ho??n ti???n 10% t???i ??a 400.000?? khi thanh to??n Online b???ng v?? Moca', 2, 25, 0, 'M??y m???i 100% , ch??nh h??ng Apple Vi???t Nam.', 'Th??n m??y, c??p USB-C to Lightning, s??ch HDSD', '<p>??&aacute;nh gi&aacute; chi ti???t Laptop MSI Gaming GL65 LEOPARD 10SCXK-089VN</p>\n\n<p>CPU: Intel Core i7-10750H 2.6GHz up to 5.0GHz 12MB<br />\nRAM: 16GB (8GBx2) DDR4 2666MHz (2x SO-DIMM socket, up to 32GB SDRAM)<br />\n&Ocirc;?? c???ng: 1TB SSD M.2 PCIE, x1 slot 2.5&quot; SATA (HDD/SSD)<br />\nCard ????? h???a: NVIDIA GeForce RTX 2060 6GB GDDR6<br />\nM&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) IPS with Anti-Glare, 144Hz, Thin Bezel, 100% sRGB</p>\n\n<p><strong>Laptop MSI GL65 Leopard 10SEK-235VN (Core i7-10750H/ 16GB (8GBx2) DDR4 2666MHz/ 1TB SSD M.2 PCIE/ RTX 2060 6GB GDDR6/ 15.6 FHD IPS 144Hz/ Win 10) - H&agrave;ng Ch&iacute;nh H&atilde;ng</strong>&nbsp;l&agrave; d&ograve;ng Laptop d&agrave;nh cho c&aacute;c game th??? v???i nh???ng t&iacute;nh n??ng cao c???p c&ugrave;ng v???i thi???t k??? ?????c bi???t, m???i l??? v&agrave; c???u h&igrave;nh m???nh m???.</p>\n\n<p><img alt=\"Laptop MSI GL65 Leopard 10SEK-235VN (Core i7-10750H/ 16GB (8GBx2) DDR4 2666MHz/ 1TB SSD M.2 PCIE/ RTX 2060 6GB GDDR6/ 15.6 FHD IPS 144Hz/ Win 10) - H??ng Ch??nh H??ng\" src=\"https://salt.tikicdn.com/ts/tmp/0c/c8/b5/6a9c215484f41e7afb46e4892f69dcba.jpg\" style=\"height:617px; width:750px\" /></p>\n\n<p><strong>M&agrave;n h&igrave;nh hi???n th??? r???ng</strong></p>\n\n<p>Trang b??? m&agrave;n h&igrave;nh 15.6&quot; FHD (1920*1080) IPS with Anti-Glare mang ?????n h&igrave;nh ???nh hi???n th??? r&otilde; n&eacute;t t???ng chi ti???t, m&agrave;u s???c trung th???c nh???t. M&agrave;n h&igrave;nh hi???n th??? r???ng h??n n???m g???n g&agrave;ng trong m???t ki???u d&aacute;ng nh??? g???n gi&uacute;p n&acirc;ng t???m tr???i nghi???m c???a ng?????i s??? d???ng.</p>\n\n<p><img alt=\"Laptop MSI GL65 Leopard 10SEK-235VN (Core i7-10750H/ 16GB (8GBx2) DDR4 2666MHz/ 1TB SSD M.2 PCIE/ RTX 2060 6GB GDDR6/ 15.6 FHD IPS 144Hz/ Win 10) - H??ng Ch??nh H??ng\" src=\"https://salt.tikicdn.com/ts/tmp/c5/58/2a/9e434f6649c295bd151c01ae319a7c9a.jpg\" style=\"height:500px; width:750px\" /></p>\n\n<p><strong>Hi???u n??ng v&ocirc; c&ugrave;ng m???nh m???</strong></p>\n\n<p><strong>MSI GL65 Leopard 10SEK-235VN</strong>&nbsp;s??? h???u s???c m???nh ?????n t??? vi x??? l&yacute; m???i nh???t i7-10750H mang ?????n cho b???n hi???u n??ng v?????t tr???i t???i 10% so v???i c&aacute;c th??? h??? tr?????c. K???t h???p v???i 16GB (8GBx2) DDR4 2666MHz cho kh??? n??ng x??? l&yacute; c&aacute;c t&aacute;c v??? ??a nhi???m m?????t m&agrave;, nh??? nh&agrave;ng h??n. Ng?????i d&ugrave;ng c&oacute; th??? n&acirc;ng c???p th&ecirc;m RAM ????? ph???c v??? cho nhu c???u c&ocirc;ng vi???c v&agrave; gi???i tr&iacute; cao h??n.</p>\n\n<p><img alt=\"Laptop MSI GL65 Leopard 10SEK-235VN (Core i7-10750H/ 16GB (8GBx2) DDR4 2666MHz/ 1TB SSD M.2 PCIE/ RTX 2060 6GB GDDR6/ 15.6 FHD IPS 144Hz/ Win 10) - H??ng Ch??nh H??ng\" src=\"https://salt.tikicdn.com/ts/tmp/75/9f/c2/050c2a27f910fcd2c0db48b4fb8f9814.jpg\" style=\"height:500px; width:750px\" /></p>\n\n<p>S??? d???ng card ????? h???a NVIDIA GeForce RTX 2060 6GB GDDR6 ???????c x&acirc;y d???ng v???i hi???u n??ng ????? h???a ?????t ph&aacute; c???a ki???n tr&uacute;c NVIDIA Turing, h??? tr??? t??ng t???c ????? cho c&aacute;c game ph??? bi???n nh???t v&agrave; c&aacute;c ???ng d???ng ch???nh s???a ???nh.</p>\n\n<p><img alt=\"Laptop MSI GL65 Leopard 10SEK-235VN (Core i7-10750H/ 16GB (8GBx2) DDR4 2666MHz/ 1TB SSD M.2 PCIE/ RTX 2060 6GB GDDR6/ 15.6 FHD IPS 144Hz/ Win 10) - H??ng Ch??nh H??ng\" src=\"https://salt.tikicdn.com/ts/tmp/c3/d9/c0/a0115092da346960a70acb8cb1c3ff85.jpg\" style=\"height:500px; width:750px\" /></p>\n\n<p><strong>Trang b??? ??&egrave;n b&agrave;n ph&iacute;m PER-KEY RGB</strong></p>\n\n<p>??&egrave;n n???n Per-key RGB t&ugrave;y ch???nh ph&iacute;m theo &yacute; th&iacute;ch, th??? hi???n ch??? ????? th???c trong game ho???c nh???p nh&aacute;y theo giai ??i???u b&agrave;i nh???c y&ecirc;u th&iacute;ch c???a b???n. C&aacute;c ch??? ????? ??&egrave;n n???n ???????c h??? tr???: Gold Splash, FPS, MMO, MOBA, free way, Chakra, Disco Mode, Roulette.</p>\n\n<p><img alt=\"Laptop MSI GL65 Leopard 10SEK-235VN (Core i7-10750H/ 16GB (8GBx2) DDR4 2666MHz/ 1TB SSD M.2 PCIE/ RTX 2060 6GB GDDR6/ 15.6 FHD IPS 144Hz/ Win 10) - H??ng Ch??nh H??ng\" src=\"https://salt.tikicdn.com/ts/tmp/30/94/1f/60175ad097aa16eef0883e497ffba235.jpg\" style=\"height:500px; width:750px\" /></p>\n', 0, 'https://i.imgur.com/GOexkeE.png', 'https://i.imgur.com/GOexkeE.png', 'https://i.imgur.com/7Gtx9Su.png', 'https://i.imgur.com/Z54pWYD.png', 'https://i.imgur.com/mZvwWuW.png', 'https://i.imgur.com/RjUFZZL.png', '<p>??&aacute;nh gi&aacute; chi ti???t Laptop MSI Gaming GL65 LEOPARD 10SCXK-089VN</p>\n\n<p>CPU: Intel Core i7-10750H 2.6GHz up to 5.0GHz 12MB<br />\nRAM: 16GB (8GBx2) DDR4 2666MHz (2x SO-DIMM socket, up to 32GB SDRAM)<br />\n&Ocirc;?? c???ng: 1TB SSD M.2 PCIE, x1 slot 2.5&quot; SATA (HDD/SSD)<br />\nCard ????? h???a: NVIDIA GeForce RTX 2060 6GB GDDR6<br />\nM&agrave;n h&igrave;nh: 15.6&quot; FHD (1920 x 1080) IPS with Anti-Glare, 144Hz, Thin Bezel, 100% sRGB</p>\n\n<p><strong>Laptop MSI GL65 Leopard 10SEK-235VN (Core i7-10750H/ 16GB (8GBx2) DDR4 2666MHz/ 1TB SSD M.2 PCIE/ RTX 2060 6GB GDDR6/ 15.6 FHD IPS 144Hz/ Win 10) - H&agrave;ng Ch&iacute;nh H&atilde;ng</strong>&nbsp;l&agrave; d&ograve;ng Laptop d&agrave;nh cho c&aacute;c game th??? v???i nh???ng t&iacute;nh n??ng cao c???p c&ugrave;ng v???i thi???t k??? ?????c bi???t, m???i l??? v&agrave; c???u h&igrave;nh m???nh m???.</p>\n\n<p><img alt=\"Laptop MSI GL65 Leopard 10SEK-235VN (Core i7-10750H/ 16GB (8GBx2) DDR4 2666MHz/ 1TB SSD M.2 PCIE/ RTX 2060 6GB GDDR6/ 15.6 FHD IPS 144Hz/ Win 10) - H??ng Ch??nh H??ng\" src=\"https://salt.tikicdn.com/ts/tmp/0c/c8/b5/6a9c215484f41e7afb46e4892f69dcba.jpg\" style=\"height:617px; width:750px\" /></p>\n\n<p><strong>M&agrave;n h&igrave;nh hi???n th??? r???ng</strong></p>\n\n<p>Trang b??? m&agrave;n h&igrave;nh 15.6&quot; FHD (1920*1080) IPS with Anti-Glare mang ?????n h&igrave;nh ???nh hi???n th??? r&otilde; n&eacute;t t???ng chi ti???t, m&agrave;u s???c trung th???c nh???t. M&agrave;n h&igrave;nh hi???n th??? r???ng h??n n???m g???n g&agrave;ng trong m???t ki???u d&aacute;ng nh??? g???n gi&uacute;p n&acirc;ng t???m tr???i nghi???m c???a ng?????i s??? d???ng.</p>\n\n<p><img alt=\"Laptop MSI GL65 Leopard 10SEK-235VN (Core i7-10750H/ 16GB (8GBx2) DDR4 2666MHz/ 1TB SSD M.2 PCIE/ RTX 2060 6GB GDDR6/ 15.6 FHD IPS 144Hz/ Win 10) - H??ng Ch??nh H??ng\" src=\"https://salt.tikicdn.com/ts/tmp/c5/58/2a/9e434f6649c295bd151c01ae319a7c9a.jpg\" style=\"height:500px; width:750px\" /></p>\n\n<p><strong>Hi???u n??ng v&ocirc; c&ugrave;ng m???nh m???</strong></p>\n\n<p><strong>MSI GL65 Leopard 10SEK-235VN</strong>&nbsp;s??? h???u s???c m???nh ?????n t??? vi x??? l&yacute; m???i nh???t i7-10750H mang ?????n cho b???n hi???u n??ng v?????t tr???i t???i 10% so v???i c&aacute;c th??? h??? tr?????c. K???t h???p v???i 16GB (8GBx2) DDR4 2666MHz cho kh??? n??ng x??? l&yacute; c&aacute;c t&aacute;c v??? ??a nhi???m m?????t m&agrave;, nh??? nh&agrave;ng h??n. Ng?????i d&ugrave;ng c&oacute; th??? n&acirc;ng c???p th&ecirc;m RAM ????? ph???c v??? cho nhu c???u c&ocirc;ng vi???c v&agrave; gi???i tr&iacute; cao h??n.</p>\n\n<p><img alt=\"Laptop MSI GL65 Leopard 10SEK-235VN (Core i7-10750H/ 16GB (8GBx2) DDR4 2666MHz/ 1TB SSD M.2 PCIE/ RTX 2060 6GB GDDR6/ 15.6 FHD IPS 144Hz/ Win 10) - H??ng Ch??nh H??ng\" src=\"https://salt.tikicdn.com/ts/tmp/75/9f/c2/050c2a27f910fcd2c0db48b4fb8f9814.jpg\" style=\"height:500px; width:750px\" /></p>\n\n<p>S??? d???ng card ????? h???a NVIDIA GeForce RTX 2060 6GB GDDR6 ???????c x&acirc;y d???ng v???i hi???u n??ng ????? h???a ?????t ph&aacute; c???a ki???n tr&uacute;c NVIDIA Turing, h??? tr??? t??ng t???c ????? cho c&aacute;c game ph??? bi???n nh???t v&agrave; c&aacute;c ???ng d???ng ch???nh s???a ???nh.</p>\n\n<p><img alt=\"Laptop MSI GL65 Leopard 10SEK-235VN (Core i7-10750H/ 16GB (8GBx2) DDR4 2666MHz/ 1TB SSD M.2 PCIE/ RTX 2060 6GB GDDR6/ 15.6 FHD IPS 144Hz/ Win 10) - H??ng Ch??nh H??ng\" src=\"https://salt.tikicdn.com/ts/tmp/c3/d9/c0/a0115092da346960a70acb8cb1c3ff85.jpg\" style=\"height:500px; width:750px\" /></p>\n\n<p><strong>Trang b??? ??&egrave;n b&agrave;n ph&iacute;m PER-KEY RGB</strong></p>\n\n<p>??&egrave;n n???n Per-key RGB t&ugrave;y ch???nh ph&iacute;m theo &yacute; th&iacute;ch, th??? hi???n ch??? ????? th???c trong game ho???c nh???p nh&aacute;y theo giai ??i???u b&agrave;i nh???c y&ecirc;u th&iacute;ch c???a b???n. C&aacute;c ch??? ????? ??&egrave;n n???n ???????c h??? tr???: Gold Splash, FPS, MMO, MOBA, free way, Chakra, Disco Mode, Roulette.</p>\n\n<p><img alt=\"Laptop MSI GL65 Leopard 10SEK-235VN (Core i7-10750H/ 16GB (8GBx2) DDR4 2666MHz/ 1TB SSD M.2 PCIE/ RTX 2060 6GB GDDR6/ 15.6 FHD IPS 144Hz/ Win 10) - H??ng Ch??nh H??ng\" src=\"https://salt.tikicdn.com/ts/tmp/30/94/1f/60175ad097aa16eef0883e497ffba235.jpg\" style=\"height:500px; width:750px\" /></p>\n', 'V?? Huy Khang', '2022-05-09', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id_shipping` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `id_dangky` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fileup`
--
ALTER TABLE `fileup`
  ADD PRIMARY KEY (`id_fileup`),
  ADD KEY `fk_folder` (`id_folder`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id_folder`);

--
-- Indexes for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  ADD PRIMARY KEY (`id_cart_details`);

--
-- Indexes for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Indexes for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_thuonghieu`);

--
-- Indexes for table `tbl_danhmuctructhuoc`
--
ALTER TABLE `tbl_danhmuctructhuoc`
  ADD PRIMARY KEY (`id_danhmuc`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tbl_momo`
--
ALTER TABLE `tbl_momo`
  ADD PRIMARY KEY (`id_momo`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`),
  ADD KEY `id_thuonghieu` (`id_thuonghieu`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id_shipping`),
  ADD KEY `id_dangky` (`id_dangky`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fileup`
--
ALTER TABLE `fileup`
  MODIFY `id_fileup` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `id_folder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tai_khoan`
--
ALTER TABLE `tai_khoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cart_details`
--
ALTER TABLE `tbl_cart_details`
  MODIFY `id_cart_details` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_thuonghieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_danhmuctructhuoc`
--
ALTER TABLE `tbl_danhmuctructhuoc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_momo`
--
ALTER TABLE `tbl_momo`
  MODIFY `id_momo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id_shipping` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fileup`
--
ALTER TABLE `fileup`
  ADD CONSTRAINT `fk_folder` FOREIGN KEY (`id_folder`) REFERENCES `folder` (`id_folder`);

--
-- Constraints for table `tbl_danhmuctructhuoc`
--
ALTER TABLE `tbl_danhmuctructhuoc`
  ADD CONSTRAINT `tbl_danhmuctructhuoc_ibfk_1` FOREIGN KEY (`id`) REFERENCES `tbl_danhmuc` (`id_thuonghieu`);

--
-- Constraints for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `tbl_sanpham_ibfk_1` FOREIGN KEY (`id_thuonghieu`) REFERENCES `tbl_danhmuc` (`id_thuonghieu`);

--
-- Constraints for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD CONSTRAINT `tbl_shipping_ibfk_1` FOREIGN KEY (`id_dangky`) REFERENCES `tbl_dangky` (`id_dangky`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
