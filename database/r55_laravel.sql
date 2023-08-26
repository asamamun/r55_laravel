-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2023 at 12:50 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r55_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Automobiles', 'ertret', '2023-07-23 22:27:31', '2023-08-04 21:52:58'),
(2, 'Property', NULL, '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(3, 'Electronics', NULL, '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(4, 'Accessories', NULL, '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(5, 'Beauty', NULL, '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(6, 'Men', NULL, '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(7, 'Women', NULL, '2023-07-23 22:27:33', '2023-07-23 22:27:33'),
(8, 'LiveStock', 'sadfsadfdsaf', '2023-07-23 22:35:22', '2023-07-23 22:35:22'),
(10, 'women1', 'asddsfgd dfg fdgfdgf', '2023-08-04 22:43:44', '2023-08-04 22:43:44'),
(13, 'ASDasdf', 'sfsdfdsfdfsa', '2023-08-05 22:01:12', '2023-08-05 22:01:12'),
(14, 'qwedfgfdg', 'sdafsdfsdfdsfdsf', '2023-08-09 21:51:09', '2023-08-09 21:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `product_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'https://picsum.photos/id/917/640/480', NULL, NULL),
(2, 1, 'https://picsum.photos/id/800/640/480', NULL, NULL),
(3, 1, 'https://picsum.photos/id/12/640/480', NULL, NULL),
(4, 1, 'https://picsum.photos/id/254/640/480', NULL, NULL),
(5, 1, 'https://picsum.photos/id/575/640/480', NULL, NULL),
(6, 2, 'https://picsum.photos/id/975/640/480', NULL, NULL),
(7, 2, 'https://picsum.photos/id/414/640/480', NULL, NULL),
(8, 2, 'https://picsum.photos/id/26/640/480', NULL, NULL),
(9, 2, 'https://picsum.photos/id/570/640/480', NULL, NULL),
(10, 2, 'https://picsum.photos/id/344/640/480', NULL, NULL),
(11, 3, 'https://picsum.photos/id/574/640/480', NULL, NULL),
(12, 3, 'https://picsum.photos/id/306/640/480', NULL, NULL),
(13, 3, 'https://picsum.photos/id/304/640/480', NULL, NULL),
(14, 3, 'https://picsum.photos/id/635/640/480', NULL, NULL),
(15, 3, 'https://picsum.photos/id/454/640/480', NULL, NULL),
(16, 4, 'https://picsum.photos/id/688/640/480', NULL, NULL),
(17, 4, 'https://picsum.photos/id/319/640/480', NULL, NULL),
(18, 4, 'https://picsum.photos/id/293/640/480', NULL, NULL),
(19, 4, 'https://picsum.photos/id/357/640/480', NULL, NULL),
(20, 4, 'https://picsum.photos/id/378/640/480', NULL, NULL),
(21, 5, 'https://picsum.photos/id/180/640/480', NULL, NULL),
(22, 5, 'https://picsum.photos/id/801/640/480', NULL, NULL),
(23, 5, 'https://picsum.photos/id/870/640/480', NULL, NULL),
(24, 5, 'https://picsum.photos/id/280/640/480', NULL, NULL),
(25, 5, 'https://picsum.photos/id/764/640/480', NULL, NULL),
(26, 6, 'https://picsum.photos/id/466/640/480', NULL, NULL),
(27, 6, 'https://picsum.photos/id/448/640/480', NULL, NULL),
(28, 6, 'https://picsum.photos/id/763/640/480', NULL, NULL),
(29, 6, 'https://picsum.photos/id/991/640/480', NULL, NULL),
(30, 6, 'https://picsum.photos/id/158/640/480', NULL, NULL),
(31, 7, 'https://picsum.photos/id/135/640/480', NULL, NULL),
(32, 7, 'https://picsum.photos/id/901/640/480', NULL, NULL),
(33, 7, 'https://picsum.photos/id/216/640/480', NULL, NULL),
(34, 7, 'https://picsum.photos/id/918/640/480', NULL, NULL),
(35, 7, 'https://picsum.photos/id/612/640/480', NULL, NULL),
(36, 8, 'https://picsum.photos/id/549/640/480', NULL, NULL),
(37, 8, 'https://picsum.photos/id/489/640/480', NULL, NULL),
(38, 8, 'https://picsum.photos/id/747/640/480', NULL, NULL),
(39, 8, 'https://picsum.photos/id/847/640/480', NULL, NULL),
(40, 8, 'https://picsum.photos/id/758/640/480', NULL, NULL),
(41, 9, 'https://picsum.photos/id/395/640/480', NULL, NULL),
(42, 9, 'https://picsum.photos/id/889/640/480', NULL, NULL),
(43, 9, 'https://picsum.photos/id/701/640/480', NULL, NULL),
(44, 9, 'https://picsum.photos/id/39/640/480', NULL, NULL),
(45, 9, 'https://picsum.photos/id/509/640/480', NULL, NULL),
(46, 10, 'https://picsum.photos/id/935/640/480', NULL, NULL),
(47, 10, 'https://picsum.photos/id/221/640/480', NULL, NULL),
(48, 10, 'https://picsum.photos/id/682/640/480', NULL, NULL),
(49, 10, 'https://picsum.photos/id/534/640/480', NULL, NULL),
(50, 10, 'https://picsum.photos/id/251/640/480', NULL, NULL),
(51, 11, 'https://picsum.photos/id/182/640/480', NULL, NULL),
(52, 11, 'https://picsum.photos/id/881/640/480', NULL, NULL),
(53, 11, 'https://picsum.photos/id/873/640/480', NULL, NULL),
(54, 11, 'https://picsum.photos/id/107/640/480', NULL, NULL),
(55, 11, 'https://picsum.photos/id/103/640/480', NULL, NULL),
(56, 12, 'https://picsum.photos/id/809/640/480', NULL, NULL),
(57, 12, 'https://picsum.photos/id/622/640/480', NULL, NULL),
(58, 12, 'https://picsum.photos/id/161/640/480', NULL, NULL),
(59, 12, 'https://picsum.photos/id/201/640/480', NULL, NULL),
(60, 12, 'https://picsum.photos/id/362/640/480', NULL, NULL),
(61, 13, 'https://picsum.photos/id/621/640/480', NULL, NULL),
(62, 13, 'https://picsum.photos/id/563/640/480', NULL, NULL),
(63, 13, 'https://picsum.photos/id/350/640/480', NULL, NULL),
(64, 13, 'https://picsum.photos/id/193/640/480', NULL, NULL),
(65, 13, 'https://picsum.photos/id/237/640/480', NULL, NULL),
(66, 14, 'https://picsum.photos/id/940/640/480', NULL, NULL),
(67, 14, 'https://picsum.photos/id/448/640/480', NULL, NULL),
(68, 14, 'https://picsum.photos/id/274/640/480', NULL, NULL),
(69, 14, 'https://picsum.photos/id/459/640/480', NULL, NULL),
(70, 14, 'https://picsum.photos/id/458/640/480', NULL, NULL),
(71, 15, 'https://picsum.photos/id/474/640/480', NULL, NULL),
(72, 15, 'https://picsum.photos/id/506/640/480', NULL, NULL),
(73, 15, 'https://picsum.photos/id/769/640/480', NULL, NULL),
(74, 15, 'https://picsum.photos/id/644/640/480', NULL, NULL),
(75, 15, 'https://picsum.photos/id/674/640/480', NULL, NULL),
(76, 16, 'https://picsum.photos/id/863/640/480', NULL, NULL),
(77, 16, 'https://picsum.photos/id/795/640/480', NULL, NULL),
(78, 16, 'https://picsum.photos/id/890/640/480', NULL, NULL),
(79, 16, 'https://picsum.photos/id/452/640/480', NULL, NULL),
(80, 16, 'https://picsum.photos/id/443/640/480', NULL, NULL),
(81, 17, 'https://picsum.photos/id/107/640/480', NULL, NULL),
(82, 17, 'https://picsum.photos/id/777/640/480', NULL, NULL),
(83, 17, 'https://picsum.photos/id/71/640/480', NULL, NULL),
(84, 17, 'https://picsum.photos/id/695/640/480', NULL, NULL),
(85, 17, 'https://picsum.photos/id/327/640/480', NULL, NULL),
(86, 18, 'https://picsum.photos/id/685/640/480', NULL, NULL),
(87, 18, 'https://picsum.photos/id/747/640/480', NULL, NULL),
(88, 18, 'https://picsum.photos/id/55/640/480', NULL, NULL),
(89, 18, 'https://picsum.photos/id/637/640/480', NULL, NULL),
(90, 18, 'https://picsum.photos/id/224/640/480', NULL, NULL),
(91, 19, 'https://picsum.photos/id/982/640/480', NULL, NULL),
(92, 19, 'https://picsum.photos/id/620/640/480', NULL, NULL),
(93, 19, 'https://picsum.photos/id/858/640/480', NULL, NULL),
(94, 19, 'https://picsum.photos/id/756/640/480', NULL, NULL),
(95, 19, 'https://picsum.photos/id/832/640/480', NULL, NULL),
(96, 20, 'https://picsum.photos/id/495/640/480', NULL, NULL),
(97, 20, 'https://picsum.photos/id/842/640/480', NULL, NULL),
(98, 20, 'https://picsum.photos/id/699/640/480', NULL, NULL),
(99, 20, 'https://picsum.photos/id/946/640/480', NULL, NULL),
(100, 20, 'https://picsum.photos/id/722/640/480', NULL, NULL),
(101, 21, 'https://picsum.photos/id/564/640/480', NULL, NULL),
(102, 21, 'https://picsum.photos/id/328/640/480', NULL, NULL),
(103, 21, 'https://picsum.photos/id/642/640/480', NULL, NULL),
(104, 21, 'https://picsum.photos/id/431/640/480', NULL, NULL),
(105, 21, 'https://picsum.photos/id/507/640/480', NULL, NULL),
(106, 22, 'https://picsum.photos/id/183/640/480', NULL, NULL),
(107, 22, 'https://picsum.photos/id/161/640/480', NULL, NULL),
(108, 22, 'https://picsum.photos/id/864/640/480', NULL, NULL),
(109, 22, 'https://picsum.photos/id/583/640/480', NULL, NULL),
(110, 22, 'https://picsum.photos/id/713/640/480', NULL, NULL),
(111, 23, 'https://picsum.photos/id/814/640/480', NULL, NULL),
(112, 23, 'https://picsum.photos/id/132/640/480', NULL, NULL),
(113, 23, 'https://picsum.photos/id/521/640/480', NULL, NULL),
(114, 23, 'https://picsum.photos/id/633/640/480', NULL, NULL),
(115, 23, 'https://picsum.photos/id/522/640/480', NULL, NULL),
(116, 24, 'https://picsum.photos/id/113/640/480', NULL, NULL),
(117, 24, 'https://picsum.photos/id/979/640/480', NULL, NULL),
(118, 24, 'https://picsum.photos/id/501/640/480', NULL, NULL),
(119, 24, 'https://picsum.photos/id/335/640/480', NULL, NULL),
(120, 24, 'https://picsum.photos/id/117/640/480', NULL, NULL),
(121, 25, 'https://picsum.photos/id/457/640/480', NULL, NULL),
(122, 25, 'https://picsum.photos/id/108/640/480', NULL, NULL),
(123, 25, 'https://picsum.photos/id/313/640/480', NULL, NULL),
(124, 25, 'https://picsum.photos/id/704/640/480', NULL, NULL),
(125, 25, 'https://picsum.photos/id/663/640/480', NULL, NULL),
(126, 26, 'https://picsum.photos/id/762/640/480', NULL, NULL),
(127, 26, 'https://picsum.photos/id/132/640/480', NULL, NULL),
(128, 26, 'https://picsum.photos/id/152/640/480', NULL, NULL),
(129, 26, 'https://picsum.photos/id/877/640/480', NULL, NULL),
(130, 26, 'https://picsum.photos/id/557/640/480', NULL, NULL),
(131, 27, 'https://picsum.photos/id/929/640/480', NULL, NULL),
(132, 27, 'https://picsum.photos/id/697/640/480', NULL, NULL),
(133, 27, 'https://picsum.photos/id/246/640/480', NULL, NULL),
(134, 27, 'https://picsum.photos/id/699/640/480', NULL, NULL),
(135, 27, 'https://picsum.photos/id/9/640/480', NULL, NULL),
(136, 28, 'https://picsum.photos/id/462/640/480', NULL, NULL),
(137, 28, 'https://picsum.photos/id/396/640/480', NULL, NULL),
(138, 28, 'https://picsum.photos/id/472/640/480', NULL, NULL),
(139, 28, 'https://picsum.photos/id/417/640/480', NULL, NULL),
(140, 28, 'https://picsum.photos/id/114/640/480', NULL, NULL),
(141, 29, 'https://picsum.photos/id/820/640/480', NULL, NULL),
(142, 29, 'https://picsum.photos/id/125/640/480', NULL, NULL),
(143, 29, 'https://picsum.photos/id/506/640/480', NULL, NULL),
(144, 29, 'https://picsum.photos/id/379/640/480', NULL, NULL),
(145, 29, 'https://picsum.photos/id/64/640/480', NULL, NULL),
(146, 30, 'https://picsum.photos/id/420/640/480', NULL, NULL),
(147, 30, 'https://picsum.photos/id/775/640/480', NULL, NULL),
(148, 30, 'https://picsum.photos/id/718/640/480', NULL, NULL),
(149, 30, 'https://picsum.photos/id/803/640/480', NULL, NULL),
(150, 30, 'https://picsum.photos/id/532/640/480', NULL, NULL),
(151, 31, 'https://picsum.photos/id/524/640/480', NULL, NULL),
(152, 31, 'https://picsum.photos/id/598/640/480', NULL, NULL),
(153, 31, 'https://picsum.photos/id/816/640/480', NULL, NULL),
(154, 31, 'https://picsum.photos/id/629/640/480', NULL, NULL),
(155, 31, 'https://picsum.photos/id/482/640/480', NULL, NULL),
(156, 32, 'https://picsum.photos/id/639/640/480', NULL, NULL),
(157, 32, 'https://picsum.photos/id/310/640/480', NULL, NULL),
(158, 32, 'https://picsum.photos/id/706/640/480', NULL, NULL),
(159, 32, 'https://picsum.photos/id/951/640/480', NULL, NULL),
(160, 32, 'https://picsum.photos/id/639/640/480', NULL, NULL),
(161, 33, 'https://picsum.photos/id/512/640/480', NULL, NULL),
(162, 33, 'https://picsum.photos/id/447/640/480', NULL, NULL),
(163, 33, 'https://picsum.photos/id/634/640/480', NULL, NULL),
(164, 33, 'https://picsum.photos/id/92/640/480', NULL, NULL),
(165, 33, 'https://picsum.photos/id/727/640/480', NULL, NULL),
(166, 34, 'https://picsum.photos/id/881/640/480', NULL, NULL),
(167, 34, 'https://picsum.photos/id/158/640/480', NULL, NULL),
(168, 34, 'https://picsum.photos/id/31/640/480', NULL, NULL),
(169, 34, 'https://picsum.photos/id/489/640/480', NULL, NULL),
(170, 34, 'https://picsum.photos/id/832/640/480', NULL, NULL),
(171, 35, 'https://picsum.photos/id/650/640/480', NULL, NULL),
(172, 35, 'https://picsum.photos/id/491/640/480', NULL, NULL),
(173, 35, 'https://picsum.photos/id/279/640/480', NULL, NULL),
(174, 35, 'https://picsum.photos/id/591/640/480', NULL, NULL),
(175, 35, 'https://picsum.photos/id/701/640/480', NULL, NULL),
(176, 36, 'https://picsum.photos/id/925/640/480', NULL, NULL),
(177, 36, 'https://picsum.photos/id/969/640/480', NULL, NULL),
(178, 36, 'https://picsum.photos/id/743/640/480', NULL, NULL),
(179, 36, 'https://picsum.photos/id/804/640/480', NULL, NULL),
(180, 36, 'https://picsum.photos/id/6/640/480', NULL, NULL),
(181, 37, 'https://picsum.photos/id/802/640/480', NULL, NULL),
(182, 37, 'https://picsum.photos/id/338/640/480', NULL, NULL),
(183, 37, 'https://picsum.photos/id/196/640/480', NULL, NULL),
(184, 37, 'https://picsum.photos/id/221/640/480', NULL, NULL),
(185, 37, 'https://picsum.photos/id/641/640/480', NULL, NULL),
(186, 38, 'https://picsum.photos/id/989/640/480', NULL, NULL),
(187, 38, 'https://picsum.photos/id/589/640/480', NULL, NULL),
(188, 38, 'https://picsum.photos/id/405/640/480', NULL, NULL),
(189, 38, 'https://picsum.photos/id/382/640/480', NULL, NULL),
(190, 38, 'https://picsum.photos/id/435/640/480', NULL, NULL),
(191, 39, 'https://picsum.photos/id/47/640/480', NULL, NULL),
(192, 39, 'https://picsum.photos/id/929/640/480', NULL, NULL),
(193, 39, 'https://picsum.photos/id/82/640/480', NULL, NULL),
(194, 39, 'https://picsum.photos/id/393/640/480', NULL, NULL),
(195, 39, 'https://picsum.photos/id/113/640/480', NULL, NULL),
(196, 40, 'https://picsum.photos/id/625/640/480', NULL, NULL),
(197, 40, 'https://picsum.photos/id/841/640/480', NULL, NULL),
(198, 40, 'https://picsum.photos/id/22/640/480', NULL, NULL),
(199, 40, 'https://picsum.photos/id/110/640/480', NULL, NULL),
(200, 40, 'https://picsum.photos/id/222/640/480', NULL, NULL),
(201, 41, 'https://picsum.photos/id/360/640/480', NULL, NULL),
(202, 41, 'https://picsum.photos/id/208/640/480', NULL, NULL),
(203, 41, 'https://picsum.photos/id/683/640/480', NULL, NULL),
(204, 41, 'https://picsum.photos/id/352/640/480', NULL, NULL),
(205, 41, 'https://picsum.photos/id/116/640/480', NULL, NULL),
(206, 42, 'https://picsum.photos/id/461/640/480', NULL, NULL),
(207, 42, 'https://picsum.photos/id/715/640/480', NULL, NULL),
(208, 42, 'https://picsum.photos/id/918/640/480', NULL, NULL),
(209, 42, 'https://picsum.photos/id/304/640/480', NULL, NULL),
(210, 42, 'https://picsum.photos/id/49/640/480', NULL, NULL),
(211, 43, 'https://picsum.photos/id/513/640/480', NULL, NULL),
(212, 43, 'https://picsum.photos/id/408/640/480', NULL, NULL),
(213, 43, 'https://picsum.photos/id/83/640/480', NULL, NULL),
(214, 43, 'https://picsum.photos/id/579/640/480', NULL, NULL),
(215, 43, 'https://picsum.photos/id/117/640/480', NULL, NULL),
(216, 44, 'https://picsum.photos/id/317/640/480', NULL, NULL),
(217, 44, 'https://picsum.photos/id/366/640/480', NULL, NULL),
(218, 44, 'https://picsum.photos/id/498/640/480', NULL, NULL),
(219, 44, 'https://picsum.photos/id/897/640/480', NULL, NULL),
(220, 44, 'https://picsum.photos/id/668/640/480', NULL, NULL),
(221, 45, 'https://picsum.photos/id/432/640/480', NULL, NULL),
(222, 45, 'https://picsum.photos/id/573/640/480', NULL, NULL),
(223, 45, 'https://picsum.photos/id/476/640/480', NULL, NULL),
(224, 45, 'https://picsum.photos/id/875/640/480', NULL, NULL),
(225, 45, 'https://picsum.photos/id/942/640/480', NULL, NULL),
(226, 46, 'https://picsum.photos/id/7/640/480', NULL, NULL),
(227, 46, 'https://picsum.photos/id/274/640/480', NULL, NULL),
(228, 46, 'https://picsum.photos/id/497/640/480', NULL, NULL),
(229, 46, 'https://picsum.photos/id/393/640/480', NULL, NULL),
(230, 46, 'https://picsum.photos/id/559/640/480', NULL, NULL),
(231, 47, 'https://picsum.photos/id/39/640/480', NULL, NULL),
(232, 47, 'https://picsum.photos/id/800/640/480', NULL, NULL),
(233, 47, 'https://picsum.photos/id/528/640/480', NULL, NULL),
(234, 47, 'https://picsum.photos/id/461/640/480', NULL, NULL),
(235, 47, 'https://picsum.photos/id/99/640/480', NULL, NULL),
(236, 48, 'https://picsum.photos/id/328/640/480', NULL, NULL),
(237, 48, 'https://picsum.photos/id/226/640/480', NULL, NULL),
(238, 48, 'https://picsum.photos/id/177/640/480', NULL, NULL),
(239, 48, 'https://picsum.photos/id/983/640/480', NULL, NULL),
(240, 48, 'https://picsum.photos/id/159/640/480', NULL, NULL),
(241, 49, 'https://picsum.photos/id/979/640/480', NULL, NULL),
(242, 49, 'https://picsum.photos/id/610/640/480', NULL, NULL),
(243, 49, 'https://picsum.photos/id/850/640/480', NULL, NULL),
(244, 49, 'https://picsum.photos/id/958/640/480', NULL, NULL),
(245, 49, 'https://picsum.photos/id/518/640/480', NULL, NULL),
(246, 50, 'https://picsum.photos/id/270/640/480', NULL, NULL),
(247, 50, 'https://picsum.photos/id/772/640/480', NULL, NULL),
(248, 50, 'https://picsum.photos/id/496/640/480', NULL, NULL),
(249, 50, 'https://picsum.photos/id/295/640/480', NULL, NULL),
(250, 50, 'https://picsum.photos/id/543/640/480', NULL, NULL),
(251, 51, 'https://picsum.photos/id/826/640/480', NULL, NULL),
(252, 51, 'https://picsum.photos/id/348/640/480', NULL, NULL),
(253, 51, 'https://picsum.photos/id/297/640/480', NULL, NULL),
(254, 51, 'https://picsum.photos/id/525/640/480', NULL, NULL),
(255, 51, 'https://picsum.photos/id/681/640/480', NULL, NULL),
(256, 52, 'https://picsum.photos/id/239/640/480', NULL, NULL),
(257, 52, 'https://picsum.photos/id/838/640/480', NULL, NULL),
(258, 52, 'https://picsum.photos/id/20/640/480', NULL, NULL),
(259, 52, 'https://picsum.photos/id/416/640/480', NULL, NULL),
(260, 52, 'https://picsum.photos/id/438/640/480', NULL, NULL),
(261, 53, 'https://picsum.photos/id/896/640/480', NULL, NULL),
(262, 53, 'https://picsum.photos/id/629/640/480', NULL, NULL),
(263, 53, 'https://picsum.photos/id/855/640/480', NULL, NULL),
(264, 53, 'https://picsum.photos/id/835/640/480', NULL, NULL),
(265, 53, 'https://picsum.photos/id/183/640/480', NULL, NULL),
(266, 54, 'https://picsum.photos/id/29/640/480', NULL, NULL),
(267, 54, 'https://picsum.photos/id/391/640/480', NULL, NULL),
(268, 54, 'https://picsum.photos/id/958/640/480', NULL, NULL),
(269, 54, 'https://picsum.photos/id/515/640/480', NULL, NULL),
(270, 54, 'https://picsum.photos/id/663/640/480', NULL, NULL),
(271, 55, 'https://picsum.photos/id/266/640/480', NULL, NULL),
(272, 55, 'https://picsum.photos/id/367/640/480', NULL, NULL),
(273, 55, 'https://picsum.photos/id/951/640/480', NULL, NULL),
(274, 55, 'https://picsum.photos/id/530/640/480', NULL, NULL),
(275, 55, 'https://picsum.photos/id/885/640/480', NULL, NULL),
(276, 56, 'https://picsum.photos/id/289/640/480', NULL, NULL),
(277, 56, 'https://picsum.photos/id/726/640/480', NULL, NULL),
(278, 56, 'https://picsum.photos/id/152/640/480', NULL, NULL),
(279, 56, 'https://picsum.photos/id/851/640/480', NULL, NULL),
(280, 56, 'https://picsum.photos/id/17/640/480', NULL, NULL),
(281, 57, 'https://picsum.photos/id/264/640/480', NULL, NULL),
(282, 57, 'https://picsum.photos/id/200/640/480', NULL, NULL),
(283, 57, 'https://picsum.photos/id/694/640/480', NULL, NULL),
(284, 57, 'https://picsum.photos/id/773/640/480', NULL, NULL),
(285, 57, 'https://picsum.photos/id/534/640/480', NULL, NULL),
(286, 58, 'https://picsum.photos/id/161/640/480', NULL, NULL),
(287, 58, 'https://picsum.photos/id/74/640/480', NULL, NULL),
(288, 58, 'https://picsum.photos/id/870/640/480', NULL, NULL),
(289, 58, 'https://picsum.photos/id/433/640/480', NULL, NULL),
(290, 58, 'https://picsum.photos/id/399/640/480', NULL, NULL),
(291, 59, 'https://picsum.photos/id/33/640/480', NULL, NULL),
(292, 59, 'https://picsum.photos/id/214/640/480', NULL, NULL),
(293, 59, 'https://picsum.photos/id/876/640/480', NULL, NULL),
(294, 59, 'https://picsum.photos/id/743/640/480', NULL, NULL),
(295, 59, 'https://picsum.photos/id/807/640/480', NULL, NULL),
(296, 60, 'https://picsum.photos/id/123/640/480', NULL, NULL),
(297, 60, 'https://picsum.photos/id/249/640/480', NULL, NULL),
(298, 60, 'https://picsum.photos/id/102/640/480', NULL, NULL),
(299, 60, 'https://picsum.photos/id/945/640/480', NULL, NULL),
(300, 60, 'https://picsum.photos/id/916/640/480', NULL, NULL),
(301, 61, 'https://picsum.photos/id/671/640/480', NULL, NULL),
(302, 61, 'https://picsum.photos/id/185/640/480', NULL, NULL),
(303, 61, 'https://picsum.photos/id/171/640/480', NULL, NULL),
(304, 61, 'https://picsum.photos/id/375/640/480', NULL, NULL),
(305, 61, 'https://picsum.photos/id/93/640/480', NULL, NULL),
(306, 62, 'https://picsum.photos/id/159/640/480', NULL, NULL),
(307, 62, 'https://picsum.photos/id/721/640/480', NULL, NULL),
(308, 62, 'https://picsum.photos/id/262/640/480', NULL, NULL),
(309, 62, 'https://picsum.photos/id/217/640/480', NULL, NULL),
(310, 62, 'https://picsum.photos/id/317/640/480', NULL, NULL),
(311, 63, 'https://picsum.photos/id/746/640/480', NULL, NULL),
(312, 63, 'https://picsum.photos/id/632/640/480', NULL, NULL),
(313, 63, 'https://picsum.photos/id/15/640/480', NULL, NULL),
(314, 63, 'https://picsum.photos/id/815/640/480', NULL, NULL),
(315, 63, 'https://picsum.photos/id/831/640/480', NULL, NULL),
(316, 64, 'https://picsum.photos/id/846/640/480', NULL, NULL),
(317, 64, 'https://picsum.photos/id/506/640/480', NULL, NULL),
(318, 64, 'https://picsum.photos/id/520/640/480', NULL, NULL),
(319, 64, 'https://picsum.photos/id/912/640/480', NULL, NULL),
(320, 64, 'https://picsum.photos/id/268/640/480', NULL, NULL),
(321, 65, 'https://picsum.photos/id/364/640/480', NULL, NULL),
(322, 65, 'https://picsum.photos/id/261/640/480', NULL, NULL),
(323, 65, 'https://picsum.photos/id/326/640/480', NULL, NULL),
(324, 65, 'https://picsum.photos/id/839/640/480', NULL, NULL),
(325, 65, 'https://picsum.photos/id/559/640/480', NULL, NULL),
(326, 66, 'https://picsum.photos/id/305/640/480', NULL, NULL),
(327, 66, 'https://picsum.photos/id/849/640/480', NULL, NULL),
(328, 66, 'https://picsum.photos/id/610/640/480', NULL, NULL),
(329, 66, 'https://picsum.photos/id/913/640/480', NULL, NULL),
(330, 66, 'https://picsum.photos/id/477/640/480', NULL, NULL),
(331, 67, 'https://picsum.photos/id/717/640/480', NULL, NULL),
(332, 67, 'https://picsum.photos/id/258/640/480', NULL, NULL),
(333, 67, 'https://picsum.photos/id/42/640/480', NULL, NULL),
(334, 67, 'https://picsum.photos/id/615/640/480', NULL, NULL),
(335, 67, 'https://picsum.photos/id/310/640/480', NULL, NULL),
(336, 68, 'https://picsum.photos/id/70/640/480', NULL, NULL),
(337, 68, 'https://picsum.photos/id/585/640/480', NULL, NULL),
(338, 68, 'https://picsum.photos/id/994/640/480', NULL, NULL),
(339, 68, 'https://picsum.photos/id/701/640/480', NULL, NULL),
(340, 68, 'https://picsum.photos/id/790/640/480', NULL, NULL),
(341, 69, 'https://picsum.photos/id/481/640/480', NULL, NULL),
(342, 69, 'https://picsum.photos/id/608/640/480', NULL, NULL),
(343, 69, 'https://picsum.photos/id/21/640/480', NULL, NULL),
(344, 69, 'https://picsum.photos/id/195/640/480', NULL, NULL),
(345, 69, 'https://picsum.photos/id/163/640/480', NULL, NULL),
(346, 70, 'https://picsum.photos/id/302/640/480', NULL, NULL),
(347, 70, 'https://picsum.photos/id/519/640/480', NULL, NULL),
(348, 70, 'https://picsum.photos/id/41/640/480', NULL, NULL),
(349, 70, 'https://picsum.photos/id/916/640/480', NULL, NULL),
(350, 70, 'https://picsum.photos/id/916/640/480', NULL, NULL),
(351, 71, 'https://picsum.photos/id/612/640/480', NULL, NULL),
(352, 71, 'https://picsum.photos/id/617/640/480', NULL, NULL),
(353, 71, 'https://picsum.photos/id/72/640/480', NULL, NULL),
(354, 71, 'https://picsum.photos/id/999/640/480', NULL, NULL),
(355, 71, 'https://picsum.photos/id/45/640/480', NULL, NULL),
(356, 72, 'https://picsum.photos/id/812/640/480', NULL, NULL),
(357, 72, 'https://picsum.photos/id/226/640/480', NULL, NULL),
(358, 72, 'https://picsum.photos/id/723/640/480', NULL, NULL),
(359, 72, 'https://picsum.photos/id/625/640/480', NULL, NULL),
(360, 72, 'https://picsum.photos/id/55/640/480', NULL, NULL),
(361, 73, 'https://picsum.photos/id/757/640/480', NULL, NULL),
(362, 73, 'https://picsum.photos/id/429/640/480', NULL, NULL),
(363, 73, 'https://picsum.photos/id/546/640/480', NULL, NULL),
(364, 73, 'https://picsum.photos/id/528/640/480', NULL, NULL),
(365, 73, 'https://picsum.photos/id/345/640/480', NULL, NULL),
(366, 74, 'https://picsum.photos/id/950/640/480', NULL, NULL),
(367, 74, 'https://picsum.photos/id/280/640/480', NULL, NULL),
(368, 74, 'https://picsum.photos/id/491/640/480', NULL, NULL),
(369, 74, 'https://picsum.photos/id/156/640/480', NULL, NULL),
(370, 74, 'https://picsum.photos/id/553/640/480', NULL, NULL),
(371, 75, 'https://picsum.photos/id/621/640/480', NULL, NULL),
(372, 75, 'https://picsum.photos/id/137/640/480', NULL, NULL),
(373, 75, 'https://picsum.photos/id/771/640/480', NULL, NULL),
(374, 75, 'https://picsum.photos/id/364/640/480', NULL, NULL),
(375, 75, 'https://picsum.photos/id/690/640/480', NULL, NULL),
(376, 76, 'https://picsum.photos/id/870/640/480', NULL, NULL),
(377, 76, 'https://picsum.photos/id/119/640/480', NULL, NULL),
(378, 76, 'https://picsum.photos/id/554/640/480', NULL, NULL),
(379, 76, 'https://picsum.photos/id/239/640/480', NULL, NULL),
(380, 76, 'https://picsum.photos/id/734/640/480', NULL, NULL),
(381, 77, 'https://picsum.photos/id/535/640/480', NULL, NULL),
(382, 77, 'https://picsum.photos/id/879/640/480', NULL, NULL),
(383, 77, 'https://picsum.photos/id/774/640/480', NULL, NULL),
(384, 77, 'https://picsum.photos/id/677/640/480', NULL, NULL),
(385, 77, 'https://picsum.photos/id/727/640/480', NULL, NULL),
(386, 78, 'https://picsum.photos/id/665/640/480', NULL, NULL),
(387, 78, 'https://picsum.photos/id/280/640/480', NULL, NULL),
(388, 78, 'https://picsum.photos/id/30/640/480', NULL, NULL),
(389, 78, 'https://picsum.photos/id/33/640/480', NULL, NULL),
(390, 78, 'https://picsum.photos/id/215/640/480', NULL, NULL),
(391, 79, 'https://picsum.photos/id/398/640/480', NULL, NULL),
(392, 79, 'https://picsum.photos/id/969/640/480', NULL, NULL),
(393, 79, 'https://picsum.photos/id/224/640/480', NULL, NULL),
(394, 79, 'https://picsum.photos/id/838/640/480', NULL, NULL),
(395, 79, 'https://picsum.photos/id/552/640/480', NULL, NULL),
(396, 80, 'https://picsum.photos/id/34/640/480', NULL, NULL),
(397, 80, 'https://picsum.photos/id/611/640/480', NULL, NULL),
(398, 80, 'https://picsum.photos/id/186/640/480', NULL, NULL),
(399, 80, 'https://picsum.photos/id/424/640/480', NULL, NULL),
(400, 80, 'https://picsum.photos/id/788/640/480', NULL, NULL),
(401, 81, 'https://picsum.photos/id/465/640/480', NULL, NULL),
(402, 81, 'https://picsum.photos/id/327/640/480', NULL, NULL),
(403, 81, 'https://picsum.photos/id/454/640/480', NULL, NULL),
(404, 81, 'https://picsum.photos/id/816/640/480', NULL, NULL),
(405, 81, 'https://picsum.photos/id/198/640/480', NULL, NULL),
(406, 82, 'https://picsum.photos/id/358/640/480', NULL, NULL),
(407, 82, 'https://picsum.photos/id/272/640/480', NULL, NULL),
(408, 82, 'https://picsum.photos/id/962/640/480', NULL, NULL),
(409, 82, 'https://picsum.photos/id/534/640/480', NULL, NULL),
(410, 82, 'https://picsum.photos/id/325/640/480', NULL, NULL),
(411, 83, 'https://picsum.photos/id/911/640/480', NULL, NULL),
(412, 83, 'https://picsum.photos/id/503/640/480', NULL, NULL),
(413, 83, 'https://picsum.photos/id/399/640/480', NULL, NULL),
(414, 83, 'https://picsum.photos/id/238/640/480', NULL, NULL),
(415, 83, 'https://picsum.photos/id/572/640/480', NULL, NULL),
(416, 84, 'https://picsum.photos/id/842/640/480', NULL, NULL),
(417, 84, 'https://picsum.photos/id/950/640/480', NULL, NULL),
(418, 84, 'https://picsum.photos/id/741/640/480', NULL, NULL),
(419, 84, 'https://picsum.photos/id/207/640/480', NULL, NULL),
(420, 84, 'https://picsum.photos/id/346/640/480', NULL, NULL),
(421, 85, 'https://picsum.photos/id/298/640/480', NULL, NULL),
(422, 85, 'https://picsum.photos/id/125/640/480', NULL, NULL),
(423, 85, 'https://picsum.photos/id/30/640/480', NULL, NULL),
(424, 85, 'https://picsum.photos/id/332/640/480', NULL, NULL),
(425, 85, 'https://picsum.photos/id/888/640/480', NULL, NULL),
(426, 86, 'https://picsum.photos/id/543/640/480', NULL, NULL),
(427, 86, 'https://picsum.photos/id/112/640/480', NULL, NULL),
(428, 86, 'https://picsum.photos/id/517/640/480', NULL, NULL),
(429, 86, 'https://picsum.photos/id/530/640/480', NULL, NULL),
(430, 86, 'https://picsum.photos/id/244/640/480', NULL, NULL),
(431, 87, 'https://picsum.photos/id/46/640/480', NULL, NULL),
(432, 87, 'https://picsum.photos/id/103/640/480', NULL, NULL),
(433, 87, 'https://picsum.photos/id/372/640/480', NULL, NULL),
(434, 87, 'https://picsum.photos/id/339/640/480', NULL, NULL),
(435, 87, 'https://picsum.photos/id/285/640/480', NULL, NULL),
(436, 88, 'https://picsum.photos/id/868/640/480', NULL, NULL),
(437, 88, 'https://picsum.photos/id/146/640/480', NULL, NULL),
(438, 88, 'https://picsum.photos/id/897/640/480', NULL, NULL),
(439, 88, 'https://picsum.photos/id/215/640/480', NULL, NULL),
(440, 88, 'https://picsum.photos/id/766/640/480', NULL, NULL),
(441, 89, 'https://picsum.photos/id/833/640/480', NULL, NULL),
(442, 89, 'https://picsum.photos/id/718/640/480', NULL, NULL),
(443, 89, 'https://picsum.photos/id/290/640/480', NULL, NULL),
(444, 89, 'https://picsum.photos/id/573/640/480', NULL, NULL),
(445, 89, 'https://picsum.photos/id/87/640/480', NULL, NULL),
(446, 90, 'https://picsum.photos/id/79/640/480', NULL, NULL),
(447, 90, 'https://picsum.photos/id/846/640/480', NULL, NULL),
(448, 90, 'https://picsum.photos/id/16/640/480', NULL, NULL),
(449, 90, 'https://picsum.photos/id/214/640/480', NULL, NULL),
(450, 90, 'https://picsum.photos/id/589/640/480', NULL, NULL),
(451, 91, 'https://picsum.photos/id/894/640/480', NULL, NULL),
(452, 91, 'https://picsum.photos/id/794/640/480', NULL, NULL),
(453, 91, 'https://picsum.photos/id/458/640/480', NULL, NULL),
(454, 91, 'https://picsum.photos/id/968/640/480', NULL, NULL),
(455, 91, 'https://picsum.photos/id/449/640/480', NULL, NULL),
(456, 92, 'https://picsum.photos/id/100/640/480', NULL, NULL),
(457, 92, 'https://picsum.photos/id/586/640/480', NULL, NULL),
(458, 92, 'https://picsum.photos/id/31/640/480', NULL, NULL),
(459, 92, 'https://picsum.photos/id/582/640/480', NULL, NULL),
(460, 92, 'https://picsum.photos/id/893/640/480', NULL, NULL),
(461, 93, 'https://picsum.photos/id/881/640/480', NULL, NULL),
(462, 93, 'https://picsum.photos/id/98/640/480', NULL, NULL),
(463, 93, 'https://picsum.photos/id/427/640/480', NULL, NULL),
(464, 93, 'https://picsum.photos/id/921/640/480', NULL, NULL),
(465, 93, 'https://picsum.photos/id/264/640/480', NULL, NULL),
(466, 94, 'https://picsum.photos/id/669/640/480', NULL, NULL),
(467, 94, 'https://picsum.photos/id/18/640/480', NULL, NULL),
(468, 94, 'https://picsum.photos/id/846/640/480', NULL, NULL),
(469, 94, 'https://picsum.photos/id/693/640/480', NULL, NULL),
(470, 94, 'https://picsum.photos/id/21/640/480', NULL, NULL),
(471, 95, 'https://picsum.photos/id/363/640/480', NULL, NULL),
(472, 95, 'https://picsum.photos/id/299/640/480', NULL, NULL),
(473, 95, 'https://picsum.photos/id/483/640/480', NULL, NULL),
(474, 95, 'https://picsum.photos/id/319/640/480', NULL, NULL),
(475, 95, 'https://picsum.photos/id/773/640/480', NULL, NULL),
(476, 96, 'https://picsum.photos/id/577/640/480', NULL, NULL),
(477, 96, 'https://picsum.photos/id/66/640/480', NULL, NULL),
(478, 96, 'https://picsum.photos/id/556/640/480', NULL, NULL),
(479, 96, 'https://picsum.photos/id/323/640/480', NULL, NULL),
(480, 96, 'https://picsum.photos/id/292/640/480', NULL, NULL),
(481, 97, 'https://picsum.photos/id/911/640/480', NULL, NULL),
(482, 97, 'https://picsum.photos/id/999/640/480', NULL, NULL),
(483, 97, 'https://picsum.photos/id/758/640/480', NULL, NULL),
(484, 97, 'https://picsum.photos/id/226/640/480', NULL, NULL),
(485, 97, 'https://picsum.photos/id/394/640/480', NULL, NULL),
(486, 98, 'https://picsum.photos/id/697/640/480', NULL, NULL),
(487, 98, 'https://picsum.photos/id/796/640/480', NULL, NULL),
(488, 98, 'https://picsum.photos/id/930/640/480', NULL, NULL),
(489, 98, 'https://picsum.photos/id/818/640/480', NULL, NULL),
(490, 98, 'https://picsum.photos/id/834/640/480', NULL, NULL),
(491, 99, 'https://picsum.photos/id/356/640/480', NULL, NULL),
(492, 99, 'https://picsum.photos/id/800/640/480', NULL, NULL),
(493, 99, 'https://picsum.photos/id/151/640/480', NULL, NULL),
(494, 99, 'https://picsum.photos/id/150/640/480', NULL, NULL),
(495, 99, 'https://picsum.photos/id/316/640/480', NULL, NULL),
(496, 100, 'https://picsum.photos/id/404/640/480', NULL, NULL),
(497, 100, 'https://picsum.photos/id/977/640/480', NULL, NULL),
(498, 100, 'https://picsum.photos/id/664/640/480', NULL, NULL),
(499, 100, 'https://picsum.photos/id/762/640/480', NULL, NULL),
(500, 100, 'https://picsum.photos/id/698/640/480', NULL, NULL),
(501, 101, 'uploads/0REgRe5oLimIBamGidT4ehiZF0ASG2tQipqEx8wH.jpg', '2023-07-31 00:36:55', '2023-07-31 00:36:55'),
(502, 102, 'uploads/dlEFYNqnW7oDjccjGGFXan04FwMDr6RNEPNdIXgc.jpg', '2023-07-31 00:39:35', '2023-07-31 00:39:35'),
(503, 102, 'uploads/FPLbrif5WTuWAuMXEOrdME6xtb3juZkwDdbdNTdV.jpg', '2023-07-31 00:39:36', '2023-07-31 00:39:36'),
(504, 102, 'uploads/XoKvzS9x6sYKPDpEdgtToJ14Jdn5ASgcuLAxsJS1.jpg', '2023-07-31 00:39:36', '2023-07-31 00:39:36'),
(505, 102, 'uploads/pC6PYQPeg9wafQaihKRjL94BScjPcpPl4Z63ADbb.jpg', '2023-07-31 00:39:36', '2023-07-31 00:39:36'),
(506, 102, 'uploads/6sNTXkXLWtXy837MYiIUuPkT4FIkV13KSqn6Q8gk.jpg', '2023-07-31 00:39:37', '2023-07-31 00:39:37'),
(507, 102, 'uploads/MGGYhQoR5him4i7llCyJS3wqyLodTuwzBRNS22lX.jpg', '2023-07-31 00:39:37', '2023-07-31 00:39:37'),
(508, 103, 'uploads/WbAdpPuEFHtK2guWwsn8G2NDOAdJRNpTbrpEHMlK.jpg', '2023-08-05 00:51:06', '2023-08-05 00:51:06'),
(509, 103, 'uploads/ibUZsidONTLeu7Nh8pprgZrJicYiCsVrIRZRy6No.jpg', '2023-08-05 00:51:06', '2023-08-05 00:51:06'),
(510, 104, 'uploads/QIyI0XSapf7VLVemd1HQYNaYeJtfD3mFUQbc1plI.png', '2023-08-05 23:22:34', '2023-08-05 23:22:34'),
(511, 104, 'uploads/etPafi6lVX23sPiHtkDzKX3hxkDyoiquevDhu6ll.jpg', '2023-08-05 23:22:35', '2023-08-05 23:22:35'),
(512, 104, 'uploads/Qqn3gclBStfOXZ9MHEZs2bt1ZixXpWNSS6x7Wq44.jpg', '2023-08-05 23:22:35', '2023-08-05 23:22:35'),
(513, 104, 'uploads/b8m667lJMFTQiLGGmP8VALNo6JbEabx5YsAyFZy0.jpg', '2023-08-05 23:22:35', '2023-08-05 23:22:35'),
(514, 104, 'uploads/oIULAdeMf9cace2AfLWBo0kNVpyv8beUn0BwbsUJ.jpg', '2023-08-05 23:22:35', '2023-08-05 23:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(22, '2014_10_12_000000_create_users_table', 1),
(23, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2023_07_20_053918_create_categories_table', 1),
(27, '2023_07_24_034342_create_subcategories_table', 1),
(28, '2023_07_24_034343_create_products_table', 1),
(29, '2023_07_24_034407_create_images_table', 1),
(30, '2023_07_24_035958_create_profiles_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `subcategory_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `hot` tinyint(4) NOT NULL DEFAULT 0,
  `new` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `name`, `sku`, `details`, `price`, `quantity`, `status`, `hot`, `new`, `created_at`, `updated_at`) VALUES
(1, 5, 4, 'provident', '202331quaerat', 'At tempora non eum perferendis labore et aut quidem. Pariatur tenetur non maiores consequatur quia et ut. Ut sed voluptatibus quidem consequuntur et doloribus.', 8.00, 6, 1, 0, 1, NULL, NULL),
(2, 4, 2, 'sequi', '202332et', 'Et veniam nobis quia cum quod officia. Nobis neque accusamus sed repudiandae earum excepturi quis. Autem vitae odio consequatur quasi provident ad. Magnam aut nostrum vel vel quo possimus corrupti.', 6.00, 2, 1, 0, 1, NULL, NULL),
(3, 7, 11, 'corporis', '202332aut', 'Et atque cum sit veritatis ipsam. Minus perspiciatis quia numquam voluptatem quibusdam aliquid dicta. Fuga ut consequuntur minima earum consectetur.', 1.00, 5, 1, 0, 1, NULL, NULL),
(4, 4, 3, 'et', '202332ut', 'Est inventore quae esse tempore qui eum quas. Ex at magni rerum qui. Sunt aut aut cupiditate et.', 9.00, 5, 1, 0, 1, NULL, NULL),
(5, 1, 9, 'molestiae', '202332cupiditate', 'Et saepe et asperiores dolore voluptatem. Sunt minus soluta dolores sint et et. Et vero assumenda voluptatem nemo ea. Quasi sit sunt consequatur quisquam ad modi eaque.', 3.00, 1, 1, 0, 1, NULL, NULL),
(6, 4, 19, 'totam', '202332quia', 'Non nam repudiandae rerum architecto et. Consequatur rerum suscipit sapiente ut rem similique quidem. Et eos quia laboriosam voluptas officia maiores nulla. Et ut tenetur voluptate ut necessitatibus.', 3.00, 1, 1, 0, 1, NULL, NULL),
(7, 6, 16, 'error', '202332explicabo', 'Voluptatem et deleniti sed ut sunt ut suscipit laborum. Et ducimus est accusantium modi necessitatibus. Natus omnis rem similique perferendis minus. Blanditiis consequatur veniam eos facere.', 0.00, 4, 1, 0, 1, NULL, NULL),
(8, 7, 24, 'omnis', '202332pariatur', 'Quos deserunt quia et alias vel. Illum consectetur fuga facere dolor eum illo laboriosam. Quia ea et aliquid rerum dignissimos rerum nam.', 9.00, 7, 1, 0, 1, NULL, NULL),
(9, 8, 12, 'et', '202332laboriosam', 'Ut aut quaerat qui aut amet. Perspiciatis rerum repellendus in perferendis adipisci. Dolores et illo quam ab magnam autem. Consequuntur et soluta illo.', 7.00, 5, 1, 0, 1, NULL, NULL),
(10, 2, 21, 'ut', '202332in', 'Sint labore laborum perspiciatis et ad molestias veritatis in. Id harum dolorem qui numquam nulla. A unde quaerat ipsam iure hic assumenda.', 0.00, 4, 1, 0, 1, NULL, NULL),
(11, 1, 14, 'sed', '202332qui', 'Itaque temporibus quasi dolore nihil sequi voluptates debitis. Dignissimos excepturi suscipit ex. Quod dolore quia sed sit ex qui.', 4.00, 9, 1, 0, 1, NULL, NULL),
(12, 7, 23, 'nihil', '202332impedit', 'Ratione rerum odit laboriosam expedita. Neque saepe tempora sit magnam impedit beatae voluptates. Consequatur a ut in dolor qui.', 8.00, 7, 1, 0, 1, NULL, NULL),
(13, 2, 10, 'dolor', '202332non', 'Ipsam praesentium vel possimus quo. Eos dolorem nisi eligendi eum incidunt atque est. Totam quidem fuga dolore. Occaecati fugit aliquam possimus qui eum esse.', 6.00, 1, 1, 0, 1, NULL, NULL),
(14, 4, 6, 'officiis', '202332numquam', 'Aliquam et aut animi perspiciatis. Autem ea numquam illum et quasi quia quisquam ex. Libero voluptatem voluptatum minus enim.', 5.00, 1, 1, 0, 1, NULL, NULL),
(15, 7, 19, 'voluptas', '202332blanditiis', 'Delectus voluptates eum praesentium ipsa. Quos deleniti accusantium iusto beatae non nam dolorem. Sint esse non perferendis aperiam.', 1.00, 4, 1, 0, 1, NULL, NULL),
(16, 3, 17, 'maiores', '202332saepe', 'Ratione ullam ut quam ea facere veritatis. Aut consequatur pariatur quisquam. Omnis rerum quo laboriosam commodi.', 9.00, 3, 1, 0, 1, NULL, NULL),
(17, 6, 25, 'iure', '202332ab', 'Laboriosam ea aut voluptates asperiores quaerat occaecati. Eum iusto sapiente rerum voluptatibus aperiam aut. Maiores laudantium magni ullam aut beatae enim. Est doloribus assumenda voluptatem.', 2.00, 0, 1, 0, 1, NULL, NULL),
(18, 4, 3, 'qui', '202332temporibus', 'Rem voluptatum odio fugiat et tempore magni ea. Quasi fugit ut deserunt. Eaque qui architecto autem ut officiis soluta.', 4.00, 5, 1, 0, 1, NULL, NULL),
(19, 4, 3, 'sed', '202332rem', 'Placeat qui consequatur culpa rerum consequuntur. Adipisci qui dolore eaque veniam.', 3.00, 4, 1, 0, 1, NULL, NULL),
(20, 6, 1, 'officiis', '202332nemo', 'Consequuntur porro est sunt quo voluptas omnis. Voluptas libero quis non non illo iure. Fuga repellendus magnam ad et.', 8.00, 3, 1, 0, 1, NULL, NULL),
(21, 2, 17, 'corrupti', '202332repellendus', 'Error minima ducimus qui praesentium. Alias beatae repellat sit maiores minima et. Quia velit est eius omnis. Debitis omnis aut ullam consequatur dolorem. Quo et aut delectus vitae est sed.', 9.00, 4, 1, 0, 1, NULL, NULL),
(22, 2, 20, 'omnis', '202332incidunt', 'Quasi ut inventore quibusdam quidem est vel. Debitis dolorem quidem dolorum dicta inventore mollitia. Qui ex unde nostrum eius quas.', 0.00, 1, 1, 0, 1, NULL, NULL),
(23, 4, 8, 'ut', '202332distinctio', 'Nobis dolores consequatur atque atque. Laboriosam laboriosam possimus rerum nemo facere eum ipsam accusantium. Assumenda minus nobis et voluptas voluptatum ipsam quia animi.', 3.00, 5, 1, 0, 1, NULL, NULL),
(24, 4, 8, 'est', '202333exercitationem', 'Quia dolorum illum odio enim saepe. Aut odio illum iusto. Laborum sed cupiditate qui voluptatem. Aperiam eligendi vel omnis odio voluptate ut.', 4.00, 7, 1, 0, 1, NULL, NULL),
(25, 6, 4, 'ut', '202333expedita', 'Aut fuga illum facere quisquam. Molestias culpa reprehenderit aut voluptas. Id ut earum et eos aliquam eum. Sit aperiam delectus minima id.', 5.00, 9, 1, 0, 1, NULL, NULL),
(26, 6, 3, 'dolores', '202333occaecati', 'Sed enim placeat voluptatem accusamus minima eum quia. Rerum ipsam earum porro tenetur labore et et. Maxime dolores est itaque magni corporis ad dolorem.', 4.00, 7, 1, 0, 1, NULL, NULL),
(27, 1, 25, 'voluptate', '202333fugiat', 'Eos tempora temporibus eos cumque nihil repudiandae cumque est. Omnis nisi neque reiciendis id. Voluptatem quis eveniet voluptatum voluptatem sunt ut non. Similique ad qui qui.', 8.00, 7, 1, 0, 1, NULL, NULL),
(28, 6, 11, 'ut', '202333est', 'Illum est necessitatibus quis et perspiciatis quae quo. Perferendis earum debitis quas labore.', 7.00, 5, 1, 0, 1, NULL, NULL),
(29, 5, 21, 'eveniet', '202333unde', 'Reiciendis excepturi provident ut voluptate enim odit. Dicta qui et molestiae quos sapiente. Eos perferendis architecto corrupti facilis dolorem similique.', 9.00, 9, 1, 0, 1, NULL, NULL),
(30, 3, 6, 'voluptatem', '202333sint', 'Totam aut et laborum animi totam. Vel ut dolores minus dolor aspernatur et perspiciatis. Nihil et accusantium occaecati. Ut non ut sed a.', 2.00, 6, 1, 0, 1, NULL, NULL),
(31, 2, 9, 'labore', '202333asperiores', 'Asperiores dolorem et doloribus laudantium voluptatem laborum et. Molestiae quo nam omnis perferendis sed non. Modi eos dolorum ea deserunt mollitia temporibus exercitationem.', 8.00, 3, 1, 0, 1, NULL, NULL),
(32, 7, 14, 'quia', '202333vel', 'Deleniti sint omnis necessitatibus porro enim voluptas. Ea rerum sit sed sint ut. Dolore nihil porro ut est fugiat voluptatem.', 3.00, 9, 1, 0, 1, NULL, NULL),
(33, 8, 3, 'nesciunt', '202333quos', 'Omnis vel aperiam veritatis iure ipsa iure. Quisquam ut consequatur quia qui molestias. Dolor ut quis molestias quam odit quis. Sed quisquam perferendis distinctio labore.', 8.00, 1, 1, 0, 1, NULL, NULL),
(34, 3, 2, 'praesentium', '202333voluptatem', 'Ipsa assumenda accusamus labore illum ad. Maxime assumenda impedit incidunt non accusamus alias. Quaerat soluta quis molestiae reprehenderit provident dignissimos. Alias quo eos hic voluptatem ut.', 4.00, 5, 1, 0, 1, NULL, NULL),
(35, 7, 24, 'sit', '202333consequatur', 'Earum iure ab necessitatibus. Eaque commodi ratione repudiandae natus. Quaerat quos qui qui vel doloremque eveniet. Numquam labore ex itaque tempore. Corporis est qui illum nisi perferendis.', 0.00, 3, 1, 0, 1, NULL, NULL),
(36, 5, 9, 'libero', '202333id', 'Numquam ut rem minima molestiae incidunt cupiditate est. Sint qui aut eos culpa. Nemo illum vel molestiae quasi qui quo aut architecto.', 4.00, 7, 1, 0, 1, NULL, NULL),
(37, 8, 10, 'temporibus', '202333quo', 'Quis dolorem et enim nemo vitae distinctio qui. Velit itaque officia ex ipsa dolore ipsa quisquam. Ut quia doloribus a. Et tempore maiores vel doloremque est fugiat.', 6.00, 6, 1, 0, 1, NULL, NULL),
(38, 8, 7, 'voluptatem', '202333ea', 'Sed suscipit illum qui dolorum quibusdam eos. Corrupti excepturi aut quam. Exercitationem eum error et ducimus. Quos sint occaecati nulla hic.', 4.00, 3, 1, 0, 1, NULL, NULL),
(39, 4, 6, 'impedit', '202333iusto', 'Veniam ea aspernatur nisi labore similique. Soluta ex qui nam tempora laboriosam ut quia. Reprehenderit adipisci cumque id eos. Vel possimus veniam est aut ratione quas est non.', 5.00, 9, 1, 0, 1, NULL, NULL),
(40, 2, 22, 'cum', '202333officia', 'Temporibus dolor vero deserunt culpa sit ea at. Suscipit dolorem autem non. Quas vel possimus consequatur voluptas ipsam eos et.', 4.00, 8, 1, 0, 1, NULL, NULL),
(41, 6, 4, 'ipsam', '202333ratione', 'Architecto et rerum illum qui dolore labore adipisci ab. Iste incidunt et voluptatem non nobis velit beatae. Et suscipit numquam voluptates et doloribus. Eligendi dolorem adipisci quam tempora.', 3.00, 1, 1, 0, 1, NULL, NULL),
(42, 2, 19, 'et', '202333soluta', 'Quibusdam quis in sapiente consequuntur quam harum est. Perferendis ipsa consectetur facilis impedit omnis. Optio fugiat enim nesciunt eum. Eius est at necessitatibus.', 5.00, 8, 1, 0, 1, NULL, NULL),
(43, 2, 6, 'ut', '202333eum', 'Sed rerum beatae tenetur. Nihil dignissimos ut esse. Ratione hic aut at dignissimos perferendis temporibus.', 6.00, 8, 1, 0, 1, NULL, NULL),
(44, 3, 5, 'quaerat', '202333sit', 'At eos sunt pariatur in. Ipsa quod quisquam nostrum ducimus laboriosam. Consequuntur sunt qui voluptatem. Voluptatibus excepturi repudiandae tenetur omnis.', 6.00, 3, 1, 0, 1, NULL, NULL),
(45, 6, 16, 'recusandae', '202333harum', 'Vero illum sunt in et repellendus distinctio eum. Et et repellendus in. Suscipit ea aut reprehenderit provident. Quo culpa illum soluta enim et.', 4.00, 1, 1, 0, 1, NULL, NULL),
(46, 5, 25, 'ratione', '202333quis', 'Aperiam quidem id fuga magnam ut sint quia dolores. Et numquam ipsum reprehenderit. Explicabo aspernatur quod excepturi voluptas earum neque qui.', 9.00, 0, 1, 0, 1, NULL, NULL),
(47, 2, 14, 'corrupti', '202333neque', 'Commodi dolores qui numquam voluptates voluptatibus corrupti blanditiis. Et ut fugiat aut adipisci. Molestiae quia magnam dolor quasi.', 8.00, 6, 1, 0, 1, NULL, NULL),
(48, 7, 13, 'aliquam', '202333mollitia', 'Quisquam qui doloribus asperiores totam minus iste voluptas sequi. Fuga et enim dolores dolorum consectetur quae et. In repellat harum aut dolorem. Ea quia temporibus ipsum minima facere.', 0.00, 0, 1, 0, 1, NULL, NULL),
(49, 2, 13, 'et', '202333maiores', 'Explicabo voluptatum neque consequatur unde pariatur deserunt harum. Qui quaerat enim beatae porro hic ut aut. Quasi voluptas veritatis quam voluptas aliquid.', 2.00, 6, 1, 0, 1, NULL, NULL),
(50, 2, 18, 'assumenda', '202333atque', 'Asperiores ut ullam id quae consectetur est. Nobis expedita nemo reprehenderit odit porro. Mollitia maxime quia vel.', 6.00, 3, 1, 0, 1, NULL, NULL),
(51, 8, 14, 'reprehenderit', '202333veritatis', 'Repudiandae provident architecto ea eum. Quibusdam amet nemo iure inventore corporis iure.', 4.00, 4, 1, 0, 1, NULL, NULL),
(52, 4, 11, 'earum', '202333reprehenderit', 'Eius temporibus assumenda quas soluta. Sunt voluptatem voluptatem tenetur omnis sed beatae aperiam at. Rerum rerum necessitatibus ea sed. Ut aut molestias et facilis vel eligendi.', 7.00, 7, 1, 0, 1, NULL, NULL),
(53, 7, 11, 'beatae', '202333quam', 'Et velit quo et vero itaque est quae sint. Doloribus iure expedita quam qui.', 7.00, 5, 1, 0, 1, NULL, NULL),
(54, 2, 9, 'ut', '202334provident', 'Quam iusto minus optio minus. Suscipit minima et eos vitae. Laborum eum rerum et ipsum. Similique eos provident aliquam incidunt quae dicta est.', 8.00, 3, 1, 0, 1, NULL, NULL),
(55, 5, 12, 'nihil', '202334voluptate', 'Vel minima expedita nulla est. Culpa ut similique et. Eveniet ut eveniet velit ea eos mollitia. Accusantium autem quis officiis labore assumenda.', 9.00, 7, 1, 0, 1, NULL, NULL),
(56, 1, 22, 'atque', '202334similique', 'Ipsam aperiam dolor doloremque est. Est omnis perferendis quam aspernatur et laboriosam. Blanditiis qui recusandae sit. In ipsa ut est sed.', 6.00, 1, 1, 0, 1, NULL, NULL),
(57, 4, 20, 'et', '202334voluptates', 'Consequatur mollitia eaque aut explicabo sunt dolorem saepe. Nisi necessitatibus eveniet deleniti sapiente qui. Qui placeat occaecati consectetur maxime.', 7.00, 3, 1, 0, 1, NULL, NULL),
(58, 4, 2, 'dolores', '202334deleniti', 'Eum natus qui dolorem. Quasi labore totam similique sit molestiae aut non. Magnam aspernatur molestias quo nulla reprehenderit. Animi sit qui amet aliquam aspernatur ut.', 4.00, 9, 1, 0, 1, NULL, NULL),
(59, 4, 5, 'ut', '202334perspiciatis', 'Recusandae perferendis libero officiis rerum. Laudantium corporis sunt veniam qui. Sed sint accusantium autem qui. Quia temporibus est atque rerum.', 2.00, 0, 1, 0, 1, NULL, NULL),
(60, 8, 20, 'deserunt', '202334omnis', 'Aut et laudantium quia ratione quia nisi. Et placeat nam dignissimos qui itaque consequuntur enim. Ullam rerum ratione et vel voluptate blanditiis iusto.', 5.00, 7, 1, 0, 1, NULL, NULL),
(61, 7, 9, 'nisi', '202334laborum', 'Provident alias quia qui minus quam. Corporis temporibus sequi molestiae. Est quis ducimus et magnam.', 2.00, 5, 1, 0, 1, NULL, NULL),
(62, 8, 7, 'eligendi', '202334molestias', 'Quidem voluptas ipsam numquam autem ut quam adipisci libero. Dolor repellat et molestias optio. Voluptas cumque facilis et molestiae.', 2.00, 5, 1, 0, 1, NULL, NULL),
(63, 1, 15, 'vel', '202334facere', 'Pariatur quaerat saepe facere non. Dolor sint perferendis repellendus sit. Est adipisci voluptatum repudiandae labore.', 7.00, 0, 1, 0, 1, NULL, NULL),
(64, 7, 8, 'sed', '202334dolor', 'Molestiae est corporis eius ut. Sed nam ab ut tenetur optio recusandae reprehenderit hic. Voluptatibus quia natus nostrum ducimus quis praesentium aut ducimus. Rerum aut optio sed beatae.', 6.00, 7, 1, 0, 1, NULL, NULL),
(65, 1, 4, 'maxime', '202334adipisci', 'Exercitationem aperiam deserunt pariatur quibusdam est eaque. Vel sed assumenda sint amet aut cum. Est porro necessitatibus veniam et. Omnis aut et consequatur voluptas quo iste officia.', 2.00, 0, 1, 0, 1, NULL, NULL),
(66, 6, 8, 'ducimus', '202334optio', 'Perferendis non velit ratione et. Eum magnam sed non qui sint vel. Cumque voluptate rerum aut nisi ea quas. Incidunt doloribus voluptatem nemo neque. Esse sint tempora odio dignissimos amet.', 7.00, 4, 1, 0, 1, NULL, NULL),
(67, 1, 11, 'temporibus', '202334debitis', 'Consequatur dolor vel esse necessitatibus ut dolorum aliquid. Neque quia reiciendis reprehenderit facilis. Rerum eum est harum quis.', 1.00, 3, 1, 0, 1, NULL, NULL),
(68, 2, 15, 'harum', '202334sunt', 'Repellat voluptas id nulla laborum beatae nulla. Sunt natus et tempore quidem ipsam nobis aut libero.', 5.00, 5, 1, 0, 1, NULL, NULL),
(69, 4, 11, 'odio', '202334dolorum', 'Commodi eos sint assumenda. Et id illo error eligendi qui et voluptatibus. Ratione odio expedita illum voluptatum.', 2.00, 5, 1, 0, 1, NULL, NULL),
(70, 3, 7, 'iusto', '202334rerum', 'Alias et eaque fuga eum necessitatibus consequuntur voluptatibus. Reiciendis in nihil aut recusandae esse natus. Dolor ad voluptates est est. Nesciunt assumenda sunt reprehenderit quod esse quam.', 7.00, 0, 1, 0, 1, NULL, NULL),
(71, 7, 4, 'officiis', '202334eveniet', 'Autem aliquam impedit ratione iste iusto aspernatur quos. Nemo vitae tempora ea id. Corporis rerum atque magni recusandae eum consequatur iure. Sapiente non numquam in nemo.', 9.00, 2, 1, 0, 1, NULL, NULL),
(72, 8, 6, 'a', '202334sapiente', 'Quaerat nihil velit recusandae et laborum. Fuga repellendus aliquid ut voluptas. Dolores quia nostrum dignissimos velit molestias veritatis dolor. Quae sint fuga alias cupiditate magni.', 0.00, 4, 1, 0, 1, NULL, NULL),
(73, 6, 11, 'laudantium', '202334animi', 'Nobis aperiam quo illum voluptas. Earum molestiae aut quam mollitia. Ex optio et ab qui dolor autem. Amet et provident aut. Consequatur nemo recusandae officia corporis.', 7.00, 3, 1, 0, 1, NULL, NULL),
(74, 8, 2, 'ducimus', '202334beatae', 'Animi velit qui saepe enim illo sunt quia aperiam. Omnis rerum culpa adipisci aperiam ipsum cumque et. Voluptatem dolores facere vel dolores quo. Quo voluptatum incidunt voluptas.', 4.00, 1, 1, 0, 1, NULL, NULL),
(75, 7, 13, 'repellendus', '202335sed', 'Quibusdam maiores veritatis sit incidunt occaecati natus. Itaque tenetur quia cupiditate exercitationem facere numquam. Quia et ipsa velit consequatur officia sunt vel commodi.', 2.00, 5, 1, 0, 1, NULL, NULL),
(76, 6, 13, 'ducimus', '202335consequuntur', 'Aperiam architecto rerum laudantium corrupti. Vero molestiae distinctio dicta qui dolor doloribus aut.', 2.00, 6, 1, 0, 1, NULL, NULL),
(77, 8, 13, 'sit', '202335molestiae', 'Eveniet itaque illum ex maxime impedit omnis. Eum consectetur eum nesciunt minima cum illo repellendus provident. Aspernatur autem voluptas nihil libero et et harum recusandae.', 4.00, 5, 1, 0, 1, NULL, NULL),
(78, 6, 7, 'repellendus', '202335earum', 'Eum quo laudantium molestiae repellendus accusantium omnis nesciunt. Recusandae molestias culpa fuga debitis aperiam velit quia. Id ut nihil est sit quas molestias.', 5.00, 9, 1, 0, 1, NULL, NULL),
(79, 2, 14, 'quia', '202335accusantium', 'Architecto accusantium quo sed cupiditate. Eum quis et porro molestiae placeat. Vel voluptate labore quisquam adipisci sint qui aspernatur corporis. Ut nam consequatur nobis.', 9.00, 7, 1, 0, 1, NULL, NULL),
(80, 7, 1, 'consectetur', '202335aspernatur', 'Autem enim blanditiis eos sunt. Sunt qui molestiae illo expedita sunt iure maxime. Accusamus tenetur ab dolor est.', 4.00, 8, 1, 0, 1, NULL, NULL),
(81, 2, 8, 'illum', '202335doloremque', 'Dicta rerum iusto atque sit amet consequuntur. Dolore facilis inventore fugit sit. Magnam eos sint ut reprehenderit. Qui explicabo adipisci quos ea aut.', 0.00, 2, 1, 0, 1, NULL, NULL),
(82, 8, 12, 'nesciunt', '202335inventore', 'Et cumque error ea inventore provident et. Ipsa reiciendis earum enim quia autem ratione. Labore animi maxime incidunt illo aut accusantium repudiandae veniam.', 3.00, 9, 1, 0, 1, NULL, NULL),
(83, 5, 19, 'et', '202335perferendis', 'Soluta sequi harum ut. Molestias quos natus dicta dolor. Nam vero quo ea porro nulla.', 2.00, 5, 1, 0, 1, NULL, NULL),
(84, 1, 15, 'commodi', '202335eos', 'Atque nesciunt voluptatum eius temporibus. Et molestias eum qui dolores amet voluptatem consequatur. Rerum in quisquam dolorem nisi et ipsam.', 7.00, 2, 1, 0, 1, NULL, NULL),
(85, 2, 18, 'dignissimos', '202335quae', 'Earum dicta et veniam enim non quis unde. Eos ab provident facere beatae. Voluptas voluptas maxime magni nostrum velit. Aut qui perspiciatis ut facilis molestiae.', 5.00, 6, 1, 0, 1, NULL, NULL),
(86, 5, 9, 'minima', '202335nihil', 'Quasi et optio atque natus id. Voluptate asperiores magnam maiores in quos quo id. Et sit esse voluptatem consequatur non excepturi. Reiciendis voluptatum voluptatem perspiciatis qui placeat sequi.', 2.00, 6, 1, 0, 1, NULL, NULL),
(87, 1, 7, 'impedit', '202335dignissimos', 'Itaque vitae eius voluptatem. Ratione nam officia non non quis. Facere quas culpa veniam. Iusto dicta doloribus voluptatem deleniti veritatis facilis.', 7.00, 2, 1, 0, 1, NULL, NULL),
(88, 4, 7, 'excepturi', '202335illum', 'Enim recusandae ut odio non voluptatem exercitationem eos assumenda. Sunt eius non exercitationem. Beatae cum quisquam expedita consequuntur recusandae et et dolore. Dolores deserunt et et quod.', 6.00, 4, 1, 0, 1, NULL, NULL),
(89, 7, 11, 'est', '202335nobis', 'Soluta id distinctio dolores laboriosam vel exercitationem. Molestiae unde iste molestiae. Vitae molestias aut tempore. Quo molestiae deserunt beatae reiciendis.', 2.00, 6, 1, 0, 1, NULL, NULL),
(90, 4, 20, 'modi', '202335tempore', 'Et est saepe molestiae. Ab consequatur totam ipsa sed sint eius. Iusto adipisci eum consequuntur aut dolores iste tenetur.', 2.00, 8, 1, 0, 1, NULL, NULL),
(91, 4, 21, 'cupiditate', '202335cum', 'Error voluptas nisi repellendus temporibus. Velit nihil consequatur sunt iure.', 8.00, 9, 1, 0, 1, NULL, NULL),
(92, 8, 6, 'veniam', '202335voluptas', 'Sint illo nemo recusandae consequatur sint deleniti aperiam quisquam. Voluptatibus cumque nostrum quaerat sed est. Voluptatum beatae quia et repudiandae sunt repudiandae enim.', 2.00, 1, 1, 0, 1, NULL, NULL),
(93, 5, 13, 'in', '202335odio', 'Ut quis voluptas quos. Sint voluptatem natus non consequuntur.', 7.00, 8, 1, 0, 1, NULL, NULL),
(94, 6, 17, 'aut', '202335a', 'Maxime incidunt reiciendis itaque ut molestiae molestiae hic. Velit incidunt minima voluptatum illum repellat cumque. Odit quae iusto possimus labore iure sit sint.', 0.00, 6, 1, 0, 1, NULL, NULL),
(95, 8, 23, 'doloremque', '202335ullam', 'Mollitia neque aut iure possimus sint. Autem sunt illo sed omnis. Sunt ea asperiores unde autem omnis aut ipsam.', 2.00, 2, 1, 0, 1, NULL, NULL),
(96, 8, 13, 'voluptatum', '202335labore', 'Consequatur ea consequatur aliquid quod. Ipsam corporis facere veniam. Eos perspiciatis dignissimos ducimus id.', 9.00, 3, 1, 0, 1, NULL, NULL),
(97, 7, 16, 'saepe', '202335laudantium', 'Tenetur et nesciunt cupiditate quo dolor et velit. Et ducimus quas itaque ex tenetur distinctio tempore. Dolore mollitia ipsum adipisci numquam quam quo perferendis.', 1.00, 5, 1, 0, 1, NULL, NULL),
(98, 3, 18, 'iusto', '202335repellat', 'Quidem deleniti numquam aspernatur nemo suscipit blanditiis. Sequi qui odit beatae corrupti. Rerum repellendus similique dolor similique et accusantium.', 4.00, 6, 1, 0, 1, NULL, NULL),
(99, 6, 16, 'tenetur', '202335officiis', 'Id ea provident at autem. Inventore ipsa molestiae nemo iure ut debitis velit natus. Sed dolores adipisci deserunt esse reprehenderit. Repellat minus fugiat dolores ut et quia.', 2.00, 3, 1, 0, 1, NULL, NULL),
(100, 5, 20, 'modi', '202335aliquid', 'Veritatis et ratione iure sapiente. Consequatur dicta dolor sint blanditiis nemo. Velit id molestias sunt et suscipit voluptas. Adipisci necessitatibus iusto odit soluta.', 2.00, 6, 1, 0, 1, NULL, NULL),
(101, 1, 1, 'test name', 'sskkuu123', 'adf adsfads fasdf adsf asdfdf sdj asdg sadfkjhsadf kajsdfh', 666666.00, 66, 1, 1, 1, '2023-07-31 00:36:55', '2023-07-31 00:36:55'),
(102, 1, 1, 'test name car', 'sskkuuccaarr123', 'adf adsfads fasdf adsf asdfdf sdj asdg sadfkjhsadf kajsdfh', 666666.00, 66, 1, 1, 1, '2023-07-31 00:39:35', '2023-07-31 00:39:35'),
(103, 1, 2, 'vovo', 'vovo123', 'sadf sdf sdfsadf sdaf sdaf dfg dfgdfs gdfg dfgfd gdf gdfg df gfg', 777788.00, 100, 1, 1, 1, '2023-08-05 00:51:05', '2023-08-05 00:51:05'),
(104, 3, 10, 'kkkkkkkkkk', 'sdfdsfdsakkkk', 'asdfasdfasdfgdasf kkkkkkkkkkkkkkkk kkkkkkkkkkk', 909090.00, 555, 1, 1, 1, '2023-08-05 23:22:33', '2023-08-05 23:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addres1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addres2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tw` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `th` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `phone`, `father_name`, `mother_name`, `addres1`, `addres2`, `bg`, `fb`, `tw`, `th`, `created_at`, `updated_at`) VALUES
(1, 1, '01911123456', 'admin father', 'admin mother', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-23 22:12:35', '2023-07-23 22:12:35');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Car', '2023-07-23 22:27:31', '2023-08-05 23:03:21'),
(2, 1, 'Bike', '2023-07-23 22:27:31', '2023-07-23 22:27:31'),
(3, 1, 'Truck', '2023-07-23 22:27:31', '2023-07-23 22:27:31'),
(4, 1, 'Van', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(5, 2, 'Land', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(6, 2, 'Flat', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(7, 2, 'House', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(8, 2, 'Rent', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(9, 3, 'TV', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(10, 3, 'Computer', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(11, 3, 'Mobile', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(12, 5, '', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(13, 6, 'Shirt', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(14, 6, 'Pant', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(15, 6, 'Watch', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(16, 6, 'Shoe', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(17, 6, 'Sunglass', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(18, 6, 'Panjabi', '2023-07-23 22:27:32', '2023-07-23 22:27:32'),
(19, 6, 'Jacket', '2023-07-23 22:27:33', '2023-07-23 22:27:33'),
(20, 7, 'Top', '2023-07-23 22:27:33', '2023-07-23 22:27:33'),
(21, 7, 'Pant', '2023-07-23 22:27:33', '2023-07-23 22:27:33'),
(22, 7, 'Watch', '2023-07-23 22:27:33', '2023-07-23 22:27:33'),
(23, 7, 'Shoe', '2023-07-23 22:27:33', '2023-07-23 22:27:33'),
(24, 7, 'Sunglass', '2023-07-23 22:27:33', '2023-07-23 22:27:33'),
(25, 7, 'Sharee', '2023-07-23 22:27:33', '2023-07-23 22:27:33'),
(26, 7, 'Jacket', '2023-07-23 22:27:33', '2023-07-23 22:27:33'),
(27, 3, 'tesla', '2023-08-05 22:45:38', '2023-08-05 22:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$Hqaqz21QmYNicNxwNjYo6.7ZeXdrV9VlYIzRF0yJVf0VtfulzGxXO', 2, NULL, '2023-07-23 22:07:21', '2023-07-23 22:07:21'),
(2, 'admin', 'admin1@gmail.com', NULL, '$2y$10$4uvQk58GJpd1SVqQZTTMn.SWCORmxppFQikrK2Rf6FmLEaWoTNWxS', 1, NULL, '2023-08-04 23:59:19', '2023-08-04 23:59:19'),
(3, 'idb', 'idb@gmail.com', NULL, '$2y$10$24vLVd.n.47EdOiLbvoTku6NEIYc44zAIjXCDmHJrVPynsf.w0/jC', 1, NULL, '2023-08-09 01:06:08', '2023-08-09 01:06:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_subcategory_id_foreign` (`subcategory_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subcategories_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=515;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_subcategory_id_foreign` FOREIGN KEY (`subcategory_id`) REFERENCES `subcategories` (`id`);

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
