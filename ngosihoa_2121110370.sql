-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 19, 2024 at 10:02 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngosihoa_2121110370`
--

-- --------------------------------------------------------

--
-- Table structure for table `2121110370_banner`
--

CREATE TABLE `2121110370_banner` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã Slider',
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên Slider',
  `link` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Liên kết',
  `position` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Vị trí',
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hình ảnh',
  `sort_order` int UNSIGNED NOT NULL COMMENT 'Thứ tự',
  `created_at` datetime NOT NULL COMMENT 'Ngày tạo',
  `created_by` tinyint UNSIGNED NOT NULL COMMENT 'Người tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED DEFAULT NULL COMMENT 'Người sửa',
  `status` tinyint UNSIGNED DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2121110370_banner`
--

INSERT INTO `2121110370_banner` (`id`, `name`, `link`, `position`, `image`, `sort_order`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Khuyễn mãi hè 2020', 'http://domain.com/index.php?option=page&cat=khuyen-mai-he', 'slideshow', 'slide12.png', 0, '2020-07-01 07:12:13', 1, '2024-01-26 00:14:43', 8, 1),
(2, 'Khuyễn mãi mùa khai giảng', 'http://domain.com/index.php?option=page&cat=khuyen-mai-mua-khai-giang', 'slideshow', 'slide14.jpg', 2, '2020-07-01 07:12:13', 1, '2022-09-03 09:07:08', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110370_brand`
--

CREATE TABLE `2121110370_brand` (
  `id` int NOT NULL COMMENT 'Mã Loại',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'SLug Loại SP',
  `sort_order` int NOT NULL COMMENT 'Thứ tự',
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '' COMMENT 'Hình đại diện',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `created_at` datetime NOT NULL COMMENT 'Ngày tạo',
  `created_by` tinyint NOT NULL DEFAULT '0' COMMENT 'Người tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày sửa',
  `updated_by` tinyint NOT NULL DEFAULT '0' COMMENT 'Người sửa',
  `status` tinyint NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2121110370_brand`
--

INSERT INTO `2121110370_brand` (`id`, `name`, `slug`, `sort_order`, `image`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Việt Nam', 'viet-nam', 0, '1.png', 'Từ khóa SEO', '2020-07-03 16:06:19', 1, '2022-11-19 14:54:25', 1, 1),
(2, 'Hàn Quốc', 'han-quoc', 0, '3.png', 'Từ khóa SEO', '2020-07-03 16:06:19', 1, '2022-11-19 14:54:31', 1, 1),
(3, 'Thái Lan', 'thai-lan', 0, '2.jpg', 'Từ khóa SEO', '2020-07-03 16:06:19', 1, '2022-11-19 14:54:36', 1, 1),
(4, 'Nhật Bản', 'nhat-ban', 0, '4.png', 'Từ khóa SEO', '2020-07-03 16:06:19', 1, '2022-11-19 14:54:44', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110370_category`
--

CREATE TABLE `2121110370_category` (
  `id` int NOT NULL COMMENT 'Mã Loại',
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'SLug Loại SP',
  `parent_id` int NOT NULL DEFAULT '0' COMMENT 'Mã cấp cha',
  `sort_order` int NOT NULL COMMENT 'Thứ tự',
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL COMMENT 'Hình đại diện',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `created_at` datetime NOT NULL COMMENT 'Ngày tạo',
  `created_by` tinyint NOT NULL DEFAULT '0' COMMENT 'Người tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày sửa',
  `updated_by` tinyint DEFAULT NULL COMMENT 'Người sửa',
  `status` tinyint NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2121110370_category`
--

INSERT INTO `2121110370_category` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `image`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Thời trang nam', 'thoi-trang-nam', 0, 0, 'ttn.png', 'Thời trang nam', '2022-11-22 18:17:31', 1, '2022-11-22 18:17:31', 0, 1),
(2, 'Thời trang nữ', 'thoi-trang-nu', 0, 0, 'ttnu.png', 'Thời trang nữ', '2022-11-22 18:18:00', 1, '2022-11-22 18:18:00', 0, 1),
(4, 'Áo sơ mi nam', 'ao-so-mi-nam', 1, 0, 'aa4.jpg', 'Áo sơ mi nam', '2022-11-22 18:18:53', 1, '2022-11-22 18:18:53', 0, 1),
(5, 'Quần short nam', 'quan-short-nam', 1, 0, 's3.jpg', 'Quần short nam', '2022-11-22 18:19:32', 1, '2022-11-22 18:19:32', 0, 1),
(6, 'Quần dài nam', 'quan-dai-nam', 1, 0, 'gin1.jpg', 'Quần dài nam', '2022-11-22 18:19:57', 1, '2022-11-22 18:19:57', 0, 1),
(8, 'Áo sơ mi nữ', 'ao-so-mi-nu', 2, 0, 'sm1.jpg', 'Áo sơ mi nữ', '2022-11-22 18:21:43', 1, '2022-11-22 18:21:43', 0, 1),
(10, 'Quần short nữ', 'quan-short-nu', 2, 0, 'sn3.jpg', 'Quần short nữ', '2022-11-22 18:22:14', 1, '2022-11-22 18:22:14', 0, 1),
(11, 'Quần dài nữ', 'quan-dai-nu', 2, 0, 'qq1.jpg', 'Quần dài nữ', '2022-11-22 18:22:48', 1, '2022-11-22 18:22:48', 0, 1),
(12, 'Chân váy', 'chan-vay', 2, 0, 'nu1.2.jpg', 'Chân váy', '2022-11-22 18:23:07', 1, '2022-11-22 18:23:07', 0, 1),
(16, 'Áo polo nam', 'ao-polo-nam', 1, 0, 'p7.jpg', 'Áo polo nam', '2022-11-22 18:18:27', 1, '2022-11-22 18:18:27', 0, 1),
(17, 'Áo thun nữ', 'ao-thun-nu', 2, 0, 'n3.1.jpg', 'Áo thun nữ', '2022-11-22 18:18:27', 1, '2022-11-22 18:18:27', 0, 1),
(18, 'Áo khoác nam', 'ao-khoac-nam', 1, 0, 'khoac1.jpg', 'Áo khoác nam', '2022-11-22 18:21:27', 1, '2022-11-22 18:21:27', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110370_contact`
--

CREATE TABLE `2121110370_contact` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `replay_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_by` int DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `2121110370_contact`
--

INSERT INTO `2121110370_contact` (`id`, `name`, `user_id`, `email`, `phone`, `title`, `content`, `replay_id`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Khách hàng', NULL, 'an2121110226@gmail.com', '342264038', 'aaa', 'aaa', NULL, '2024-01-22 15:35:59', '2024-01-22 15:40:55', NULL, 1),
(2, 'nguyễn Thành An', NULL, 'an0529477@gmail.com', '342264038', 'Đẹp', 'đẹp', NULL, '2024-01-22 15:45:22', '2024-01-26 08:09:26', 1, 1),
(9, 'nguyễn Thành An', NULL, 'an0529477@gmail.com', '342264038', 'Sản phẩm quá rộng, xin được hỗ trợ', 'sp đẹp', NULL, '2024-01-26 08:47:33', '2024-01-26 08:47:33', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110370_menu`
--

CREATE TABLE `2121110370_menu` (
  `id` int NOT NULL COMMENT 'Mã Menu',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên Menu',
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Liên kết',
  `type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Kiểu Menu',
  `table_id` int NOT NULL DEFAULT '0' COMMENT 'Mã trong bảng',
  `sort_order` int NOT NULL DEFAULT '0' COMMENT 'Thứ tự',
  `position` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Vị trí',
  `level` int UNSIGNED NOT NULL,
  `parent_id` int NOT NULL COMMENT 'Mã cấp cha',
  `created_at` datetime NOT NULL COMMENT 'Ngày Tạo',
  `created_by` tinyint NOT NULL DEFAULT '1' COMMENT 'Người tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày sửa',
  `updated_by` tinyint DEFAULT NULL COMMENT 'Người sửa',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2121110370_menu`
--

INSERT INTO `2121110370_menu` (`id`, `name`, `link`, `type`, `table_id`, `sort_order`, `position`, `level`, `parent_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Trang chủ', 'index.php', 'custom', 1, 0, 'mainmenu', 0, 0, '2022-11-22 19:36:05', 1, '2024-01-25 23:11:11', 8, 1),
(2, 'Giới thiệu', 'index.php?opt=page&cat=gioi-thieu', 'page', 39, 4, 'mainmenu', 1, 0, '2022-11-22 20:13:46', 1, '2022-11-22 20:18:22', 1, 1),
(4, 'Chân váy', 'index.php?opt=product&cat=chan-vay', 'category', 12, 8, 'mainmenu', 2, 14, '2022-11-22 20:14:09', 1, '2022-11-22 20:18:22', 1, 1),
(5, 'Quần dài nữ', 'index.php?opt=product&cat=quan-dai-nu', 'category', 11, 7, 'mainmenu', 2, 14, '2022-11-22 20:14:09', 1, '2022-11-22 20:18:22', 1, 1),
(6, 'Quần short nữ', 'index.php?opt=product&cat=quan-short-nu', 'category', 10, 6, 'mainmenu', 2, 14, '2022-11-22 20:14:09', 1, '2022-11-22 20:18:22', 1, 1),
(8, 'Áo sơ mi nữ', 'index.php?opt=product&cat=ao-so-mi-nu', 'category', 8, 4, 'mainmenu', 2, 14, '2022-11-22 20:14:09', 1, '2022-11-22 20:18:22', 1, 1),
(9, 'Áo thun nữ', 'index.php?opt=product&cat=ao-thun-nu', 'category', 7, 3, 'mainmenu', 2, 14, '2022-11-22 20:14:09', 1, '2022-11-22 20:18:22', 1, 1),
(10, 'Quần dài nam', 'index.php?opt=product&cat=quan-dai-nam', 'category', 6, 13, 'mainmenu', 2, 15, '2022-11-22 20:14:09', 1, '2022-11-22 20:19:04', 1, 1),
(11, 'Quần short nam', 'index.php?opt=product&cat=quan-short-nam', 'category', 5, 12, 'mainmenu', 2, 15, '2022-11-22 20:14:09', 1, '2022-11-22 20:19:04', 1, 1),
(12, 'Áo sơ mi nam', 'index.php?opt=product&cat=ao-so-mi-nam', 'category', 4, 11, 'mainmenu', 2, 15, '2022-11-22 20:14:09', 1, '2022-11-22 20:19:04', 1, 1),
(13, 'Áo khoác nam', 'index.php?opt=product&cat=ao-khoac-nam', 'category', 3, 10, 'mainmenu', 2, 15, '2022-11-22 20:14:09', 1, '2022-11-22 20:19:04', 1, 1),
(14, 'Đồ nữ', 'index.php?opt=product&cat=do-nu', 'category', 2, 3, 'mainmenu', 1, 0, '2022-11-22 20:14:09', 1, '2022-11-22 20:19:41', 1, 1),
(15, 'Đồ nam', 'index.php?opt=product&cat=do-nam', 'category', 1, 2, 'mainmenu', 1, 0, '2022-11-22 20:14:09', 1, '2022-11-22 20:19:41', 1, 1),
(16, 'Giới thiệu', 'index.php?opt=page&cat=gioi-thieu', 'page', 39, 1, 'footermenu', 1, 0, '2022-11-22 20:55:36', 1, '2022-11-30 09:31:59', 1, 0),
(17, 'Chính Sách Hoàn Tiền', 'index.php?opt=page&cat=chinh-sach-hoan-tien', 'page', 38, 1, 'footermenu', 1, 0, '2022-11-22 20:55:36', 1, '2022-11-22 20:55:42', 1, 1),
(18, 'Chính sách bảo hành', 'index.php?opt=page&cat=chinh-sach-bao-hanh', 'page', 37, 2, 'footermenu', 1, 0, '2022-11-22 20:55:36', 1, '2023-08-01 13:17:16', 1, 1),
(19, 'Chính sách đổi hàng', 'index.php?opt=page&cat=chinh-sach-doi-hang', 'page', 36, 2, 'footermenu', 1, 0, '2022-11-22 20:55:36', 1, '2023-08-01 13:17:16', 1, 1),
(20, 'Quần dài nữ', 'index.php?opt=product&cat=quan-dai-nu', 'category', 11, 2, 'mainmenu', 1, 0, '2023-08-01 13:16:31', 1, '2023-08-01 13:17:16', 1, 2),
(21, 'Quần short nữ', 'index.php?opt=product&cat=quan-short-nu', 'category', 10, 1, 'mainmenu', 1, 0, '2023-08-01 13:16:31', 1, '2023-08-01 13:16:31', 1, 2),
(22, 'Áo kiểu', 'index.php?opt=product&cat=ao-kieu', 'category', 9, 1, 'mainmenu', 1, 0, '2023-08-01 13:16:31', 1, '2023-08-01 13:16:31', 1, 2),
(23, 'Áo sơ mi nữ', 'index.php?opt=product&cat=ao-so-mi-nu', 'category', 8, 1, 'mainmenu', 1, 0, '2023-08-01 13:16:31', 1, '2023-08-01 13:16:31', 1, 2),
(24, 'Áo thun nữ', 'index.php?opt=product&cat=ao-thun-nu', 'category', 7, 1, 'mainmenu', 1, 0, '2023-08-01 13:16:31', 1, '2023-08-01 13:16:31', 1, 2),
(27, 'Áo sơ mi nữ', 'index.php?opt=product&cat=ao-so-mi-nu', 'category', 8, 1, 'mainmenu', 1, 0, '2023-08-17 19:53:49', 1, '2023-08-17 19:53:49', 1, 2),
(28, 'Áo thun nữ', 'index.php?opt=product&cat=ao-thun-nu', 'category', 7, 1, 'mainmenu', 1, 0, '2023-08-17 19:53:49', 1, '2023-08-17 19:53:49', 1, 2),
(29, 'Chính sách vận chuyển', 'index.php?opt=page&cat=chinh-sach-van-chuyen', 'page', 36, 2, 'footermenu', 1, 0, '2022-11-22 20:55:36', 1, '2023-08-01 13:17:16', 1, 1),
(30, 'Bài viết', 'index.php?opt=post', 'page', 39, 4, 'mainmenu', 1, 0, '2022-11-22 20:13:46', 1, '2022-11-22 20:18:22', 1, 1),
(31, 'Tin tức', 'index.php?opt=post&cat=tin-tuc', 'post', 36, 5, 'mainmenu', 1, 0, '2022-11-22 20:55:36', 1, '2023-08-01 13:17:16', 1, 1),
(32, 'Dịch vụ', 'index.php?opt=post&cat=dich-vu', 'custom', 36, 2, 'footermenu1', 1, 0, '2022-11-22 20:55:36', 1, '2023-08-01 13:17:16', 1, 1),
(33, 'Áo polo nam', 'index.php?opt=product&cat=ao-polo-nam', 'category', 14, 10, 'mainmenu', 2, 15, '2022-11-22 20:14:09', 1, '2022-11-22 20:19:04', 1, 1),
(35, 'Liên hệ', 'index.php?opt=contact', 'contact', 36, 5, 'mainmenu', 1, 0, '2022-11-22 20:55:36', 1, '2023-08-01 13:17:16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110370_order`
--

CREATE TABLE `2121110370_order` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `user_id` int NOT NULL COMMENT 'Mã khách hàng',
  `exportdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Ngày xuất',
  `deliveryaddress` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Địa chỉ người nhận',
  `deliveryname` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên người nhận',
  `deliveryphone` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Điện thoại người nhận',
  `deliveryemail` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Email ngươig nhận',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày cập nhật',
  `updated_by` tinyint UNSIGNED DEFAULT NULL COMMENT 'Người cập nhật',
  `status` tinyint UNSIGNED NOT NULL COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2121110370_order`
--

INSERT INTO `2121110370_order` (`id`, `user_id`, `exportdate`, `deliveryaddress`, `deliveryname`, `deliveryphone`, `deliveryemail`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(1, 1, '2020-07-03 17:00:00', 'HCM', 'Hồ Đình Lợi', '0987654321', 'loi@gmail.com', '2020-06-30 17:00:00', '2024-01-23 00:34:25', 7, 2),
(2, 1, '2020-07-03 17:00:00', 'Bình Dương', 'Hoàng Mai Toàn', '0987654321', 'toan@gmail.com', '2020-06-30 17:00:00', '2022-11-30 13:47:42', 1, 5),
(3, 1, '2020-07-03 17:00:00', 'HCM', 'Hồ Đình Lợi', '0987654321', 'loi@gmail.com', '2020-06-30 17:00:00', '2022-12-07 11:23:53', 1, 1),
(4, 1, '2020-07-03 17:00:00', 'Bình Dương', 'Hoàng Mai Toàn', '0987654321', 'toan@gmail.com', '2020-06-30 17:00:00', '2022-11-30 13:47:42', 1, 5),
(5, 1, '2024-01-23 13:19:04', 'BĐ', 'Nguyễn Thành An', '0342226403', 'an2121110226@gmail.com', '2024-01-23 06:19:04', NULL, NULL, 1),
(6, 1, '2024-01-23 13:24:18', 'BĐ', 'Nguyễn Thành Long', '0342226403', 'an2121110226@gmail.com', '2024-01-23 06:24:18', NULL, NULL, 1),
(7, 1, '2024-01-23 13:27:42', 'BĐ', 'Nguyễn Thành An', '0342226403', 'an@121', '2024-01-23 06:27:42', NULL, NULL, 1),
(8, 1, '2024-01-23 13:29:35', 'BĐ', 'Anh An', '0342226403', 'an2121110226@gmail.com', '2024-01-23 06:29:35', NULL, NULL, 1),
(9, 1, '2024-01-23 13:48:52', '', '', '', '', '2024-01-23 06:48:52', NULL, NULL, 1),
(50, 1, '2024-01-24 05:45:46', 'BĐ', 'Nguyễn Thành An', '0342226403', 'an2121110226@gmail.com', '2024-01-23 22:45:46', '2024-01-27 15:37:06', 1, 2),
(52, 1, '2024-01-24 05:47:28', 'BĐ', 'Hà', '0342226403', 'an2121110226@gmail.com', '2024-01-23 22:47:28', NULL, NULL, 1),
(53, 1, '2024-01-24 05:47:28', 'BĐ', 'Hà', '0342226403', 'an2121110226@gmail.com', '2024-01-23 22:47:28', NULL, NULL, 1),
(54, 1, '2024-01-24 05:47:28', 'BĐ', 'Hà', '0342226403', 'an2121110226@gmail.com', '2024-01-23 22:47:28', NULL, NULL, 1),
(55, 1, '2024-01-24 05:47:28', 'BĐ', 'Hà', '0342226403', 'an2121110226@gmail.com', '2024-01-23 22:47:28', NULL, NULL, 1),
(56, 1, '2024-01-24 05:47:28', 'BĐ', 'Hà', '0342226403', 'an2121110226@gmail.com', '2024-01-23 22:47:28', NULL, NULL, 1),
(57, 1, '2024-03-13 09:48:28', 'tdp4', 'ngosihoa', '1234567897', 'ngosihoaa2@gmail.com', '2024-03-13 02:48:28', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110370_orderdetail`
--

CREATE TABLE `2121110370_orderdetail` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã CT Đơn hàng',
  `order_id` int UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `product_id` int UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `price` float(12,2) NOT NULL COMMENT 'Giá sản phẩm',
  `qty` int UNSIGNED NOT NULL COMMENT 'Số lượng',
  `amount` float(12,2) NOT NULL COMMENT 'Thành tiền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2121110370_orderdetail`
--

INSERT INTO `2121110370_orderdetail` (`id`, `order_id`, `product_id`, `price`, `qty`, `amount`) VALUES
(1, 1, 23, 250000.00, 2, 500000.00),
(2, 1, 25, 250000.00, 3, 750000.00),
(3, 2, 33, 250000.00, 2, 500000.00),
(4, 2, 43, 250000.00, 3, 750000.00),
(5, 1, 20, 799000.00, 1, 799000.00),
(6, 1, 34, 399000.00, 1, 399000.00),
(7, 1, 21, 159000.00, 1, 159000.00),
(8, 1, 37, 199000.00, 3, 597000.00),
(9, 1, 39, 199000.00, 1, 199000.00),
(50, 1, 45, 279000.00, 1, 279000.00),
(52, 1, 39, 199000.00, 1, 199000.00),
(53, 1, 46, 279000.00, 1, 279000.00),
(54, 1, 19, 378000.00, 1, 378000.00),
(55, 1, 19, 378000.00, 1, 378000.00),
(56, 1, 16, 19900.00, 3, 59700.00),
(57, 1, 20, 799000.00, 1, 799000.00),
(58, 1, 46, 279000.00, 1, 279000.00);

-- --------------------------------------------------------

--
-- Table structure for table `2121110370_post`
--

CREATE TABLE `2121110370_post` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã bài viết',
  `topic_id` int UNSIGNED DEFAULT NULL COMMENT 'Mã chủ đề',
  `title` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tiêu đề bài viết',
  `slug` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Slug tiêu đề',
  `detail` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Chi tiết bài viết',
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hình ảnh',
  `type` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'post' COMMENT 'Kiểu bài viết',
  `metakey` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL COMMENT 'Ngày tạo',
  `created_by` tinyint NOT NULL COMMENT 'Người tạo',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Ngày sửa',
  `updated_by` tinyint NOT NULL COMMENT 'Người sửa',
  `status` tinyint NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2121110370_post`
--

INSERT INTO `2121110370_post` (`id`, `topic_id`, `title`, `slug`, `detail`, `image`, `type`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(33, 1, 'GRAND OPENING TOTODAY CẦN THƠ', 'grand-opening-totoday-can-tho', '<p>Ngo&agrave;i kh&ocirc;ng gian sang trọng v&agrave; trẻ trung với nhiều g&oacute;c xinh lung linh cho FRIENDs thoải m&aacute;i &ldquo;sống ảo&rdquo;, TOTODAY Cần Thơ c&ograve;n mang đến thật nhiều thiết kế s&agrave;nh điệu v&agrave; c&aacute; t&iacute;nh nh&acirc;n dịp khai trương n&agrave;y.&nbsp;</p>\n\n<p>Hơn nữa, dịp khai trương n&agrave;y c&ograve;n hứa hẹn sẽ &ldquo;đốn tim&rdquo; c&aacute;c t&iacute;n đồ thời trang tại Cần Thơ bằng những ưu đ&atilde;i b&ugrave;ng nổ chưa từng c&oacute;:</p>\n\n<p><strong>Chương tr&igrave;nh 1: Opening</strong></p>\n\n<p><strong>Duy nhất từ 19h, ng&agrave;y 14/11/2022:</strong></p>\n\n<p>- Giảm 70% cho 10 FRIENDs đầu ti&ecirc;n đến cửa h&agrave;ng (&aacute;p dụng cho 1 sản phẩm).</p>\n\n<p>- Giảm 50% cho 15 FRIENDs đến cửa h&agrave;ng tiếp theo (&aacute;p dụng cho 1 sản phẩm).</p>\n\n<p>- Giảm 30% cho 20 FRIENDs đến cửa h&agrave;ng tiếp theo (&aacute;p dụng cho 1 sản phẩm).</p>\n\n<p>- Giảm 10% cho tất cả c&aacute;c FRIENDs c&ograve;n lại (&aacute;p dụng cho tất cả c&aacute;c sản phẩm).&nbsp;</p>\n\n<p><strong>Từ ng&agrave;y 15/11/2022 đến 16/11/2022:&nbsp;</strong>Giảm gi&aacute; 10% cho tất cả c&aacute;c sản phẩm.</p>\n\n<p><strong>Chương tr&igrave;nh 2: V&ograve;ng quay may mắn</strong></p>\n\n<p>Khi FRIENDs thực hiện like page&nbsp;<strong>TOTODAY + Comment + tag 3 người bạn v&agrave;o b&agrave;i viết ch&iacute;nh của chương tr&igrave;nh,</strong>&nbsp;FRIENDs sẽ được tham gia minigame &ldquo;V&ograve;ng quay may mắn&rdquo; với nhiều phần qu&agrave; hấp dẫn như sau:</p>\n\n<p>- &Aacute;o thun c&aacute; t&iacute;nh trị gi&aacute; 245k.&nbsp;</p>\n\n<p>- T&uacute;i tote thời trang Freestyle.</p>\n\n<p>- Sổ tay TOTODAY.</p>\n\n<p>- Voucher trị gi&aacute; 100k (&aacute;p dụng h&oacute;a đơn 500k cho lần mua h&agrave;ng tiếp theo).</p>\n\n<p>- Voucher trị gi&aacute; 50k (&aacute;p dụng h&oacute;a đơn 300k cho lần mua h&agrave;ng tiếp theo).</p>\n\n<p>- Giảm th&ecirc;m 50k cho h&oacute;a đơn bất k&igrave; (kh&ocirc;ng điều kiện).&nbsp;</p>\n\n<p><strong>Chương tr&igrave;nh 3: Tặng t&uacute;i tote &amp; m&oacute;c kh&oacute;a</strong></p>\n\n<p>- Khi mua sắm với h&oacute;a đơn từ 499.000đ, FRIENDs sẽ được tặng ngay 1 chiếc t&uacute;i tote thời trang Freestyle, thỏa sức mix&amp;match c&ugrave;ng nhiều phong c&aacute;ch (&aacute;p dụng sau chiết khấu).</p>\n\n<p>- Ngo&agrave;i ra, những chiếc m&oacute;c kh&oacute;a cực dễ thương đang chờ đợi chủ nh&acirc;n nữa đ&oacute; (&aacute;p dụng khi ph&aacute;t sinh h&oacute;a đơn trong thời gian diễn ra chương tr&igrave;nh).</p>\n\n<p><strong>Chương tr&igrave;nh 4:</strong></p>\n\n<p>- Giảm ngay 100k cho 1 sản phẩm nguy&ecirc;n gi&aacute; khi FRIENDs cầm tờ rơi GRAND OPENING CẦN THƠ 2&nbsp;đến cửa h&agrave;ng trong suốt thời gian diễn ra chương tr&igrave;nh.&nbsp;</p>\n\n<p><strong>Chương tr&igrave;nh 5: Voucher Lumos Cake &amp; Bread</strong></p>\n\n<p>- Giảm ngay 30% cho tất cả sản phẩm khi FRIENDs sử dụng voucher của tiệm b&aacute;nh Lumos Cake &amp; Bread trong suốt thời gian diễn ra chương tr&igrave;nh.</p>\n\n<p><em>Tất cả 5 chương tr&igrave;nh được&nbsp;&aacute;p dụng tại cửa h&agrave;ng 22 Nguy&ecirc;̃n Vi&ecirc;̣t H&ocirc;̀ng, Qu&acirc;̣n Ninh Ki&ecirc;̀u, TP. C&acirc;̀n Thơ&nbsp;từ ng&agrave;y 14/11/2022 đến hết 16/11/2022.&nbsp;</em></p>\n\n<p><strong>Điều kiện &aacute;p dụng:</strong></p>\n\n<p>- Kh&ocirc;ng &aacute;p dụng chung với chiết khấu VIP.</p>\n\n<p>- Kh&ocirc;ng &aacute;p dụng đồng thời với c&aacute;c chương tr&igrave;nh khuyến m&atilde;i kh&aacute;c.&nbsp;</p>\n\n<p>- FRIENDs được t&iacute;ch lũy điểm dựa tr&ecirc;n doanh số thanh to&aacute;n cuối c&ugrave;ng.</p>\n\n<p>- Kh&ocirc;ng &aacute;p dụng đổi trả đối với sản phẩm giảm gi&aacute;.</p>\n\n<p>-----------------------------</p>\n\n<p><img src=\"chrome-extension://bpggmmljdiliancllaapiggllnkbjocb/logo/48.png\" /></p>\n', 'post-1.jpg', 'post', 'GRAND OPENING TOTODAY CẦN THƠ', 'GRAND OPENING TOTODAY CẦN THƠ', '2022-11-22 12:50:14', 1, '2022-11-22 12:56:09', 1, 1),
(34, 1, 'DEAL SHOCK THÁNG 11: CHỐT GỌN QUẦN JEAN ĐEN SIÊU HOT CHỈ VỚI 299K', 'deal-shock-thang-11-chot-gon-quan-jean-den-sieu-hot-chi-voi-299k', '<p>Với m&ocirc;̃i hóa đơn từ 300k mua tại website hoặc fanpage của TOTODAY, FRIENDs có ngay 01 ưu đãi mua HOT ITEM jean đen mã M1QJN04201FSFTR chỉ với 299k đ&ecirc;́n h&ecirc;́t tháng 11 này.</p>\r\n\r\n<p><strong>Điều kiện &aacute;p dụng:</strong></p>\r\n\r\n<ul>\r\n	<li>Chương tr&igrave;nh diễn ra đến hết th&aacute;ng 11.</li>\r\n	<li>Chương tr&igrave;nh chỉ &aacute;p dụng tại 02 k&ecirc;nh mua sắm online l&agrave; Website v&agrave; Fanpage ch&iacute;nh của TOTODAY.</li>\r\n	<li>FRIENDs được t&iacute;ch lũy điểm dựa tr&ecirc;n doanh số thanh to&aacute;n cuối c&ugrave;ng.</li>\r\n</ul>\r\n', 'post-1.jpg', 'post', 'DEAL SHOCK THÁNG 11: CHỐT GỌN QUẦN JEAN ĐEN SIÊU HOT CHỈ VỚI 299K', 'DEAL SHOCK THÁNG 11: CHỐT GỌN QUẦN JEAN ĐEN SIÊU HOT CHỈ VỚI 299K', '2022-11-22 13:01:25', 1, '2022-11-22 13:01:25', 1, 1),
(35, 1, 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', 'khai-tiec-sinh-nhat-bat-tung-bat-ngo', '<p><strong>RINH QU&Agrave; BOM TẤN TRỊ GI&Aacute; 500K</strong></p>\r\n\r\n<p>Với mỗi h&oacute;a đơn 999k, kh&aacute;ch h&agrave;ng sẽ nhận ngay 1 combo qu&agrave; trị gi&aacute; 500k bao gồm:</p>\r\n\r\n<p>-&nbsp;T&uacute;i tote thời trang Freestyle.</p>\r\n\r\n<p>- Chiếc n&oacute;n thời trang c&aacute; t&iacute;nh.</p>\r\n\r\n<p>- Sổ tay thanh lịch cho c&aacute;c bạn trẻ .</p>\r\n\r\n<p>- B&uacute;t bi thương hiệu Totoday.</p>\r\n\r\n<p>- Phụ kiện m&oacute;c kh&oacute;a trẻ trung.&nbsp;</p>\r\n\r\n<p>- Đặc biệt l&agrave; voucher trị gi&aacute; 100k (&aacute;p dụng cho h&oacute;a đơn 500k, từ ng&agrave;y 20/10 đến 31/12).</p>\r\n\r\n<p><em>Chương tr&igrave;nh &aacute;p dụng tr&ecirc;n to&agrave;n hệ thống cửa h&agrave;ng Totoday v&agrave; online kể từ ng&agrave;y 08/10/2022 đến 16/10/2022.&nbsp;</em></p>\r\n\r\n<p><em><strong>Điều kiện &aacute;p dụng:</strong></em></p>\r\n\r\n<p><em>- Kh&ocirc;ng &aacute;p dụng cấp số nh&acirc;n.</em></p>\r\n\r\n<p><em>- Qu&agrave; tặng kh&ocirc;ng c&oacute; gi&aacute; trị quy đổi th&agrave;nh tiền mặt.</em></p>\r\n\r\n<p><em>- C&aacute;c sản phẩm tặng kh&ocirc;ng &aacute;p dụng ch&iacute;nh s&aacute;ch đổi trả.</em></p>\r\n\r\n<p><em>- Kh&ocirc;ng &aacute;p dụng chung với c&aacute;c voucher giảm gi&aacute; v&agrave; CTKM kh&aacute;c.</em></p>\r\n\r\n<p><em>- &Aacute;p dụng chung với chiết khấu VIP, t&iacute;nh tr&ecirc;n gi&aacute; trị h&oacute;a đơn thanh to&aacute;n cuối c&ugrave;ng sau chiết khấu.</em></p>\r\n\r\n<p><strong>THỬ TH&Aacute;CH MINIGAME &ldquo;THỔI NẾN KH&Ocirc;NG TẮT&rdquo;</strong></p>\r\n\r\n<p>Với mỗi h&oacute;a đơn mua h&agrave;ng, kh&aacute;ch h&agrave;ng sẽ được tham gia minigame &ldquo;Thổi nến nhận qu&agrave;&rdquo; c&ugrave;ng Totoday c&oacute; thể lệ như sau:</p>\r\n\r\n<p>- Mỗi kh&aacute;ch h&agrave;ng sẽ được tham gia thổi 3 lần/ lần chơi, kh&aacute;ch h&agrave;ng thổi tắt nến tr&ecirc;n b&aacute;nh kem sẽ được nhận&nbsp;<strong>1 voucher trị gi&aacute; 50k</strong>&nbsp;(kh&ocirc;ng &aacute;p dụng với phụ kiện, từ ng&agrave;y 20/10 đến 31/12).</p>\r\n\r\n<p>- Quy định khoảng c&aacute;ch: Kh&aacute;ch h&agrave;ng đứng tại vạch, c&aacute;ch b&aacute;nh kem 60cm (1 &ocirc; gạch).</p>\r\n\r\n<p><em>Chương tr&igrave;nh &aacute;p dụng tr&ecirc;n to&agrave;n hệ thống cửa h&agrave;ng Totoday từ ng&agrave;y 08/10/2022 đến 16/10/2022.&nbsp;</em></p>\r\n\r\n<p>Đến Totoday rinh qu&agrave; khủng v&agrave; dự tiệc sinh nhật c&ugrave;ng ch&uacute;ng m&igrave;nh FRIENDs nh&eacute;!</p>\r\n\r\n<p>-----------------------------</p>\r\n', 'post-1.jpg', 'post', 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', 'KHAI TIỆC SINH NHẬT, BẬT TUNG BẤT NGỜ', '2022-11-22 13:03:06', 1, '2022-11-22 13:03:06', 1, 1),
(36, NULL, 'Chính sách đổi hàng', 'chinh-sach-doi-hang', '1. Điều kiện đổi trả\nQuý Khách hàng cần kiểm tra tình trạng hàng hóa và có thể đổi hàng/ trả lại hàng ngay tại thời điểm giao/nhận hàng trong những trường hợp sau:\n\nHàng không đúng chủng loại, mẫu mã trong đơn hàng đã đặt hoặc như trên website tại thời điểm đặt hàng. Không đủ số lượng, không đủ bộ như trong đơn hàng. Tình trạng bên ngoài bị ảnh hưởng như rách bao bì, bong tróc, bể vỡ… Khách hàng có trách nhiệm trình giấy tờ liên quan chứng minh sự thiếu sót trên để hoàn thành việc hoàn trả/đổi trả hàng hóa.<br></br>2. Quy định về thời gian thông báo và gửi sản phẩm đổi trả Thời gian thông báo đổi trả: trong vòng 48h kể từ khi nhận sản phẩm đối với trường hợp sản phẩm thiếu phụ kiện, quà tặng hoặc bể vỡ. Thời gian gửi chuyển trả sản phẩm: trong vòng 14 ngày kể từ khi nhận sản phẩm. Địa điểm đổi trả sản phẩm: Khách hàng có thể mang hàng trực tiếp đến văn phòng/ cửa hàng của chúng tôi hoặc chuyển qua đường bưu điện. Trong trường hợp Quý Khách hàng có ý kiến đóng góp/khiếu nại liên quan đến chất lượng sản phẩm, Quý Khách hàng vui lòng liên hệ đường dây chăm sóc khách hàng của chúng tôi\nQuý Khách hàng cần kiểm tra tình trạng hàng hóa và có thể đổi hàng/ trả lại hàng ngay tại thời điểm giao/nhận hàng trong những trường hợp sau:\n\nHàng không đúng chủng loại, mẫu mã trong đơn hàng đã đặt hoặc như trên website tại thời điểm đặt hàng. Không đủ số lượng, không đủ bộ như trong đơn hàng. Tình trạng bên ngoài bị ảnh hưởng như rách bao bì, bong tróc, bể vỡ… Khách hàng có trách nhiệm trình giấy tờ liên quan chứng minh sự thiếu sót trên để hoàn thành việc hoàn trả/đổi trả hàng hóa.', 'chinh-sach-doi-hang.jpg', 'page', 'Chính sách đổi hàng', 'Chính sách đổi hàng', '2022-11-22 13:07:28', 1, '2022-11-22 13:07:28', 1, 1),
(37, NULL, 'Chính sách bảo hành', 'chinh-sach-bao-hanh', '\n1. Bảo hành là gì?\nTheo định nghĩa nêu trong từ điển “bảo hành” là “việc thực hiện đảm bảo bằng văn bản sẽ được nhà sản xuất phát cho người mua. Nội dung trong văn bản sẽ đề cập tới vấn đề sẽ cam kết sửa chữa, thay thế sản phẩm nếu cần tại một khoảng thời gian nhất định”. Hiểu theo cách đơn giản thì đây chính là một bản cam kết chính thức giữa nhà sản xuất với người mua hàng (Đối tượng mua sản phẩm). Và đảm bảo trong khoảng thời gian cố định đưa ra, chất lượng sản phẩm sẽ đáp ứng đủ mong đợi từ phía người mua.\n\nVí dụ cụ thể: Nếu bạn mua sản phẩm trong 1 cửa hàng điện tử, nhân viên bán hàng sẽ cung cấp cho bạn thông tin rằng bạn sẽ nhận được bảo hành 3 năm nếu bạn mua ổ đĩa cứng  của thương hiệu nào đó. Thì có nghĩa là nhà sản xuất ổ đĩa cứng này sẽ chịu trách nhiệm sửa chữa, thay thế và có thể hoàn tiền 100% cho bạn nếu như sản phẩm không đáp ứng đủ các chức năng của nó  trong 3 năm dùng.\n\n \n\n2. Chính sách bảo hành là gì?\nChính sách bảo hành gồm các quy định, cam kết của nhà sản xuất (NSX) hay của người bán với người mua sản phẩm của họ. Độ mạnh, yếu từ các cam kết này sẽ phụ thuộc theo  mức độ uy tín của người bán, người đề ra bản cam kết đó. Và thông thường thì công ty càng lớn,sự uy tín sẽ càng cao và chính sách bảo hành cũng sẽ được đảm bảo.', 'chinh-sach-bao-hanh.png', 'page', 'Chính sách bảo hành', 'Chính sách bảo hành', '2022-11-22 13:08:13', 1, '2022-11-22 13:08:13', 1, 1),
(38, NULL, 'Chính Sách Hoàn Tiền', 'chinh-sach-hoan-tien', ' \n\n1. Bảo hành là gì?\nTheo định nghĩa nêu trong từ điển “bảo hành” là “việc thực hiện đảm bảo bằng văn bản sẽ được nhà sản xuất phát cho người mua. Nội dung trong văn bản sẽ đề cập tới vấn đề sẽ cam kết sửa chữa, thay thế sản phẩm nếu cần tại một khoảng thời gian nhất định”. Hiểu theo cách đơn giản thì đây chính là một bản cam kết chính thức giữa nhà sản xuất với người mua hàng (Đối tượng mua sản phẩm). Và đảm bảo trong khoảng thời gian cố định đưa ra, chất lượng sản phẩm sẽ đáp ứng đủ mong đợi từ phía người mua.\n\nVí dụ cụ thể: Nếu bạn mua sản phẩm trong 1 cửa hàng điện tử, nhân viên bán hàng sẽ cung cấp cho bạn thông tin rằng bạn sẽ nhận được bảo hành 3 năm nếu bạn mua ổ đĩa cứng  của thương hiệu nào đó. Thì có nghĩa là nhà sản xuất ổ đĩa cứng này sẽ chịu trách nhiệm sửa chữa, thay thế và có thể hoàn tiền 100% cho bạn nếu như sản phẩm không đáp ứng đủ các chức năng của nó  trong 3 năm dùng.\n\n \n\n2. Chính sách bảo hành là gì?\nChính sách bảo hành gồm các quy định, cam kết của nhà sản xuất (NSX) hay của người bán với người mua sản phẩm của họ. Độ mạnh, yếu từ các cam kết này sẽ phụ thuộc theo  mức độ uy tín của người bán, người đề ra bản cam kết đó. Và thông thường thì công ty càng lớn,sự uy tín sẽ càng cao và chính sách bảo hành cũng sẽ được đảm bảo.', 'chinh-sach-hoan-tien.jpg', 'page', 'Chính Sách Hoàn Tiền', 'Chính Sách Hoàn Tiền', '2022-11-22 13:11:30', 1, '2022-11-22 13:11:30', 1, 1),
(39, NULL, 'Giới thiệu', 'gioi-thieu', '<p>Shop Thời Trang Dịu Hiền với phương ch&acirc;m l&agrave; &ldquo; Sẽ lu&ocirc;n lu&ocirc;n l&agrave; người bạn đồng h&agrave;nh c&ugrave;ng với phong c&aacute;ch thời trang của bạn&rdquo;. Dịu hiền sẽ l&agrave; một trong những shop đồ thời trang uy t&iacute;n v&agrave; chất lượng nhất tại Tp.HCM ch&uacute;ng t&ocirc;i lu&ocirc;n mang đến cho kh&aacute;ch h&agrave;ng những sản phẩm mới nhất v&agrave; chất lượng, gi&aacute; th&agrave;nh hợp l&yacute; nhất tại cửa h&agrave;ng Thời Trang Dịu Hiền dưới đ&acirc;y l&agrave; đối n&eacute;t giới thiệu cơ bản về Shop Thời Trang Nữ Cao Cấp Dịu Hiền.</p>\r\n\r\n<p>Blog giới thiệu thời trang</p>\r\n\r\n<p>C&aacute;ch M&agrave; Thời Trang Dịu Hiền Tạo Dựng Thương Hiệu?</p>\r\n\r\n<p>Nhằm đ&aacute;p ứng được nhu cầu của người ti&ecirc;u d&ugrave;ng n&ecirc;n c&oacute; rất nhiều shop thời trang h&agrave;ng loạt được ra đời nhưng trong một khoảng thời gian ngắn rồi họ cũng lặng lẽ đ&oacute;ng cửa. Chắc c&oacute; lẽ bạn cũng rất ngạc nhi&ecirc;n khi ai đ&oacute; n&oacute;i với bạn rằng chắc c&oacute; một cửa h&agrave;ng nhỏ lẻ, kh&ocirc;ng thương hiệu m&agrave; lại tồn tại nhiều năm nay. Nhờ r&uacute;t kinh nghiệm từ những shop cửa h&agrave;ng nhỏ lẻ kh&aacute;c. Ch&iacute;nh v&igrave; vậy m&agrave; Dịu Hiền một trong những cửa h&agrave;ng shop thời trang nhỏ nhắn xinh xắn nằm tr&ecirc;n tuyến đường Nguyễn Văn Lượng&nbsp; ( Quận G&ograve; Vấp, TP. Hồ Ch&iacute; Minh ) nhờ được sự tin tưởng của kh&aacute;ch h&agrave;ng với hơn 800.000 lượt theo d&otilde;i n&ecirc;n Shop Thời Trang Nữ Cao Cấp Dịu Hiền đ&atilde; đi được hơn 10 năm chặng đường kinh doanh trong lĩnh vực thời trang đ&atilde; trở th&agrave;nh một trong những địa điểm b&aacute;n thời trang uy t&iacute;n nhất cho kh&aacute;ch h&agrave;ng lựa chọn.</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; một v&agrave;i ti&ecirc;u ch&iacute; đ&atilde; tạo n&ecirc;n thương hiệu của dịu hiền c&oacute; vị tr&iacute; tại thị trường Việt Nam cụ thể như sau :</p>\r\n\r\n<p>Khỏi nguồn từ niềm y&ecirc;u th&iacute;ch của bạn th&acirc;n</p>\r\n\r\n<p>Giới thiệu cơ bản về Thời Trang Dịu Hiền được ra đời dựa v&agrave;o t&igrave;nh y&ecirc;u m&atilde;nh liệt m&agrave; chị chủ đ&atilde; d&agrave;nh hết cả tuổi thanh xu&acirc;n để d&agrave;nh cho thời trang lu&ocirc;n mang đến cho kh&aacute;ch những sản phẩm chất lượng tốt nhất đến cho bạn.</p>\r\n\r\n<p>Mặc d&ugrave; shop dịu hiền kh&ocirc;ng phải l&agrave; một cửa h&agrave;ng rất lớn nhưng ngay từ l&uacute;c ban đầu, Chị hiền đ&atilde; x&aacute;c định mục ti&ecirc;u của m&igrave;nh l&agrave;m g&igrave; v&agrave; những kh&aacute;ch h&agrave;ng m&agrave; shop hướng tới l&agrave; đối tượng n&agrave;o. Tuy nhi&ecirc;n b&ecirc;n cạnh đ&oacute; shop cũng đồng thời t&igrave;m ra những n&eacute;t ri&ecirc;ng cho shop m&agrave; cứ thế m&agrave; Shop Thời Trang C&ocirc;ng Sở Dịu Hiền c&oacute; được chỗ vững chắc tr&ecirc;n thị trường Việt Nam hiện nay.</p>\r\n\r\n<p>Shop dịu hiền nhờ chọn được vị địa l&yacute; thuận lợi c&oacute; rất nhiều d&acirc;n văn ph&ograve;ng n&ecirc;n Dịu Hiền Shop hướng tới những kh&aacute;ch h&agrave;ng trẻ tuổi đặc biệt l&agrave; những kh&aacute;ch h&agrave;ng c&oacute; thu nhập tầm trung chủ yếu l&agrave; nh&acirc;n vi&ecirc;n văn ph&ograve;ng&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giới thiệu shop dịu hiền thời trang</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; tất cả c&aacute;c sản phẩm đa dạng v&agrave; mẫu m&atilde; chủ yếu tập trung phần nhiều v&agrave;o &Aacute;o sơ mi, Ch&acirc;n v&aacute;y, Đầm, Quần, Vest, T-shirt&hellip;nhờ thiết kế đa dạng v&agrave; phong ph&uacute; n&ecirc;n tất cả c&aacute;c d&ograve;ng sản phẩm tại shop c&oacute; thể sử dụng đi l&agrave;m, đi chơi, du lịch, d&atilde; ngoại hay thậm tr&iacute; trong những buổi tiệc sang trọng.</p>\r\n\r\n<p>Giới thiệu một v&agrave;i n&eacute;t ri&ecirc;ng tạo ấn tượng trong mắt kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>Đối với c&aacute;c shop thời trang hiện nay th&igrave; b&agrave;i to&aacute;n về lợi nhuận l&agrave; một b&agrave;i to&aacute;n kh&oacute; đối với những shop thời trang nhỏ lẻ như Cửa H&agrave;ng Thời Trang Dịu Hiền. Để giải quyết được b&agrave;i to&aacute;n lợi nhuận m&agrave; ph&acirc;n kh&uacute;c gi&aacute; của c&aacute;c sản phẩm phải vẫn nằm ở tầm trung. Dịu hiền đ&atilde; tối ưu h&oacute;a nhất từ kh&acirc;u nhập h&agrave;ng cũng như sau những nghi&ecirc;n cứu của Dịu Hiền Shop những nhu cầu của kh&aacute;ch h&agrave;ng v&agrave; xu hướng thời trang hot trong thời gian một c&aacute;ch kỹ lưỡng để shop c&oacute; thể chọn được những mẩu đẹp v&agrave; chất lượng tốt nhất.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nhận thấy được nhu cầu của kh&aacute;ch h&agrave;ng ng&agrave;y c&agrave;ng cao cấp với những sản phẩm&nbsp; độc lạ, ấn tượng v&agrave; điểm nhấn mạnh đ&aacute;ng ch&uacute; &yacute; nhất l&agrave; &ldquo;kh&ocirc;ng đụng h&agrave;ng&rdquo; n&ecirc;n ngo&agrave;i những sản phẩm nhập th&igrave; Thời Trang Dịu Hiền cũng c&oacute; thiết kế với nhiều mẫu m&atilde; mới hot trend để đ&aacute;p ứng được nhu cầu của kh&aacute;ch h&agrave;ng. N&ecirc;n từ đ&oacute; Dịu Hiền Shop v&agrave; c&acirc;u chuyện thương hiệu n&oacute; cũng bắt nguồn từ đ&oacute; &ldquo; Bạn Muốn Mua Những Sản Phẩm Thời Trang Đẹp, Độc V&agrave; Kh&ocirc;ng Đụng H&agrave;ng, Chỉ C&oacute; Tại Shop Thời Trang Cao Cấp Dịu Hiền :)&rdquo;</p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, để đối mặt với t&iacute;nh khốc liệt của thị trường n&ecirc;n Shop dịu hiền sẽ giới thiệu cho bạn những chiếc lược marketing cũng như chiếc lược kinh doanh cũng mang những phong c&aacute;ch độc đ&aacute;o ri&ecirc;ng. Đối với những mặt h&agrave;ng trưng b&agrave;y tại cửa h&agrave;ng Thời Trang Dịu Hiền chỉ trưng b&agrave;y những sản phẩm c&oacute; số lượng kham hiến, nhờ hiểu được t&acirc;m l&yacute; của kh&aacute;ch h&agrave;ng n&ecirc;n đối với việc trưng b&agrave;y như vậy kh&aacute;ch h&agrave;ng sẽ suy nghĩ nếu kh&ocirc;ng mua th&igrave; sẽ hết h&agrave;ng!</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; c&oacute; những chiến lược kinh doanh độc đ&aacute;o m&agrave; Thời Trang Dịu Hiền ng&agrave;y c&agrave;ng được nhiều kh&aacute;ch h&agrave;ng t&igrave;m đến với sớm với những ti&ecirc;u ch&iacute; &ldquo; Chất Lượng &ndash; Uy T&iacute;n &ndash; Sản Phẩm Độc Lạ &ldquo;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Kh&ocirc;ng chỉ kinh doanh quần, &aacute;o, v&aacute;y, đầm&hellip;th&igrave; shop cũng c&oacute; b&agrave;y b&aacute;n phụ kiện trang sức k&egrave;m theo để cho bạn đẹp c&agrave;ng đẹp th&ecirc;m với những bộ trang sức k&egrave;m theo. Tuy nhi&ecirc;n đ&oacute; cũng chưa phải l&agrave; những g&igrave; tạo n&ecirc;n sự th&agrave;nh c&ocirc;ng như ng&agrave;y h&ocirc;m nay của Cửa H&agrave;ng Thời Trang Dịu Hiền.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Giới thiệu shop dịu hiền thời trang</p>\r\n\r\n<p>Đặc biệt một trong những yếu tố th&agrave;nh c&ocirc;ng nhất của shop Thời Trang Quần &Aacute;o Nữ Cao Cấp Dịu Hiền đ&oacute; l&agrave; tạo dựng được một xưởng sản xuất thời trang c&ocirc;ng sở lớn nhất tại Tp.HCM.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; Thời Trang Dịu Hiền sẽ nơi lựa chọn ho&agrave;n hảo nhất d&agrave;nh cho phong c&aacute;ch thời trang bạn nh&eacute;!!!</p>\r\n\r\n<p>Mọi đ&oacute;ng g&oacute;p &yacute; kiến của qu&yacute; kh&aacute;ch vui l&ograve;ng li&ecirc;n hệ với ch&uacute;ng t&ocirc;i theo địa chỉ :</p>\r\n\r\n<p>Shop Thời Trang Dịu Hiền</p>\r\n', 'gioi-thieu.jpg', 'page', '', '', '2022-11-22 13:13:30', 1, '2022-11-22 13:13:30', 1, 1),
(40, NULL, 'Chính sách vận chuyển', 'chinh-sach-van-chuyen', ' 1. Chính sách vận chuyển?Theo định nghĩa nêu trong từ điển “bảo hành” là “việc thực hiện đảm bảo bằng văn bản sẽ được nhà sản xuất phát cho người mua. Nội dung trong văn bản sẽ đề cập tới vấn đề sẽ cam kết sửa chữa, thay thế sản phẩm nếu cần tại một khoảng thời gian nhất định”. Hiểu theo cách đơn giản thì đây chính là một bản cam kết chính thức giữa nhà sản xuất với người mua hàng (Đối tượng mua sản phẩm). Và đảm bảo trong khoảng thời gian cố định đưa ra, chất lượng sản phẩm sẽ đáp ứng đủ mong đợi từ phía người mua.Ví dụ cụ thể: Nếu bạn mua sản phẩm trong 1 cửa hàng điện tử, nhân viên bán hàng sẽ cung cấp cho bạn thông tin rằng bạn sẽ nhận được bảo hành 3 năm nếu bạn mua ổ đĩa cứng  của thương hiệu nào đó. Thì có nghĩa là nhà sản xuất ổ đĩa cứng này sẽ chịu trách nhiệm sửa chữa, thay thế và có thể hoàn tiền 100% cho bạn nếu như sản phẩm không đáp ứng đủ các chức năng của nó  trong 3 năm dùng. 2. Chính sách vận chuyển gì?Chính sách vận chuyển gồm các quy định, cam kết của nhà sản xuất (NSX) hay của người bán với người mua sản phẩm của họ. Độ mạnh, yếu từ các cam kết này sẽ phụ thuộc theo  mức độ uy tín của người bán, người đề ra bản cam kết đó. Và thông thường thì công ty càng lớn,sự uy tín sẽ càng cao và chính sách bảo hành cũng sẽ được đảm bảo.', 'chinh-sach-van-chuyen.jpg\r\n', 'page', 'Chính Sách Vận Chuyển', 'Chính Sách Vận Chuyển', '2024-01-20 08:35:30', 1, '2024-01-25 13:06:43', 8, 1),
(41, 1, 'Thời trang mới ra, đã bán gần cháy hàng', 'dich-vu', ' \n\n1. Chính sách vận chuyển?\nTheo định nghĩa nêu trong từ điển “bảo hành” là “việc thực hiện đảm bảo bằng văn bản sẽ được nhà sản xuất phát cho người mua. Nội dung trong văn bản sẽ đề cập tới vấn đề sẽ cam kết sửa chữa, thay thế sản phẩm nếu cần tại một khoảng thời gian nhất định”. Hiểu theo cách đơn giản thì đây chính là một bản cam kết chính thức giữa nhà sản xuất với người mua hàng (Đối tượng mua sản phẩm). Và đảm bảo trong khoảng thời gian cố định đưa ra, chất lượng sản phẩm sẽ đáp ứng đủ mong đợi từ phía người mua.\n\nVí dụ cụ thể: Nếu bạn mua sản phẩm trong 1 cửa hàng điện tử, nhân viên bán hàng sẽ cung cấp cho bạn thông tin rằng bạn sẽ nhận được bảo hành 3 năm nếu bạn mua ổ đĩa cứng  của thương hiệu nào đó. Thì có nghĩa là nhà sản xuất ổ đĩa cứng này sẽ chịu trách nhiệm sửa chữa, thay thế và có thể hoàn tiền 100% cho bạn nếu như sản phẩm không đáp ứng đủ các chức năng của nó  trong 3 năm dùng.\n\n \n\n2. Chính sách vận chuyển gì?\nChính sách vận chuyển gồm các quy định, cam kết của nhà sản xuất (NSX) hay của người bán với người mua sản phẩm của họ. Độ mạnh, yếu từ các cam kết này sẽ phụ thuộc theo  mức độ uy tín của người bán, người đề ra bản cam kết đó. Và thông thường thì công ty càng lớn,sự uy tín sẽ càng cao và chính sách bảo hành cũng sẽ được đảm bảo.', 'tt.jpg', 'post', 'Tin tức', 'Tin tức', '2024-01-20 09:57:54', 1, '2022-11-22 13:11:30', 1, 1),
(42, 1, 'Giảm giá cực sốc ngày 1/1/2024', 'giam-gia-cuc-soc-ngay-1-1-2024', ' 1. Chính sách vận chuyển?Theo định nghĩa nêu trong từ điển “bảo hành” là “việc thực hiện đảm bảo bằng văn bản sẽ được nhà sản xuất phát cho người mua. Nội dung trong văn bản sẽ đề cập tới vấn đề sẽ cam kết sửa chữa, thay thế sản phẩm nếu cần tại một khoảng thời gian nhất định”. Hiểu theo cách đơn giản thì đây chính là một bản cam kết chính thức giữa nhà sản xuất với người mua hàng (Đối tượng mua sản phẩm). Và đảm bảo trong khoảng thời gian cố định đưa ra, chất lượng sản phẩm sẽ đáp ứng đủ mong đợi từ phía người mua.Ví dụ cụ thể: Nếu bạn mua sản phẩm trong 1 cửa hàng điện tử, nhân viên bán hàng sẽ cung cấp cho bạn thông tin rằng bạn sẽ nhận được bảo hành 3 năm nếu bạn mua ổ đĩa cứng  của thương hiệu nào đó. Thì có nghĩa là nhà sản xuất ổ đĩa cứng này sẽ chịu trách nhiệm sửa chữa, thay thế và có thể hoàn tiền 100% cho bạn nếu như sản phẩm không đáp ứng đủ các chức năng của nó  trong 3 năm dùng. 2. Chính sách vận chuyển gì?Chính sách vận chuyển gồm các quy định, cam kết của nhà sản xuất (NSX) hay của người bán với người mua sản phẩm của họ. Độ mạnh, yếu từ các cam kết này sẽ phụ thuộc theo  mức độ uy tín của người bán, người đề ra bản cam kết đó. Và thông thường thì công ty càng lớn,sự uy tín sẽ càng cao và chính sách bảo hành cũng sẽ được đảm bảo.', 'tt.jpg', 'post', 'Tin tức', 'Tin tức', '2024-01-20 10:16:14', 1, '2024-01-25 13:08:17', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110370_product`
--

CREATE TABLE `2121110370_product` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `category_id` int UNSIGNED NOT NULL COMMENT 'Mã loại sản phẩm',
  `brand_id` int UNSIGNED NOT NULL,
  `name` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên sản phẩm',
  `slug` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Slug tên sản phẩm',
  `image` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hình ảnh',
  `detail` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Chi tiết',
  `qty` smallint UNSIGNED NOT NULL COMMENT 'Số lượng',
  `price` float(12,2) NOT NULL COMMENT 'Giá',
  `pricesale` float(12,3) NOT NULL COMMENT 'Giá khuyến mãi',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `created_at` datetime NOT NULL COMMENT 'Ngày tạo',
  `created_by` tinyint UNSIGNED NOT NULL COMMENT 'Người tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED DEFAULT NULL COMMENT 'Người sửa',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2121110370_product`
--

INSERT INTO `2121110370_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `image`, `detail`, `qty`, `price`, `pricesale`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 3, 2, 'Áo Len Dệt Kim', 'ao-len-diet-kim', 'l2.jpg', 'Ngày nay, chúng ta không chỉ bắt gặp những chiếc áo sơ mi tay dài trong môi trường công sở như trước đây mà còn có thể thường xuyên nhìn thấy những bộ outfit có sự kết hợp với áo sơ mi trong đời sống thường ngày, các buổi tiệc sang trọng,… Sở dĩ, sơ mi tay dài phổ biến trong thời trang bởi vì khả năng dễ phối đồ, tính linh hoạt phù hợp trong nhiều hoàn cảnh và cuối cùng chính là làm nổi bật được vẻ thanh lịch, chỉn chu và sang trọng cho người mặc.\n\nÁo Sơ Mi Tay Dài Nam Cotton Form Fitted - 10S21SHL004 là một món đồ không thể thiếu trong tủ đồ công sở của nhiều người. Áo được thiết kế với form hơi ôm vào phần cơ thể, phần thân sau không có ly kết hợp phần cổ trụ, vạt áo sau dài hơn vạt trước vừa tạo nên điểm nhấn vừa toát lên được phong cách hiện đại, trẻ trung.\n\n', 3, 378000.00, 370000.000, 'Áo Len Dệt Kim', '2022-11-22 18:40:37', 1, '2022-11-22 18:40:37', 1, 1),
(2, 3, 1, 'Áo Len Tay dài', 'ao-len-tay-dai', 'l3.jpg', 'Ngày nay, chúng ta không chỉ bắt gặp những chiếc áo sơ mi tay dài trong môi trường công sở như trước đây mà còn có thể thường xuyên nhìn thấy những bộ outfit có sự kết hợp với áo sơ mi trong đời sống thường ngày, các buổi tiệc sang trọng,… Sở dĩ, sơ mi tay dài phổ biến trong thời trang bởi vì khả năng dễ phối đồ, tính linh hoạt phù hợp trong nhiều hoàn cảnh và cuối cùng chính là làm nổi bật được vẻ thanh lịch, chỉn chu và sang trọng cho người mặc.\n\nÁo Sơ Mi Tay Dài Nam Cotton Form Fitted - 10S21SHL004 là một món đồ không thể thiếu trong tủ đồ công sở của nhiều người. Áo được thiết kế với form hơi ôm vào phần cơ thể, phần thân sau không có ly kết hợp phần cổ trụ, vạt áo sau dài hơn vạt trước vừa tạo nên điểm nhấn vừa toát lên được phong cách hiện đại, trẻ trung.\n\n', 1, 499000.00, 370000.000, 'Áo Len Tay dài', '2022-11-22 18:42:49', 1, '2022-11-22 18:42:49', 1, 1),
(3, 3, 2, 'Áo len trơn', 'ao-len-tron', 'l4.jpg', 'Ngày nay, chúng ta không chỉ bắt gặp những chiếc áo sơ mi tay dài trong môi trường công sở như trước đây mà còn có thể thường xuyên nhìn thấy những bộ outfit có sự kết hợp với áo sơ mi trong đời sống thường ngày, các buổi tiệc sang trọng,… Sở dĩ, sơ mi tay dài phổ biến trong thời trang bởi vì khả năng dễ phối đồ, tính linh hoạt phù hợp trong nhiều hoàn cảnh và cuối cùng chính là làm nổi bật được vẻ thanh lịch, chỉn chu và sang trọng cho người mặc.\n\nÁo Sơ Mi Tay Dài Nam Cotton Form Fitted - 10S21SHL004 là một món đồ không thể thiếu trong tủ đồ công sở của nhiều người. Áo được thiết kế với form hơi ôm vào phần cơ thể, phần thân sau không có ly kết hợp phần cổ trụ, vạt áo sau dài hơn vạt trước vừa tạo nên điểm nhấn vừa toát lên được phong cách hiện đại, trẻ trung.\n\n', 1, 300000.00, 199000.000, 'Áo len trơn', '2022-11-22 18:48:35', 1, '2022-11-22 18:48:35', 1, 1),
(4, 3, 1, 'Áo Len Cổ Tròn', 'ao-len-co-tron', 'l1.jpg', 'Ngày nay, chúng ta không chỉ bắt gặp những chiếc áo sơ mi tay dài trong môi trường công sở như trước đây mà còn có thể thường xuyên nhìn thấy những bộ outfit có sự kết hợp với áo sơ mi trong đời sống thường ngày, các buổi tiệc sang trọng,… Sở dĩ, sơ mi tay dài phổ biến trong thời trang bởi vì khả năng dễ phối đồ, tính linh hoạt phù hợp trong nhiều hoàn cảnh và cuối cùng chính là làm nổi bật được vẻ thanh lịch, chỉn chu và sang trọng cho người mặc.\n\nÁo Sơ Mi Tay Dài Nam Cotton Form Fitted - 10S21SHL004 là một món đồ không thể thiếu trong tủ đồ công sở của nhiều người. Áo được thiết kế với form hơi ôm vào phần cơ thể, phần thân sau không có ly kết hợp phần cổ trụ, vạt áo sau dài hơn vạt trước vừa tạo nên điểm nhấn vừa toát lên được phong cách hiện đại, trẻ trung.\n\n', 1, 200000.00, 199000.000, 'Áo Len Cổ Tròn Nam', '2022-11-22 18:49:40', 1, '2022-11-22 18:49:40', 1, 1),
(5, 4, 4, 'Áo Sơ Mi Nam ', 'ao-so-mi-nam', 'aa1.jpg', 'Ngày nay, chúng ta không chỉ bắt gặp những chiếc áo sơ mi tay dài trong môi trường công sở như trước đây mà còn có thể thường xuyên nhìn thấy những bộ outfit có sự kết hợp với áo sơ mi trong đời sống thường ngày, các buổi tiệc sang trọng,… Sở dĩ, sơ mi tay dài phổ biến trong thời trang bởi vì khả năng dễ phối đồ, tính linh hoạt phù hợp trong nhiều hoàn cảnh và cuối cùng chính là làm nổi bật được vẻ thanh lịch, chỉn chu và sang trọng cho người mặc.\n\nÁo Sơ Mi Tay Dài Nam Cotton Form Fitted - 10S21SHL004 là một món đồ không thể thiếu trong tủ đồ công sở của nhiều người. Áo được thiết kế với form hơi ôm vào phần cơ thể, phần thân sau không có ly kết hợp phần cổ trụ, vạt áo sau dài hơn vạt trước vừa tạo nên điểm nhấn vừa toát lên được phong cách hiện đại, trẻ trung.\n\n', 1, 200000.00, 179000.000, 'Áo Sơ Mi Nam ', '2022-11-22 19:11:51', 1, '2022-11-22 19:15:16', 1, 1),
(6, 4, 3, 'Áo Sơ Mi Nam', 'ao-so-mi-nam-tay-dai-co-gian', 'aa3.jpg', 'Ngày nay, chúng ta không chỉ bắt gặp những chiếc áo sơ mi tay dài trong môi trường công sở như trước đây mà còn có thể thường xuyên nhìn thấy những bộ outfit có sự kết hợp với áo sơ mi trong đời sống thường ngày, các buổi tiệc sang trọng,… Sở dĩ, sơ mi tay dài phổ biến trong thời trang bởi vì khả năng dễ phối đồ, tính linh hoạt phù hợp trong nhiều hoàn cảnh và cuối cùng chính là làm nổi bật được vẻ thanh lịch, chỉn chu và sang trọng cho người mặc.\n\nÁo Sơ Mi Tay Dài Nam Cotton Form Fitted - 10S21SHL004 là một món đồ không thể thiếu trong tủ đồ công sở của nhiều người. Áo được thiết kế với form hơi ôm vào phần cơ thể, phần thân sau không có ly kết hợp phần cổ trụ, vạt áo sau dài hơn vạt trước vừa tạo nên điểm nhấn vừa toát lên được phong cách hiện đại, trẻ trung.\n\n', 1, 359000.00, 299000.000, 'Áo Sơ Mi Nam Tay Dài Co Giãn', '2022-11-22 19:11:51', 1, '2022-11-22 19:14:52', 1, 1),
(7, 4, 1, 'Áo Sơ Mi Nam Tay Ngắn', 'ao-so-mi-nam-tay-ngắn', 'aa4.jpg', 'Ngày nay, chúng ta không chỉ bắt gặp những chiếc áo sơ mi tay dài trong môi trường công sở như trước đây mà còn có thể thường xuyên nhìn thấy những bộ outfit có sự kết hợp với áo sơ mi trong đời sống thường ngày, các buổi tiệc sang trọng,… Sở dĩ, sơ mi tay dài phổ biến trong thời trang bởi vì khả năng dễ phối đồ, tính linh hoạt phù hợp trong nhiều hoàn cảnh và cuối cùng chính là làm nổi bật được vẻ thanh lịch, chỉn chu và sang trọng cho người mặc.\n\nÁo Sơ Mi Tay Dài Nam Cotton Form Fitted - 10S21SHL004 là một món đồ không thể thiếu trong tủ đồ công sở của nhiều người. Áo được thiết kế với form hơi ôm vào phần cơ thể, phần thân sau không có ly kết hợp phần cổ trụ, vạt áo sau dài hơn vạt trước vừa tạo nên điểm nhấn vừa toát lên được phong cách hiện đại, trẻ trung.\n\n', 1, 179000.00, 79000.000, 'Áo Sơ Mi Nam Tay Ngắn', '2022-11-22 19:16:17', 1, '2022-11-22 19:16:17', 1, 1),
(8, 4, 2, 'Áo Sơ Mi Nam Tay Dài Trơn', 'ao-so-mi-nam-tay-dai-tron', 'aa2.jpg', 'Ngày nay, chúng ta không chỉ bắt gặp những chiếc áo sơ mi tay dài trong môi trường công sở như trước đây mà còn có thể thường xuyên nhìn thấy những bộ outfit có sự kết hợp với áo sơ mi trong đời sống thường ngày, các buổi tiệc sang trọng,… Sở dĩ, sơ mi tay dài phổ biến trong thời trang bởi vì khả năng dễ phối đồ, tính linh hoạt phù hợp trong nhiều hoàn cảnh và cuối cùng chính là làm nổi bật được vẻ thanh lịch, chỉn chu và sang trọng cho người mặc.\n\nÁo Sơ Mi Tay Dài Nam Cotton Form Fitted - 10S21SHL004 là một món đồ không thể thiếu trong tủ đồ công sở của nhiều người. Áo được thiết kế với form hơi ôm vào phần cơ thể, phần thân sau không có ly kết hợp phần cổ trụ, vạt áo sau dài hơn vạt trước vừa tạo nên điểm nhấn vừa toát lên được phong cách hiện đại, trẻ trung.\n\n', 1, 300000.00, 179000.000, 'Áo Sơ Mi Nam Tay Dài Trơn', '2022-11-22 19:16:51', 1, '2022-11-22 19:16:51', 1, 1),
(9, 5, 1, 'Quần Short Jean Nam Trơn', 'quan-shorts-jean-nam-tron', 's1.jpg', 'Quần short Jean nam đã trở thành xu hướng thời trang nổi bật hiện nay. Với những ưu điểm vượt trội như gọn gàng và tiện dụng, đặc biệt là khi thời tiết trở nên nóng bức hơn thì quần short jean nam sẽ là một item không thể thiếu trong tủ đồ của cánh mày râu. Ngoài ra, bạn còn có thể dễ dàng tìm được cho mình một item phù hợp nhất bởi sự đa dạng kiểu dáng và màu sắc của nó.\n\nQuần Short Jean Nam Trơn Form Straight - 10F22DPS001 là chiếc quần mang phong cách đơn giản và phù hợp với mọi lứa tuổi, mọi phong cách, đặc biệt trong những ngày thời tiết nóng bức thì đây chính là một sự lựa chọn tuyệt vời của các chàng. Với thiết kế form quần classic, có ống quần suông thằng đứng từ trên xuống, vừa vặn với body mang lại sự thoải mái, năng động cho người mặc. Ngoài ra, với thiết kế đơn giản, trơn giúp các chàng có thể dễ dàng biến tấu với nhiều phong cách khác nhau, mang lại đa dạng màu sắc trong thời trang thường ngày của mình.', 1, 200000.00, 200000.000, 'Quần Short Jean Nam Trơn', '2022-11-22 19:17:53', 1, '2022-11-22 19:17:53', 1, 1),
(10, 5, 3, 'Quần Short Jean Nam Denim', 'quan-shorts-jean-nam-denim', 's2.jpg', 'Quần short Jean nam đã trở thành xu hướng thời trang nổi bật hiện nay. Với những ưu điểm vượt trội như gọn gàng và tiện dụng, đặc biệt là khi thời tiết trở nên nóng bức hơn thì quần short jean nam sẽ là một item không thể thiếu trong tủ đồ của cánh mày râu. Ngoài ra, bạn còn có thể dễ dàng tìm được cho mình một item phù hợp nhất bởi sự đa dạng kiểu dáng và màu sắc của nó.\n\nQuần Short Jean Nam Trơn Form Straight - 10F22DPS001 là chiếc quần mang phong cách đơn giản và phù hợp với mọi lứa tuổi, mọi phong cách, đặc biệt trong những ngày thời tiết nóng bức thì đây chính là một sự lựa chọn tuyệt vời của các chàng. Với thiết kế form quần classic, có ống quần suông thằng đứng từ trên xuống, vừa vặn với body mang lại sự thoải mái, năng động cho người mặc. Ngoài ra, với thiết kế đơn giản, trơn giúp các chàng có thể dễ dàng biến tấu với nhiều phong cách khác nhau, mang lại đa dạng màu sắc trong thời trang thường ngày của mình.', 1, 300000.00, 300000.000, 'Quần Short Jean Nam Denim', '2022-11-22 19:19:09', 1, '2022-11-22 19:19:09', 1, 1),
(11, 5, 1, 'Jean Nam Trơn Form Straight', 'jean-nam-tron-form-straight', 's4.jpg', 'Quần short Jean nam đã trở thành xu hướng thời trang nổi bật hiện nay. Với những ưu điểm vượt trội như gọn gàng và tiện dụng, đặc biệt là khi thời tiết trở nên nóng bức hơn thì quần short jean nam sẽ là một item không thể thiếu trong tủ đồ của cánh mày râu. Ngoài ra, bạn còn có thể dễ dàng tìm được cho mình một item phù hợp nhất bởi sự đa dạng kiểu dáng và màu sắc của nó.\n\nQuần Short Jean Nam Trơn Form Straight - 10F22DPS001 là chiếc quần mang phong cách đơn giản và phù hợp với mọi lứa tuổi, mọi phong cách, đặc biệt trong những ngày thời tiết nóng bức thì đây chính là một sự lựa chọn tuyệt vời của các chàng. Với thiết kế form quần classic, có ống quần suông thằng đứng từ trên xuống, vừa vặn với body mang lại sự thoải mái, năng động cho người mặc. Ngoài ra, với thiết kế đơn giản, trơn giúp các chàng có thể dễ dàng biến tấu với nhiều phong cách khác nhau, mang lại đa dạng màu sắc trong thời trang thường ngày của mình.', 1, 199000.00, 199000.000, 'Jean Nam Trơn Form Straight', '2022-11-22 19:19:43', 1, '2022-11-22 19:19:43', 1, 1),
(12, 5, 4, 'Short Jean Nam Trơn ', 'shorts-thun-nam-tron', 's3.jpg', 'Quần short Jean nam đã trở thành xu hướng thời trang nổi bật hiện nay. Với những ưu điểm vượt trội như gọn gàng và tiện dụng, đặc biệt là khi thời tiết trở nên nóng bức hơn thì quần short jean nam sẽ là một item không thể thiếu trong tủ đồ của cánh mày râu. Ngoài ra, bạn còn có thể dễ dàng tìm được cho mình một item phù hợp nhất bởi sự đa dạng kiểu dáng và màu sắc của nó.\n\nQuần Short Jean Nam Trơn Form Straight - 10F22DPS001 là chiếc quần mang phong cách đơn giản và phù hợp với mọi lứa tuổi, mọi phong cách, đặc biệt trong những ngày thời tiết nóng bức thì đây chính là một sự lựa chọn tuyệt vời của các chàng. Với thiết kế form quần classic, có ống quần suông thằng đứng từ trên xuống, vừa vặn với body mang lại sự thoải mái, năng động cho người mặc. Ngoài ra, với thiết kế đơn giản, trơn giúp các chàng có thể dễ dàng biến tấu với nhiều phong cách khác nhau, mang lại đa dạng màu sắc trong thời trang thường ngày của mình.', 1, 179000.00, 179000.000, 'Short Jean Nam Trơn ', '2022-11-22 19:20:53', 1, '2022-11-22 19:20:53', 1, 1),
(13, 6, 1, 'Quần Dài Nam Linen', 'quan-dai-nam-linen', 'gin1.jpg', 'Quần short Jean nam đã trở thành xu hướng thời trang nổi bật hiện nay. Với những ưu điểm vượt trội như gọn gàng và tiện dụng, đặc biệt là khi thời tiết trở nên nóng bức hơn thì quần short jean nam sẽ là một item không thể thiếu trong tủ đồ của cánh mày râu. Ngoài ra, bạn còn có thể dễ dàng tìm được cho mình một item phù hợp nhất bởi sự đa dạng kiểu dáng và màu sắc của nó.\n\nQuần Short Jean Nam Trơn Form Straight - 10F22DPS001 là chiếc quần mang phong cách đơn giản và phù hợp với mọi lứa tuổi, mọi phong cách, đặc biệt trong những ngày thời tiết nóng bức thì đây chính là một sự lựa chọn tuyệt vời của các chàng. Với thiết kế form quần classic, có ống quần suông thằng đứng từ trên xuống, vừa vặn với body mang lại sự thoải mái, năng động cho người mặc. Ngoài ra, với thiết kế đơn giản, trơn giúp các chàng có thể dễ dàng biến tấu với nhiều phong cách khác nhau, mang lại đa dạng màu sắc trong thời trang thường ngày của mình.', 1, 200000.00, 200000.000, 'Quần Dài Nam Linen', '2022-11-22 19:21:58', 1, '2022-11-22 19:21:58', 1, 1),
(14, 6, 3, 'Quần Dài Kaki Nam ', 'quan-dai-kaki-nam', 'gin3.jpg', 'Quần short Jean nam đã trở thành xu hướng thời trang nổi bật hiện nay. Với những ưu điểm vượt trội như gọn gàng và tiện dụng, đặc biệt là khi thời tiết trở nên nóng bức hơn thì quần short jean nam sẽ là một item không thể thiếu trong tủ đồ của cánh mày râu. Ngoài ra, bạn còn có thể dễ dàng tìm được cho mình một item phù hợp nhất bởi sự đa dạng kiểu dáng và màu sắc của nó.\n\nQuần Short Jean Nam Trơn Form Straight - 10F22DPS001 là chiếc quần mang phong cách đơn giản và phù hợp với mọi lứa tuổi, mọi phong cách, đặc biệt trong những ngày thời tiết nóng bức thì đây chính là một sự lựa chọn tuyệt vời của các chàng. Với thiết kế form quần classic, có ống quần suông thằng đứng từ trên xuống, vừa vặn với body mang lại sự thoải mái, năng động cho người mặc. Ngoài ra, với thiết kế đơn giản, trơn giúp các chàng có thể dễ dàng biến tấu với nhiều phong cách khác nhau, mang lại đa dạng màu sắc trong thời trang thường ngày của mình.', 1, 259000.00, 259000.000, 'Quần Dài Kaki Nam ', '2022-11-22 19:22:27', 1, '2022-11-22 19:22:27', 1, 1),
(15, 6, 2, 'Quần Dài Baggy Nam ', 'quan-dai-baggy-nam', 'gin2.jpg', 'Quần short Jean nam đã trở thành xu hướng thời trang nổi bật hiện nay. Với những ưu điểm vượt trội như gọn gàng và tiện dụng, đặc biệt là khi thời tiết trở nên nóng bức hơn thì quần short jean nam sẽ là một item không thể thiếu trong tủ đồ của cánh mày râu. Ngoài ra, bạn còn có thể dễ dàng tìm được cho mình một item phù hợp nhất bởi sự đa dạng kiểu dáng và màu sắc của nó.\n\nQuần Short Jean Nam Trơn Form Straight - 10F22DPS001 là chiếc quần mang phong cách đơn giản và phù hợp với mọi lứa tuổi, mọi phong cách, đặc biệt trong những ngày thời tiết nóng bức thì đây chính là một sự lựa chọn tuyệt vời của các chàng. Với thiết kế form quần classic, có ống quần suông thằng đứng từ trên xuống, vừa vặn với body mang lại sự thoải mái, năng động cho người mặc. Ngoài ra, với thiết kế đơn giản, trơn giúp các chàng có thể dễ dàng biến tấu với nhiều phong cách khác nhau, mang lại đa dạng màu sắc trong thời trang thường ngày của mình.', 1, 259000.00, 259000.000, 'Quần Dài Baggy Nam ', '2022-11-22 19:22:56', 1, '2022-11-22 19:22:56', 1, 1),
(16, 16, 1, 'Áo polo trắng', 'ao-polo-trang', 'áo1.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 37900.00, 19900.000, 'Áo polo trắng', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(17, 18, 2, 'Áo Khoác Nam Tay Dài Nylon ', 'ao-khoac-nam-tay-nylon', 'khoac1.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 599000.00, 900000.000, 'Áo Khoác Nam Tay Dài Nylon ', '2022-11-22 19:24:58', 1, '2022-11-22 19:24:58', 1, 1),
(18, 18, 1, 'Áo Khoác Nam Sọc Caro ', 'ao-khoac-nam-soc-caro', 'khoac2.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 299000.00, 299000.000, 'Áo Khoác Nam Sọc Caro ', '2022-11-22 19:26:02', 1, '2022-11-22 19:26:02', 1, 1),
(19, 18, 4, 'Áo Khoác Nam Họa TiếT', 'ao-khoac-nam-hoa-tiet', 'khoac4.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 378000.00, 378000.000, 'Áo Khoác Nam Họa Tiết', '2022-11-22 19:26:25', 1, '2022-11-22 19:26:25', 1, 1),
(20, 18, 1, 'Áo Khoác Nam Tay Dài ', 'ao-khoac-nam-tay-dai', 'khoac3.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 799000.00, 799000.000, 'Áo Khoác Nam Tay Dài ', '2022-11-22 19:26:44', 1, '2022-11-22 19:26:44', 1, 1),
(21, 8, 3, 'Áo Sơ Mi Nữ Tay Dài', 'ao-so-mi-nu-tay-dai', 'sm1.jpg', 'Áo Sơ Mi Nữ Tay Dài Coffee Túi Đắp Trơn Form Loose - 10S23SHLW025 với form dáng suông rộng mang lại sự thoải mái cho người mặc. Đặc biệt chính là chất vải coffee nhẹ bền, hấp thụ mùi cơ thể cực tốt và có khả năng chống tia UV cực tím hiệu quả. Đây cũng là một trong những chất vải xanh thân thiện môi trường được sử dụng phổ biến trong các sản phẩm cao cấp. Một sản phẩm được đánh giá cao không chỉ vì thiết kế đẹp mà chất vải thân thiện làn da, đặc biệt da chị em phụ nữ càng quan trọng hơn.', 1, 200000.00, 159000.000, 'Áo Sơ Mi Nữ Tay Dài', '2022-11-22 19:29:53', 1, '2022-11-22 19:29:53', 1, 1),
(22, 8, 1, 'Áo Sơ Mi Nữ xám tay dài', 'ao-so-mi-nu-xam', 'sm2.jpg', 'Áo Sơ Mi Nữ Tay Dài Coffee Túi Đắp Trơn Form Loose - 10S23SHLW025 với form dáng suông rộng mang lại sự thoải mái cho người mặc. Đặc biệt chính là chất vải coffee nhẹ bền, hấp thụ mùi cơ thể cực tốt và có khả năng chống tia UV cực tím hiệu quả. Đây cũng là một trong những chất vải xanh thân thiện môi trường được sử dụng phổ biến trong các sản phẩm cao cấp. Một sản phẩm được đánh giá cao không chỉ vì thiết kế đẹp mà chất vải thân thiện làn da, đặc biệt da chị em phụ nữ càng quan trọng hơn.', 1, 300000.00, 279000.000, 'Áo Sơ Mi Nữ Tay Dài', '2022-11-22 19:30:23', 1, '2022-11-22 19:30:23', 1, 1),
(23, 8, 2, 'Sơ Mi Nữ Tay Dài Trơn ', 'so-mi-nu-tay-dai-tron', 'sm3.jpg', 'Áo Sơ Mi Nữ Tay Dài Coffee Túi Đắp Trơn Form Loose - 10S23SHLW025 với form dáng suông rộng mang lại sự thoải mái cho người mặc. Đặc biệt chính là chất vải coffee nhẹ bền, hấp thụ mùi cơ thể cực tốt và có khả năng chống tia UV cực tím hiệu quả. Đây cũng là một trong những chất vải xanh thân thiện môi trường được sử dụng phổ biến trong các sản phẩm cao cấp. Một sản phẩm được đánh giá cao không chỉ vì thiết kế đẹp mà chất vải thân thiện làn da, đặc biệt da chị em phụ nữ càng quan trọng hơn.', 1, 200000.00, 159000.000, 'Sơ Mi Nữ Tay Dài Trơn ', '2022-11-22 19:30:45', 1, '2022-11-22 19:30:45', 1, 1),
(24, 8, 4, 'Áo Sơ Mi Nữ đen tay dài', 'ao-so-mi-nu-den-dai-tay', 'sm4.jpg', 'Áo Sơ Mi Nữ Tay Dài Coffee Túi Đắp Trơn Form Loose - 10S23SHLW025 với form dáng suông rộng mang lại sự thoải mái cho người mặc. Đặc biệt chính là chất vải coffee nhẹ bền, hấp thụ mùi cơ thể cực tốt và có khả năng chống tia UV cực tím hiệu quả. Đây cũng là một trong những chất vải xanh thân thiện môi trường được sử dụng phổ biến trong các sản phẩm cao cấp. Một sản phẩm được đánh giá cao không chỉ vì thiết kế đẹp mà chất vải thân thiện làn da, đặc biệt da chị em phụ nữ càng quan trọng hơn.', 1, 199000.00, 79000.000, 'Áo Sơ Mi Nữ đen tay dài', '2022-11-22 19:31:09', 1, '2022-11-22 19:31:09', 1, 1),
(25, 10, 2, 'Short Jean Nữ Ống Suông', 'short-jean-nu-ong-suong', 'sn3.jpg', 'Quần Short Jean Nữ Ống Suông Trơn Form Straight - 10F23DPSW002 là dòng sản phẩm được dệt từ sợi REPREVE, một loại sợi nổi bật trong thời trang tái chế được sản xuất từ chai nhựa, mặc dù là loại sợi tái chế nhưng vẫn luôn giữ được những ưu điểm nổi bật của vải polyester như bền đẹp, hạn chế nhăn, giữ form quần áo tốt,... Sản phẩm quần áo tái chế từ sợi REPREVE là một xu hướng thời trang bền vững mà Routine luôn hướng đến để góp phần bảo vệ môi trường, giảm thiểu rác thải nhựa và giúp hạn chế lượng khí thải nhà kính từ quá trình xử lý polyester nguyên chất.', 1, 400000.00, 400000.000, 'Short Jean Nữ Ống Suông', '2022-11-22 19:34:00', 1, '2022-11-22 19:34:00', 1, 1),
(26, 10, 2, 'Quần Short Nữ Cotton', 'quan-short-nu-cotton', 'sn1.jpg', 'Quần Jean Nữ Họa Tiết Thêu Form Straight Crop - 10S23DPAW012 là một item làm biết bao cô nàng mê mẩn với thiết kế đơn giản nhưng vô cùng trẻ trung và năng động. Form quần classic suông từ trên xuống, eo và mông được may hơi ôm vào người, phần ống hơi rộng và xòe nhẹ kết hợp cùng chất liệu thoải mái nên dễ dàng sử dụng trong mọi hoàn cảnh từ đi học đến đi làm.\n\nQua nhiều năm phát triển, quần jean hay còn gọi là quần bò đã trở thành một món đồ rất thông dụng trong tủ quần áo của phái đẹp. Với thiết kế và màu sắc basic, chiếc quần jean dễ dàng mix-match với nhiều trang phục khác nhau kết hợp với họa tiết thêu nhỏ tinh tế sẽ là điểm nhấn để chiếc quần thêm phần trẻ trung, năng động.', 1, 2000000.00, 2000000.000, 'Quần Short Nữ Cotton', '2022-11-22 19:34:21', 1, '2022-11-22 19:34:21', 1, 1),
(27, 10, 3, 'Quần Short Jean Nữ', 'quan-short-jean-nu', 'sn2.jpg', 'Quần Jean Nữ Họa Tiết Thêu Form Straight Crop - 10S23DPAW012 là một item làm biết bao cô nàng mê mẩn với thiết kế đơn giản nhưng vô cùng trẻ trung và năng động. Form quần classic suông từ trên xuống, eo và mông được may hơi ôm vào người, phần ống hơi rộng và xòe nhẹ kết hợp cùng chất liệu thoải mái nên dễ dàng sử dụng trong mọi hoàn cảnh từ đi học đến đi làm.\n\nQua nhiều năm phát triển, quần jean hay còn gọi là quần bò đã trở thành một món đồ rất thông dụng trong tủ quần áo của phái đẹp. Với thiết kế và màu sắc basic, chiếc quần jean dễ dàng mix-match với nhiều trang phục khác nhau kết hợp với họa tiết thêu nhỏ tinh tế sẽ là điểm nhấn để chiếc quần thêm phần trẻ trung, năng động.', 1, 300000.00, 300000.000, 'Quần Short Jean Nữ', '2022-11-22 19:34:52', 1, '2022-11-22 19:34:52', 1, 1),
(28, 10, 1, 'Quần jean liền sườn lai tưa', 'quan-jean-lien-suon-lai-tua', 'qq4.jpg', 'Quần Jean Nữ Ống Suông Họa Tiết Thêu Form Straight - 10S23DPAW009 là kiểu quần jean sành điệu dành cho các cô nàng yêu thích sự trẻ trung, năng động:\n\nChất jean dệt đôi hiện đại, màu sắc ít lỗi mốt\nVải dày dặn, có độ bền cao, thoáng khí và giữ form rất tốt\nForm quần ống suông hiện đại, với phần ống rộng dễ dàng che đi những khuyết điểm trên đôi chân\nHọa tiết thêu độc đáo, mới lạ tạo điểm nhấn đặc biệt cho chiếc quần cũng như tổng thể của bạn\nVới mẫu quần jean này các nàng có thể thoải mái mặc đi dạo phố, đi làm hay hẹn hò cùng người ấy.', 1, 379000.00, 400000.000, 'Quần jean liền sườn lai tưa', '2022-11-22 19:35:13', 1, '2022-11-22 19:35:13', 1, 1),
(29, 11, 3, 'Quần Jean Nữ Ống Suông', 'quan-jean-nu-ong-suong', 'qq3.jpg', 'Quần Jean Nữ Ống Suông Họa Tiết Thêu Form Straight - 10S23DPAW009 là kiểu quần jean sành điệu dành cho các cô nàng yêu thích sự trẻ trung, năng động:\n\nChất jean dệt đôi hiện đại, màu sắc ít lỗi mốt\nVải dày dặn, có độ bền cao, thoáng khí và giữ form rất tốt\nForm quần ống suông hiện đại, với phần ống rộng dễ dàng che đi những khuyết điểm trên đôi chân\nHọa tiết thêu độc đáo, mới lạ tạo điểm nhấn đặc biệt cho chiếc quần cũng như tổng thể của bạn\nVới mẫu quần jean này các nàng có thể thoải mái mặc đi dạo phố, đi làm hay hẹn hò cùng người ấy.', 1, 379000.00, 900000.000, 'Quần Jean Nữ Ống Suông', '2022-11-22 19:38:14', 1, '2022-11-22 19:38:15', 1, 1),
(30, 11, 1, 'Quần Jean Nữ Họa Tiết Thêu', 'quan-jean-nu-hoa-tiet-theu', 'qq2.jpg', 'Quần Jean Nữ Họa Tiết Thêu Form Straight Crop - 10S23DPAW012 là một item làm biết bao cô nàng mê mẩn với thiết kế đơn giản nhưng vô cùng trẻ trung và năng động. Form quần classic suông từ trên xuống, eo và mông được may hơi ôm vào người, phần ống hơi rộng và xòe nhẹ kết hợp cùng chất liệu thoải mái nên dễ dàng sử dụng trong mọi hoàn cảnh từ đi học đến đi làm.\n\nQua nhiều năm phát triển, quần jean hay còn gọi là quần bò đã trở thành một món đồ rất thông dụng trong tủ quần áo của phái đẹp. Với thiết kế và màu sắc basic, chiếc quần jean dễ dàng mix-match với nhiều trang phục khác nhau kết hợp với họa tiết thêu nhỏ tinh tế sẽ là điểm nhấn để chiếc quần thêm phần trẻ trung, năng động.', 1, 300000.00, 400000.000, 'Quần Jean Nữ Họa Tiết Thêu', '2022-11-22 19:38:39', 1, '2022-11-22 19:38:39', 1, 1),
(31, 11, 3, 'Quần Jean Nữ Tưa Lai Trơn', 'quan-jean-nu-tua-lai-tron', 'qq1.jpg', 'Quần Jean Nữ Họa Tiết Thêu Form Straight Crop - 10S23DPAW012 là một item làm biết bao cô nàng mê mẩn với thiết kế đơn giản nhưng vô cùng trẻ trung và năng động. Form quần classic suông từ trên xuống, eo và mông được may hơi ôm vào người, phần ống hơi rộng và xòe nhẹ kết hợp cùng chất liệu thoải mái nên dễ dàng sử dụng trong mọi hoàn cảnh từ đi học đến đi làm.\n\nQua nhiều năm phát triển, quần jean hay còn gọi là quần bò đã trở thành một món đồ rất thông dụng trong tủ quần áo của phái đẹp. Với thiết kế và màu sắc basic, chiếc quần jean dễ dàng mix-match với nhiều trang phục khác nhau kết hợp với họa tiết thêu nhỏ tinh tế sẽ là điểm nhấn để chiếc quần thêm phần trẻ trung, năng động.', 1, 599000.00, 900000.000, 'Quần Jean Nữ Tưa Lai Trơn', '2022-11-22 19:38:59', 1, '2022-11-22 19:38:59', 1, 1),
(32, 12, 4, 'Chân váy trắng', 'chan-vay-trang', 'vay2.jpg', 'Hàng cao cấp, chất lượng, thoáng mát', 1, 259000.00, 199000.000, 'Chân váy trắng', '2022-11-22 19:39:47', 1, '2022-11-22 19:39:48', 1, 1),
(33, 12, 1, 'Chân váy ngắn', 'chan-vay-ngan', 'vay1.jpg', 'Hàng cao cấp, chất lượng, thoáng mát', 1, 359000.00, 199000.000, 'Chân váy ngắn', '2022-11-22 19:41:15', 1, '2022-11-22 19:41:15', 1, 1),
(34, 12, 2, 'Chân váy dài', 'chan-vay-dai', 'vay3.jpg', 'Hàng cao cấp, chất lượng, thoáng mát', 1, 599000.00, 399000.000, 'Chân váy dài', '2022-11-22 19:41:36', 1, '2022-11-22 19:41:36', 1, 1),
(35, 12, 3, 'Chân váy Âu', 'chan-vay-au', 'vay4.jpg', 'Hàng cao cấp, chất lượng, thoáng mát', 1, 479000.00, 399000.000, 'Chân váy Âu', '2022-11-22 19:41:58', 1, '2022-11-22 19:41:58', 1, 1),
(36, 12, 1, 'Váy Nữ Nhún Vai Tay Lửng Cổ', 'vay-nu-nhun-cai-tay-lung-co', 'v5.jpg', 'Hàng cao cấp, chất lượng, thoáng mát', 1, 799000.00, 599000.000, 'Váy Nữ Nhún Vai Tay Lửng Cổ', '2022-11-22 19:42:21', 1, '2024-01-21 19:19:08', 1, 1),
(37, 16, 1, 'Áo polo đen', 'ao-polo-den', 'ao2.1.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 379000.00, 199000.000, 'Áo polo đen', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(38, 16, 1, 'Áo polo xám', 'ao-polo-xam', 'ao3.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 379000.00, 199000.000, 'Áo polo xám', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(39, 16, 3, 'Áo polo xanh', 'ao-polo-xanh', 'ao4.11.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 379000.00, 199000.000, 'Áo polo xanh', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(40, 16, 1, 'Áo polo nâu', 'ao-polo-nau', 'p1.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 279000.00, 159000.000, 'Áo polo nâu', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(41, 16, 1, 'Áo polo tím', 'ao-polo-tim', 'p2.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 279000.00, 149000.000, 'Áo polo tím', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(42, 16, 1, 'Áo polo biển', 'ao-polo-bien', 'p3.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 299000.00, 149000.000, 'Áo polo biển', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(43, 16, 4, 'Áo polo pe', 'ao-polo-pe', 'p4.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 299000.00, 179000.000, 'Áo polo pe', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(44, 16, 1, 'Áo polo vàng', 'ao-polo-vang', 'p6.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 299000.00, 179000.000, 'Áo polo vàng', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(45, 16, 1, 'Áo polo xọc X', 'ao-polo-xoc-X', 'p7.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 399000.00, 279000.000, 'Áo polo xọc X', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(46, 16, 4, 'Áo polo xọc', 'ao-polo-xoc', 'p8.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 399000.00, 279000.000, 'Áo polo xọc', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(47, 17, 1, 'Áo Thun Nữ Croptop', 'ao-thun-nu-croptop', 'nu1.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 399000.00, 279000.000, 'Áo Thun Nữ Croptop', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(48, 17, 4, 'Áo Thun Nữ Tay Dài', 'ao-thun-nu-tay-dai', 'n3.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 399000.00, 279000.000, 'Áo Thun Nữ Tay Dài', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(49, 17, 1, 'Áo Thun Nữ Tay Ngắn', 'ao-thun-nu-tay-ngan', 'n4.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 299000.00, 279000.000, 'Áo Thun Nữ Tay Ngắn', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1),
(50, 17, 4, 'Áo Thun Nữ Lửng Tay Ngắn', 'ao-thun-nu-lung-tay-ngan', 'nu2.jpg', 'Chất lượng vải cao cấp, mát mẻ', 1, 299000.00, 279000.000, 'Áo Thun Nữ Tay Ngắn', '2022-11-22 19:23:18', 1, '2022-11-22 19:23:18', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110370_topic`
--

CREATE TABLE `2121110370_topic` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã chủ đề',
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên chủ đề',
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Slug tên chủ đề',
  `sort_order` int UNSIGNED NOT NULL DEFAULT '1' COMMENT 'Sắp xếp',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Từ khóa SEO',
  `created_at` datetime NOT NULL COMMENT 'Ngày tạo',
  `created_by` tinyint UNSIGNED NOT NULL COMMENT 'Người tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED DEFAULT NULL COMMENT 'Người sửa',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2121110370_topic`
--

INSERT INTO `2121110370_topic` (`id`, `name`, `slug`, `sort_order`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Tin tức', 'tin-tuc', 1, 'Từ khóa SEO', '2020-07-03 16:14:39', 1, '2020-07-03 16:14:39', 1, 1),
(2, 'Dịch vụ', 'dich-vu', 2, 'Từ khóa SEO', '2020-07-03 16:14:39', 1, '2020-07-03 16:14:39', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `2121110370_user`
--

CREATE TABLE `2121110370_user` (
  `id` int UNSIGNED NOT NULL COMMENT 'Mã tài khoản',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Họ và tên',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Tên đăng nhâp',
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Mật khẩu',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Email',
  `gender` tinyint UNSIGNED NOT NULL COMMENT 'Giới tính',
  `phone` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Điện thoại',
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL COMMENT 'Hình',
  `roles` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Quyền truy cập',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` tinyint UNSIGNED NOT NULL COMMENT 'Người tạo',
  `updated_at` datetime DEFAULT NULL COMMENT 'Ngày sửa',
  `updated_by` tinyint UNSIGNED DEFAULT NULL COMMENT 'Người sửa',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '2' COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `2121110370_user`
--

INSERT INTO `2121110370_user` (`id`, `name`, `username`, `password`, `email`, `gender`, `phone`, `image`, `roles`, `address`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Quản trị', 'admin', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'admin@gmail.com', 1, '0987654367', 'admin.jpg', '1', 'Hồ Chí Minh', '2020-07-01 00:16:03', 1, '2022-11-21 21:37:14', 1, 1),
(7, 'Quản trị an', 'adminan', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'adminan@gmail.com', 1, '0987654367', 'adminan.jpg', '1', 'Hồ Chí Minh', '2020-07-01 00:16:03', 1, '2022-11-21 21:37:14', 1, 1),
(20, 'Ngô sĩ hòa', 'ngosihoa', '356a192b7913b04c54574d18c28d46e6395428ab', 'ngosihoaa2@gmail.com', 1, '0369287321', 'default.jpg', '0', 'tdp4', '2024-03-19 09:59:19', 1, NULL, NULL, 1),
(21, 'Quản trị1', 'admin1', '356a192b7913b04c54574d18c28d46e6395428ab', 'admin1@gmail.com', 1, '0987654367', 'admin1.jpg', '1', 'Hồ Chí Minh', '2020-07-01 00:16:03', 1, '2022-11-21 21:37:14', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `2121110370_banner`
--
ALTER TABLE `2121110370_banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110370_brand`
--
ALTER TABLE `2121110370_brand`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110370_category`
--
ALTER TABLE `2121110370_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110370_contact`
--
ALTER TABLE `2121110370_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `2121110370_menu`
--
ALTER TABLE `2121110370_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110370_order`
--
ALTER TABLE `2121110370_order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110370_orderdetail`
--
ALTER TABLE `2121110370_orderdetail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110370_post`
--
ALTER TABLE `2121110370_post`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110370_product`
--
ALTER TABLE `2121110370_product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110370_topic`
--
ALTER TABLE `2121110370_topic`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `2121110370_user`
--
ALTER TABLE `2121110370_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `2121110370_banner`
--
ALTER TABLE `2121110370_banner`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã Slider', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `2121110370_brand`
--
ALTER TABLE `2121110370_brand`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `2121110370_category`
--
ALTER TABLE `2121110370_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `2121110370_contact`
--
ALTER TABLE `2121110370_contact`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `2121110370_menu`
--
ALTER TABLE `2121110370_menu`
  MODIFY `id` int NOT NULL AUTO_INCREMENT COMMENT 'Mã Menu', AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `2121110370_order`
--
ALTER TABLE `2121110370_order`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã đơn hàng', AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `2121110370_orderdetail`
--
ALTER TABLE `2121110370_orderdetail`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã CT Đơn hàng', AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `2121110370_post`
--
ALTER TABLE `2121110370_post`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã bài viết', AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `2121110370_product`
--
ALTER TABLE `2121110370_product`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã sản phẩm', AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `2121110370_topic`
--
ALTER TABLE `2121110370_topic`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã chủ đề', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `2121110370_user`
--
ALTER TABLE `2121110370_user`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã tài khoản', AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
