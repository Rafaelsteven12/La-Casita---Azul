-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2024 at 02:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `venture`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'admin', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'Sannera, San Antonio II , San Pablo City , Laguna', 'https://maps.app.goo.gl/6YzS8XAzYjwdhNgv5', 9266529796, 254741217182, 'lacasita.bnbproperties@gmail.com', 'https://www.facebook.com/lacasita.bnb', 'https://www.instagram.com/lacasita.bnb?igsh=MW5hMnNydGMzMzl6Ng==', 'https://x.com/stvnrfl', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d123851.63700257998!2d121.25288128097968!3d14.055690419361946!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x33bd439493089723:0x3ee7b713439ab8b4!2sSANNERA San Pablo!5e0!3m2!1sen!2sph!4v1714918735481!5m2!1sen!2sph');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(4, 'IMG_86765.svg', 'Wifi', '\"Stay connected with fast and reliable wifi wherever you go.\"'),
(5, 'IMG_16549.svg', 'Television', 'Explore the latest TV shows and trends for your binge-watching!'),
(6, 'microphone.png', 'Videoke Set', 'Unleash your inner rockstar with this ultimate videoke set today!'),
(7, 'video-camera.png', 'Movie Room', 'Discover the emotional journey in \"Room\" that captivates until the end.'),
(8, 'air-conditioner.png', 'Air Conditioner', '\"Stay cool and comfortable this summer with a reliable air conditioner.\"'),
(9, 'swimming.png', 'Pool', 'Dive into summer fun with friends and make a splash!');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(1, 'bedroom'),
(2, 'bathroom'),
(3, 'kitchen');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `image_data` blob DEFAULT NULL,
  `image_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image_data`, `image_name`) VALUES
