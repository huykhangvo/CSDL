-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: sql110.byetcluster.com
-- Thời gian đã tạo: Th10 23, 2021 lúc 09:54 AM
-- Phiên bản máy phục vụ: 5.7.35-38
-- Phiên bản PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `freev_29937748_TracNghiemOnline`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `permission` int(1) DEFAULT '1',
  `last_login` datetime NOT NULL,
  `gender_id` int(1) NOT NULL DEFAULT '1',
  `avatar` varchar(255) DEFAULT 'avatar-default.jpg',
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`admin_id`, `username`, `email`, `password`, `name`, `permission`, `last_login`, `gender_id`, `avatar`, `birthday`) VALUES
(1, 'admin', '02092000@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 'Võ Huy Khang', 1, '2021-11-23 09:02:39', 2, 'admin_0a2a7ff3f08ea2f5_4c4c60f88be6b996_3450816334417691769722.jpg', '2000-09-02'),
(2, 'QuocMinh', '19008079@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Đồng Quốc Minh', 1, '2021-11-05 10:29:02', 2, 'avatar-default.jpg', '1997-01-01'),
(3, 'TanSang', '19008133@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Huỳnh Tấn Sang', 1, '2021-10-05 05:49:47', 2, 'avatar-default.jpg', '1997-01-01'),
(4, 'QuangTruong', '19008179@student.vlute.edu.vn', 'd41d8cd98f00b204e9800998ecf8427e', 'Lê Quang trần truồng', 1, '2021-10-05 05:50:16', 1, 'avatar-default.jpg', '1997-01-01'),
(5, 'An', '19008001@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'An', 1, '2021-10-05 08:43:21', 2, 'avatar-default.jpg', '1997-01-01'),
(7, 'AnhPhuc', '18008111 @student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Dương Anh Phúc', 1, '2021-11-08 09:29:44', 2, 'avatar-default.jpg', '1997-01-01'),
(11, 'HongDuy', '20003025@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Ngô Hồng Duy ', 1, '2021-10-22 04:50:32', 2, 'avatar-default.jpg', '1997-01-01'),
(12, '500AE', '500AE@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Hello 499 AE Còn Lại', 1, '2021-11-16 21:02:14', 2, 'avatar-default.jpg', '1997-01-01'),
(13, 'MyXuyen', '18004160@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Huỳnh Thị Mỹ Xuyên', 1, '2021-11-22 22:33:22', 2, 'avatar-default.jpg', '1997-01-01');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chats`
--

CREATE TABLE `chats` (
  `ID` int(11) NOT NULL,
  `username` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time_sent` datetime NOT NULL,
  `chat_content` text COLLATE utf8_unicode_ci NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `grade_id` int(10) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `classes`
--

INSERT INTO `classes` (`class_id`, `grade_id`, `class_name`, `teacher_id`) VALUES
(1, 1, '1CTT18A1', 1),
(2, 11, 'Ăn Chơi Và Du Lịch', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `genders`
--

CREATE TABLE `genders` (
  `gender_id` int(1) NOT NULL,
  `gender_detail` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `genders`
--

INSERT INTO `genders` (`gender_id`, `gender_detail`) VALUES
(1, 'Chưa Xác Định'),
(2, 'Nam'),
(3, 'Nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `grades`
--

CREATE TABLE `grades` (
  `grade_id` int(11) NOT NULL,
  `detail` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `grades`
--

INSERT INTO `grades` (`grade_id`, `detail`) VALUES
(1, 'NGÀNH CÔNG NGHỆ THÔNG TIN'),
(2, 'NGÀNH AN TOÀN THÔNG TIN'),
(3, 'NGÀNH KỸ THUẬT HÓA HỌC'),
(4, 'NGÀNH CÔNG NGHỆ KỸ THUẬT CƠ ĐI'),
(5, 'NGÀNH CÔNG NGHỆ KỸ THUẬT CƠ KH'),
(6, 'NGÀNH CÔNG TÁC XÃ HỘI'),
(7, 'NGÀNH DU LỊCH'),
(8, 'NGÀNH SƯ PHẠM KỸ THUẬT CÔNG NG'),
(9, 'NGÀNH SƯ PHẠM CÔNG NGHỆ'),
(10, 'NGÀNH THÚ Y'),
(11, 'NGÀNH CÔNG NGHỆ THỰC PHẨM'),
(12, 'NGÀNH KỸ THUẬT ĐIỆN');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `levels`
--

CREATE TABLE `levels` (
  `level_id` int(11) NOT NULL,
  `level_detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `levels`
--

INSERT INTO `levels` (`level_id`, `level_detail`) VALUES
(1, 'Đáp án chính xác'),
(2, 'Phân vân'),
(3, 'Khó');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `username` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `notification_title` text COLLATE utf8_unicode_ci NOT NULL,
  `notification_content` text COLLATE utf8_unicode_ci NOT NULL,
  `time_sent` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `permission` int(11) NOT NULL,
  `permission_detail` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`permission`, `permission_detail`) VALUES
(1, 'Admin'),
(2, 'Giáo Viên'),
(3, 'Sinh Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `grade_id` int(10) NOT NULL,
  `unit` int(2) NOT NULL,
  `level_id` int(11) NOT NULL,
  `question_content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer_a` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer_b` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer_c` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `answer_d` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `correct_answer` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `question_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL DEFAULT '1',
  `sent_by` varchar(255) NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`grade_id`, `unit`, `level_id`, `question_content`, `answer_a`, `answer_b`, `answer_c`, `answer_d`, `correct_answer`, `question_id`, `subject_id`, `sent_by`, `status_id`) VALUES
(1, 1, 1, '<p><strong>Cụ Phan Bội Châu nhận định: “Đương lúc khói độc mây mù, thình lình có một trận gió xuân thổi tới. Đương giữa lúc trời khuya đất ngủ, thình lình có một tia thái dương mọc ra. Trận gió xuân ấy, tia thái dương ấy là ………”.</strong></p><p><strong>Dấu “……..” trong câu nói trên là gì? </strong></p>', '<p>Cách mạng Tân Hợi ở Trung Quốc</p>', '<p>Chủ nghĩa xã hội</p>', '<p>Cách mạng Nga năm 1917</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chủ nghĩa xã hội</p>', 1, 1, 'admin', 4),
(1, 1, 1, '<p><strong>“Nhất Sĩ, nhĩ Phương, tam Xương, tứ...........”. Chọn đáp án đúng nhất điền vào dấu “……..” </strong></p>', '<p>Sản (Trịnh Duy Sản)</p>', '<p><strong>Bưởi ( Bạch Thái Bưởi)</strong></p>', '<p>Vĩnh (Lê Phát Vĩnh)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p><strong>Bưởi ( Bạch Thái Bưởi)</strong></p>', 2, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Nguyễn Ái Quốc nhận định: “Rượu cồn và thuốc phiện cùng báo chí phản động của bọn cầm quyền bổ sung cho cái công cuộc......... của Chính phủ. Máy chém và nhà tù làm nốt phần còn lại”. Dấu “……..” trong câu nói trên là gì?</strong></p>', '<p>An dân</p>', '<p>Ngu dân</p>', '<p>Trị dân</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ngu dân</p>', 3, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Nghị quyết Trung ương 4 khóa XII (10/2016) khẳng định: “Chúng ta có quyền tự hào về bản chất tốt đẹp, truyền thống anh hùng và lịch sử vẻ vang của ...... – ...... của Chủ tịch Hồ Chí Minh vĩ đại, đại biểu của ...... anh hùng”. Chọn phương án đúng nhất điền vào chỗ trống. </strong></p>', '<p>Nhân dân ta; Đất nước; một dân tộc</p>', '<p>Nước ta; Đất nước; một dân tộc</p>', '<p>Đảng ta; Đảng; dân tộc Việt Nam</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đảng ta; Đảng; dân tộc Việt Nam</p>', 4, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Chọn phương án không đúng về chính sách cai trị của thực dân Pháp ở nước ta</strong></p>', '<p>Thực hiện khẩu hiệu: Tự do, Bình đẳng, Bác ái ở nước ta</p>', '<p>Thực hiện chính sách dung túng, duy trì các hủ tục lạc hậu trong nhân dân ta</p>', '<p>Thực hiện khai thác thuộc địa dưới nhiều hình thức</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thực hiện khẩu hiệu: Tự do, Bình đẳng, Bác ái ở nước ta</p>', 5, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Điều kiện nào sau đây đã tạo ra khả năng đấu tranh công khai, hợp pháp cho phong trào cách mạng Đông Dương trong giai đoạn 1936-1939? </strong></p>', '<p>Chủ trương chuyển hướng chiến lược cách mạng thế giới của Quốc tế Cộng sản</p>', '<p>Mặt trận nhân dân Pháp lên cầm quyền</p>', '<p>Sự xuất hiện chủ nghĩa phát xít và nguy cơ chiến tranh thế giới</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mặt trận nhân dân Pháp lên cầm quyền</p>', 6, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Tác giả Trần Dân Tiên đã nói đến tác phẩm nào sau đây là kết quả của bao nhiêu hy vọng, gắng sức và tin tưởng của hơn 20 triệu nhân dân Việt Nam ? </strong></p>', '<p>Tuyên cáo của Hoàng đế Việt Nam thoái vị</p>', '<p><strong>Tuyên ngôn Độc lập</strong></p>', '<p>Đời sống mới</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p><strong>Tuyên ngôn Độc lập</strong></p>', 7, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Phương pháp nghiên cứu, học tập môn Lịch sử Đảng Cộng sản Việt Nam cần dựa trên phương pháp luận khoa học mác xít, đặc biệt là nắm vững .........và ......... để xem xét và nhận thức lịch sử một cách khách quan, trung thực và đúng quy luật. Dấu “……..” trong câu trên là ai ? </strong></p>', '<p>Chủ nghĩa Mác – Lênin; thực tiễn</p>', '<p>Chủ nghĩa duy vật biện chứng; chủ nghĩa duy vật lịch sử</p>', '<p>Tư tưởng Hồ Chí Minh; thực tiễn</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chủ nghĩa duy vật biện chứng; chủ nghĩa duy vật lịch sử</p>', 8, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Một trong những điểm khác nhau cơ bản nhất giữa Cương lĩnh chính trị đầu tiên (2/1930) của Đảng và Luận cương chính trị (10/1930) là gì ? </strong></p>', '<p>Vai trò lãnh đạo cách mạng</p>', '<p>Chủ trương tập hợp lực lượng cách mạng</p>', '<p>Phương hướng chiến lược của cách mạng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chủ trương tập hợp lực lượng cách mạng</p>', 9, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Vì lý do nào sau đây nhân dân ta phải tiến hành Tổng khởi nghĩa giành chính quyền trước khi quân Đồng minh vào Đông Dương trong giai đoạn kháng chiến chống thực dân pháp (1930-1945) ?</strong></p>', '<p>Thực dân Pháp đã bị phát xít Nhật đảo chánh.</p>', '<p>So sánh lực lượng có lợi nhất, kẻ thù cũ đã ngã gục nhưng kẻ thù mới chưa kịp đến</p>', '<p>Quân Nhật đang bị mất ý chí chiến đấu do bị bại trận trước quân đồng minh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>So sánh lực lượng có lợi nhất, kẻ thù cũ đã ngã gục nhưng kẻ thù mới chưa kịp đến</p>', 10, 1, 'admin', 4),
(1, 1, 1, '<p><strong>“............ là đội tiền phong của giai cấp công nhân, đồng thời là đội tiền phong của nhân dân lao động và của dân tộc Việt Nam, đại biểu trung thành lợi ích của giai cấp công nhân, nhân dân lao động và của dân tộc. Đảng lấy chủ nghĩa MácLênin và tư tưởng Hồ Chí Minh làm nền tảng tư tưởng, kim chỉ nam cho hành động, lấy tập trung dân chủ làm nguyên tắc tổ chức cơ bản”. Dấu “……..” trong câu trên là gì ? </strong></p>', '<p>Nhà nước Cộng hòa xã hội chủ nghĩa Việt Nam</p>', '<p>Mặt trận Tổ quốc Việt Nam</p>', '<p>Đảng Cộng sản Việt Nam</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đảng Cộng sản Việt Nam</p>', 11, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Tờ báo được Bác Hồ sáng lập và được coi là mở đầu cho nền báo chí cách mạng Việt Nam là tờ báo nào? Được thành lập năm nào? </strong></p>', '<p> Báo Búa Liềm (1925)</p>', '<p>Báo Dân chúng (1938)</p>', '<p>Báo Thanh niên (1925)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p> Báo Búa Liềm (1925)</p>', 12, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Vì sao nói phong trào cách mạng 1930 - 1931 là bước phát triển mới của cách mạng Việt Nam? </strong></p>', '<p>Lần đầu tiên đấu tranh có quy mô trên cả nước, do Đảng Cộng sản Việt Nam lãnh đạo, có tính thống nhất cao, công – nông cùng đoàn kết đấu tranh quyết liệt chống đế quốc phong kiến ...</p>', '<p>Lần đầu tiên trong cuộc đấu tranh chống đế quốc phong kiến, công nông đã giành được chính quyền ở trên toàn Nghệ - Tĩnh</p>', '<p>Lần đầu tiên phong trào dân tộc do Đảng Cộng sản lãnh đạo đã giành được thắng lợi, gây tiếng vang lớn, có ảnh hưởng mạnh mẽ đến đấu tranh của các dân tộc phương đông</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lần đầu tiên đấu tranh có quy mô trên cả nước, do Đảng Cộng sản Việt Nam lãnh đạo, có tính thống nhất cao, công – nông cùng đoàn kết đấu tranh quyết liệt chống đế quốc phong kiến ...</p>', 13, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Cuộc khai thác thuộc địa lần thứ hai của Pháp ở Việt Nam (1919 - 1929) có điểm gì tương đồng so với cuộc khai thác thuộc địa lần thứ nhất ? </strong></p>', '<p>Pháp không đầu tư nhiều vào xây dựng cơ sở hạ tầng</p>', '<p>Pháp không đầu tư nhiều vào các ngành công nghiệp nặng</p>', '<p>Pháp chú trọng đầu tư vào ngành khai thác mỏ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Pháp không đầu tư nhiều vào xây dựng cơ sở hạ tầng</p>', 14, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đồng chí nào đã từng tham gia vụ binh biến trên tàu chiến Pháp ở Biển Đen năm 1918 phản đối chính sách can thiệp cách mạng Nga của đế quốc Pháp, khi về nước đã lập ra tổ chức đầu tiên của công nhân Việt Nam? </strong></p>', '<p>Lê Duẩn</p>', '<p>Tôn Đức Thắng</p>', '<p>Phan Anh   </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lê Duẩn</p>', 15, 1, 'QuocMinh', 4),
(1, 2, 1, '<p><strong>Hội nghị Ban chấp hành Trung ương lần thứ mấy, Đảng ta đã xác định chuẩn bị khởi nghĩa vũ trang là nhiệm vụ trung tâm của Đảng và nhân dân trong kháng chiến chống thực dân Pháp giai đoạn 1930 - 1945 ? </strong></p>', '<p>Hội nghị Trung ương lần thứ bảy (11/1940)</p>', '<p>Hội nghị Trung ương lần thứ nhất (10/1930)</p>', '<p>Hội nghi Trung ương lần thứ tám (5/1941)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghi Trung ương lần thứ tám (5/1941)</p>', 16, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị Ban chấp hành Trung ương Đảng họp vào ngày 26/7/1936 đã chủ trương thành lập Mặt trận mang tên gì ? </strong></p>', '<p>Mặt trận Dân chủ Đông Dương</p>', '<p>Mặt trận nhân dân phản đế Đông Dương</p>', '<p>Mặt trận Dân tộc thống nhất phản đế Đông Dương</p>', '<p>Mặt trận Liên Việt</p>', '<p>Mặt trận nhân dân phản đế Đông Dương</p>', 17, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>\"Chương trình hành động của Đảng Cộng sản Đông Dương” được công bố vào ngày tháng năm nào ? </strong></p>', '<p>Ngày 15/7/1932</p>', '<p>Ngày 15/6/1932</p>', '<p>Ngày 15/8/1932</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ngày 15/6/1932</p>', 18, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Lê Duẩn nhận định: “Không có những trận chiến đấu giai cấp rung trời chuyển đất những năm 1930 - 1931, trong đó công nông đã vung ra nghị lực phi thường của mình thì không thể có cao trào..........”. Dấu “……..” trong câu trên là gì ? </strong></p>', '<p>kháng Nhật cứu nước</p>', '<p>những năm 1939 - 1945</p>', '<p>những năm 1936 - 1939</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>những năm 1936 - 1939</p>', 19, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Quân đội phát xít Nhật vào Đông Dương làm cho nhân dân Đông Dương phải chịu cảnh “một cổ hai tròng” vào thời gian nào ? </strong></p>', '<p>8/1940</p>', '<p>8/1942</p>', '<p>9/1940</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>8/1940</p>', 20, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị Trung ương lần thứ mấy đã bắt đầu chủ trương điều chỉnh từ chiến lược đấu tranh giành các quyền dân chủ sang chủ trương đấu tranh giải phóng dân tộc trong giai đoạn kháng chiến chống thực dân Pháp (1930-1945) ?</strong></p>', '<p>Hội nghị Trung ương lần thứ bảy (11/1940)</p>', '<p>Hội nghị Trung ương lần thứ sáu (11/1939)</p>', '<p>Hội nghị Trung ương lần thứ nhất (10/1930)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị Trung ương lần thứ sáu (11/1939)</p>', 21, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nguyên nhân chủ yếu và có ý nghĩa quyết định sự bùng nổ và phát triển của các cao trào cách mạng Việt Nam năm 1930 là gì ?</strong></p>', '<p>Chính sách khủng bố trắng của đế quốc Pháp</p>', '<p>Sự lãnh đạo của Đảng Cộng sản Việt Nam</p>', '<p>Tác động tiêu cực của cuộc khủng hoảng kinh tế</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Sự lãnh đạo của Đảng Cộng sản Việt Nam</p>', 22, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Văn kiện nào sau đây Đảng ta nhấn mạnh: “Vấn đề thổ địa là cái cốt của cách mạng tư sản dân quyền” ? </strong></p>', '<p>Luận cương chính trị tháng 10/1930</p>', '<p>Xung quanh vấn đề chiến sách mới của Đảng (tháng l0/1936)</p>', '<p>Chánh cương vắn tắt, Sách lược vắn tắt tháng 2/1930</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Luận cương chính trị tháng 10/1930</p>', 23, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị nào Đảng ta đã quyết định phát động toàn dân nổi dậy Tổng khởi nghĩa giành chính quyền từ tay phát xít Nhật trước khi quân Đồng Minh vào Đông Dương tháng 8/1945 ? </strong></p>', '<p>Hội nghị toàn quốc của Đảng</p>', '<p>Hội nghị Ban Thường vụ Trung ương Đảng</p>', '<p>Hội nghị Tổng bộ Việt Minh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị toàn quốc của Đảng</p>', 24, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Trong Chương trình hành động của Đảng Cộng sản Đông Dương ngày 15/6/1932 vạch ra nhiệm vụ đấu tranh trong giai đoạn 1936-1939 là gì ?v</p>', '<p>Dân chủ, dân sinh</p>', '<p>Khôi phục hệ thống tổ chức của Đảng và phong trào cách mạng</p>', '<p>Dân tộc, dân chủ, nhân dân</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Khôi phục hệ thống tổ chức của Đảng và phong trào cách mạng</p>', 25, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Hội nghị hợp nhất thành lập Đảng Cộng sản Việt Nam (6/1-7/2/1930) đã thông qua các văn kiện nào dưới đây ?</p>', '<p>Sách lược vắn tắt, Luận cương chính trị vắn tắt </p>', '<p> Chánh cương vắn tắt, Luận cương chính trị, Điều lệ tóm tắt </p>', '<p> Chánh cương vắn tắt, Luận cương chính trị, Điều lệ tóm tắt </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p> Chánh cương vắn tắt, Luận cương chính trị, Điều lệ tóm tắt </p>', 26, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Những giai cấp nào sau đây là giai cấp bị trị khi Việt Nam trở thành chế độ thuộc địa nửa phong kiến của đế quốc Pháp vào cuối thế kỷ XIX đầu thế kỷ XX ?</p>', '<p>Công nhân, nông dân, tiểu tư sản, tư sản dân tộc</p>', '<p>Công nhân, nông dân, tiểu tư sản, tư sản dân tộc, địa chủ vừa và nhỏ</p>', '<p>Công nhân, nông dân, tiểu tư sản, địa chủ vừa và nhỏ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Công nhân, nông dân, tiểu tư sản, tư sản dân tộc, địa chủ vừa và nhỏ</p>', 27, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Mâu thuẩn chủ yếu nhất ở xã hội nước ta vào cuối thế kỷ XIX đầu thế kỷ 20 là mâu thuẫn gì?</p>', '<p>Mâu thuẩn giữa giai cấp công nhân và giai cấp tư sản, đế quốc </p>', '<p>Mâu thuẩn giữa toàn thể dân tộc Việt Nam với địa chủ phong kiến và tay sai </p>', '<p>Mâu thuẫn giữa toàn thể dân tộc Việt Nam với thực dân Pháp và phong kiến phản động</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mâu thuẫn giữa toàn thể dân tộc Việt Nam với thực dân Pháp và phong kiến phản động</p>', 28, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Nội dung nào sau đây nói về chính sách cai trị về chính trị của thực dân Pháp ở Việt Nam ?</p>', '<p>Chia Việt Nam ra thành ba xứ để cai trị: Bắc Kỳ, Trung Kỳ, Nam Kỳ</p>', '<p>hực hiện chính sách nhân nhượng, nới rộng quyền tự do, dân chủ cho nhân dân ta </p>', '<p>Thực hiện khẩu hiệu “Tự do, bình đẳng, bác ái” ở nước ta</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chia Việt Nam ra thành ba xứ để cai trị: Bắc Kỳ, Trung Kỳ, Nam Kỳ</p>', 29, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Đại biểu của các tổ chức cộng sản nào đã trực tiếp đến tham dự Hội nghị hợp nhất thành lập Đảng đầu năm 1930 ? </p>', '<p>Đông Dương Cộng sản Đảng và Đông Dương Cộng sản Liên đoàn</p>', '<p>An Nam Cộng sản Đảng và Đông Dương Cộng sản Liên đoàn </p>', '<p>Đông Dương Cộng sản Đảng và An Nam Cộng sản Đảng </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đông Dương Cộng sản Đảng và An Nam Cộng sản Đảng </p>', 30, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Nguyễn Ái Quốc đã quyết định lựa chọn con đường giải phóng dân tộc Việt Nam theo khuynh hướng chính trị vô sản vào thời gian nào ?</p>', '<p>1930</p>', '<p>1920</p>', '<p>1919</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>1920</p>', 31, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Giai cấp nào sau đây ra đời sau đợt khai thác thuộc địa lần thứ nhất của thực dân Pháp ở nước ta ?</strong></p>', '<p>Giai cấp tư sản</p>', '<p>Giai cấp công nhân</p>', '<p>Giai cấp nông dân</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Giai cấp công nhân</p>', 32, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị Ban chấp hành Trung ương lần thứ mấy đã họp và xác định nhiệm vụ trước mắt là chống phát xít, chống chiến tranh đế quốc, chống phản động thuộc địa và tay sai, đòi tự do, dân chủ, cơm áo và hòa bình. Hội nghị đó diễn ra vào ngày tháng năm nào ? </strong></p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lần thứ 3 (26/11/1938)</p>', '<p>Lần thứ 1 (15/5/1930)</p>', '<p>Lần thứ 2 (26/7/1936)</p>', '<p>Lần thứ 2 (26/7/1936)</p>', 33, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đội Việt Nam tuyên truyền giải phóng quân ra đời ở Cao Bằng được thành lập vào ngày tháng năm nào ?</strong></p>', '<p>Ngày 22 tháng 12 năm 1944</p>', '<p>Ngày 22 tháng 5 năm 1945</p>', '<p>Ngày 22 tháng 11 năm 1945</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ngày 22 tháng 12 năm 1944</p>', 34, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nhận định nào sau đây là đúng nhất khi nói về giai cấp địa chủ Việt Nam cuối thế kỉ XIX đầu thế kỉ XX ? </strong></p>', '<p>Một bộ phận của giai cấp này là tay sai của thực dân. Một bộ phận có tinh thần dân tộc chống Pháp</p>', '<p>Là giai cấp bóc lột của chế độ phong kiến, hoàn toàn không có thế lực chính trị</p>', '<p>Là một giai cấp có thế lực kinh tế độc lập với Pháp, có tinh thẩn dân tộc cao</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Một bộ phận của giai cấp này là tay sai của thực dân. Một bộ phận có tinh thần dân tộc chống Pháp</p>', 35, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Giai cấp nông dân là một lực lượng cách mạng to lớn ở nước ta cuối thế kỉ XIX đầu thế kỉ XX vì lý do nào sau đây ? </strong></p>', '<p>Đây là một giai cấp có số lượng đông, bị áp bức bóc lột, có tinh thần yêu nước</p>', '<p>Đây là một giai cấp có đủ khả năng lãnh đạo cách mạng giải phóng dân tộc ở nước ta</p>', '<p>Đây là giai cấp rất nhạy cảm chính trị, hăng hái với công cuộc canh tân đất nước</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đây là một giai cấp có số lượng đông, bị áp bức bóc lột, có tinh thần yêu nước</p>', 36, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Lực lượng cách mạng nào sau đây là lực lượng để đánh đổ đế quốc và phong kiến được nêu trong Cương lĩnh chính trị đầu tiên của Đảng do Nguyễn Ái Quốc soạn thảo ? </strong></p><p> </p>', '<p>Công nhân và nông dân</p>', '<p>Công nhân, nông dân, tiểu tư sản, tư sản và địa chủ phong kiến</p>', '<p>Công nhân, nông dân và các tầng lớp tiểu tư sản, trí thức, trung nông</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Công nhân, nông dân và các tầng lớp tiểu tư sản, trí thức, trung nông</p>', 37, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nhận định nào sau đây không thuộc nội dung của Luận cương chính trị tháng 10/1930 ?</strong></p>', '<p>Cách mạng Việt Nam phải trải qua hai giai đoạn: cách mạng tư sản dân quyền và cách mạng xã hội chủ nghĩa</p>', '<p>Lực lượng để đánh đuổi đế quốc và phong kiến là công – nông. Đồng thời “phải biết liên lạc với tiểu tư sản, trí thức, trung nông… để kéo họ vào phe vô sản giải cấp”</p>', '<p>Cách mạng do Đảng của giai cấp vô sản theo chủ nghĩa Mác – Lênin</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Cách mạng do Đảng của giai cấp vô sản theo chủ nghĩa Mác – Lênin</p>', 38, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Những hoạt động nào sau đây của Nguyễn Ái Quốc nhằm chuẩn bị trực tiếp điều kiện về tư tưởng cho việc thành lập Đảng Cộng sản Việt Nam ? </strong></p>', '<p>Viết báo, xuất bản sách nhằm truyền bá chủ nghĩa Mác-Lênin vào Việt Nam để thức tỉnh quần chúng</p>', '<p>Thành lập Hội Việt Nam Cách mạng Thanh niên (6/1925) với chương trình và Điều lệ là làm cách mạng dân tộc và cách mạng thế giới</p>', '<p>Từ năm 1925 đến đầu 1927, mở các lớp huấn luyện chính trị nhằm đào tạo cán bộ cho cách mạng Việt Nam</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Viết báo, xuất bản sách nhằm truyền bá chủ nghĩa Mác-Lênin vào Việt Nam để thức tỉnh quần chúng</p>', 39, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Những hoạt động nào sau đây của Nguyễn Ái Quốc nhằm chuẩn bị trực tiếp điều kiện về tổ chức cho việc thành lập Đảng Cộng sản Việt Nam ? </strong></p>', '<p>Thành lập Hội Việt Nam Cách mạng Thanh niên (6/1925) với chương trình, Điều lệ, mục đích là làm cách mệnh dân tộc và cách mạng thế giới</p>', '<p>Tập bài giảng “Đường Kách mệnh” đã đề cập đến những vấn đề cơ bản của một Cương lĩnh chính trị cho Đảng Cộng sản Việt Nam sau này</p>', '<p>Viết báo, xuất bản sách nhằm truyền bá chủ nghĩa Mác - Lê nin vào Việt Nam để thức tỉnh quần chúng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thành lập Hội Việt Nam Cách mạng Thanh niên (6/1925) với chương trình, Điều lệ, mục đích là làm cách mệnh dân tộc và cách mạng thế giới</p>', 40, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Ý nghĩa lịch sử của sự ra đời Đảng Cộng sản Việt Nam, ý nghĩa nào sau đây đánh dấu bước ngoặt vô cùng quan trọng trong lịch sử cách mạng Việt Nam ở đầu thế kỷ XX ? </strong></p>', '<p> Đảng Cộng sản Việt Nam thành lập vào đầu năm 1930 là sản phẩm của sự kết hợp chủ nghĩa Mác-Lênin với phong trào công nhân và phong trào yêu nước của nhân dân Việt Nam</p>', '<p>Nó giải quyết được tình trạng khủng hoảng về đường lối cách mạng, về giai cấp lãnh đạo cách mạng Việt Nam ở đầu thế kỷ XX</p>', '<p>Nó chứng tỏ rằng giai cấp vô sản nước ta đã trưởng thành và đủ sức lãnh đạo cách mạng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Nó giải quyết được tình trạng khủng hoảng về đường lối cách mạng, về giai cấp lãnh đạo cách mạng Việt Nam ở đầu thế kỷ XX</p>', 41, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>“Hội phản đế Đồng minh” được Ban Thường vụ Trung ương Đảng thành lập vào ngày tháng năm nào ? </strong></p>', '<p> 22/12/1944</p>', '<p>18/10/1930</p>', '<p>18/11/1930</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>18/11/1930</p>', 42, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Phong trào của giai cấp công nhân Việt Nam thực sự trở thành lực lượng chính trị độc lập, tự giác trong cả nước được tính từ thời gian nào ? </strong></p>', '<p>Năm 1930 ( Đảng Cộng sản Việt Nam được thành lập)</p>', '<p>Năm 1925 (tổ chức Việt Nam cách mạng Thanh niên được thành lập)</p>', '<p>Năm 1920 (tổ chức Công hội ở Sài Gòn được thành lập)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Năm 1930 ( Đảng Cộng sản Việt Nam được thành lập)</p>', 43, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Cuối thế kỉ XIX, đầu thế kỉ XX, sự thống trị của thực dân Pháp đã làm thay đổi tính chất xã hội Việt Nam. Chọn phương án trả lời đúng nhất. </strong></p>', '<p>Làm cho xã hội Việt Nam phong kiến trở thành xã hội thuộc địa, nửa phong kiến</p>', '<p>Cho ra đời hai giai cấp mới là công nhân và tư sản Việt Nam</p>', '<p>Nảy sinh mâu thuẫn cơ bản trong đời sống xã hội Việt Nam là mâu thuẫn giữa toàn thể dân tộc Việt Nam với thực dân Pháp xâm lược</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Làm cho xã hội Việt Nam phong kiến trở thành xã hội thuộc địa, nửa phong kiến</p>', 44, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Trong phong trào đấu tranh giành quyền dân sinh, dân chủ giai đoạn 1936 -1939, Đảng ta chủ trương tập hợp những lực lượng nào ? </strong></p>', '<p>Mọi lực lượng dân tộc và một bộ phận người Pháp ở Đông Dương</p>', '<p>Công nhân, nông dân và trí thức</p>', '<p>Công nhân, nông dân, tiểu tư sản, tư sản, tiểu địa chủ, địa chủ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mọi lực lượng dân tộc và một bộ phận người Pháp ở Đông Dương</p>', 45, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Mục tiêu chiến lược của cách mạng Việt Nam được xác định trong Cương lĩnh Chính trị đầu tiên của Đảng (2/1930) là mục tiêu gì ? </strong></p>', '<p>Cách mạng tư sản dân quyền - phản đế và điền địa - lập chính quyền của công nông bằng hình thức Xô viết, để dự bị điều kiện đi tới cách mạng xã hội chủ nghĩa</p>', '<p>Đánh đổ đế quốc chủ nghĩa Pháp và bọn phong kiến, làm cho nước Nam hoàn toàn độc lập</p>', '<p>Làm tư sản dân quyền cách mạng và thổ địa cách mạng để đi tới xã hội cộng sản</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Làm tư sản dân quyền cách mạng và thổ địa cách mạng để đi tới xã hội cộng sản</p>', 46, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Mục tiêu đấu tranh của nước ta trong cao trào cách mạng giai đoạn 1936-1939 là mục tiêu gì ? </strong></p>', '<p>Ruộng đất cho dân cày</p>', '<p>Độc lập dân tộc</p>', '<p>Đòi tự do, dân chủ, cơm áo, hòa bình</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đòi tự do, dân chủ, cơm áo, hòa bình</p>', 47, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hồ Chí Minh đã thực hiện trách nhiệm lịch sử trọng đại, soạn thảo bản “Tuyên ngôn Độc lập” của nước Việt Nam Dân chủ Cộng hòa tại địa điểm nào sau đây ?</strong></p>', '<p>Nhà số 312, Khâm Thiên, Hà Nội</p>', '<p>Nhà số 48, Hàng Ngang, Hà Nội</p>', '<p>Nhà số 5D, Hàm Long, Hà Nội</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Nhà số 48, Hàng Ngang, Hà Nội</p>', 48, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>. Chính quyền Xô Viết ở một số vùng nông thôn Nghệ-Tĩnh được thành lập trong khoảng thời gian nào ? </strong></p>', '<p>Cuối năm 1930</p>', '<p>Cuối năm 1931</p>', '<p>Đầu năm 1930</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Cuối năm 1930</p>', 49, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội lần thứ VII của Quốc tế Cộng sản họp ở đâu, diễn ra vào thời gian nào? </strong></p>', '<p>Ma Cao (Trung Quốc), tháng 3/1935</p>', '<p> Matxcơva (Liên Xô), tháng 8/1935</p>', '<p>Matxcova( Liên Xô), tháng 7/1935</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Matxcova( Liên Xô), tháng 7/1935</p>', 50, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>“…….…., …….... ngay,……….. nữa. Đó là khẩu hiệu cửa ta ngày nay, đó là cách thiết thực để ta giữ vững quyền tự do độc lập”. Dấu “…..” trong lời kêu gọi của Hồ Chủ tịch là gì ? </strong></p>', '<p>Thực hành tiết kiệm, tăng gia sản xuất, tăng gia sản xuất</p>', '<p>Không bỏ hoang ruộng đất, tăng gia sản xuất, tăng gia sản xuất</p>', '<p>Tăng gia sản xuất, tăng gia sản xuất, tăng gia sản xuất</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Tăng gia sản xuất, tăng gia sản xuất, tăng gia sản xuất</p>', 51, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Trong chiến lược “Chiến tranh cục bộ” của đế quốc Mỹ ở Miền Nam Việt Nam thì lực lượng nào giữ vai trò quan trọng nhất ? </strong></p>', '<p>Quân đội Sài Gòn và quân đồng minh </p>', '<p>Quân đội Mỹ, quân đồng minh và quân đội Sài Gòn</p>', '<p>Quân đội Mỹ và quân đồng minh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Quân đội Mỹ, quân đồng minh và quân đội Sài Gòn</p>', 52, 1, 'admin', 4),
(1, 1, 1, '<p><strong>“Lấy sức mạnh của quần chúng, dựa vào lực lượng chính trị của quần chúng là chủ yếu, kết hợp với lực lượng vũ trang để đánh đổ quyền thống trị của.....…, dựng lên chính quyền cách mạng của nhân dân”. Dấu “…” trong lời khẳng định trên là gì ?</strong></p>', '<p>Phong kiến và thực dân</p>', '<p>Thực dân và tay sai</p>', '<p>Đế quốc và phong kiến</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đế quốc và phong kiến</p>', 53, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Tài liệu nào dưới đây được coi như Cương lĩnh quân sự đầu tiên của Đảng ta ? </strong></p>', '<p>Con đường giải phóng</p>', '<p>Cách đánh du kích</p>', '<p>Chỉ thị thành lập Đội Việt Nam tuyên truyền giải phóng quân</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chỉ thị thành lập Đội Việt Nam tuyên truyền giải phóng quân</p>', 54, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Thất bại trong chiến lược nào buộc đế quốc Mỹ phải ngồi vào bàn đàm phán với ta ở Hội nghị Paris ? </strong></p>', '<p>Trong chiến lược “Việt Nam hóa chiến tranh - Đông Dương hóa chiến tranh”</p>', '<p>Trong chiến lược “ Chiến tranh cục bộ”</p>', '<p>Trong chiến lược “Chiến tranh đặc biệt”</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Trong chiến lược “ Chiến tranh cục bộ”</p>', 55, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Với khí thế “thần tốc, táo bạo, bất ngờ, chắc thắng”. Đó là tinh thần và khí thế ra quân của dân tộc ta trong chiến dịch nào ? </strong></p>', '<p>Chiến dịch Huế-Đà Nẵng (21-29/3/1975)</p>', '<p>Chiến dịch Điện Biên Phủ (7/5/1954)</p>', '<p>Chiến dịch Hồ Chí Minh (26 – 30/4/1975)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chiến dịch Hồ Chí Minh (26 – 30/4/1975)</p>', 56, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Trong các nội dung của Hiệp định Paris, nội dung nào thể hiện thắng lợi lớn nhất của nhân dân ta ? </strong></p>', '<p>Các bên để nhân dân miền Nam tự quyết định tương lai của họ qua cuộc tổng tuyển cử tự do</p>', '<p>Hoa Kì và các nước cam kết tôn trọng độc lập, chủ quyền, thống nhất và toàn vẹn lãnh thổ của các nước Đông Dương</p>', '<p>Hoa Kỳ và các nước cam kết tôn trọng độc lập, chủ quyền, thống nhất và toàn vẹn lãnh thổ của Việt Nam</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hoa Kỳ và các nước cam kết tôn trọng độc lập, chủ quyền, thống nhất và toàn vẹn lãnh thổ của Việt Nam</p>', 57, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Chiến thắng nào đã căn bản đánh bại âm mưu “đánh nhanh, thắng nhanh” của thực dân Pháp trong cuộc kháng chiến chống thực dân Pháp lần thứ hai ?</strong></p>', '<p>Chiến dịch Việt Bắc</p>', '<p>Chiến dịch Biên Giới </p>', '<p>Chiến dịch Hà Nam Ninh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chiến dịch Việt Bắc</p>', 58, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Hãy sắp xếp các sự kiện sau cho đúng với trình tự thời gian: Trong cuộc kháng chiến chống Mỹ cứu nước, Đảng ta đã lãnh đạo đánh bại các chiến lược chiến tranh mà Mỹ đã tiến hành ở miền Nam Việt Nam (1954-1975):  </strong></p><p><strong>a.Chiến lược “Việt Nam hoá chiến tranh”; </strong></p><p><strong>b. Chiến lược “Chiến tranh đặc biệt”; </strong></p><p><strong>c. Chiến lược “Chiến tranh cục bộ” </strong></p>', '<p>b, a, c</p>', '<p>b, c, a</p>', '<p>a, b, c</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>b, c, a</p>', 59, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Sau ngày tuyên bố độc lập năm 1945, Chính phủ cách mạng lâm thời Việt Nam đã xác định các nhiệm vụ cấp bách cần giải quyết là gì ?</strong></p>', '<p>Chống giặc ngoại xâm và nội phản</p>', '<p>Diệt giặc đói, giặc dốt và giặc ngoại xâm</p>', '<p>Chống giặc ngoại xâm, củng cố chính quyền cách mạng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Diệt giặc đói, giặc dốt và giặc ngoại xâm</p>', 60, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Hội nghị nào của Đảng mở đường cho phong trào “Đồng khởi” ở miền Nam năm 1960? </strong></p>', '<p><strong>Hội nghị Trung ương 15 – Khóa II của Đảng (1/1959)</strong></p>', '<p>Hội nghị Trung ương 14 - Khoá II của Đảng (11/1958)</p>', '<p>Hội nghị Trung ương 13 - Khoá II của Đảng (1/1957)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p><strong>Hội nghị Trung ương 15 – Khóa II của Đảng (1/1959)</strong></p>', 61, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Chính cương của Đảng Lao động Việt Nam được thông qua tại Đại hội đại biểu toàn quốc lần thứ II, đã nêu lên 3 tính chất nào của xã hội Việt Nam ? </strong></p>', '<p>Dân tộc, dân chủ, xã hội chủ nghĩa</p>', '<p>Dân chủ mới, văn hóa mới, đời sống mới xã hội chủ nghĩa</p>', '<p>Dân chủ nhân dân, một phần thuộc địa, nửa phong kiến</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Dân chủ nhân dân, một phần thuộc địa, nửa phong kiến</p>', 62, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Chiến lược “Việt Nam hóa chiến tranh” của Nichxơn có gì giống so với chiến lược “Chiến tranh cục bộ” ? </strong></p>', '<p>Về vai trò của “ấp chiến lược”</p>', '<p>Về mục đích của chiến tranh</p>', '<p>Về vai trò của quân đội Mỹ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Về mục đích của chiến tranh</p>', 63, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Từ những năm 1950 trở đi, đế quốc Mỹ đã can thiệp ngày càng sâu vào cuộc chiến tranh ở Đông Dương. Đến năm 1954, viện trợ của Mỹ cho Pháp đã tăng bao nhiêu % trong ngân sách chiến tranh ở Đông Dương ? </strong></p>', '<p>50% </p>', '<p>80%</p>', '<p>60%</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>80%</p>', 64, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Cuối năm 1946, thực dân Pháp đã bội ước, liên tục tăng cường khiêu khích và lấn chiếm thêm một số địa điểm nào ở nước ta ?</strong></p>', '<p>Hải Phòng, Hải Dương, Lào Cai, Yên Bái </p>', '<p><strong>Thành phố Hải Phòng, thị xã Lạng Sơn, Đà Nẵng, Hà Nội</strong></p>', '<p>Thành phố Hải Phòng, thị xã Lạng Sơn</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p><strong>Thành phố Hải Phòng, thị xã Lạng Sơn, Đà Nẵng, Hà Nội</strong></p>', 65, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Chủ tịch Hồ Chí Minh ra “Lời kêu gọi toàn quốc kháng chiến” vào thời gian nào ?</strong></p>', '<p>Ngày 20/12/1946</p>', '<p>Đêm 20/9/1946</p>', '<p>Đêm 19/12/1946</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đêm 19/12/1946</p>', 66, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Theo Lời kêu gọi của Hồ Chí Minh, quân và dân miền Bắc đã dấy lên các cao trào chống Mỹ, cứu nước, vừa sản xuất, vừa chiến đấu, với niềm tin và quyết tâm cao độ. Thanh niên có phong trào mang tên gì ? </strong></p>', '<p>Tay búa, tay súng</p>', '<p>Xung kích chiến đấu</p>', '<p>Ba sẵn sàng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ba sẵn sàng</p>', 67, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Hiệp định sơ bộ về cuộc đàm phán với thực dân Pháp được ký kết với thực dân Pháp vào thời gian nào ? </strong> </p>', '<p>Ngày 6/3/1946</p>', '<p>Ngày 9/3/1945</p>', '<p>Ngày 14/9/1946</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ngày 6/3/1946</p>', 68, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Phương châm chiến lược của cuộc kháng chiến chống thực dân Pháp trong giai đoạn 1945-1954 là gì ?</strong></p>', '<p>Lâu dài và dựa vào sức mình là chính</p>', '<p>Toàn dân, toàn diện</p>', '<p>Trường kỳ kháng chiến</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lâu dài và dựa vào sức mình là chính</p>', 69, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Với thế chủ động trên chiến trường, từ cuối 1950 đến đầu 1953 quân ta đã tổ chức nhiều chiến dịch tiêu diệt, tiêu hao sinh lực địch. Đó là những chiến dịch nào ?</strong></p>', '<p>Chiến dịch Việt Bắc; Chiến dịch Biên Giới; Chiến dịch Đường 18</p>', '<p>Chiến dịch Hòa Bình; Chiến dịch Tây Bắc Thu Đông; Chiến dịch Thượng Lào</p>', '<p>Chiến dịch Biên Giới, chiến dịch Tây Bắc, chiến dịch Thượng Lào</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chiến dịch Hòa Bình; Chiến dịch Tây Bắc Thu Đông; Chiến dịch Thượng Lào</p>', 70, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Trên cơ sở theo dõi tình hình địch ở Điện Biên Phủ, Đại tướng Võ Nguyên Giáp đã quyết định thay đổi phương châm đấu tranh. Phương châm đó là gì ?</strong></p>', '<p>Chắc thắng mới đánh; không chắc thắng không đánh</p>', '<p>Đánh chắc, tiến chắc; đánh chắc thắng</p>', '<p>Đánh nhanh; thắng nhanh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đánh chắc, tiến chắc; đánh chắc thắng</p>', 71, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Trong giai đoạn chống chiến tranh phá hoại (1965 - 1968 ), lý do nào là cơ bản nhất miền Bắc đẩy mạnh phát triển kinh tế địa phương, nhất là chú trọng phát triển nông nghiệp ?</strong></p>', '<p>Hạn chế được sự tàn phá của chiến tranh</p>', '<p>Miền Bắc phải thực hiện đầy đủ nghĩa vụ của hậu phương lớn, chi viện theo yêu cầu về sức người sức của cho miền Nam</p>', '<p>Đảm bảo đời sống cho nhân dân địa phương</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Miền Bắc phải thực hiện đầy đủ nghĩa vụ của hậu phương lớn, chi viện theo yêu cầu về sức người sức của cho miền Nam</p>', 72, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Quân Trung Hoa Quốc dân đảng khi tiến vào Việt Nam đã có những hành động gì ? </strong></p>', '<p>Ngầm giúp đỡ, trang bị vũ khí cho quân Pháp, ủng hộ các hành động khiêu khích quân sự của Pháp</p>', '<p><strong>Sách nhiễu chính quyền cách mạng, đòi cải tổ Chính phủ, thay đổi quốc kì, Hồ Chí Minh phải từ chức</strong></p>', '<p>Sử dụng một bộ phận Quân đội Nhật chờ giải giáp, đánh úp trụ sở chính quyền cách mạng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p><strong>Sách nhiễu chính quyền cách mạng, đòi cải tổ Chính phủ, thay đổi quốc kì, Hồ Chí Minh phải từ chức</strong></p>', 73, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Tại sao Đảng ta chuyển từ chiến lược đánh Pháp sang chiến lược hoà hoãn nhân nhượng Pháp ? </strong></p>', '<p>Vì Pháp và Tưởng đã bắt tay cấu kết với nhau chống ta</p>', '<p>Vì Pháp được bọn phản động tay sai giúp đỡ</p>', '<p>Vì ta tránh tình trạng một lúc đối phó với nhiều kẻ thù</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Vì Pháp và Tưởng đã bắt tay cấu kết với nhau chống ta</p>', 74, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Những khó khăn, thách thức gì sau Cách mạng Tháng Tám năm 1945 đối với cách mạng Việt Nam ?</strong></p>', '<p>Các thế lực đế quốc, phản động bao vây, chống phá; hơn 90% dân số mù chữ</p>', '<p>Kinh tế nông nghiệp lạc hậu, kém phát triển</p>', '<p>Đế quốc bao vây cấm vận, nạn đói còn tiếp diễn</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Các thế lực đế quốc, phản động bao vây, chống phá; hơn 90% dân số mù chữ</p>', 75, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Cuộc kháng chiến chống thực dân Pháp xâm lược lần thứ hai của dân tộc Việt Nam kéo dài bao nhiêu năm ? </strong></p>', '<p>1 thế kỷ </p>', '<p><strong>b.	21 năm</strong></p>', '<p>9 năm </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Kháng chiến chống thực dân Pháp</p>', 76, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Đảng ta đã lựa chọn giải pháp gì trong mối quan hệ với thực dân Pháp sau ngày Pháp và Tưởng ký hiệp ước Hoa-Pháp ở Trùng Khánh vào ngày 28/02/1946? </strong></p>', '<p>Kháng chiến chống thực dân Pháp</p>', '<p>Thương lượng và hòa hoãn với Pháp</p>', '<p>Nhân nhượng với quân Tưởng để tập trung đánh Pháp</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thương lượng và hòa hoãn với Pháp</p>', 77, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Chính cương của Đảng Lao động Việt Nam được thông qua tại Đại hội đại biểu toàn quốc lần thứ II, đã nêu lên 3 nhiệm vụ cơ bản nào của cách mạng Việt Nam ? </strong></p>', '<p>Xây dựng đời sống mới; văn hóa mới; nếp sống mới</p>', '<p>Đánh đuổi bọn đế quốc xâm lược, giành độc lập và thống nhất thật sự cho dân tộc; xóa bỏ những tàn tích phong kiến và nửa phong kiến, làm cho người cày có ruộng; phát triển chế độ dân chủ nhân dân, gây cơ sở cho chủ nghĩa xã hội</p>', '<p>Bài trừ nội phản; tệ nạn xã hội và những hủ tục lạc hậu</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đánh đuổi bọn đế quốc xâm lược, giành độc lập và thống nhất thật sự cho dân tộc; xóa bỏ những tàn tích phong kiến và nửa phong kiến, làm cho người cày có ruộng; phát triển chế độ dân chủ nhân dân, gây cơ sở cho chủ nghĩa xã hội</p>', 78, 1, 'admin', 4),
(1, 1, 1, '<p><strong>“Đẩy mạnh cách mạng xã hội chủ nghĩa ở miền Bắc; đồng thời tiến hành cách mạng dân tộc dân chủ nhân dân ở miền Nam, thực hiện thống nhất nước nhà, hoàn thành độc lập và dân chủ trong cả nước” là một trong những nhiệm vụ của cách mạng Việt Nam trong giai đoạn kháng chiến chống Mỹ cứu nước (19541975). Văn kiện nào sau đây thể hiện nhiệm vụ trên ? </strong></p>', '<p>Hội nghị trung ương lần thứ 15 (1/1959)</p>', '<p>Đại hội đại biểu toàn quốc lần thứ III (9/1960)</p>', '<p>Nghị quyết của Bộ Chính trị (9/1954)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đại hội đại biểu toàn quốc lần thứ III (9/1960)</p>', 79, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Đại hội Đảng toàn quốc lần thứ II của Đảng Lao động Việt Nam đã thông qua một văn kiện mang tính chất cương lĩnh. Đó là văn kiện nào ?</strong></p>', '<p>Cương lĩnh của Đảng Lao động Việt Nam</p>', '<p>Chính cương của Đảng Lao động Việt Nam</p>', '<p>Luận cương về cách mạng Việt Nam</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chính cương của Đảng Lao động Việt Nam</p>', 80, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Thời gian và địa điểm nào diễn ra Đại hội Đảng toàn quốc lần thứ hai ? </strong></p>', '<p>Tháng 3/1935, tại Ma Cao, Trung Quốc </p>', '<p>Tháng 2/1950, tại Tân Trào, Tuyên Quang </p>', '<p>Tháng 2/1951, tại Chiêm Hóa, Tuyên Quang</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Tháng 2/1951, tại Chiêm Hóa, Tuyên Quang</p>', 81, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Tại Đại hội đại biểu toàn quốc lần thứ hai, Đảng Cộng sản Đông Dương đổi tên là gì? </strong></p>', '<p>Đảng Lao động Việt Nam</p>', '<p>Đảng Cộng sản Việt Nam </p>', '<p>Hội nghiên cứu Chủ nghĩa Mác</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đảng Lao động Việt Nam</p>', 82, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Thực dân Pháp ký hiệp ước gì với Tưởng vào thời gian nào trong sự nghiệp Đảng lãnh đạo xây dựng, bảo vệ chính quyền cách mạng kháng chiến chống thực dân Pháp xâm lược 1945-1954 ? </strong></p>', '<p>Hiệp ước Patơnốt, ngày 6/6/1946</p>', '<p>Hiệp định Giơnevơ, ngày 27/1/1954</p>', '<p>Hiệp ước Trùng Khánh, ngày 28/2/1946</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hiệp ước Trùng Khánh, ngày 28/2/1946</p>', 83, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Nơi nào được coi là căn cứ địa cách mạng của cả nước trong cuộc kháng chiến chống thực dân Pháp lần thứ 2 (1945-1954) ?</strong></p>', '<p>Căn cứ địa cách mạng Điện Biên Phủ </p>', '<p>Cắn cứ địa cách mạng Việt Bắc</p>', '<p>Căn cứ địa cách mạng Tây Bắc</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Cắn cứ địa cách mạng Việt Bắc</p>', 84, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Thắng lợi này chứng minh sự trưởng thành của quân đội ta và cuộc kháng chiến từ thế phòng ngự sang thế tiến công. Đó là ý nghĩa lịch sử của chiến dịch nào ? </strong></p>', '<p>Chiến dịch Tây Bắc 1952</p>', '<p>Chiến dịch Việt Bắc 1947</p>', '<p>Chiến dịch Biên giới 1950</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chiến dịch Biên giới 1950</p>', 85, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Kế thừa và phát huy truyền thống của dân tộc ta “lấy ít địch nhiều, lấy yếu thắng mạnh, lấy chính nghĩa thắng hung tàn” được thể hiện rõ nhất qua nội dung nào trong đường lối kháng chiến chống Pháp của Đảng (1946 – 1954) ? </strong></p>', '<p>Kháng chiến trường kì</p>', '<p>Kháng chiến toàn dân, toàn diện</p>', '<p>Tự lực cánh sinh, tranh thủ sự ủng hộ quốc tế</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Kháng chiến trường kì</p>', 86, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Đường lối nào sau đây tiến hành xây dựng chủ nghĩa xã hội ở Miền Bắc được xác định trong Đại hội Đảng toàn quốc lần thứ III ? </strong></p>', '<p>Ra sức phái triển nông nghiệp và công nghiệp nhẹ - lấy công nghiệp nhẹ là nền tảng của nền kinh tế quốc dân</p>', '<p>Ưu tiên phát triển công nghiệp nhẹ - lấy công nghiệp nhẹ là nền tảng của nền kinh tế quốc dân</p>', '<p>Lấy công nghiệp nặng làm nền tảng của nền kinh tế - ưu tiên phát triển công nghiệp nặng một cách hợp lí</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lấy công nghiệp nặng làm nền tảng của nền kinh tế - ưu tiên phát triển công nghiệp nặng một cách hợp lí</p>', 87, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Hiến pháp đầu tiên của nước Việt Nam Dân chủ Cộng hoà được Quốc hội thông qua vào ngày tháng năm nào ?  </strong></p>', '<p>10/10/1946 </p>', '<p>6/01/1946</p>', '<p>9/11/1946</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>9/11/1946</p>', 88, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Đảng, Chính phủ và Chủ tịch Hồ Chí Minh đã tập trung chỉ đạo, động viên mọi tầng lớp nhân dân tham gia các phong trào lớn, các cuộc vận động nào chống giặc đói, đẩy lùi nạn đói ?</strong></p>', '<p>Tay cày tay súng; tay búa, tay súng</p>', '<p>Thóc không thiếu một cân, quân không thiếu một người</p>', '<p>Tăng gia sản xuất, thực hành tiết kiệm; lập hũ gạo tiết kiệm</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Tăng gia sản xuất, thực hành tiết kiệm; lập hũ gạo tiết kiệm</p>', 89, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Tư tưởng chỉ đạo đối với cuộc đấu tranh ở miền Nam được thể hiện trong các Nghị quyết Hội nghị Trung ương lần thứ 11 (3/1965) và lần thứ 12 (12/1965) là tư tưởng nào ?</strong></p>', '<p>Kết hợp tiến công quân sự với nổi dậy của quần chúng, đánh bại âm mưu Việt Nam hoá chiến tranh của địch</p>', '<p>Kiên quyết tiến công và nổi dậy buộc đối phương phải ngồi vào bàn đàm phán với ta</p>', '<p>Giữ vững và phát triển thế tiến công, kiên quyết tiến công và liên tục tiến công</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Giữ vững và phát triển thế tiến công, kiên quyết tiến công và liên tục tiến công</p>', 90, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Hiệp định Giơnevơ quy định thời gian nào sau đây tiến hành hiệp thương tổng tuyển cử thống nhất 2 miền Nam Bắc ? </strong></p>', '<p>7/1955</p>', '<p>7/1956</p>', '<p>7/1957</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>7/1956</p>', 91, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Trong “Chỉ thị kháng chiến kiến quốc” của Trung ương Đảng ngày 25/11/1945, Đảng ta đã xác định kẻ thù chính của cách mạng Việt Nam là đối tượng nào ? </strong></p>', '<p>Quân đội phát xít Nhật</p>', '<p>Quân đội Tưởng Giới Thạch</p>', '<p>Thực dân Pháp xâm lược</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thực dân Pháp xâm lược</p>', 92, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Hội nghị lần thứ 15 Ban Chấp hành Trung ương Đảng khóa II (1/1959) đã xác định con đường phát triển cơ bản của cách mạng Việt Nam ở miền Nam là gì ?</strong></p>', '<p>Tiến hành con đường bạo động vũ trang</p>', '<p>Tiến hành khởi nghĩa từng phần</p>', '<p>Khởi nghĩa giành chính quyền về tay nhân dân</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Khởi nghĩa giành chính quyền về tay nhân dân</p>', 93, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Trong “Chỉ thị kháng chiến kiến quốc” của Trung ương Đảng ngày 15/11/1945, Đảng ta đã xác định những nhiệm vụ nào là chủ yếu và cấp bách cần khẩn trương thực hiện ? </strong></p>', '<p>Bài trừ nội phản, chống đói, củng cố chính quyền, chống thực dân Pháp</p>', '<p>Củng cố chính quyền, chống thực dân Pháp xâm lược, bài trừ nội phản, cải thiện đời sống cho nhân dân</p>', '<p>Chống thực dân Pháp xâm lược, bầu cử Quốc hội, xóa nạn mù chữ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Củng cố chính quyền, chống thực dân Pháp xâm lược, bài trừ nội phản, cải thiện đời sống cho nhân dân</p>', 94, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Đường lối kháng chiến chống Mỹ cứu nước được thông qua tại Đại hội nào của Đảng? </strong></p>', '<p>Đại hội lần thứ II (2/1951)</p>', '<p>Đại hội lần thứ III (9/1960)</p>', '<p>a.   Đại hội lần thứ IV (12/1976)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đại hội lần thứ III (9/1960)</p>', 95, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Hội nghị nào của Đảng quyết định mở cuộc Tổng tiến công và nổi dậy giải phóng Sài Gòn trước tháng 5/1975 ? </strong></p>', '<p>Hội nghị Bộ Chính trị (10/1974)</p>', '<p>Hội nghị Trung ương 21 (7/1973)</p>', '<p>Hội nghị Bộ Chính trị (3/1975)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị Bộ Chính trị (3/1975)</p>', 96, 1, 'admin', 4);
INSERT INTO `questions` (`grade_id`, `unit`, `level_id`, `question_content`, `answer_a`, `answer_b`, `answer_c`, `answer_d`, `correct_answer`, `question_id`, `subject_id`, `sent_by`, `status_id`) VALUES
(1, 1, 1, '<p><strong>Trong Cương lĩnh thứ ba (2/1951), Đảng ta đã khẳng định nhận thức về con đường cách mạng Việt Nam. Đó là con đường cách mạng nào? </strong></p>', '<p>Con đường cách mạng dân tộc, dân chủ, nhân dân</p>', '<p>Con đường cách mạng vô sản</p>', '<p>Con đường cách mạng tư sản dân quyền và thổ địa cách mạng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Con đường cách mạng dân tộc, dân chủ, nhân dân</p>', 97, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Hiệp định Giơnevơ quy định giới tuyến quân sự tạm thời giữa ta và thực dân Pháp tại vĩ tuyến bao nhiêu ? </strong></p>', '<p>Vĩ tuyến 17</p>', '<p>Vĩ tuyến 18</p>', '<p>Vĩ tuyến 20</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Vĩ tuyến 17</p>', 98, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Hội nghị Ban thường vụ Trung Đảng họp mở rộng quyết định phát động cuộc kháng chiến toàn quốc chống thực dân Pháp xâm lược lần thứ hai vào ngày tháng năm nào?  </strong></p>', '<p>Ngày 19/12/1946</p>', '<p>Ngày 20/12/1946 </p>', '<p>Ngày 18/12/1946</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ngày 19/12/1946</p>', 99, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Hội nghị quốc tế về chấm dứt chiến tranh, lập lại hòa bình ở Đông Dương đã diễn ra vào thời gian nào, ở đâu ? </strong></p>', '<p>Từ 8/5/1954 – 21/7/1954, tại Giơnevơ</p>', '<p>Từ 15/8/1954 – 27/9/1954, tại Paris</p>', '<p>Từ 17/7/1954 – 2/8/1954, tại Postdam</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Từ 8/5/1954 – 21/7/1954, tại Giơnevơ</p>', 100, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Chiến tranh phá hoại lần thứ nhất ở Miền Bắc diễn ra trong khoảng thời gian nào?</strong></p>', '<p>Ngày 7/2/1965 đến ngày 1/1/1968</p>', '<p>Ngày 7/2/1965 đến ngày 1/11/1968</p>', '<p>Ngày 5/8/1964 đến ngày 11/1/968</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ngày 7/2/1965 đến ngày 1/11/1968</p>', 101, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Mốc thời gian nào nhân dân Nam bộ đứng lên kháng chiến chống thực dân </strong></p><p><strong>Pháp xâm lược, bảo vệ chính quyền cách mạng trong giai đoạn 1945-1954 ? </strong></p>', '<p>23/09/1940</p>', '<p>23/9/1945</p>', '<p>19/12/1946</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>23/9/1945</p>', 102, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Thắng lợi lớn nhất của quân dân miền Bắc trong trận “Điện Biên Phủ trên không” cuối năm 1972 là gì ?</strong></p>', '<p>Buộc Mỹ phải tuyên bố ngừng hẳn các hoạt động chống phá miền Bắc</p>', '<p>Buộc Mỹ kí kết Hiệp định Paris (1973) về chấm dứt chiến tranh lập lại hòa bình ở Việt Nam</p>', '<p>Đánh bại âm mưu ngăn chặn sự chi viện của miền Bắc cho miền Nam, Lào, Campuchia</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Buộc Mỹ kí kết Hiệp định Paris (1973) về chấm dứt chiến tranh lập lại hòa bình ở Việt Nam</p>', 103, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Để kêu gọi đồng bào tham gia Bình dân học vụ, diệt giặc dốt, Hồ Chủ tịch đã nói: “ Một dân tộc ……. là một dân tộc …….. !”. Dấu “.....” trong câu nói trên là gì ? </strong></p>', '<p>Không học tập; không thể làm chủ đất nước mình</p>', '<p>Ít học; dốt</p>', '<p>Dốt; yếu</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Dốt; yếu</p>', 104, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Mặt trận Dân tộc Giải phóng miền Nam Việt Nam, nơi tập hợp đông đảo các tầng lớp nhân dân miền Nam, các lực lượng yêu nước và kháng chiến trong sự nghiệp đấu tranh chống quân xâm lược Mỹ và chính quyền tay sai nhằm giải phóng miền Nam, thống nhất đất nước được thành lập ngày, tháng, năm nào? Ở đâu?</strong></p>', '<p>10/12/1960, Cần Giờa.   1/02/1960, Long An</p>', '<p>1/02/1960, Long An</p>', '<p>20/12/1960, Tây Ninh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>20/12/1960, Tây Ninh</p>', 105, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Hình ảnh nào nói lên tình hình đất nước ta sau Cách mạng tháng Tám năm 1945? </strong></p>', '<p>Nước sôi lửa bỏng</p>', '<p>Ngàn cân treo sợi tóc</p>', '<p>Dầu sôi lửa bỏng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ngàn cân treo sợi tóc</p>', 106, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Thắng lợi quan trọng của Hiệp định Paris đối với sự nghiệp kháng chiến chống Mỹ cứu nước là gì ? </strong></p>', '<p>Đánh cho Mỹ cút, đánh cho Ngụy nhào</p>', '<p>Mỹ phải công nhận các quyền dân tộc cơ bản của ta</p>', '<p>Tạo thời cơ thuận lợi để nhân dân ta đánh cho Ngụy nhào</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Tạo thời cơ thuận lợi để nhân dân ta đánh cho Ngụy nhào</p>', 107, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Chiến lược “Chiến tranh đặc biệt” (1961-1965) nằm trong hình thức nào của chiến lược toàn cầu do đế quốc Mỹ đề ra ? </strong></p>', '<p>Ngăn đe thực tế</p>', '<p>Chiến tranh lạnh</p>', '<p>Phản ứng linh hoạt</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Phản ứng linh hoạt</p>', 108, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Lúc 11 giờ 30 phút ngày 30/4/1975, diễn ra sự kiện cơ bản nào ở Sài Gòn ? </strong></p>', '<p>Xe tăng của ta tiến vào dinh Độc Lập</p>', '<p>Chiến dịch Hồ Chí Minh toàn thắng</p>', '<p>Lá cờ chiến thắng đã được cắm trên dinh Độc Lập</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lá cờ chiến thắng đã được cắm trên dinh Độc Lập</p>', 109, 1, 'admin', 4),
(1, 1, 1, '<p>Câu nói:“Chiến tranh có thể kéo dài năm năm, 10 năm, 20 năm hoặc lâu hơn nữA.Hà Nội, Hải phòng và một số thành phố, xí nghiệp có thể bị tàn phá, song nhân dân Việt Nam quyết không sợ! Không có gì quý hơn độc lập, tự do” của Chủ tịch Hồ Chí Minh viết thời gian nào, trong tác phẩm, bài viết hoặc bài</p>', '<p>Tác phẩm “Di Chúc”, ngày 10/5/1968</p>', '<p>Bài nói “Lời kêu gọi”, ngày 17/7/1966</p>', '<p>Tác phẩm “Di Chúc”, ngày 10/5/1969</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Bài nói “Lời kêu gọi”, ngày 17/7/1966</p>', 110, 1, 'admin', 4),
(1, 1, 1, '<p>Nền kinh tế của ta sau 5 năm vẫn còn mất cân đối, sản xuất phát triển chậm, thu nhập quốc dân và năng suất lao động thấp, đời sống nhân dân còn gặp nhiều khó khăn. Đó là những hạn chế của thời kỳ nào ?</p>', '<p>Thời kỳ khôi phục kinh tế miền Bắc (1958-1960)</p>', '<p>.Thực hiện kế hoạch 5 năm lần nhất (1960-1965)</p>', '<p>Thực hiện kế hoạch 5 năm (1976-1980)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thực hiện kế hoạch 5 năm (1976-1980)</p>', 111, 1, 'admin', 4),
(1, 1, 1, '<p>Đại hội Đảng toàn quốc lần thứ V (3/1982) có những quyết định quan trọng. Điều nào sau đây chưa phải là quyết định của Đại hội Đảng lần này ?</p>', '<p>Tiếp tục đường lối xây dựng CNXH trong phạm vi cả nước</p>', '<p>Thời kỳ quá độ lên CNXH ở nước ta phải trải qua nhiều chặng đường</p>', '<p>Cả nước tiến nhanh, tiến mạnh tiến vững chắc lên chủ nghĩa xã hội</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Cả nước tiến nhanh, tiến mạnh tiến vững chắc lên chủ nghĩa xã hội</p>', 112, 1, 'admin', 4),
(1, 1, 1, '<p>Điểm nào chưa phải là thành tựu chủ yếu của kế hoạch nhà nước 5 năm (1981-1985)?</p>', '<p>Sản xuất lương thực tăng bình quân từ 11,4 triệu tấn trong thời kỳ 1976- 1980 lên đến 15 triệu tấn</p>', '<p>Về cơ bản ổn định tình hình kinh tế - xã hội, ổn định đời sống nhân dân</p>', '<p>Thu nhập quốc dân tăng bình quân hàng năm là 5,4 % so với 0,4 % trong thời kỳ 1976 – 1980</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Về cơ bản ổn định tình hình kinh tế - xã hội, ổn định đời sống nhân dân</p>', 113, 1, 'admin', 4),
(1, 1, 1, '<p>. Tình trạng khủng hoảng trầm trọng về kinh tế - xã hội của đất nước trong thời kỳ 1980 - 1985 được biểu hiện ở nhiều mặt. Điểm nào không đúng với thực tế nói trên ?</p>', '<p>Đời sống nhân dân còn khó khăn, chưa ổn định</p>', '<p>Vấn đề lương thực chưa được giải quyết</p>', '<p>Hàng tiêu dùng còn khan hiếm</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hàng tiêu dùng còn khan hiếm</p>', 114, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Đại hội lần thứ VI của Đảng Cộng sản Việt Nam họp từ thời gian nào ?</strong></p>', '<p>Từ ngày 15 đến ngày 18/12/1985</p>', '<p>Từ ngày 15 đến ngày 18/12/1986</p>', '<p>.Từ ngày 10 đến ngày 18/12/1985</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Từ ngày 15 đến ngày 18/12/1986</p>', 115, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Quan điểm đổi mới của Đảng ta tại Đại hội Đảng VI (12/1986) là gì ?</strong></p>', '<p>Đổi mới toàn diện và đồng bộ</p>', '<p>Đổi mới về chính trị</p>', '<p>Đổi mới về kinh tế</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đổi mới về kinh tế</p>', 116, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Do yêu cầu đẩy mạnh sản xuất, bảo đảm đời sống và nâng cao hiệu quả kinh tế, Ban Bí thư Trung ương Đảng khóa IV đã ban hành Chỉ thị “Cải tiến công tác khoán, mở rộng khoán sản phẩm đến nhóm lao động và người lao động trong hợp tác xã nông nghiệp”. Anh/chị hãy cho biết, đó là Chỉ thị số bao nhiêu, ban hành ngày, tháng, năm nào?</strong></p>', '<p>Chỉ thị số 100-CT/TW, ngày 13/01/1981</p>', '<p>Chỉ thị số 99-CT/TW, ngày 13/01/1981</p>', '<p>Chỉ thị số 101-CT/TW, ngày 13/01/1981</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chỉ thị số 100-CT/TW, ngày 13/01/1981</p>', 117, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Sự kiện nào là quan trọng nhất trong quá trình thống nhất đất nước về mặt Nhà nước sau 1975 ?</strong></p>', '<p>Hội nghị Hiệp thương của đại biểu 2 miền Bắc Nam tại Sài Gòn (11/1975)</p>', '<p>Quốc hội khóa V của nước Việt Nam thống nhất kỳ họp đầu tiên (24/6 - 2/7/1976)</p>', '<p>Tổng tuyển cử bầu Quốc hội chung trong cả nước (25/4/1975)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Tổng tuyển cử bầu Quốc hội chung trong cả nước (25/4/1975)</p>', 118, 1, 'admin', 4),
(1, 1, 1, '<p>Kế hoạch 5 năm phát triển kinh tế - xã hội giai đoạn 1976-1980 là kế hoạch của Đại hội đại biểu toàn quốc lần thứ mấy ?</p>', '<p>Đại hội III</p>', '<p>Đại hội IV</p>', '<p>Đại hội V</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đại hội IV</p>', 119, 1, 'admin', 4),
(1, 1, 1, '<p>Quốc hội thống nhất cả nước là Quốc hội khóa mấy ?</p>', '<p>Khóa VI</p>', '<p>Khóa V</p>', '<p>Khóa IV</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Khóa VI</p>', 120, 1, 'admin', 4),
(1, 1, 1, '<p><strong> Kỳ họp thứ I Quốc hội khóa VI có những quyết định nào liên quan với việc thống nhất đất nước về mặt Nhà nước ?</strong></p>', '<p>Thống nhất tên nước, quy định Quốc huy, Quốc kì, Quốc ca, thủ đô là Hà Nội</p>', '<p>Quy định Quốc huy, Quốc kì, Quốc ca, thủ đô là Thành phố Hồ Chí Minh</p>', '<p>Bầu các cơ quan địa phương trên cả nước</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thống nhất tên nước, quy định Quốc huy, Quốc kì, Quốc ca, thủ đô là Hà Nội</p>', 121, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Từ ngày 15 - 21/11/1975 ở nước ta diễn ra sự kiện nào sau đây ? </strong></p>', '<p>Cuộc Tổng tuyển cử của cả nước lần thứ nhất</p>', '<p>Cuộc Tổng tuyển cử của cả nước lần thứ hai</p>', '<p>Hội nghị hiệp thương chính trị thống nhất đất nước</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị hiệp thương chính trị thống nhất đất nước</p>', 122, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị Hiệp thương chính trị thống nhất đất nước tại Sài Gòn đã nhất trí hoàn toàn các vấn đề gì ? </strong></p>', '<p>Quốc kỳ là cờ đỏ sao vàng, Quốc ca là bài Tiến quân ca</p>', '<p>Chủ trương, biện pháp nhằm thống nhất đất nước về mặt nhà nước</p>', '<p>Lấy tên nước là nước Cộng hòa xã hội chủ nghĩa Việt Nam</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chủ trương, biện pháp nhằm thống nhất đất nước về mặt nhà nước</p>', 123, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Ngày 14/7/1986, tại Hội nghị Ban chấp hành Trung ương đặc biệt ai được bầu làm Tổng Bí thư ?  </strong> </p>', '<p>Đỗ Mười  </p>', '<p>Trường Chinh</p>', '<p>Nguyễn Văn Linh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Trường Chinh</p>', 124, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Chủ trương đổi mới công tác kế hoạch hoá và cải tiến một cách cơ bản chính sách kinh tế để làm cho sản xuất “bung ra” được nêu lên ở Hội nghị nào của Ban chấp hành Trung ương Đảng khoá IV ?</strong></p>', '<p> Hội nghị lần thứ sáu (8/1979)</p>', '<p>Hội nghị lần thứ năm (12/1978)</p>', '<p>Hội nghị lần thứ bảy (3/1980)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p> Hội nghị lần thứ sáu (8/1979)</p>', 125, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Trong những thành tựu bước đầu của công cuộc đổi mới, thành tựu nào quan trọng nhất ? </strong></p>', '<p>Từng bước đưa đất nước thoát khỏi khủng hoảng kinh tế - xã hội</p>', '<p>Thực hiện được 3 chương trình kinh tế: lương thực, thực phẩm; hàng tiêu dùng; hàng xuất khẩu</p>', '<p>Kiềm chế được lạm phát</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thực hiện được 3 chương trình kinh tế: lương thực, thực phẩm; hàng tiêu dùng; hàng xuất khẩu</p>', 126, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội Đảng toàn quốc lần thứ IV (12/1976) có những quyết định quan trọng. Điều nào sau đây chưa phải là quyết định của Đại hội lần này ? </strong></p>', '<p>Đề ra đường lối xây dựng CNXH trong cả nước</p>', '<p>Thực hiện đường lối đổi mới đất nước</p>', '<p>Đổi tên Đảng Lao động Việt Nam thành Đảng Cộng sản Việt Nam</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thực hiện đường lối đổi mới đất nước</p>', 127, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội đại biểu toàn quốc lần thứ VI của Đảng (12/1986) đã tạo ra bước ngoặt tư duy nào trong hoạt động của Đảng ? </strong></p>', '<p>Tiến hành cải cách, cải tổ toàn diện kinh tế, chính trị, xã hội</p>', '<p>Nhìn thẳng vào sự thật, đánh giá đúng sự thật, nói rõ sự thật</p>', '<p>Nghiêm khắc chỉ ra những sai lầm trong nhận thức và chủ trương công nghiệp hóa trong mười năm từ 1945 đến 1954</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Nhìn thẳng vào sự thật, đánh giá đúng sự thật, nói rõ sự thật</p>', 128, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội IV của Đảng (12/1976) đưa ra chiến lược đẩy mạnh công nghiệp hóa xã hội chủ nghĩa, đã ưu tiên phát triển một cách hợp lý lĩnh vực nào ? </strong></p>', '<p>Sản xuất nội địa và hàng xuất khẩu</p>', '<p>Nông nghiệp</p>', '<p>Công nghiệp nặng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Công nghiệp nặng</p>', 129, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội lần thứ V của Đảng (3/1982) đã xác định trong chặng đường đầu tiên của thời kỳ quá độ ở nước ta phải lấy lĩnh vực nào làm mặt trận hàng đầu? </strong> </p>', '<p>Nông nghiệp</p>', '<p>Chăn nuôi, dệt may xuất khẩu</p>', '<p>Thủ công mỹ nghệ xuất khẩu</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Nông nghiệp</p>', 130, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Chỉ thị 100 CT/TW của ban Bí thư Trung ương Đảng (01/1981) đưa ra chủ trương nào ?</strong></p>', '<p>Mở rộng hình thức trả lương khoán, lương sản phẩm</p>', '<p>Khoán sản phẩm đến nhóm và người lao động trong hợp tác xã nông nghiệp</p>', '<p>Phát huy quyền sản xuất kinh doanh của các xí nghiệp quốc doanh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Khoán sản phẩm đến nhóm và người lao động trong hợp tác xã nông nghiệp</p>', 131, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Từ sau 30/4/1975, để bảo vệ an toàn lãnh thổ của Tổ quốc, Việt Nam phải đối đầu trực tiếp với những lực lượng nào? </strong></p>', '<p>Tập đoàn Pôn Pốt (Cam-pu-chia)</p>', '<p>Tập đoàn Pôn Pốt và cuộc tiến công biên giới phía Bắc của quân Trung Quốc</p>', '<p>Quân xâm lược Mỹ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Tập đoàn Pôn Pốt và cuộc tiến công biên giới phía Bắc của quân Trung Quốc</p>', 132, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đường lối đổi mới của Đảng được đề ra đầu tiên ở Đại hội nào? </strong> </p>', '<p>Đại hội VI (12/1986)</p><p> </p>', '<p> Đại hội VII (6/1991)</p>', '<p>Đại hội V (3/1981)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đại hội VI (12/1986)</p><p> </p>', 133, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong> Đại hội Đảng toàn quốc lần thứ VI (12/1986) đã xác định rõ quan điểm đổi mới của Đảng Cộng sản Việt Nam là đổi mới toàn diện và đồng bộ, nhưng trọng tâm là gì ? </strong></p>', '<p>Đổi mới về kinh tế và chính trị</p>', '<p>Đổi mới về chính trị</p>', '<p>Đối mới về kinh tế</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đối mới về kinh tế</p>', 134, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Chủ trương về đổi mới cơ chế quản lý kinh tế tại Đại hội Đảng lần thứ VI là gì ? </strong></p>', '<p>Thực hiện công nghiệp hóa và hiện đại hóa đất nước</p>', '<p>Phát triển kinh tế hàng hóa nhiều thành phần, vận động theo cơ chế thị trường có sự quản lý của nhà nước</p>', '<p>Ưu tiên phát triển công nghiệp nặng trên cơ sở phát triển nông nghiệp và công nghiệp nhẹ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Phát triển kinh tế hàng hóa nhiều thành phần, vận động theo cơ chế thị trường có sự quản lý của nhà nước</p>', 135, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong> Mục tiêu của 3 chương trình kinh tế của kế hoạch 5 năm (1986-1990): lương thực - thực phẩm, hàng tiêu dùng và hàng xuất khẩu, được đề ra trong Đại hội nào ?</strong></p>', '<p>Đại hội Đảng IV (12/1976)</p>', '<p>Đại hội Đảng VI (12/1986)</p>', '<p>Đại hội Đảng V (3/1981)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đại hội Đảng VI (12/1986)</p>', 136, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Trong 3 chương trình kinh tế của kế hoạch 5 năm (1986-1990), chương trình nào phải được đưa lên hàng đầu ? </strong></p>', '<p>Lương thực, thực phẩm</p>', '<p>Hàng tiêu dùng</p>', '<p>Hàng xuất khẩu</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lương thực, thực phẩm</p>', 137, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Sau Đại thắng mùa Xuân 1975, nhiệm vụ quan trọng cấp thiết hàng đầu của cả nước ta là gì? </strong></p>', '<p>Ổn định tình hình chính trị - xã hội ở 2 miền Nam - Bắc</p>', '<p>Khắc phục hậu quả chiến tranh và phát triển kinh tế</p>', '<p>Thống nhất nước nhà về mặt Nhà nước</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thống nhất nước nhà về mặt Nhà nước</p>', 138, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Thuận lợi cơ bản nhất của đất nước sau 1975 là gì ?</strong></p>', '<p>Có miền Bắc XHCN, miền Nam hoàn toàn giải phóng</p>', '<p>Đất nước đã hòa bình, độc lập, thống nhất, cả nước quá độ lên chủ nghĩa xã hội</p>', '<p>Nhân dân phấn khởi với chiến thắng vừa giành được</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đất nước đã hòa bình, độc lập, thống nhất, cả nước quá độ lên chủ nghĩa xã hội</p>', 139, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong> Khó khăn cơ bản nhất của đất nước sau 1975 là gì ? </strong></p>', '<p>Số người mù chữ, số người thất nghiệp chiếm tỷ lệ cao</p>', '<p>Bọn phản động trong nước vẫn còn</p>', '<p>Hậu quả của chiến tranh và chủ nghĩa thực dân mới của Mỹ để lại rất nặng nề</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hậu quả của chiến tranh và chủ nghĩa thực dân mới của Mỹ để lại rất nặng nề</p>', 140, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội lần thứ mấy của Đảng đã đề ra bốn mục tiêu cơ bản của thời kỳ quá độ: xây dựng chế độ làm chủ của nhân dân dưới chủ nghĩa xã hội; xây dựng nền sản xuất lớn xã hội chủ nghĩa; xây dựng nền văn hoá mới xã hội chủ nghĩa và xây dựng con người mới xã hội chủ nghĩa? </strong> </p>', '<p>Đại hội IV (12/1976)</p>', '<p>Đại hội V (12/1986)</p>', '<p>Đại hội III (9/1960)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đại hội IV (12/1976)</p>', 141, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Tháng 8/1975, Hội nghị Ban Chấp hành Trung ương Đảng lần thứ 24 khóa </strong></p><p><strong>III đã chủ trương gì ? </strong></p>', '<p>Hoàn thành thống nhất nước nhà</p>', '<p>Bầu cử Quốc hội thống nhất</p>', '<p>Cải tạo xã hội chủ nghĩa</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hoàn thành thống nhất nước nhà</p>', 142, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội nào của Đảng đã chủ trương coi nông nghiệp là mặt trận hàng đầu?  </strong> </p>', '<p>Đại hội III (9/1960)</p>', '<p>Đại hội IV (12/1976)</p>', '<p>Đại hội V (3/1981)</p><p><strong> </strong></p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đại hội V (3/1981)</p><p><strong> </strong></p>', 143, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị nào của Ban chấp hành Trung ương Đảng khoá V quyết định phải dứt khoát xoá bỏ cơ chế tập trung quan liêu bao cấp, thực hiện hạch toán kinh doanh xã hội chủ nghĩa ?  </strong></p>', '<p>Hội nghị lần thứ mười (5/1986)  </p>', '<p>Hội nghị lần thứ chín (12/1985)  </p>', '<p>Hội nghi lần thứ tám (6/1985)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghi lần thứ tám (6/1985)</p>', 144, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nhằm mục tiêu đảm bảo nhu cầu lương thực, hàng thiết yếu của xã hội, tạo được một số mặt hàng xuất khẩu chủ lực, Đảng ta đã đề ra ba chương trình mục tiêu về lương thực, thực phẩm, hàng tiêu dùng và hàng xuất khẩu. Ba chương trình mục tiêu này được đề ra tại Đại hội khóa mấy của Đảng? </strong> </p>', '<p>Đại hội lần thứ V (3/1981)</p>', '<p>Đại hội lần thứ VI (12/1986)</p>', '<p>Đại hội lần thứ IV (12/1976)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đại hội lần thứ VI (12/1986)</p>', 145, 1, 'QuocMinh', 4),
(11, 1, 1, '<p><strong>Trong bước đột phá thứ ba về đổi mới kinh tế tại Hội nghị Bộ Chính trị khóa V (8/1986). Về cơ chế quản lý kinh tế, Hội nghị cho rằng “chúng ta đã chủ quan, nóng vội đề ra một số chủ trương quá lớn về quy mô, quá cao về nhịp độ xây dựng và phát triển sản xuất”. Đây là nguyên nhân trực tiếp của tình trạng nào ? </strong> </p>', '<p>dẫm chân tại chỗ</p>', '<p>Chậm giải quyết căn bản các vấn đề về lương thực, thực phẩm, hàng tiêu dùng và tạo nguồn hàng cho xuất khẩu</p>', '<p>chi phí sản xuất không ngừng tăng lên</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chậm giải quyết căn bản các vấn đề về lương thực, thực phẩm, hàng tiêu dùng và tạo nguồn hàng cho xuất khẩu</p>', 146, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nghị quyết Đại hội lần thứ VI của Đảng đã nhấn mạnh:“Kiên quyết xoá bỏ cơ chế tập trung quan liêu, bao cấp, thiết lập và hình thành đồng bộ cơ chế kế hoạch hoá theo phương thức hạch toán kinh doanh xã hội chủ nghĩa, đúng nguyên tắc tập trung dân chủ”. Anh/chị hãy cho biết, nội dung trên được nêu trong nhiệm vụ nào sau đây?</strong></p>', '<p>Giải quyết cho được những vấn đề cấp bách về phân phối, lưu thông</p>', '<p>Nâng cao hiệu lực chỉ đạo và điều hành của Nhà nước</p>', '<p>Đổi mới cơ chế quản lý kinh tế</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đổi mới cơ chế quản lý kinh tế</p>', 147, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Cơ chế quản lý kinh tế ở nước ta thời kỳ trước đổi mới là gì ? </strong></p>', '<p>Cơ chế kế hoạch hóa tập trung quan liêu, bao cấp</p>', '<p>Cơ chế kinh tế thị trường</p>', '<p>Cơ chế kinh tế hàng hóa nhiều thành phần</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Cơ chế kế hoạch hóa tập trung quan liêu, bao cấp</p>', 148, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Từ năm 1945 đến năm 1976, có mấy lần Tổng tuyển cử bầu Quốc hội được tổ chức trên phạm vi cả nước Việt Nam ? </strong>   </p>', '<p>3</p>', '<p>2</p>', '<p>4</p>', '<p>1</p>', '<p>2</p>', 149, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Trong 5 năm (1996-2006) tổng sản phẩm trong nước tăng bình quân hàng năm là bao nhiêu % ?  </strong></p>', '<p>5 %</p>', '<p>7%</p>', '<p>8 %</p>', '<p>6 %</p>', '<p>7%</p>', 150, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội năm 1991 được thông qua tại Đại hội Đảng lần thứ VII đã xác định:“Xã hội xã hội chủ nghĩa mà nhân dân ta xây dựng là một xã hội” như thế nào </strong>?</p>', '<p>Văn hoá là nền tảng tinh thần của xã hội</p>', '<p>Do nhân dân lao động làm chủ</p>', '<p>Do nhân dân làm chủ</p>', '<p>Có một nền kinh tế phát triển cao dựa trên lực lượng sản xuất hiện đại và quan hệ sản xuất phù hợp</p>', '<p>Do nhân dân lao động làm chủ</p>', 151, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội bổ sung và phát triển năm 2011 đã xác định: “Xã hội xã hội chủ nghĩa mà nhân dân ta xây dựng là một xã hội” như thế nào ? </strong></p>', '<p>Có một nền kinh tế phát triển cao dựa trên lực lượng sản xuất hiện đại và quan hệ sản xuất phù hợp</p>', '<p>Do nhân dân lao động làm chủ</p>', '<p>Do nhân dân làm chủ</p>', '<p>Văn hoá là nền tảng tinh thần của xã hội</p>', '<p>Do nhân dân làm chủ</p>', 152, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội nào của Đảng khẳng định:“Tư tưởng Hồ Chí Minh không chỉ là kết quả của sự vận dụng sáng tạo mà còn phát triển sáng tạo chủ nghĩa Mác - Lênin vào điều kiện cụ thể của nước ta”? </strong></p>', '<p>Đại hội VII (6/1991)</p>', '<p>Đại hội VIII (7/1996)</p>', '<p>Đại hội IX (4/2001)</p>', '<p>Đại hội VI (12/1986)</p>', '<p>Đại hội IX (4/2001)</p>', 153, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Báo cáo chính trị của Ban Chấp hành trung ương tại Đại hội VIII (7/1996) đã bổ sung đặc trưng tổng quát về mục tiêu xây dựng chủ nghĩa xã hội ở Việt Nam là gì ? </strong></p>', '<p>Văn hoá là nền tảng tinh thần của xã hội</p>', '<p>Do nhân dân lao động làm chủ</p>', '<p>Dân giàu, nước mạnh, xã hội công bằng, văn minh</p>', '<p>Có một nền kinh tế phát triển cao dựa trên lực lượng sản xuất hiện đại và quan hệ sản xuất phù hợp</p>', '<p>Dân giàu, nước mạnh, xã hội công bằng, văn minh</p>', 154, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nghị quyết về định hướng chiến lược phát triển giáo dục – đào tạo trong thời kỳ công nghiệp hóa, hiện đại hóa đã xác định quan điểm xây dựng con người như thế nào để xây dựng chủ nghĩa xã hội ? </strong></p>', '<p>Làm chủ bản thân</p>', '<p>Vừa “ hồng” vừa “ chuyên”</p>', '<p>Vừa “đức’ vừa “tài”</p>', '<p>Năng động, sáng tạo</p>', '<p>Vừa “ hồng” vừa “ chuyên”</p>', 155, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội nào của Đảng được gọi là Đại hội “Trí tuệ-đổi mới, dân chủ-kỷ cương-đoàn kết” ? </strong></p>', '<p>Đại hội lần thứ VIII</p>', '<p>Đại hội lần thứ VI</p>', '<p>Đại hội lần thứ V  </p>', '<p>Đại hội lần thứ VII</p>', '<p>Đại hội lần thứ VII</p>', 156, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội Đảng toàn quốc lần X đã tổng kết một số vấn đề về lý luận – thực tiễn của đất nước qua bao nhiêu năm đổi mới ? </strong></p>', '<p>10 năm</p>', '<p>15 năm</p>', '<p>20 năm</p>', '<p>5 năm</p>', '<p>20 năm</p>', 157, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Trong quá trình đẩy mạnh công nghiệp hóa, hiện đại hóa gắn với phát triển kinh tế tri thức thời kỳ đổi mới. Có mấy định hướng phát triển các ngành và lĩnh vực kinh tế?</strong> </p>', '<p>4</p>', '<p>5</p>', '<p>6</p>', '<p>7</p>', '<p>6</p>', 158, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Ngoài văn kiện chính của một Đại hội Đảng, điểm mới nổi bật của Đại hội là đã thông qua mấy văn kiện quan trọng, cụ thể văn kiện đó là gì ? </strong></p>', '<p>Một văn kiện: Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội bổ sung và phát triển</p>', '<p>Hai văn kiện: Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội; Chiến lược, ổn định và phát triển kinh tế - xã hội đến năm 2015</p>', '<p>Hai văn kiện: Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội; Chiến lược, ổn định và phát triển kinh tế - xã hội đến năm 2000</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hai văn kiện: Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội; Chiến lược, ổn định và phát triển kinh tế - xã hội đến năm 2015</p>', 159, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Khái niệm xây dựng Nhà nước pháp quyền xã hội chủ nghĩa lần đầu tiên đề cập ở Hội nghị trung ương nào ?</strong></p>', '<p>Hội nghị Trung ương 5 khóa VIII</p>', '<p>Hội nghị Trung ương 2 khóa VI</p>', '<p>Hội nghị Trung ương 2 khóa VII</p>', '<p>Hội nghị Trung ương 5 khóa VI</p>', '<p>Hội nghị Trung ương 2 khóa VII</p>', 160, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nêu một trong những thắng lợi vĩ đại của cách mạng Việt Nam trong giai đoạn 1930 đến 1945 ? </strong></p>', '<p>Thắng lợi của cuộc kháng chiến oanh liệt để giải phóng dân tộc, bảo vệ Tổ quốc</p>', '<p>Thắng lợi của sự nghiệp đổi mới và từng bước đưa đất nước quá độ lên chủ nghĩa xã hội</p>', '<p>Thắng lợi của cuộc Cách mạng tháng Tám năm 1945, thành lập nhà nước Việt Nam Dân chủ Cộng hòa</p>', '<p>Thắng lợi của cuộc cách mạng tháng Tám năm 1945, thành lập nhà nước Cộng hòa xã hội chủ nghĩa Việt Nam</p>', '<p>Thắng lợi của cuộc Cách mạng tháng Tám năm 1945, thành lập nhà nước Việt Nam Dân chủ Cộng hòa</p>', 161, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nêu một trong những thắng lợi vĩ đại của cách mạng Việt Nam trong giai đoạn 1986 đến 2018 ? </strong></p>', '<p><strong>Thắng lợi của sự nghiệp đổi mới và từng bước đưa đất nước quá độ lên chủ nghĩa xã hội</strong></p>', '<p>Thắng lợi trong việc nắm vững ngọn cờ độc lập dân tộc và chủ nghĩa xã hội</p>', '<p>Thắng lợi của cuộc kháng chiến oanh liệt để giải phóng dân tộc, bảo vệ Tổ quốc</p>', '<p>Thắng lợi của cuộc cách mạng tháng Tám năm 1945, thành lập nhà nước Cộng hòa xã hội chủ nghĩa Việt Nam</p>', '<p><strong>Thắng lợi của sự nghiệp đổi mới và từng bước đưa đất nước quá độ lên chủ nghĩa xã hội</strong></p>', 162, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội Đảng toàn quốc lần IX của Đảng Cộng sản Việt Nam họp trong khoảng thời gian nào? </strong></p>', '<p>Từ 01 đến 8/4/2001</p>', '<p>Từ 19 đến 22/4/2001</p>', '<p>Từ 12 đến 17/6/2001</p>', '<p>Từ 14 đến 19/7/2001</p>', '<p>Từ 19 đến 22/4/2001</p>', 163, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội Đảng toàn quốc lần thứ mấy đã tổng kết 30 năm thực hiện đường lối đổi mới? </strong></p>', '<p>Đại hội XII</p>', '<p>Chưa có Đại hội nào tổng kết 30 đổi mới</p>', '<p>Đại hội X</p>', '<p>Đại hội XI</p>', '<p>Đại hội XII</p>', 164, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội Đảng lần thứ IX (4/2001) là Đại hội có chủ đề gì ? </strong></p>', '<p>Trí tuệ-đổi mới, dân chủ-kỷ cương-đoàn kết</p>', '<p>Nâng cao năng lực lãnh đạo và sức chiến đấu của Đảng</p>', '<p>Trí tuệ, Dân chủ, Đoàn kết, Đổi mới</p>', '<p>Nhìn thẳng vào sự thật, nói rõ sự thật, đánh giá đúng sự thật</p>', '<p>Trí tuệ, Dân chủ, Đoàn kết, Đổi mới</p>', 165, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội Đảng lần thứ IX (4/2001) xác định quan điểm phát triển nhanh và bền vững, theo đó tăng trưởng kinh tế phải đi đôi với vấn đề gì ? </strong></p>', '<p>Phát triển kinh tế tri thức</p>', '<p>Thực hiện tiến bộ, công bằng xã hội và bảo vệ môi trường</p>', '<p>Chính sách xã hội</p>', '<p>Tăng cường sự quản lý của Nhà nước</p>', '<p>Thực hiện tiến bộ, công bằng xã hội và bảo vệ môi trường</p>', 166, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>“Các dân tộc trong nước bình đẳng, đoàn kết và giúp đỡ lẫn nhau cùng tiến bộ” là một trong những đặc trưng xây dựng xã hội xã hội chủ nghĩa mà nhân dân ta xây dựng. Đặc trưng trên được trình bày tại Đại hội đại biểu toàn quốc lần thứ mấy ? </strong></p>', '<p>Đại hội Đảng V (3/1981)</p>', '<p>Đại hội Đảng VI (12/1986)</p>', '<p>Đại hội Đảng VII (6/1991)</p>', '<p>Đại hội Đảng IV (12/1976)</p>', '<p>Đại hội Đảng VII (6/1991)</p>', 167, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong> Trọng tâm của đổi mới hệ thống chính trị được nêu ra tại Hội nghị Trung ương 6 (3/1989) là gì ? </strong></p>', '<p>Đổi mới tổ chức và phương thức hoạt động của hệ thống chính trị</p>', '<p>Đổi mới hoạt động của các đoàn thể</p>', '<p>Đổi mới tổ chức nâng cao hiệu lực quản lý của nhà nước</p>', '<p>Đổi mới tổ chức và phương thức hoạt động lãnh đạo của Đảng</p>', '<p>Đổi mới tổ chức và phương thức hoạt động của hệ thống chính trị</p>', 168, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Trong các nguồn lực để thực hiện công nghiệp hóa, hiện đại hóa ở nước ta đến năm 2020, Đại hội VIII của Đảng đã xác định nguồn lực nào là yếu tố cơ bản cho sự phát triển nhanh và bền vững ?</strong></p>', '<p>Con người, tài nguyên đất đai  </p>', '<p>Con người</p>', '<p>Con người, khoa học công nghệ</p>', '<p>Con người, khoa học công nghệ, vốn, kinh nghiệm quản lý  </p>', '<p>Con người</p>', 169, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>“Nước ta đã ra khỏi khủng hoảng kinh tế - xã hội nhưng một số mặt còn chưa vững chắc” là đánh giá tổng quát của Đại hội nào ?  </strong></p>', '<p>Đại hội VII (6/1991)</p>', '<p>Đại hội VI (12/1986)</p>', '<p><strong>Đại hội VIII (7/1996)</strong></p>', '<p>Đại hội IX (4/2001)</p>', '<p><strong>Đại hội VIII (7/1996)</strong></p>', 170, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội Đảng lần thứ mấy của Đảng xác định nền kinh tế thị trường định hướng xã hội chủ nghĩa là mô hình kinh tế tổng quát của nước ta trong thời kỳ quá độ đi lên chủ nghĩa xã hội ? </strong></p>', '<p><strong> Đại hội IX (4/2001)</strong></p>', '<p>Đại hội VII (6/1991)</p>', '<p>Đại hội VIII (7/1996)</p>', '<p>Đại hội VI (12/1986)</p>', '<p><strong> Đại hội IX (4/2001)</strong></p>', 171, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội được thông qua trong Đại hội nào của Đảng ?  </strong></p>', '<p> Đại hội VII (6/1991)</p>', '<p>Đại hội VIII (7/1996)</p>', '<p>Đại hội IX (4/2001)</p>', '<p>Đại hội VI (12/1986)</p>', '<p> Đại hội VII (6/1991)</p>', 172, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội nào của Đảng đề ra nhiệm vụ:“Đẩy mạnh công cuộc đổi mới toàn diện và đồng bộ, tiếp tục phát triển nền kinh tế nhiều thành phần vận hành theo cơ chế thị trường có sự quản lý của Nhà nước theo định hướng xã hội chủ nghĩa”?</strong></p>', '<p>Đại hội đại biểu toàn quốc lần thứ VIII ( 07/1996)</p>', '<p>Đại hội đại biểu toàn quốc lần thứ IX (04/2001)</p>', '<p>Đại hội đại biểu toàn quốc lần thứ VII (06/1991)</p>', '<p>Đại hội đại biểu toàn quốc lần thứ VI (12/1986)</p>', '<p>Đại hội đại biểu toàn quốc lần thứ VIII ( 07/1996)</p>', 173, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội toàn quốc lần thứ mấy của Đảng xác định:“Đảng lấy chủ nghĩa Mác - Lênin và tư tưởng Hồ Chí Minh làm nền tảng tư tưởng, kim chỉ nam cho hành động” ?  </strong></p>', '<p>Đại hội lần thứ VIII (7/1996)</p>', '<p>Đại hội lần thứ VII (6/1991)</p>', '<p>Đại hội lần thứ IX (04/2001)</p>', '<p>Đại hội lần thứ VI (12/1986)</p>', '<p>Đại hội lần thứ VII (6/1991)</p>', 174, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Mục tiêu tổng quát: “đưa nước ta ra khỏi tình trạng kém phát triển, tạo nền tảng để đến năm 2020 nước ta cơ bản trở thành một nước công nghiệp theo hướng hiện đại; tiếp tục đưa tổng sản phẩm trong nước (GDP) năm 2010 lên gấp đôi so với năm 2000”, được xác định trong văn kiện nào của Đảng ta ? </strong></p>', '<p>Chiến lược phát triển kinh tế - xã hội 2001-2010</p>', '<p>Diễn văn khai mạc Đại hội lần thứ VII</p>', '<p>Nghị quyết Đại hội lần thứ VI</p>', '<p>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội</p>', '<p>Chiến lược phát triển kinh tế - xã hội 2001-2010</p>', 175, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong> Việt Nam trở thành thành viên đầy đủ của Hiệp hội các quốc gia Đông Nam Á (ASEAN) vào thời gian nào?</strong></p>', '<p>01/11/1998</p>', '<p>28/7/1995</p>', '<p>5/6/1996</p>', '<p>25/5/1995</p>', '<p>28/7/1995</p>', 176, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị Trung ương 4, khóa XI (1/2012) đã đưa ra kết luận tiếp tục tăng cường sự lãnh đạo của Đảng đối với công tác phòng, chống tham nhũng, lãng phí. Trung ương quyết định thành lập Ban Chỉ đạo Trung ương về phòng, chống tham nhũng trực thuộc cơ quan nào ? </strong></p>', '<p>Bộ Chính trị do Tổng Bí thư làm Trưởng ban</p>', '<p>Bộ Chính trị do Ủy ban kiểm tra làm Trưởng ban</p>', '<p>Quốc Hội do Chủ tịch Quốc Hội làm Trưởng ban</p>', '<p>Chính phủ do Thủ tướng làm Trưởng ban</p>', '<p>Bộ Chính trị do Tổng Bí thư làm Trưởng ban</p>', 177, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đảng viên được làm kinh tế tư nhân là kết quả đổi mới tư duy của Đảng ta đối với các thành phần kinh tế. Thực tiễn đã chứng minh đó là một chủ trương phù hợp với thực tế của đất nước và thế giới. Anh/chị cho biết văn kiện nào của  Đảng quy định về vấn đề đảng viên làm kinh tế tư nhân? </strong></p>', '<p>Quy định số 47-QĐ/TW, ngày 01/11/2011</p>', '<p>Quy định số 15-QĐ/TW, ngày 28/8/2006</p>', '<p>Quy định số 114-QĐ/TW, ngày 20/8/2004</p>', '<p>Quy định số 94-QĐ/TW, ngày 03/3/2004</p>', '<p>Quy định số 15-QĐ/TW, ngày 28/8/2006</p>', 178, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong> Hội nghị Trung ương 7 (3/2003), khóa IX đã đề ra bao nhiêu Nghị quyết quan trọng, đó là những Nghị quyết gì ? </strong></p>', '<p>Ba Nghị quyết : Nghị quyết về phát huy sức mạng đại đoàn kết toàn dân tộc; Nghi quyết về công tác dân tộc; Nghi quyết về công tác tôn giáo</p>', '<p>Một Nghị quyết: Nghị quyết về nâng cao năng lực lãnh đạo và sức chiến đấu của</p><p>Đảng</p>', '<p>Không có Nghị quyết nào quan trọng</p>', '<p>Hai Nghị quyết: Nghị quyết về công tác dân tộc; Nghị quyết về công tác tôn giáo</p>', '<p>Ba Nghị quyết : Nghị quyết về phát huy sức mạng đại đoàn kết toàn dân tộc; Nghi quyết về công tác dân tộc; Nghi quyết về công tác tôn giáo</p>', 179, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đặc trưng đầu tiên của mô hình xã hội xã hội chủ nghĩa ở Việt Nam trong “Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội” (bổ sung, phát triển năm 2011) là gì ? </strong></p>', '<p>Có nền văn hoá tiên tiến, đậm đà bản sắc dân tộc</p>', '<p>Do nhân dân làm chủ</p>', '<p>Dân giàu, nước mạnh, dân chủ, công bằng, văn minh</p>', '<p>Có Nhà nước pháp quyền xã hội chủ nghĩa của nhân dân, do nhân dân vì nhân dân</p>', '<p>Dân giàu, nước mạnh, dân chủ, công bằng, văn minh</p>', 180, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Phương châm đối ngoại của Đảng ta tại Đại hội lần IX (4/2001) là gì? </strong></p>', '<p>Việt Nam muốn là bạn với tất cả các nước trong cộng đồng thế giới, phấn đấu vì hòa bình, độc lập và phát triển</p>', '<p>Việt Nam muốn là bạn với tất cả các nước dân chủ, hợp tác, đoàn kết, tôn trọng độc lập chủ quyền của nhau</p>', '<p>Việt Nam sẵn sàng là bạn, là đối tác tin cậy, là thành viên có trách nhiệm của các nước trong cộng đồng quốc tế, phấn đấu vì hòa bình, độc lập và phát triển</p>', '<p>Việt Nam sẵn sàng là bạn, là đối tác tin cậy của các nước trong cộng đồng quốc tế, phấn đấu vì hòa bình, độc lập và phát triển</p>', '<p>Việt Nam sẵn sàng là bạn, là đối tác tin cậy của các nước trong cộng đồng quốc tế, phấn đấu vì hòa bình, độc lập và phát triển</p>', 181, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội lần thứ mấy Đảng ta khẳng định:“Việt Nam muốn là bạn với tất cả các nước trong cộng đồng thế giới, phấn đấu vì hoà bình, độc lập và phát triển” ? </strong></p>', '<p>Đại hội VIII (7/1996)</p>', '<p>Đại hội IX (4/2001)</p>', '<p>Đại hội VI (12/1986)</p>', '<p>Đại hội VII (6/1991)</p>', '<p>Đại hội VII (6/1991)</p>', 182, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Anh/chị cho biết phương châm đối ngoại của Việt Nam được Đại hội đại biểu toàn quốc lần thứ XII (1/2016) của Đảng nêu ra là gì ? </strong></p>', '<p>Đa dạng hóa, đa phương hóa trong quan hệ đối ngoại; chủ động và tích cực hội nhập quốc tế; là bạn, là đối tác tin cậy và thành viên có trách nhiệm của cộng đồng quốc tế</p>', '<p>Chủ động và tích cực hội nhập kinh tế quốc tế</p>', '<p>Là bạn, là đối tác tin cậy và thành viên có trách nhiệm của cộng đồng quốc tế</p>', '<p>Đa dạng hóa, đa phương hóa trong quan hệ đối ngoại; độc lập về chính trị nhân nhượng về kinh tế</p>', '<p>Đa dạng hóa, đa phương hóa trong quan hệ đối ngoại; chủ động và tích cực hội nhập quốc tế; là bạn, là đối tác tin cậy và thành viên có trách nhiệm của cộng đồng quốc tế</p>', 183, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>“Dân giàu, nước mạnh, dân chủ, công bằng, văn minh” là một trong những đặc trưng xây dựng xã hội xã hội chủ nghĩa mà nhân dân ta xây dựng. Đặc trưng trên được trình bày trong Cương lĩnh nào ? </strong></p>', '<p>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội ( bổ sung, phát triển năm 2011)</p>', '<p>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội năm 1991</p>', '<p>Cương lĩnh chính trị đầu tiên của Đảng</p>', '<p>Chánh cương của Đảng Lao động Việt Nam</p>', '<p>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội ( bổ sung, phát triển năm 2011)</p>', 184, 1, 'QuocMinh', 4),
(1, 1, 1, '<p>Một trong những điểm mới về chủ trương đối ngoại của Đảng ta tại Đại hội VIII (7/1996) là gì ?</p>', '<p>Xóa bỏ tình trạng độc quyền về ngoại thương</p>', '<p>Bình thường hóa với Trung Quốc và Mỹ</p>', '<p>Xây dựng một nền kinh tế khép kín</p>', '<p>Đầu tư ra nước ngoài</p>', '<p>Đầu tư ra nước ngoài</p>', 185, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nét nổi bật của thời kỳ cách mạng 1932-1935 là gì ?  </strong></p>', '<p>Sự vững vàng của Đảng trước chính sách khủng bố dã man của kẻ thù</p>', '<p>Các phong trào dân tộc của công nhân, nông dân và các tầng lớp xã hội khác liên tiếp bùng nổ trong cả nước</p>', '<p>Hệ thống của Đảng ở trong nước được khôi phục</p>', '<p>Các chiến sĩ cách mạng luôn nêu cao tinh thần đấu tranh bất khuất</p>', '<p>Sự vững vàng của Đảng trước chính sách khủng bố dã man của kẻ thù</p>', 186, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hãy chọn đáp án đúng điền vào những cụm từ còn thiếu cho đúng với Nghị quyết Hội nghị lần thứ 24 Ban Chấp hành Trung ương Đảng (9/1975): “ ….(1)….vừa là nguyện vọng tha thiết của nhân dân cả nước, vừa là ….(2) ... của sự phát triển cách mạng Việt Nam, của lịch sử dân tộc Việt Nam”. </strong></p>', '<p>(1) Thống nhất đất nước; (2) Quy luật khách quan</p>', '<p>(1) Thống nhất đất nước; (2) yêu cầu</p>', '<p>(1) Giải phóng dân tộc; (2) quy luật khách quan</p>', '<p>(1) Chủ nghĩa xã hội; (2) yêu cầu  </p>', '<p>(1) Thống nhất đất nước; (2) Quy luật khách quan</p>', 187, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Chiến lược phát triển kinh tế - xã hội giai đoạn 2011-2020, Đại hội Đảng toàn quốc lần XI đã đề ra bao nhiêu bước đột phá chiến lược ? </strong></p>', '<p>3</p>', '<p>2</p>', '<p>1</p>', '<p>4</p>', '<p>3</p>', 188, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>“…Văn hóa thực sự trở thành nền tảng tinh thần vững chắc của xã hội, là sức mạnh nội sinh quan trọng bảo đảm sự phát triển bền vững và bảo vệ vững chắc Tổ quốc vì mục tiêu dân giàu, nước mạnh, dân chủ, công bằng, văn minh”. Anh/chị cho biết mục tiêu này được thể hiện trong Nghị quyết nào ? </strong></p>', '<p>Nghi quyết số 33-NQ/TW, ngày 9/6/2014, Hội nghị lần thứ 9 Ban Chấp hành Trung ương Đảng (khóa XI)</p>', '<p>Nghị quyết số 38-NQ/TW, ngày 12/1/2015, Hội nghị lần thứ 10 Ban Chấp hành Trung ương Đảng (khóa XI)</p>', '<p>Nghị quyết số 31-NQ/TW, ngày 14/5/2014, Hội nghị lần thứ 9 Ban Chấp hành Trung ương (khoá XI)</p>', '<p>Nghị quyết số 29-NQ/TW, ngày 4/11/2013, Hội nghị lần thứ 8 Ban Chấp hành Trung ương Đảng (khóa XI)</p>', '<p>Nghi quyết số 33-NQ/TW, ngày 9/6/2014, Hội nghị lần thứ 9 Ban Chấp hành Trung ương Đảng (khóa XI)</p>', 189, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đại hội X của Đảng (4/2006) đã nhận thức về công nghiệp hóa ở Việt Nam kể từ Đại hội III như thế nào ? </strong></p>', '<p>Công nghiệp hóa được nhận thức là “công nghiệp hóa, hiện đại hóa”</p>', '<p>Công nghiệp hóa được nhận thức là “ công nghiệp hóa, hiện đại hóa gắn với phát triển kinh tế tri thức trong thể chế kinh tế thị trường định hướng xã hội chủ nghĩa và hội nhập kinh tế quốc tế”</p>', '<p>Giai đoạn chuẩn bị các tiền đề công nghiệp hóa đất nước đã cơ bản hoàn thành, cho phép nước ta chuyển sang giai đoạn đẩy mạnh công nghiệp hóa, hiện đại hóa đất nước</p>', '<p>Công nghiệp hóa được nhận thức là “công nghiệp hóa, hiện đại hóa từng bước gắn với phát triển kinh tế tri thức”</p>', '<p>Công nghiệp hóa được nhận thức là “ công nghiệp hóa, hiện đại hóa gắn với phát triển kinh tế tri thức trong thể chế kinh tế thị trường định hướng xã hội chủ nghĩa và hội nhập kinh tế quốc tế”</p>', 190, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Chọn phương án đúng nhất điền vào chỗ trống: Trong mục tiêu tổng quát, Nghị quyết Đại hội lần thứ XII (1/2016) đã thống nhất cần “Đẩy mạnh toàn diện, đồng bộ công cuộc đổi mới; phát triển kinh tế nhanh, bền vững, phấn đấu sớm đưa nước ta ....…” </strong></p>', '<p>Cơ bản trở thành nước công nghiệp theo hướng hiện đại</p>', '<p>Trở thành nước công nghiệp hiện đại</p>', '<p>Trở thành nước hiện đại</p>', '<p>Trở thành nước công nghiệp</p>', '<p>Cơ bản trở thành nước công nghiệp theo hướng hiện đại</p>', 191, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Nghị quyết số 04-NQ/TW, khóa XII do Tổng Bí thư Nguyễn Phú Trọng ký ban hành ngày 30/10/2016 đã chỉ ra bao nhiêu biểu hiện suy thoái về tư tưởng chính trị, đạo đức, lối sống, những biểu hiện “tự diễn biến”, “tự chuyển hóa” trong nội bộ ? </strong></p>', '<p>27 biểu hiện</p>', '<p>24 biểu hiện</p>', '<p>30 biểu hiện</p>', '<p>21 biểu hiện</p>', '<p>27 biểu hiện</p>', 192, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Chọn phương án đúng nhất điền vào chỗ trống: Hội nghị Trung ương …(1)... của Ban Chấp hành Trung ương Đảng khoá V (6/1985) đã chủ trương xoá bỏ cơ chế …(2)..., lấy giá lương tiền là khâu đột phá để chuyển sang cơ chế …(3)... </strong></p>', '<p>(1) VIII; (2) tập trung quan liêu hành chính bao cấp; (3) hạch toán, kinh doanh xã hội chủ nghĩa</p>', '<p>(1) VII; (2) tập trung quan liêu (3) kinh doanh xã hội chủ nghĩa  </p>', '<p>(1) VI; (2) kế hoạch hóa xã hội chủ nghĩa; (3) kinh doanh xã hội chủ nghĩa</p>', '<p>(1) V; (2) thị trường xã hội chủ nghĩa; (3) kinh doanh xã hội chủ nghĩa  </p>', '<p>(1) VIII; (2) tập trung quan liêu hành chính bao cấp; (3) hạch toán, kinh doanh xã hội chủ nghĩa</p>', 193, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Đặc trưng xây dựng xã hội xã hội chủ nghĩa về “Do nhân dân lao động làm chủ” và “Do nhân dân làm chủ”, đặc trưng này là điểm khác nhau giữa hai Cương lĩnh nào ? </strong></p>', '<p>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội năm 1991 và Cương lình xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội ( bổ sung, phát triển năm 2011)</p>', '<p>Chánh cương của Đảng Lao động Việt Nam và Cương lĩnh chính trị đầu tiên của</p><p>Đảng</p>', '<p> </p><p>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội (bổ sung, phát triển năm 2011) và Chánh cương của Đảng Lao động Việt Nam</p>', '<p>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội năm 1991 và Chánh cương của Đảng Lao động Việt Nam</p>', '<p>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội năm 1991 và Cương lình xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội ( bổ sung, phát triển năm 2011)</p>', 194, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hội nghị Đại biểu toàn quốc giữa nhiệm kỳ khoá VII (01/1994) đã xác định những nguy cơ nào mà chúng ta có thể gặp phải trước mắt ? </strong></p>', '<p>Nguy cơ tụt hậu xa hơn về kinh tế; chệch hướng xã hội chủ nghĩa; tham nhũng; âm mưu và hành động “ diễn biến hòa bình” của các thế lực thù địch</p>', '<p>Nguy cơ chệch hướng bản chất xã hội chủ nghĩa</p>', '<p>Nguy cơ tụt hậu xa hơn về địa vị kinh tế</p>', '<p>Âm mưu và hành động “tranh chấp biển” của các thế lực thù địch</p>', '<p>Nguy cơ tụt hậu xa hơn về kinh tế; chệch hướng xã hội chủ nghĩa; tham nhũng; âm mưu và hành động “ diễn biến hòa bình” của các thế lực thù địch</p>', 195, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Hệ thống chính trị ở Việt Nam bao gồm những thành tố nào? </strong></p>', '<p> Đảng cộng sản Việt Nam, nhà nước CHXHCN Việt Nam, Mặt trận Tổ quốc Việt Nam và các đoàn thể chính trị - xã hội</p>', '<p>Đảng lãnh đạo, Nhà nước quản lý và nhân dân làm chủ</p>', '<p>Đảng, Nhà nước và các đoàn thể chính trị - xã hội</p>', '<p>Đảng, Nhà nước, Mặt trận Tổ quốc</p>', '<p> Đảng cộng sản Việt Nam, nhà nước CHXHCN Việt Nam, Mặt trận Tổ quốc Việt Nam và các đoàn thể chính trị - xã hội</p>', 196, 1, 'QuocMinh', 4);
INSERT INTO `questions` (`grade_id`, `unit`, `level_id`, `question_content`, `answer_a`, `answer_b`, `answer_c`, `answer_d`, `correct_answer`, `question_id`, `subject_id`, `sent_by`, `status_id`) VALUES
(1, 1, 1, '<p><strong>Tại Hội nghị Trung ương 5 khóa VIII (7/1998), quan điểm nào trong các quan điểm sau đây nói về chức năng, vị trí, vai trò đặc biệt quan trọng của văn hóa đối với sự phát triển kinh tế - xã hội? </strong></p>', '<p>Nền văn hóa mà chúng ta xây dựng là nền văn hóa tiên tiến, đậm đà bản sắc dân tộc,</p><p> </p>', '<p>Văn hóa là nền tảng tinh thần của xã hội, vừa là mục tiêu, vừa là động lực thúc đẩy sự phát triển kinh tế - xã hội</p>', '<p>Nền văn hoá Việt Nam là nền văn hoá thống nhất mà đa dạng trong cộng đồng các dân tộc Việt Nam</p>', '<p>Xây dựng và phát triển văn hoá là sự nghiệp của toàn dân do Đảng lãnh đạo, trong đó đội ngũ trí thức giữ vai trò quan trọng</p>', '<p>Văn hóa là nền tảng tinh thần của xã hội, vừa là mục tiêu, vừa là động lực thúc đẩy sự phát triển kinh tế - xã hội</p>', 197, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Trong bốn nguy cơ mà Đảng ta đã chỉ ra thì nguy cơ nào là lớn nhất trong 5 năm sắp tới (2016-2020)</strong></p>', '<p>Tụt hậu xa hơn về kinh tế so với các nước trong khu vực và trên thế giới</p>', '<p>Suy thoái về tư tưởng chính trị, đạo đức, lối sống của một bộ phận cán bộ, đảng viên, công chức, viên chức</p>', '<p>Tham nhũng, quan liêu, lãng phí</p>', '<p>Diễn biến hóa bình</p>', '<p>Tụt hậu xa hơn về kinh tế so với các nước trong khu vực và trên thế giới</p>', 198, 1, 'QuocMinh', 4),
(1, 1, 1, '<p><strong>Chọn phương án đúng nhất điền vào chỗ trống. Các bước đột phá tháng ......, tháng ........ và tháng ............ của Đại hội Đảng toàn quốc lần V đã phản ánh sự phát triển nhận thức của Đảng ta để hình thành đường lối đổi mới năm 1986.</strong></p>', '<p>8/1979; 6/1985; 8/1986</p>', '<p>8/1978; 6/1984; 8/1986</p>', '<p>8/1979; 9/1985; 3/1986</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>8/1979; 6/1985; 8/1986</p>', 199, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Nêu một trong những thắng lợi vĩ đại của cách mạng Việt Nam trong giai đoạn 1986 đến 2018 ?</strong></p>', '<p>Thắng lợi của sự nghiệp đổi mới và từng bước đưa đất nước quá độ lên chủ nghĩa xã hội</p>', '<p>Thắng lợi trong việc nắm vững ngọn cờ độc lập dân tộc và chủ nghĩa xã hội</p>', '<p>Thắng lợi của cuộc kháng chiến oanh liệt để giải phóng dân tộc, bảo vệ Tổ quốc</p>', '<p>Thắng lợi của cuộc cách mạng tháng Tám năm 1945, thành lập nhà nước Cộng hòa xã hội chủ nghĩa Việt Nam</p>', '<p>Thắng lợi của sự nghiệp đổi mới và từng bước đưa đất nước quá độ lên chủ nghĩa xã hội</p>', 200, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Nhìn lại chặng đường 10 năm đổi mới (1986-1996), Đại hội Đại biểu toàn quốc lần thứ VIII của Đảng nhận định như thế nào về tình hình đất nước ta ?</strong></p>', '<p>Nước ta đã có nền kinh tế phát triển</p>', '<p>Nước ta đã thoát ra khỏi khủng hoảng kinh tế - xã hội</p>', '<p>Nước ta đã chuyển sang nền kinh tế thị trường</p>', '<p>Nước ta đã thoát khỏi nghèo đói, có dự trữ và bước đầu có xuất khẩu</p>', '<p>Nước ta đã chuyển sang nền kinh tế thị trường</p>', 201, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Tại Đại hội lần thứ VII của Quốc tế Cộng sản, đoàn đại biểu Đảng cộng sản Đông Dương do ai dẫn đầu đến dự Đại hội?</strong></p>', '<p>Lê Hồng Phong </p>', '<p>Nguyễn Văn Cừ</p>', '<p>Phạm Văn Đồng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lê Hồng Phong </p>', 202, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Chọn phương án trả lời đúng nhất: Nhân dân ta phải tiến hành Tổng khởi nghĩa giành chính quyền trước khi quân Đồng minh vào Đông Dương trong giai đoạn 1939-1945 vì những lý do nào sau đây?</strong></p>', '<p>So sánh lực lượng có lợi nhất, kẻ thù cũ đã ngã gục nhưng kẻ thù mới chưa kịp đến</p>', '<p>Quân Nhật đang bị mất ý chí chiến đấu do bị bại trận trước quân đồng minh</p>', '<p>Thực dân Pháp đã bị phát xít Nhật đánh đổ hoàn toàn </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>So sánh lực lượng có lợi nhất, kẻ thù cũ đã ngã gục nhưng kẻ thù mới chưa kịp đến</p>', 203, 1, 'admin', 4),
(1, 2, 1, '<p>Trong năm 1936, Mặt trận nhân dân nước nào làm nòng cốt, thắng cử vào Nghị viện, lên cầm quyền và ban hành một số chính sách tiến bộ cho các nước thuộc địa?</p>', '<p>Nước Đức</p>', '<p>Nước Pháp</p>', '<p>Nước Anh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Nước Pháp</p>', 204, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Chiều ngày 16/8/1945 theo lệnh của ủy ban khởi nghĩa, một đội giải phóng quân do đồng chí Võ Nguyên Giáp chỉ huy, xuất phát từ Tân Trào tiến về giải phóng thị xã nào?</strong></p>', '<p>Giải phóng thị xã Tuyên Quang</p>', '<p>Giải phóng thị xã Thái Nguyên </p>', '<p>Giải phóng thị xã Cao Bằng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Giải phóng thị xã Thái Nguyên </p>', 205, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Hội nghị Trung ương lần thứ mấy đã bắt đầu chủ trương điều chỉnh từ chiến lược đấu tranh giành các quyền dân chủ sang chủ trương đấu tranh giải phóng dân tộc trong giai đoạn kháng chiến chống thực dân Pháp (1930-1945) ?</strong></p>', '<p>Hội nghị Trung ương lần thứ tám (5/1941)</p>', '<p>Hội nghị Trung ương lần thứ bảy (11/1940)</p>', '<p>Hội nghị Trung ương lần thứ sáu (11/1939) </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị Trung ương lần thứ sáu (11/1939) </p>', 206, 1, 'admin', 4),
(1, 2, 1, '<p>Tác phẩm “vấn đề dân cày” của Qua Ninh và Vân Đình được in và phát hành rộng rãi trong cuộc vận động dân chủ 1936-1939. Vậy Qua Ninh và Vân Đình là ai?</p>', '<p>Trường Chinh và Võ Nguyên Giáp. </p>', '<p>Nguyễn Ái Quốc và Phạm Văn Đồng.</p>', '<p>Trần Phú và Hà Huy Tập.</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Trường Chinh và Võ Nguyên Giáp. </p>', 207, 1, 'admin', 4),
(1, 2, 1, '<p>Chọn phương án trả lời đúng nhất: Phương pháp đấu tranh cơ bản trong Cách mạng tháng Tám 1945 là gì?</p>', '<p>Đấu tranh ngoại giao kết hợp với đấu tranh vũ trang</p>', '<p>Đấu tranh vũ trang</p>', '<p>Đấu tranh vũ trang kết hợp với đấu tranh chính trị </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đấu tranh vũ trang</p>', 208, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Lực lượng vũ trang nào sau đây được xây dựng ở Việt Nam trong giai đoạn 1939-1945?</strong></p>', '<p>Việt Nam Giải phóng quân </p>', '<p>Mặt trận Dân chủ Đông Dương</p>', '<p>Việt Nam Quang phục hội</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Việt Nam Giải phóng quân </p>', 209, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Mít tinh biểu tình đưa “dân nguyện” đó là hình thức đấu tranh của phong trào nào?</strong></p>', '<p>Các đáp án đều sai</p>', '<p>Phong trào đón phái viên chính phủ Pháp và toàn quyền mới của xứ Đông Dương </p>', '<p>Đông Dương đại hội</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Phong trào đón phái viên chính phủ Pháp và toàn quyền mới của xứ Đông Dương </p>', 210, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Chọn phương án trả lời đúng nhất: Trong phong trào dân chủ 1936-1939, nhân dân Việt Nam đã:</strong></p>', '<p>Thành lập bộ đội chủ lực</p>', '<p>Phát triển dân quân du kích</p>', '<p>Mít tinh, biểu tình đòi quyền sống </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mít tinh, biểu tình đòi quyền sống </p>', 211, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Tính chất dân chủ của các xô viết ở Nghệ An và Hà Tĩnh (1930-1931) biểu hiện một trong những hoạt động nào sau đây?</strong></p>', '<p>Thành lập chính quyền cách mạng của nhân dân, do nhân dân bầu ra</p>', '<p>Xóa bỏ các giai cấp bóc lột, đưa công nông lên nắm chính quyền </p>', '<p>Thực hiện chính sách bảo đảm quyền lợi về xã hội cho nhân dân</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thành lập chính quyền cách mạng của nhân dân, do nhân dân bầu ra</p>', 212, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Các đại biểu đều nhất trí tán thành quyết định Tổng khởi nghĩa, thông qua 10 sắc lệnh của Việt Minh, lập ủy Ban Dân tộc giải phóng Việt Nam (tức Chính phủ Lâm thời) do Chủ tịch Hồ Chí Minh đứng đầu, đó là quyết định của:</strong></p>', '<p>Đại hội Quốc dân ở Tân Trào (16/8/1945) </p>', '<p>Hội nghị toàn quốc của Đảng họp ở Tân Trào (14/8/1945)</p>', '<p>Hội nghị mở rộng Ban Thường vụ Trung ương (9/8/1945)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đại hội Quốc dân ở Tân Trào (16/8/1945) </p>', 213, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Điều nào không phải chính sách của chính phủ Mặt trận nhân dân Pháp năm 1936, đối với các thuộc địa?</strong></p>', '<p>Trả tự do cho một số tù chính trị</p>', '<p>Giải quyết vấn đề ruộng đất cho nhân dân </p>', '<p>Cho phép xuất bản báo chí</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Giải quyết vấn đề ruộng đất cho nhân dân </p>', 214, 1, 'admin', 4),
(1, 2, 1, '<p>Chọn phương án trả lời đúng nhất: “Sau hai mươi năm ngai vàng bệ ngọc đã biết bao ngậm đắng nuốt cay, từ nay… lấy làm vui được làm dân tự do của một nước độc lập”, câu nói này do ai nói và nói ở đâu, vào thời gian nào?</p>', '<p>Trần Trọng Kim; Việt Nam dân quốc công báo; ngày 30-9-1945</p>', '<p>Bảo Đại; Bản cáo của Hoàng đế Việt Nam thoái vị; ngày 30-8-1945 </p>', '<p>Bảo Đại; Tuyên cáo của Hoàng đế Việt Nam thoái vị; ngày 29-9-1945</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Bảo Đại; Tuyên cáo của Hoàng đế Việt Nam thoái vị; ngày 29-9-1945</p>', 215, 1, 'admin', 4),
(1, 2, 1, '<p>Hội nghị Ban chấp hành Trung ương lần thứ mấy, Đảng ta đã xác định chuẩn bị khởi nghĩa vũ trang là nhiệm vụ trung tâm của Đảng và nhân dân trong kháng chiến chống thực dân Pháp và phát xít Nhật giai đoạn 1930-1945?</p>', '<p>Hội nghị Trung ương lần thứ sáu (11/1939) </p>', '<p>Hội nghị Trung ương lần thứ tám (5/1941)</p>', '<p>Hội nghị Trung ương lần thứ bảy (11/1940)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị Trung ương lần thứ tám (5/1941)</p>', 216, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Hình thức tổ chức và đấu tranh trong giai đoạn 1936-1939 gồm có những hình thức nào sau đây ?</strong></p>', '<p>Công khai, hợp pháp, bí mật</p>', '<p>Công khai, nửa công khai, nửa hợp pháp, bí mật, bất hợp pháp </p>', '<p>Nửa công khai, nửa hợp pháp, bí mật</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Công khai, nửa công khai, nửa hợp pháp, bí mật, bất hợp pháp </p>', 217, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Chọn phương án trả lời đúng nhất: Phát xít Nhật vào Đông Dương làm cho nhân dân Đông Dương phải chịu cảnh “một cổ hai tròng” áp bức bóc lột vào thời gian nào ?</strong></p>', '<p>9/1940 </p>', '<p>8/1942</p>', '<p>8/1940</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>9/1940 </p>', 218, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Phát xít Nhật đầu hàng thì quân Nhật ở Đông Dương cũng bị tê liệt, chính phủ tay sai thân Nhật là Trần Trọng Kim hoang mang cực độ. Đây là thời cơ ngàn năm có một cho nhân dân ta giành độc lập. Chọn phương án trả lời đúng nhất: Đó là hoàn cảnh vô cùng thuận lợi cho:</strong></p>', '<p>Cách mạng Đông Dương hưởng ứng chỉ thị “Nhật-Pháp bắn nhau và hành động của chúng ta”</p>', '<p>Đảng ta đứng đầu là Chủ tịch Hồ Chí Minh kịp thời phát lệnh Tổng khởi nghĩa trong cả nước </p>', '<p>Cách mạng Đông Dương phát động cao trào kháng Nhật cứu nước</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đảng ta đứng đầu là Chủ tịch Hồ Chí Minh kịp thời phát lệnh Tổng khởi nghĩa trong cả nước </p>', 219, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Ở Châu Á, Chính phủ Nhật tuyên bố đầu hàng Đồng minh không điều kiện vào thời gian nào?</strong></p>', '<p>15/8/1945 </p>', '<p>14/8/1945</p>', '<p>13/8/1945</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>15/8/1945 </p>', 220, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Khẩu hiệu đấu tranh của thòi kỳ cách mạng 1936-1939 là gì?</strong></p>', '<p>“Chống phát xít chống chiến tranh đế quốc chống bọn phản động thuộc địa và tay sai, đòi tự do dân chủ, cơm áo hòa bình”</p>', '<p>“Tịch thu ruộng đất của địa chủ chia cho dân cày”. </p>', '<p> “Đánh đổ đế quốc Pháp, Đông Dương hoàn toàn độc lập”</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>“Chống phát xít chống chiến tranh đế quốc chống bọn phản động thuộc địa và tay sai, đòi tự do dân chủ, cơm áo hòa bình”</p>', 221, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Chọn phương án trả lời đúng nhất: Trong cao trào cách mạng giai đoạn 1936-1939 là mục tiêu đấu tranh của nước ta là gì ?</strong></p>', '<p>Độc lập dân tộc</p>', '<p>Đòi tự do, dân chủ, cơm áo, hòa bình </p>', '<p>Ruộng đất cho dân cày</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đòi tự do, dân chủ, cơm áo, hòa bình </p>', 222, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Cuộc vận động dân chủ 1936-1939 ở Việt Nam là phong trào cách mạng vì một trong những lí do nào sau đây?</strong></p>', '<p>Trực tiếp ngăn chặn quân phiệt Nhật Bản tiến vào Đông Dương</p>', '<p>Trực tiếp ngăn chặn quân phiệt Nhật Bản tiến vào Đông Dương</p>', '<p>Nằm trong tiến trình giải phóng dân tộc do Đảng Cộng sản lãnh đạo </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Nằm trong tiến trình giải phóng dân tộc do Đảng Cộng sản lãnh đạo </p>', 223, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Hội nghị nào Đảng ta đã quyết định phát động toàn dân nổi dậy Tổng khởi nghĩa giành chính quyền từ tay phát xít Nhật trước khi quân Đồng Minh vào Đông Dương tháng 8/1945 ?</strong></p>', '<p>Hội nghị toàn quốc của Đảng</p>', '<p>Hội nghị Ban Thường vụ Trung ương Đảng</p>', '<p>Hội nghị quốc dân ở Tân Trào, Tuyên Quang </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị toàn quốc của Đảng</p>', 224, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Hội nghị Ban chấp hành Trung ương lần thứ mấy đã họp và xác định nhiệm vụ trước mắt là chống phát xít, chống chiến tranh đế quốc, chống phản động thuộc địa và tay sai, đòi tự do, dân chủ, cơm áo và hòa bình. Hội nghị đó diễn ra vào ngày tháng năm nào ?</strong></p>', '<p>Hội nghị lần thứ 3 (26/11/1938)</p>', '<p>Hội nghị lần thứ 1 (14/10/1930)</p>', '<p>Hội nghị lần thứ 2 (26/7/1936) </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị lần thứ 2 (26/7/1936) </p>', 225, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Chọn phương án trả lời đúng nhất: “Giờ quyết định cho vận mệnh dân tộc ta đã đến. Toàn quốc đồng bào hãy đứng dậy đem sức ta mà tự giải phóng cho ta… Chúng ta không thể chậm trễ. Tiến lên! Tiến lên! Dưới lá cờ Việt Minh, đồng bào hãy dũng cảm tiến lên!”. Đó là lời kêu gọi của?</strong></p>', '<p>Hội nghị toàn quốc của Đảng họp ở Tân Trào (14/8/1945)</p>', '<p>Hồ Chí Minh, trong thư gửi đồng bào cả nước kêu gọi nổi dậy tổng khởi nghĩa giành chính quyền</p>', '<p> Đại hội Quốc dân ở Tan Trào (16/8/1945) </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hồ Chí Minh, trong thư gửi đồng bào cả nước kêu gọi nổi dậy tổng khởi nghĩa giành chính quyền</p>', 226, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Đại hội lần thứ VII của Quốc tế Cộng sản họp ở đâu, diễn ra vào thời gian nào?</strong></p>', '<p>Quảng Châu (Trung Quốc), tháng 8/1935</p>', '<p> Matxcơva (Liên Xô), tháng 7/1935</p>', '<p>Hồng Kông (Trung Quốc), tháng 3/1935</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p> Matxcơva (Liên Xô), tháng 7/1935</p>', 227, 1, 'admin', 4),
(1, 2, 1, '<p>“Chương trình hành động của Đảng Cộng sản Đông Dương” được công bố vào ngày tháng năm nào ?</p>', '<p>Ngày 15/7/1932</p>', '<p>Ngày 15/6/1932 </p>', '<p>Ngày 15/6/1931</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ngày 15/6/1932 </p>', 228, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Chọn phương án trả lời đúng nhất: Trong phong trào đấu tranh giành quyền dân sinh, dân chủ giai đoạn 1936 -1939, Đảng cộng sản Đông Dương chủ trương tập hợp những lực lượng nào ?</strong></p>', '<p>Mọi lực lượng dân tộc và một bộ phận người Pháp ở Đông Dương</p>', '<p>Công nhân, nông dân, tiểu tư sản, tư sản, tiểu địa chủ, địa chủ </p>', '<p>Công nhân, nông dân và trí thức</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mọi lực lượng dân tộc và một bộ phận người Pháp ở Đông Dương</p>', 229, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Thắng lợi của cuộc khởi nghĩa nào sau đây đã ảnh hưởng nhanh chóng đến nhiều tỉnh và thành phố khác, cổ vũ mạnh mẽ phong trào cả nước, làm cho chính quyền tay sai của Nhật ở nhiều nơi thêm hoảng hốt, tạo điều kiện thuận lợi lớn cho quá trình tổng khởi nghĩa.</strong></p>', '<p>Sài Gòn</p>', '<p>Huế - Đà Nẵng </p>', '<p>Hà Nội</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hà Nội</p>', 230, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Chọn phương án trả lời đúng nhất: Lựa chọn các cụm từ sau đây: Hà Nội; Quảng trường Ba Đình; Chính phủ Lâm thời; Việt Nam Cộng hòa Dân chủ; Cả nước; Việt Nam Dân chủ Cộng hòa; Tuyên ngôn Độc lập và nối với đoạn trích sau đây: “Ngày 2/9/1945 tại ….…. trước hàng chục vạn đồng bào ….…. Chủ tịch Hồ Chí Minh thay mặt ….….trịnh trọng đọc bản ….…. tuyên bố với quốc dân và thế giới rằng ….….đã ra đời”</strong></p>', '<p>Quảng trường Ba Đình; cả nước; Chính phủ Lâm thời; Tuyên ngôn Độc lập; Việt Nam Cộng hòa Dân chủ</p>', '<p>Quảng trường Ba Đình; Hà Nội; Chính phủ Lâm thời; Tuyên ngôn Độc lập; Việt Nam Dân chủ Cộng hòa </p>', '<p>Hà Nội; cả nước; Chính phủ Lâm thời; Tuyên ngôn Độc lập; Việt Nam Dân chủ Cộng hòa</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Quảng trường Ba Đình; Hà Nội; Chính phủ Lâm thời; Tuyên ngôn Độc lập; Việt Nam Dân chủ Cộng hòa </p>', 231, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Chọn phương án trả lời đúng nhất: Đối tượng đấu tranh của cách mạng Đông Dương trong giai đoạn 1936-1939 là ai ?</strong></p>', '<p>Bọn phản động thuộc địa và tay sai</p>', '<p>Đế quốc và phong kiến </p>', '<p>Bọn đế quốc xâm lược</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Bọn phản động thuộc địa và tay sai</p>', 232, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Chọn phương án trả lời đúng nhất: Trong phong trào dân chủ 1936-1939, nhân dân Việt Nam đã:</strong></p>', '<p>Phát triển dân quân du kích</p>', '<p>Thành lập bộ đội chủ lực</p>', '<p>Mít tinh, biểu tình đòi quyền sống</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mít tinh, biểu tình đòi quyền sống</p>', 233, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Đảng ta chuyển hướng chỉ đạo sách lược trong thời kỳ 1936 - 1939 dựa trên cơ sơ nào?</strong></p>', '<p>Đảng cộng sản Đông Dương phục hồi và hoạt động mạnh</p>', '<p>Tình hình thế giới, trong nước có sự thay đổi và tiếp thu đường lối của Quốc tế Cộng sản</p>', '<p>Tình hình thực tiễn của Việt Nam</p>', '<p><strong>-----------------------------Không có câu trả lời-------------------------------</strong></p>', '<p>Tình hình thế giới, trong nước có sự thay đổi và tiếp thu đường lối của Quốc tế Cộng sản</p>', 234, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Đại hội lần thứ V của Đảng (3/1982) đã xác định trong chặng đường đầu tiên của thời kỳ quá độ ở nước ta phải lấy lĩnh vực nào làm mặt trận hàng đầu?</strong></p>', '<p>Chăn nuôi, dệt may xuất khẩu</p>', '<p>Thủ công mỹ nghệ xuất khẩu</p>', '<p>Nông nghiệp</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Nông nghiệp</p>', 235, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Nền kinh tế của ta sau 5 năm vẫn còn mất cân đối, sản xuất phát triển chậm, thu nhập quốc dân và năng suất lao động thấp, đời sống nhân dân còn gặp nhiều khó khăn. Đó là những hạn chế của thời kỳ nào ?</strong></p>', '<p>Thực hiện kế hoạch 5 năm lần nhất (1960-1965)</p>', '<p>Thời kỳ khôi phục kinh tế miền Bắc (1958-1960)</p>', '<p>Thực hiện kế hoạch 5 năm (1976-1980)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thực hiện kế hoạch 5 năm (1976-1980)</p>', 236, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Chiến lược “Việt Nam hóa chiến tranh” của Nichxơn có gì giống so với chiến lược “Chiến tranh cục bộ”?</strong></p>', '<p>Về mục đích của chiến tranh</p>', '<p>Về vai trò của “ấp chiến lược”</p>', '<p>Về vai trò của quân đội Mỹ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Về mục đích của chiến tranh</p>', 237, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Sau năm 1975, Quân dân cả nước đã đấu tranh thắng lợi làm thất bại âm mưu, hoạt động phá hoại của lực lượng phản động vũ trang ở Tây Nguyên, lực lượng lưu vong vũ trang xâm nhập về nước, bảo vệ vững chắc mọi thành quả của cách mạng. Tổ chức phản động đó tên là gì?</strong></p>', '<p>FULRO</p>', '<p>Việt Quốc</p>', '<p>Việt Cách</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>FULRO</p>', 238, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Phương hướng, nhiệm vụ của kế hoạch phát triển về kinh tế (1976-1980) nhằm thực hiện mục tiêu cơ bản và cấp bách nào sau đây?</strong></p>', '<p>Đảm bảo lương thực - thực phẩm, hàng tiêu dùng và xuất khẩu</p>', '<p>Bảo đảm nhu cầu của đời sống nhân dân, tích luỹ để xây dựng cơ sở vật chất-kỹ thuật của chủ nghĩa xã hội</p>', '<p>Đảm bảo lương thực, thực phẩm, hàng tiêu dùng và xuất khẩu</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Bảo đảm nhu cầu của đời sống nhân dân, tích luỹ để xây dựng cơ sở vật chất-kỹ thuật của chủ nghĩa xã hội</p>', 239, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Thắng lợi lớn nhất của quân dân miền Bắc trong trận “Điện Biên Phủ trên không” cuối năm 1972 là gì ?</strong></p>', '<p>Đánh bại âm mưu ngăn chặn sự chi viện của miền Bắc cho miền Nam, Lào, Campuchia</p>', '<p>Buộc Mỹ kí kết Hiệp định Paris (1973) về chấm dứt chiến tranh lập lại hòa bình ở Việt Nam</p>', '<p>Buộc Mỹ phải tuyên bố ngừng hẳn các hoạt động chống phá miền Bắc</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Buộc Mỹ kí kết Hiệp định Paris (1973) về chấm dứt chiến tranh lập lại hòa bình ở Việt Nam</p>', 240, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Với khí thế “thần tốc, táo bạo, bất ngờ, chắc thắng”. Đó là tinh thần và khí thế ra quân của dân tộc ta trong chiến dịch nào ?</strong></p>', '<p>Chiến dịch Điện Biên Phủ (7/5/1954)</p>', '<p>Chiến dịch Huế-Đà Nẵng (21-29/3/1975)</p>', '<p>Chiến dịch Hồ Chí Minh (26-30/4/1975)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chiến dịch Hồ Chí Minh (26-30/4/1975)</p>', 241, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Trong các đặc điểm lớn mà Đại hội Đảng lần thứ IV đã nêu ra thì đặc điểm lớn nhất, quy định nội dung, hình thức, bước đi của cách mạng xã hội chủ nghĩa ở nước ta trong giai đoạn mới là đặc điểm nào sau đây?</strong></p>', '<p>Hậu quả của chiến tranh và tàn dư của chủ nghĩa thực dân mới gây ra</p>', '<p>Cuộc đấu tranh “ai thắng ai” giữa thế lực cách mạng và thế lực phản cách mạng trên thế giới còn gay go, quyết liệt</p>', '<p>Sản xuất nhỏ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Sản xuất nhỏ</p>', 242, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Tư tưởng chỉ đạo đối với cuộc đấu tranh ở miền Nam được thể hiện trong các Nghị quyết Hội nghị Trung ương lần thứ 11 (3/1965) và lần thứ 12 (12/1965) là tư tưởng nào ?</strong></p>', '<p>Kiên quyết tiến công và nổi dậy buộc đối phương phải ngồi vào bàn đàm phán với ta</p>', '<p>Giữ vững và phát triển thế tiến công, kiên quyết tiến công và liên tục tiến công</p>', '<p>Kết hợp tiến công quân sự với nổi dậy của quần chúng, đánh bại âm mưu Việt Nam hoá chiến tranh của địch</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Giữ vững và phát triển thế tiến công, kiên quyết tiến công và liên tục tiến công</p>', 243, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Lúc 11 giờ 30 phút ngày 30/4/1975, diễn ra sự kiện cơ bản nào ở Sài Gòn ?</strong></p>', '<p>Lá cờ chiến thắng đã được cắm trên dinh Độc Lập</p>', '<p>Chiến dịch Hồ Chí Minh toàn thắng</p>', '<p>Xe tăng của ta tiến vào dinh Độc Lập</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lá cờ chiến thắng đã được cắm trên dinh Độc Lập</p>', 244, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Một trong những thành tựu nổi bật, có ý nghĩa to lớn đối với cách mạng Việt Nam trong giai đoạn 1975 đến năm 1981 là thành tựu nào sau đây?</strong></p>', '<p>Đưa mặt trận nông nghiệp lên mặt trận hàng đầu</p>', '<p>Nước nhà đã được thống nhất và cùng bước vào thời kỳ quá độ đi lên xây dựng chủ nghĩa xã hội</p>', '<p>Hoàn thành thống nhất nước nhà về mặt nhà nước</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hoàn thành thống nhất nước nhà về mặt nhà nước</p>', 245, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Sự kiện nào là quan trọng nhất trong quá trình thống nhất đất nước về mặt Nhà nước sau 1975 ?</strong></p>', '<p>Tổng tuyển cử bầu Quốc hội chung trong cả nước (25/4/1975)</p>', '<p>Quốc hội khóa V của nước Việt Nam thống nhất kỳ họp đầu tiên (24/6 - 2/7/1976)</p>', '<p>Hội nghị Hiệp thương của đại biểu 2 miền Bắc Nam tại Sài Gòn (11/1975)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Tổng tuyển cử bầu Quốc hội chung trong cả nước (25/4/1975)</p>', 246, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Trong giai đoạn chống chiến tranh phá hoại (1965 - 1968 ), lý do nào là cơ bản nhất miền Bắc đẩy mạnh phát triển kinh tế địa phương, nhất là chú trọng phát triển nông nghiệp ?</strong></p>', '<p>Đảm bảo đời sống cho nhân dân địa phương</p>', '<p>Miền Bắc phải thực hiện đầy đủ nghĩa vụ của hậu phương lớn, chi viện theo yêu cầu về sức người sức của cho miền Nam</p>', '<p>Hạn chế được sự tàn phá của chiến tranh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Miền Bắc phải thực hiện đầy đủ nghĩa vụ của hậu phương lớn, chi viện theo yêu cầu về sức người sức của cho miền Nam</p>', 247, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Thất bại trong chiến lược nào buộc đế quốc Mỹ phải ngồi vào bàn đàm phán với ta ở Hội nghị Paris ?</strong></p>', '<p>Trong chiến lược “Chiến tranh đặc biệt”</p>', '<p>Trong chiến lược “Chiến tranh cục bộ”</p>', '<p>Trong chiến lược “Việt Nam hóa chiến tranh - Đông Dương hóa chiến tranh”</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Trong chiến lược “Chiến tranh cục bộ”</p>', 248, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Đại hội Đảng toàn quốc lần thứ IV (12/1976) có những quyết định quan trọng. Điều nào sau đây chưa phải là quyết định của Đại hội lần này ?</strong></p>', '<p>Thực hiện đường lối đổi mới đất nước</p>', '<p>Đề ra đường lối xây dựng CNXH trong cả nước</p>', '<p>Đổi tên Đảng Lao động Việt Nam thành Đảng Cộng sản Việt Nam</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Thực hiện đường lối đổi mới đất nước</p>', 249, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Thắng lợi vĩ đại của cuộc kháng chiến chống Mỹ, giải phóng miền Nam đã kết thúc .... năm chiến đấu chống đế quốc Mỹ xâm lược, ..... năm chiến tranh cách mạng, ....năm chống đế quốc xâm lược, quét sạch quân xâm lược, giành lại nền độc lập, thống nhất, toàn vẹn lãnh thổ cho đất nước. Chọn phương án đúng nhất điền vào chổ trống.</strong></p>', '<p>9;21;30</p>', '<p>1 thế kỉ;21;100</p>', '<p>21;30;117</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>21;30;117</p>', 250, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Chọn phương án đúng nhất điền vào chổ trống: Đại hội toàn quốc lần thứ IV của Đảng (12-1976) đã khẳng định: “Năm tháng sẽ trôi qua, nhưng thắng lợi của nhân dân ta trong sự nghiệp ..........., cứu nước mãi mãi được ghi vào lịch sử dân tộc ta như một trong những trang chói lọi nhất, một biểu tượng sáng ngời về sự toàn thắng của chủ nghĩa anh hùng cách mạng và trí tuệ con người, và đi vào lịch sử thế giới như một chiến công vĩ đại của thế kỷ XX, một sự kiện có tầm quan trọng quốc tế to lớn và có tính thời đại sâu sắc”</strong></p>', '<p>Kháng chiến chống Pháp và chống Mỹ</p>', '<p>Kháng chiến chống Mỹ</p>', '<p>Giải phóng dân tộc</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Kháng chiến chống Mỹ</p>', 251, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Đại hội Đảng toàn quốc lần thứ V (3/1982) có những quyết định quan trọng. Điều nào sau đây chưa phải là quyết định của Đại hội Đảng lần này ?</strong></p>', '<p>Tiếp tục đường lối xây dựng CNXH trong phạm vi cả nước</p>', '<p>Cả nước tiến nhanh, tiến mạnh tiến vững chắc lên chủ nghĩa xã hội</p>', '<p>Thời kỳ quá độ lên CNXH ở nước ta phải trải qua nhiều chặng đường</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Cả nước tiến nhanh, tiến mạnh tiến vững chắc lên chủ nghĩa xã hội</p>', 252, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Chủ trương đổi mới công tác kế hoạch hoá và cải tiến một cách cơ bản chính sách kinh tế để làm cho sản xuất “bung ra” được nêu lên ở Hội nghị nào của Ban chấp hành Trung ương Đảng khoá IV ?</strong></p>', '<p>Hội nghị lần thứ năm (12/1978) </p>', '<p>Hội nghị lần thứ bảy (3/1980) </p>', '<p>Hội nghị lần thứ sáu (8/1979)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị lần thứ sáu (8/1979)</p>', 253, 1, 'admin', 4),
(1, 3, 1, '<p><strong>“…….…., …….... ngay,……….. nữa. Đó là khẩu hiệu cửa ta ngày nay, đó là cách thiết thực để ta giữ vững quyền tự do độc lập”. Dấu “…..” trong lời kêu gọi của Hồ Chủ tịch là gì ?</strong></p>', '<p>Không bỏ hoang ruộng đất, tăng gia sản xuất, tăng gia sản xuất</p>', '<p>Thực hành tiết kiệm, tăng gia sản xuất, tăng gia sản xuất</p>', '<p>Tăng gia sản xuất, tăng gia sản xuất, tăng gia sản xuất</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Tăng gia sản xuất, tăng gia sản xuất, tăng gia sản xuất</p>', 254, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Trong các nội dung của Hiệp định Paris, nội dung nào thể hiện thắng lợi lớn nhất của nhân dân ta ?</strong></p>', '<p>Hoa Kì và các nước cam kết tôn trọng độc lập, chủ quyền, thống nhất và toàn vẹn lãnh thổ của Việt Nam</p>', '<p>Các bên để nhân dân miền Nam tự quyết định tương lai của họ qua cuộc tổng tuyển cử tự do</p>', '<p>Hoa Kì và các nước cam kết tôn trọng độc lập, chủ quyền, thống nhất và toàn vẹn lãnh thổ của các nước Đông Dương</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hoa Kì và các nước cam kết tôn trọng độc lập, chủ quyền, thống nhất và toàn vẹn lãnh thổ của Việt Nam</p>', 255, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Trong chiến lược “Chiến tranh cục bộ” của đế quốc Mỹ ở Miền Nam Việt Nam thì lực lượng nào giữ vai trò quan trọng nhất ?</strong></p>', '<p>Quân đội Mỹ và quân đồng minh</p>', '<p>Quân đội Mỹ, quân đồng minh và quân đội Sài Gòn</p>', '<p>Quân đội Sài Gòn và quân đồng minh</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Quân đội Mỹ, quân đồng minh và quân đội Sài Gòn</p>', 256, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Câu nói:“Chiến tranh có thể kéo dài năm năm, 10 năm, 20 năm hoặc lâu hơn nữa.Hà Nội, Hải phòng và một số thành phố, xí nghiệp có thể bị tàn phá, song nhân dân Việt Nam quyết không sợ! Không có gì quý hơn độc lập, tự do” của Chủ tịch Hồ Chí Minh viết thời gian nào, trong tác phẩm, bài viết hoặc bài nói nào ?</strong></p>', '<p>Tác phẩm “Di Chúc”, ngày 10/5/1969</p>', '<p>Bài nói “Lời kêu gọi”, ngày 17/7/1966</p>', '<p>Tác phẩm “Kháng chiến thắng lợi”, ngày 20/5/1968</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Bài nói “Lời kêu gọi”, ngày 17/7/1966</p>', 257, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Đại hội IV của Đảng (12/1976) đưa ra chiến lược đẩy mạnh công nghiệp hóa xã hội chủ nghĩa, đã ưu tiên phát triển một cách hợp lý lĩnh vực nào sau đây?</strong></p>', '<p>Nông nghiệp</p>', '<p>Sản xuất nội địa và hàng xuất khẩu</p>', '<p>Công nghiệp nặng</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Công nghiệp nặng</p>', 258, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Hội nghị Hiệp thương chính trị thống nhất đất nước tại Sài Gòn đã nhất trí hoàn toàn các vấn đề gì ?</strong></p>', '<p>Lấy tên nước là nước Cộng hòa xã hội chủ nghĩa Việt Nam</p>', '<p>Quốc kỳ là cờ đỏ sao vàng, Quốc ca là bài Tiến quân ca</p>', '<p>Chủ trương, biện pháp nhằm thống nhất đất nước về mặt Nhà nước</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chủ trương, biện pháp nhằm thống nhất đất nước về mặt Nhà nước</p>', 259, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Chọn phương án trả lời đúng nhất khi nói về các bước đột phá chiến lược của Đại hội Đảng toàn quốc lần IV và Đại hội Đảng toàn quốc lần V đã phản ánh sự phát triển nhận thức của Đảng ta để hình thành đường lối đổi mới năm 1986.</strong></p>', '<p>8/1979; 9/1985; 3/1986</p>', '<p>8/1979; 6/1985; 8/1986</p>', '<p>8/1978; 6/1984; 8/1986</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>8/1979; 6/1985; 8/1986</p>', 260, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Do yêu cầu đẩy mạnh sản xuất, bảo đảm đời sống và nâng cao hiệu quả kinh tế, Ban Bí thư Trung ương Đảng khóa IV đã ban hành Chỉ thị “Cải tiến công tác khoán, mở rộng khoán sản phẩm đến nhóm lao động và người lao động trong hợp tác xã nông nghiệp”. Anh/chị hãy cho biết, đó là Chỉ thị số bao nhiêu, ban hành ngày, tháng, năm nào?</strong></p>', '<p>Chỉ thị số 100-CT/TW, ngày 13/01/1981</p>', '<p>Chỉ thị số 99-CT/TW, ngày 13/01/1981</p>', '<p>Chỉ thị số 101-CT/TW, ngày 13/01/1981</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Chỉ thị số 100-CT/TW, ngày 13/01/1981</p>', 261, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Tình trạng khủng hoảng trầm trọng về kinh tế - xã hội của đất nước trong thời kỳ 1980 - 1985 được biểu hiện ở nhiều mặt. Điểm nào không đúng với thực tế nói trên ?</strong></p>', '<p>Đời sống nhân dân còn khó khăn, chưa ổn định</p>', '<p>Hàng tiêu dùng còn khan hiếm</p>', '<p>Vấn đề lương thực chưa được giải quyết</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hàng tiêu dùng còn khan hiếm</p>', 262, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Từ sau 30/4/1975, để bảo vệ an toàn lãnh thổ của Tổ quốc, Việt Nam phải đối đầu trực tiếp với những lực lượng nào?</strong></p>', '<p>Tập đoàn Pôn Pốt và cuộc tiến công biên giới phía Bắc của quân Trung Quốc</p>', '<p>Tập đoàn Pôn Pốt (Cam-pu-chia)</p>', '<p>Quân xâm lược Mỹ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Tập đoàn Pôn Pốt (Cam-pu-chia)</p>', 263, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Thắng lợi quan trọng của Hiệp định Paris đối với sự nghiệp kháng chiến chống Mỹ cứu nước là gì ?</strong></p>', '<p>Mỹ phải công nhận các quyền dân tộc cơ bản của ta</p>', '<p>Đánh cho Mỹ cút, đánh cho Ngụy nhào</p>', '<p>Tạo thời cơ thuận lợi để nhân dân ta đánh cho Ngụy nhào</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Tạo thời cơ thuận lợi để nhân dân ta đánh cho Ngụy nhào</p>', 264, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Hội nghị nào của Đảng quyết định mở cuộc Tổng tiến công và nổi dậy giải phóng Sài Gòn trước tháng 5/1975 ?</strong></p>', '<p>Hội nghị Bộ Chính trị (10/1974)</p>', '<p>Hội nghị Trung ương 21 (7/1973)</p>', '<p>Hội nghị Bộ Chính trị (3/1975)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị Bộ Chính trị (3/1975)</p>', 265, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Trong thời kỳ trước đổi mới (1975-1985), đặc trưng nào là quan trọng nhất của nền kinh tế xã hội chủ nghĩa ?</strong></p>', '<p>Sản xuất hàng hóa</p>', '<p>Kế hoạch hóa</p>', '<p>Cơ chế thị trường</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Kế hoạch hóa</p>', 266, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Theo Lời kêu gọi của Hồ Chí Minh, quân và dân miền Bắc đã dấy lên các cao trào chống Mỹ, cứu nước, vừa sản xuất, vừa chiến đấu, với niềm tin và quyết tâm cao độ. Thanh niên có phong trào mang tên gì ?</strong></p>', '<p>Tay búa, tay súng</p>', '<p>Ba sẵn sàng</p>', '<p>Xung kích chiến đấu</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Ba sẵn sàng</p>', 267, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Trong giai đoạn 1975-1986, Đảng Cộng sản Việt Nam đã coi nội dung nào là “bản chất” của nền chuyên chính vô sản?</strong></p>', '<p>Xây dựng chế độ làm chủ tập thể xã hội chủ nghĩa</p>', '<p>Mở rộng các hình thức tổ chức theo nghề nghiệp, nhu cầu của nhân dân</p>', '<p>Đổi mới hình thức và phương thức hoạt động cho phù hợp với điều kiện mới</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Xây dựng chế độ làm chủ tập thể xã hội chủ nghĩa</p>', 268, 1, 'admin', 4),
(1, 3, 1, '<p><strong>Quốc hội thống nhất cả nước là Quốc hội khóa mấy ?</strong></p>', '<p>Khóa VI</p>', '<p>Khóa IV</p>', '<p>Khóa V</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Khóa VI</p>', 269, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Hội nghị Ban chấp hành Trung ương Đảng họp vào ngày 26/7/1936 đã chủ trương thành lập Mặt trận mang tên gì ?</strong></p>', '<p>Mặt trận Dân chủ Đông Dương</p>', '<p>Mặt trận nhân dân phản đế Đông Dương</p>', '<p>Mặt trận Dân tộc thống nhất phản đế Đông Dương</p>', '<p>Mặt trận Liên Việt</p>', '<p>Mặt trận nhân dân phản đế Đông Dương</p>', 270, 1, 'admin', 4),
(1, 2, 1, '<p><strong>Vì sao nói phong trào cách mạng 1930 - 1931 là bước phát triển mới của cách mạng Việt Nam?</strong></p>', '<p>Lần đầu tiên đấu tranh có quy mô trên cả nước, do Đảng Cộng sản Việt Nam lãnh đạo, có tính thống nhất cao, công – nông cùng đoàn kết đấu tranh quyết liệt chống đế quốc phong kiến ...</p>', '<p>Lần đầu tiên trong cuộc đấu tranh chống đế quốc phong kiến, công nông đã giành được chính quyền ở trên toàn Nghệ - Tĩnh</p>', '<p>Lần đầu tiên phong trào dân tộc do Đảng Cộng sản lãnh đạo đã giành được thắng lợi, gây tiếng vang lớn, có ảnh hưởng mạnh mẽ đến đấu tranh của các dân tộc phương đông</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Lần đầu tiên đấu tranh có quy mô trên cả nước, do Đảng Cộng sản Việt Nam lãnh đạo, có tính thống nhất cao, công – nông cùng đoàn kết đấu tranh quyết liệt chống đế quốc phong kiến ...</p>', 271, 1, 'admin', 4),
(1, 1, 1, '<p><strong>Trong Cohen-Sutherland ta sử dụng 4 bit nhị phân gọi là mã vùng để gán cho mỗi vùng. Một vùng có mã là 1001 sẽ nằm ở đâu so với cửa sổ?</strong></p>', '<p>Phía trên, bên phải</p>', '<p>Phía dưới, bên phải</p>', '<p>Phía trên, bên trái</p>', '<p>Phía dưới, bên trái</p>', '<p>Phía dưới, bên trái</p>', 272, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Phương trình đường thẳng đi qua 2 điểm P(x1, y1) và Q(x2, y2) là:</strong></p>', '<p>(y-y1)/( x-x1) = (y1-y2)/(x1-x2)</p>', '<p>(y2-y1)/( x2-x1) = (y2-y1)/(x2-x1)</p>', '<p> (y1-y)/( x1-x) = (y2-y1)/(x2-x1)</p>', '<p>(y-y1)/( x-x1) = (y2-y1)/(x2-x1)</p>', '<p>(y-y1)/( x-x1) = (y2-y1)/(x2-x1)</p>', 273, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Cho điểm P(3, -2) sau khi biến đổi qua phép tịnh tiến được P\'(-1, 2). Xác định vectơ tịnh tiến:</strong></p>', '<p>(4, 4)</p>', '<p>(-4, 4) </p>', '<p>(-4, -4)</p>', '<p>(4, -4)</p>', '<p>(-4, 4) </p>', 274, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Đoạn thẳng đi qua điểm A(4, 2) và B(2, 0) giao với đoạn thẳng đi qua C(0, 4) và D(4, 0) tại:</strong></p>', '<p>(2,2)</p>', '<p>(1,3)</p>', '<p>(3,1)</p>', '<p>Không giao</p>', '<p>(3,1)</p>', 275, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Mã vùng 4-bit của điểm B là (0110), theo giải thuật Cohen Sutherland thì điểm này có khả năng cắt các cạnh của cửa sổ cắt tỉa tại:</strong></p>', '<p>x = xmin và y = ymin</p>', '<p>x = xmax và y = ymax</p>', '<p>x = xmin và y = ymax</p>', '<p>x = xmax và y = ymin</p>', '<p>x = xmax và y = ymax</p>', 276, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Trong Cohen-Sutherland cho cửa sổ xén tỉa có góc trái dưới (1, -2) và góc phải trên (6, 8), mã vùng 4-bit của điểm Q(-1, -4) là:</strong></p>', '<p>0000</p>', '<p>0101</p>', '<p>1001</p>', '<p>0100</p>', '<p>1001</p>', 277, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Trong mặt phẳng có đoạn thẳng CD có toạ độ là C(2,-6) và D(18,8), quay đoạn thẳng một góc -90<sup>0</sup> sau đó phóng to lên gấp 2 lần. Toạ độ C’ và D’ cuối cùng thu được là:</strong></p>', '<p>C’(4, -12) và D’(36, 16)</p>', '<p>C’(-4, 12) và D’(36, -16)</p>', '<p>C’(12, 4) và D’(-16, 36)</p>', '<p>C’(-12, -4) và D’(16, -36)</p>', '<p>C’(-12, -4) và D’(16, -36)</p>', 278, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Cho cửa sổ xén tỉa có góc trái dưới (1,-2) và góc phải trên (6,8), mã vùng 4-bit của điểm A(9,-3) là:</strong></p>', '<p>0110 </p>', '<p>0010</p>', '<p>1010</p>', '<p>1000</p>', '<p>1010</p>', 279, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Giải thuật sau là giải thuật nào?</strong></p><p><strong>Funtion(int X[], int Y[])</strong></p><p><strong>{  </strong></p><p><strong>     for(int i=0;i<=6;i++)</strong></p><p><strong>     line(X[i],Y[i],X[i+1],Y[i+1]);</strong></p><p><strong>     line(X[i+1],Y[i+1],X[0],Y[0]);</strong></p><p><strong>}</strong></p>', '<p>Giải thuật vẽ đường bao đa giác với số đỉnh là 6</p>', '<p>Giải thuật vẽ đường bao đa giác với số đỉnh là 8</p>', '<p>Giải thuật vẽ đường bao đa giác với số đỉnh là 7</p>', '<p>Giải thuật tô đa giác với số đỉnh là 7</p>', '<p>Giải thuật vẽ đường bao đa giác với số đỉnh là 8</p>', 280, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Điểm P(2,-5) sau khi biến đổi qua phép phóng to lên gấp rưỡi lần thì toạ độ P\' là:</strong></p>', '<p>(3.5, -6.5)</p>', '<p>(3, -5)</p>', '<p>(2, -5)</p>', '<p>(3, -7.5)</p>', '<p>(3, -7.5)</p>', 281, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Cho đoạn thẳng AB có toạ độ là A(1,-1) và B(-2,6) tăng y lên gấp 3 lần sau đó giảm x, y một nửa thì thu được A\' và B\' là:</strong></p>', '<p>A’(1.5,-3) và B’(-1,18)</p>', '<p>A’(3,-0.5) và B’(-6,3)</p>', '<p>A’(1.5,-0.5) và B’(-3,3)</p>', '<p>A’(0.5,-1.5) và B’(-1,9) </p>', '<p>A’(0.5,-1.5) và B’(-1,9) </p>', 282, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Trong hệ tọa độ thiết bị, giá trị tọa độ là:</strong></p>', '<p>Số tự nhiên</p>', '<p>Số nguyên, bị giới hạn bởi độ phân giải của thiết bị</p>', '<p>Số thực</p>', '<p>Số nguyên dương, bị giới hạn bởi độ phân giải của thiết bị </p>', '<p>Số nguyên, bị giới hạn bởi độ phân giải của thiết bị</p>', 283, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Trong các phát biểu sau, phát biểu nào đúng cho phép biến đổi tỷ lệ:</strong></p>', '<p>Đối tượng sẽ được dịch chuyển xa gốc tọa độ hơn khi phép biến đổi thu nhỏ đối tượng.</p>', '<p>Tâm tỉ lệ là điểm không bị thay đổi qua phép biến đổi tỉ lệ.</p>', '<p>Khi phép biến đổi tỉ lệ thu nhỏ đối tượng, đối tượng sẽ được dời về gần gốc tọa độ hơn. Khi phóng lớn đối tượng, đối tượng sẽ được dịch chuyển xa gốc tọa độ hơn.</p>', '<p>Đối tượng sẽ được dời về gần gốc tọa độ hơn khi phép biến đổi phóng lớn đối tượng.</p>', '<p>Khi phép biến đổi tỉ lệ thu nhỏ đối tượng, đối tượng sẽ được dời về gần gốc tọa độ hơn. Khi phóng lớn đối tượng, đối tượng sẽ được dịch chuyển xa gốc tọa độ hơn.</p>', 284, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Trong cửa sổ đồ họa cho hàm sau: line(getmaxx(),0,0,getmaxy()); là vẽ một đoạn thẳng có 2 điểm cuối là:</strong></p>', '<p>Ở giữa bên dưới và góc trái trên của màn hình</p>', '<p>Ở giữa bên trên và góc phải dưới màn hình</p>', '<p>Góc trái dưới và góc phải trên của màn hình</p>', '<p>Góc trái trên và góc phải dưới của màn hình</p>', '<p>Góc trái dưới và góc phải trên của màn hình</p>', 285, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Để chọn màu nét vẽ sử dụng lệnh nào sau đây?</strong></p>', '<p>getbkcolor(int color)</p>', '<p>getcolor(int color)</p>', '<p>setcolor(int color)</p>', '<p>setbkcolor(int color)</p>', '<p>setcolor(int color)</p>', 286, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Trong đồ họa Dev_C, để thiết lập các kiểu đường nét hiển thị ta sử dụng lệnh:</strong></p>', '<p>setlinestyle</p>', '<p>setfillstyle</p>', '<p>settextstyle</p>', '<p>setpalette</p>', '<p>setlinestyle</p>', 287, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Một phép quay đòi hỏi phải có:</strong></p>', '<p>Tâm quay</p>', '<p>Tâm quay, góc quay</p>', '<p>Góc quay</p>', '<p>Tâm quay, góc quay, hướng quay</p>', '<p>Tâm quay, góc quay</p>', 288, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Cho cửa sổ cắt tỉa hình chữ nhật có góc trái dưới L(-3,1), góc phải trên R(2,6). Dùng giải thuật Cohen Sutherland tìm hạng mục cắt tỉa của MN với M(-4,2) và N(-2,3).</strong></p>', '<p>(2, 3) và (-1,3)</p>', '<p>(-3,2.5) và (2,5)</p>', '<p>(-4,2.5) và (2,-5)</p>', '<p>(-3, 7/3) và (-2,5)</p>', '<p>(-3,2.5) và (2,5)</p>', 289, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Trong mặt phẳng có điểm A(-1, 5), quay A quanh gốc toạ độ 1 góc 90<sup>0</sup> ta được điểm A\':</strong></p>', '<p>(1, -5)</p>', '<p>(-5, -1)</p>', '<p>(1, 5)</p>', '<p>(-5, 1)</p>', '<p>(-5, -1)</p>', 290, 2, 'admin', 4),
(1, 1, 1, '<p><strong>Ngoài thông tin về tọa độ, điểm còn có thuộc tính là:</strong></p>', '<p>Vị trí</p>', '<p>Độ lớn</p>', '<p>Màu sắc</p>', '<p>Kích thước</p>', '<p>Màu sắc</p>', 291, 2, 'admin', 4),
(1, 1, 1, '<p><strong>A server is a powerful computer … data … by all the clients in the network</strong></p>', '<p>Stored – sharing</p>', '<p>Store – share</p>', '<p>Storing – shared</p>', '<p>Storing – share</p>', '<p>Storing – shared</p>', 292, 3, 'admin', 4),
(5, 1, 1, '<p>Thiết kế ngược là gì ?</p>', '<p>Quy trình thiết kế</p>', '<p>Thiết kế ra sản phẩm</p>', '<p>Thiết kế</p>', '<p>Thiết kế</p>', '<p>Quy trình thiết kế</p>', 293, 3, 'AnhPhuc', 4),
(1, 1, 1, '<p>Sử dụng thiết kế ngược để thiết kế sản phẩm khi ?</p>', '<p>Không xác định được quy luật tạo hình</p>', '<p>Có kích thước lớn</p>', '<p>Có xác định quy luật tạo hình</p>', '<p>Có kích thước nhỏ</p>', '<p>Không xác định được quy luật tạo hình</p>', 294, 3, 'AnhPhuc', 4),
(5, 1, 1, '<p>Quy trình thiết kế sản phẩm truyền thống thiết kế thuận “là ?</p>', '<p>Nhu cầu - ý tưởng thiết kế tạo mẫu thử và kiểm tra sản phẩm</p>', '<p>Nhu cầu - ý tưởng thiết kế tạo mẫu thử và kiểm tra sản phẩm</p>', '<p>Nhu cầu - ý tưởng thiết kế tạo mẫu thử và kiểm tra sản phẩm</p>', '<p>Nhu cầu - ý tưởng thiết kế tạo mẫu thử và kiểm tra sản phẩm</p>', '<p>Nhu cầu - ý tưởng thiết kế tạo mẫu thử và kiểm tra sản phẩm</p>', 295, 3, 'AnhPhuc', 4),
(5, 11, 1, '<p>Công nghệ thiết kế ngược liên quan đến ?</p>', '<p>Quét hình, số hóa vật thể thành dạng điểm, đường và bề mặt 3D</p>', '<p>Quét hình, số hóa vật thể thành dạng điểm, đường và bề mặt 3D</p>', '<p>Quét hình, số hóa vật thể thành dạng điểm, đường và bề mặt 3D</p>', '<p>Quét hình, số hóa vật thể thành dạng điểm, đường và bề mặt 3D</p>', '<p>Quét hình, số hóa vật thể thành dạng điểm, đường và bề mặt 3D</p>', 296, 3, 'AnhPhuc', 4),
(1, 1, 1, '<p><strong>Câu nào sau đây là sai khi nói về bộ nhớ dài hạn?</strong></p>', '<p>Dùng để lưu trữ các thông tin của con người.</p>', '<p>Dùng để lưu trữ các thông tin của con người.</p>', '<p>Dùng để lưu trữ các thông tin của con người.</p>', '<p>Dùng để lưu trữ các thông tin của con người.</p>', '<p>Dùng để lưu trữ các thông tin của con người.</p>', 297, 4, 'admin', 4),
(1, 4, 1, '<p><strong>Trong 5 năm (1996-2006) tổng sản phẩm trong nước tăng bình quân hàng trăm là bao nhiêu % ?</strong></p>', '<p>6</p>', '<p>8</p>', '<p>5</p>', '<p>7</p>', '<p>7</p>', 298, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Đại hội Đảng toàn quốc lần X đã tổng kết một số vấn đề về lý luận – thực tiễn của đất nước qua bao nhiêu năm đổi mới ?</strong></p>', '<p>10 năm</p>', '<p>15 năm</p>', '<p>20 năm</p>', '<p>5 năm</p>', '<p>20 năm</p>', 299, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội được thông qua trong Đại hội nào của Đảng ?  </strong></p>', '<p> Đại hội VII (6/1991)</p>', '<p>Đại hội VIII (7/1996)</p>', '<p>Đại hội IX (4/2001)</p>', '<p>Đại hội VI (12/1986)</p>', '<p> Đại hội VII (6/1991)</p>', 300, 1, 'MyXuyen', 4);
INSERT INTO `questions` (`grade_id`, `unit`, `level_id`, `question_content`, `answer_a`, `answer_b`, `answer_c`, `answer_d`, `correct_answer`, `question_id`, `subject_id`, `sent_by`, `status_id`) VALUES
(1, 4, 1, '<p><strong>Phương châm đối ngoại của Đảng ta tại Đại hội lần IX (4/2001) là gì?</strong></p>', '<p>Việt Nam muốn là bạn với tất cả các nước trong cộng đồng thế giới, phấn đấu vì hòa bình, độc lập và phát triển</p>', '<p>Việt Nam muốn là bạn với tất cả các nước dân chủ, hợp tác, đoàn kết, tôn trọng độc lập chủ quyền của nhau</p>', '<p>Việt Nam sẵn sàng là bạn, là đối tác tin cậy, là thành viên có trách nhiệm của các nước trong cộng đồng quốc tế, phấn đấu vì hòa bình, độc lập và phát triển</p>', '<p>Việt Nam sẵn sàng là bạn, là đối tác tin cậy của các nước trong cộng đồng quốc tế, phấn đấu vì hòa bình, độc lập và phát triển</p>', '<p>Việt Nam sẵn sàng là bạn, là đối tác tin cậy của các nước trong cộng đồng quốc tế, phấn đấu vì hòa bình, độc lập và phát triển</p>', 301, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Đại hội Đảng lần thứ IX (4/2001) là Đại hội có chủ đề gì ?</strong></p>', '<p>Trí tuệ-đổi mới, dân chủ-kỷ cương-đoàn kết</p>', '<p>Nâng cao năng lực lãnh đạo và sức chiến đấu của Đảng</p>', '<p>Trí tuệ, Dân chủ, Đoàn kết, Đổi mới</p>', '<p>Nhìn thẳng vào sự thật, nói rõ sự thật, đánh giá đúng sự thật</p>', '<p>Trí tuệ, Dân chủ, Đoàn kết, Đổi mới</p>', 302, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Ngoài văn kiện chính của một Đại hội Đảng, điểm mới nổi bật của Đại hội là đã thông qua mấy văn kiện quan trọng, cụ thể văn kiện đó là gì ?</strong></p>', '<p>Một văn kiện: Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội bổ sung và phát triển</p>', '<p>Hai văn kiện: Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội; Chiến lược, ổn định và phát triển kinh tế - xã hội đến năm 2015</p>', '<p>Hai văn kiện: Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội; Chiến lược, ổn định và phát triển kinh tế - xã hội đến năm 2000</p>', '<p>Một văn kiện: Chiến lược, ổn định và phát triển kinh tế - xã hội đến năm 2020</p>', '<p>Hai văn kiện: Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội; Chiến lược, ổn định và phát triển kinh tế - xã hội đến năm 2015</p>', 303, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Mục tiêu tổng quát: “đưa nước ta ra khỏi tình trạng kém phát triển, tạo nền tảng để đến năm 2020 nước ta cơ bản trở thành một nước công nghiệp theo hướng hiện đại; tiếp tục đưa tổng sản phẩm trong nước (GDP) năm 2010 lên gấp đôi so với năm 2000”, được xác định trong văn kiện nào của Đảng ta ?</strong></p>', '<p>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội</p>', '<p>Chiến lược phát triển kinh tế - xã hội 2001-2010</p>', '<p>Diễn văn khai mạc Đại hội lần thứ VII</p>', '<p>Nghị quyết Đại hội lần thứ VI</p>', '<p>Chiến lược phát triển kinh tế - xã hội 2001-2010</p>', 304, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Nêu một trong những thắng lợi vĩ đại của các mạng Việt Nam trong giai đoạn 1986 đến 2018 ?</strong></p>', '<p>Thắng lợi của cuộc cách mạng tháng Tám năm 1945, thành lập nhà nước Cộng hoà xã hội chủ nghĩa Việt Nam</p>', '<p>Thắng lợi của cuộc kháng chiến oanh liệt để giải phóng dân tộc, bảo vệ Tổ quốc</p>', '<p>Thắng lợi trong việc nắm vững ngọn cờ độc lập dân tộc và chủ nghĩa xã hội</p>', '<p>Thắng lợi của sự nghiệp đổi mới và từng bước đưa đất nước quá độ lên chủ nghĩa xã hội</p>', '<p>Thắng lợi của sự nghiệp đổi mới và từng bước đưa đất nước quá độ lên chủ nghĩa xã hội</p>', 305, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Trong các nguồn lực để thực hiện công nghiệp hóa, hiện đại hóa ở nước ta đến năm 2020, Đại hội VIII của Đảng đã xác định nguồn lực nào là yếu tố cơ bản cho sự phát triển nhanh và bền vững ?</strong></p>', '<p>Con người, tài nguyên đất đai</p>', '<p>Con người</p>', '<p>Con người, khoa học công nghệ</p>', '<p>Con người, khoa học công nghệ, vốn, kinh nghiệm quản lý  </p>', '<p>Con người</p>', 306, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong> Việt Nam trở thành thành viên đầy đủ của Hiệp hội các quốc gia Đông Nam Á (ASEAN) vào thời gian nào?</strong></p>', '<p>01/11/1998</p>', '<p>5/6/1996</p>', '<p>28/7/1995</p>', '<p>25/5/1995</p>', '<p>28/7/1995</p>', 307, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Đại hội toàn quốc lần thứ mấy của Đảng xác định:\"Đảng lấy chủ nghĩa Mác - Lênin và tư tưởng Hồ Chí Minh làm nền tảng tư tưởng, kim chỉ nam cho hành động\" ?</strong></p>', '<p>Đại hội lần thứ IX (04/2001)</p>', '<p>Đại hội lần thứ VIII (7/1996)</p>', '<p>Đại hội lần thứ VII (6/1991)</p>', '<p>Đại hội lần thứ VI (12/1986)</p>', '<p>Đại hội lần thứ VII (6/1991)</p>', 308, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Khái niệm xây dựng Nhà nước pháp quyền xã hội chủ nghĩa lần đầu tiên đề cập ở Hội nghị trung ương nào ?</strong></p>', '<p>Hội nghị Trung ương 5 khóa VIII</p>', '<p>Hội nghị Trung ương 2 khóa VI</p>', '<p>Hội nghị Trung ương 2 khóa VII</p>', '<p>Hội nghị Trung ương 5 khóa VI</p>', '<p>Hội nghị Trung ương 2 khóa VII</p>', 309, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Đại hội Đảng lần thứ mấy của Đảng xác định nền kinh tế thị trường định hướng xã hội chủ nghĩa là mô hình kinh tế tổng quát của nước ta trong thời kỳ quá độ đi lên chủ nghĩa xã hội ?</strong></p>', '<p>Đại hội VIII (7/1996)</p>', '<p>Đại hội IX (4/2001)</p>', '<p>Đại hội VII (6/1991)</p>', '<p>Đại hội VI (12/1986)</p>', '<p>Đại hội IX (4/2001)</p>', 310, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Một trong những điểm mới về chủ trương đối ngoại của Đảng ta tại Đại hội VIII (7/1996) là gì ?</strong></p>', '<p>Xóa bỏ tình trạng độc quyền về ngoại thương</p>', '<p>Xây dựng một nền kinh tế khép kín</p>', '<p>Bình thường hóa với Trung Quốc và Mỹ</p>', '<p>Đầu tư ra nước ngoài</p>', '<p>Đầu tư ra nước ngoài</p>', 311, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Đại hội Đảng toàn quốc lần IX của Đảng Cộng sản Việt Nam họp trong khoảng thời gian nào?</strong></p>', '<p>Từ 01 đến 8/4/2001</p>', '<p>Từ 14 đến 19/7/2001</p>', '<p>Từ 19 đến 22/4/2001</p>', '<p>Từ 12 đến 17/6/2001</p>', '<p>Từ 19 đến 22/4/2001</p>', 312, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Nêu một trong những thắng lợi vĩ đại của cách mạng Việt Nam trong giai đoạn 1930 đến 1945 ?</strong></p>', '<p>Thắng lợi của cuộc cách mạng tháng Tám năm 1945, thành lập nhà nước Cộng hòa xã hội chủ nghĩa Việt Nam</p>', '<p>Thắng lợi của cuộc kháng chiến oanh liệt để giải phóng dân tộc, bảo vệ Tổ quốc</p>', '<p>Thắng lợi của cuộc Cách mạng tháng Tám năm 1945, thành lập nhà nước Việt Nam Dân chủ Cộng hòa</p>', '<p>Thắng lợi của sự nghiệp đổi mới và từng bước đưa đất nước quá độ lên chủ nghĩa xã hội</p>', '<p>Thắng lợi của cuộc Cách mạng tháng Tám năm 1945, thành lập nhà nước Việt Nam Dân chủ Cộng hòa</p>', 313, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>\"Các dân tộc trong nước bình đẳng, đoàn kết và giúp đỡ lẫn nhau cùng tiến bộ\" là một trong những đặc trưng xây dựng xã hội xã hội chủ nghĩa mà nhân dân ta xây dựng. Đặc trưng trên được trình bày tại Đại hội đại biểu toàn quốc lần thứ mấy ?</strong></p>', '<p>Đại hội Đảng IV (12/1976)</p>', '<p>Đại hội Đảng V (3/1981)</p>', '<p>Đại hội Đảng VI (12/1986)</p>', '<p>Đại hội Đảng VII (6/1991)</p>', '<p>Đại hội Đảng VII (6/1991)</p>', 314, 1, 'MyXuyen', 4),
(1, 4, 1, '<p><strong>Đại hội nào của Đảng đề ra nhiệm vụ:“Đẩy mạnh công cuộc đổi mới toàn diện và đồng bộ, tiếp tục phát triển nền kinh tế nhiều thành phần vận hành theo cơ chế thị trường có sự quản lý của Nhà nước theo định hướng xã hội chủ nghĩa”?</strong></p>', '<p>Đại hội đại biểu toàn quốc lần thứ VIII ( 07/1996)</p>', '<p>Đại hội đại biểu toàn quốc lần thứ VII (06/1991)</p>', '<p>Đại hội đại biểu toàn quốc lần thứ IX (04/2001)</p>', '<p>Đại hội đại biểu toàn quốc lần thứ VI (12/1986)</p>', '<p>Đại hội đại biểu toàn quốc lần thứ VIII ( 07/1996)</p>', 315, 1, 'admin', 4),
(1, 4, 1, '<p><strong>Đại hội nào của Đảng được gọi là Đại hội “Trí tuệ-đổi mới, dân chủ-kỷ cương-đoàn kết” ?</strong></p>', '<p>Đại hội lần thứ VIII</p>', '<p>Đại hội lần thứ VI</p>', '<p>Đại hội lần thứ V  </p>', '<p>Đại hội lần thứ VII</p>', '<p>Đại hội lần thứ VII</p>', 316, 1, 'admin', 4),
(1, 4, 1, '<p><strong>Trong quá trình đẩy mạnh công nghiệp hóa, hiện đại hóa gắn với phát triển kinh tế tri thức thời kỳ đổi mới. Có mấy định hướng phát triển các ngành và lĩnh vực kinh tế?</strong> </p>', '<p>4</p>', '<p>5</p>', '<p>6</p>', '<p>7</p>', '<p>6</p>', 317, 1, 'admin', 4),
(1, 4, 1, '<p><strong>Hội nghị Trung ương 4, khóa XI (1/2012) đã đưa ra kết luận tiếp tục tăng cường sự lãnh đạo của Đảng đối với công tác phòng, chống tham nhũng, lãng phí. Trung ương quyết định thành lập Ban Chỉ đạo Trung ương về phòng, chống tham nhũng trực thuộc cơ quan nào ?</strong></p>', '<p>Bộ Chính trị do Tổng Bí thư làm Trưởng ban</p>', '<p>Bộ Chính trị do Ủy ban kiểm tra làm Trưởng ban</p>', '<p>Quốc Hội do Chủ tịch Quốc Hội làm Trưởng ban</p>', '<p>Chính phủ do Thủ tướng làm Trưởng ban</p>', '<p>Bộ Chính trị do Tổng Bí thư làm Trưởng ban</p>', 318, 1, 'admin', 4),
(1, 4, 1, '<p><strong>Nghị quyết về định hướng chiến lược phát triển giáo dục – đào tạo trong thời kỳ công nghiệp hóa, hiện đại hóa đã xác định quan điểm xây dựng con người như thế nào để xây dựng chủ nghĩa xã hội ?</strong></p>', '<p>Năng động, sáng tạo</p>', '<p>Vừa “ hồng” vừa “ chuyên”</p>', '<p>Làm chủ bản thân</p>', '<p>Vừa “đức’ vừa “tài”</p>', '<p>Vừa “ hồng” vừa “ chuyên”</p>', 319, 1, 'admin', 4),
(1, 4, 1, '<p><strong>Đại hội Đảng toàn quốc lần thứ mấy đã tổng kết 30 năm thực hiện đường lối đổi mới?</strong></p>', '<p>Đại hội XII</p>', '<p>Đại hội X</p>', '<p>Chưa có Đại hội nào tổng kết 30 đổi mới</p>', '<p>Đại hội XI</p>', '<p>Đại hội XII</p>', 320, 1, 'admin', 4),
(1, 4, 1, '<p><strong>Đại hội nào của Đảng khẳng định:\"Tư tưởng Hồ Chí Minh không chỉ là kết quả của sự vận dụng sáng tạo mà còn phát triển sáng tạo chủ nghĩa Mác - Lênin vào điều kiện cụ thể của nước ta\"?</strong></p>', '<p>Đại hội VII (6/1991)</p>', '<p>Đại hội VI (12/1986)</p>', '<p>Đại hội VIII (7/1996)</p>', '<p>Đại hội IX (4/2001)</p>', '<p>Đại hội IX (4/2001)</p>', 321, 1, 'admin', 4),
(1, 4, 1, '<p><strong>Anh/chị cho biết phương châm đối ngoại của Việt Nam được Đại hội đại biểu toàn quốc lần thứ XII (1/2016) của Đảng nêu ra là gì ?</strong></p>', '<p>Đa dạng hóa, đa phương hóa trong quan hệ đối ngoại; chủ động và tích cực hội nhập quốc tế; là bạn, là đối tác tin cậy và thành viên có trách nhiệm của cộng đồng quốc tế</p>', '<p>Chủ động và tích cực hội nhập kinh tế quốc tế</p>', '<p>Là bạn, là đối tác tin cậy và thành viên có trách nhiệm của cộng đồng quốc tế</p>', '<p>Đa dạng hóa, đa phương hóa trong quan hệ đối ngoại; độc lập về chính trị nhân nhượng về kinh tế</p>', '<p>Đa dạng hóa, đa phương hóa trong quan hệ đối ngoại; chủ động và tích cực hội nhập quốc tế; là bạn, là đối tác tin cậy và thành viên có trách nhiệm của cộng đồng quốc tế</p>', 322, 1, 'admin', 4),
(1, 4, 1, '<p><strong>Báo cáo chính trị của Ban Chấp hành trung ương tại Đại hội VIII (7/1996) đã bổ sung đặc trưng tổng quát về mục tiêu xây dựng chủ nghĩa xã hội ở Việt Nam là gì ?</strong></p>', '<p>Văn hoá là nền tảng tinh thần của xã hội</p>', '<p>Do nhân dân lao động làm chủ</p>', '<p>Dân giàu, nước mạnh, xã hội công bằng, văn minh</p>', '<p>Có một nền kinh tế phát triển cao dựa trên lực lượng sản xuất hiện đại và quan hệ sản xuất phù hợp</p>', '<p>Dân giàu, nước mạnh, xã hội công bằng, văn minh</p>', 323, 1, 'admin', 4),
(1, 4, 1, '<p><strong>Nét nổi bật của thời kỳ cách mạng 1932-1935 là gì ?</strong></p>', '<p>Sự vững vàng của Đảng trước chính sách khủng bố dã man của kẻ thù</p>', '<p>Các phong trào dân tộc của công nhân, nông dân và các tầng lớp xã hội khác liên tiếp bùng nổ trong cả nước</p>', '<p>Hệ thống của Đảng ở trong nước được khôi phục</p>', '<p>Các chiến sĩ cách mạng luôn nêu cao tinh thần đấu tranh bất khuất</p>', '<p>Sự vững vàng của Đảng trước chính sách khủng bố dã man của kẻ thù</p>', 324, 1, 'admin', 4),
(1, 4, 1, '<p><strong>Đại hội lần thứ mấy Đảng ta khẳng định:“Việt Nam muốn là bạn với tất cả các nước trong cộng đồng thế giới, phấn đấu vì hoà bình, độc lập và phát triển” ?</strong></p>', '<p>Đại hội VIII (7/1996)</p>', '<p>Đại hội IX (4/2001)</p>', '<p>Đại hội VI (12/1986)</p>', '<p>Đại hội VII (6/1991)</p>', '<p>Đại hội VII (6/1991)</p>', 325, 1, 'admin', 4),
(1, 4, 1, '<p><strong>Hãy chọn đáp án đúng điền vào những cụm từ còn thiếu cho đúng với Nghị quyết Hội nghị lần thứ 24 Ban Chấp hành Trung ương Đảng (9/1975): “ ….(1)….vừa là nguyện vọng tha thiết của nhân dân cả nước, vừa là ….(2) ... của sự phát triển cách mạng Việt Nam, của lịch sử dân tộc Việt Nam”.</strong></p>', '<p>(1) Thống nhất đất nước; (2) Quy luật khách quan</p>', '<p>(1) Thống nhất đất nước; (2) yêu cầu</p>', '<p>(1) Giải phóng dân tộc; (2) quy luật khách quan</p>', '<p>(1) Chủ nghĩa xã hội; (2) yêu cầu  </p>', '<p>(1) Thống nhất đất nước; (2) Quy luật khách quan</p>', 326, 1, 'admin', 4),
(1, 4, 1, '<p><strong>Đảng viên được làm kinh tế tư nhân là kết quả đổi mới tư duy của Đảng ta đối với các thành phần kinh tế. Thực tiễn đã chứng minh đó là một chủ trương phù hợp với thực tế của đất nước và thế giới. Anh/chị cho biết văn kiện nào của  Đảng quy định về vấn đề đảng viên làm kinh tế tư nhân?</strong></p>', '<p>Quy định số 47-QĐ/TW, ngày 01/11/2011</p>', '<p>Quy định số 15-QĐ/TW, ngày 28/8/2006</p>', '<p>Quy định số 114-QĐ/TW, ngày 20/8/2004</p>', '<p>Quy định số 94-QĐ/TW, ngày 03/3/2004</p>', '<p>Quy định số 15-QĐ/TW, ngày 28/8/2006</p>', 327, 1, 'admin', 4),
(1, 4, 1, '<p><strong>“Dân giàu, nước mạnh, dân chủ, công bằng, văn minh” là một trong những đặc trưng xây dựng xã hội xã hội chủ nghĩa mà nhân dân ta xây dựng. Đặc trưng trên được trình bày trong Cương lĩnh nào ?</strong></p>', '<p>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội ( bổ sung, phát triển năm 2011)</p>', '<p>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội năm 1991</p>', '<p>Cương lĩnh chính trị đầu tiên của Đảng</p>', '<p>Chánh cương của Đảng Lao động Việt Nam</p>', '<p>Cương lĩnh xây dựng đất nước trong thời kỳ quá độ lên chủ nghĩa xã hội ( bổ sung, phát triển năm 2011)</p>', 328, 1, 'admin', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quest_of_test`
--

CREATE TABLE `quest_of_test` (
  `test_code` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quest_of_test`
--

INSERT INTO `quest_of_test` (`test_code`, `question_id`, `timest`) VALUES
(403126, 236, '2021-11-17 02:01:34'),
(403126, 241, '2021-11-17 02:01:34'),
(403126, 243, '2021-11-17 02:01:34'),
(403126, 244, '2021-11-17 02:01:34'),
(403126, 247, '2021-11-17 02:01:34'),
(403126, 253, '2021-11-17 02:01:34'),
(403126, 255, '2021-11-17 02:01:34'),
(403126, 256, '2021-11-17 02:01:34'),
(403126, 258, '2021-11-17 02:01:34'),
(403126, 267, '2021-11-17 02:01:34'),
(553380, 16, '2021-11-17 01:59:20'),
(553380, 204, '2021-11-17 01:59:20'),
(553380, 205, '2021-11-17 01:59:20'),
(553380, 208, '2021-11-17 01:59:20'),
(553380, 211, '2021-11-17 01:59:20'),
(553380, 214, '2021-11-17 01:59:20'),
(553380, 217, '2021-11-17 01:59:20'),
(553380, 229, '2021-11-17 01:59:20'),
(553380, 231, '2021-11-17 01:59:20'),
(553380, 233, '2021-11-17 01:59:20');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `scores`
--

CREATE TABLE `scores` (
  `student_id` int(11) NOT NULL,
  `test_code` int(11) NOT NULL,
  `score_number` varchar(10) DEFAULT NULL,
  `score_detail` varchar(50) NOT NULL,
  `completion_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `scores`
--

INSERT INTO `scores` (`student_id`, `test_code`, `score_number`, `score_detail`, `completion_time`) VALUES
(1, 553380, '2', '2/10', '2021-11-16 21:00:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statuses`
--

CREATE TABLE `statuses` (
  `status_id` int(1) NOT NULL,
  `detail` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statuses`
--

INSERT INTO `statuses` (`status_id`, `detail`) VALUES
(1, 'Mở'),
(2, 'Đóng'),
(3, 'Chờ Duyệt'),
(4, 'Đã Duyệt'),
(5, 'Cho Phép Xem Đáp Án'),
(6, 'Kết Thúc'),
(7, 'Ẩn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `permission` int(1) DEFAULT '3',
  `class_id` int(11) NOT NULL,
  `last_login` datetime NOT NULL,
  `gender_id` int(1) NOT NULL DEFAULT '1',
  `avatar` varchar(255) DEFAULT 'avatar-default.jpg',
  `birthday` date NOT NULL,
  `doing_exam` int(11) DEFAULT NULL,
  `starting_time` datetime DEFAULT NULL,
  `time_remaining` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `students`
--

INSERT INTO `students` (`student_id`, `username`, `email`, `password`, `name`, `permission`, `class_id`, `last_login`, `gender_id`, `avatar`, `birthday`, `doing_exam`, `starting_time`, `time_remaining`) VALUES
(1, '18004057', '18004057@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Võ Huy Khang', 3, 1, '2021-11-22 09:16:54', 2, '18004057_0a2a7ff3f08ea2f5_4c4c60f88be6b996_3450816334417691769722.jpg', '2000-09-02', NULL, NULL, NULL),
(2, '19008079', '19008079@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Đồng Quốc Minh', 3, 1, '2021-10-22 08:22:47', 2, 'avatar-default.jpg', '2000-09-02', NULL, NULL, NULL),
(3, '19008133', '19008133@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Huỳnh Tấn Sang', 3, 1, '2021-10-22 04:14:02', 2, 'avatar-default.jpg', '2000-09-02', NULL, NULL, '198:52'),
(4, '19008179', '19008179@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Lê Quang Trường', 3, 1, '2021-10-05 05:51:55', 2, 'avatar-default.jpg', '2000-09-02', NULL, NULL, NULL),
(5, '19008001', '19008001@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'An', 3, 1, '2021-10-05 05:51:55', 2, 'avatar-default.jpg', '2000-09-02', NULL, NULL, NULL),
(6, '18008111 ', '18008111@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Dương Anh Phúc', 3, 1, '2021-10-21 08:34:03', 2, '18008111 _Screenshot_2021-08-11-21-51-18-440_com.garena.game.kgvn.jpg', '2000-11-27', NULL, NULL, NULL),
(7, '20003025', '20003025@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Ngô Hồng Duy ', 3, 1, '2021-10-22 08:19:22', 2, 'avatar-default.jpg', '2000-11-27', NULL, NULL, NULL),
(19, 'Điềm Điềm ', 'Điềm@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Điềm Điềm', 3, 1, '2021-10-22 07:49:47', 3, 'avatar-default.jpg', '2000-11-27', NULL, NULL, NULL),
(20, '18004160', '18004160@student.vlute.edu.vn', 'e10adc3949ba59abbe56e057f20f883e', 'Huỳnh Thị Mỹ Xuyên', 3, 1, '2021-11-22 18:56:13', 3, 'avatar-default.jpg', '2000-11-27', NULL, NULL, '35:55');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_notifications`
--

CREATE TABLE `student_notifications` (
  `ID` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student_test_detail`
--

CREATE TABLE `student_test_detail` (
  `ID` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `test_code` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer_a` text COLLATE utf8_unicode_ci,
  `answer_b` text COLLATE utf8_unicode_ci,
  `answer_c` text COLLATE utf8_unicode_ci,
  `answer_d` text COLLATE utf8_unicode_ci,
  `student_answer` text COLLATE utf8_unicode_ci,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `student_test_detail`
--

INSERT INTO `student_test_detail` (`ID`, `student_id`, `test_code`, `question_id`, `answer_a`, `answer_b`, `answer_c`, `answer_d`, `student_answer`, `timest`) VALUES
(1462468259, 1, 553380, 16, '<p>Hội nghi Trung ương lần thứ tám (5/1941)</p>', '<p>Hội nghị Trung ương lần thứ nhất (10/1930)</p>', '<p>Hội nghị Trung ương lần thứ bảy (11/1940)</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hội nghị Trung ương lần thứ nhất (10/1930)</p>', '2021-11-17 02:00:07'),
(499244199, 1, 553380, 204, '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Nước Pháp</p>', '<p>Nước Đức</p>', '<p>Nước Anh</p>', '<p>Nước Anh</p>', '2021-11-17 02:00:02'),
(726078646, 1, 553380, 205, '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Giải phóng thị xã Cao Bằng</p>', '<p>Giải phóng thị xã Thái Nguyên </p>', '<p>Giải phóng thị xã Tuyên Quang</p>', '<p>Giải phóng thị xã Cao Bằng</p>', '2021-11-17 02:00:04'),
(1273147581, 1, 553380, 208, '<p>Đấu tranh ngoại giao kết hợp với đấu tranh vũ trang</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Đấu tranh vũ trang kết hợp với đấu tranh chính trị </p>', '<p>Đấu tranh vũ trang</p>', '<p>Đấu tranh vũ trang kết hợp với đấu tranh chính trị </p>', '2021-11-17 02:00:06'),
(1292555127, 1, 553380, 211, '<p>Thành lập bộ đội chủ lực</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mít tinh, biểu tình đòi quyền sống </p>', '<p>Phát triển dân quân du kích</p>', '<p>Thành lập bộ đội chủ lực</p>', '2021-11-17 02:00:06'),
(12220505, 1, 553380, 214, '<p>Trả tự do cho một số tù chính trị</p>', '<p>Cho phép xuất bản báo chí</p>', '<p>Giải quyết vấn đề ruộng đất cho nhân dân </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Cho phép xuất bản báo chí</p>', '2021-11-17 01:59:59'),
(542407574, 1, 553380, 217, '<p>Công khai, nửa công khai, nửa hợp pháp, bí mật, bất hợp pháp </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Công khai, hợp pháp, bí mật</p>', '<p>Nửa công khai, nửa hợp pháp, bí mật</p>', '<p>Công khai, hợp pháp, bí mật</p>', '2021-11-17 02:00:03'),
(1563202267, 1, 553380, 229, '<p>Công nhân, nông dân và trí thức</p>', '<p>Mọi lực lượng dân tộc và một bộ phận người Pháp ở Đông Dương</p>', '<p>Công nhân, nông dân, tiểu tư sản, tư sản, tiểu địa chủ, địa chủ </p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mọi lực lượng dân tộc và một bộ phận người Pháp ở Đông Dương</p>', '2021-11-17 02:00:12'),
(1541625171, 1, 553380, 231, '<p>Quảng trường Ba Đình; Hà Nội; Chính phủ Lâm thời; Tuyên ngôn Độc lập; Việt Nam Dân chủ Cộng hòa </p>', '<p>Quảng trường Ba Đình; cả nước; Chính phủ Lâm thời; Tuyên ngôn Độc lập; Việt Nam Cộng hòa Dân chủ</p>', '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Hà Nội; cả nước; Chính phủ Lâm thời; Tuyên ngôn Độc lập; Việt Nam Dân chủ Cộng hòa</p>', '<p>Quảng trường Ba Đình; Hà Nội; Chính phủ Lâm thời; Tuyên ngôn Độc lập; Việt Nam Dân chủ Cộng hòa </p>', '2021-11-17 02:00:10'),
(379987750, 1, 553380, 233, '<p>-----------------------------Không có câu trả lời-------------------------------</p>', '<p>Mít tinh, biểu tình đòi quyền sống</p>', '<p>Phát triển dân quân du kích</p>', '<p>Thành lập bộ đội chủ lực</p>', '<p>Phát triển dân quân du kích</p>', '2021-11-17 02:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subjects`
--

CREATE TABLE `subjects` (
  `subject_id` int(11) NOT NULL,
  `subject_detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `subjects`
--

INSERT INTO `subjects` (`subject_id`, `subject_detail`) VALUES
(1, 'Lịch sử Đảng Cộng sản Việt Nam(Nguyễn Thị Ràng)'),
(2, 'Đồ họa MT(Trần Thị Tố Loan)'),
(3, 'Tkn Tmn   '),
(4, 'Tương Tác Người Máy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `permission` int(1) DEFAULT '2',
  `last_login` datetime NOT NULL,
  `gender_id` int(1) NOT NULL DEFAULT '1',
  `avatar` varchar(255) DEFAULT 'avatar-default.jpg',
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `username`, `email`, `password`, `name`, `permission`, `last_login`, `gender_id`, `avatar`, `birthday`) VALUES
(1, 'GVQL', 'binhht@vlute.edu.vn', 'c4ca4238a0b923820dcc509a6f75849b', 'Huỳnh Tấn Bình', 2, '2021-11-16 20:54:49', 1, 'avatar-default.jpg', '1979-09-02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `teacher_notifications`
--

CREATE TABLE `teacher_notifications` (
  `ID` int(11) NOT NULL,
  `notification_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tests`
--

CREATE TABLE `tests` (
  `test_code` int(11) NOT NULL,
  `test_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `grade_id` int(11) NOT NULL,
  `total_questions` int(11) NOT NULL,
  `time_to_do` int(11) NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `status_id` int(11) DEFAULT NULL,
  `timest` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tests`
--

INSERT INTO `tests` (`test_code`, `test_name`, `password`, `subject_id`, `grade_id`, `total_questions`, `time_to_do`, `note`, `status_id`, `timest`) VALUES
(403126, 'test', 'c4ca4238a0b923820dcc509a6f75849b', 1, 1, 10, 2, 'kt', 1, '2021-11-17 02:01:42'),
(553380, 'Lịch Sử Đảng', 'c4ca4238a0b923820dcc509a6f75849b', 1, 1, 10, 5, 'Mật Khẩu: 1', 2, '2021-11-22 23:58:07');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `n4` (`permission`),
  ADD KEY `admins_gender_id` (`gender_id`);

--
-- Chỉ mục cho bảng `chats`
--
ALTER TABLE `chats`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `class_id` (`class_id`);

--
-- Chỉ mục cho bảng `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD UNIQUE KEY `class_name` (`class_name`),
  ADD KEY `n7` (`teacher_id`),
  ADD KEY `k4` (`grade_id`);

--
-- Chỉ mục cho bảng `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`gender_id`);

--
-- Chỉ mục cho bảng `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`grade_id`);

--
-- Chỉ mục cho bảng `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`level_id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `k9` (`grade_id`),
  ADD KEY `unit` (`unit`),
  ADD KEY `subjects_key` (`subject_id`),
  ADD KEY `level_id` (`level_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Chỉ mục cho bảng `quest_of_test`
--
ALTER TABLE `quest_of_test`
  ADD PRIMARY KEY (`test_code`,`question_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `test_code` (`test_code`);

--
-- Chỉ mục cho bảng `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`student_id`,`test_code`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `test_code` (`test_code`);

--
-- Chỉ mục cho bảng `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`status_id`);

--
-- Chỉ mục cho bảng `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `n9` (`class_id`),
  ADD KEY `n11` (`permission`),
  ADD KEY `students_gender_id` (`gender_id`);

--
-- Chỉ mục cho bảng `student_notifications`
--
ALTER TABLE `student_notifications`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Chỉ mục cho bảng `student_test_detail`
--
ALTER TABLE `student_test_detail`
  ADD PRIMARY KEY (`student_id`,`test_code`,`question_id`),
  ADD KEY `fk4` (`test_code`),
  ADD KEY `fk6` (`question_id`);

--
-- Chỉ mục cho bảng `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`subject_id`);

--
-- Chỉ mục cho bảng `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `n2` (`permission`),
  ADD KEY `teachers_gender_id` (`gender_id`);

--
-- Chỉ mục cho bảng `teacher_notifications`
--
ALTER TABLE `teacher_notifications`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `notification_id` (`notification_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Chỉ mục cho bảng `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`test_code`),
  ADD KEY `fk1` (`subject_id`),
  ADD KEY `fk2` (`status_id`),
  ADD KEY `grade_id` (`grade_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `chats`
--
ALTER TABLE `chats`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `genders`
--
ALTER TABLE `genders`
  MODIFY `gender_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `grades`
--
ALTER TABLE `grades`
  MODIFY `grade_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `levels`
--
ALTER TABLE `levels`
  MODIFY `level_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT cho bảng `statuses`
--
ALTER TABLE `statuses`
  MODIFY `status_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `student_notifications`
--
ALTER TABLE `student_notifications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `subjects`
--
ALTER TABLE `subjects`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `teacher_notifications`
--
ALTER TABLE `teacher_notifications`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tests`
--
ALTER TABLE `tests`
  MODIFY `test_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=553381;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
