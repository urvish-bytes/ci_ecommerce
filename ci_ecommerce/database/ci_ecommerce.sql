-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2019 at 08:47 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `active_pages`
--

CREATE TABLE `active_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `enabled` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `active_pages`
--

INSERT INTO `active_pages` (`id`, `name`, `enabled`) VALUES
(1, 'blog', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `iban` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `bic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank_accounts`
--

INSERT INTO `bank_accounts` (`id`, `name`, `iban`, `bank`, `bic`) VALUES
(1, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `image`, `url`, `time`) VALUES
(1, '1da26bcb859bac12a5ef1ca8efeb0643.jpg', 'test_blog_1', 1562566923),
(2, 'arrow-bottom_olds1.png', 'test_blog_2', 1562664116),
(3, 'arrow-bottom_olds.png', 'dfh_3', 1562665079);

-- --------------------------------------------------------

--
-- Table structure for table `blog_translations`
--

CREATE TABLE `blog_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blog_translations`
--

INSERT INTO `blog_translations` (`id`, `title`, `description`, `abbr`, `for_id`) VALUES
(1, 'test blog', '<p>this is another description&nbsp;of test blog</p>\r\n', 'en', 1),
(2, 'blog 2', '<p>test blog 2 description&nbsp;</p>\r\n', 'en', 2),
(3, 'dfh', '<p>&nbsp;grf nhdrhjfcv</p>\r\n', 'en', 3);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`) VALUES
(1, 'Allen Solly'),
(2, 'Lee'),
(3, 'U S Polo');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_links`
--

CREATE TABLE `confirm_links` (
  `id` int(11) NOT NULL,
  `link` char(32) NOT NULL,
  `for_order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `confirm_links`
--

INSERT INTO `confirm_links` (`id`, `link`, `for_order`) VALUES
(1, '8a0e26e3f349448f31fe9c5e30d8042f', 1234),
(2, '11987a7f7a10caedd310ea70bc57f8cd', 1235),
(3, '8996df08377b3fcb0e24289cd8d073c4', 1236),
(4, 'd6cf384ebcde60245c5e9c57d3188ef8', 1237),
(5, '4331c29b94f0e26b581612fdf34d3476', 1238),
(6, '94a5fdf88491228f637c72c32b52d41a', 1239),
(7, 'ea78396180d65f50bc036709ec71868e', 1240);

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law`
--

CREATE TABLE `cookie_law` (
  `id` int(10) UNSIGNED NOT NULL,
  `link` varchar(255) NOT NULL,
  `theme` varchar(20) NOT NULL,
  `visibility` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cookie_law`
--

