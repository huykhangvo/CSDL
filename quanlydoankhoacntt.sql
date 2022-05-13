-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 13, 2022 at 06:49 AM
-- Server version: 8.0.29
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlydoankhoacntt`
--

-- --------------------------------------------------------

--
-- Table structure for table `chuyennganh`
--

CREATE TABLE `chuyennganh` (
  `idCn` int NOT NULL,
  `idK` int NOT NULL,
  `tenCn` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chuyennganh`
--

INSERT INTO `chuyennganh` (`idCn`, `idK`, `tenCn`) VALUES
(1, 1, 'MẠNG MÁY TÍNH'),
(2, 1, 'KĨ THUẬT PHẦN MỀM'),
(3, 3, 'Chuyên ngành 1'),
(4, 3, 'chuyên ngành 2'),
(5, 2, 'CN OTO 1'),
(6, 2, 'CN OTO 2');

-- --------------------------------------------------------

--
-- Table structure for table `dangkidetai`
--

CREATE TABLE `dangkidetai` (
  `MaDK` int NOT NULL,
  `Mssv` int NOT NULL,
  `MaDT` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dangkidetai`
--

INSERT INTO `dangkidetai` (`MaDK`, `Mssv`, `MaDT`) VALUES
(2, 18004057, 1);

-- --------------------------------------------------------

--
-- Table structure for table `dangkidetailv`
--

CREATE TABLE `dangkidetailv` (
  `MaDKLV` int NOT NULL,
  `MaGV` int NOT NULL,
  `MaDTLV` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detai`
--

CREATE TABLE `detai` (
  `MaDT` int NOT NULL,
  `TenDT` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `NoiDung` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `TaiLieu` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `SoluongSV` int NOT NULL,
  `SoluongDK` int NOT NULL,
  `MaDA` int NOT NULL,
  `MaHK` int NOT NULL,
  `MaGV` int NOT NULL,
  `idK` int NOT NULL,
  `idCn` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `detai`
--

INSERT INTO `detai` (`MaDT`, `TenDT`, `NoiDung`, `TaiLieu`, `SoluongSV`, `SoluongDK`, `MaDA`, `MaHK`, `MaGV`, `idK`, `idCn`) VALUES
(1, 'Xây dựng website bán linh kiện máy tính', '-Modul 1\\r\\n-Modul 2\\r\\n-Modul 3', '', 1, 1, 1, 1, 1, 1, 1),
(2, 'Chích Heo', '-Modul 1\\r\\n-Modul 2\\r\\n-Modul 3', '', 1, 1, 1, 1, 2, 3, 3),
(3, 'Tìm hiểu về DeepLearning', '-Modul 1\\r\\n-Modul 2\\r\\n-Modul 3', '', 1, 1, 1, 1, 3, 1, 1),
(4, 'Xây dựng website quản lí đoàn viên khoa CNTT', '-Modul 1\\r\\n-Modul 2\\r\\n-Modul 3', '', 1, 1, 1, 1, 3, 1, 1),
(5, 'Tấn Công Mạng', 'Các thông tin cá nhân của sinh viên sẽ được dùng để in giấy xác nhận, phiếu điểm, bằng tốt nghiệp.\\r\\n\\r\\nNếu thông tin trên có sai sót, sinh viên mau chóng liên hệ Phòng Công tác Sinh viên để làm thủ tục hiệu chỉnh lại.', '', 1, 1, 1, 1, 3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `detailv`
--

CREATE TABLE `detailv` (
  `MaDT` int NOT NULL,
  `TenDT` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NoiDung` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TaiLieu` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SoluongSV` int NOT NULL,
  `SoluongDK` int NOT NULL,
  `MaDA` int NOT NULL,
  `MaHK` int NOT NULL,
  `MaGV` int NOT NULL,
  `idK` int NOT NULL,
  `idCn` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `detailv`
--

INSERT INTO `detailv` (`MaDT`, `TenDT`, `NoiDung`, `TaiLieu`, `SoluongSV`, `SoluongDK`, `MaDA`, `MaHK`, `MaGV`, `idK`, `idCn`) VALUES
(1, 'TÌM HIỂU 1', 'TÌM HIỂU', '', 1, 1, 1, 1, 3, 1, 1),
(2, 'TÌM HIỂU 2', 'TÌM HIỂU', '', 1, 1, 1, 1, 3, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `diem`
--

CREATE TABLE `diem` (
  `MaD` int NOT NULL,
  `MaDT` int NOT NULL,
  `Mssv` int NOT NULL,
  `MaKHTH` int NOT NULL,
  `Diem` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diem`
--

INSERT INTO `diem` (`MaD`, `MaDT`, `Mssv`, `MaKHTH`, `Diem`) VALUES
(1, 1, 18004057, 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `diemlv`
--

CREATE TABLE `diemlv` (
  `MaDLV` int NOT NULL,
  `MaDTLV` int NOT NULL,
  `MaGV` int NOT NULL,
  `Diem` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `diemlv`
--

INSERT INTO `diemlv` (`MaDLV`, `MaDTLV`, `MaGV`, `Diem`) VALUES
(1, 1, 3, 10);

-- --------------------------------------------------------

--
-- Table structure for table `doan`
--

CREATE TABLE `doan` (
  `MaDA` int NOT NULL,
  `TenDA` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `LoaiDA` int NOT NULL,
  `Mota` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `doan`
--

INSERT INTO `doan` (`MaDA`, `TenDA`, `LoaiDA`, `Mota`) VALUES
(1, 'Đồ án 1', 1, 'Các chủ đề liên quan đến tìm hiểu các mô hình các công nghệ, dịch thuật, triễn khai các module cơ bản'),
(2, 'Đồ án 2', 2, 'Lập trình ứng dụng thiết bị di động, lập trình website, triển khai hệ thống mạng, nghiên cứu ứng dụng thuật toán có liên quan đến khoa học máy tính như SVM, LSTM, RNN,...   '),
(3, 'ĐỒ ÁN 3', 3, 'Nghiên cứu khoa học máy tính, nghiên cứu về công nghệ mới hiện nay và ứng dụng, triễn khai hệ thống vào công tác học tập của khoa');

-- --------------------------------------------------------

--
-- Table structure for table `giahan`
--

CREATE TABLE `giahan` (
  `MaGH` int NOT NULL,
  `MaDTLV` int NOT NULL,
  `ThoigianGH` date NOT NULL,
  `khoalv` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gvhd1`
--

CREATE TABLE `gvhd1` (
  `MaGV` int NOT NULL,
  `TenGV` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `EmailGV` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `idK` int NOT NULL,
  `Hocvi` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `Matkhau` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `PQ` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gvhd1`
--

INSERT INTO `gvhd1` (`MaGV`, `TenGV`, `EmailGV`, `idK`, `Hocvi`, `Matkhau`, `PQ`) VALUES
(1, 'ADMIN', 'admin@gmail.com', 1, 'ADMIN', 'c81e728d9d4c2f636f067f89cc14862c', 1),
(2, 'USER', 'user@gmail.com', 2, 'USER', 'c4ca4238a0b923820dcc509a6f75849b', 0),
(3, 'Trần Thái Bảo', 'baott@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(4, 'Nguyễn Ngọc Nga', 'ngann@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(5, 'Phan Anh Cang', 'cangpa@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(6, 'Nguyễn Văn Hiếu', 'hieunv@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(7, 'Nguyễn Vạn Năng', 'nangnv@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(8, 'Trần Hồ Đạt', 'datth@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(9, 'Lê Hoàng An', 'anlh@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(10, 'Trần Thị Tố Loan', 'loanttt@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(11, 'Trần Thu Mai', 'maitt@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(12, 'Nguyễn Thị Hồng Yến', 'yennth@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(13, 'Nguyễn Thị Mỹ Nga', 'ngantm@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(14, 'Lê Thị Hoàng Yến', 'yenlth@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(15, 'Lê Thị Hạnh Hiền', 'hienlth@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(16, 'Trần Thị Cẩm Tú', 'tuttc@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0),
(17, 'Trần Phan An Trường', 'truongtpa@vlute.edu.vn', 1, 'Cao Học', 'e10adc3949ba59abbe56e057f20f883e', 0),
(18, 'Nguyễn Ngọc Phương Trang', 'trangnnp@vlute.edu.vn', 1, 'Cao Học', 'e10adc3949ba59abbe56e057f20f883e', 0),
(19, 'Mai Thiên Thư', 'thumt@vlute.edu.vn', 1, 'Cao Học', 'e10adc3949ba59abbe56e057f20f883e', 0),
(20, 'Tô Nguyễn Hoàng Phúc', 'phuctnh@vlute.edu.vn', 1, 'Cao Học', 'e10adc3949ba59abbe56e057f20f883e', 0),
(21, 'Trần Thị Kim Ngân', 'nganttk@vlute.edu.vn', 1, 'Cao Học', 'e10adc3949ba59abbe56e057f20f883e', 0),
(22, 'Trần Quốc Thịnh', 'thinhtq@vlute.edu.vn', 1, 'Cao Học', 'e10adc3949ba59abbe56e057f20f883e', 0),
(23, 'Trương Mỹ Thu Thảo', 'thaotmt@vlute.edu.vn', 1, 'Thạc Sĩ', 'e10adc3949ba59abbe56e057f20f883e', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hocky`
--

CREATE TABLE `hocky` (
  `MaHK` int NOT NULL,
  `TenHK` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `NienkhoaHK` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `ThoigianBDHK` date NOT NULL,
  `ThoigianKTHK` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hocky`
--

INSERT INTO `hocky` (`MaHK`, `TenHK`, `NienkhoaHK`, `ThoigianBDHK`, `ThoigianKTHK`) VALUES
(1, 'Học kỳ I', '2020 - 2021', '2022-05-13', '2022-06-25'),
(2, 'Học kỳ II', '2019 - 2020', '2020-03-09', '2020-05-23'),
(3, 'Học kỳ I', '2019 - 2020', '2019-09-02', '2019-12-14'),
(4, 'Học kỳ II', '2020 - 2021', '2021-03-15', '2021-07-31'),
(5, 'Học Kỳ Hè', '2020 - 2021', '2021-07-12', '2021-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `kehoachthuchien`
--

CREATE TABLE `kehoachthuchien` (
  `MaKHTH` int NOT NULL,
  `MaDT` int NOT NULL,
  `NoiDung` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `NgayBD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NgayKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kehoachthuchien`
--

INSERT INTO `kehoachthuchien` (`MaKHTH`, `MaDT`, `NoiDung`, `NgayBD`, `NgayKT`) VALUES
(1, 1, 'Tranh thủ nộp bài đi nhé !!!', '2021-08-09 10:19:58', '2021-08-12'),
(2, 1, 'Lan 2', '2021-08-09 10:45:01', '2021-08-26'),
(3, 1, 'lan1', '2021-08-09 10:45:15', '2021-08-17'),
(4, 1, 'zxzxcs', '2021-08-09 10:53:01', '2021-08-25'),
(5, 1, 'Nộp modul 1 đây nhé !', '2021-08-09 22:42:47', '2021-08-17'),
(6, 1, 'rrrrr', '2021-08-10 07:38:46', '2021-08-29'),
(7, 1, 'qqqqq', '2021-08-14 23:56:47', '2021-08-22'),
(8, 1, 'dd', '2021-08-15 00:01:33', '2021-08-22'),
(9, 1, 'modul 3', '2021-08-15 00:19:16', '2021-08-22'),
(10, 1, 'modul 3', '2021-08-15 00:19:16', '2021-08-22'),
(11, 1, 'qqqqqqqq', '2021-08-20 00:22:27', '2021-08-26');

-- --------------------------------------------------------

--
-- Table structure for table `kehoachthuchienlv`
--

CREATE TABLE `kehoachthuchienlv` (
  `MaKHTHLV` int NOT NULL,
  `MaDTLV` int NOT NULL,
  `NoiDung` text NOT NULL,
  `NgayBD` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `NgayKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kehoachthuchienlv`
--

INSERT INTO `kehoachthuchienlv` (`MaKHTHLV`, `MaDTLV`, `NoiDung`, `NgayBD`, `NgayKT`) VALUES
(1, 1, 'tổng duyệt', '2021-08-23 07:26:46', '2020-02-01'),
(2, 2, 'Nộp đề cương', '2021-08-25 10:03:36', '2021-08-05');

-- --------------------------------------------------------

--
-- Table structure for table `khoa`
--

CREATE TABLE `khoa` (
  `idK` int NOT NULL,
  `MaKhoa` varchar(50) NOT NULL,
  `TenKhoa` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `khoa`
--

INSERT INTO `khoa` (`idK`, `MaKhoa`, `TenKhoa`) VALUES
(1, 'CTT', 'CÔNG NGHỆ THÔNG TIN'),
(2, 'OTO', 'CÔNG NGHỆ Ô TÔ'),
(3, 'CTY', 'THÚ Y'),
(4, 'CTXH', 'CÔNG TÁC XÃ HỘI'),
(5, 'KTL', 'KINH TẾ LUẬT'),
(6, 'CKDL', 'CƠ KHÍ ĐỘNG LỰC'),
(7, 'KHCB', 'KHOA HỌC CƠ BẢN'),
(8, 'CK', 'CƠ KHÍ'),
(9, 'LCT', 'LÝ LUẬN CHÍNH TRỊ'),
(10, 'DDT', 'ĐIỆN - ĐIỆN TỬ');

-- --------------------------------------------------------

--
-- Table structure for table `khoalv`
--

CREATE TABLE `khoalv` (
  `khoalv` int NOT NULL,
  `tenkhoalv` text NOT NULL,
  `Nienkhoalv` text NOT NULL,
  `TGBD` date NOT NULL,
  `TGKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `khoalv`
--

INSERT INTO `khoalv` (`khoalv`, `tenkhoalv`, `Nienkhoalv`, `TGBD`, `TGKT`) VALUES
(1, 'Khoá 1', '2022 - 2023', '2022-02-12', '2022-05-12'),
(2, 'Khóa 2', '2019 - 2020', '2019-08-01', '2019-12-01'),
(3, 'Khóa 3', '2019 - 2020', '2019-08-01', '2019-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `lichbc`
--

CREATE TABLE `lichbc` (
  `MaLich` int NOT NULL,
  `ND` text CHARACTER SET utf8mb3 COLLATE utf8_unicode_ci NOT NULL,
  `NgayHen` date NOT NULL,
  `GioHen` time NOT NULL,
  `MaDT` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lichbc`
--

INSERT INTO `lichbc` (`MaLich`, `ND`, `NgayHen`, `GioHen`, `MaDT`) VALUES
(1, 'Đi báo cáo', '2022-05-12', '25:36:58', 1),
(2, '8/8/2020(chủ nhật) tại phòng A202 vào lúc 14h.\r\nThân gửi !!!', '2021-08-20', '00:00:00', 1),
(3, '14/08(Chủ Nhật) _Phòng A206_ 14h00_Báo cáo nội dung tiếp theo !!!', '2021-08-14', '00:00:00', 1),
(4, 'helooo', '2021-08-14', '00:00:00', 1),
(5, 'helooo', '2021-08-14', '00:00:00', 1),
(6, '8-9 bc', '2021-08-14', '00:00:00', 1),
(7, '10-8', '2021-08-14', '00:00:00', 1),
(8, 'sdsfd', '2021-08-17', '22:30:00', 2),
(9, 'sdsfd', '2021-08-17', '00:00:00', 2),
(10, 'sdsfd', '2021-08-17', '00:00:00', 2),
(11, 'haha', '2021-08-19', '00:00:00', 2),
(12, 'Gặp trao đổi một số vấn đề nhé !!!', '2021-08-20', '00:00:00', 2),
(13, 'You should be able to use the step attribute to vary the number of days jumped each time the date is incremented (e.g. to only make Saturdays selectable). However, this does not seem to be in any implementation at the time of writing.', '2021-08-14', '00:00:00', 3),
(14, 'có gì au', '2021-08-15', '09:00:00', 3),
(15, 'có gì au', '2021-08-15', '09:00:00', 3),
(16, 'hông báo cáo tui cho 1đ', '2021-08-20', '08:00:00', 3),
(17, 'hông báo cáo tui cho 1đ', '2021-08-15', '08:00:00', 3),
(18, 'sdsdfsdf', '2021-08-15', '02:30:00', 4),
(19, 'fghf', '2021-08-15', '15:30:00', 4),
(20, 'bgb', '2021-08-17', '24:00:00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `lichbclv`
--

CREATE TABLE `lichbclv` (
  `MaLichbc` int NOT NULL,
  `TGBVDC` date DEFAULT NULL,
  `TGBVCT` date DEFAULT NULL,
  `MaDTLV` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `lichbclv`
--

INSERT INTO `lichbclv` (`MaLichbc`, `TGBVDC`, `TGBVCT`, `MaDTLV`) VALUES
(1, '2021-01-01', '2021-04-03', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lop`
--

CREATE TABLE `lop` (
  `Malop` int NOT NULL,
  `Tenlop` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idK` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `lop`
--

INSERT INTO `lop` (`Malop`, `Tenlop`, `idK`) VALUES
(1, '1CTT18A1', 1),
(2, '1CTT18A2', 1),
(3, '1OTO17A', 2),
(4, '2OTO17A', 2),
(5, '1CTT17A1', 1),
(6, '1CTT17A2', 1),
(7, '1CTY17A1', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int NOT NULL,
  `MaKHTH` int NOT NULL,
  `Mssv` int NOT NULL,
  `ThoiGianNB` timestamp NOT NULL,
  `Sanpham` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaKHTH`, `Mssv`, `ThoiGianNB`, `Sanpham`) VALUES
(1, 1, 18004057, '2021-08-09 21:29:27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sanphamlv`
--

CREATE TABLE `sanphamlv` (
  `MaSPLV` int NOT NULL,
  `MaKHTHLV` int NOT NULL,
  `MaGV` int NOT NULL,
  `ThoiGianNB` timestamp NOT NULL,
  `Sanpham` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `sanphamlv`
--

INSERT INTO `sanphamlv` (`MaSPLV`, `MaKHTHLV`, `MaGV`, `ThoiGianNB`, `Sanpham`) VALUES
(1, 1, 1, '2021-07-31 10:56:19', 'đề cương');

-- --------------------------------------------------------

--
-- Table structure for table `sinhvien1`
--

CREATE TABLE `sinhvien1` (
  `Mssv` int NOT NULL,
  `Tensv` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `idK` int NOT NULL,
  `Malop` int NOT NULL,
  `idCn` int NOT NULL,
  `Matkhau` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `sinhvien1`
--

INSERT INTO `sinhvien1` (`Mssv`, `Tensv`, `Email`, `idK`, `Malop`, `idCn`, `Matkhau`) VALUES
(17004001, 'Lê Thúy An', '17004001@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(17004004, 'Trương Ngọc Anh', '17004004@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(17004009, 'Nguyễn Tuấn Anh', '17004009@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(17004015, 'Tạ Thanh Bình', '17004015@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(17004016, 'Võ Thị Yến Chi', '17004016@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(17004017, 'Nguyễn Thiện Công', '17004017@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(17004018, 'Nguyễn Thị Bạch Cúc', '17004018@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(17004019, 'Trần Trí Cường', '17004019@student.vlute.edu.vn', 1, 1, 1, 'e10adc3949ba59abbe56e057f20f883e'),
(17004020, 'Nguyễn Quốc Cường', '17004020@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(17004021, 'Nguyễn Thị Phương Đài', '17004021@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(17004022, 'Trần Vủ Đang', '17004022@student.vlute.edu.vn', 1, 1, 1, 'e10adc3949ba59abbe56e057f20f883e'),
(17004024, 'Trương Hải Đăng', '17004024@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(17004025, 'Nguyễn Hải Đăng', '17004025@student.vlute.edu.vn', 1, 1, 1, 'e10adc3949ba59abbe56e057f20f883e'),
(17004027, 'Trương Công Đạt', '17004027@student.vlute.edu.vn', 1, 1, 1, 'e10adc3949ba59abbe56e057f20f883e'),
(17004028, 'Nguyễn Thành Đạt', '17004028@student.vlute.edu.vn', 1, 1, 1, 'e10adc3949ba59abbe56e057f20f883e'),
(17004035, 'Nguyễn Văn Đức', '17004035@student.vlute.edu.vn', 1, 1, 1, 'e10adc3949ba59abbe56e057f20f883e'),
(17004036, 'Lê Thị Thùy Dương', '17004036@student.vlute.edu.vn', 1, 1, 1, 'e10adc3949ba59abbe56e057f20f883e'),
(17004037, 'Nguyễn Thị Thùy Dương', '17004037@student.vlute.edu.vn', 1, 29, 1, 'e10adc3949ba59abbe56e057f20f883e'),
(17004038, 'Phạm Trọng Duy', '17004038@student.vlute.edu.vn', 1, 1, 1, 'e10adc3949ba59abbe56e057f20f883e'),
(17004043, 'Nguyễn Bá Duy', '17004043@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(17004046, 'Phạm Phúc Duy', '17004046@student.vlute.edu.vn', 1, 1, 1, 'e10adc3949ba59abbe56e057f20f883e'),
(17004047, 'Phạm Thanh Duy', '17004047@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(17004050, 'Trần Trường Giang', '17004050@student.vlute.edu.vn', 1, 1, 2, 'e10adc3949ba59abbe56e057f20f883e'),
(18004057, 'Võ Huy Khang', '18004057@student.vlute.edu.vn', 1, 1, 1, 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Table structure for table `tailieu`
--

CREATE TABLE `tailieu` (
  `MaTL` int NOT NULL,
  `MaDT` int NOT NULL,
  `TaiLieu` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tailieu`
--

INSERT INTO `tailieu` (`MaTL`, `MaDT`, `TaiLieu`) VALUES
(1, 1, 'sss'),
(3, 1, 'Đề tài.xlsx'),
(4, 2, 'file share.docx'),
(5, 3, 'file share.docx'),
(6, 4, 'giangvien.xlsx'),
(7, 1, 'khoa.xlsx'),
(8, 2, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.sql'),
(9, 3, 'file share.docx');

-- --------------------------------------------------------

--
-- Table structure for table `tailieulv`
--

CREATE TABLE `tailieulv` (
  `MaTLLV` int NOT NULL,
  `MaDTLV` int NOT NULL,
  `TaiLieu` text COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `tailieulv`
--

INSERT INTO `tailieulv` (`MaTLLV`, `MaDTLV`, `TaiLieu`) VALUES
(1, 1, 'sa'),
(2, 1, 'file share.docx');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chuyennganh`
--
ALTER TABLE `chuyennganh`
  ADD PRIMARY KEY (`idCn`),
  ADD KEY `gf` (`idK`);

--
-- Indexes for table `dangkidetai`
--
ALTER TABLE `dangkidetai`
  ADD PRIMARY KEY (`MaDK`),
  ADD KEY `xcsd` (`Mssv`),
  ADD KEY `csdfsd` (`MaDT`);

--
-- Indexes for table `dangkidetailv`
--
ALTER TABLE `dangkidetailv`
  ADD PRIMARY KEY (`MaDKLV`),
  ADD KEY `fk_magvien` (`MaGV`),
  ADD KEY `fk_detai` (`MaDTLV`);

--
-- Indexes for table `detai`
--
ALTER TABLE `detai`
  ADD PRIMARY KEY (`MaDT`),
  ADD KEY `fk_DA2` (`MaDA`),
  ADD KEY `fk_HK` (`MaHK`),
  ADD KEY `fk_K` (`idK`),
  ADD KEY `dssd` (`MaGV`),
  ADD KEY `fgfd` (`idCn`);

--
-- Indexes for table `detailv`
--
ALTER TABLE `detailv`
  ADD PRIMARY KEY (`MaDT`);

--
-- Indexes for table `diem`
--
ALTER TABLE `diem`
  ADD PRIMARY KEY (`MaD`),
  ADD KEY `ghty` (`MaDT`),
  ADD KEY `yuiu` (`MaKHTH`),
  ADD KEY `gg` (`Mssv`);

--
-- Indexes for table `diemlv`
--
ALTER TABLE `diemlv`
  ADD PRIMARY KEY (`MaDLV`),
  ADD KEY `fgf` (`MaDTLV`),
  ADD KEY `ffdg` (`MaGV`);

--
-- Indexes for table `doan`
--
ALTER TABLE `doan`
  ADD PRIMARY KEY (`MaDA`);

--
-- Indexes for table `giahan`
--
ALTER TABLE `giahan`
  ADD PRIMARY KEY (`MaGH`),
  ADD KEY `ggg` (`MaDTLV`),
  ADD KEY `bb` (`khoalv`);

--
-- Indexes for table `gvhd1`
--
ALTER TABLE `gvhd1`
  ADD PRIMARY KEY (`MaGV`),
  ADD KEY `sds` (`idK`);

--
-- Indexes for table `hocky`
--
ALTER TABLE `hocky`
  ADD PRIMARY KEY (`MaHK`);

--
-- Indexes for table `kehoachthuchien`
--
ALTER TABLE `kehoachthuchien`
  ADD PRIMARY KEY (`MaKHTH`),
  ADD KEY `fgfe` (`MaDT`);

--
-- Indexes for table `kehoachthuchienlv`
--
ALTER TABLE `kehoachthuchienlv`
  ADD PRIMARY KEY (`MaKHTHLV`),
  ADD KEY `fk_madetai` (`MaDTLV`);

--
-- Indexes for table `khoa`
--
ALTER TABLE `khoa`
  ADD PRIMARY KEY (`idK`);

--
-- Indexes for table `khoalv`
--
ALTER TABLE `khoalv`
  ADD PRIMARY KEY (`khoalv`);

--
-- Indexes for table `lichbc`
--
ALTER TABLE `lichbc`
  ADD PRIMARY KEY (`MaLich`),
  ADD KEY `vdfv` (`MaDT`);

--
-- Indexes for table `lichbclv`
--
ALTER TABLE `lichbclv`
  ADD PRIMARY KEY (`MaLichbc`),
  ADD KEY `FK_dtlv` (`MaDTLV`);

--
-- Indexes for table `lop`
--
ALTER TABLE `lop`
  ADD PRIMARY KEY (`Malop`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD UNIQUE KEY `MaKHTH` (`MaKHTH`),
  ADD UNIQUE KEY `Mssv` (`Mssv`);

--
-- Indexes for table `sanphamlv`
--
ALTER TABLE `sanphamlv`
  ADD PRIMARY KEY (`MaSPLV`),
  ADD UNIQUE KEY `MaKHTHLV` (`MaKHTHLV`),
  ADD UNIQUE KEY `MaGV` (`MaGV`);

--
-- Indexes for table `sinhvien1`
--
ALTER TABLE `sinhvien1`
  ADD PRIMARY KEY (`Mssv`);

--
-- Indexes for table `tailieu`
--
ALTER TABLE `tailieu`
  ADD PRIMARY KEY (`MaTL`);

--
-- Indexes for table `tailieulv`
--
ALTER TABLE `tailieulv`
  ADD PRIMARY KEY (`MaTLLV`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chuyennganh`
--
ALTER TABLE `chuyennganh`
  MODIFY `idCn` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `dangkidetai`
--
ALTER TABLE `dangkidetai`
  MODIFY `MaDK` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dangkidetailv`
--
ALTER TABLE `dangkidetailv`
  MODIFY `MaDKLV` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `detai`
--
ALTER TABLE `detai`
  MODIFY `MaDT` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `detailv`
--
ALTER TABLE `detailv`
  MODIFY `MaDT` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `diem`
--
ALTER TABLE `diem`
  MODIFY `MaD` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `diemlv`
--
ALTER TABLE `diemlv`
  MODIFY `MaDLV` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `doan`
--
ALTER TABLE `doan`
  MODIFY `MaDA` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `giahan`
--
ALTER TABLE `giahan`
  MODIFY `MaGH` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `gvhd1`
--
ALTER TABLE `gvhd1`
  MODIFY `MaGV` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `hocky`
--
ALTER TABLE `hocky`
  MODIFY `MaHK` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kehoachthuchien`
--
ALTER TABLE `kehoachthuchien`
  MODIFY `MaKHTH` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `kehoachthuchienlv`
--
ALTER TABLE `kehoachthuchienlv`
  MODIFY `MaKHTHLV` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `khoa`
--
ALTER TABLE `khoa`
  MODIFY `idK` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `khoalv`
--
ALTER TABLE `khoalv`
  MODIFY `khoalv` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `lichbc`
--
ALTER TABLE `lichbc`
  MODIFY `MaLich` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `lichbclv`
--
ALTER TABLE `lichbclv`
  MODIFY `MaLichbc` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `lop`
--
ALTER TABLE `lop`
  MODIFY `Malop` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `sanphamlv`
--
ALTER TABLE `sanphamlv`
  MODIFY `MaSPLV` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sinhvien1`
--
ALTER TABLE `sinhvien1`
  MODIFY `Mssv` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18004058;

--
-- AUTO_INCREMENT for table `tailieu`
--
ALTER TABLE `tailieu`
  MODIFY `MaTL` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tailieulv`
--
ALTER TABLE `tailieulv`
  MODIFY `MaTLLV` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
