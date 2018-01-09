-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2018 at 05:10 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `subas`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `user_id`, `name`, `alias`, `photo`, `mota`, `link`, `content`, `status`, `title`, `keyword`, `description`, `com`, `created_at`, `updated_at`) VALUES
(1, 5, NULL, '', NULL, NULL, NULL, '<div class=\"bwt_title_main\">&nbsp;\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<div class=\"section-title text-left \">\r\n<h2 class=\"uppercase\">GIỚI THIỆU VỀ SUBAS</h2>\r\n<h6 class=\"mb-40\">There are many variations of passages of brands available,</h6>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-md-5\">\r\n<div class=\"about-photo p-20 bg-img-1\"><img src=\"http://localhost/subas/backend/about/img/others/about.jpg\" alt=\"\" /><img src=\"http://localhost/subas/upload/about.jpg\" alt=\"\" width=\"440\" height=\"320\" /></div>\r\n</div>\r\n<div class=\"col-md-7\">\r\n<div class=\"about-description mt-50\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labo et dolore magn aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequa. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia is be deserunt mollit anim est laborum. Sed ut perspiciatis unde omnis iste natus error sit. voluptatem accusantium doloremque laudantium,</p>\r\n<p>totam remes aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam.</p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 1, 'gioi thieu', 'gioi thieu, thieu gioi', 'gioi thieu về công ty', NULL, '2018-01-08 09:02:00', '2018-01-08 09:02:00');

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int(11) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `info` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`id`, `img`, `info`, `created_at`, `updated_at`) VALUES
(1, '1507946485_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản:&nbsp;<span class=\"text-uppercase\">NGUYỄN HẢI YẾN</span></p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh Đống Đa</p>', '2017-10-14 02:01:25', '2017-10-13 19:01:25'),
(3, '1507946490_logobidv.png', '<p>Số t&agrave;i khoản:&nbsp;001234646870</p>\r\n<p>Chủ t&agrave;i khoản: Nguyễn Huy Ho&agrave;ng</p>\r\n<p>Ng&acirc;n h&agrave;ng:&nbsp;Ng&acirc;n h&agrave;ng TMCP Ngoại thương Việt Nam Chi nh&aacute;nh&nbsp;H&agrave; Nội</p>\r\n<p>&nbsp;</p>', '2017-12-18 02:08:26', '2017-12-18 02:08:26');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `com` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banner_content`
--

CREATE TABLE `banner_content` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_content`
--

INSERT INTO `banner_content` (`id`, `image`, `link`, `position`, `updated_at`, `created_at`) VALUES
(11, '1515030356_32.jpg', NULL, 6, '2018-01-04 01:45:56', '2018-01-04 01:45:56'),
(12, '1515030761_31.jpg', NULL, 6, '2018-01-04 01:52:41', '2018-01-04 01:52:41'),
(13, '1515031014_5.jpg', NULL, 1, '2018-01-04 01:56:54', '2018-01-04 01:56:54'),
(14, '1515031036_8.jpg', NULL, 1, '2018-01-04 01:57:16', '2018-01-04 01:57:16'),
(15, '1515031042_9.jpg', NULL, 1, '2018-01-04 01:57:22', '2018-01-04 01:57:22'),
(16, '1515031053_31.jpg', NULL, 1, '2018-01-04 01:57:33', '2018-01-04 01:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `banner_position`
--

CREATE TABLE `banner_position` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner_position`
--

INSERT INTO `banner_position` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Trang chủ', '2017-09-20 08:29:24', '2017-09-20 01:29:24'),
(6, 'Trang danh mục sản phẩm', '2018-01-04 01:45:39', '2018-01-04 01:45:39');

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(11) DEFAULT NULL,
  `full_name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `province` varchar(250) DEFAULT NULL,
  `district` varchar(250) DEFAULT NULL,
  `note` text,
  `status` tinyint(2) DEFAULT '0',
  `total` int(11) DEFAULT NULL,
  `money_pay` int(11) DEFAULT NULL,
  `detail` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `card_code` varchar(250) DEFAULT NULL,
  `payment` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `user_id`, `code`, `full_name`, `email`, `phone`, `address`, `province`, `district`, `note`, `status`, `total`, `money_pay`, `detail`, `created_at`, `updated_at`, `card_code`, `payment`) VALUES
(3, NULL, 'Xy1uDzD7', 'Trần Văn A', 'chuong1194@yahoo.com', '09983292', 'Cầu Diễn, Từ Liêm, Hà Nội', NULL, NULL, NULL, 0, 800000, NULL, '[{\"product_name\":\"S\\u1ea3n ph\\u1ea9m xyzo\",\"product_numb\":1,\"product_price\":500000,\"product_img\":\"1514880213_8.jpg\",\"product_code\":null,\"slug\":\"san-pham-xyzo\"},{\"product_name\":\"S\\u1ea3n ph\\u1ea9m th\\u1eddi trang nam s\\u1ed1 1x\",\"product_numb\":1,\"product_price\":300000,\"product_img\":\"1514880251_13.jpg\",\"product_code\":null,\"slug\":\"san-pham-thoi-trang-nam-so-1x\"}]', '2018-01-03 07:34:48', '2018-01-03 07:34:48', NULL, 0),
(4, NULL, 'hWftQljI', 'Hoàng Hồng Chương', 'chuong1194@yahoo.com', '0023923923', 'Cầu Diễn, Từ Liêm, Hà Nội', NULL, NULL, NULL, 0, 3300000, NULL, '[{\"product_name\":\"T\\u1eaft \\u0111\\u00e8n\",\"product_numb\":\"3\",\"product_price\":300000,\"product_img\":\"1514880115_3.jpg\",\"product_code\":null,\"slug\":\"tat-den\"},{\"product_name\":\"S\\u1ea3n ph\\u1ea9m th\\u1eddi trang nam s\\u1ed1 1x\",\"product_numb\":\"3\",\"product_price\":300000,\"product_img\":\"1514880251_13.jpg\",\"product_code\":null,\"slug\":\"san-pham-thoi-trang-nam-so-1x\"},{\"product_name\":\"s\\u1ea3n ph\\u1ea9m zx\",\"product_numb\":\"3\",\"product_price\":500000,\"product_img\":\"1514880286_17.jpg\",\"product_code\":null,\"slug\":\"san-pham-zx\"}]', '2018-01-03 07:37:41', '2018-01-03 07:37:41', NULL, 0),
(5, NULL, 'mklowByx', 'Nguyen thi B', 'hoangchuong1194@gmail.com', '0987654321', 'ha noi', NULL, NULL, NULL, 0, 2440000, NULL, '[{\"product_name\":\"Saach moi nhat x3\",\"product_numb\":\"5\",\"product_price\":100000,\"product_img\":\"1515401150_6.jpg\",\"product_code\":null,\"slug\":\"saach-moi-nhat-x3\"},{\"product_name\":\"S\\u00e1ch truy\\u1ec7n thi\\u1ebfu nhi m\\u1edbi\",\"product_numb\":\"7\",\"product_price\":200000,\"product_img\":\"1515401129_4.jpg\",\"product_code\":null,\"slug\":\"sach-truyen-thieu-nhi-moi\"},{\"product_name\":\"S\\u00e1ch to\\u00e1n 12\",\"product_numb\":\"6\",\"product_price\":90000,\"product_img\":\"1515401294_8.jpg\",\"product_code\":null,\"slug\":\"sach-toan-12\"}]', '2018-01-09 02:55:48', '2018-01-09 02:55:48', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(11) NOT NULL,
  `campaign_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `campaign_type` int(2) DEFAULT NULL,
  `campaign_value` int(10) DEFAULT NULL,
  `campaign_expired` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flg` int(1) NOT NULL DEFAULT '0',
  `card_numb` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaigns`
--

INSERT INTO `campaigns` (`id`, `campaign_name`, `campaign_type`, `campaign_value`, `campaign_expired`, `created_at`, `updated_at`, `del_flg`, `card_numb`) VALUES
(1, 'Chào mừng giáng sinh', 1, 100000, '2017-09-30', '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0, 7),
(2, 'Chào thu', 2, 10, '2017-09-30', '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `campaign_cards`
--

CREATE TABLE `campaign_cards` (
  `id` int(10) NOT NULL,
  `campaign_id` int(10) NOT NULL,
  `card_code` varchar(100) NOT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flg` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign_cards`
--

INSERT INTO `campaign_cards` (`id`, `campaign_id`, `card_code`, `is_active`, `created_at`, `updated_at`, `del_flg`) VALUES
(1, 1, 'hDXoOAI7BpxYJ', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(2, 1, 'FepHYPARhlTbe', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(3, 1, 'bpDe0nb31sZiN', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(4, 1, '0DK0VoB53JeJj', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(5, 1, 'hF3Ad1g7J411w', 0, '2017-09-21 18:55:29', '2017-09-21 18:55:29', 0),
(6, 1, '8PyZN6OTyAIwZ', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(7, 1, 'Zqy0atJII1nzS', 0, '2017-09-21 18:56:44', '2017-09-21 18:56:44', 0),
(8, 2, '3Qe06mci6qmMc', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(9, 2, 'vUrrWre9EN6iR', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(10, 2, 'IGzmLXBT9pDk5', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0),
(11, 2, 'OXSiH6ooCzJj7', 0, '2017-09-22 18:43:02', '2017-09-22 18:43:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chinhanh`
--

CREATE TABLE `chinhanh` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chinhanh`
--

INSERT INTO `chinhanh` (`id`, `name`, `website`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Trụ sở chính', 'http://gco.vn/', '(04).32.033.033 - 32.026.026', 'Tầng 2, tòa nhà Handico, Phạm Hùng, Nam Từ Liêm, Hà Nội', '2017-12-11 02:09:13', '2017-12-11 02:09:13'),
(2, 'Văn phòng đại diện', 'http://gco.vn/', '(04) - 38.36 00 88 – Fax: (04) – 38.36 00 88', 'Số 148 Nguyễn Thái Học, Điện Biên, Ba Đình, Hà Nội', '2017-10-11 08:03:26', '2017-10-11 01:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET latin1 DEFAULT NULL,
  `content` text,
  `status` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `subject`, `name`, `address`, `email`, `phone`, `content`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, 'Hoàng Hồng Chương', NULL, 'a@gmail.com', '09983292', 'sfsf', 1, '2018-01-02 03:12:40', '2018-01-04 07:19:37'),
(3, NULL, 'GCO group', NULL, 'fujiluxury@gmail.com', '0987654321', 'sfsdf', 1, '2018-01-03 01:28:50', '2018-01-04 07:19:35'),
(4, 'sdfsdf', 'Hoàng Hồng Chương', NULL, 'admin@team.vn', '09983292', 'sfsdf', 0, '2018-01-08 08:37:44', '2018-01-08 08:37:44');

-- --------------------------------------------------------

--
-- Table structure for table `counter`
--

CREATE TABLE `counter` (
  `id` int(10) UNSIGNED NOT NULL,
  `tm` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tenkhongdau` varchar(255) DEFAULT NULL,
  `mota_vi` text NOT NULL,
  `mota_en` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `stt` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `cate_id`, `name`, `tenkhongdau`, `mota_vi`, `mota_en`, `photo`, `thumb`, `stt`, `status`, `created_at`, `updated_at`) VALUES