INSERT INTO `cookie_law` (`id`, `link`, `theme`, `visibility`) VALUES
(1, '', 'light-top', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cookie_law_translations`
--

CREATE TABLE `cookie_law_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(255) NOT NULL,
  `button_text` varchar(50) NOT NULL,
  `learn_more` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cookie_law_translations`
--

INSERT INTO `cookie_law_translations` (`id`, `message`, `button_text`, `learn_more`, `abbr`, `for_id`) VALUES
(1, '', '', '', 'en', 1);

-- --------------------------------------------------------

--
-- Table structure for table `discount_codes`
--

CREATE TABLE `discount_codes` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(10) NOT NULL,
  `code` varchar(10) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `valid_from_date` int(10) UNSIGNED NOT NULL,
  `valid_to_date` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1-enabled, 0-disabled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `discount_codes`
--

INSERT INTO `discount_codes` (`id`, `type`, `code`, `amount`, `valid_from_date`, `valid_to_date`, `status`) VALUES
(1, 'percent', 'JW1LDE', '20', 1562018400, 1564524000, 1),
(2, 'percent', 'VBLOP2', '30', 1561919400, 1564511400, 1);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `activity`, `username`, `time`) VALUES
(1, 'Go to History', 'admin', 1562322195),
(2, 'Go to publish product', 'admin', 1562322201),
(3, 'Go to products', 'admin', 1562322203),
(4, 'Go to shop categories', 'admin', 1562322206),
(5, 'Go to orders page', 'admin', 1562322208),
(6, 'Go to shop categories', 'admin', 1562322210),
(7, 'Go to shop categories', 'admin', 1562322217),
(8, 'Go to languages', 'admin', 1562322233),
(9, 'Delete language id - 1', 'admin', 1562322236),
(10, 'Go to languages', 'admin', 1562322236),
(11, 'Delete language id - 3', 'admin', 1562322240),
(12, 'Go to languages', 'admin', 1562322240),
(13, 'Go to discounts page', 'admin', 1562322423),
(14, 'Go to discounts page', 'admin', 1562322443),
(15, 'Go to products', 'admin', 1562322882),
(16, 'Go to products', 'admin', 1562322909),
(17, 'Go to publish product', 'admin', 1562322915),
(18, 'Go to Blog', 'admin', 1562322921),
(19, 'Go to products', 'admin', 1562322975),
(20, 'Go to publish product', 'admin', 1562323836),
(21, 'Go to Titles / Descriptions page', 'admin', 1562323841),
(22, 'Go to Blog', 'admin', 1562323847),
(23, 'Go to Blog', 'admin', 1562323852),
(24, 'Go to Blog', 'admin', 1562323854),
(25, 'Go to publish product', 'admin', 1562323861),
(26, 'Go to shop categories', 'admin', 1562323931),
(27, 'Go to products', 'admin', 1562323954),
(28, 'Go to shop categories', 'admin', 1562323965),
(29, 'Go to shop categories', 'admin', 1562323974),
(30, 'Go to shop categories', 'admin', 1562323994),
(31, 'Go to shop categories', 'admin', 1562324000),
(32, 'Go to products', 'admin', 1562324019),
(33, 'Search for product title - ', 'admin', 1562324025),
(34, 'Search for product code - ', 'admin', 1562324025),
(35, 'Go to products', 'admin', 1562324025),
(36, 'Search for product title - ', 'admin', 1562324028),
(37, 'Search for product code - 3', 'admin', 1562324028),
(38, 'Go to products', 'admin', 1562324028),
(39, 'Search for product title - prod', 'admin', 1562324037),
(40, 'Search for product code - 3', 'admin', 1562324037),
(41, 'Go to products', 'admin', 1562324037),
(42, 'Go to publish product', 'admin', 1562324041),
(43, 'Go to publish product', 'admin', 1562324378),
(44, 'Success published product', 'admin', 1562324409),
(45, 'Go to products', 'admin', 1562324409),
(46, 'Go to Templates Page', 'admin', 1562325189),
(47, 'Go to Templates Page', 'admin', 1562325202),
(48, 'Go to Settings Page', 'admin', 1562325215),
(49, 'Go to home page', 'admin', 1562325310),
(50, 'Go to Pages manage', 'admin', 1562325316),
(51, 'Page status Changed', 'admin', 1562325319),
(52, 'Page status Changed', 'admin', 1562325320),
(53, 'Go to orders page', 'admin', 1562325329),
(54, 'Go to shop categories', 'admin', 1562325331),
(55, 'Go to products', 'admin', 1562325334),
(56, 'Go to publish product', 'admin', 1562325337),
(57, 'Go to home page', 'admin', 1562325354),
(58, 'Go to File Manager', 'admin', 1562325369),
(59, 'Go to Blog', 'admin', 1562325372),
(60, 'Go to publish product', 'admin', 1562325377),
(61, 'Go to products', 'admin', 1562325380),
(62, 'Go to products', 'admin', 1562327383),
(63, 'Go to products', 'admin', 1562328035),
(64, 'Go to orders page', 'admin', 1562328156),
(65, 'Change status of Order Id 1 to status 1', 'admin', 1562328194),
(66, 'Change status of Order Id 1 to status 1', 'admin', 1562328232),
(67, 'Change status of Order Id 1 to status 1', 'admin', 1562328233),
(68, 'Change status of Order Id 1 to status 1', 'admin', 1562328233),
(69, 'Change status of Order Id 1 to status 1', 'admin', 1562328233),
(70, 'Change status of Order Id 1 to status 1', 'admin', 1562328233),
(71, 'Go to orders page', 'admin', 1562328235),
(72, 'Go to orders page', 'admin', 1562328244),
(73, 'Go to orders page', 'admin', 1562328245),
(74, 'Go to products', 'admin', 1562328308),
(75, 'Go to publish product', 'admin', 1562328311),
(76, 'Success updated product', 'admin', 1562328319),
(77, 'Go to products', 'admin', 1562328319),
(78, 'Go to publish product', 'admin', 1562328543),
(79, 'Success updated product', 'admin', 1562328551),
(80, 'Go to products', 'admin', 1562328551),
(81, 'Go to products', 'admin', 1562328753),
(82, 'Go to publish product', 'admin', 1562328762),
(83, 'Success updated product', 'admin', 1562328891),
(84, 'Go to products', 'admin', 1562328891),
(85, 'Go to publish product', 'admin', 1562328915),
(86, 'Go to orders page', 'admin', 1562329541),
(87, 'User admin logged in', NULL, 1562331116),
(88, 'Go to home page', 'admin', 1562331117),
(89, 'Go to Admin Users', 'admin', 1562331120),
(90, 'Go to home page', 'admin', 1562331124),
(91, 'Go to Subscribed Emails', 'admin', 1562331126),
(92, 'Go to home page', 'admin', 1562331128),
(93, 'Go to Subscribed Emails', 'admin', 1562331130),
(94, 'Go to home page', 'admin', 1562331132),
(95, 'User admin logged in', NULL, 1562560978),
(96, 'Go to home page', 'admin', 1562560978),
(97, 'User admin logged in', NULL, 1562561396),
(98, 'Go to home page', 'admin', 1562561397),
(99, 'Go to home page', 'admin', 1562562570),
(100, 'Go to home page', 'admin', 1562562577),
(101, 'Go to products', 'admin', 1562562652),
(102, 'Go to publish product', 'admin', 1562562658),
(103, 'Success updated product', 'admin', 1562562664),
(104, 'Go to products', 'admin', 1562562664),
(105, 'Go to products', 'admin', 1562562773),
(106, 'Go to Settings Page', 'admin', 1562562795),
(107, 'Change visibility of More Information button in products list', 'admin', 1562562830),
(108, 'Go to Settings Page', 'admin', 1562562830),
(109, 'Go to publish product', 'admin', 1562562944),
(110, 'Success published product', 'admin', 1562563043),
(111, 'Go to products', 'admin', 1562563043),
(112, 'Go to publish product', 'admin', 1562563047),
(113, 'Success updated product', 'admin', 1562563053),
(114, 'Go to products', 'admin', 1562563054),
(115, 'Go to products', 'admin', 1562563243),
(116, 'Go to products', 'admin', 1562563246),
(117, 'Go to discounts page', 'admin', 1562563343),
(118, 'Go to discounts page', 'admin', 1562563365),
(119, 'Go to discounts page', 'admin', 1562563374),
(120, 'Go to orders page', 'admin', 1562563397),
(121, 'Change status of Order Id 2 to status 1', 'admin', 1562563419),
(122, 'Change status of Order Id 2 to status 1', 'admin', 1562563421),
(123, 'Change status of Order Id 2 to status 0', 'admin', 1562563422),
(124, 'Change status of Order Id 2 to status 2', 'admin', 1562563423),
(125, 'Go to orders page', 'admin', 1562563490),
(126, 'Go to orders page', 'admin', 1562563644),
(127, 'Change status of Order Id 1 to status 0', 'admin', 1562563647),
(128, 'Change status of Order Id 1 to status 1', 'admin', 1562563649),
(129, 'Change status of Order Id 1 to status 1', 'admin', 1562563667),
(130, 'Change status of Order Id 1 to status 0', 'admin', 1562563671),
(131, 'Go to orders page', 'admin', 1562563681),
(132, 'Go to Styling page', 'admin', 1562563760),
(133, 'Change site styling', 'admin', 1562563819),
(134, 'Go to Styling page', 'admin', 1562563819),
(135, 'Go to home page', 'admin', 1562563827),
(136, 'Go to home page', 'admin', 1562563831),
(137, 'Go to Styling page', 'admin', 1562563836),
(138, 'Change site styling', 'admin', 1562563864),
(139, 'Go to Styling page', 'admin', 1562563864),
(140, 'Change site styling', 'admin', 1562563895),
(141, 'Go to Styling page', 'admin', 1562563895),
(142, 'Change site styling', 'admin', 1562563909),
(143, 'Go to Styling page', 'admin', 1562563909),
(144, 'Go to Styling page', 'admin', 1562563918),
(145, 'Go to Templates Page', 'admin', 1562563921),
(146, 'Go to Templates Page', 'admin', 1562563928),
(147, 'Go to orders page', 'admin', 1562564276),
(148, 'Go to home page', 'admin', 1562564281),
(149, 'Go to publish product', 'admin', 1562564806),
(150, 'Go to orders page', 'admin', 1562564808),
(151, 'Change status of Order Id 3 to status 0', 'admin', 1562564867),
(152, 'Change status of Order Id 3 to status 1', 'admin', 1562564869),
(153, 'Go to orders page', 'admin', 1562564871),
(154, 'Go to orders page', 'admin', 1562564904),
(155, 'Go to Blog', 'admin', 1562564908),
(156, 'Go to Blog', 'admin', 1562564912),
(157, 'Go to Blog', 'admin', 1562564915),
(158, 'Go to Titles / Descriptions page', 'admin', 1562564919),
(159, 'Go to History', 'admin', 1562564956),
(160, 'Go to History', 'admin', 1562564972),
(161, 'Go to Pages manage', 'admin', 1562564977),
(162, 'Go to History', 'admin', 1562564980),
(163, 'Go to History', 'admin', 1562565019),
(164, 'Go to Settings Page', 'admin', 1562565058),
(165, 'Go to Settings Page', 'admin', 1562565065),
(166, 'Go to publish product', 'admin', 1562565462),
(167, 'Success published product', 'admin', 1562565515),
(168, 'Go to products', 'admin', 1562565516),
(169, 'Go to shop categories', 'admin', 1562565523),
(170, 'Edit shop categorie to Female', 'admin', 1562565534),
(171, 'Go to orders page', 'admin', 1562566615),
(172, 'Go to Templates Page', 'admin', 1562566659),
(173, 'Go to Templates Page', 'admin', 1562566666),
(174, 'Go to Blog Publish', 'admin', 1562566867),
(175, 'Go to Blog', 'admin', 1562566923),
(176, 'Go to Styling page', 'admin', 1562566969),
(177, 'Change site styling', 'admin', 1562567023),
(178, 'Go to Styling page', 'admin', 1562567023),
(179, 'Go to Styling page', 'admin', 1562567891),
(180, 'Change site styling', 'admin', 1562567921),
(181, 'Go to Styling page', 'admin', 1562567921),
(182, 'Go to Pages manage', 'admin', 1562568151),
(183, 'Add new page with name - Cart', 'admin', 1562568161),
(184, 'Go to Pages manage', 'admin', 1562568161),
(185, 'Page status Changed', 'admin', 1562568165),
(186, 'Page status Changed', 'admin', 1562568166),
(187, 'Page status Changed', 'admin', 1562568169),
(188, 'Page status Changed', 'admin', 1562568170),
(189, 'Page status Changed', 'admin', 1562568171),
(190, 'Page status Changed', 'admin', 1562568171),
(191, 'Go to home page', 'admin', 1562568550),
(192, 'Go to home page', 'admin', 1562568558),
(193, 'Go to home page', 'admin', 1562568561),
(194, 'Go to home page', 'admin', 1562568624),
(195, 'Go to home page', 'admin', 1562568628),
(196, 'Go to home page', 'admin', 1562568628),
(197, 'Go to home page', 'admin', 1562568630),
(198, 'Go to home page', 'admin', 1562568632),
(199, 'Go to home page', 'admin', 1562568635),
(200, 'Go to home page', 'admin', 1562568637),
(201, 'Go to home page', 'admin', 1562568641),
(202, 'Go to home page', 'admin', 1562568642),
(203, 'Go to home page', 'admin', 1562568695),
(204, 'Go to publish product', 'admin', 1562568747),
(205, 'Go to Templates Page', 'admin', 1562568793),
(206, 'Go to Templates Page', 'admin', 1562568796),
(207, 'Go to discounts page', 'admin', 1562568822),
(208, 'Go to Blog', 'admin', 1562568826),
(209, 'Go to Blog Publish', 'admin', 1562568828),
(210, 'Go to Blog Publish', 'admin', 1562568861),
(211, 'Go to orders page', 'admin', 1562568864),
(212, 'Go to orders page', 'admin', 1562572451),
(213, 'Go to home page', 'admin', 1562572495),
(214, 'Go to shop categories', 'admin', 1562572504),
(215, 'Go to orders page', 'admin', 1562572507),
(216, 'Go to orders page', 'admin', 1562572540),
(217, 'Go to orders page', 'admin', 1562572575),
(218, 'Go to orders page', 'admin', 1562572636),
(219, 'Go to discounts page', 'admin', 1562572684),
(220, 'Go to discounts page', 'admin', 1562572688),
(221, 'Go to discounts page', 'admin', 1562572689),
(222, 'Go to discounts page', 'admin', 1562572691),
(223, 'Go to discounts page', 'admin', 1562572707),
(224, 'Go to discounts page', 'admin', 1562572711),
(225, 'Go to discounts page', 'admin', 1562572717),
(226, 'Go to discounts page', 'admin', 1562572735),
(227, 'Go to discounts page', 'admin', 1562572768),
(228, 'Go to orders page', 'admin', 1562572946),
(229, 'Change status of Order Id 4 to status 2', 'admin', 1562572950),
(230, 'Change status of Order Id 5 to status 0', 'admin', 1562572952),
(231, 'Go to orders page', 'admin', 1562573139),
(232, 'Go to orders page', 'admin', 1562573154),
(233, 'Change status of Order Id 5 to status 0', 'admin', 1562573157),
(234, 'Go to orders page', 'admin', 1562573161),
(235, 'Go to orders page', 'admin', 1562573168),
(236, 'Change status of Order Id 5 to status 0', 'admin', 1562573170),
(237, 'Go to orders page', 'admin', 1562573171),
(238, 'Change status of Order Id 5 to status 0', 'admin', 1562573173),
(239, 'Go to orders page', 'admin', 1562573174),
(240, 'Change status of Order Id 5 to status 1', 'admin', 1562573185),
(241, 'Go to orders page', 'admin', 1562573187),
(242, 'Go to orders page', 'admin', 1562573189),
(243, 'Go to orders page', 'admin', 1562573205),
(244, 'Go to orders page', 'admin', 1562573212),
(245, 'Bank account settings saved for : ', 'admin', 1562573226),
(246, 'Go to orders page', 'admin', 1562573227),
(247, 'Paypal sandbox mode activated', 'admin', 1562573230),
(248, 'Go to orders page', 'admin', 1562573230),
(249, 'Change paypal business email to: ', 'admin', 1562573564),
(250, 'Go to orders page', 'admin', 1562573564),
(251, 'Paypal sandbox mode disabled', 'admin', 1562573571),
(252, 'Go to orders page', 'admin', 1562573571),
(253, 'Change Cash On Delivery Visibility - 1', 'admin', 1562573581),
(254, 'Go to orders page', 'admin', 1562573582),
(255, 'Go to discounts page', 'admin', 1562576744),
(256, 'Go to discounts page', 'admin', 1562576746),
(257, 'Go to discounts page', 'admin', 1562576755),
(258, 'Go to discounts page', 'admin', 1562576968),
(259, 'Go to discounts page', 'admin', 1562577254),
(260, 'Go to discounts page', 'admin', 1562577270),
(261, 'Search for product title - test', 'admin', 1562577323),
(262, 'Go to products', 'admin', 1562577323),
(263, 'Search for product title - test', 'admin', 1562577332),
(264, 'Search for product code - ', 'admin', 1562577332),
(265, 'Go to products', 'admin', 1562577332),
(266, 'Search for product title - test', 'admin', 1562577339),
(267, 'Search for product code - 3', 'admin', 1562577340),
(268, 'Go to products', 'admin', 1562577340),
(269, 'Search for product title - test', 'admin', 1562577342),
(270, 'Search for product code - 2', 'admin', 1562577342),
(271, 'Go to products', 'admin', 1562577342),
(272, 'Search for product title - test', 'admin', 1562577344),
(273, 'Search for product code - ', 'admin', 1562577344),
(274, 'Go to products', 'admin', 1562577345),
(275, 'Search for product title - test', 'admin', 1562577348),
(276, 'Search for product code - ', 'admin', 1562577348),
(277, 'Go to products', 'admin', 1562577348),
(278, 'Go to publish product', 'admin', 1562577356),
(279, 'Success updated product', 'admin', 1562577361),
(280, 'Search for product title - test', 'admin', 1562577361),
(281, 'Search for product code - ', 'admin', 1562577361),
(282, 'Go to products', 'admin', 1562577361),
(283, 'Search for product title - test', 'admin', 1562577449),
(284, 'Search for product code - ', 'admin', 1562577449),
(285, 'Go to products', 'admin', 1562577449),
(286, 'Go to orders page', 'admin', 1562577451),
(287, 'Go to products', 'admin', 1562577645),
(288, 'Go to products', 'admin', 1562577683),
(289, 'Go to orders page', 'admin', 1562577684),
(290, 'Go to orders page', 'admin', 1562577689),
(291, 'Go to publish product', 'admin', 1562577728),
(292, 'Go to publish product', 'admin', 1562578339),
(293, 'Go to publish product', 'admin', 1562578353),
(294, 'Go to orders page', 'admin', 1562578357),
(295, 'Change status of Order Id 6 to status 0', 'admin', 1562578363),
(296, 'Go to orders page', 'admin', 1562582293),
(297, 'Go to orders page', 'admin', 1562583244),
(298, 'Go to orders page', 'admin', 1562584702),
(299, 'Go to orders page', 'admin', 1562584850),
(300, 'Change status of Order Id 6 to status 0', 'admin', 1562584870),
(301, 'Go to orders page', 'admin', 1562584878),
(302, 'Go to orders page', 'admin', 1562584991),
(303, 'Go to shop categories', 'admin', 1562584994),
(304, 'Go to orders page', 'admin', 1562584994),
(305, 'Go to orders page', 'admin', 1562584995),
(306, 'Go to orders page', 'admin', 1562584995),
(307, 'Go to orders page', 'admin', 1562584995),
(308, 'Go to orders page', 'admin', 1562584996),
(309, 'Go to orders page', 'admin', 1562584996),
(310, 'Change status of Order Id 6 to status 0', 'admin', 1562584998),
(311, 'Go to orders page', 'admin', 1562584999),
(312, 'Go to publish product', 'admin', 1562585001),
(313, 'Go to orders page', 'admin', 1562585003),
(314, 'Change status of Order Id 6 to status 2', 'admin', 1562585006),
(315, 'Go to orders page', 'admin', 1562585008),
(316, 'Go to Subscribed Emails', 'admin', 1562585062),
(317, 'Go to Templates Page', 'admin', 1562585068),
(318, 'Go to Templates Page', 'admin', 1562585076),
(319, 'Go to Templates Page', 'admin', 1562585098),
(320, 'Go to Templates Page', 'admin', 1562585113),
(321, 'Go to Titles / Descriptions page', 'admin', 1562585120),
(322, 'Go to File Manager', 'admin', 1562585133),
(323, 'Go to publish product', 'admin', 1562585149),
(324, 'Go to Admin Users', 'admin', 1562585240),
(325, 'Create admin user - imurvish', 'admin', 1562585280),
(326, 'Go to Admin Users', 'admin', 1562585281),
(327, 'User imurvish logged in', NULL, 1562585297),
(328, 'Go to home page', 'imurvish', 1562585297),
(329, 'Go to Admin Users', 'imurvish', 1562585306),
(330, 'Go to Admin Users', 'imurvish', 1562585312),
(331, 'Go to discounts page', 'imurvish', 1562585351),
(332, 'Go to Blog Publish', 'imurvish', 1562585355),
(333, 'Go to publish product', 'imurvish', 1562585357),
(334, 'Edit page - cart', 'imurvish', 1562585362),
(335, 'Page 2 updated!', 'imurvish', 1562585367),
(336, 'Edit page - cart', 'imurvish', 1562585367),
(337, 'Go to home page', 'imurvish', 1562586332),
(338, 'Go to home page', 'imurvish', 1562586340),
(339, 'Go to Admin Users', 'imurvish', 1562586342),
(340, 'Go to home page', 'imurvish', 1562586347),
(341, 'Go to home page', 'imurvish', 1562586400),
(342, 'User imurvish logged in', NULL, 1562586464),
(343, 'Go to home page', 'imurvish', 1562586464),
(344, 'Go to products', 'imurvish', 1562586477),
(345, 'Go to home page', 'imurvish', 1562586532),
(346, 'Go to Subscribed Emails', 'imurvish', 1562586536),
(347, 'Go to Subscribed Emails', 'imurvish', 1562586564),
(348, 'Go to Subscribed Emails', 'imurvish', 1562586599),
(349, 'Go to Blog Publish', 'imurvish', 1562586733),
(350, 'Go to publish product', 'imurvish', 1562586734),
(351, 'Go to products', 'imurvish', 1562586919),
(352, 'Go to shop categories', 'imurvish', 1562586921),
(353, 'Go to orders page', 'imurvish', 1562586923),
(354, 'Go to orders page', 'imurvish', 1562586927),
(355, 'Go to shop categories', 'imurvish', 1562586938),
(356, 'Go to shop categories', 'imurvish', 1562587081),
(357, 'Go to shop categories', 'imurvish', 1562587323),
(358, 'Go to publish product', 'imurvish', 1562587330),
(359, 'Go to shop categories', 'imurvish', 1562587332),
(360, 'Go to Templates Page', 'imurvish', 1562587376),
(361, 'Go to Templates Page', 'imurvish', 1562587381),
(362, 'Go to orders page', 'imurvish', 1562587383),
(363, 'Go to publish product', 'imurvish', 1562587386),
(364, 'Go to shop categories', 'imurvish', 1562587513),
(365, 'Go to shop categories', 'imurvish', 1562587566),
(366, 'Go to shop categories', 'imurvish', 1562587582),
(367, 'Go to shop categories', 'imurvish', 1562587602),
(368, 'Go to shop categories', 'imurvish', 1562587612),
(369, 'Edit shop categorie to Malee', 'imurvish', 1562587619),
(370, 'Edit shop categorie to Male', 'imurvish', 1562587624),
(371, 'Go to shop categories', 'imurvish', 1562587716),
(372, 'Go to shop categories', 'imurvish', 1562587731),
(373, 'Go to shop categories', 'imurvish', 1562587741),
(374, 'Go to shop categories', 'imurvish', 1562587773),
(375, 'Change subcategory for category id - 3', 'imurvish', 1562587804),
(376, 'Go to shop categories', 'imurvish', 1562587804),
(377, 'Go to shop categories', 'imurvish', 1562587805),
(378, 'Change subcategory for category id - 3', 'imurvish', 1562587809),
(379, 'Go to shop categories', 'imurvish', 1562587809),
(380, 'Go to shop categories', 'imurvish', 1562587826),
(381, 'Go to shop categories', 'imurvish', 1562587865),
(382, 'Go to shop categories', 'imurvish', 1562587891),
(383, 'Go to shop categories', 'imurvish', 1562587907),
(384, 'Go to shop categories', 'imurvish', 1562587926),
(385, 'Go to publish product', 'imurvish', 1562587963),
(386, 'Go to shop categories', 'imurvish', 1562587995),
(387, 'Go to shop categories', 'imurvish', 1562588040),
(388, 'Go to shop categories', 'imurvish', 1562588050),
(389, 'Go to shop categories', 'imurvish', 1562588052),
(390, 'Go to shop categories', 'imurvish', 1562588052),
(391, 'Go to shop categories', 'imurvish', 1562588057),
(392, 'Go to shop categories', 'imurvish', 1562588063),
(393, 'Go to shop categories', 'imurvish', 1562588088),
(394, 'Go to shop categories', 'imurvish', 1562588093),
(395, 'Go to shop categories', 'imurvish', 1562588159),
(396, 'Go to shop categories', 'imurvish', 1562588179),
(397, 'Go to shop categories', 'imurvish', 1562588185),
(398, 'Go to home page', 'imurvish', 1562588200),
(399, 'Go to orders page', 'imurvish', 1562588205),
(400, 'Go to orders page', 'imurvish', 1562588221),
(401, 'Go to orders page', 'imurvish', 1562588224),
(402, 'Go to products', 'imurvish', 1562588226),
(403, 'Go to shop categories', 'imurvish', 1562588227),
(404, 'Go to home page', 'imurvish', 1562588229),
(405, 'Go to shop categories', 'imurvish', 1562588276),
(406, 'Go to shop categories', 'imurvish', 1562588296),
(407, 'Go to shop categories', 'imurvish', 1562588302),
(408, 'Go to shop categories', 'imurvish', 1562588322),
(409, 'Go to shop categories', 'imurvish', 1562588441),
(410, 'Change subcategory for category id - 1', 'imurvish', 1562588448),
(411, 'Go to shop categories', 'imurvish', 1562588448),
(412, 'Change subcategory for category id - 2', 'imurvish', 1562588454),
(413, 'Go to shop categories', 'imurvish', 1562588455),
(414, 'Go to shop categories', 'imurvish', 1562588505),
(415, 'Go to shop categories', 'imurvish', 1562588659),
(416, 'Go to shop categories', 'imurvish', 1562588677),
(417, 'Go to shop categories', 'imurvish', 1562588682),
(418, 'Go to shop categories', 'imurvish', 1562588684),
(419, 'Go to shop categories', 'imurvish', 1562588726),
(420, 'Go to shop categories', 'imurvish', 1562588733),
(421, 'Go to shop categories', 'imurvish', 1562588742),
(422, 'Go to shop categories', 'imurvish', 1562588745),
(423, 'Go to shop categories', 'imurvish', 1562588755),
(424, 'Go to shop categories', 'imurvish', 1562588758),
(425, 'Go to shop categories', 'imurvish', 1562588759),
(426, 'Go to shop categories', 'imurvish', 1562588759),
(427, 'Go to shop categories', 'imurvish', 1562588759),
(428, 'Go to shop categories', 'imurvish', 1562588767),
(429, 'Go to shop categories', 'imurvish', 1562588782),
(430, 'Go to shop categories', 'imurvish', 1562588798),
(431, 'Go to shop categories', 'imurvish', 1562588801),
(432, 'Edit shop categorie to Shirt', 'imurvish', 1562588804),
(433, 'Go to shop categories', 'imurvish', 1562588839),
(434, 'Go to shop categories', 'imurvish', 1562588900),
(435, 'Go to shop categories', 'imurvish', 1562588911),
(436, 'Go to shop categories', 'imurvish', 1562588987),
(437, 'Go to shop categories', 'imurvish', 1562589007),
(438, 'Go to shop categories', 'imurvish', 1562589027),
(439, 'Go to shop categories', 'imurvish', 1562589048),
(440, 'Go to shop categories', 'imurvish', 1562589055),
(441, 'Go to shop categories', 'imurvish', 1562589112),
(442, 'Go to shop categories', 'imurvish', 1562589118),
(443, 'Go to shop categories', 'imurvish', 1562589132),
(444, 'Go to shop categories', 'imurvish', 1562589135),
(445, 'Go to shop categories', 'imurvish', 1562589166),
(446, 'Go to shop categories', 'imurvish', 1562589176),
(447, 'Go to shop categories', 'imurvish', 1562589189),
(448, 'Go to shop categories', 'imurvish', 1562589193),
(449, 'Go to shop categories', 'imurvish', 1562589208),
(450, 'Go to shop categories', 'imurvish', 1562589263),
(451, 'Go to shop categories', 'imurvish', 1562589271),
(452, 'Go to shop categories', 'imurvish', 1562589281),
(453, 'Go to shop categories', 'imurvish', 1562589287),
(454, 'Go to shop categories', 'imurvish', 1562589321),
(455, 'Go to shop categories', 'imurvish', 1562589339),
(456, 'Go to shop categories', 'imurvish', 1562589373),
(457, 'Go to shop categories', 'imurvish', 1562589378),
(458, 'Go to shop categories', 'imurvish', 1562589386),
(459, 'Go to shop categories', 'imurvish', 1562589402),
(460, 'Go to shop categories', 'imurvish', 1562589432),
(461, 'Change subcategory for category id - 2', 'imurvish', 1562589447),
(462, 'Go to shop categories', 'imurvish', 1562589447),
(463, 'Go to shop categories', 'imurvish', 1562589450),
(464, 'Go to shop categories', 'imurvish', 1562589552),
(465, 'Go to shop categories', 'imurvish', 1562590373),
(466, 'Edit shop categorie to Female', 'imurvish', 1562590384),
(467, 'Edit shop categorie to ', 'imurvish', 1562590388),
(468, 'Edit shop categorie to Female', 'imurvish', 1562590397),
(469, 'Edit shop categorie to Femaleee', 'imurvish', 1562590404),
(470, 'Edit shop categorie to Female', 'imurvish', 1562590429),
(471, 'Change subcategory for category id - 1', 'imurvish', 1562590522),
(472, 'Go to shop categories', 'imurvish', 1562590522),
(473, 'Edit shop categorie position ', 'imurvish', 1562590616),
(474, 'Edit shop categorie position ', 'imurvish', 1562590667),
(475, 'Edit shop categorie position ', 'imurvish', 1562590671),
(476, 'Go to shop categories', 'imurvish', 1562590673),
(477, 'Edit shop categorie position ', 'imurvish', 1562590678),
(478, 'Go to shop categories', 'imurvish', 1562590684),
(479, 'Go to shop categories', 'imurvish', 1562590687),
(480, 'Go to shop categories', 'imurvish', 1562590688),
(481, 'Edit shop categorie position ', 'imurvish', 1562590692),
(482, 'Go to shop categories', 'imurvish', 1562590746),
(483, 'Edit shop categorie position ', 'imurvish', 1562590754),
(484, 'Go to shop categories', 'imurvish', 1562590769),
(485, 'Go to shop categories', 'imurvish', 1562590790),
(486, 'Go to shop categories', 'imurvish', 1562590805),
(487, 'User imurvish logged in', NULL, 1562646639),
(488, 'Go to home page', 'imurvish', 1562646640),
(489, 'Go to shop categories', 'imurvish', 1562647059),
(490, 'Go to shop categories', 'imurvish', 1562647148),
(491, 'Go to shop categories', 'imurvish', 1562647200),
(492, 'Go to shop categories', 'imurvish', 1562647694),
(493, 'Go to shop categories', 'imurvish', 1562648440),
(494, 'Go to shop categories', 'imurvish', 1562648614),
(495, 'Go to shop categories', 'imurvish', 1562648760),
(496, 'Go to shop categories', 'imurvish', 1562648810),
(497, 'Delete a shop categorie', 'imurvish', 1562648851),
(498, 'Go to shop categories', 'imurvish', 1562648852),
(499, 'Go to shop categories', 'imurvish', 1562648871),
(500, 'Go to shop categories', 'imurvish', 1562648876),
(501, 'Edit shop categorie position ', 'imurvish', 1562648887),
(502, 'Go to shop categories', 'imurvish', 1562648892),
(503, 'Go to home page', 'imurvish', 1562648920),
(504, 'Go to home page', 'imurvish', 1562648943),
(505, 'Go to home page', 'imurvish', 1562648972),
(506, 'Go to home page', 'imurvish', 1562648985),
(507, 'User imurvish logged in', NULL, 1562649003),
(508, 'Go to home page', 'imurvish', 1562649003),
(509, 'Go to products', 'imurvish', 1562649079),
(510, 'Go to home page', 'imurvish', 1562649088),
(511, 'Password change for user: imurvish', 'imurvish', 1562649361),
(512, 'Password change for user: imurvish', 'imurvish', 1562649372),
(513, 'User imurvish logged in', NULL, 1562649383),
(514, 'Go to home page', 'imurvish', 1562649384),
(515, 'Go to home page', 'imurvish', 1562649651),
(516, 'Go to discounts page', 'imurvish', 1562649849),
(517, 'Go to discounts page', 'imurvish', 1562649977),
(518, 'Go to discounts page', 'imurvish', 1562649979),
(519, 'Go to shop categories', 'imurvish', 1562649995),
(520, 'Go to shop categories', 'imurvish', 1562650050),
(521, 'Go to shop categories', 'imurvish', 1562650058),
(522, 'Go to shop categories', 'imurvish', 1562650081),
(523, 'Go to shop categories', 'imurvish', 1562650090),
(524, 'Go to shop categories', 'imurvish', 1562650100),
(525, 'Go to shop categories', 'imurvish', 1562650106),
(526, 'Go to shop categories', 'imurvish', 1562650122),
(527, 'Go to shop categories', 'imurvish', 1562650139),
(528, 'Go to shop categories', 'imurvish', 1562650147),
(529, 'Go to shop categories', 'imurvish', 1562650168),
(530, 'Go to shop categories', 'imurvish', 1562650187),
(531, 'Go to shop categories', 'imurvish', 1562650204),
(532, 'Go to shop categories', 'imurvish', 1562650254),
(533, 'Go to shop categories', 'imurvish', 1562650358),
(534, 'Go to shop categories', 'imurvish', 1562650429),
(535, 'Go to shop categories', 'imurvish', 1562650590),
(536, 'Go to shop categories', 'imurvish', 1562650601),
(537, 'Go to shop categories', 'imurvish', 1562650603),
(538, 'Go to shop categories', 'imurvish', 1562650604),
(539, 'Go to shop categories', 'imurvish', 1562650644),
(540, 'Go to shop categories', 'imurvish', 1562650646),
(541, 'Go to shop categories', 'imurvish', 1562650648),
(542, 'Change subcategory for category id - 1', 'imurvish', 1562650764),
(543, 'Go to shop categories', 'imurvish', 1562650764),
(544, 'Go to shop categories', 'imurvish', 1562650909),
(545, 'Go to shop categories', 'imurvish', 1562651119),
(546, 'Go to shop categories', 'imurvish', 1562651127),
(547, 'Go to shop categories', 'imurvish', 1562651174),
(548, 'Go to shop categories', 'imurvish', 1562651183),
(549, 'Go to shop categories', 'imurvish', 1562651223),
(550, 'Go to shop categories', 'imurvish', 1562651235),
(551, 'Go to shop categories', 'imurvish', 1562651245),
(552, 'Go to shop categories', 'imurvish', 1562651274),
(553, 'Go to shop categories', 'imurvish', 1562651281),
(554, 'Delete a shop categorie', 'imurvish', 1562651285),
(555, 'Go to shop categories', 'imurvish', 1562651286),
(556, 'Delete a shop categorie', 'imurvish', 1562651291),
(557, 'Go to shop categories', 'imurvish', 1562651292),
(558, 'Go to shop categories', 'imurvish', 1562651305),
(559, 'Go to publish product', 'imurvish', 1562651316),
(560, 'Success published product', 'imurvish', 1562651320),
(561, 'Go to products', 'imurvish', 1562651320),
(562, 'Delete product id - 7', 'imurvish', 1562651327),
(563, 'Go to products', 'imurvish', 1562651328),
(564, 'Go to shop categories', 'imurvish', 1562651344),
(565, 'Go to shop categories', 'imurvish', 1562651357),
(566, 'Change subcategory for category id - 8', 'imurvish', 1562651364),
(567, 'Go to shop categories', 'imurvish', 1562651364),
(568, 'Change subcategory for category id - 8', 'imurvish', 1562651369),
(569, 'Go to shop categories', 'imurvish', 1562651370),
(570, 'Go to shop categories', 'imurvish', 1562651496),
(571, 'Go to shop categories', 'imurvish', 1562651597),
(572, 'Delete a shop categorie', 'imurvish', 1562651601),
(573, 'Go to shop categories', 'imurvish', 1562651602),
(574, 'Go to shop categories', 'imurvish', 1562651649),
(575, 'Edit shop categorie position ', 'imurvish', 1562651660),
(576, 'Edit shop categorie position ', 'imurvish', 1562651762),
(577, 'Go to shop categories', 'imurvish', 1562651769),
(578, 'Edit shop categorie position ', 'imurvish', 1562651803),
(579, 'Go to shop categories', 'imurvish', 1562651823),
(580, 'Go to shop categories', 'imurvish', 1562651827),
(581, 'Go to shop categories', 'imurvish', 1562652394),
(582, 'Go to shop categories', 'imurvish', 1562652421),
(583, 'Go to shop categories', 'imurvish', 1562652435),
(584, 'Go to shop categories', 'imurvish', 1562652439),
(585, 'Go to shop categories', 'imurvish', 1562652503),
(586, 'Go to shop categories', 'imurvish', 1562652513),
(587, 'Go to shop categories', 'imurvish', 1562652545),
(588, 'Go to shop categories', 'imurvish', 1562652652),
(589, 'Go to shop categories', 'imurvish', 1562652659),
(590, 'Go to shop categories', 'imurvish', 1562652662),
(591, 'Go to shop categories', 'imurvish', 1562652673),
(592, 'Go to shop categories', 'imurvish', 1562652714),
(593, 'Go to shop categories', 'imurvish', 1562652726),
(594, 'Go to shop categories', 'imurvish', 1562652737),
(595, 'Go to shop categories', 'imurvish', 1562652743),
(596, 'Go to shop categories', 'imurvish', 1562652753),
(597, 'Go to shop categories', 'imurvish', 1562652759),
(598, 'Go to shop categories', 'imurvish', 1562652772),
(599, 'Go to shop categories', 'imurvish', 1562652800),
(600, 'Edit shop categorie position ', 'imurvish', 1562652836),
(601, 'Go to shop categories', 'imurvish', 1562652838),
(602, 'Go to shop categories', 'imurvish', 1562652921),
(603, 'Go to shop categories', 'imurvish', 1562652928),
(604, 'Go to shop categories', 'imurvish', 1562652935),
(605, 'Go to shop categories', 'imurvish', 1562653043),
(606, 'Go to shop categories', 'imurvish', 1562653080),
(607, 'Go to shop categories', 'imurvish', 1562653093),
(608, 'Go to shop categories', 'imurvish', 1562653113),
(609, 'Go to shop categories', 'imurvish', 1562653159),
(610, 'Go to Blog', 'imurvish', 1562653179),
(611, 'Go to Blog', 'imurvish', 1562653703),
(612, 'Go to Blog', 'imurvish', 1562653731),
(613, 'Go to shop categories', 'imurvish', 1562653807),
(614, 'Go to shop categories', 'imurvish', 1562653814),
(615, 'Go to shop categories', 'imurvish', 1562653835),
(616, 'Go to shop categories', 'imurvish', 1562653847),
(617, 'Go to shop categories', 'imurvish', 1562653884),
(618, 'Go to shop categories', 'imurvish', 1562653905),
(619, 'Go to shop categories', 'imurvish', 1562653910),
(620, 'Go to shop categories', 'imurvish', 1562653951),
(621, 'Edit shop categorie to Test category', 'imurvish', 1562653964),
(622, 'Go to shop categories', 'imurvish', 1562654045),
(623, 'Edit shop categorie position ', 'imurvish', 1562654050),
(624, 'Go to shop categories', 'imurvish', 1562654054),
(625, 'Edit shop categorie position ', 'imurvish', 1562654058),
(626, 'Go to shop categories', 'imurvish', 1562654065),
(627, 'Go to shop categories', 'imurvish', 1562654065),
(628, 'Go to shop categories', 'imurvish', 1562654066),
(629, 'Go to shop categories', 'imurvish', 1562654066),
(630, 'Go to shop categories', 'imurvish', 1562654067),
(631, 'Go to shop categories', 'imurvish', 1562654067),
(632, 'Edit shop categorie to test categorie', 'imurvish', 1562654073),
(633, 'Go to shop categories', 'imurvish', 1562654096),
(634, 'Edit shop categorie to test category', 'imurvish', 1562654099),
(635, 'Go to shop categories', 'imurvish', 1562654107),
(636, 'Edit shop categorie to test categorie', 'imurvish', 1562654119),
(637, 'Go to shop categories', 'imurvish', 1562654122),
(638, 'Go to shop categories', 'imurvish', 1562654143),
(639, 'Edit shop categorie to test category', 'imurvish', 1562654149),
(640, 'Go to shop categories', 'imurvish', 1562654180),
(641, 'Edit shop categorie position ', 'imurvish', 1562654186),
(642, 'Go to shop categories', 'imurvish', 1562654188),
(643, 'Go to shop categories', 'imurvish', 1562654216),
(644, 'Go to shop categories', 'imurvish', 1562654251),
(645, 'Go to shop categories', 'imurvish', 1562654282),
(646, 'Go to shop categories', 'imurvish', 1562654294),
(647, 'Go to shop categories', 'imurvish', 1562654306),
(648, 'Edit shop categorie position ', 'imurvish', 1562654315),
(649, 'Go to shop categories', 'imurvish', 1562654319),
(650, 'Edit shop categorie position ', 'imurvish', 1562654443),
(651, 'Edit shop categorie position ', 'imurvish', 1562654451),
(652, 'Go to shop categories', 'imurvish', 1562654466),
(653, 'Go to publish product', 'imurvish', 1562654598),
(654, 'Go to languages', 'imurvish', 1562654608),
(655, 'Go to languages', 'imurvish', 1562654611),
(656, 'Create language - GJ', 'imurvish', 1562654707),
(657, 'Go to languages', 'imurvish', 1562654707),
(658, 'Go to languages', 'imurvish', 1562654801),
(659, 'Go to languages', 'imurvish', 1562654804),
(660, 'Go to languages', 'imurvish', 1562654810),
(661, 'Go to languages', 'imurvish', 1562654815),
(662, 'Go to languages', 'imurvish', 1562654818),
(663, 'Go to languages', 'imurvish', 1562655087),
(664, 'Delete language id - 3', 'imurvish', 1562655090),
(665, 'Go to languages', 'imurvish', 1562655090),
(666, 'Create language - GJ', 'imurvish', 1562655141),
(667, 'Go to languages', 'imurvish', 1562655153),
(668, 'Go to languages', 'imurvish', 1562655174),
(669, 'Go to languages', 'imurvish', 1562655184),
(670, 'Go to languages', 'imurvish', 1562655207),
(671, 'Delete language id - 4', 'imurvish', 1562655211),
(672, 'Go to languages', 'imurvish', 1562655211),
(673, 'Go to shop categories', 'imurvish', 1562655218),
(674, 'Go to shop categories', 'imurvish', 1562655423),
(675, 'Go to products', 'imurvish', 1562655453),
(676, 'Go to publish product', 'imurvish', 1562655456),
(677, 'Go to products', 'imurvish', 1562655460),
(678, 'Go to home page', 'imurvish', 1562655524),
(679, 'Go to home page', 'imurvish', 1562655528),
(680, 'Go to home page', 'imurvish', 1562655531),
(681, 'Go to home page', 'imurvish', 1562655539),
(682, 'Go to home page', 'imurvish', 1562655541),
(683, 'User imurvish logged in', NULL, 1562655550),
(684, 'Go to home page', 'imurvish', 1562655550),
(685, 'Go to home page', 'imurvish', 1562655550),
(686, 'Go to shop categories', 'imurvish', 1562655571),
(687, 'Go to shop categories', 'imurvish', 1562655604),
(688, 'Go to shop categories', 'imurvish', 1562655610),
(689, 'Go to shop categories', 'imurvish', 1562655734),
(690, 'Go to shop categories', 'imurvish', 1562655950),
(691, 'Go to shop categories', 'imurvish', 1562655969),
(692, 'Go to shop categories', 'imurvish', 1562655984),
(693, 'Go to shop categories', 'imurvish', 1562656020),
(694, 'Go to shop categories', 'imurvish', 1562656021),
(695, 'Go to shop categories', 'imurvish', 1562656022),
(696, 'Go to shop categories', 'imurvish', 1562656063),
(697, 'Go to shop categories', 'imurvish', 1562656074),
(698, 'Go to shop categories', 'imurvish', 1562656101),
(699, 'Go to shop categories', 'imurvish', 1562656102),
(700, 'Go to shop categories', 'imurvish', 1562656102),
(701, 'Go to shop categories', 'imurvish', 1562656103),
(702, 'Go to shop categories', 'imurvish', 1562656105),
(703, 'Go to shop categories', 'imurvish', 1562656127),
(704, 'Go to shop categories', 'imurvish', 1562656138),
(705, 'Go to shop categories', 'imurvish', 1562656165),
(706, 'Go to shop categories', 'imurvish', 1562656180),
(707, 'Go to shop categories', 'imurvish', 1562656185),
(708, 'Go to shop categories', 'imurvish', 1562656204),
(709, 'Go to shop categories', 'imurvish', 1562656226),
(710, 'Go to shop categories', 'imurvish', 1562656252),
(711, 'Go to shop categories', 'imurvish', 1562656257),
(712, 'Go to shop categories', 'imurvish', 1562656276),
(713, 'Go to shop categories', 'imurvish', 1562656286),
(714, 'Go to shop categories', 'imurvish', 1562656288),
(715, 'Go to shop categories', 'imurvish', 1562656289),
(716, 'Go to shop categories', 'imurvish', 1562656289),
(717, 'Go to shop categories', 'imurvish', 1562656289),
(718, 'Go to shop categories', 'imurvish', 1562656289),
(719, 'Go to shop categories', 'imurvish', 1562656290),
(720, 'Go to shop categories', 'imurvish', 1562656290),
(721, 'Go to shop categories', 'imurvish', 1562656290),
(722, 'Go to shop categories', 'imurvish', 1562656290),
(723, 'Go to shop categories', 'imurvish', 1562656295),
(724, 'Go to shop categories', 'imurvish', 1562656307),
(725, 'Go to shop categories', 'imurvish', 1562656413),
(726, 'Go to shop categories', 'imurvish', 1562656449),
(727, 'Go to shop categories', 'imurvish', 1562656465),
(728, 'Go to shop categories', 'imurvish', 1562656474),
(729, 'Go to shop categories', 'imurvish', 1562656484),
(730, 'Go to shop categories', 'imurvish', 1562656538),
(731, 'Go to shop categories', 'imurvish', 1562656539),
(732, 'Go to shop categories', 'imurvish', 1562656539),
(733, 'Go to shop categories', 'imurvish', 1562656542),
(734, 'Go to shop categories', 'imurvish', 1562656636),
(735, 'Go to shop categories', 'imurvish', 1562656716),
(736, 'Go to shop categories', 'imurvish', 1562656717),
(737, 'Go to shop categories', 'imurvish', 1562656718),
(738, 'Go to shop categories', 'imurvish', 1562656727),
(739, 'Go to shop categories', 'imurvish', 1562656770),
(740, 'Go to shop categories', 'imurvish', 1562656791),
(741, 'Go to shop categories', 'imurvish', 1562656870),
(742, 'Go to shop categories', 'imurvish', 1562656879),
(743, 'Go to shop categories', 'imurvish', 1562656902),
(744, 'Go to shop categories', 'imurvish', 1562656909),
(745, 'Go to shop categories', 'imurvish', 1562656926),
(746, 'Go to shop categories', 'imurvish', 1562656944),
(747, 'Go to shop categories', 'imurvish', 1562656955),
(748, 'Go to shop categories', 'imurvish', 1562656970),
(749, 'Go to shop categories', 'imurvish', 1562656990),
(750, 'Go to shop categories', 'imurvish', 1562656993),
(751, 'User imurvish logged in', NULL, 1562656999),
(752, 'Go to home page', 'imurvish', 1562657000),
(753, 'Go to home page', 'imurvish', 1562657078),
(754, 'Go to home page', 'imurvish', 1562657100),
(755, 'Go to home page', 'imurvish', 1562657116),
(756, 'Go to home page', 'imurvish', 1562657131),
(757, 'Go to home page', 'imurvish', 1562657145),
(758, 'Go to home page', 'imurvish', 1562657154),
(759, 'Go to home page', 'imurvish', 1562657167),
(760, 'Go to home page', 'imurvish', 1562657214),
(761, 'Go to home page', 'imurvish', 1562657215),
(762, 'Go to home page', 'imurvish', 1562657215),
(763, 'Go to home page', 'imurvish', 1562657216),
(764, 'Go to home page', 'imurvish', 1562657216),
(765, 'Go to home page', 'imurvish', 1562657239),
(766, 'Go to home page', 'imurvish', 1562657257),
(767, 'Go to home page', 'imurvish', 1562657272),
(768, 'Go to home page', 'imurvish', 1562657289),
(769, 'Go to home page', 'imurvish', 1562657343),
(770, 'Go to home page', 'imurvish', 1562657354),
(771, 'Go to home page', 'imurvish', 1562657379),
(772, 'Go to home page', 'imurvish', 1562657394),
(773, 'Go to home page', 'imurvish', 1562657406),
(774, 'Go to home page', 'imurvish', 1562657411),
(775, 'Go to home page', 'imurvish', 1562657434),
(776, 'Go to home page', 'imurvish', 1562657447),
(777, 'Go to home page', 'imurvish', 1562657448),
(778, 'Go to home page', 'imurvish', 1562657462),
(779, 'Go to home page', 'imurvish', 1562657539),
(780, 'Go to home page', 'imurvish', 1562657549),
(781, 'Go to home page', 'imurvish', 1562657601),
(782, 'Go to home page', 'imurvish', 1562657620),
(783, 'Go to shop categories', 'imurvish', 1562657625),
(784, 'Go to home page', 'imurvish', 1562657626),
(785, 'Go to home page', 'imurvish', 1562657712),
(786, 'Go to home page', 'imurvish', 1562657841),
(787, 'Go to home page', 'imurvish', 1562657859),
(788, 'Go to home page', 'imurvish', 1562657888),
(789, 'Go to home page', 'imurvish', 1562657896),
(790, 'Go to home page', 'imurvish', 1562657911),
(791, 'Go to home page', 'imurvish', 1562657915),
(792, 'Go to home page', 'imurvish', 1562657982),
(793, 'Go to home page', 'imurvish', 1562658003),
(794, 'Go to home page', 'imurvish', 1562658018),
(795, 'Go to home page', 'imurvish', 1562658027),
(796, 'Go to home page', 'imurvish', 1562658044),
(797, 'Go to home page', 'imurvish', 1562658059),
(798, 'Go to home page', 'imurvish', 1562658112),
(799, 'Go to home page', 'imurvish', 1562658127),
(800, 'Go to home page', 'imurvish', 1562658174),
(801, 'Go to home page', 'imurvish', 1562658249),
(802, 'Go to home page', 'imurvish', 1562658268),
(803, 'Go to home page', 'imurvish', 1562658291),
(804, 'Go to home page', 'imurvish', 1562658347),
(805, 'Go to home page', 'imurvish', 1562658446),
(806, 'Go to home page', 'imurvish', 1562658469),
(807, 'Go to home page', 'imurvish', 1562658505),
(808, 'Go to home page', 'imurvish', 1562658549),
(809, 'Go to home page', 'imurvish', 1562658566),
(810, 'Go to home page', 'imurvish', 1562658575),
(811, 'Go to home page', 'imurvish', 1562658608),
(812, 'Go to home page', 'imurvish', 1562658652),
(813, 'Go to home page', 'imurvish', 1562658669),
(814, 'Go to home page', 'imurvish', 1562658687),
(815, 'Go to home page', 'imurvish', 1562658698),
(816, 'Go to home page', 'imurvish', 1562658707),
(817, 'Go to home page', 'imurvish', 1562658719),
(818, 'Go to home page', 'imurvish', 1562658748),
(819, 'Go to home page', 'imurvish', 1562658763),
(820, 'Go to home page', 'imurvish', 1562658880),
(821, 'Go to home page', 'imurvish', 1562658888),
(822, 'Go to home page', 'imurvish', 1562658943),
(823, 'Go to home page', 'imurvish', 1562658995),
(824, 'Go to home page', 'imurvish', 1562659147),
(825, 'Go to home page', 'imurvish', 1562659166),
(826, 'Go to home page', 'imurvish', 1562659224),
(827, 'Go to home page', 'imurvish', 1562659238),
(828, 'Go to home page', 'imurvish', 1562659251),
(829, 'Go to home page', 'imurvish', 1562659293),
(830, 'Go to home page', 'imurvish', 1562659299),
(831, 'Go to home page', 'imurvish', 1562659313),
(832, 'Go to home page', 'imurvish', 1562662754),
(833, 'Go to home page', 'imurvish', 1562662856),
(834, 'Go to shop categories', 'imurvish', 1562663062),
(835, 'Go to discounts page', 'imurvish', 1562663105),
(836, 'Go to discounts page', 'imurvish', 1562663605),
(837, 'Go to discounts page', 'imurvish', 1562663610),
(838, 'Go to discounts page', 'imurvish', 1562663625),
(839, 'Go to discounts page', 'imurvish', 1562663629),
(840, 'Go to home page', 'imurvish', 1562663631),
(841, 'Search for product title - post', 'imurvish', 1562663646),
(842, 'Go to products', 'imurvish', 1562663646),
(843, 'Search for product title - categorie', 'imurvish', 1562663661),
(844, 'Go to products', 'imurvish', 1562663661),
(845, 'Search for product title - test', 'imurvish', 1562663669),
(846, 'Go to products', 'imurvish', 1562663669),
(847, 'Go to products', 'imurvish', 1562663678),
(848, 'Go to products', 'imurvish', 1562663806),
(849, 'Go to Blog', 'imurvish', 1562663840),
(850, 'Go to shop categories', 'imurvish', 1562663876),
(851, 'Go to products', 'imurvish', 1562663921),
(852, 'Go to Blog', 'imurvish', 1562663927),
(853, 'Go to Blog Publish', 'imurvish', 1562663935),
(854, 'Go to Blog Publish', 'imurvish', 1562664064),
(855, 'Go to Blog', 'imurvish', 1562664116),
(856, 'Go to Blog Publish', 'imurvish', 1562664135),
(857, 'Go to Blog', 'imurvish', 1562664143),
(858, 'Go to Blog', 'imurvish', 1562664244),
(859, 'Go to Blog Publish', 'imurvish', 1562664249),
(860, 'Go to Blog', 'imurvish', 1562664259),
(861, 'Go to Blog', 'imurvish', 1562664352),
(862, 'Go to Templates Page', 'imurvish', 1562664379),
(863, 'Go to Templates Page', 'imurvish', 1562664400),
(864, 'Go to Blog Publish', 'imurvish', 1562664462),
(865, 'Go to Blog', 'imurvish', 1562665079),
(866, 'Go to Blog Publish', 'imurvish', 1562665110),
(867, 'Go to Settings Page', 'imurvish', 1562665171),
(868, 'Go to Blog', 'imurvish', 1562665235),
(869, 'Go to Blog Publish', 'imurvish', 1562665243),
(870, 'Go to publish product', 'imurvish', 1562665513),
(871, 'Go to Blog Publish', 'imurvish', 1562665521),
(872, 'Go to shop categories', 'imurvish', 1562666021),
(873, 'Go to shop categories', 'imurvish', 1562666023),
(874, 'Go to Blog', 'imurvish', 1562666042),
(875, 'Go to Blog Publish', 'imurvish', 1562666043),
(876, 'Go to Blog', 'imurvish', 1562666070),
(877, 'Go to Blog Publish', 'imurvish', 1562666072),
(878, 'Go to Blog', 'imurvish', 1562666082),
(879, 'Go to Blog Publish', 'imurvish', 1562666085),
(880, 'Go to Blog', 'imurvish', 1562666135),
(881, 'Go to publish product', 'imurvish', 1562666151),
(882, 'Go to products', 'imurvish', 1562666152),
(883, 'Go to publish product', 'imurvish', 1562666158),
(884, 'Go to Blog Publish', 'imurvish', 1562666192),
(885, 'Go to Templates Page', 'imurvish', 1562666275),
(886, 'Go to products', 'imurvish', 1562666278),
(887, 'Go to Templates Page', 'imurvish', 1562666636),
(888, 'Go to publish product', 'imurvish', 1562666641),
(889, 'Go to Blog Publish', 'imurvish', 1562666648),
(890, 'Go to Templates Page', 'imurvish', 1562667300),
(891, 'Go to Templates Page', 'imurvish', 1562667310),
(892, 'Go to Templates Page', 'imurvish', 1562667315),
(893, 'Go to Templates Page', 'imurvish', 1562667341),
(894, 'Go to Blog', 'imurvish', 1562667343),
(895, 'Go to Styling page', 'imurvish', 1562667460),
(896, 'Change site styling', 'imurvish', 1562667523),
(897, 'Go to Styling page', 'imurvish', 1562667523),
(898, 'Change site styling', 'imurvish', 1562667605),
(899, 'Go to Styling page', 'imurvish', 1562667605),
(900, 'Change site styling', 'imurvish', 1562667615),
(901, 'Go to Styling page', 'imurvish', 1562667615),
(902, 'Change site styling', 'imurvish', 1562667713),
(903, 'Go to Styling page', 'imurvish', 1562667713),
(904, 'Go to Pages manage', 'imurvish', 1562667781),
(905, 'Add new page with name - abc', 'imurvish', 1562667788),
(906, 'Go to Pages manage', 'imurvish', 1562667788),
(907, 'Delete page', 'imurvish', 1562667792),
(908, 'Go to Pages manage', 'imurvish', 1562667792),
(909, 'Delete page', 'imurvish', 1562667797),
(910, 'Go to Pages manage', 'imurvish', 1562667797),
(911, 'Page status Changed', 'imurvish', 1562667801),
(912, 'Page status Changed', 'imurvish', 1562667802),
(913, 'Page status Changed', 'imurvish', 1562667802),
(914, 'Go to Pages manage', 'imurvish', 1562668986),
(915, 'Go to orders page', 'imurvish', 1562668989),
(916, 'Go to Templates Page', 'imurvish', 1562668996),
(917, 'Go to History', 'imurvish', 1562668999),
(918, 'Go to publish product', 'imurvish', 1562671417),
(919, 'Go to home page', 'imurvish', 1562671426),
(920, 'Go to publish product', 'imurvish', 1562671429),
(921, 'Go to publish product', 'imurvish', 1562671455),
(922, 'Go to home page', 'imurvish', 1562671463),
(923, 'Go to Blog Publish', 'imurvish', 1562671470),
(924, 'Search for product title - blog', 'imurvish', 1562671483),
(925, 'Go to products', 'imurvish', 1562671483),
(926, 'Go to home page', 'imurvish', 1562671498),
(927, 'User imurvish logged in', NULL, 1562671511),
(928, 'Go to home page', 'imurvish', 1562671512),
(929, 'Go to orders page', 'imurvish', 1562671556),
(930, 'Go to Blog Publish', 'imurvish', 1562671566),
(931, 'Go to Settings Page', 'imurvish', 1562671571),
(932, 'Go to home page', 'imurvish', 1562671628),
(933, 'Go to home page', 'imurvish', 1562671634),
(934, 'Go to discounts page', 'imurvish', 1562671637),
(935, 'Go to discounts page', 'imurvish', 1562671668),
(936, 'Go to discounts page', 'imurvish', 1562671755),
(937, 'Go to discounts page', 'imurvish', 1562671802),
(938, 'Go to discounts page', 'imurvish', 1562671832),
(939, 'Go to discounts page', 'imurvish', 1562671838),
(940, 'Go to Blog Publish', 'imurvish', 1562671845),
(941, 'Go to Blog Publish', 'imurvish', 1562671876),
(942, 'Go to Blog Publish', 'imurvish', 1562672032),
(943, 'Go to Blog Publish', 'imurvish', 1562672144),
(944, 'Go to Blog Publish', 'imurvish', 1562672158),
(945, 'Go to Blog Publish', 'imurvish', 1562672166),
(946, 'Go to Blog Publish', 'imurvish', 1562672173),
(947, 'Go to Blog Publish', 'imurvish', 1562672203),
(948, 'Go to Settings Page', 'imurvish', 1562672214),
(949, 'Cookie law information changed', 'imurvish', 1562672227),
(950, 'Go to Settings Page', 'imurvish', 1562672227),
(951, 'Go to home page', 'imurvish', 1562672231),
(952, 'Go to home page', 'imurvish', 1562672266),
(953, 'Go to Pages manage', 'imurvish', 1562672444),
(954, 'Page status Changed', 'imurvish', 1562672446),
(955, 'Go to Pages manage', 'imurvish', 1562672450),
(956, 'Go to Pages manage', 'imurvish', 1562672497),
(957, 'Go to publish product', 'imurvish', 1562672503),
(958, 'Go to Blog Publish', 'imurvish', 1562672725),
(959, 'Go to Blog Publish', 'imurvish', 1562673038),
(960, 'Go to orders page', 'imurvish', 1562673042),
(961, 'Go to publish product', 'imurvish', 1562673045),
(962, 'Go to publish product', 'imurvish', 1562673081),
(963, 'Go to publish product', 'imurvish', 1562673198);
INSERT INTO `history` (`id`, `activity`, `username`, `time`) VALUES
(964, 'Go to publish product', 'imurvish', 1562673230),
(965, 'Go to publish product', 'imurvish', 1562673288),
(966, 'Go to publish product', 'imurvish', 1562673310),
(967, 'Go to publish product', 'imurvish', 1562673340),
(968, 'Go to publish product', 'imurvish', 1562673367),
(969, 'Go to publish product', 'imurvish', 1562673380),
(970, 'Go to publish product', 'imurvish', 1562673416),
(971, 'Go to publish product', 'imurvish', 1562673441),
(972, 'Go to publish product', 'imurvish', 1562673616),
(973, 'Go to publish product', 'imurvish', 1562673648),
(974, 'Go to publish product', 'imurvish', 1562673659),
(975, 'Go to publish product', 'imurvish', 1562673664),
(976, 'Go to publish product', 'imurvish', 1562673815),
(977, 'Go to publish product', 'imurvish', 1562673829),
(978, 'Go to publish product', 'imurvish', 1562673843),
(979, 'Go to products', 'imurvish', 1562673844),
(980, 'Go to shop categories', 'imurvish', 1562673847),
(981, 'Go to orders page', 'imurvish', 1562673850),
(982, 'Go to discounts page', 'imurvish', 1562673853),
(983, 'Go to discounts page', 'imurvish', 1562673887),
(984, 'Go to discounts page', 'imurvish', 1562673894),
(985, 'Go to discounts page', 'imurvish', 1562673931),
(986, 'Go to discounts page', 'imurvish', 1562673991),
(987, 'Go to discounts page', 'imurvish', 1562674014),
(988, 'Go to discounts page', 'imurvish', 1562674021),
(989, 'Go to discounts page', 'imurvish', 1562674101),
(990, 'Search for product title - test', 'imurvish', 1562674105),
(991, 'Go to products', 'imurvish', 1562674105),
(992, 'Search for product title - test', 'imurvish', 1562674106),
(993, 'Go to products', 'imurvish', 1562674106),
(994, 'Search for product title - test', 'imurvish', 1562674186),
(995, 'Go to products', 'imurvish', 1562674186),
(996, 'Go to home page', 'imurvish', 1562674188),
(997, 'Go to home page', 'imurvish', 1562674417),
(998, 'Go to home page', 'imurvish', 1562674443),
(999, 'Go to home page', 'imurvish', 1562674451),
(1000, 'Go to home page', 'imurvish', 1562674456),
(1001, 'Go to home page', 'imurvish', 1562674473),
(1002, 'Go to home page', 'imurvish', 1562674481),
(1003, 'Go to home page', 'imurvish', 1562674686),
(1004, 'Go to home page', 'imurvish', 1562674699),
(1005, 'Go to home page', 'imurvish', 1562674724),
(1006, 'Go to brands page', 'imurvish', 1562674784),
(1007, 'Go to brands page', 'imurvish', 1562674822),
(1008, 'Go to brands page', 'imurvish', 1562674827),
(1009, 'Go to brands page', 'imurvish', 1562674895),
(1010, 'Go to brands page', 'imurvish', 1562674923),
(1011, 'Go to brands page', 'imurvish', 1562674950),
(1012, 'Go to brands page', 'imurvish', 1562675007),
(1013, 'Go to brands page', 'imurvish', 1562675016),
(1014, 'Go to brands page', 'imurvish', 1562675024),
(1015, 'Go to brands page', 'imurvish', 1562675080),
(1016, 'Go to brands page', 'imurvish', 1562675100),
(1017, 'Go to brands page', 'imurvish', 1562675164),
(1018, 'Go to brands page', 'imurvish', 1562675200),
(1019, 'Go to brands page', 'imurvish', 1562675212),
(1020, 'Go to brands page', 'imurvish', 1562675217),
(1021, 'Go to brands page', 'imurvish', 1562675258),
(1022, 'Go to brands page', 'imurvish', 1562675541),
(1023, 'Go to brands page', 'imurvish', 1562675669),
(1024, 'Go to brands page', 'imurvish', 1562675681),
(1025, 'Go to brands page', 'imurvish', 1562675740),
(1026, 'Go to brands page', 'imurvish', 1562675792),
(1027, 'Go to brands page', 'imurvish', 1562675833),
(1028, 'Go to brands page', 'imurvish', 1562675921),
(1029, 'Go to brands page', 'imurvish', 1562675933),
(1030, 'Go to brands page', 'imurvish', 1562675953),
(1031, 'Go to brands page', 'imurvish', 1562675982),
(1032, 'Go to brands page', 'imurvish', 1562676014),
(1033, 'Go to Titles / Descriptions page', 'imurvish', 1562676031),
(1034, 'Go to Titles / Descriptions page', 'imurvish', 1562676146),
(1035, 'Go to Titles / Descriptions page', 'imurvish', 1562676151),
(1036, 'Go to brands page', 'imurvish', 1562676240),
(1037, 'Go to Pages manage', 'imurvish', 1562676257),
(1038, 'Go to Pages manage', 'imurvish', 1562676271),
(1039, 'Go to Pages manage', 'imurvish', 1562676278),
(1040, 'Go to shop categories', 'imurvish', 1562676281),
(1041, 'Go to Pages manage', 'imurvish', 1562676291),
(1042, 'Go to Pages manage', 'imurvish', 1562676527),
(1043, 'Go to Pages manage', 'imurvish', 1562676534),
(1044, 'Go to Pages manage', 'imurvish', 1562676549),
(1045, 'Go to Pages manage', 'imurvish', 1562676554),
(1046, 'Go to Pages manage', 'imurvish', 1562676557),
(1047, 'Go to Pages manage', 'imurvish', 1562676563),
(1048, 'Go to brands page', 'imurvish', 1562677043),
(1049, 'Go to brands page', 'imurvish', 1562677207),
(1050, 'Go to File Manager', 'imurvish', 1562677209),
(1051, 'Go to File Manager', 'imurvish', 1562677235),
(1052, 'User imurvish logged in', NULL, 1562732254),
(1053, 'Go to home page', 'imurvish', 1562732256),
(1054, 'Go to home page', 'imurvish', 1562732389),
(1055, 'Go to products', 'imurvish', 1562732862),
(1056, 'Go to Admin Users', 'imurvish', 1562733649),
(1057, 'Go to products', 'imurvish', 1562733653),
(1058, 'Go to publish product', 'imurvish', 1562733865),
(1059, 'Go to home page', 'imurvish', 1562733884),
(1060, 'Go to home page', 'imurvish', 1562733885),
(1061, 'Go to File Manager', 'imurvish', 1562733885),
(1062, 'Go to File Manager', 'imurvish', 1562733886),
(1063, 'Go to brands page', 'imurvish', 1562733886),
(1064, 'Go to Pages manage', 'imurvish', 1562733886),
(1065, 'Go to shop categories', 'imurvish', 1562733886),
(1066, 'Go to Pages manage', 'imurvish', 1562733886),
(1067, 'Go to Pages manage', 'imurvish', 1562733887),
(1068, 'Go to brands page', 'imurvish', 1562733887),
(1069, 'Go to brands page', 'imurvish', 1562734276),
(1070, 'Go to brands page', 'imurvish', 1562734329),
(1071, 'Go to brands page', 'imurvish', 1562734335),
(1072, 'Go to brands page', 'imurvish', 1562734387),
(1073, 'Go to publish product', 'imurvish', 1562734440),
(1074, 'Success published product', 'imurvish', 1562734444),
(1075, 'Go to products', 'imurvish', 1562734444),
(1076, 'Delete product id - 7', 'imurvish', 1562734450),
(1077, 'Go to products', 'imurvish', 1562734450),
(1078, 'Go to products', 'imurvish', 1562734518),
(1079, 'Go to brands page', 'imurvish', 1562734700),
(1080, 'Go to publish product', 'imurvish', 1562734834),
(1081, 'Go to brands page', 'imurvish', 1562734989),
(1082, 'Go to Pages manage', 'imurvish', 1562735892),
(1083, 'Go to Pages manage', 'imurvish', 1562735912),
(1084, 'Go to home page', 'imurvish', 1562736006),
(1085, 'User imurvish logged in', NULL, 1562736012),
(1086, 'Go to home page', 'imurvish', 1562736013),
(1087, 'Go to home page', 'imurvish', 1562736016),
(1088, 'Go to home page', 'imurvish', 1562736020),
(1089, 'Go to home page', 'imurvish', 1562736021),
(1090, 'Go to home page', 'imurvish', 1562736022),
(1091, 'Go to home page', 'imurvish', 1562736022),
(1092, 'Go to home page', 'imurvish', 1562736022),
(1093, 'Go to home page', 'imurvish', 1562736023),
(1094, 'Go to home page', 'imurvish', 1562736028),
(1095, 'Go to brands page', 'imurvish', 1562736057),
(1096, 'Go to brands page', 'imurvish', 1562736192),
(1097, 'Go to Pages manage', 'imurvish', 1562736197),
(1098, 'Add new page with name - Cart', 'imurvish', 1562736222),
(1099, 'Go to Pages manage', 'imurvish', 1562736222),
(1100, 'Page status Changed', 'imurvish', 1562736235),
(1101, 'Page status Changed', 'imurvish', 1562736236),
(1102, 'Page status Changed', 'imurvish', 1562736236),
(1103, 'Go to Pages manage', 'imurvish', 1562736238),
(1104, 'Delete page', 'imurvish', 1562736246),
(1105, 'Go to Pages manage', 'imurvish', 1562736246),
(1106, 'Add new page with name - blogpublish', 'imurvish', 1562736268),
(1107, 'Go to Pages manage', 'imurvish', 1562736268),
(1108, 'Page status Changed', 'imurvish', 1562736275),
(1109, 'Page status Changed', 'imurvish', 1562736278),
(1110, 'Delete page', 'imurvish', 1562736281),
(1111, 'Go to Pages manage', 'imurvish', 1562736281),
(1112, 'Add new page with name - Brans', 'imurvish', 1562736287),
(1113, 'Go to Pages manage', 'imurvish', 1562736287),
(1114, 'Page status Changed', 'imurvish', 1562736291),
(1115, 'Delete page', 'imurvish', 1562736294),
(1116, 'Go to Pages manage', 'imurvish', 1562736294),
(1117, 'Add new page with name - Brands', 'imurvish', 1562736301),
(1118, 'Go to Pages manage', 'imurvish', 1562736301),
(1119, 'Page status Changed', 'imurvish', 1562736303),
(1120, 'Page status Changed', 'imurvish', 1562736390),
(1121, 'Delete page', 'imurvish', 1562736470),
(1122, 'Go to Pages manage', 'imurvish', 1562736470),
(1123, 'Page status Changed', 'imurvish', 1562736476),
(1124, 'Page status Changed', 'imurvish', 1562736480),
(1125, 'Page status Changed', 'imurvish', 1562736481),
(1126, 'Go to Pages manage', 'imurvish', 1562736482),
(1127, 'Page status Changed', 'imurvish', 1562736484),
(1128, 'Go to Pages manage', 'imurvish', 1562736485),
(1129, 'Go to Pages manage', 'imurvish', 1562736551),
(1130, 'Go to Pages manage', 'imurvish', 1562736840),
(1131, 'Go to Pages manage', 'imurvish', 1562736849),
(1132, 'Go to Pages manage', 'imurvish', 1562737987),
(1133, 'Go to home page', 'imurvish', 1562738199),
(1134, 'Go to Pages manage', 'imurvish', 1562738346),
(1135, 'Page status Changed', 'imurvish', 1562738348),
(1136, 'Page status Changed', 'imurvish', 1562738349),
(1137, 'Page status Changed', 'imurvish', 1562738349),
(1138, 'Go to Pages manage', 'imurvish', 1562738350),
(1139, 'Page status Changed', 'imurvish', 1562738352),
(1140, 'Page status Changed', 'imurvish', 1562738353),
(1141, 'Go to Pages manage', 'imurvish', 1562738355),
(1142, 'Page status Changed', 'imurvish', 1562738357),
(1143, 'Go to Pages manage', 'imurvish', 1562738362),
(1144, 'Page status Changed', 'imurvish', 1562738365),
(1145, 'Page status Changed', 'imurvish', 1562738365),
(1146, 'Go to Pages manage', 'imurvish', 1562738367),
(1147, 'Page status Changed', 'imurvish', 1562738370),
(1148, 'Go to Pages manage', 'imurvish', 1562738371),
(1149, 'Go to brands page', 'imurvish', 1562738397),
(1150, 'Go to brands page', 'imurvish', 1562738415),
(1151, 'Go to brands page', 'imurvish', 1562738423),
(1152, 'Go to brands page', 'imurvish', 1562738458),
(1153, 'Go to brands page', 'imurvish', 1562738464),
(1154, 'Go to brands page', 'imurvish', 1562738467),
(1155, 'Go to brands page', 'imurvish', 1562738476),
(1156, 'Go to brands page', 'imurvish', 1562738489),
(1157, 'Go to brands page', 'imurvish', 1562738492),
(1158, 'Go to brands page', 'imurvish', 1562738690),
(1159, 'Go to home page', 'imurvish', 1562738704),
(1160, 'Go to Admin Users', 'imurvish', 1562738709),
(1161, 'Go to home page', 'imurvish', 1562738711),
(1162, 'Go to Subscribed Emails', 'imurvish', 1562738715),
(1163, 'Go to home page', 'imurvish', 1562738718),
(1164, 'Go to Subscribed Emails', 'imurvish', 1562738720),
(1165, 'Go to home page', 'imurvish', 1562738737),
(1166, 'Go to orders page', 'imurvish', 1562738740),
(1167, 'Go to orders page', 'imurvish', 1562738756),
(1168, 'Paypal sandbox mode disabled', 'imurvish', 1562738776),
(1169, 'Go to orders page', 'imurvish', 1562738776),
(1170, 'Go to publish product', 'imurvish', 1562738791),
(1171, 'Go to publish product', 'imurvish', 1562739140),
(1172, 'Go to languages', 'imurvish', 1562739144),
(1173, 'Go to languages', 'imurvish', 1562739254),
(1174, 'Go to publish product', 'imurvish', 1562739259),
(1175, 'Go to languages', 'imurvish', 1562739270),
(1176, 'Go to languages', 'imurvish', 1562739274),
(1177, 'Go to languages', 'imurvish', 1562739296),
(1178, 'Go to brands page', 'imurvish', 1562739462),
(1179, 'Go to discounts page', 'imurvish', 1562739466),
(1180, 'Go to Admin Users', 'imurvish', 1562739478),
(1181, 'Go to Admin Users', 'imurvish', 1562739582),
(1182, 'Go to home page', 'imurvish', 1562739587),
(1183, 'Edit shop categorie position ', 'imurvish', 1562739638),
(1184, 'Go to home page', 'imurvish', 1562739641),
(1185, 'Go to Pages manage', 'imurvish', 1562739713),
(1186, 'Go to Pages manage', 'imurvish', 1562739732),
(1187, 'Page status Changed', 'imurvish', 1562739735),
(1188, 'Go to Pages manage', 'imurvish', 1562739737),
(1189, 'Add new page with name - contacts', 'imurvish', 1562739775),
(1190, 'Go to Pages manage', 'imurvish', 1562739775),
(1191, 'Page status Changed', 'imurvish', 1562739777),
(1192, 'Go to Pages manage', 'imurvish', 1562739778),
(1193, 'Page status Changed', 'imurvish', 1562740069),
(1194, 'Delete page', 'imurvish', 1562740075),
(1195, 'Go to Pages manage', 'imurvish', 1562740076),
(1196, 'Go to discounts page', 'imurvish', 1562740179),
(1197, 'Go to Titles / Descriptions page', 'imurvish', 1562740195),
(1198, 'Go to Subscribed Emails', 'imurvish', 1562740224),
(1199, 'Go to Subscribed Emails', 'imurvish', 1562740322),
(1200, 'Go to Subscribed Emails', 'imurvish', 1562740334),
(1201, 'Go to Subscribed Emails', 'imurvish', 1562740385),
(1202, 'Go to Subscribed Emails', 'imurvish', 1562740391),
(1203, 'Go to Subscribed Emails', 'imurvish', 1562740933),
(1204, 'Go to Subscribed Emails', 'imurvish', 1562741020),
(1205, 'Go to Subscribed Emails', 'imurvish', 1562741061),
(1206, 'Go to Subscribed Emails', 'imurvish', 1562743202),
(1207, 'Go to Subscribed Emails', 'imurvish', 1562744616),
(1208, 'Go to Subscribed Emails', 'imurvish', 1562749306),
(1209, 'Go to Subscribed Emails', 'imurvish', 1562749340),
(1210, 'Go to Admin Users', 'imurvish', 1562749361),
(1211, 'Go to Admin Users', 'imurvish', 1562749365),
(1212, 'User imurvish logged in', NULL, 1562819065),
(1213, 'Go to home page', 'imurvish', 1562819066),
(1214, 'Go to home page', 'imurvish', 1562819981),
(1215, 'Go to home page', 'imurvish', 1562821107),
(1216, 'Go to home page', 'imurvish', 1562821148),
(1217, 'User imurvish logged in', NULL, 1562848979),
(1218, 'Go to home page', 'imurvish', 1562848980),
(1219, 'Go to home page', 'imurvish', 1562850134),
(1220, 'Go to home page', 'imurvish', 1562850148),
(1221, 'User imurvish logged in', NULL, 1562912402),
(1222, 'Go to home page', 'imurvish', 1562912402),
(1223, 'Go to discounts page', 'imurvish', 1562912629),
(1224, 'Go to Blog', 'imurvish', 1562912707),
(1225, 'Go to Blog Publish', 'imurvish', 1562912744),
(1226, 'Go to Blog', 'imurvish', 1562913676),
(1227, 'Go to Blog Publish', 'imurvish', 1562913693);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `currencyKey` varchar(5) NOT NULL,
  `flag` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `abbr`, `name`, `currency`, `currencyKey`, `flag`) VALUES
(1, 'bg', 'bulgarian', 'лв', 'BGN', 'bg.jpg'),
(2, 'en', 'english', '$', 'USD', 'en.jpg'),
(3, 'gr', 'greece', 'EUR', 'EUR', 'gr.png');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'point to public_users ID',
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'viewed status is change when change processed status',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_code` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `user_id`, `products`, `date`, `referrer`, `clean_referrer`, `payment_type`, `paypal_status`, `processed`, `viewed`, `confirmed`, `discount_code`) VALUES
(1, 1234, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"1\";s:6:\"folder\";s:10:\"1562324378\";s:5:\"image\";s:36:\"846bc2d28ecb008bec1bf65621c75a79.jpg\";s:4:\"time\";s:10:\"1562324409\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"3\";s:8:\"quantity\";s:1:\"1\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"1\";s:3:\"url\";s:9:\"product_1\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"1\";s:5:\"price\";s:4:\"1500\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1562327428, 'http://localhost/ci_demo/', 'localhost', 'cashOnDelivery', NULL, 0, 1, 0, ''),
(2, 1235, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";s:4:\"test\";s:9:\"vendor_id\";s:1:\"1\";s:2:\"id\";s:1:\"2\";s:6:\"folder\";s:10:\"1562329341\";s:5:\"image\";s:36:\"a0833f6714d952e7f6476eb015cd7674.jpg\";s:4:\"time\";s:10:\"1562329367\";s:11:\"time_update\";s:10:\"1562563300\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"1\";s:8:\"quantity\";s:1:\"2\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:11:\"test_prod_2\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"2\";s:5:\"price\";s:4:\"1250\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1562563389, 'http://localhost/ci_demo/ci_shopping/index.php/admin/home', 'localhost', 'cashOnDelivery', NULL, 2, 1, 0, 'JW1LDE'),
(3, 1236, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";s:4:\"test\";s:9:\"vendor_id\";s:1:\"1\";s:2:\"id\";s:1:\"2\";s:6:\"folder\";s:10:\"1562329341\";s:5:\"image\";s:36:\"a0833f6714d952e7f6476eb015cd7674.jpg\";s:4:\"time\";s:10:\"1562329367\";s:11:\"time_update\";s:10:\"1562563300\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"1\";s:8:\"quantity\";s:1:\"2\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:11:\"test_prod_2\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"2\";s:5:\"price\";s:4:\"1250\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1562564495, 'http://localhost/ci_demo/ci_shopping/index.php/admin/home', 'localhost', 'cashOnDelivery', NULL, 1, 1, 0, 'JW1LDE'),
(4, 1237, 0, 'a:2:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";s:3:\"abc\";s:9:\"vendor_id\";s:1:\"1\";s:2:\"id\";s:1:\"2\";s:6:\"folder\";s:10:\"1562329341\";s:5:\"image\";s:36:\"a0833f6714d952e7f6476eb015cd7674.jpg\";s:4:\"time\";s:10:\"1562329367\";s:11:\"time_update\";s:10:\"1562563300\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"1\";s:8:\"quantity\";s:1:\"1\";s:11:\"procurement\";s:1:\"1\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:11:\"test_prod_2\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"2\";s:5:\"price\";s:4:\"1250\";}s:16:\"product_quantity\";s:1:\"1\";}i:1;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";N;s:9:\"vendor_id\";s:1:\"0\";s:2:\"id\";s:1:\"4\";s:6:\"folder\";s:10:\"1562565462\";s:5:\"image\";s:36:\"cd46ff3a9f0bcdc10a664bf519c22af3.jpg\";s:4:\"time\";s:10:\"1562565515\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"2\";s:8:\"quantity\";s:1:\"1\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:9:\"product_4\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:3:\"520\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1562568856, 'http://localhost/ci_demo/ci_shopping/index.php/admin/home', 'localhost', 'cashOnDelivery', NULL, 2, 1, 0, 'JW1LDE'),
(5, 1238, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";s:4:\"Test\";s:9:\"vendor_id\";s:1:\"2\";s:2:\"id\";s:1:\"5\";s:6:\"folder\";s:10:\"1562572010\";s:5:\"image\";s:9:\"offer.png\";s:4:\"time\";s:10:\"1562572063\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"2\";s:8:\"quantity\";s:1:\"5\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:13:\"Test_Vendor_5\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"0\";s:5:\"price\";s:3:\"750\";}s:16:\"product_quantity\";s:1:\"2\";}}', 1562572800, 'http://localhost/ci_demo/ci_shopping/index.php/admin/home', 'localhost', 'cashOnDelivery', NULL, 1, 1, 0, 'VBLOP2'),
(6, 1239, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";s:4:\"Test\";s:9:\"vendor_id\";s:1:\"2\";s:2:\"id\";s:1:\"6\";s:6:\"folder\";s:10:\"1562572067\";s:5:\"image\";s:10:\"offer1.png\";s:4:\"time\";s:10:\"1562572103\";s:11:\"time_update\";s:1:\"0\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"2\";s:8:\"quantity\";s:1:\"1\";s:11:\"procurement\";s:1:\"0\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:13:\"Test_Vendor_6\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"1\";s:5:\"price\";s:3:\"750\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1562577445, 'http://localhost/ci_demo/ci_shopping/index.php/admin/home', 'localhost', 'cashOnDelivery', NULL, 2, 1, 0, 'GTHVBJ'),
(7, 1240, 0, 'a:1:{i:0;a:2:{s:12:\"product_info\";a:17:{s:11:\"vendor_name\";s:3:\"abc\";s:9:\"vendor_id\";s:1:\"1\";s:2:\"id\";s:1:\"2\";s:6:\"folder\";s:10:\"1562329341\";s:5:\"image\";s:36:\"a0833f6714d952e7f6476eb015cd7674.jpg\";s:4:\"time\";s:10:\"1562329367\";s:11:\"time_update\";s:10:\"1562563300\";s:10:\"visibility\";s:1:\"1\";s:14:\"shop_categorie\";s:1:\"1\";s:8:\"quantity\";s:1:\"1\";s:11:\"procurement\";s:1:\"1\";s:9:\"in_slider\";s:1:\"0\";s:3:\"url\";s:11:\"test_prod_2\";s:16:\"virtual_products\";N;s:8:\"brand_id\";N;s:8:\"position\";s:1:\"2\";s:5:\"price\";s:4:\"1250\";}s:16:\"product_quantity\";s:1:\"1\";}}', 1562667912, 'http://localhost/ci_demo/ci_ecommerce/admin/home', 'localhost', 'cashOnDelivery', NULL, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `orders_clients`
--

CREATE TABLE `orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders_clients`
--

INSERT INTO `orders_clients` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `post_code`, `notes`, `for_id`) VALUES
(1, 'ssass', 'qdsdf', 'test@test.com', '1234567890', 'dmkihgi', 'ndfujh', '3587425', 'jfdbhrjgrgbj', 1),
(2, 'fdty', 'gdfc', 'dfb@fde.com', '1234567890', 'sfgdsrwfv', 'ndfujh', '3587425', 'dgvds', 2),
(3, 'ssass', 'qdsdf', 'test@test.com', '1234567890', 'scc', 'ndfujh', '3587425', 'scsc', 3),
(4, 'ssass', 'qdsdf', 'test@test.com', '1234567890', 'dsc', 'ndfujh', '3587425', 'sfde', 4),
(5, 'fe', 'fdf', 'dfb@fde.com', '1234567890', 'fsf', 'ndfujh', '3587425', 'fs', 5),
(6, 'fdty', 'qdsdf', 'dfb@fde.com', '1234567890', 'k', 'ndfujh', '3587425', 'kk', 6),
(7, 'ssass', 'gdfc', 'dfb@fde.com', '1234567890', 'sfs', 'ndfujh', '3587425', 'sssssf', 7);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder` int(10) UNSIGNED DEFAULT NULL COMMENT 'folder with images',
  `image` varchar(255) NOT NULL,
  `time` int(10) UNSIGNED NOT NULL COMMENT 'time created',
  `time_update` int(10) UNSIGNED NOT NULL COMMENT 'time updated',
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `shop_categorie` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '0',
  `procurement` int(10) UNSIGNED NOT NULL,
  `in_slider` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `virtual_products` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand_id` int(5) DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `folder`, `image`, `time`, `time_update`, `visibility`, `shop_categorie`, `quantity`, `procurement`, `in_slider`, `url`, `virtual_products`, `brand_id`, `position`, `vendor_id`) VALUES
(1, 1562324378, '846bc2d28ecb008bec1bf65621c75a79.jpg', 1562324409, 1562328891, 1, 3, 2, 0, 1, 'product_1', NULL, NULL, 1, 0),
(2, 1562329341, 'a0833f6714d952e7f6476eb015cd7674.jpg', 1562329367, 1562563300, 1, 1, 1, 1, 0, 'test_prod_2', NULL, NULL, 2, 1),
(3, 1562562944, '0d5a8dc891951ee2cbf479b56011dcf7.jpg', 1562563043, 1562563053, 1, 3, 2, 0, 1, 'product_3', NULL, NULL, 2, 0),
(4, 1562565462, 'cd46ff3a9f0bcdc10a664bf519c22af3.jpg', 1562565515, 0, 1, 2, 1, 0, 0, 'product_4', NULL, NULL, 0, 0),
(5, 1562572010, 'offer.png', 1562572063, 1562577361, 1, 2, 3, 2, 0, 'Test_Vendor_5', NULL, NULL, 3, 2),
(6, 1562572067, 'offer1.png', 1562572103, 0, 1, 2, 1, 0, 0, 'Test_Vendor_6', NULL, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products_translations`
--

CREATE TABLE `products_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `basic_description` text NOT NULL,
  `price` varchar(20) NOT NULL,
  `old_price` varchar(20) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_translations`
--

INSERT INTO `products_translations` (`id`, `title`, `description`, `basic_description`, `price`, `old_price`, `abbr`, `for_id`) VALUES
(1, 'product 1', '<p>dejrgbfndheforijbowfejiolghjn</p>\r\n', '<p>test</p>\r\n', '1500', '1800', 'en', 1),
(2, 'test prod', '<p>djhgrednsakdlfbhvserglhobhf kdndvbliyh o</p>\r\n', '', '1250', '1250', 'en', 2),
(3, 'product 2', '<p>fqeghrefdb</p>\r\n', '<p>product 2 title decription</p>\r\n', '450', '520', 'en', 3),
(4, 'product 123', '<p>dnwiknfjnbhesukjv</p>\r\n', '<p>slider desc</p>\r\n', '520', '550', 'en', 4),
(5, 'Test Vendor 1', '<p>Test vendor 1 product description&nbsp;</p>\r\n', '', '750', '850', 'en', 5),
(6, 'Test Vendor 2', '<p>Test vendor description 2</p>\r\n', '', '750', '840', 'en', 6);

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages`
--

CREATE TABLE `seo_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `seo_pages`
--

INSERT INTO `seo_pages` (`id`, `name`) VALUES
(1, 'home'),
(2, 'checkout'),
(3, 'contacts'),
(4, 'blog');

-- --------------------------------------------------------

--
-- Table structure for table `seo_pages_translations`
--

CREATE TABLE `seo_pages_translations` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `page_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `sub_for` int(11) NOT NULL,
  `position` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `sub_for`, `position`) VALUES
(1, 0, 1),
(2, 0, 0),
(3, 1, 0),
(4, 1, 0),
(9, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories_translations`
--

CREATE TABLE `shop_categories_translations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `shop_categories_translations`
--

INSERT INTO `shop_categories_translations` (`id`, `name`, `abbr`, `for_id`) VALUES
(1, 'Male', 'en', 1),
(2, 'Female', 'en', 2),
(3, 'Shirt', 'en', 3),
(4, 'Pent', 'en', 4),
(9, 'test category', 'en', 9);

-- --------------------------------------------------------

--
-- Table structure for table `subscribed`
--

CREATE TABLE `subscribed` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subscribed`
--

INSERT INTO `subscribed` (`id`, `email`, `browser`, `ip`, `time`) VALUES
(1, 'test@test.com', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', '::1', '1562586556');

-- --------------------------------------------------------

--
-- Table structure for table `textual_pages_tanslations`
--

CREATE TABLE `textual_pages_tanslations` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `for_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'notifications by email',
  `last_login` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `notify`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'your@email.com', 0, 1562561396),
(2, 'imurvish', 'fc8f1d6cb5b79663d6924e15b82e7f53', 'urvish@urvish.com', 0, 1562912402);

-- --------------------------------------------------------

--
-- Table structure for table `users_public`
--

CREATE TABLE `users_public` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `value_store`
--

CREATE TABLE `value_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `thekey` varchar(50) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `value_store`
--

INSERT INTO `value_store` (`id`, `thekey`, `value`) VALUES
(1, 'sitelogo', 'NewLogo.jpg'),
(2, 'navitext', ''),
(3, 'footercopyright', 'Powered by ECC FZE © All right reserved. '),
(4, 'contactspage', 'Hello dear client'),
(5, 'footerContactAddr', ''),
(6, 'footerContactEmail', 'support@shop.dev'),
(7, 'footerContactPhone', ''),
(8, 'googleMaps', '42.671840, 83.279163'),
(9, 'footerAboutUs', ''),
(10, 'footerSocialFacebook', ''),
(11, 'footerSocialTwitter', ''),
(12, 'footerSocialGooglePlus', ''),
(13, 'footerSocialPinterest', ''),
(14, 'footerSocialYoutube', ''),
(16, 'contactsEmailTo', 'contacts@shop.dev'),
(17, 'shippingOrder', '1'),
(18, 'addJs', ''),
(19, 'publicQuantity', '0'),
(20, 'paypal_email', ''),
(21, 'paypal_sandbox', '0'),
(22, 'publicDateAdded', '0'),
(23, 'googleApi', ''),
(24, 'template', 'clothesshop'),
(25, 'cashondelivery_visibility', '1'),
(26, 'showBrands', '0'),
(27, 'showInSlider', '0'),
(28, 'codeDiscounts', '1'),
(29, 'virtualProducts', '0'),
(30, 'multiVendor', '0'),
(31, 'moreInfoBtn', '1'),
(32, 'newStyle', '.gradient-color {\r\n    background-color: #272e3b;\r\n    /* IE9, iOS 3.2+ */\r\n    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIHZpZXdCb3g9IjAgMCAxIDEiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxsaW5lYXJHcmFkaWVudCBpZD0idnNnZyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIwJSIgeTE9IjAlIiB4Mj0iMCUiIHkyPSIxMDAlIj48c3RvcCBzdG9wLWNvbG9yPSIjNDg1NTZjIiBzdG9wLW9wYWNpdHk9IjEiIG9mZnNldD0iMCIvPjxzdG9wIHN0b3AtY29sb3I9IiMxYjIxMmIiIHN0b3Atb3BhY2l0eT0iMSIgb2Zmc2V0PSIwLjQ1Nzk5OTk5OTk5OTk5OTk2Ii8+PHN0b3Agc3RvcC1jb2xvcj0iIzE0MTkyMiIgc3RvcC1vcGFjaXR5PSIxIiBvZmZzZXQ9IjAuNTMiLz48c3RvcCBzdG9wLWNvbG9yPSIjMTQxOTIyIiBzdG9wLW9wYWNpdHk9IjEiIG9mZnNldD0iMC42MSIvPjxzdG9wIHN0b3AtY29sb3I9IiMxNDE5MjIiIHN0b3Atb3BhY2l0eT0iMSIgb2Zmc2V0PSIwLjY4MiIvPjxzdG9wIHN0b3AtY29sb3I9IiMzNTNiNDUiIHN0b3Atb3BhY2l0eT0iMSIgb2Zmc2V0PSIxIi8+PC9saW5lYXJHcmFkaWVudD48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI3ZzZ2cpIiAvPjwvc3ZnPg==);\r\n    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%,color-stop(0, rgb(72, 85, 108)),color-stop(0.458, rgb(27, 33, 43)),color-stop(0.53, rgb(20, 25, 34)),color-stop(0.61, rgb(20, 25, 34)),color-stop(0.682, rgb(20, 25, 34)),color-stop(1, rgb(53, 59, 69)));\r\n    /* Android 2.3 */\r\n    background-image: -webkit-repeating-linear-gradient(top,rgb(72, 85, 108) 0%,rgb(27, 33, 43) 45.8%,rgb(20, 25, 34) 53%,rgb(20, 25, 34) 61%,rgb(20, 25, 34) 68.2%,rgb(53, 59, 69) 100%);\r\n    /* IE10+ */\r\n    background-image: repeating-linear-gradient(to bottom,rgb(72, 85, 108) 0%,rgb(27, 33, 43) 45.8%,rgb(20, 25, 34) 53%,rgb(20, 25, 34) 61%,rgb(20, 25, 34) 68.2%,rgb(53, 59, 69) 100%);\r\n    background-image: -ms-repeating-linear-gradient(top,rgb(72, 85, 108) 0%,rgb(27, 33, 43) 45.8%,rgb(20, 25, 34) 53%,rgb(20, 25, 34) 61%,rgb(20, 25, 34) 68.2%,rgb(53, 59, 69) 100%);\r\nborder : solid 1px #272e3b;box-shadow : 2px 2px 3px #272e3b; }\r\n.mine-color, .btn-inner-search { background-color:#272e3b; }\r\n.button-more::before { border-color: transparent #272e3b; }\r\n.btn-go-search:active,.btn-go-search:focus, .btn-go-search:hover, .button-more:hover, .button-more:focus, .button-more:hover { background-color: #525862; }\r\ndiv.filter-sidebar .title, .title.alone {border-bottom: 3px solid #93979d; }\r\ndiv.filter-sidebar .title span, .title.alone span {border-bottom : 3px solid #272e3b; }\r\n.cloth-bg-color {background-color:#272e3b;}\r\n.cloth-color {color:#272e3b;}\r\n.cloth--border-color {border-color:#272e3b;}\r\n.cloth-border-top-color {border-top-color: #272e3b;}\r\n.navbar.cloth .navbar-nav li.active a { color:#272e3b;}\r\n.navbar.cloth .navbar-nav li a:hover, .navbar.cloth .navbar-nav li a:focus {background-color:transparent !important; color:#272e3b;}\r\n.navbar.cloth .navbar-nav li:hover, .navbar.cloth .navbar-nav li.active {border-top:3px solid; border-top-color: #272e3b;}\r\n#small_carousel .product-list div.add-to-cart, #small_carousel .product-list .info-btn {background-color: #272e3b; }\r\n.products .product-list div.add-to-cart, .products .product-list .info-btn { background-color: #272e3b;}\r\n.part-label { background-color: #272e3b;}\r\n.pagination li a { color:#272e3b;}\r\n.pagination li.active a {background-color: #272e3b; border-color:#272e3b; }\r\n.list li a {background-color:#272e3b;}\r\n#home-slider .carousel-indicators .active, #small_carousel .carousel-indicators .active {background-color: #272e3b;}\r\n.btn-blue-round {    background-color: #272e3b;\r\n    /* IE9, iOS 3.2+ */\r\n    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMDAlIiBoZWlnaHQ9IjEwMCUiIHZpZXdCb3g9IjAgMCAxIDEiIHByZXNlcnZlQXNwZWN0UmF0aW89Im5vbmUiPjxsaW5lYXJHcmFkaWVudCBpZD0idnNnZyIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIHgxPSIwJSIgeTE9IjAlIiB4Mj0iMCUiIHkyPSIxMDAlIj48c3RvcCBzdG9wLWNvbG9yPSIjNDg1NTZjIiBzdG9wLW9wYWNpdHk9IjEiIG9mZnNldD0iMCIvPjxzdG9wIHN0b3AtY29sb3I9IiMxYjIxMmIiIHN0b3Atb3BhY2l0eT0iMSIgb2Zmc2V0PSIwLjQ1Nzk5OTk5OTk5OTk5OTk2Ii8+PHN0b3Agc3RvcC1jb2xvcj0iIzE0MTkyMiIgc3RvcC1vcGFjaXR5PSIxIiBvZmZzZXQ9IjAuNTMiLz48c3RvcCBzdG9wLWNvbG9yPSIjMTQxOTIyIiBzdG9wLW9wYWNpdHk9IjEiIG9mZnNldD0iMC42MSIvPjxzdG9wIHN0b3AtY29sb3I9IiMxNDE5MjIiIHN0b3Atb3BhY2l0eT0iMSIgb2Zmc2V0PSIwLjY4MiIvPjxzdG9wIHN0b3AtY29sb3I9IiMzNTNiNDUiIHN0b3Atb3BhY2l0eT0iMSIgb2Zmc2V0PSIxIi8+PC9saW5lYXJHcmFkaWVudD48cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI3ZzZ2cpIiAvPjwvc3ZnPg==);\r\n    background-image: -webkit-gradient(linear, 0% 0%, 0% 100%,color-stop(0, rgb(72, 85, 108)),color-stop(0.458, rgb(27, 33, 43)),color-stop(0.53, rgb(20, 25, 34)),color-stop(0.61, rgb(20, 25, 34)),color-stop(0.682, rgb(20, 25, 34)),color-stop(1, rgb(53, 59, 69)));\r\n    /* Android 2.3 */\r\n    background-image: -webkit-repeating-linear-gradient(top,rgb(72, 85, 108) 0%,rgb(27, 33, 43) 45.8%,rgb(20, 25, 34) 53%,rgb(20, 25, 34) 61%,rgb(20, 25, 34) 68.2%,rgb(53, 59, 69) 100%);\r\n    /* IE10+ */\r\n    background-image: repeating-linear-gradient(to bottom,rgb(72, 85, 108) 0%,rgb(27, 33, 43) 45.8%,rgb(20, 25, 34) 53%,rgb(20, 25, 34) 61%,rgb(20, 25, 34) 68.2%,rgb(53, 59, 69) 100%);\r\n    background-image: -ms-repeating-linear-gradient(top,rgb(72, 85, 108) 0%,rgb(27, 33, 43) 45.8%,rgb(20, 25, 34) 53%,rgb(20, 25, 34) 61%,rgb(20, 25, 34) 68.2%,rgb(53, 59, 69) 100%);\r\n}\r\n.my-basket span.sum-scope {color:#272e3b;}\r\n.search .btn-red { border-bottom: 1px solid #93979d; border-right: 1px solid #93979d ; border-left: 1px solid #93979d ;}\r\n#small_carousel .product-list h2 a {color:#272e3b;}\r\n#home-slider .item h1 a {color:#272e3b;}\r\n\r\n/* IE8- CSS hack */\r\n@media \\0screen\\,screen\\9 {\r\n    .gradient-color {\r\n        filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=\"#ff48556c\",endColorstr=\"#ff353b45\",GradientType=0);\r\n    }\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `url` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `url`, `email`, `password`, `updated_at`, `created_at`) VALUES
(1, 'abc', 'abc', 'abc@test.comm', '$2y$10$IzCNn1I0LnsnlevOrHHPbuzhnM0yyUqKrMHIjxXDIQKeYZmJFI/g2', '2019-07-05 12:22:08', '2019-07-05 12:22:08'),
(2, 'Test', 'Test', 'test@test.com', '$2y$10$PoMKiW0liwCLjXh6swgjFuEJGvnunqpC2V3LVzaITDacmp0nafjfC', '2019-07-08 07:46:33', '2019-07-08 07:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders`
--

CREATE TABLE `vendors_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `products` text NOT NULL,
  `date` int(10) UNSIGNED NOT NULL,
  `referrer` varchar(255) NOT NULL,
  `clean_referrer` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `paypal_status` varchar(10) DEFAULT NULL,
  `processed` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `discount_code` varchar(20) NOT NULL,
  `vendor_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors_orders`
--

INSERT INTO `vendors_orders` (`id`, `order_id`, `products`, `date`, `referrer`, `clean_referrer`, `payment_type`, `paypal_status`, `processed`, `viewed`, `confirmed`, `discount_code`, `vendor_id`) VALUES
(1, 1234, 'a:1:{i:2;s:1:\"1\";}', 1562563389, 'http://localhost/ci_demo/ci_shopping/index.php/admin/home', 'localhost', 'cashOnDelivery', NULL, 0, 0, 0, 'JW1LDE', 1),
(2, 1235, 'a:1:{i:2;s:1:\"1\";}', 1562564495, 'http://localhost/ci_demo/ci_shopping/index.php/admin/home', 'localhost', 'cashOnDelivery', NULL, 0, 0, 0, 'JW1LDE', 1),
(3, 1236, 'a:1:{i:2;s:1:\"1\";}', 1562568856, 'http://localhost/ci_demo/ci_shopping/index.php/admin/home', 'localhost', 'cashOnDelivery', NULL, 0, 0, 0, 'JW1LDE', 1),
(4, 1237, 'a:1:{i:5;s:1:\"2\";}', 1562572800, 'http://localhost/ci_demo/ci_shopping/index.php/admin/home', 'localhost', 'cashOnDelivery', NULL, 2, 1, 0, 'VBLOP2', 2),
(5, 1238, 'a:1:{i:6;s:1:\"1\";}', 1562577445, 'http://localhost/ci_demo/ci_shopping/index.php/admin/home', 'localhost', 'cashOnDelivery', NULL, 0, 1, 0, 'GTHVBJ', 2),
(6, 1239, 'a:1:{i:2;s:1:\"1\";}', 1562667912, 'http://localhost/ci_demo/ci_ecommerce/admin/home', 'localhost', 'cashOnDelivery', NULL, 0, 0, 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vendors_orders_clients`
--

CREATE TABLE `vendors_orders_clients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(20) NOT NULL,
  `post_code` varchar(10) NOT NULL,
  `notes` text NOT NULL,
  `for_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vendors_orders_clients`
--

INSERT INTO `vendors_orders_clients` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `city`, `post_code`, `notes`, `for_id`) VALUES
(1, 'fdty', 'gdfc', 'dfb@fde.com', '1234567890', 'sfgdsrwfv', 'ndfujh', '3587425', 'dgvds', 1),
(2, 'ssass', 'qdsdf', 'test@test.com', '1234567890', 'scc', 'ndfujh', '3587425', 'scsc', 2),
(3, 'ssass', 'qdsdf', 'test@test.com', '1234567890', 'dsc', 'ndfujh', '3587425', 'sfde', 3),
(4, 'fe', 'fdf', 'dfb@fde.com', '1234567890', 'fsf', 'ndfujh', '3587425', 'fs', 4),
(5, 'fdty', 'qdsdf', 'dfb@fde.com', '1234567890', 'k', 'ndfujh', '3587425', 'kk', 5),
(6, 'ssass', 'gdfc', 'dfb@fde.com', '1234567890', 'sfs', 'ndfujh', '3587425', 'sssssf', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `active_pages`
--
ALTER TABLE `active_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `blog_translations`
--
ALTER TABLE `blog_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_links`
--
ALTER TABLE `confirm_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law`
--
ALTER TABLE `cookie_law`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`abbr`,`for_id`) USING BTREE;

--
-- Indexes for table `discount_codes`
--
ALTER TABLE `discount_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_clients`
--
ALTER TABLE `orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_translations`
--
ALTER TABLE `products_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages`
--
ALTER TABLE `seo_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribed`
--
ALTER TABLE `subscribed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_public`
--
ALTER TABLE `users_public`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_store`
--
ALTER TABLE `value_store`
  ADD PRIMARY KEY (`id`),
  ADD KEY `key` (`thekey`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique` (`email`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `active_pages`
--
ALTER TABLE `active_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_translations`
--
ALTER TABLE `blog_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `confirm_links`
--
ALTER TABLE `confirm_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cookie_law`
--
ALTER TABLE `cookie_law`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cookie_law_translations`
--
ALTER TABLE `cookie_law_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discount_codes`
--
ALTER TABLE `discount_codes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1228;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders_clients`
--
ALTER TABLE `orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products_translations`
--
ALTER TABLE `products_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `seo_pages`
--
ALTER TABLE `seo_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seo_pages_translations`
--
ALTER TABLE `seo_pages_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `shop_categories_translations`
--
ALTER TABLE `shop_categories_translations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscribed`
--
ALTER TABLE `subscribed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `textual_pages_tanslations`
--
ALTER TABLE `textual_pages_tanslations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_public`
--
ALTER TABLE `users_public`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `value_store`
--
ALTER TABLE `value_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vendors_orders`
--
ALTER TABLE `vendors_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendors_orders_clients`
--
ALTER TABLE `vendors_orders_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