(23, '', NULL),
(24, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_images`
--

CREATE TABLE `gallery_images` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image_data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` varchar(200) NOT NULL DEFAULT '0',
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(11, '2pax (movie room &amp;amp;amp;amp;amp;amp;amp; pool not included)', 1599, 800, 1, 2, 0, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp;amp;amp;amp;amp;amp;amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) |', 1, 1),
(12, '2pax (movie room not included)', 2099, 1050, 1, 2, 0, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp;amp;amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room are', 1, 1),
(19, '4 Pax (pool not included)13', 2199, 1100, 1, 4, 0, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp;amp;amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room are', 1, 1),
(20, '4 Pax (pool included)', 2699, 1350, 1, 4, 0, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room area \r\n✔️Fr', 1, 0),
(21, '4 Pax (all facility included)', 3049, 1550, 1, 4, 0, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room area \r\n✔️Fr', 1, 0),
(22, '4 Pax (pool not included)', 2499, 1250, 1, 4, 1, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room area \r\n✔️Fr', 1, 0),
(23, '4 Pax (pool included)', 2999, 1500, 1, 4, 1, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room area \r\n✔️Fr', 1, 0),
(24, '4 Pax (all facilities included)', 3349, 1700, 1, 4, 1, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room area \r\n✔️Fr', 1, 0),
(25, '6 Pax (movie room and pool included)', 3199, 1600, 1, 6, 0, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room area \r\n✔️Fr', 1, 0),
(26, '6 pax (all facility included)', 3549, 1800, 1, 6, 0, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room area \r\n✔️Fr', 1, 0),
(27, '6 Pax (movie room and pool included)', 3499, 1750, 1, 6, 1, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room area \r\n✔️Fr', 1, 0),
(28, '6 Pax (all facilty included)', 3849, 1900, 1, 6, 1, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room area \r\n✔️Fr', 1, 0),
(29, '8 Pax (movie room and pool)', 3799, 1900, 1, 8, 0, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room area \r\n✔️Fr', 1, 0),
(30, '8 Pax (all facility included)', 4049, 2025, 1, 8, 0, '🕑Check In: 2PM \r\n🕛Check Out: 12NN \r\nInclusions: \r\n✔️1 air-conditioned master bedroom with pull out bed &amp; big bed \r\n✔️ Couch with Pull-out Double Size Bed | Living Room\r\n✔️ Split Type Aircon for Living Area (additional charge) \r\n✔️ Electric Fan \r\n✔️1 movie room w 55 inch TV \r\n✔️ PLDT FIBER WIFI \r\n✔️Videoke set (YOUTUBE) | living room area \r\n✔️Fr', 1, 0),
(31, '2 Pax (1399)', 1399, 600, 1, 2, 0, 'wedfewfredfsaf', 1, 1),
(32, '2 pax (movie room and pool not included)', 1599, 800, 1, 2, 0, 'Enjoy po', 1, 1),
(33, '2 pax (pool not included)', 1949, 1000, 1, 2, 0, 'Enjoy po', 1, 1),
(34, '2 pax (air conditioner not included)', 2449, 1250, 1, 2, 0, 'Enjoy po', 1, 0),
(35, '2 pax (all facility included)', 2799, 1400, 1, 2, 0, 'Enjoy po', 1, 0),
(36, '2 pax (movie room and pool not included)', 1899, 950, 1, 2, 1, 'Enjoy po', 1, 0),
(37, '2 pax (pool not included)', 2249, 1150, 1, 2, 1, 'Enjoy po', 1, 0),
(38, '2 pax (air conditioner not included)', 2749, 1400, 1, 2, 1, 'Enjoy po', 1, 0),
(39, '2 pax (all facility included)', 3099, 1050, 1, 2, 1, 'Enjoy po', 1, 0),
(40, '8 pax (movie room and pool)', 4099, 2100, 1, 8, 1, 'Enjoy po', 1, 0),
(41, '8 pax (all facility included)', 4449, 2250, 1, 8, 1, 'Enjoy po', 1, 0),
(42, '8 pax (movie room and pool)', 4399, 2200, 1, 8, 2, 'Enjoy po', 1, 0),
(43, '8 pax (all facility included)', 4749, 2400, 1, 8, 2, 'Enjoy po', 1, 0),
(44, '8 pax (movie room and pool)', 4699, 2350, 1, 8, 3, 'Enjoy po', 1, 0),
(45, '8 pax (all facility included)', 5049, 2550, 1, 8, 3, 'Enjoy po', 1, 0),
(46, '8 pax (movie room and pool)', 4999, 2500, 1, 8, 4, 'Enjoy po', 1, 0),
(47, '8 pax (all facility included)', 5349, 2700, 1, 8, 4, 'Enjoy po', 1, 0),
(48, 'afafwaf', 12, 123, 1, 2, 0, 'asdafa', 1, 1),
(49, '2 pax (movie room and pool not included)', 1599, 800, 1, 2, 0, 'Enjoy po', 1, 0),
(50, '2 pax (pool not included)', 1949, 1000, 1, 2, 0, 'Enjoy poafafsasf', 1, 1),
(51, '4 Pax (pool not included)', 2199, 1100, 1, 4, 0, 'Enjoy po', 1, 0),
(52, '2 pax (pool not included)', 1949, 1000, 1, 2, 0, 'Enjoy po', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(140, 20, 4),
(141, 20, 5),
(142, 20, 6),
(143, 20, 7),
(144, 20, 9),
(145, 21, 4),
(146, 21, 5),
(147, 21, 6),
(148, 21, 7),
(149, 21, 8),
(150, 21, 9),
(151, 22, 4),
(152, 22, 5),
(153, 22, 6),
(154, 22, 7),
(155, 23, 4),
(156, 23, 5),
(157, 23, 6),
(158, 23, 7),
(159, 23, 9),
(160, 24, 4),
(161, 24, 5),
(162, 24, 6),
(163, 24, 7),
(164, 24, 8),
(165, 24, 9),
(166, 25, 4),
(167, 25, 5),
(168, 25, 6),
(169, 25, 7),
(170, 25, 9),
(171, 26, 4),
(172, 26, 5),
(173, 26, 6),
(174, 26, 7),
(175, 26, 8),
(176, 26, 9),
(177, 27, 4),
(178, 27, 5),
(179, 27, 6),
(180, 27, 7),
(181, 27, 9),
(182, 28, 4),
(183, 28, 5),
(184, 28, 6),
(185, 28, 7),
(186, 28, 8),
(187, 28, 9),
(188, 29, 4),
(189, 29, 5),
(190, 29, 6),
(191, 29, 7),
(192, 29, 9),
(193, 30, 4),
(194, 30, 5),
(195, 30, 6),
(196, 30, 7),
(197, 30, 8),
(198, 30, 9),
(235, 34, 4),
(236, 34, 5),
(237, 34, 6),
(238, 34, 7),
(239, 34, 9),
(240, 35, 4),
(241, 35, 5),
(242, 35, 6),
(243, 35, 7),
(244, 35, 8),
(245, 35, 9),
(246, 36, 4),
(247, 36, 5),
(248, 36, 6),
(249, 37, 4),
(250, 37, 5),
(251, 37, 6),
(252, 37, 7),
(253, 38, 4),
(254, 38, 5),
(255, 38, 6),
(256, 38, 7),
(257, 38, 9),
(258, 39, 4),
(259, 39, 5),
(260, 39, 6),
(261, 39, 7),
(262, 39, 8),
(263, 39, 9),
(264, 40, 4),
(265, 40, 5),
(266, 40, 6),
(267, 40, 7),
(268, 40, 9),
(269, 41, 4),
(270, 41, 5),
(271, 41, 6),
(272, 41, 7),
(273, 41, 8),
(274, 41, 9),
(275, 42, 4),
(276, 42, 5),
(277, 42, 6),
(278, 42, 7),
(279, 42, 9),
(280, 43, 4),
(281, 43, 5),
(282, 43, 6),
(283, 43, 7),
(284, 43, 8),
(285, 43, 9),
(286, 44, 4),
(287, 44, 5),
(288, 44, 6),
(289, 44, 7),
(290, 44, 9),
(291, 45, 4),
(292, 45, 5),
(293, 45, 6),
(294, 45, 7),
(295, 45, 8),
(296, 45, 9),
(297, 46, 4),
(298, 46, 5),
(299, 46, 6),
(300, 46, 7),
(301, 46, 9),
(302, 47, 4),
(303, 47, 5),
(304, 47, 6),
(305, 47, 7),
(306, 47, 8),
(307, 47, 9),
(320, 49, 4),
(321, 49, 5),
(322, 49, 6),
(327, 51, 4),
(328, 51, 5),
(329, 51, 6),
(330, 51, 7),
(335, 52, 4),
(336, 52, 5),
(337, 52, 6),
(338, 52, 7);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(91, 20, 1),
(92, 20, 2),
(93, 20, 3),
(94, 21, 1),
(95, 21, 2),
(96, 21, 3),
(97, 22, 1),
(98, 22, 2),
(99, 22, 3),
(100, 23, 1),
(101, 23, 2),
(102, 23, 3),
(103, 24, 1),
(104, 24, 2),
(105, 24, 3),
(106, 25, 1),
(107, 25, 2),
(108, 25, 3),
(109, 26, 1),
(110, 26, 2),
(111, 26, 3),
(112, 27, 1),
(113, 27, 2),
(114, 27, 3),
(115, 28, 1),
(116, 28, 2),
(117, 28, 3),
(118, 29, 1),
(119, 29, 2),
(120, 29, 3),
(121, 30, 1),
(122, 30, 2),
(123, 30, 3),
(163, 34, 1),
(164, 34, 2),
(165, 34, 3),
(166, 35, 1),
(167, 35, 2),
(168, 35, 3),
(169, 36, 1),
(170, 36, 2),
(171, 36, 3),
(172, 37, 1),
(173, 37, 2),
(174, 37, 3),
(175, 38, 1),
(176, 38, 2),
(177, 38, 3),
(178, 39, 1),
(179, 39, 2),
(180, 39, 3),
(181, 40, 1),
(182, 40, 2),
(183, 40, 3),
(184, 41, 1),
(185, 41, 2),
(186, 41, 3),
(187, 42, 1),
(188, 42, 2),
(189, 42, 3),
(190, 43, 1),
(191, 43, 2),
(192, 43, 3),
(193, 44, 1),
(194, 44, 2),
(195, 44, 3),
(196, 45, 1),
(197, 45, 2),
(198, 45, 3),
(199, 46, 1),
(200, 46, 2),
(201, 46, 3),
(202, 47, 1),
(203, 47, 2),
(204, 47, 3),
(215, 49, 1),
(216, 49, 2),
(217, 49, 3),
(221, 51, 1),
(222, 51, 2),
(223, 51, 3),
(227, 52, 1),
(228, 52, 2),
(229, 52, 3);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(25, 20, 'IMG_61266.png', 0),
(26, 21, 'IMG_58873.png', 0),
(27, 22, 'IMG_70729.png', 0),
(28, 23, 'IMG_49447.png', 0),
(29, 24, 'IMG_70398.png', 0),
(30, 25, 'IMG_37624.png', 0),
(31, 26, 'IMG_55618.png', 0),
(32, 27, 'IMG_90095.png', 0),
(33, 28, 'IMG_51146.png', 0),
(34, 29, 'IMG_27079.png', 0),
(35, 30, 'IMG_34093.png', 0),
(38, 34, 'IMG_85665.png', 1),
(39, 35, 'IMG_31623.png', 1),
(40, 36, 'IMG_38796.png', 1),
(41, 37, 'IMG_13644.png', 1),
(42, 38, 'IMG_80918.png', 1),
(43, 39, 'IMG_87919.png', 1),
(44, 41, 'IMG_54752.png', 0),
(45, 42, 'IMG_93620.png', 0),
(46, 43, 'IMG_30127.png', 0),
(47, 44, 'IMG_96441.png', 0),
(48, 45, 'IMG_63111.png', 0),
(49, 46, 'IMG_16413.png', 0),
(50, 47, 'IMG_36606.png', 0),
(51, 34, 'IMG_74471.jpg', 0),
(52, 34, 'IMG_55870.jpg', 0),
(53, 34, 'IMG_82153.jpg', 0),
(62, 20, 'IMG_35592.jpg', 1),
(63, 20, 'IMG_98718.jpg', 0),
(64, 20, 'IMG_55807.jpg', 0),
(65, 20, 'IMG_62817.jpg', 0),
(66, 20, 'IMG_38880.jpg', 0),
(67, 20, 'IMG_71745.jpg', 0),
(68, 20, 'IMG_11950.jpg', 0),
(69, 20, 'IMG_30728.jpg', 0),
(70, 21, 'IMG_11208.jpg', 1),
(71, 21, 'IMG_26006.jpg', 0),
(72, 21, 'IMG_12593.jpg', 0),
(73, 21, 'IMG_19350.jpg', 0),
(74, 21, 'IMG_38250.jpg', 0),
(75, 21, 'IMG_28215.jpg', 0),
(76, 21, 'IMG_81590.jpg', 0),
(77, 21, 'IMG_13152.jpg', 0),
(84, 22, 'IMG_91067.jpg', 1),
(85, 22, 'IMG_72523.jpg', 0),
(86, 23, 'IMG_94036.jpg', 1),
(87, 23, 'IMG_57814.jpg', 0),
(88, 23, 'IMG_32828.jpg', 0),
(89, 23, 'IMG_65121.jpg', 0),
(90, 23, 'IMG_47951.jpg', 0),
(91, 23, 'IMG_20315.jpg', 0),
(92, 23, 'IMG_46019.jpg', 0),
(93, 23, 'IMG_96571.jpg', 0),
(94, 24, 'IMG_18905.jpg', 1),
(95, 24, 'IMG_20972.jpg', 0),
(96, 24, 'IMG_70721.jpg', 0),
(97, 24, 'IMG_17278.jpg', 0),
(98, 24, 'IMG_78574.jpg', 0),
(99, 24, 'IMG_31137.jpg', 0),
(100, 24, 'IMG_55972.jpg', 0),
(101, 24, 'IMG_98872.jpg', 0),
(102, 25, 'IMG_22600.jpg', 0),
(103, 25, 'IMG_46207.jpg', 1),
(104, 25, 'IMG_58623.jpg', 0),
(105, 25, 'IMG_62519.jpg', 0),
(106, 25, 'IMG_47983.jpg', 0),
(107, 25, 'IMG_28938.jpg', 0),
(108, 25, 'IMG_14845.jpg', 0),
(109, 25, 'IMG_67459.jpg', 0),
(110, 26, 'IMG_99844.jpg', 0),
(111, 26, 'IMG_78698.jpg', 1),
(112, 26, 'IMG_55220.jpg', 0),
(113, 26, 'IMG_54805.jpg', 0),
(114, 26, 'IMG_99218.jpg', 0),
(115, 26, 'IMG_79834.jpg', 0),
(116, 26, 'IMG_56399.jpg', 0),
(117, 26, 'IMG_84730.jpg', 0),
(118, 27, 'IMG_71991.jpg', 0),
(119, 27, 'IMG_54378.jpg', 1),
(120, 27, 'IMG_80728.jpg', 0),
(121, 27, 'IMG_16092.jpg', 0),
(122, 27, 'IMG_77832.jpg', 0),
(123, 27, 'IMG_35812.jpg', 0),
(124, 27, 'IMG_48614.jpg', 0),
(125, 27, 'IMG_73373.jpg', 0),
(126, 29, 'IMG_23503.jpg', 0),
(127, 29, 'IMG_99089.jpg', 0),
(128, 29, 'IMG_75732.jpg', 1),
(129, 29, 'IMG_88251.jpg', 0),
(130, 29, 'IMG_47254.jpg', 0),
(131, 29, 'IMG_17137.jpg', 0),
(132, 29, 'IMG_84598.jpg', 0),
(133, 29, 'IMG_33681.jpg', 0),
(134, 30, 'IMG_47544.jpg', 0),
(135, 30, 'IMG_18108.jpg', 0),
(136, 30, 'IMG_77896.jpg', 1),
(137, 30, 'IMG_84607.jpg', 0),
(138, 30, 'IMG_70111.jpg', 0),
(139, 30, 'IMG_33442.jpg', 0),
(140, 30, 'IMG_81798.jpg', 0),
(141, 30, 'IMG_11903.jpg', 0),
(150, 34, 'IMG_25028.jpg', 0),
(151, 34, 'IMG_70518.jpg', 0),
(152, 34, 'IMG_23643.jpg', 0),
(153, 34, 'IMG_61082.jpg', 0),
(154, 34, 'IMG_84740.jpg', 0),
(155, 35, 'IMG_66691.jpg', 0),
(156, 35, 'IMG_13610.jpg', 0),
(157, 35, 'IMG_18528.jpg', 0),
(158, 35, 'IMG_73798.jpg', 0),
(159, 35, 'IMG_84160.jpg', 0),
(160, 35, 'IMG_20675.jpg', 0),
(161, 35, 'IMG_16061.jpg', 0),
(162, 35, 'IMG_61589.jpg', 0),
(163, 36, 'IMG_17475.jpg', 0),
(164, 36, 'IMG_40980.jpg', 0),
(165, 36, 'IMG_46475.jpg', 0),
(166, 36, 'IMG_51929.jpg', 0),
(167, 36, 'IMG_92720.jpg', 0),
(168, 36, 'IMG_17522.jpg', 0),
(169, 36, 'IMG_98295.jpg', 0),
(170, 36, 'IMG_37680.jpg', 0),
(171, 37, 'IMG_17521.jpg', 0),
(172, 37, 'IMG_53846.jpg', 0),
(173, 37, 'IMG_56928.jpg', 0),
(174, 37, 'IMG_37362.jpg', 0),
(175, 37, 'IMG_22785.jpg', 0),
(176, 37, 'IMG_98192.jpg', 0),
(177, 37, 'IMG_40589.jpg', 0),
(178, 37, 'IMG_64651.jpg', 0),
(179, 38, 'IMG_70601.jpg', 0),
(180, 38, 'IMG_60287.jpg', 0),
(181, 38, 'IMG_45340.jpg', 0),
(182, 38, 'IMG_97921.jpg', 0),
(183, 38, 'IMG_85057.jpg', 0),
(184, 38, 'IMG_70833.jpg', 0),
(185, 38, 'IMG_38643.jpg', 0),
(186, 38, 'IMG_83762.jpg', 0),
(187, 39, 'IMG_61418.jpg', 0),
(188, 39, 'IMG_63113.jpg', 0),
(189, 39, 'IMG_14601.jpg', 0),
(190, 39, 'IMG_91751.jpg', 0),
(191, 39, 'IMG_88540.jpg', 0),
(192, 39, 'IMG_80947.jpg', 0),
(193, 39, 'IMG_57304.jpg', 0),
(194, 39, 'IMG_34288.jpg', 0),
(195, 40, 'IMG_48676.jpg', 0),
(196, 40, 'IMG_34084.jpg', 0),
(197, 40, 'IMG_45918.jpg', 0),
(198, 40, 'IMG_80153.jpg', 1),
(199, 40, 'IMG_26021.jpg', 0),
(200, 40, 'IMG_47261.jpg', 0),
(201, 40, 'IMG_30664.jpg', 0),
(202, 40, 'IMG_13939.jpg', 0),
(203, 40, 'IMG_93905.jpg', 0),
(204, 41, 'IMG_52643.jpg', 0),
(205, 41, 'IMG_31239.jpg', 0),
(206, 41, 'IMG_36404.jpg', 1),
(207, 41, 'IMG_89007.jpg', 0),
(208, 41, 'IMG_72101.jpg', 0),
(209, 41, 'IMG_69974.jpg', 0),
(210, 41, 'IMG_27350.jpg', 0),
(211, 41, 'IMG_66057.jpg', 0),
(212, 42, 'IMG_84947.jpg', 0),
(213, 42, 'IMG_32991.jpg', 0),
(214, 42, 'IMG_12329.jpg', 1),
(215, 42, 'IMG_78276.jpg', 0),
(216, 42, 'IMG_55591.jpg', 0),
(217, 42, 'IMG_94557.jpg', 0),
(218, 42, 'IMG_72283.jpg', 0),
(219, 42, 'IMG_22017.jpg', 0),
(220, 43, 'IMG_41468.jpg', 0),
(221, 43, 'IMG_42708.jpg', 0),
(222, 43, 'IMG_21523.jpg', 1),
(223, 43, 'IMG_55567.jpg', 0),
(224, 43, 'IMG_27739.jpg', 0),
(225, 43, 'IMG_53494.jpg', 0),
(226, 43, 'IMG_53801.jpg', 0),
(227, 43, 'IMG_73406.jpg', 0),
(228, 44, 'IMG_65481.jpg', 0),
(229, 44, 'IMG_43169.jpg', 0),
(230, 44, 'IMG_88239.jpg', 1),
(231, 44, 'IMG_19582.jpg', 0),
(232, 44, 'IMG_14752.jpg', 0),
(233, 44, 'IMG_15536.jpg', 0),
(234, 44, 'IMG_97623.jpg', 0),
(235, 44, 'IMG_58149.jpg', 0),
(236, 45, 'IMG_38792.jpg', 0),
(237, 45, 'IMG_58812.jpg', 0),
(238, 45, 'IMG_65091.jpg', 1),
(239, 45, 'IMG_27255.jpg', 0),
(240, 45, 'IMG_41156.jpg', 0),
(241, 45, 'IMG_47233.jpg', 0),
(242, 45, 'IMG_41714.jpg', 0),
(243, 45, 'IMG_65582.jpg', 0),
(244, 46, 'IMG_41979.jpg', 0),
(245, 46, 'IMG_63526.jpg', 0),
(246, 46, 'IMG_42139.jpg', 1),
(247, 46, 'IMG_49208.jpg', 0),
(248, 46, 'IMG_79329.jpg', 0),
(249, 46, 'IMG_42018.jpg', 0),
(250, 46, 'IMG_35739.jpg', 0),
(251, 46, 'IMG_16235.jpg', 0),
(252, 47, 'IMG_96820.jpg', 0),
(253, 47, 'IMG_95812.jpg', 0),
(254, 47, 'IMG_69230.jpg', 1),
(255, 47, 'IMG_35213.jpg', 0),
(256, 47, 'IMG_17068.jpg', 0),
(257, 47, 'IMG_20733.jpg', 0),
(258, 47, 'IMG_39335.jpg', 0),
(259, 47, 'IMG_25015.jpg', 0),
(260, 28, 'IMG_58395.jpg', 0),
(261, 28, 'IMG_74525.jpg', 1),
(262, 28, 'IMG_61055.jpg', 0),
(263, 28, 'IMG_47634.jpg', 0),
(264, 28, 'IMG_26674.jpg', 0),
(265, 28, 'IMG_91016.jpg', 0),
(266, 28, 'IMG_77399.jpg', 0),
(267, 28, 'IMG_19160.jpg', 0),
(268, 49, 'IMG_76152.jpg', 1),
(269, 49, 'IMG_97639.jpg', 0),
(270, 49, 'IMG_94972.jpg', 0),
(271, 49, 'IMG_42431.jpg', 0),
(272, 49, 'IMG_17517.jpg', 0),
(273, 49, 'IMG_83642.jpg', 0),
(274, 49, 'IMG_54616.jpg', 0),
(275, 49, 'IMG_61922.jpg', 0),
(276, 49, 'IMG_87692.jpg', 0),
(286, 51, 'IMG_41952.jpg', 0),
(287, 51, 'IMG_53011.jpg', 1),
(288, 51, 'IMG_76748.jpg', 0),
(289, 51, 'IMG_55804.jpg', 0),
(290, 51, 'IMG_24727.jpg', 0),
(291, 51, 'IMG_24176.jpg', 0),
(292, 51, 'IMG_72634.jpg', 0),
(293, 51, 'IMG_84783.jpg', 0),
(294, 51, 'IMG_45342.jpg', 0),
(295, 52, 'IMG_70286.jpg', 1),
(296, 52, 'IMG_41562.jpg', 0),
(297, 52, 'IMG_53238.jpg', 0),
(298, 52, 'IMG_98401.jpg', 0),
(299, 52, 'IMG_48621.jpg', 0),
(300, 52, 'IMG_31718.jpg', 0),
(301, 52, 'IMG_84679.jpg', 0),
(302, 52, 'IMG_96151.jpg', 0),
(303, 52, 'IMG_96714.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'La Casita - Hotel', 'During your stay at our Hotel, you get Great dishes, accomodation and hot seat for Nyamira Politics. Visit for Delicious meals within Nyamira Town.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transac_record`
--

CREATE TABLE `transac_record` (
  `refnum` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` int(11) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 1,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(8, 'Brian', 'brian@gmail.com', 'Nyamira', '0105626542', 40500, 2023, 'IMG_94366.jpeg', '$2y$10$aoupl1WylRnggJxoJu7J/uPwlQ99cwMobWE/AAZjqrpgy/gOErbe.', 1, '7b63db6698eab0882d5272f69f0f3728', NULL, 1, '2023-09-12 10:54:42'),
(9, 'Steven', 'sfra.scholarship1@gmail.com', 'asfaggaagag', '09128759996', 12414, 2024, 'IMG_49000.jpeg', '$2y$10$2WCTChdg3I99sqGjesAWp.LpLtL6oSjF4B4cYzIgNWtAS3S6NX49u', 0, 'c0f215e89e7e658310c24b401fa359ea', NULL, 1, '2024-05-05 15:06:55'),
(10, 'tester', 'tester@email.com', 'tiaong', '12345678', 4325, 2024, 'IMG_97089.jpeg', '$2y$10$cds4IAk9mDvLwJfMW8GdzukTpnMFlE5RBeKXfjWRrzpwVAn4PRcsS', 0, 'a2f0b538331753c86be76ebe393b4b00', NULL, 1, '2024-05-06 09:24:15'),
(11, 'tisteng', 'tisteng@email.com', 'tiaong', '1243324', 1234, 2024, 'IMG_22611.jpeg', '$2y$10$nDAfTJirSNsjG/xXcHg02.fd5xwxR9gcLEwGGIA8LnGNM.3W5aowa', 1, '1fb6bd9ae78d2fca69ce684eda6b3edb', NULL, 1, '2024-05-06 09:44:42'),
(12, 'setrerwtygdefrghfd', 'tete@email.com', 'ferwfaergf', '234325345', 12234, 2024, 'IMG_62191.jpeg', '$2y$10$YHY150TetToT5HJMqeYuZO/LnPR1lPzV3oQNpl3u10pb.jalTit7y', 1, 'c35a0360fc0889651ebbcf598d254ce4', NULL, 1, '2024-05-21 20:43:41'),
(13, 'the the', 'the@email.com', 'ergfshgfrgf', '1242345325', 123234, 2024, 'IMG_49206.jpeg', '$2y$10$6BgyETqJkbbY1Y/Vj6QzEOIdEbkp0AuX0MHr6tLUB/l7dcvI0x6NC', 1, '674e57a25e7939d5ce1c75a3683f38dd', NULL, 1, '2024-05-21 21:55:18'),
(14, 'DFDRSGDFRGT', 'RERE@EMAIL.COM', 'RGRTYTR', '123234324', 1233455, 2024, 'IMG_20624.jpeg', '$2y$10$3fm4wXJpgkvIQ0.xMLe5SuYWORrz4S3fq79a0dS/3vjkeRErHd7/.', 1, '446d399a3c987de3f7a147b62dbd5899', NULL, 1, '2024-05-21 22:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(30, 'werewrw4er', 'even@email.com', 'eargrtyrty', 'fgesrhfthdrhydedsriufyesicjvhsefjbatyah mawter', '2024-05-22 18:27:12', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_images`
--
ALTER TABLE `gallery_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `rm id` (`room_id`),
  ADD KEY `features id` (`features_id`) USING BTREE;

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_images_ibfk_1` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `gallery_images`
--
ALTER TABLE `gallery_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `feature id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