(7, 6, 'Huyện An Phú', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '2017-11-23 21:01:08'),
(5, 6, 'Thành phố Long Xuyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 6, 'Thị xã Châu Đốc', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 6, 'Huyện Tân Châu', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 6, 'Huyện Phú Tân', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 6, 'Huyện Tịnh Biên', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 6, 'Huyện Tri Tôn', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 6, 'Huyện Châu Phú', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 6, 'Huyện Chợ Mới', '', '', '', '', '', 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 6, 'Huyện Châu Thành', '', '', '', '', '', 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 6, 'Huyện Thoại Sơn', '', '', '', '', '', 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 7, 'Thành phố Vũng Tàu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 7, 'Thị xã Bà Rịa', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 7, 'Huyện Xuyên Mộc', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 7, 'Huyện Long Điền', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 7, 'Huyện Côn Đảo', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 7, 'Huyện Tân Thành', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 7, 'Huyện Châu Đức', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 7, 'Huyện Đất Đỏ', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 8, 'Thành phố Bạc Liêu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 8, 'Huyện Vĩnh Lợi', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 8, 'Huyện Hông Dân', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 8, 'Huyện Giá Rai', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 8, 'Huyện Phước Long', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 8, 'Huyện Đông Hải', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 8, 'Huyện Hòa Bình', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 9, 'Thị xã Bắc Cạn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 9, 'Huyện Chợ Đồn', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 9, 'Huyện Bạch Thông', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 9, 'Huyện Na Rì', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 9, 'Huyện Ngân Sơn', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 9, 'Huyện Ba Bể', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 9, 'Huyện Chợ Mới', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 9, 'Huyện Pác Nặm', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 10, 'Thành phố Bắc Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 10, 'Huyện Yên Thế', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 10, 'Huyện Lục Ngạn', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 10, 'Huyện Sơn Động', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 10, 'Huyện Lục Nam', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 10, 'Huyện Tân Yên', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 10, 'Huyện Hiệp Hào', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 10, 'Huyện Lạng Giang', '', '', '', '', '', 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 10, 'Huyện Việt Yên', '', '', '', '', '', 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 10, 'Huyện Yên Dũng', '', '', '', '', '', 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 11, 'Thành phố Bắc Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 11, 'Huyện Yên Phong', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 11, 'Huyện Quế Võ', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 11, 'Huyện Tuyên Du', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 11, 'Thị xã Từ Sơn', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 11, 'Huyện Thuần Thành', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 11, 'Huyện Gia Bình', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 11, 'Huyện Lương Tài', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 12, 'Huyện Mỏ Cày Nam', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 12, 'Huyện Thạnh Phú', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 12, 'Huyện Ba Tri', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 12, 'Huyện Bình Đại', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 12, 'Huyện Giòng Trôm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 12, 'Huyện Mỏ Cày Bắc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 12, 'Huyện Chợ Lách', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 12, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 12, 'Thành phố Bến Tre', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 13, 'Huyện Dầu Tiếng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 13, 'Huyện Phú Giáo', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 13, 'Huyện Dĩ An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 13, 'Huyện Thuận An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 13, 'Huyện Tân Uyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 13, 'Huyện Bến Cát', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 13, 'Thị xã Thủ Dầu Một', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 14, 'Huyện Tuy Phước', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 14, 'Huyện An Nhơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 14, 'Huyện Văn Canh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 14, 'Huyện Tây Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 14, 'Huyện Vĩnh Thạnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 14, 'Huyện Phù Cát', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 14, 'Huyện Phù Mỹ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 14, 'Huyện Hoài Nhơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 14, 'Huyện Hoài Ân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 14, 'Huyện An Lão', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 14, 'Thành phố Quy Nhơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 15, 'Huyện Bù Gia Mập', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 15, 'Huyện Hớn Quản', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 15, 'Huyện Bù Đăng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 15, 'Huyện Phước Long', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 15, 'Huyện Bình Phước', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 15, 'Huyện Lộc Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 15, 'Huyện Bình Long', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 15, 'Huyện Chơn Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 15, 'Huyện Đồng Phú ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 15, 'Thị xã Đồng Xoài', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 16, 'Thị xã La Gi', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 16, 'Huyện đảo Phú Quý ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 16, 'Huyện Tánh Linh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 16, 'Huyện Đức Linh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 16, 'Huyện Hàm Tân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 16, 'Huyện Hàm Thuận Nam', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 16, 'Huyện Hàm Thuận Bắc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 16, 'Huyện Bắc Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 16, 'Huyện Tuy Phong', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 16, 'Thành phố Phan Thiết', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 17, 'Huyện Phú Tân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 17, 'Huyện Năm Căn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 17, 'Huyện Ngọc Hiển ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 17, 'Huyện Đầm Dơi', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 17, 'Huyện Cái Nước ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 17, 'Huyện Trần Văn Thời', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(110, 17, 'Huyện U Minh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(111, 17, 'Huyện Thới Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(112, 17, 'Thành phố Cà Mau', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(113, 18, 'Huyện Phục Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(114, 18, 'Huyện Bảo Lâm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(115, 18, 'Huyện Hạ Lang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(116, 18, 'Huyện Thạch An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(117, 18, 'Huyện Quảng Uyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(118, 18, 'Huyện Hòa An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(119, 18, 'Huyện Nguyên Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(120, 18, 'Huyện Trùng Khánh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(121, 18, 'Huyện Trà Lĩnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(122, 18, 'Huyện Hà Quảng ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(123, 18, 'Huyện Thông Nông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(124, 18, 'Huyện Bảo Lạc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(125, 18, 'Thị xã Cao Bằng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(126, 19, 'Huyện Thới Lai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(127, 19, 'Quận Thốt Nốt', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(128, 19, 'Huyện Vĩnh Thạnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(129, 19, 'Huyện Cờ Đỏ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(130, 19, 'Huyện Phong Điền', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(131, 19, 'Quận Ô Môn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(132, 19, 'Quận Cái Răng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(133, 19, 'Quận Bình Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(134, 19, 'Quận Ninh Kiều', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(135, 20, 'Quận Cẩm Lệ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(136, 20, 'Huyện Hòa Vang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(137, 20, 'Quận Linh Chiểu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(138, 20, 'Quận Ngũ Hành Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(139, 20, 'Quận Sơn Trà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(140, 20, 'Quận Thanh Khê  ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(141, 20, 'Quận Hải Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(142, 21, 'Thị xã Buôn Hồ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(143, 21, 'Huyện Cư Kuin', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(144, 21, 'Huyện Buôn Đôn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(145, 21, 'Huyện Lăk', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(146, 21, 'Huyện Krông Bông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(147, 21, 'Huyện Krông Ana', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(148, 21, 'Huyện M\'Đrăk', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(149, 21, 'Huyện Ea Kar', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(150, 21, 'Huyện Krông Pắc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(151, 21, 'Huyện Cư M\'gar', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(152, 21, 'Huyện Ea Súp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(153, 21, 'Huyện Krông Năng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(154, 21, 'Huyện Krông Buk', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(155, 21, 'Huyện Ea H Leo', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(156, 21, 'Thành phố Buôn Mê Thuộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(157, 22, 'Huyện Tuy Đức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(158, 22, 'Huyện Đắk GLong', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(159, 22, 'Huyện Krông Nô', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(160, 22, 'Huyện Đắk Song', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(161, 22, 'Huyện Cư Jút', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(162, 22, 'Huyện Đắk Mil', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(163, 22, 'Huyện Đắk R\'Lấp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(164, 22, 'Thị xã Gia Nghĩa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(165, 23, 'Huyện Mường Ăng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(166, 23, 'Huyện Mường Nhé', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(167, 23, 'Huyện Điện Biên Đông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(168, 23, 'Huyện Tủa Chùa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(169, 23, 'Huyện Mường Chà ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(170, 23, 'Huyện Tuần Giáo ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(171, 23, 'Huyện Điện Biên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(172, 23, 'Thị xã Mường Lay', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(173, 23, 'TP. Điện Biên Phủ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(174, 24, 'Huyện Cẩm Mỹ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(175, 24, 'Huyện Trảng Bom', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(176, 24, 'Huyện Nhơn Trạch', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(177, 24, 'Huyện Long Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(178, 24, 'Huyện Xuân Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(179, 24, 'Thị xã Long Khánh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(180, 24, 'Huyện Thống Nhất', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(181, 24, 'Huyện Định Quán', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(182, 24, 'Huyện Tân Phú', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(183, 24, 'Huyện Vĩnh Cửu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(184, 24, 'Thành phố Biên Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(185, 25, 'Thị xã Hồng Ngự', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(186, 25, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(187, 25, 'Huyện Lai Vung', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(188, 25, 'Huyện Tháp Mười', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(189, 25, 'Huyện Lấp Vò', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(190, 25, 'Huyện Cao Lãnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(191, 25, 'Huyện Thanh Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(192, 25, 'Huyện Tam Nông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(193, 25, 'Huyện Hồng Ngự', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(194, 25, 'Huyện Tân Hồng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(195, 25, 'Thị xã Sa Đéc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(196, 25, 'Thành phố Cao Lãnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(197, 26, 'Huyện Chư Pưh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(198, 26, 'Huyện Phú Thiện', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(199, 26, 'Huyện Đắk Pơ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(200, 26, 'Huyện La Pa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(201, 26, 'Huyện Đắk Đoa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(202, 26, 'Huyện La Grai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(203, 26, 'Huyện Krông Pa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(204, 26, 'Huyện Ayunpa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(205, 26, 'Huyện Chư Sê', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(206, 26, 'Huyện Chư Prông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(207, 26, 'Huyện Đức Cơ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(208, 26, 'Huyện Kông Chro ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(209, 26, 'Thị xã An Khê', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(210, 26, 'Huyện Kbang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(211, 26, 'Huyện Mang Yang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(212, 26, 'Huyện Chư Păh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(213, 26, 'Thành phố Pleiku', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(214, 27, 'Huyện Quảng Bình ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(215, 27, 'Huyện Bắc Quang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(216, 27, 'Huyện Xín Mần', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(217, 27, 'Huyện Hoàng Su Phì', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(218, 27, 'Huyện Bắc Mê', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(219, 27, 'Huyện Vị Xuyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(220, 27, 'Huyện Quản Bạ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(221, 27, 'Huyện Yên Minh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(222, 27, 'Huyện Mèo Vạc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(223, 27, 'Huyện Đồng Văn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(224, 27, 'Thành phố Hà Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(225, 28, 'Huyện Bình Lục', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(226, 28, 'Huyện Thanh Liêm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(227, 28, 'Huyện Lý Nhân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(228, 28, 'Huyện Kim Bảng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(229, 28, 'Huyện Duy Tiên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(230, 28, 'Thành phố Phủ Lý', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(231, 2, 'Huyện Thạch Thất', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(232, 2, 'Huyện Phú Thọ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(233, 2, 'Huyện Ba Vì', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(234, 2, 'Thị xã Sơn Tây', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(235, 2, 'Quận Hà Đông ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(236, 2, 'Huyện Sóc Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(237, 2, 'Huyện Đông Anh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(238, 2, 'Huyện Gia Lâm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(239, 2, 'Huyện Thanh Trì', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(240, 2, 'Huyện Từ Liêm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(241, 2, 'Quận Long Biên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(242, 2, 'Quận Hoàng Mai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(243, 2, 'Quận Thanh Xuân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(244, 2, 'Quận Cầu Giấy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(245, 2, 'Quận Tây Hồ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(246, 2, 'Quận Đống Đa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(247, 2, 'Quận Hai Bà Trưng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(248, 2, 'Quận Hoàn Kiếm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(249, 2, 'Quận Ba Đình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(250, 2, 'Huyện ỨngHòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:36:59'),
(251, 2, 'Huyện Thường Tín', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:37:39'),
(252, 2, 'Huyện Thanh Oai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:37:44'),
(253, 2, 'Huyện Quốc Oai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:38:07'),
(254, 2, 'Huyện Phú Thọ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:38:13'),
(255, 2, 'Huyện Phú Xuyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:38:27'),
(256, 2, 'Huyện Mỹ Đức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:38:35'),
(257, 2, 'Huyện Hoài Đức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:38:42'),
(258, 2, 'Huyện Đan Phượng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:39:09'),
(259, 2, 'Huyện Chương Mỹ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:39:04'),
(260, 2, 'Huyện Ba Vì', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '2017-11-23 23:38:59'),
(261, 30, 'Huyện Lộc Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(262, 30, 'Huyện Vũ Quang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(263, 30, 'Huyện Kỳ Anh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(264, 30, 'Huyện Cẩm Xuyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(265, 30, 'Huyện Thạch Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(266, 30, 'Huyện Hương Khê', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(267, 30, 'Huyện Can Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(268, 30, 'Huyện Nghi Xuân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(269, 30, 'Huyện Đức Thọ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(270, 30, 'Huyện Hương Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(271, 30, 'Thị xã Hồng Lĩnh ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(272, 30, 'Thành phố Hà Tĩnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(273, 31, 'Huyện Bình Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(274, 31, 'Huyện Kim Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(275, 31, 'Huyện Thanh Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(276, 31, 'Huyện Cẩm Giàng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(277, 31, 'Huyện Ninh Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(278, 31, 'Huyện Thanh Miện', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(279, 31, 'Huyện Tứ Kỳ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(280, 31, 'Huyện Gia Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(281, 31, 'Huyện Kinh Môn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(282, 31, 'Huyện Nam Sách', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(283, 31, 'Thị xã Chí Linh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(284, 31, 'Thành phố Hải Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(285, 5, 'Quận Dương Kinh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(286, 5, 'Huyện Bạch Long Vĩ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(287, 5, 'Huyện Cát Hải ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(288, 5, 'Huyện Vĩnh Bảo', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(289, 5, 'Huyện Tiên Lãng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(290, 5, 'Huyện An Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(291, 5, 'Huyện Thủy Nguyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(292, 5, 'Huyện Kiến Thụy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(293, 5, 'Huyện An Lão', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(294, 5, 'Quận Đồ Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(295, 5, 'Quận Hải An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(296, 5, 'Quận Kiến An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(297, 5, 'Quận Ngô Quyền', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(298, 5, 'Quận Lê Chân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(299, 5, 'Quận Hồng Bàng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(300, 32, 'Huyện Cao Phong', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(301, 32, 'Huyện Yên Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(302, 32, 'Huyện Lạc Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(303, 32, 'Huyện Kim Bôi', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(304, 32, 'Huyện Lương Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(305, 32, 'Huyện Kỳ Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(306, 32, 'Huyện Lạc Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(307, 32, 'Huyện Tân Lạc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(308, 32, 'Huyện Mai Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(309, 32, 'Huyện Đà Bắc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(310, 32, 'Thành phố Hòa Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(311, 1, 'Quận Bình Tân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(312, 1, 'Quận Thủ Đức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(313, 1, 'Quận Phú Nhuận', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(314, 1, 'Quận Bình Thạnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(315, 1, 'Quận Tân Phú', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(316, 1, 'Quận Tân Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(317, 1, 'Quận Gò Vấp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(318, 1, 'Quận 12', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(319, 1, 'Quận 11', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(320, 1, 'Quận 10', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(321, 1, 'Quận 9', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(322, 1, 'Quận 8', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(323, 1, 'Quận 7', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(324, 1, 'Quận 6', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(325, 1, 'Quận 5', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(326, 1, 'Quận 4', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(327, 1, 'Quận 3', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(328, 1, 'Quận 2', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(329, 1, 'Quận 1', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(330, 33, 'Thị xã Ngã Bảy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(331, 33, 'Huyện Châu Thành A', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(332, 33, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(333, 33, 'Huyện Phụng Hiệp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(334, 33, 'Huyện Long Mỹ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(335, 33, 'Huyện Vị Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(336, 33, 'Thành phố Vị Thanh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(337, 34, 'Huyện Văn Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(338, 34, 'Huyện Văn Lâm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(339, 34, 'Huyện Mỹ Hào', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(340, 34, 'Huyện Phù Cừ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(341, 34, 'Huyện Tiên Lữ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(342, 34, 'Huyện Yên Mỹ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(343, 34, 'Huyện Khoái Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(344, 34, 'Huyện Ân Thi', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(345, 34, 'Huyện Kim Động', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(346, 34, 'Thành phố Hưng Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(347, 35, 'Huyện Cam Lâm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(348, 35, 'Huyện đảo Trường Sa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(349, 35, 'Huyện Khánh Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(350, 35, 'Thị xã Cam Ranh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(351, 35, 'Huyện Khánh Vĩnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(352, 35, 'Huyện Diên Khánh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(353, 35, 'Huyện Ninh Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(354, 35, 'Huyện Vạn Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(355, 35, 'Thành phố Nha Trang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(356, 36, 'Huyện Giang Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(357, 36, 'Huyện U Minh Thượng ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(358, 36, 'Huyện Kiên Hải', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(359, 36, 'Huyện đảo Phú Quốc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(360, 36, 'Huyện Vĩnh Thuận', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(361, 36, 'Huyện An Minh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(362, 36, 'Huyện An Biên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(363, 36, 'Huyện Gò Quao', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(364, 36, 'Huyện Giồng Riềng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(365, 36, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(366, 36, 'Huyện Tân Hiệp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(367, 36, 'Huyện Hòn Đất', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(368, 36, 'Huyện Kiên Lương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(369, 36, 'Thị xã Hà Tiên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(370, 36, 'Thành phố Rạch Giá', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(371, 37, 'Huyện Tu Mơ Rông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(372, 37, 'Huyện Kon Rẫy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(373, 37, 'Huyện Đăk Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(374, 37, 'Huyện Kon Plong', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(375, 37, 'Huyện Sa Thầy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(376, 37, 'Huyện Đăk Tô', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(377, 37, 'Huyện Ngọc Hồi', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(378, 37, 'Huyện Đăk Glei', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(379, 37, 'Thành phố KonTum', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(380, 38, 'Huyện Tân Uyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(381, 38, 'Huyện Thanh Uyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(382, 38, 'Huyện Mường Tè', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(383, 38, 'Huyện Sìn Hồ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(384, 38, 'Huyện Phong Thổ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(385, 38, 'Huyện Tam Đường', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(386, 38, 'Thị xã Lai Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(387, 39, 'Huyện Mường Khương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(388, 39, 'Huyện Bắc Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(389, 39, 'Huyện Bảo Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(390, 39, 'Huyện Văn Bàn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(391, 39, 'Huyện Sa Pa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(392, 39, 'Huyện Bảo Thắng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(393, 39, 'Huyện Bát Xát', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(394, 39, 'Huyện Xi Ma Cai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(395, 39, 'Thành phố Lào Cai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(396, 40, 'Huyện Hữu Lũng ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(397, 40, 'Huyện Đình Lập', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(398, 40, 'Huyện Chi Lăng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(399, 40, 'Huyện Lộc Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(400, 40, 'Huyện Cao Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(401, 40, 'Huyện Văn Quan', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(402, 40, 'Huyện Bắc Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(403, 40, 'Huyện Văn Lãng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(404, 40, 'Huyện Bình Gia', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(405, 40, 'Huyện Tràng Định', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(406, 40, 'Thành phố Lạng Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(407, 41, 'Huyện Đam Rông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(408, 41, 'Huyện Bảo Lâm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(409, 41, 'Huyện Lâm Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(410, 41, 'Huyện Cát Tiên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(411, 41, 'Huyện Đạ Tẻh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(412, 41, 'Huyện Đạ Huoai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(413, 41, 'Huyện Lạc Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(414, 41, 'Huyện Đơn Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(415, 41, 'Huyện Di Linh ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(416, 41, 'Huyện Đức Trọng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(417, 41, 'Thị xã Bảo Lộc ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(418, 41, 'Thành phố Đà Lạt', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(419, 42, 'Huyện Tân Hưng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(420, 42, 'Huyện Cần Giuộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(421, 42, 'Huyện Cần Đuốc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(422, 42, 'Huyện Tân Trụ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(423, 42, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(424, 42, 'Huyện Thủ Thừa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(425, 42, 'Huyện Bến Lức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(426, 42, 'Huyện Đức Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(427, 42, 'Huyện Đức Huệ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(428, 42, 'Huyện Thạnh Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(429, 42, 'Huyện Tân Thạnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(430, 42, 'Huyện Mộc Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(431, 42, 'Huyện Vĩnh Hưng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(432, 42, 'Thành phố Tân An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(433, 43, 'Huyện Hải Hậu ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(434, 43, 'Huyện Nghĩa Hưng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(435, 43, 'Huyện Trực Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(436, 43, 'Huyện Nam Trực', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(437, 43, 'Huyện Vụ Bản', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(438, 43, 'Huyện Ý Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(439, 43, 'Huyện Giao Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(440, 43, 'Huyện Xuân Trường', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(441, 43, 'Huyện Mỹ Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(442, 43, 'Thành phố Nam Định', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(443, 44, 'Huyện Quế Phong', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(444, 44, 'Huyện Hưng Nguyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(445, 44, 'Huyện Nam Đàn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(446, 44, 'Huyện Nghi Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(447, 44, 'Huyện Thanh Chương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(448, 44, 'Huyện Đô Lương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(449, 44, 'Huyện Anh Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(450, 44, 'Huyện Diễn Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(451, 44, 'Huyện Yên Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(452, 44, 'Huyện Tân Kỳ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(453, 44, 'Huyện Con Cuông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(454, 44, 'Huyện Tương Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(455, 44, 'Huyện Kỳ Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(456, 44, 'Huyện Quỳnh Lưu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(457, 44, 'Huyện Nghĩa Đàn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(458, 44, 'Huyện Quỳ Hợp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(459, 44, 'Huyện Quỳ Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(460, 44, 'Thị xã Cửa Lò', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(461, 44, 'Thành phố Vinh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(462, 45, 'Huyện Yên Khánh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(463, 45, 'Huyện Kim Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(464, 45, 'Huyên Yên Mô', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(465, 45, 'Huyện Hoa Lư', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(466, 45, 'Huyện Gia Viễn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(467, 45, 'Huyện Nho Quan', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(468, 45, 'Thị xã Tam Điệp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(469, 45, 'Thành phố Ninh Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(470, 46, 'Huyện Thuận Nam', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(471, 46, 'Huyện Thuận Bắc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(472, 46, 'Huyện Bác Ái', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(473, 46, 'Huyện Ninh Phước', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(474, 46, 'Huyện Ninh Hải', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(475, 46, 'Huyện Ninh Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(476, 46, 'Thành phố Phan Rang - Tháp Chàm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(477, 47, 'Huyện Tân Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(478, 47, 'Huyện Thanh Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(479, 47, 'Huyện Tam Nông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(480, 47, 'Huyện Lâm Thao', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(481, 47, 'Huyện Phù Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(482, 47, 'Huyện Thanh Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(483, 47, 'Huyện Yên Lập', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(484, 47, 'Huyện Cẩm Khê', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(485, 47, 'Huyện Hạ Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(486, 47, 'Huyện Thanh Ba', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(487, 47, 'Huyện Đoan Hùng ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(488, 47, 'Thị xã Phú Thọ ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(489, 47, 'Thành phố Việt Trì', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(490, 48, 'Huyện Tây Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(491, 48, 'Huyện Phú Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(492, 48, 'Huyện Đông Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(493, 48, 'Huyện Sông Hinh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(494, 48, 'Huyện Sơn Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(495, 48, 'Huyện Tuy An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(496, 48, 'Thị xã Sông Cầu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(497, 48, 'Huyện Đồng Xuân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(498, 48, 'Thành phố Tuy Hòa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(499, 49, 'Huyện Lệ Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(500, 49, 'Huyện Quảng Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(501, 49, 'Huyện Bố Trạch', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(502, 49, 'Huyện Quảng Trạch', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(503, 49, 'Huyện Minh Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(504, 49, 'Huyện Tuyên Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(505, 49, 'Thành phố Đồng Hới', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(506, 50, 'Huyện Nông Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(507, 50, 'Huyện Phú Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(508, 50, 'Huyện Tây Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
INSERT INTO `district` (`id`, `cate_id`, `name`, `tenkhongdau`, `mota_vi`, `mota_en`, `photo`, `thumb`, `stt`, `status`, `created_at`, `updated_at`) VALUES
(509, 50, 'Huyện Nam Trà My', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(510, 50, 'Huyện Phước Sơn ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(511, 50, 'Huyện Nam Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(512, 50, 'Huyện Đông Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(513, 50, 'Huyện Bắc Trà My', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(514, 50, 'Huyện Tiên Phước', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(515, 50, 'Huyện Núi Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(516, 50, 'Huyện Thăng Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(517, 50, 'Huyện Hiệp Đức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(518, 50, 'Huyện Quế Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(519, 50, 'Huyện Đại Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(520, 50, 'Huyện Điện Bàn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(521, 50, 'Huyện Duy Xuyên ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(522, 50, 'Thành phố Hội An', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(523, 50, 'Thành phố Tam Kỳ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(524, 51, 'Huyện Tây Trà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(525, 51, 'Huyện Sơn Tây', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(526, 51, 'Huyện Ba Tơ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(527, 51, 'Huyện Đức Phổ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(528, 51, 'Huyện Mộ Đức', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(529, 51, 'Huyện Minh Long', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(530, 51, 'Huyện Nghĩa Hành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(531, 51, 'Huyện Tư Nghĩa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(532, 51, 'Huyện Tư Nghĩa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(533, 51, 'Huyện Sơn Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(534, 51, 'Huyện Sơn Tịnh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(535, 51, 'Huyện Trà Bồng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(536, 51, 'Huyện Bình Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(537, 51, 'Huyện Lý Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(538, 51, 'Thành phố Quảng Ngãi', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(539, 52, 'Huyện Cô Tô', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(540, 52, 'Huyện Vân Đồn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(541, 52, 'Huyện Hoàng Bồ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(542, 52, 'Huyện Yên Hưng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(544, 52, 'Huyện Đông Triều', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(545, 52, 'Huyện Ba Chẽ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(546, 52, 'Huyện Tuyên Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(547, 52, 'Huyện Hải Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(548, 52, 'Huyện Đầm Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(549, 52, 'Huyện Bình Liêu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(550, 52, 'Thành phố Móng Cái', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(551, 52, 'Thành phố Uông Bí', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(552, 52, 'Thành phố Cẩm Phả', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(553, 52, 'Thành phố Hạ Long', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(554, 53, 'Huyện đảo Cồn Cỏ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(555, 53, 'Huyện Đăk Rông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(556, 53, 'Huyện Hướng Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(557, 53, 'Huyện Hải Lăng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(558, 53, 'Huyện Triệu Phong', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(559, 53, 'Huyện Cam Lộ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(560, 53, 'Huyện Gio Linh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(561, 53, 'Huyện Vĩnh Linh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(562, 53, 'Thị xã Quảng Trị', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(563, 53, 'Thành phố Đông Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(564, 54, 'Huyện Trần Đề', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(565, 54, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(566, 54, 'Huyện Ngã Năm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(567, 54, 'Huyện Cù Lao Dung', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(568, 54, 'Thị xã Vĩnh Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(569, 54, 'Huyện Long Phú', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(570, 54, 'Huyện Thạnh Trị', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(571, 54, 'Huyện Mỹ Xuyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(572, 54, 'Huyện Mỹ Tú', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(573, 54, 'Huyện Kế Sách', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(574, 54, 'Thành phố Sóc Trăng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(575, 55, 'Huyện Sốp Cộp', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(576, 55, 'Huyện Mộc Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(577, 55, 'Huyện Sông Mã', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(578, 55, 'Huyện Yên Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(579, 55, 'Huyện Mai Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(580, 55, 'Huyện Phù Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(581, 55, 'Huyện Bắc Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(582, 55, 'Huyện Thuận Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(583, 55, 'Huyện Mường La', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(584, 55, 'Huyện Quỳnh Nhai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(585, 55, 'Thành phố Sơn La', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(586, 56, 'Huyện Trảng Bàng ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(587, 56, 'Huyện Gò Dầu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(588, 56, 'Huyện Bến Cầu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(589, 56, 'Huyện Hòa Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(590, 56, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(591, 56, 'Huyện Dương Minh Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(592, 56, 'Huyện Tân Châu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(593, 56, 'Huyện Tân Biên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(594, 56, 'Thị xã Tây Ninh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(595, 57, 'Huyện Thái Thụy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(596, 57, 'Huyện Tiền Hải', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(597, 57, 'Huyện Kiến Xương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(598, 57, 'Huyện Vũ Thư', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(599, 57, 'Huyện Đông Hưng', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(600, 57, 'Huyện Hưng Hà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(601, 57, 'Huyện Quỳnh Phụ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(602, 57, 'Thành phố Thái Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(603, 58, 'Huyện Phổ Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(604, 58, 'Huyện Phú Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(605, 58, 'Huyện Đồng Hỷ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(606, 58, 'Huyện Đại Từ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(607, 58, 'Huyện Võ Nhai', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(608, 58, 'Huyện Phú Lương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(609, 58, 'Huyện Định Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(610, 58, 'Thị xã Sông Công', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(611, 58, 'Thành phố Thái Nguyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(612, 59, 'Huyện Nông Cống', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(613, 59, 'Huyện Triệu Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(614, 59, 'Huyện Triệu Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(615, 59, 'Huyện Vĩnh Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(616, 59, 'Huyện Thọ Xuân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(617, 59, 'Huyện Cẩm Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(618, 59, 'Huyện Thạch Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(619, 59, 'Huyện Ngọc Lặc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(620, 59, 'Huyện Lanh Chánh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(621, 59, 'Huyện Như Thanh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(622, 59, 'Huyện Như Xuân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(623, 59, 'Huyện Thường Xuân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(624, 59, 'Huyện Bá Thước', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(625, 59, 'Huyện Mường Lát', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(626, 59, 'Huyện Quan Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(627, 59, 'Huyện Quan Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(628, 59, 'Thị xã Sầm Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(629, 59, 'Thị xã Bỉm Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(630, 59, 'Thành phố Thanh Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(631, 60, 'Huyện A Lưới', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(632, 60, 'Huyện Nam Đông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(633, 60, 'Huyện Phú Lộc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(634, 60, 'Huyện Hương Thủy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(637, 60, 'Huyện Hương Trà', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(636, 60, 'Huyện Phú Vang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(638, 60, 'Huyện Quảng Điền', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(639, 60, 'Huyện Phong Điền', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(640, 60, 'Thành phố Huế', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(641, 61, 'Huyện Tân Phú Đông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(642, 61, 'Huyện Tân Phước', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(643, 61, 'Huyện Gò Công Đông', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(644, 61, 'Huyện Gò Công Tây', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(645, 61, 'Huyện Chợ Gạo', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(646, 61, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(647, 61, 'Huyện Cai Lậy', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(648, 61, 'Huyện Cái Bè', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(649, 61, 'Thị xã Gò Công', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(650, 61, 'Thành phố Mỹ Tho', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(651, 62, 'Huyện Duyên Hải', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(652, 62, 'Huyện Cầu Ngang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(653, 62, 'Huyện Trà Cú', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(654, 62, 'Huyện Châu Thành', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(655, 62, 'Huyện Tiểu Cần', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(656, 62, 'Huyện Cầu Kè', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(657, 62, 'Huyện Càng Long', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(658, 62, 'Thành phố Trà Vinh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(659, 63, 'Huyện Sơn Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(660, 63, 'Huyện Yên Sơn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(661, 63, 'Huyện Hàm Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(662, 63, 'Huyện Chiêm Hóa', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(663, 63, 'Huyện Na Hang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(664, 63, 'Huyện Lâm Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(665, 63, 'Thành phố Tuyên Quang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(666, 64, 'Huyện Bình Tân', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(667, 64, 'Huyện Vũng Liêm', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(668, 64, 'Huyện Trà Ôn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(669, 64, 'Huyện Tam Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(670, 64, 'Huyện Bình Minh', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(671, 64, 'Huyện Manh Thít', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(672, 64, 'Huyện Long Hồ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(673, 64, 'Thành phố Vĩnh Long', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(674, 65, 'Huyện Tam Đảo', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(675, 65, 'Thị xã Phúc Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(676, 65, 'Huyện Sông Lô', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(677, 65, 'Huyện Bình Xuyên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(678, 65, 'Huyện Yên Lạc', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(679, 65, 'Huyện Vĩnh Tường', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(680, 65, 'Huyện Lập Thạch ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(681, 65, 'Huyện Tam Dương', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(682, 65, 'Thành phố Vĩnh Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(683, 66, 'Huyện Lục Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(684, 66, 'Huyện Trạm Tấu', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(685, 66, 'Huyện Trấn Yên ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(686, 66, 'Huyên Văn Chấn', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(687, 66, 'Huyện Mù Cang Chải', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(688, 66, 'Huyện Yên Bình', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(689, 66, 'Huyện Văn Yên', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(690, 66, 'Thị xã Nghĩa Lộ', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(691, 66, 'Thành phố Yên Bái', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `docthu`
--

CREATE TABLE `docthu` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `file` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `docthu`
--

INSERT INTO `docthu` (`id`, `product_id`, `file`, `created_at`, `updated_at`) VALUES
(1, 54, '1513399530_s.pdf', NULL, NULL),
(2, 54, '1513399530_s1.pdf', NULL, NULL),
(3, 55, '1513583984_s.pdf', NULL, NULL),
(4, 55, '1513583984_s1.pdf', NULL, NULL),
(5, 28, '1513586510_s.pdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `photo` text,
  `content` text,
  `position` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `photo`, `content`, `position`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Phương Mai', '1511314417_sec_feed_img_2.png', '<p style=\"text-align: center;\">Nh&agrave; s&aacute;ch online Edufly hội tụ đầy đủ v&agrave; cập nhật nhanh nhất c&aacute;c tựa s&aacute;ch đủ thể loại với mức giảm 5 &ndash; 15%. Qua nhiều năm, kh&ocirc;ng chỉ l&agrave; địa chỉ tin cậy để bạn mua s&aacute;ch trực tuyến, Edufly c&ograve;n c&oacute; qu&agrave; tặng, văn ph&ograve;ng phẩm, vật dụng gia đ&igrave;nh,&hellip;với chất lượng đảm bảo, chủng loại đa dạng</p>', NULL, '2017-12-11 02:10:09', '2017-12-11 02:10:09'),
(2, 'Nguyễn Mai Phương', '1511344660_khach1.jpg', '<p style=\"text-align: center;\">Nh&agrave; s&aacute;ch online Edufly hội tụ đầy đủ v&agrave; cập nhật nhanh nhất c&aacute;c tựa s&aacute;ch đủ thể loại với mức giảm 5 &ndash; 15%. Qua nhiều năm, kh&ocirc;ng chỉ l&agrave; địa chỉ tin cậy để bạn mua s&aacute;ch trực tuyến, Edufly c&ograve;n c&oacute; qu&agrave; tặng, văn ph&ograve;ng phẩm, vật dụng gia đ&igrave;nh,&hellip;với chất lượng đảm bảo, chủng loại đa dạng, chế độ bảo h&agrave;nh đầy đủ v&agrave; gi&aacute; cả hợp l&yacute; từ h&agrave;ng trăm</p>', NULL, '2017-11-22 02:57:40', '2017-11-22 02:57:40');

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `codemap` longtext COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `image_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `name`, `alias`, `photo`, `status`, `image_path`, `alt`, `stt`, `created_at`) VALUES
(138, 20, NULL, NULL, '1515401306_12.jpg', 1, NULL, NULL, 0, '2018-01-08 08:48:26'),
(137, 20, NULL, NULL, '1515401306_8.jpg', 1, NULL, NULL, 0, '2018-01-08 08:48:26'),
(136, 20, NULL, NULL, '1515401306_7.jpg', 1, NULL, NULL, 0, '2018-01-08 08:48:26'),
(144, 11, NULL, NULL, '1515404903_8.jpg', 1, NULL, NULL, 0, '2018-01-08 09:48:23'),
(143, 11, NULL, NULL, '1515404903_7.jpg', 1, NULL, NULL, 0, '2018-01-08 09:48:23'),
(142, 11, NULL, NULL, '1515404903_6.jpg', 1, NULL, NULL, 0, '2018-01-08 09:48:23'),
(80, 8, NULL, NULL, '1511515090_b2.png', 1, NULL, NULL, 0, '2017-11-24 09:18:10'),
(81, 8, NULL, NULL, '1511515090_b6.jpg', 1, NULL, NULL, 0, '2017-11-24 09:18:10'),
(82, 8, NULL, NULL, '1511515090_b7.jpg', 1, NULL, NULL, 0, '2017-11-24 09:18:10'),
(83, 8, NULL, NULL, '1511515090_b8.jpg', 1, NULL, NULL, 0, '2017-11-24 09:18:10'),
(129, 55, NULL, NULL, '1515401090_3.jpg', 1, NULL, NULL, 0, '2018-01-08 08:44:50'),
(128, 55, NULL, NULL, '1515401090_2.jpg', 1, NULL, NULL, 0, '2018-01-08 08:44:50'),
(127, 55, NULL, NULL, '1515401090_1.jpg', 1, NULL, NULL, 0, '2018-01-08 08:44:50'),
(132, 24, NULL, NULL, '1515401150_6.jpg', 1, NULL, NULL, 0, '2018-01-08 08:45:50'),
(131, 24, NULL, NULL, '1515401150_4.jpg', 1, NULL, NULL, 0, '2018-01-08 08:45:50'),
(130, 24, NULL, NULL, '1515401150_3.jpg', 1, NULL, NULL, 0, '2018-01-08 08:45:50'),
(135, 23, NULL, NULL, '1515401161_10.jpg', 1, NULL, NULL, 0, '2018-01-08 08:46:01'),
(134, 23, NULL, NULL, '1515401161_9.jpg', 1, NULL, NULL, 0, '2018-01-08 08:46:01'),
(133, 23, NULL, NULL, '1515401161_8.jpg', 1, NULL, NULL, 0, '2018-01-08 08:46:01'),
(141, 19, NULL, NULL, '1515401318_7.jpg', 1, NULL, NULL, 0, '2018-01-08 08:48:38'),
(140, 19, NULL, NULL, '1515401318_6.jpg', 1, NULL, NULL, 0, '2018-01-08 08:48:38'),
(139, 19, NULL, NULL, '1515401318_2.jpg', 1, NULL, NULL, 0, '2018-01-08 08:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `lienket`
--

CREATE TABLE `lienket` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lienket`
--

INSERT INTO `lienket` (`id`, `user_id`, `name`, `link`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(4, 5, 'Slider 1', NULL, '1503972273_banner.png', NULL, NULL, 1, 0, 'slider', 1, '2017-08-29 02:04:33', '2017-08-28 19:04:33'),
(5, 5, 'Slider 2', 'http://gco.vn/', '1503972281_banner.png', NULL, NULL, 1, 0, 'slider', 2, '2017-08-29 02:04:41', '2017-08-28 19:04:41'),
(8, 5, 'Chị Thanh Lam', NULL, '1504774299_relation-3.png', NULL, NULL, 1, 0, 'cam-nhan', 1, '2017-09-07 08:51:40', '2017-09-07 01:51:40'),
(9, 5, 'Chị Lê Thu Thủy', 'http://gco.vn/', '1504774309_relation-4.png', NULL, NULL, 1, 0, 'cam-nhan', 2, '2017-09-07 08:51:49', '2017-09-07 01:51:49'),
(10, 5, 'Chị Khánh Ngọc', NULL, '1504774321_relation-1.png', NULL, NULL, 1, 0, 'cam-nhan', 3, '2017-09-07 08:52:01', '2017-09-07 01:52:01'),
(11, 5, 'Anh Tuấn Lâm Nhã', NULL, '1504774330_relation-2.png', NULL, NULL, 1, 0, 'cam-nhan', 4, '2017-09-07 08:52:10', '2017-09-07 01:52:10'),
(45, 5, 'right sidebar', NULL, '1510128895_advs1.jpg', NULL, NULL, 1, 0, 'chuyen-muc', 1, '2017-11-08 08:14:55', '2017-11-08 01:14:55'),
(16, 5, 'Chi nhánh Hà Nội', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782745_bv3.jpg', 'Số 65 Cửa Bắc, Phường Trúc Bạch, Quận Ba Đình', '<p>X&atilde; Trưng Trắc, Huyện Văn L&acirc;m, Tỉnh Hưng Y&ecirc;n&nbsp;<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;<br />Email: chauhungjsc@hn.vnn.vn</p>', 1, 0, 'chi-nhanh', 1, '2017-09-05 09:34:50', '2017-09-05 02:34:50'),
(17, 5, 'Chi nhánh HCM', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761607615941!2d105.82071311450424!3d21.00219108601282!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac83e47ecaa9%3A0x110275dc966aadd8!2sToyota+Thanh+Xu%C3%A2n!5e0!3m2!1svi!2s!4v1504085273578', '1502782773_bv1.jpg', '85 Nguyễn Thị Thập(Khu dân cư Himlam, Phường Tân Hưng) Quận 7', '<p>144 Khuất Duy Tiến, P. Nh&acirc;n Ch&iacute;nh, Q. Thanh Xu&acirc;n, HN<br />Tel: (0321)3997151&nbsp;<br />Fax: (0321) 3997152&nbsp;</p>', 1, 0, 'chi-nhanh', 2, '2017-09-05 09:35:59', '2017-09-05 02:35:59'),
(25, 5, 'Đối tác 1', 'http://gco.vn/', '1503974583_dt3.png', NULL, NULL, 1, 0, 'doi-tac', 1, '2017-08-28 19:43:03', '2017-08-28 19:43:03'),
(26, 5, 'Đối tác 2', NULL, '1503974601_dt2.png', NULL, NULL, 1, 0, 'doi-tac', 2, '2017-08-28 19:43:21', '2017-08-28 19:43:21'),
(27, 5, 'Đối tác 3', NULL, '1503974611_dt4.png', NULL, NULL, 1, 0, 'doi-tac', 3, '2017-08-28 19:43:31', '2017-08-28 19:43:31'),
(28, 5, 'Đối tác 4', NULL, '1503974620_dt1.png', NULL, NULL, 1, 0, 'doi-tac', 4, '2017-08-28 19:43:40', '2017-08-28 19:43:40'),
(29, 5, 'Đối tác 5', 'http://gco.vn/', '1503974634_dt5.png', NULL, NULL, 1, 0, 'doi-tac', 5, '2017-08-28 19:43:54', '2017-08-28 19:43:54'),
(35, 5, 'Hình 1', 'http://gco.vn/', '1504230555_1.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 1, '2017-08-31 18:49:15', '2017-08-31 18:49:15'),
(36, 5, 'Hình ảnh 2', NULL, '1504230566_2.jpg', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2017-08-31 18:49:26', '2017-08-31 18:49:26'),
(38, 5, 'Tiêu chí 1', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 1, '2017-09-05 03:05:01', '2017-09-05 03:05:01'),
(39, 5, 'Tiêu chí 2', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 2, '2017-09-05 03:05:10', '2017-09-05 03:05:10'),
(40, 5, 'Tiêu chí 3', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 3, '2017-09-05 03:05:22', '2017-09-05 03:05:22'),
(41, 5, 'Tiêu chí 4', NULL, '', 'Áp dụng ngay các phương pháp giảm cân, tăng cơ được biên soạn chuyên nghiệp đã áp dụng thành công cho nhiều ngôi sao và doanh nhân.', NULL, 1, 0, 'tieu-chi', 4, '2017-09-05 03:05:31', '2017-09-05 03:05:31'),
(46, 5, 'quảng cáo', 'http://gco.vn/', '1510128929_advs2.jpg', NULL, NULL, 1, 0, 'chuyen-muc', 2, '2017-11-08 08:15:29', '2017-11-08 01:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(250) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `total_money` int(11) DEFAULT NULL,
  `photo` text,
  `status` int(2) DEFAULT NULL,
  `remember_token` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `password`, `name`, `phone`, `email`, `address`, `total_money`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'hoangchuong', '$2y$10$mjzZcnMvxFECBHCN6hHb8uiEHCIni8PcbMH9GMEwtcgHyp31TNdWi', 'Hoàng Hồng Chương', '0987654321', 'chuonghoanghong@gmail.com', 'Cầu Diễn, Từ Liêm, Hà Nội', NULL, 'chuong.jpg', NULL, NULL, '2017-12-15 09:40:33', '2017-12-15 09:40:33'),
(2, 'chuonghh', '$2y$10$XGwTwpQvDRJ0I3fy61ZFlO3duWbhhtgBgYcgybbK0L4TRd6bh/JNy', 'Hoàng Chương', '0987654321', 'chuonghh@gco.vn', 'Cầu Diễn, Từ Liêm, Hà Nội', NULL, 'hqdefault.jpg-1494252094.jpg', NULL, NULL, '2017-12-15 09:43:25', '2017-12-15 09:43:25');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` text COLLATE utf8_unicode_ci,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `alias`, `photo`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(3, 'Trang chủ', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 1, '2017-08-24 04:42:40', '2017-08-23 21:42:40'),
(2, 'Giới thiệu', 'gioi-thieu', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 2, '2017-09-01 01:33:58', '2017-08-31 18:33:58'),
(12, 'Sản phẩm', 'san-pham', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 3, '2017-09-01 01:34:21', '2017-08-31 18:34:21'),
(13, 'Tin tức', 'tin-tuc', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 4, '2017-08-24 04:17:41', '2017-08-23 21:17:41'),
(14, 'Liên hệ', 'lien-he', NULL, 1, 0, 0, NULL, NULL, NULL, 'menu-top', 5, '2017-08-24 04:17:32', '2017-08-23 21:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2017_06_05_042524_create_products_table', 1),
('2017_06_05_045215_create_images_table', 1),
('2017_06_07_033057_create_news_categories_table', 1),
('2017_06_07_033135_create_news_table', 1),
('2017_06_07_033425_create_setting_table', 1),
('2017_06_07_033619_create_pages_table', 1),
('2017_06_07_033944_create_contact_table', 1),
('2017_06_07_034012_create_footer_table', 1),
('2017_06_07_034035_create_slider_table', 1),
('2017_06_07_034117_create_useronline_table', 1),
('2017_06_07_034335_create_order_table', 1),
('2017_06_07_034407_create_order_detail_table', 1),
('2017_06_07_034448_create_newsletter_table', 1),
('2017_06_07_034655_create_order_status_table', 1),
('2017_06_07_064339_create_counter_table', 1),
('2017_06_07_070934_create_partner_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `background` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `noibat` int(11) DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `cate_id`, `user_id`, `name`, `alias`, `photo`, `background`, `mota`, `content`, `status`, `noibat`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(1, 0, 5, 'Tin tức 1', 'tin-tuc-1', '1511145854_brand1.jpg', '1510125790_2016-toyota-avalon-banner.jpg', 'Một vẻ ngoài bảnh bao ngoài trang phục ra thì còn cần đến sự góp sức không nhỏ của những món phụ kiện thời trang quý ông hữu dụng và cá tính. Với các đấng mày râu, ngoài những bộ quần áo vốn chiếm vai trò quan trọng tạo nên sức hút riêng của mình, không thể lãng quên vai trò của những món phụ kiện mang phong cách thời trang nam như trang sức nam thời thượng, như mắt kính, ví bóp nam với màu sắc và kiểu dáng sao cho thật “vừa vặn” khi kết hợp cùng với những bộ trang phục đẳng cấp.', '<p>Hiện nay dạy kỹ năng sống v&agrave; tổ chức hoạt động ngoại kh&oacute;a d&agrave;nh cho học sinh l&agrave; rất cần thiết. Đặc biệt, với học sinh THPT th&igrave; c&agrave;ng quan trọng hơn, nhằm trang bị cho c&aacute;c em kiến thức cũng như kỹ năng giải quyết một c&aacute;ch chủ động, t&iacute;ch cực v&agrave; hiệu quả nhất c&aacute;c t&igrave;nh huống, y&ecirc;u cầu của cuộc sống khi gặp phải, trung t&acirc;m luyện thi v&agrave;o lớp 10 h&agrave; nội, trung tam luyen thi tai ha noi gi&uacute;p cho học sinh c&oacute; cơ hội tiếp x&uacute;c, cảm gi&aacute;c, cảm nhận, trải nghiệm trước những hiện tượng, sự vật, sự việc đ&atilde; v&agrave; đang diễn ra trong tự nhi&ecirc;n, cũng như trong cuộc sống x&atilde; hội.</p>\r\n<p>Nhưng c&oacute; một c&acirc;u hỏi đặt ra ở đ&acirc;y l&agrave; liệu l&agrave;m thế n&agrave;o để vừa c&acirc;n bằng giữa việc hoạt động ngoại kho&aacute; v&agrave; việc học tập?</p>\r\n<p>Đ&acirc;y kh&ocirc;ng chỉ l&agrave; sự băn khoăn của c&aacute;c bạn học sinh m&agrave; c&ograve;n l&agrave; của phụ huynh nữa. V&igrave; vậy ch&uacute;ng t&ocirc;i sẽ gi&uacute;p c&aacute;c bạn c&aacute;c c&aacute;ch để c&oacute; thể c&acirc;n bằng giữa việc hoạt động ngoại kho&aacute; v&agrave; việc học tập hiệu quả.</p>\r\n<p class=\"text-center\"><img title=\"\" src=\"http://localhost/sigma/backend/news/images/news-detail.jpg\" alt=\"\" /></p>\r\n<p>1 X&aacute;c định mục ti&ecirc;u:</p>\r\n<p>Khi tham gia một hoạt động n&agrave;o đ&oacute; hay mới bắt đầu 1 c&ocirc;ng việc th&igrave; ch&uacute;ng ta phải đặt ra được mục ti&ecirc;u của việc đ&oacute; l&agrave; g&igrave;? Ch&uacute;ng ta mong đợi điều g&igrave; ở bản th&acirc;n khi thực hiện điều đ&oacute;? C&oacute; thể c&oacute; bạn đam m&ecirc; với những vũ điệu h&atilde;y trở th&agrave;nh những vũ c&ocirc;ng để thoả m&atilde;n đam m&ecirc;. Nếu bạn đam m&ecirc; với những kiến thức kinh doanh từ nhỏ th&igrave; h&atilde;y tham gia c&aacute;c CLB học thuật, c&ograve;n l&agrave; người mong muốn đem lại những lợi &iacute;ch cho cộng đồng h&atilde;y tham gia c&aacute;c tổ chức phi lợi nhuận chẳng hạn,&hellip;</p>\r\n<p class=\"text-center\"><img title=\"\" src=\"http://localhost/sigma/backend/news/images/news-detail3.jpg\" alt=\"\" /></p>', 1, 1, NULL, NULL, NULL, 'tin-tuc', 1, '2017-11-23 08:05:04', '2017-11-23 01:05:04'),
(2, 0, 5, 'Quần áo thiết kế tay', 'quan-ao-thiet-ke-tay', '1515401226_5.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2018-01-08 08:47:06', '2018-01-08 08:47:06'),
(3, 0, 5, 'KHÁM PHÁ THỂ GIỚI THỜI TRANG', 'kham-pha-the-gioi-thoi-trang', '1515401232_7.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 3, '2018-01-08 08:47:12', '2018-01-08 08:47:12'),
(4, 0, 5, 'Dự án khu phức hợp sang trọng tiện nghi Ascott Waterfront Saigon TP Hồ Chí Minh', 'du-an-khu-phuc-hop-sang-trong-tien-nghi-ascott-waterfront-saigon-tp-ho-chi-minh', '1515401213_4.jpg', '', 'Tọa lạc tại số 1 – 1A Tôn Đức Thắng, phường Bến Nghé, quận 1, căn hộ cao cấp Ascott Waterfront Saigon là một phần của tòa nhà phức hợp bao gồm khu vực văn phòng với trụ sở của nhiều công ty tài chính và ngân hàng.', '<p>Tọa lạc tại số 1 &ndash; 1A T&ocirc;n Đức Thắng, phường Bến Ngh&eacute;, quận 1, căn hộ cao cấp Ascott Waterfront Saigon l&agrave; một phần của t&ograve;a nh&agrave; phức hợp bao gồm khu vực văn ph&ograve;ng với trụ sở của nhiều c&ocirc;ng ty t&agrave;i ch&iacute;nh v&agrave; ng&acirc;n h&agrave;ng.</p>\r\n<p><img src=\"https://bizweb.dktcdn.net/100/199/106/files/20151207145552-7ba6.jpg?v=1492971609996\" alt=\"Dự &aacute;n khu phức hợp sang trọng tiện nghi Ascott Waterfront Saigon TP Hồ Ch&iacute; Minh\" width=\"615\" height=\"738\" /></p>\r\n<p><br /><strong>Quy m&ocirc; dự &aacute;n Ascott Waterfront Saigon</strong></p>\r\n<p>Dự &aacute;n Ascott Waterfront Saigon được x&acirc;y dựng tr&ecirc;n khu đất c&oacute; diện t&iacute;ch 2.190 m2, l&agrave; khu cao ốc thương mại v&agrave; căn hộ cao cấp hạng A với t&ograve;a th&aacute;p cao 27 tầng, 4 tầng hầm, 1 tầng s&acirc;n thượng v&agrave; 1 tầng hồ bơi.<br />Trong đ&oacute; từ tầng trệt đến tầng 9 l&agrave; khu vực văn ph&ograve;ng, trung t&acirc;m thương mại. Từ t&acirc;ng 10 đến tầng 25 l&agrave; khu căn hộ, tầng 26 v&agrave; 27 l&agrave; khu penthouse.</p>\r\n<p><img src=\"https://bizweb.dktcdn.net/100/199/106/files/anh-thuc-te-1460537793.jpg?v=1492971641836\" alt=\"Dự &aacute;n khu phức hợp sang trọng tiện nghi Ascott Waterfront Saigon TP Hồ Ch&iacute; Minh\" width=\"600\" height=\"800\" /></p>\r\n<p>&nbsp;</p>\r\n<p>T&ograve;a nh&agrave; cung cấp c&aacute;c dịch vụ hạng sang cao cấp bao gồm dịch vụ: ng&acirc;n h&agrave;ng, văn ph&ograve;ng thương mại, căn hộ cao cấp v&agrave; c&acirc;u lạc bộ. Căn hộ Ascott Waterfront saigon c&oacute; chức năng hỗn hợp thương mại v&agrave; căn hộ cao cấp.</p>\r\n<p><img src=\"https://bizweb.dktcdn.net/100/199/106/files/tien-cich-du-an-1460537819.jpg?v=1492971707093\" alt=\"Dự &aacute;n khu phức hợp sang trọng tiện nghi Ascott Waterfront Saigon TP Hồ Ch&iacute; Minh\" width=\"950\" height=\"634\" /></p>\r\n<p>Th&ocirc;ng tin từ CafeLand</p>\r\n<p>Dự &aacute;n Ascott Waterfront Saigon được quản l&yacute; bởi The Ascott Limited (Ascott) v&agrave; Tập đo&agrave;n M.I.K Corporation. Dự &aacute;n n&agrave;y hiện đang trong qu&aacute; tr&igrave;nh ho&agrave;n thiện. Đ&acirc;y l&agrave; dự &aacute;n căn hộ si&ecirc;u sang tại TP.HCM với gi&aacute; rao b&aacute;n tr&ecirc;n thị trường khoảng 8.000 USD/m2</p>', 1, 0, NULL, NULL, NULL, 'tin-tuc', 4, '2018-01-08 08:46:53', '2018-01-08 08:46:53'),
(8, 0, 5, 'Tin tuyển dụng 1', 'tin-tuyen-dung-1', '1507947364_home-item-1.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tuyen-dung', 1, '2017-10-14 02:20:41', '2017-10-13 19:16:04'),
(9, 0, 5, 'tin tuyen dụng hot', 'tin-tuyen-dung-hot', '1507947598_home-cate-2.jpg', '', NULL, NULL, 1, 0, NULL, NULL, NULL, 'tuyen-dung', 2, '2017-10-14 02:20:47', '2017-10-13 19:19:58'),
(10, 0, 5, 'Tin tức 2', 'tin-tuc-2', '1515401207_3.jpg', '', 'Một vẻ ngoài bảnh bao ngoài trang phục ra thì còn cần đến sự góp sức không nhỏ của những món phụ kiện thời trang quý ông hữu dụng và cá tính. Với các đấng mày râu, ngoài những bộ quần áo vốn chiếm vai trò quan trọng tạo nên sức hút riêng của mình, không thể lãng quên vai trò của những món phụ kiện mang phong cách thời trang nam như trang sức nam thời thượng, như mắt kính, ví bóp nam với màu sắc và kiểu dáng sao cho', NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 5, '2018-01-08 08:46:47', '2018-01-08 08:46:47'),
(11, 0, 5, 'tin tức 3', 'tin-tuc-3', '1515401203_2.jpg', '', 'Một vẻ ngoài bảnh bao ngoài trang phục ra thì còn cần đến sự góp sức không nhỏ của những món phụ kiện thời trang quý ông hữu dụng và cá tính. Với các đấng mày râu, ngoài những bộ quần áo vốn chiếm vai trò quan trọng tạo nên sức hút riêng của mình, không thể lãng quên vai trò của những món phụ kiện mang phong cách thời trang nam như trang sức nam thời thượng, như mắt kính, ví bóp nam với màu sắc và kiểu dáng sao cho', NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 6, '2018-01-08 08:46:43', '2018-01-08 08:46:43'),
(12, 0, 5, 'Mang thương hiệu HATHACO đến triển lãm quốc tếx', 'mang-thuong-hieu-hathaco-den-trien-lam-quoc-tex', '1515401194_1.jpg', '', 'Một vẻ ngoài bảnh bao ngoài trang phục ra thì còn cần đến sự góp sức không nhỏ của những món phụ kiện thời trang quý ông hữu dụng và cá tính. Với các đấng mày râu, ngoài những bộ quần áo vốn chiếm vai trò quan trọng tạo nên sức hút riêng của mình, không thể lãng quên vai trò của những món phụ kiện mang phong cách thời trang nam như trang sức nam thời thượng, như mắt kính, ví bóp nam với màu sắc và kiểu dáng sao cho', NULL, 1, 0, NULL, NULL, NULL, 'tin-tuc', 7, '2018-01-08 08:46:34', '2018-01-08 08:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `name` text COLLATE utf8_unicode_ci,
  `link` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `user_id`, `name`, `link`, `email`, `phone`, `photo`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(47, 0, NULL, NULL, 'chuonghoanghong@gmail.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 1, '2017-11-20 01:06:37', '2017-11-20 01:06:37'),
(48, 5, NULL, NULL, 'gco@gmail.com', NULL, NULL, NULL, NULL, 1, 0, 'newsletter', 1, '2017-11-20 08:10:29', '2017-11-20 01:10:29');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mota` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '0',
  `lever` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `background` text COLLATE utf8_unicode_ci,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `alias`, `photo`, `mota`, `status`, `lever`, `parent_id`, `title`, `keyword`, `description`, `com`, `stt`, `created_at`, `background`, `updated_at`) VALUES
(3, 'Sáng tạo', 'sang-tao', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 2, '2018-01-02 03:45:28', NULL, '2018-01-02 03:45:28'),
(2, 'Thời trang', 'thoi-trang', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 1, '2018-01-02 03:48:49', NULL, '2018-01-02 03:48:49'),
(13, 'Cách thức thanh toán', 'cach-thuc-thanh-toan', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 1, '2017-08-29 04:05:32', NULL, '2017-08-28 21:05:32'),
(14, 'Quy định mua hàng', 'quy-dinh-mua-hang', NULL, NULL, 1, 0, 0, NULL, NULL, NULL, 'bai-viet', 2, '2017-08-29 04:05:44', NULL, '2017-08-28 21:05:44'),
(20, 'Không gian phòng ngủ', 'khong-gian-phong-ngu', '1504077747_1_19.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 1, '2017-08-30 07:48:00', NULL, '2017-08-30 00:48:00'),
(21, 'Không gian phòng khách', 'khong-gian-phong-khach', '1504078021_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 2, '2017-08-30 07:48:07', NULL, '2017-08-30 00:48:07'),
(22, 'Phòng bếp hiện đại', 'phong-bep-hien-dai', '1504078039_1_21.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 3, '2017-08-30 07:48:12', NULL, '2017-08-30 00:48:12'),
(23, 'Phòng ngủ châu âu', 'phong-ngu-chau-au', '1504078067_1_20.jpg', 'Phòng khách là không gian chính của ngôi nhà, là nơi sum họp của các thành viên trong gia đình, thể hiện gu thẩm mỹ và tính cách của gia chủ.', 1, 0, 0, NULL, NULL, NULL, 'khong-gian', 4, '2017-08-30 07:48:18', NULL, '2017-08-30 00:48:18'),
(31, 'Sản phẩm khác', 'san-pham-khac', '1505465773_sv3.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 3, '2017-09-15 09:49:21', '1505468961_dv4.png', '2017-09-15 02:49:21'),
(30, 'Canxi nano', 'canxi-nano', '1505465758_sv2.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 2, '2017-09-15 09:48:41', '1505468921_dv3.png', '2017-09-15 02:48:41'),
(29, 'Sản phẩm bảo vệ sức khỏe', 'san-pham-bao-ve-suc-khoe', '1505465729_sv1.jpg', 'Every man sooner or later, confronts with the problem of damage of teeth and dentition.', 1, 0, 0, NULL, NULL, NULL, 'dich-vu', 1, '2017-09-16 04:14:59', '1505468944_dv4.png', '2017-09-15 21:14:59'),
(33, 'Sản phẩm mới nhập', 'san-pham-moi-nhap', '', NULL, 0, 0, 0, NULL, NULL, NULL, 'dich-vu', 4, '2017-09-18 01:49:43', '', '2017-09-17 18:49:43'),
(34, 'Nhiếp ảnh', 'nhiep-anh', '', NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 3, '2018-01-02 03:49:02', '', '2018-01-02 03:49:02'),
(35, 'Du lịch', 'du-lich', '', NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 4, '2018-01-02 03:49:18', '', '2018-01-02 03:49:18'),
(36, 'Kinh tế', 'kinh-te', '', NULL, 1, 0, 0, NULL, NULL, NULL, 'tin-tuc', 5, '2018-01-02 03:49:29', '', '2018-01-02 03:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `nxb`
--

CREATE TABLE `nxb` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nxb`
--

INSERT INTO `nxb` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Kim Đồng', '2017-11-21 21:04:25', '2017-11-21 21:04:25'),
(3, 'Sư phạm', '2017-11-21 21:04:50', '2017-11-21 21:04:50'),
(4, 'Nhà xuất bản thanh niên', '2017-11-24 20:46:23', '2017-11-24 20:46:23'),
(5, 'Tuổi trẻ', '2017-12-09 03:03:31', '2017-12-09 03:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `hoten` text COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `qty` text COLLATE utf8_unicode_ci NOT NULL,
  `totalprice` int(11) NOT NULL,
  `tonggia` int(11) NOT NULL,
  `donhang` longtext COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(10) UNSIGNED NOT NULL,
  `tinhtrang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `com` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `desc` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `position` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `com` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `stt` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `name`, `url`, `photo`, `desc`, `content`, `position`, `com`, `status`, `stt`, `created_at`, `updated_at`) VALUES
(1, 'Marcos Alonso', NULL, '1515402844_1.png', NULL, 'sfsdf  dsfsdf', 'Kế toán', 'doi-tac', 1, NULL, '2017-11-20 00:22:02', '2018-01-08 09:14:04'),
(2, 'Luis Aragones', NULL, '1515402850_2.png', NULL, NULL, NULL, 'doi-tac', 1, NULL, '2017-11-20 00:22:13', '2018-01-08 09:14:10'),
(3, 'Maria Alessis', NULL, '1515402855_3.png', NULL, NULL, NULL, 'doi-tac', 1, NULL, '2017-11-20 00:22:21', '2018-01-08 09:14:15'),
(14, 'gco', NULL, '1515402884_2.png', NULL, NULL, 'Nhân viên', 'doi-tac', 1, NULL, '2018-01-08 09:14:44', '2018-01-08 09:14:44'),
(15, 'Nguyễn Phương Mai', NULL, '1515402911_1.png', NULL, NULL, 'Lễ tân', 'doi-tac', 1, NULL, '2018-01-08 09:15:11', '2018-01-08 09:15:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `theloai_id` int(11) DEFAULT NULL,
  `tacgia_id` int(11) DEFAULT NULL,
  `nxb_id` int(11) DEFAULT NULL,
  `code` text COLLATE utf8_unicode_ci,
  `stt` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `price` int(11) NOT NULL DEFAULT '0',
  `sale` int(11) DEFAULT '0',
  `price_old` int(11) DEFAULT '0',
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `thuonghieu` text COLLATE utf8_unicode_ci,
  `tinhtrang` int(11) NOT NULL DEFAULT '1',
  `video` text COLLATE utf8_unicode_ci,
  `baohanh` text COLLATE utf8_unicode_ci,
  `properties` text CHARACTER SET utf8,
  `model` text COLLATE utf8_unicode_ci,
  `namsanxuat` text COLLATE utf8_unicode_ci,
  `quatang` text COLLATE utf8_unicode_ci,
  `huongdan` text COLLATE utf8_unicode_ci,
  `vanchuyen` text COLLATE utf8_unicode_ci,
  `noibat` int(11) DEFAULT '0',
  `phoido` int(11) DEFAULT '0',
  `xuthe` int(11) DEFAULT '0',
  `tags` text CHARACTER SET utf8,
  `com` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `spbc` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `cate_id`, `theloai_id`, `tacgia_id`, `nxb_id`, `code`, `stt`, `name`, `alias`, `photo`, `price`, `sale`, `price_old`, `mota`, `content`, `thuonghieu`, `tinhtrang`, `video`, `baohanh`, `properties`, `model`, `namsanxuat`, `quatang`, `huongdan`, `vanchuyen`, `noibat`, `phoido`, `xuthe`, `tags`, `com`, `spbc`, `status`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 5, 0, NULL, NULL, NULL, NULL, 1, 'Sản phẩm 1', 'san-pham-1', '1515404821_8.jpg', 150000, 0, 0, '<p>gd dg&nbsp;</p>', '<p>f sg d</p>', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-01-08 09:47:01', '2018-01-08 09:47:01'),
(3, 5, 4, 4, 3, 4, NULL, 3, 'Sản phẩm 4', 'san-pham-4', '1511485712_b10.jpg', 460000, 0, 467000, NULL, '<p>f sf s&nbsp;</p>', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'combo', 1, 1, NULL, NULL, NULL, '2017-11-29 03:51:34', '2017-11-26 19:21:03'),
(4, 5, 41, NULL, NULL, NULL, NULL, 4, 'Sản phẩm x', 'san-pham-x', '1514881921_24.jpg', 3000000, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-01-04 03:49:30', '2018-01-04 03:49:30'),
(6, 5, 46, NULL, NULL, NULL, NULL, 6, 'Sản phẩm demo 1', 'san-pham-demo-1', '1514880417_8.jpg', 100000, 0, 110000, '<p>Innova l&agrave; chữ viết tắt của từ &ldquo;Innovative&rdquo;, c&oacute; nghĩa l&agrave; đổi mới, hiện đại v&agrave; s&aacute;ng tạo. Hơn thế nữa, Innova l&agrave; thế hệ mới của d&ograve;ng xe đa dụng (MPV) trong chiến lược to&agrave;n cầu của Toyota. L&agrave; một sản phẩm c&oacute; chất lượng to&agrave;n cầu, Innova mang đến cho kh&aacute;ch h&agrave;ng kh&ocirc;ng chỉ với chất lượng h&agrave;ng đầu m&agrave; c&ograve;n kiểu d&aacute;ng tuyệt đẹp với phong c&aacute;ch trang nh&atilde;, thiết kế ho&agrave;n hảo, t&iacute;nh năng hoạt động tốt v&agrave; độ an to&agrave;n cao. V&igrave; vậy, kể từ khi được giới thiệu lần đầu ti&ecirc;n v&agrave;o th&aacute;ng 8 năm 2004, Innova đ&atilde; rất được ưa chuộng tr&ecirc;n thế giới v&agrave; được kh&aacute;ch h&agrave;ng Việt Nam đ&oacute;n nhận nồng nhiệt.</p>', '<p>Đ&egrave;n ch&ugrave;m trang tr&iacute; tạo kh&ocirc;ng gian ph&ograve;ng kh&aacute;ch ấm c&uacute;ng v&agrave; sang trọng</p>\r\n<p>nh s&aacute;ng của đ&egrave;n ch&ugrave;m ph&ograve;ng kh&aacute;ch cực kỳ quan trọng trong việc trang tr&iacute; nội thất căn ph&ograve;ng. Ngo&agrave;i những c&ocirc;ng năng trang tr&iacute; chiếu s&aacute;ng th&ocirc;ng thường ch&uacute;ng c&ograve;n g&oacute;p phần t&ocirc;n l&ecirc;n vẻ đẹp sang trọng, ấm c&uacute;ng cho căn ph&ograve;ng kh&aacute;ch của bạn.</p>\r\n<p>Để tạo ra một ko gian ấm &aacute;p với &aacute;nh nguồn &aacute;nh s&aacute;ng dịu nhẹ, lan tỏa bạn cần treo một chiếc đ&egrave;n ch&ugrave;m trang tr&iacute; đảm bảo cường độ &aacute;nh s&aacute;ng vừa phải, nguồn &aacute;nh s&aacute;ng t&ocirc;ng v&agrave;ng sẽ mang lại một cảm gi&aacute;c ấm &aacute;p cho căn ph&ograve;ng v&agrave; đỡ tr&oacute;i mắt . Ngo&agrave;i ra treo một đ&egrave;n ch&ugrave;m pha l&ecirc; lớn tr&ecirc;n trần của ph&ograve;ng ăn cũng rất tốt v&igrave; n&oacute; tượng trưng cho năng lượng dương, rất tốt cho c&aacute;c bữa ăn.</p>\r\n<p>Lựa chọn đ&egrave;n trang tr&iacute; ph&ugrave; hợp cho ph&ograve;ng kh&aacute;ch Đ&egrave;n ch&ugrave;m ph&ograve;ng kh&aacute;ch phải tạo được cho căn ph&ograve;ng kh&ocirc;ng gian ấm c&uacute;ng v&agrave; sang trọng. C&oacute; thể bố tr&iacute; cho ph&ograve;ng kh&aacute;ch những ngọn đ&egrave;n ch&ugrave;m đẹp lấp l&aacute;nh sẽ l&agrave;m cho ph&ograve;ng kh&aacute;ch th&ecirc;m lung linh</p>\r\n<p>C&oacute; rất nhiều loại đ&egrave;n trang tr&iacute; nội thất như đ&egrave;n ch&ugrave;m, đ&egrave;n trần, đ&egrave;n b&agrave;n, ... mỗi loại c&oacute; một ưu điểm v&agrave; c&aacute;ch b&agrave;i tr&iacute; xắp đặt ri&ecirc;ng, v&igrave; k&iacute;ch cỡ mỗi loại kh&aacute;c nhau n&ecirc;n cần phải lụa chọn cho ph&ugrave; hợp với từng kh&ocirc;ng gian</p>\r\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; treo đ&egrave;n ch&ugrave;m trang tr&iacute; ph&ograve;ng kh&aacute;ch cần phải hiểu r&otilde; chức năng, biết lựa chọn đ&egrave;n c&oacute; k&iacute;ch thước ph&ugrave; hợp, ngo&agrave;i việc bạn cần hiểu về đặc điểm từng loại ra th&igrave; đ&egrave;n c&ograve;n phải gắn với kh&ocirc;ng gian kiến tr&uacute;c v&agrave; nội thất.</p>', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-01-02 09:21:02', '2018-01-02 09:21:02'),
(7, 5, 50, NULL, NULL, NULL, NULL, 7, 'Sản phẩm y', 'san-pham-y', '1514880409_29.jpg', 100000, 0, 130000, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-01-02 09:20:56', '2018-01-02 09:20:56'),
(8, 5, 0, NULL, NULL, NULL, NULL, 8, 'Sản phẩm z', 'san-pham-z', '1515404843_9.jpg', 90000, 0, 100000, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-01-08 09:47:23', '2018-01-08 09:47:23'),
(9, 5, 0, NULL, NULL, NULL, NULL, 9, 'Sản phẩm demo 2', 'san-pham-demo-2', '1515404916_4.jpg', 300000, 0, 310000, NULL, NULL, NULL, 0, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-01-08 09:48:36', '2018-01-08 09:48:36'),
(10, 5, 0, NULL, NULL, NULL, NULL, 10, 'Sản phẩm demo x', 'san-pham-demo-x', '1515404909_10.jpg', 140000, 0, 160000, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-01-08 09:48:29', '2018-01-08 09:48:29'),
(11, 5, 0, NULL, NULL, NULL, NULL, 11, 'Sản phẩm demo 4', 'san-pham-demo-4', '1515404903_11.jpg', 20000, 0, 30000, NULL, NULL, NULL, 1, NULL, NULL, 'Hãng sản xuất: Apple###sdf sf###sdf s sdf###Xuất xứ: Chính hãng', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-01-08 09:48:23', '2018-01-08 09:48:23'),
(13, 5, 0, NULL, NULL, NULL, NULL, 13, 'Sản phẩm xyz', 'san-pham-xyz', '1515404892_12.jpg', 200000, 0, 240000, '<p>Nội dung m&ocirc; tả sản phẩm</p>', '<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td colspan=\"3\" height=\"19\">\r\n<p><strong>Th&ocirc;ng số kỹ thuật</strong></p>\r\n</td>\r\n<td valign=\"top\">\r\n<p align=\"center\">LC 200</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" height=\"19\">\r\n<p>Động cơ</p>\r\n</td>\r\n<td valign=\"top\">\r\n<p align=\"center\">4.7 l&iacute;t ( 2UZ-FE)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"3\" height=\"19\">\r\n<p>Hộp số</p>\r\n</td>\r\n<td valign=\"top\">\r\n<p align=\"center\">5 số tự động</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\" valign=\"top\" height=\"19\">\r\n<p><strong>K&Iacute;CH THƯỚC V&Agrave; TRỌNG LƯỢNG</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p>K&iacute;ch thước tổng thể (D&agrave;i x Rộng x Cao)</p>\r\n</td>\r\n<td width=\"68\">\r\n<p align=\"center\">mm</p>\r\n</td>\r\n<td width=\"243\">\r\n<p align=\"center\">4950 x 1970 x 1905</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p>Chiều d&agrave;i cơ sở&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">mm</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">2850</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width=\"349\">\r\n<p>Chiều rộng cơ sở</p>\r\n</td>\r\n<td width=\"88\">\r\n<p>Trước x sau</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">mm</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">1640/1635</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p>K&iacute;ch thước nội thất ( D&agrave;i x Rộng x Cao)</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">mm</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">2715 x 1640 x 1200</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p>Khoảng s&aacute;ng gầm xe&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">mm</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">225</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"2\">\r\n<p>B&aacute;n k&iacute;nh quay v&ograve;ng tối thiểu</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">m</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">5,9</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"2\">\r\n<p>Trọng lượng</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;Kh&ocirc;ng tải</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">kg</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">2675</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>&nbsp;To&agrave;n tải</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">kg</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">3300</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>KHUNG XE</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"2\">\r\n<p>Hệ thống treo</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Trước</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&ETH;ộc lập với đ&ograve;n k&eacute;p, l&ograve; xo cuộn v&agrave; thanh c&acirc;n bằng</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p align=\"center\">Sau</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td valign=\"top\">\r\n<p align=\"center\">Phụ thuộc, loại 4 điểm, l&ograve; xo cuộn v&agrave; tay đ&ograve;n b&ecirc;n</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống phanh</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Trước/Sau</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&ETH;ĩa th&ocirc;ng gi&oacute; 17\"</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Dung t&iacute;ch b&igrave;nh nhi&ecirc;n liệu</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">l&iacute;t</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">93 + 45</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Vỏ xe</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">285/65 R17</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>M&acirc;m xe</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">M&acirc;m đ&uacute;c 17\"</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>ĐỘNG CƠ</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>VVT-i</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Kiểu</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">V8, 32 van, DOHC</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Dung t&iacute;ch c&ocirc;ng t&aacute;c</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">cc</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">4664</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>C&ocirc;ng suất tối đa (EEC NET)</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">HP/rpm</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">271 / 5400</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>M&ocirc; men xoắn tối đa (EEC NET)</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Kg.m/rpm</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">41.8 / 3400</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Ti&ecirc;u chuẩn kh&iacute; thải</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Euro Step 3</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Tốc độ tối đa</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Km/h</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">200</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Chế độ 4 b&aacute;nh chủ động</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">To&agrave;n phần</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p>TRANG THIẾT BỊ CH&Iacute;NH</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>K&iacute;nh chiếu hậu ngo&agrave;i chỉnh điện</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống kiểm so&aacute;t h&agrave;nh tr&igrave;nh</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>*Hệ thống &acirc;m thanh</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">AM/FM, Cassette, CD 6 đĩa, 6 loa</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"2\">\r\n<p>*Hệ thống &ETH;iều ho&agrave;</p>\r\n</td>\r\n<td>\r\n<p>Loại</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Tự động, điều chỉnh 2 v&ugrave;ng độc lập</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Bộ lọc kh&iacute;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan=\"4\">\r\n<p>Ghế</p>\r\n</td>\r\n<td>\r\n<p>Trượt</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">H&agrave;ng 1 v&agrave; 2</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Ngả</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">H&agrave;ng 1 v&agrave; 2</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Điều chỉnh độ cao</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Ghế người l&aacute;i + h&agrave;nh kh&aacute;ch trước</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Đệm lưng</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Chỉnh điện (ghế người l&aacute;i)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống mở kh&oacute;a th&ocirc;ng minh</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Kh&oacute;a cửa từ xa</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống khởi động bằng n&uacute;t bấm</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống chống trộm</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">Hệ thống m&atilde; ho&aacute; kh&oacute;a động cơ + Chu&ocirc;ng b&aacute;o động</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Ăng ten</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">In tr&ecirc;n k&iacute;nh</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p><strong>AN TO&Agrave;N</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>An to&agrave;n chủ động</strong></p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống chống b&oacute; cứng phanh (ABS)</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống ph&acirc;n phối lực phanh điện tử (EBD)</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hỗ trợ lực phanh khẩn cấp (BA)</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>An to&agrave;n bị động</strong></p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">&nbsp;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>T&uacute;i kh&iacute; trước</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute; (người l&aacute;i v&agrave; h&agrave;nh kh&aacute;ch ph&iacute;a trước)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>T&uacute;i kh&iacute; b&ecirc;n h&ocirc;ng</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute; (người l&aacute;i v&agrave; h&agrave;nh kh&aacute;ch ph&iacute;a trước)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>T&uacute;i kh&iacute; r&egrave;m hai b&ecirc;n cửa sổ</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p>Hệ thống tự động ngắt nhi&ecirc;n liệu</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p>&nbsp;</p>\r\n</td>\r\n<td>\r\n<p align=\"center\">C&oacute;</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan=\"4\">\r\n<p>*Chiều d&agrave;i tổng thể l&agrave; 5250mm nếu t&iacute;nh b&aacute;nh phụ</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-01-08 09:48:12', '2018-01-08 09:48:12'),
(25, 5, 49, NULL, NULL, NULL, NULL, 21, 'Sách truyện thiếu nhi mới', 'sach-truyen-thieu-nhi-moi', '1515401129_4.jpg', 200000, 0, 210000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-01-08 08:45:29', '2018-01-08 08:45:29'),
(26, 5, 40, NULL, NULL, NULL, NULL, 22, 'Tắt đèn', 'tat-den', '1515401120_3.jpg', 300000, 0, 320000, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-01-08 08:48:57', '2018-01-08 08:48:57'),
(14, 5, 0, NULL, NULL, NULL, NULL, 14, 'Sản phẩm demo b', 'san-pham-demo-b', '1515404865_9.jpg', 200000, 0, 220000, NULL, NULL, NULL, 1, NULL, NULL, 'man hinh full hd###bo nho 32gb', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-01-08 09:47:45', '2018-01-08 09:47:45'),
(17, 5, 0, NULL, NULL, NULL, NULL, 16, 'Sản phẩm demo f', 'san-pham-demo-f', '1515404857_10.jpg', 60000, 0, 70000, '<p>Đưa &yacute; tưởng thiết kế thương hiệu tiệm cận chiến lược kinh doanh Những nguy&ecirc;n tắc chung nhằm khuyến nghị nh&agrave; quản trị thương hiệu n&ecirc;n xem x&eacute;t trước khi đưa ra c&aacute;c quyết định, đ&oacute; l&agrave;: Kh&aacute;c biệt, Cộng t&aacute;c, Đổi mới,C&ocirc;ng nhận&hellip; Trong sự ph&aacute;t triển mạnh mẽ của c&aacute;c trường ph&aacute;i, quan điểm v&agrave; tư duy về quản trị thương hiệu, nổi bật l&ecirc;n l&agrave; c&aacute;c quan điểm được thể hiện trong bộ...</p>', '<p>Đưa &yacute; tưởng thiết kế thương hiệu tiệm cận chiến lược kinh doanh</p>\r\n<p>Những nguy&ecirc;n tắc chung nhằm khuyến nghị nh&agrave; quản trị thương hiệu n&ecirc;n xem x&eacute;t trước khi đưa ra c&aacute;c quyết định, đ&oacute; l&agrave;: Kh&aacute;c biệt, Cộng t&aacute;c, Đổi mới,C&ocirc;ng nhận&hellip;</p>\r\n<p>Trong sự ph&aacute;t triển mạnh mẽ của c&aacute;c trường ph&aacute;i, quan điểm v&agrave; tư duy về quản trị thương hiệu, nổi bật l&ecirc;n l&agrave; c&aacute;c quan điểm được thể hiện trong bộ s&aacute;ch của Marty Neumeier &ndash; Chủ tịch của Neutron LLC, San Francisco. Bộ s&aacute;ch kh&ocirc;ng chỉ được xếp thứ hạng cao trong Tủ s&aacute;ch Thương hiệu Quốc gia; m&agrave; c&ograve;n được giới kinh doanh to&agrave;n cầu v&iacute; như bộ c&ocirc;ng cụ phục vụ đắc lực cho việc hoạch định v&agrave; thực thi chiến lược thương hiệu.</p>', NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-01-08 09:47:37', '2018-01-08 09:47:37'),
(18, 5, 0, NULL, NULL, NULL, NULL, 17, 'sản phẩm zx', 'san-pham-zx', '1515404849_9.jpg', 500000, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-01-08 09:47:29', '2018-01-08 09:47:29'),
(19, 5, 42, NULL, NULL, NULL, NULL, 18, 'Sản phẩm g', 'san-pham-g', '1515401318_10.jpg', 65000, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-01-08 08:48:38', '2018-01-08 08:48:38'),
(20, 5, 42, NULL, NULL, NULL, NULL, 16, 'Toán tuổi thơ', 'toan-tuoi-tho', '1515401306_12.jpg', 300000, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, 'Elasticated cuffs###Casual fit###100% Cotton###Vận chuyển miễn phí với giao hàng 4 ngày', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-01-08 08:48:26', '2018-01-08 08:48:26'),
(21, 5, 42, NULL, NULL, NULL, NULL, 17, 'Sách toán 12', 'sach-toan-12', '1515401294_8.jpg', 90000, 0, 95000, NULL, NULL, NULL, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-01-08 08:48:14', '2018-01-08 08:48:14'),
(22, 5, 45, NULL, NULL, NULL, NULL, 18, 'Sản phẩm xyzo', 'san-pham-xyzo', '1515401286_7.jpg', 500000, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-01-08 08:48:06', '2018-01-08 08:48:06'),
(23, 5, 48, NULL, NULL, NULL, NULL, 19, 'Sản phẩm sách mới x', 'san-pham-sach-moi-x', '1515401161_9.jpg', 11111, 0, 122222, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-01-08 08:46:01', '2018-01-08 08:46:01'),
(24, 5, 46, NULL, NULL, NULL, NULL, 20, 'Saach moi nhat x3', 'saach-moi-nhat-x3', '1515401150_6.jpg', 100000, 0, 120000, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, 'san-pham', 0, 1, NULL, NULL, NULL, '2018-01-08 08:45:50', '2018-01-08 08:45:50'),
(28, 5, 40, NULL, NULL, NULL, NULL, 23, 'Sản phẩm demo type', 'san-pham-demo-type', '1515401111_2.jpg', 80000, 0, 90000, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-01-08 08:48:55', '2018-01-08 08:48:55'),
(29, 5, 0, NULL, NULL, NULL, NULL, 1, 'Combo demo', 'combo-demo', '1511925958_b3.png', 200000, 0, 210000, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'combo', 0, 1, NULL, NULL, NULL, '2017-11-28 20:25:58', '2017-11-28 20:25:58'),
(40, 0, 0, NULL, NULL, NULL, NULL, 3, 'cpom do sll', 'cpom-do-sll', '', 788678, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, '[]', 'combo', 0, 1, NULL, NULL, NULL, '2017-12-11 02:26:39', '2017-12-11 02:26:39'),
(41, 0, 34, 2, 1, 3, NULL, 1, 'Warren Buffett', 'warren-buffett', '1513246894_bdetail1.jpg', 0, 0, 0, '<p class=\"mt-3 bdetail-author\">Khi nhắc đến Warren Edward Buffett, ch&uacute;ng ta đều biết &ocirc;ng l&agrave; một trong những nh&agrave; đầu tư th&agrave;nh c&ocirc;ng nhất tr&ecirc;n thế giới, được tạp ch&iacute; Forbes xếp vị tr&iacute; người gi&agrave;u thứ hai tr&ecirc;n thế giới sau Bill Gates. Kh&ocirc;ng chỉ dừng lại ở đ&oacute;, &ocirc;ng c&ograve;n rất nổi tiếng với sự ki&ecirc;n định trong triết l&yacute; đầu tư theo gi&aacute; trị cũng như lối sống tiết kiệm d&ugrave; sở hữu khối t&agrave;i sản khổng lổ. Nhưng c&oacute; một điều kh&ocirc;ng phải ai cũng biết, tr&ecirc;n con đường trở n&ecirc;n th&agrave;nh c&ocirc;ng v&agrave; gi&agrave;u c&oacute;, Warren Buffett cũng mắc rất nhiều sai lầm.</p>', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, NULL, 'sach-dien-tu', 0, 1, 'Warren Buffett', NULL, NULL, '2017-12-14 10:21:34', '2017-12-14 10:21:34'),
(44, 0, 30, 2, 3, 5, NULL, 3, 'Trí khùng tự truyện', 'tri-khung-tu-truyen', '1513245250_b13.jpg', 0, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '[]', 'sach-dien-tu', 0, 1, NULL, NULL, NULL, '2017-12-14 09:54:10', '2017-12-14 09:54:10'),
(55, 0, 36, NULL, NULL, NULL, NULL, 22, 'test demo đọc thử', 'test-demo-doc-thu', '1515401090_1.jpg', 0, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1, NULL, 'san-pham', 1, 1, NULL, NULL, NULL, '2018-01-08 08:48:53', '2018-01-08 08:48:53'),
(43, 0, 34, 0, 0, 0, NULL, 2, 'sf sf', 'sf-sf', '1513152668_b20.jpg', 0, 0, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, '[]', 'sach-dien-tu', 0, 1, NULL, NULL, NULL, '2017-12-14 09:55:50', '2017-12-14 09:55:50');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `stt` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci,
  `noibat` int(2) DEFAULT '0',
  `mota` text CHARACTER SET utf8,
  `com` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `lever` int(11) NOT NULL DEFAULT '0',
  `title` text COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `parent_id`, `stt`, `name`, `alias`, `photo`, `noibat`, `mota`, `com`, `status`, `lever`, `title`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Sam sung', 'sam-sung', '', 0, NULL, 'san-pham', 1, 0, NULL, NULL, NULL, '2018-01-08 09:29:22', '2018-01-08 09:29:22'),
(2, 0, 2, 'Apple', 'apple', '', 0, NULL, 'san-pham', 1, 0, NULL, NULL, NULL, '2018-01-08 09:29:28', '2018-01-08 09:29:28'),
(3, 0, 3, 'Nokia', 'nokia', '', 0, NULL, 'san-pham', 1, 0, NULL, NULL, NULL, '2018-01-08 09:29:53', '2018-01-08 09:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tenkhongdau` varchar(255) DEFAULT NULL,
  `mota_vi` text,
  `mota_en` text,
  `photo` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `stt` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`id`, `name`, `tenkhongdau`, `mota_vi`, `mota_en`, `photo`, `thumb`, `stt`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Chí Minh', '', '', '', '', '', 30, 1, '0000-00-00 00:00:00', '2017-11-23 21:04:04'),
(2, 'Hà Nội', '', '', '', '', '', 24, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Hải Phòng', '', '', '', '', '', 28, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'An Giang', '', '', '', '', '', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Bà Rịa Vũng Tàu', '', '', '', '', '', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Bạc Liêu', '', '', '', '', '', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Bắc Cạn', '', '', '', '', '', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Bắc Giang', '', '', '', '', '', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Bắc Ninh', '', '', '', '', '', 6, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Bến Tre', '', '', '', '', '', 7, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Bình Dương', '', '', '', '', '', 8, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Bình Định', '', '', '', '', '', 9, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Bình Phước', '', '', '', '', '', 10, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'Bình Thuận', '', '', '', '', '', 11, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'Cà Mau', '', '', '', '', '', 12, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Cao Bằng', '', '', '', '', '', 13, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Cần Thơ', '', '', '', '', '', 14, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'Đà Nẵng', '', '', '', '', '', 15, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Đắk Lắc ', '', '', '', '', '', 16, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'Đắk Nông', '', '', '', '', '', 17, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'Điện Biện', '', '', '', '', '', 18, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'Đồng Nai', '', '', '', '', '', 19, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Đồng Tháp', '', '', '', '', '', 20, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'Gia Lai', '', '', '', '', '', 21, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'Hà Giang', '', '', '', '', '', 22, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'Hà Nam', '', '', '', '', '', 23, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'Hà Tây', '', '', '', '', '', 25, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'Hà Tĩnh', '', '', '', '', '', 26, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'Hải Dương', '', '', '', '', '', 27, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'Hòa Bình', '', '', '', '', '', 29, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'Hậu Giang', '', '', '', '', '', 31, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'Hưng Yên', '', '', '', '', '', 32, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'Khánh Hòa', '', '', '', '', '', 33, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'Kiên Giang', '', '', '', '', '', 34, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'Kon Tum', '', '', '', '', '', 35, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'Lai Châu', '', '', '', '', '', 36, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'Lào Cai', '', '', '', '', '', 37, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'Lạng Sơn', '', '', '', '', '', 38, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'Lâm Đồng ', '', '', '', '', '', 39, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'Long An', '', '', '', '', '', 40, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'Nam Định', '', '', '', '', '', 41, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'Nghệ An', '', '', '', '', '', 42, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'Ninh Bình', '', '', '', '', '', 43, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'Ninh Thuận', '', '', '', '', '', 44, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'Phú Thọ', '', '', '', '', '', 45, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'Phú Yên', '', '', '', '', '', 46, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'Quảng Bình ', '', '', '', '', '', 47, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'Quảng Nam', '', '', '', '', '', 48, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'Quảng Ngãi', '', '', '', '', '', 49, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'Quảng Ninh', '', '', '', '', '', 50, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'Quảng Trị', '', '', '', '', '', 51, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'Sóc Trăng', '', '', '', '', '', 52, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'Sơn La', '', '', '', '', '', 53, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'Tây Ninh', '', '', '', '', '', 54, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'Thái Bình', '', '', '', '', '', 55, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'Thái Nguyên', '', '', '', '', '', 56, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'Thanh Hóa', '', '', '', '', '', 57, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'Thừa Thiên - Huế', '', '', '', '', '', 58, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'Tiền Giang', '', '', '', '', '', 59, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'Trà Vinh', '', '', '', '', '', 60, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'Tuyên Quang', '', '', '', '', '', 61, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'Vĩnh Long', '', '', '', '', '', 62, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'Vĩnh Phúc', '', '', '', '', '', 63, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'Yên Bái', '', '', '', '', '', 64, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `ip_address` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `product_id`, `rate`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 25, 3, NULL, '2017-11-27 03:27:12', '2017-11-27 03:27:12'),
(2, 25, 4, NULL, '2017-11-27 03:28:03', '2017-11-27 03:28:03'),
(3, 6, 4, NULL, '2017-11-27 03:29:55', '2017-11-27 03:29:55'),
(4, 6, 4, NULL, '2017-11-27 03:31:24', '2017-11-27 03:31:24'),
(5, 6, 4, NULL, '2017-11-27 03:31:46', '2017-11-27 03:31:46'),
(6, 3, 3, '::1', '2017-11-27 18:14:50', '2017-11-27 18:14:50'),
(7, 3, 5, '::1', '2017-11-27 18:19:03', '2017-11-27 18:19:03'),
(8, 3, 4, '::1', '2017-11-27 18:21:50', '2017-11-27 18:21:50'),
(9, 25, 5, '::1', '2017-11-27 18:22:19', '2017-11-27 18:22:19'),
(10, 3, 2, '::1', '2017-11-27 18:56:26', '2017-11-27 18:56:26'),
(11, 19, 4, '::1', '2017-11-27 23:48:21', '2017-11-27 23:48:21'),
(12, 19, 5, '::1', '2017-11-27 23:48:27', '2017-11-27 23:48:27'),
(13, 19, 2, '::1', '2017-11-27 23:48:32', '2017-11-27 23:48:32'),
(14, 19, 3, '::1', '2017-11-28 00:20:06', '2017-11-28 00:20:06'),
(15, 18, 5, '::1', '2017-11-28 01:53:48', '2017-11-28 01:53:48'),
(16, 18, 4, '::1', '2017-11-28 02:01:17', '2017-11-28 02:01:17'),
(17, 18, 5, '::1', '2017-11-28 02:01:23', '2017-11-28 02:01:23'),
(18, 18, 4, '::1', '2017-11-28 02:03:28', '2017-11-28 02:03:28'),
(19, 18, 4, '::1', '2017-11-28 02:03:32', '2017-11-28 02:03:32'),
(20, 18, 5, '::1', '2017-11-28 02:11:00', '2017-11-28 02:11:00'),
(21, 18, 3, '::1', '2017-11-28 02:11:02', '2017-11-28 02:11:02'),
(22, 18, 4, '::1', '2017-11-28 02:11:02', '2017-11-28 02:11:02'),
(23, 18, 4, '::1', '2017-11-28 02:12:04', '2017-11-28 02:12:04'),
(24, 18, 3, '::1', '2017-11-28 02:12:18', '2017-11-28 02:12:18'),
(25, 19, 4, '::1', '2017-11-28 20:47:55', '2017-11-28 20:47:55'),
(26, 19, 2, '::1', '2017-11-28 20:48:05', '2017-11-28 20:48:05'),
(27, 18, 2, '::1', '2017-11-30 00:11:55', '2017-11-30 00:11:55'),
(28, 8, 5, '::1', '2017-12-06 03:20:56', '2017-12-06 03:20:56'),
(29, 37, 4, '::1', '2017-12-06 03:54:53', '2017-12-06 03:54:53'),
(30, 18, 4, '::1', '2017-12-07 08:14:08', '2017-12-07 08:14:08'),
(31, 18, 1, '::1', '2017-12-07 08:14:39', '2017-12-07 08:14:39'),
(32, 18, 3, '::1', '2017-12-07 08:14:54', '2017-12-07 08:14:54'),
(33, 19, 4, '::1', '2017-12-07 10:01:39', '2017-12-07 10:01:39'),
(34, 19, 3, '::1', '2017-12-07 10:04:42', '2017-12-07 10:04:42'),
(35, 19, 3, '::1', '2017-12-07 10:09:24', '2017-12-07 10:09:24'),
(36, 19, 3, '::1', '2017-12-07 10:13:27', '2017-12-07 10:13:27'),
(39, 14, 4, '::1', '2017-12-07 10:19:05', '2017-12-07 10:19:05'),
(40, 14, 2, '::1', '2017-12-07 10:27:28', '2017-12-07 10:27:28'),
(41, 14, 1, '::1', '2017-12-07 10:27:33', '2017-12-07 10:27:33'),
(42, 14, 5, '::1', '2017-12-07 10:27:36', '2017-12-07 10:27:36'),
(43, 14, 5, '::1', '2017-12-07 10:27:41', '2017-12-07 10:27:41'),
(44, 14, 5, '::1', '2017-12-07 10:27:45', '2017-12-07 10:27:45'),
(45, 29, 4, '::1', '2017-12-08 09:59:17', '2017-12-08 09:59:17'),
(46, 29, 3, '::1', '2017-12-08 09:59:27', '2017-12-08 09:59:27'),
(47, 29, 3, '::1', '2017-12-08 09:59:32', '2017-12-08 09:59:32'),
(48, 29, 5, '::1', '2017-12-08 09:59:35', '2017-12-08 09:59:35'),
(49, 29, 5, '::1', '2017-12-08 09:59:37', '2017-12-08 09:59:37'),
(50, 29, 5, '::1', '2017-12-08 09:59:39', '2017-12-08 09:59:39'),
(51, 29, 5, '::1', '2017-12-08 09:59:44', '2017-12-08 09:59:44'),
(52, 29, 5, '::1', '2017-12-08 09:59:47', '2017-12-08 09:59:47'),
(53, 29, 5, '::1', '2017-12-08 09:59:50', '2017-12-08 09:59:50'),
(54, 29, 5, '::1', '2017-12-08 09:59:55', '2017-12-08 09:59:55'),
(55, 29, 4, '::1', '2017-12-08 10:08:26', '2017-12-08 10:08:26'),
(56, 29, 2, '::1', '2017-12-08 10:08:31', '2017-12-08 10:08:31');

-- --------------------------------------------------------

--
-- Table structure for table `recruitment`
--

CREATE TABLE `recruitment` (
  `id` int(11) NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `address` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recruitment`
--

INSERT INTO `recruitment` (`id`, `name`, `address`, `phone`, `email`, `created_at`, `updated_at`, `status`) VALUES
(6, 'Công ty Gco', 'trường chinh, thanh xuân, hà nội', '0943249', 'gco@gmail.com', '2017-09-15 04:21:08', '2017-09-14 21:21:08', 1),
(7, 'Hoàng Hồng Chương', 'Hà Nội', '0987654321', 'chuonghoanghong@gmail.com', '2017-09-17 20:31:17', '2017-09-17 20:31:17', 0);

-- --------------------------------------------------------

--
-- Table structure for table `saleof`
--

CREATE TABLE `saleof` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `total_value` int(11) DEFAULT NULL,
  `value_sale` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saleof`
--

INSERT INTO `saleof` (`id`, `name`, `total_value`, `value_sale`, `created_at`, `updated_at`) VALUES
(1, 'Vàng', 2000000, 10, '2017-12-16 03:34:58', '2017-12-16 03:34:58'),
(2, 'bạc', 1000000, 5, '2017-12-16 03:34:47', '2017-12-16 03:34:47'),
(3, 'đồng', 500000, 2, '2017-12-16 03:37:53', '2017-12-16 03:37:53');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `company` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `address` text COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `hotline` text COLLATE utf8_unicode_ci,
  `fax` text COLLATE utf8_unicode_ci,
  `email` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `favico` text COLLATE utf8_unicode_ci,
  `title_index` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `facebook` text COLLATE utf8_unicode_ci NOT NULL,
  `twitter` text COLLATE utf8_unicode_ci NOT NULL,
  `google` text COLLATE utf8_unicode_ci NOT NULL,
  `instagram` text CHARACTER SET utf8,
  `youtube` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `toado` text COLLATE utf8_unicode_ci,
  `copyright` text COLLATE utf8_unicode_ci,
  `iframemap` text COLLATE utf8_unicode_ci,
  `codechat` longtext COLLATE utf8_unicode_ci,
  `analytics` longtext COLLATE utf8_unicode_ci,
  `keyword` longtext COLLATE utf8_unicode_ci,
  `description` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `title`, `company`, `website`, `address`, `phone`, `hotline`, `fax`, `email`, `photo`, `favico`, `title_index`, `mota`, `content`, `facebook`, `twitter`, `google`, `instagram`, `youtube`, `status`, `toado`, `copyright`, `iframemap`, `codechat`, `analytics`, `keyword`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Subas', NULL, 'Subas', 'http://gco.vn/', 'Tầng 8, TOYOTA Thanh Xuân 315 Trường Chinh, Thanh Xuân, Hà Nội', '(04)6 290 8885', '090 216 6747', '(04)3 550 1492', 'chuonghoanghong@gmail.com', '1515404370_logo.png', '1515404370_logo.png', NULL, NULL, NULL, 'https://www.facebook.com/FacebookforDevelopers/', 'https://twitter.com/?lang=vi', 'https://plus.google.com/?hl=vi', 'https://www.instagram.com/?hl=vi', 'https://www.youtube.com/', 1, NULL, '© GCO 2017. All rights reserved. Design by chuonghoanghong@gmail.com.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.761617598985!2d105.82076241501875!3d21.00219068601275!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac869cd63f89%3A0xa2e71c273579f51b!2zMzE1IFRyxrDhu51uZyBDaGluaA!5e0!3m2!1sen!2s!4v1505443560797\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', NULL, NULL, NULL, NULL, '2018-01-08 09:39:30', '2018-01-08 09:39:30');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `link` text COLLATE utf8_unicode_ci,
  `photo` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `mota` longtext COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `noibat` int(11) NOT NULL DEFAULT '0',
  `com` text COLLATE utf8_unicode_ci,
  `stt` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `user_id`, `name`, `link`, `photo`, `icon`, `mota`, `content`, `status`, `noibat`, `com`, `stt`, `created_at`, `updated_at`) VALUES
(41, 5, 'Giảm giá cực lớn', NULL, '1514859825_1.jpg', '', NULL, NULL, 1, 0, 'gioi-thieu', 2, '2018-01-02 02:24:46', '2018-01-02 02:24:46'),
(29, 5, 'MIỄN PHÍ VẬN CHUYỂN', NULL, '1504143783_oto.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 1, '2017-08-31 01:44:03', '2017-08-30 18:44:03'),
(30, 5, 'ĐỔI TRẢ TRONG VÒNG 07 NGÀY', NULL, '1504143807_phone.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 2, '2017-08-30 18:43:27', '2017-08-30 18:43:27'),
(31, 5, 'HỖ TRỢ ONLINE 24/7', NULL, '1504143833_watch.png', '', 'CHO ĐƠN HÀNG CÓ TỔNG TRỊ GIÁ 30 TRIỆU', NULL, 1, 0, 'chinh-sach', 3, '2017-08-30 18:43:53', '2017-08-30 18:43:53'),
(42, 5, 'Chúng tôi có thể giúp bạn đặt mua sách', 'https://gco.vn/', '1514859866_2.jpg', '', 'SkyBook', NULL, 1, 0, 'gioi-thieu', 1, '2018-01-02 02:37:31', '2018-01-02 02:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `slogan`
--

CREATE TABLE `slogan` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `photo` text,
  `content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slogan`
--

INSERT INTO `slogan` (`id`, `name`, `photo`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Vận chuyển miễn phí', '1515033744_1.png', '<p>Tất cả đơn h&agrave;ng tr&ecirc;n 500000</p>', '2018-01-04 02:42:24', '2018-01-04 02:42:24'),
(3, 'Cam kết hoàn tiền', '1515033772_2.png', '<p>100% ho&agrave;n trả tiền</p>', '2018-01-04 02:42:52', '2018-01-04 02:42:52'),
(4, 'Thanh toán qua thẻ', '1515033792_3.png', '<p>Thanh to&aacute;n qua thẻ</p>', '2018-01-04 02:43:12', '2018-01-04 02:43:12'),
(6, 'Hỗ trợ', '1515033978_4.png', '<p>Điện thoại:&nbsp;<a title=\"\" href=\"tel:0123456789\">+ 0123.4567.89</a></p>', '2018-01-04 02:46:18', '2018-01-04 02:46:18');

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Vũ Trọng phụng', '2017-11-22 03:49:29', '2017-11-21 20:49:29'),
(3, 'Tố Hữu', '2017-11-21 20:50:03', '2017-11-21 20:50:03'),
(4, 'Ngô Tất Tố', '2017-12-11 02:10:25', '2017-12-11 02:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Toán thiếu nhi', 'toan-thieu-nhi', 1, '2017-12-05 01:17:35', '2017-12-04 18:17:35'),
(6, 'Toán tuổi thơ', 'toan-tuoi-tho', 1, '2017-12-01 02:05:26', '2017-12-01 02:05:26'),
(7, 'Toán cấp 3', 'toan-cap-3', 1, '2017-12-01 02:05:32', '2017-12-01 02:05:32'),
(9, 'toan cap 2x', 'toan-cap-2x', 1, '2017-12-11 02:26:16', '2017-12-11 02:26:16');

-- --------------------------------------------------------

--
-- Table structure for table `tag_links`
--

CREATE TABLE `tag_links` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tag_links`
--

INSERT INTO `tag_links` (`id`, `tag_id`, `product_id`) VALUES
(3, 7, 37),
(4, 8, 37),
(5, 7, 37),
(6, 8, 37),
(7, 1, 37),
(8, 7, 37),
(9, 8, 37),
(10, 8, 37),
(11, 8, 37),
(12, 7, 37),
(13, 8, 37),
(14, 7, 37),
(15, 1, 37),
(16, 6, 38),
(17, 6, 28),
(18, 6, 28),
(19, 6, 28),
(20, 6, 28);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Truyện tranh', '2017-11-21 20:21:23', '2017-11-21 20:21:23'),
(3, 'Truyện ngắn', '2017-11-22 03:37:02', '2017-11-21 20:37:02'),
(4, 'Truyện thiếu nhi', '2017-11-22 03:37:26', '2017-11-21 20:37:26');

-- --------------------------------------------------------

--
-- Table structure for table `thuonghieu`
--

CREATE TABLE `thuonghieu` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `alias` varchar(259) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thuonghieu`
--

INSERT INTO `thuonghieu` (`id`, `name`, `alias`, `created_at`, `updated_at`) VALUES
(1, 'Chanel', 'chanel', '2017-10-04 04:27:26', '2017-10-03 21:27:26'),
(2, 'Gucci', 'gucci', '2017-10-04 04:27:46', '2017-10-03 21:27:46'),
(3, 'Guerlain', 'guerlain', '2017-10-04 04:28:06', '2017-10-03 21:28:06'),
(4, 'Christian Dior', 'christian-dior', '2017-10-04 04:28:14', '2017-10-03 21:28:14'),
(5, 'Nina Ricci', 'nina-ricci', '2017-10-04 04:28:21', '2017-10-03 21:28:21'),
(6, 'Calvin Klein', 'calvin-klein', '2017-10-04 04:28:28', '2017-10-03 21:28:28'),
(7, 'Estee Lauder', 'estee-lauder', '2017-10-04 04:28:37', '2017-10-03 21:28:37'),
(8, 'Jean Paul Gautier', 'jean-paul-gautier', '2017-10-04 04:28:41', '2017-10-03 21:28:41');

-- --------------------------------------------------------

--
-- Table structure for table `useronline`
--

CREATE TABLE `useronline` (
  `id` int(10) UNSIGNED NOT NULL,
  `session` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `total_money` int(11) DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '2',
  `photo` text COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `email`, `phone`, `address`, `total_money`, `level`, `photo`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'tuanduy2012', '$2y$10$DceYJxR4ALmUW.Vt6k9En.1ubJhJGvWX1HISRloBERLNJ8Qq85itO', 'Tuan Duy', 'duydoan.nina@gmail.com', '', '', 0, 1, NULL, 1, 'X37mpbjW1WDCjwH3s4Vq1Jkv3WRNJceXZlbLwHaa', '2017-12-15 02:52:27', '2017-06-14 23:42:39'),
(4, 'evernigh', '$2y$10$pprRO9LhYKADS60bvetRnOYoS3L74giVWf3D/wNZXlDLDRRx0bH6e', 'Duy Đoàn', 'tuanduy_mc2006@yahoo.com', '', '', 0, 0, NULL, 1, '6CirvIekDhWLx3xFrnv7v39bFmalTsH21F4WABTq', '2017-12-15 02:52:28', '2017-06-16 02:51:34'),
(5, 'gco_admin', '$2y$10$s3Egf9abyaMW480NnuloHuY6lG/./0pNneCHSz6IH7vDkhv3Gvv7a', 'Admin', 'chuonghoanghong@gmail.com', '0987654321', '315 Trường chinh, Thanh Xuân, Hà Nội', 0, 1, '5.jpg', 1, 'bWDXK8aIeCutl3s4R9x2JpRUUtg7UWeRmYT9hWV1m9h4io1hzrbF4WAVewyz', '2017-12-15 02:52:29', '2017-12-08 09:37:30'),
(14, 'chuonghoang', '$2y$10$M4n3rzfEs9YvGC9Mwae9WO0RJJ1jFX6mkqKmL8ek35gi/HOHATuh2', 'Hoàng Hồng Chương', 'chuonghoanghong@gmail.com', '0918273645', 'Phùng Xá, Mỹ Đức, Hà Nội', 5000000, 2, '1513323958_chuong.jpg', 1, 'qPjyS479TxurQUlabUfT3TyAHKygcWbWCu53jYrQyci8UYGjrN2EqjGO2FJB', '2017-12-19 10:21:15', '2017-12-15 07:45:58'),
(12, 'chuonghh', '$2y$10$A0hifXM/LK2pj/.OQJicZ.3kjzTLFJdA1zttf9iTZ44KIxRmq3p4.', 'fsfd', 'chuong1194@yahoo.com', '0987654321', 'Cầu Diễn, Từ Liêm, Hà Nội', 0, 2, '1513137275_3.jpg', 1, 'x4f7nKzlaZrhQI7G9J5IEXBd8vr6SsDIaOBSuCqTHPpWjQPyYiCbCXxLEy25', '2017-12-15 07:35:28', '2017-12-13 03:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `link` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `link`, `created_at`, `updated_at`) VALUES
(1, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/nvy3XBg-tmU\" frameborder=\"0\" allowfullscreen></iframe>', '2017-10-15 20:31:58', '2017-10-15 20:34:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_content`
--
ALTER TABLE `banner_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_position`
--
ALTER TABLE `banner_position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chinhanh`
--
ALTER TABLE `chinhanh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counter`
--
ALTER TABLE `counter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `docthu`
--
ALTER TABLE `docthu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `lienket`
--
ALTER TABLE `lienket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_categories_name_unique` (`name`);

--
-- Indexes for table `nxb`
--
ALTER TABLE `nxb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recruitment`
--
ALTER TABLE `recruitment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saleof`
--
ALTER TABLE `saleof`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slogan`
--
ALTER TABLE `slogan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_links`
--
ALTER TABLE `tag_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useronline`
--
ALTER TABLE `useronline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banner_content`
--
ALTER TABLE `banner_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `banner_position`
--
ALTER TABLE `banner_position`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `campaign_cards`
--
ALTER TABLE `campaign_cards`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `chinhanh`
--
ALTER TABLE `chinhanh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `counter`
--
ALTER TABLE `counter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=692;

--
-- AUTO_INCREMENT for table `docthu`
--
ALTER TABLE `docthu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `lienket`
--
ALTER TABLE `lienket`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `nxb`
--
ALTER TABLE `nxb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `province`
--
ALTER TABLE `province`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `recruitment`
--
ALTER TABLE `recruitment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `saleof`
--
ALTER TABLE `saleof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `slogan`
--
ALTER TABLE `slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tacgia`
--
ALTER TABLE `tacgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tag_links`
--
ALTER TABLE `tag_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `theloai`
--
ALTER TABLE `theloai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `thuonghieu`
--
ALTER TABLE `thuonghieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `useronline`
--
ALTER TABLE `useronline`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
