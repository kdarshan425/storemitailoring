-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2021 at 10:45 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `misujonc_rizwan`
--

-- --------------------------------------------------------

--
-- Table structure for table `back_details`
--

CREATE TABLE `back_details` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumb` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `back_details`
--

INSERT INTO `back_details` (`id`, `title`, `thumb`, `status`, `created_at`) VALUES
(1, 'Smooth Back', 'uploads/custom/back-details/no-back.svg', 1, '2020-04-06 00:28:30'),
(2, 'Box Pleats', 'uploads/custom/back-details/center-fold.svg', 1, '2020-04-06 00:28:30'),
(3, 'Side Pleats', 'uploads/custom/back-details/4730b2211bba2b1ba2621a017b396363side-fold.svg', 1, '2020-04-06 00:28:30');

-- --------------------------------------------------------

--
-- Table structure for table `back_yoke`
--

CREATE TABLE `back_yoke` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumb` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `back_yoke`
--

INSERT INTO `back_yoke` (`id`, `title`, `thumb`, `status`, `created_at`) VALUES
(1, 'Regular', 'uploads/custom/back-yoke/classic.svg', 1, '2020-04-06 00:29:55'),
(2, 'Split yoke', 'uploads/custom/back-yoke/861b32119ba0106021909c7526f9002asplite.svg', 1, '2020-04-06 00:29:55');

-- --------------------------------------------------------

--
-- Table structure for table `bottom_cut`
--

CREATE TABLE `bottom_cut` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` text NOT NULL,
  `thumb` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bottom_cut`
--

INSERT INTO `bottom_cut` (`id`, `title`, `subtitle`, `thumb`, `status`, `created_at`) VALUES
(1, 'Classic', 'Tuck it in or let it all hang out', 'uploads/custom/bottom-cut/classic.svg', 1, '2020-04-06 00:31:50'),
(2, 'Modern', 'With a long tail that stays tucked in ', 'uploads/custom/bottom-cut/512fe7babaaed84508354f34188ca125modern.svg', 1, '2020-04-06 00:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `buttons`
--

CREATE TABLE `buttons` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumb` text NOT NULL,
  `color` varchar(100) NOT NULL,
  `placket` text DEFAULT NULL,
  `pocket` text DEFAULT NULL,
  `collar` text DEFAULT NULL,
  `back_buttons` text DEFAULT NULL,
  `cuffs` text DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1=regular;2=featured;3=colored;',
  `price` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buttons`
--

INSERT INTO `buttons` (`id`, `title`, `thumb`, `color`, `placket`, `pocket`, `collar`, `back_buttons`, `cuffs`, `type`, `price`, `status`, `created_at`) VALUES
(11, 'White New', 'uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-82P4nBPZ-thumbnail.png', '#fff', 'uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-KWh3Zcux-placket.png', '[{\"id\":1,\"url\":\"\"},{\"id\":2,\"url\":\"\"},{\"id\":3,\"url\":\"\"},{\"id\":4,\"url\":\"\"},{\"id\":5,\"url\":\"\"},{\"id\":6,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-clCBYWxy-pockets-left.png\"},{\"id\":7,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-9yGuYpAQ-pockets-both.png\"},{\"id\":8,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-clCBYWxy-pockets-left-v.png\"},{\"id\":9,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-9yGuYpAQ-pockets-both-v.png\"}]', '[{\"id\":1,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-RPa320gb-business-classic.png\"},{\"id\":2,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-kgcO7q0w-button-down-classic.png\"},{\"id\":3,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-qUiNcl4U-cutway-classic.png\"},{\"id\":4,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-1rKtozo8-cutway-modern.png\"},{\"id\":5,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-4bF1F4z4-cutway-extreme.png\"},{\"id\":13,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-LGwFs2sn-cutway-two-button.png\"},{\"id\":14,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-oNtVG91e-button-down-modern.png\"},{\"id\":15,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-pLOvVIKF-club-button.png\"},{\"id\":16,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-Meb9dbI5-mao.png\"},{\"id\":17,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-c1UmHK8j-wing.png\"},{\"id\":18,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-Ve3o66vp-pin.png\"},{\"id\":19,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-RE3ssbS5-turndown.png\"}]', NULL, '[{\"id\":1,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-jsQCamoP-single-button-cuff.png\"},{\"id\":6,\"url\":\"uploads/buttons/11/96ec2def2411d987349693f0a6af4ee7-rEGBvxup-franch-cuff.png\"},{\"id\":9,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-713SyVfe-convirtible-cuff.png\"},{\"id\":10,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-AJGVTq4F-double-button-cuff.png\"},{\"id\":11,\"url\":\"uploads/buttons/11/f6e8d7b2181e5cf3b2c89865923e81c6-6Q3XvThd-link-cuff.png\"},{\"id\":12,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-RCZFeIGf-narrow-cuff.png\"},{\"id\":13,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-jsQCamoP-single-button-cuff.png\"},{\"id\":14,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-713SyVfe-convirtible-cuff.png\"},{\"id\":15,\"url\":\"uploads/buttons/11/7e2376b12b6879a7e9bae1daebdbb6b2-AJGVTq4F-double-button-cuff.png\"}]', 1, 5, 1, '2020-12-22 01:21:55'),
(12, 'Black', 'uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-vbtk9qOw-thumbnail.png', '#000000', 'uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-l5nptEFc-placket.png', '[{\"id\":1,\"url\":\"\"},{\"id\":2,\"url\":\"\"},{\"id\":3,\"url\":\"\"},{\"id\":4,\"url\":\"\"},{\"id\":5,\"url\":\"\"},{\"id\":6,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-T7XLfv2l-pockets-left.png\"},{\"id\":7,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-F9iw5C0U-pockets-both.png\"},{\"id\":8,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-T7XLfv2l-pockets-left-v.png\"},{\"id\":9,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-F9iw5C0U-pockets-both-v.png\"}]', '[{\"id\":1,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-AIU8wFvM-business-classic.png\"},{\"id\":2,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-uUJIThxf-button-down-classic.png\"},{\"id\":3,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-6po4k2UT-cutway-classic.png\"},{\"id\":4,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-qMp8bpnM-cutway-modern.png\"},{\"id\":5,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-iaVIlFpw-cutway-extreme.png\"},{\"id\":13,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-0OAhNa7Q-cutway-two-button.png\"},{\"id\":14,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-bUTr7ysr-button-down-modern.png\"},{\"id\":15,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-KdAX5Rju-club-button.png\"},{\"id\":16,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-bmSHu75z-mao.png\"},{\"id\":17,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-2lwQ1NqC-wing.png\"},{\"id\":18,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-2LsdYaXQ-pin.png\"},{\"id\":19,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-3K6Vi93O-turndown.png\"}]', NULL, '[{\"id\":1,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-mjkImdGv-single-button-cuff.png\"},{\"id\":6,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-skGO7ByM-franch-cuff.png\"},{\"id\":9,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-qKhjyUNU-convirtible-cuff.png\"},{\"id\":10,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-ZFoeupRk-double-button-cuff.png\"},{\"id\":11,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-T8AFvN4l-link-cuff.png\"},{\"id\":12,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-ceOxVZd1-narrow-cuff.png\"},{\"id\":13,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-mjkImdGv-single-button-cuff.png\"},{\"id\":14,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-qKhjyUNU-convirtible-cuff.png\"},{\"id\":15,\"url\":\"uploads/buttons/12/ba5bb9334513dba0656ac841d91e1863-ZFoeupRk-double-button-cuff.png\"}]', 2, 0, 1, '2020-12-24 17:14:19');

-- --------------------------------------------------------

--
-- Table structure for table `button_threads`
--

CREATE TABLE `button_threads` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumb` text NOT NULL,
  `color_code` text DEFAULT NULL,
  `back_hole_thread` text DEFAULT NULL,
  `back_button_thread` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `button_thread` mediumtext NOT NULL,
  `placket_button_hole` text DEFAULT NULL,
  `placket_button` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `button_threads`
--

INSERT INTO `button_threads` (`id`, `title`, `thumb`, `color_code`, `back_hole_thread`, `back_button_thread`, `status`, `created_at`, `button_thread`, `placket_button_hole`, `placket_button`) VALUES
(10, 'Whiter', 'uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-KmOGwgbh-3b16d70bc236b4b46a8b6e244dd03e6dth1.png', '#ffffff', NULL, NULL, 1, '2020-12-24 02:24:23', '[{\"id\":\"10\",\"collar\":[{\"id\":1,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-qrloqM5t-hole-thread-business-classic.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-h2cQa6kE-button-thread-business-classic.png\"},{\"id\":2,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-ZmuBKuZF-hole-thread-button-down-classic.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-yDTHgfnL-button-thread-button-down-classic.png\"},{\"id\":3,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-pwKM6TMZ-hole-thread-cutway-classic.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-Von42Ovk-button-thread-cutway-classic.png\"},{\"id\":4,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-NkDUmq02-hole-thread-cutway-modern.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-WXDKYNVz-button-thread-cutway-modern.png\"},{\"id\":5,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-an3Y2xaB-hole-thread-cutway-extreme.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-XgHK8E77-button-thread-cutway-extreme.png\"},{\"id\":13,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-wKIls0c7-hole-thread-cutway-two-button.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-eUUEPntP-button-thread-cutway-two-button.png\"},{\"id\":14,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-Kj1l5Zpg-hole-thread-button-down-modern.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-z8m9yH0C-button-thread-button-down-modern.png\"},{\"id\":15,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-MiAk8PFR-hole-thread-club-button.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-eixShrWy-button-thread-club-button.png\"},{\"id\":16,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-zLH3zk9k-hole-thread-mao.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-Uz5et7yR-button-thread-mao.png\"},{\"id\":17,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-cX5vzhQB-hole-thread-wing.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-GIa4Q9L2-button-thread-wing.png\"},{\"id\":18,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-w0tCN9eo-hole-thread-pin.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-pwra8g0i-button-thread-pin.png\"},{\"id\":19,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-kHGGynj8-hole-thread-turndown.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-FQfyzU7o-button-thread-turndown.png\"}],\"cuff\":[{\"id\":1,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-POQ0B0lr-hole-thread-single-button-cuff.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-13RPg1BS-button-thread-single-button-cuff.png\"},{\"id\":6,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-AtjjRCHn-hole-thread-franch-cuff.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-ZP2Qot7A-button-thread-franch-cuff.png\"},{\"id\":9,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-8o30HLBH-hole-thread-convirtible-cuff.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-AA7v5YVL-button-thread-convirtible-cuff.png\"},{\"id\":10,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-Iph0YwGa-hole-thread-double-button-cuff.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-m0lzmzgc-button-thread-double-button-cuff.png\"},{\"id\":11,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-Pq2HaQh7-hole-thread-link-cuff.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-IilXb8xD-button-thread-link-cuff.png\"},{\"id\":12,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-D0uqql4y-hole-thread-narrow-cuff.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-DcW6njGV-button-thread-narrow-cuff.png\"},{\"id\":13,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-POQ0B0lr-hole-thread-single-button-cuff.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-13RPg1BS-button-thread-single-button-cuff.png\"},{\"id\":14,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-8o30HLBH-hole-thread-convirtible-cuff.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-AA7v5YVL-button-thread-convirtible-cuff.png\"},{\"id\":15,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-Iph0YwGa-hole-thread-double-button-cuff.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-m0lzmzgc-button-thread-double-button-cuff.png\"}],\"pocket\":[{\"id\":6,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-7UfF2mRf-hole-thread-pockets-left.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-ySRNhzoh-button-thread-pockets-left.png\"},{\"id\":7,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-flaoDL83-hole-thread-pockets-both.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-SRKPCroa-button-thread-pockets-both.png\"},{\"id\":8,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-7UfF2mRf-hole-thread-pockets-left-v.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-ySRNhzoh-button-thread-pockets-left-v.png\"},{\"id\":9,\"url\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-flaoDL83-hole-thread-pockets-both-v.png\",\"button\":\"uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-SRKPCroa-button-thread-pockets-both-v.png\"}]}]', 'uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-qNhi6jW5-hole-thread-placket.png', 'uploads/threads/10/fa719e2424fa6f5d64b0b7766f7f43c3-IACNJjH1-button-thread-placket.png'),
(12, 'Black', 'uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-z7kPJRBm-thumbnail.png', '#000000', NULL, NULL, 1, '2020-12-24 13:05:21', '[{\"id\":\"12\",\"collar\":[{\"id\":1,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-Z3cLWCdY-hole-thread-business-classic.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-BmBZJkSJ-button-thread-business-classic.png\"},{\"id\":2,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-PK9TdWaG-hole-thread-button-down-classic.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-K1B6MZFc-button-thread-button-down-classic.png\"},{\"id\":3,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-FPwtKIIf-hole-thread-cutway-classic.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-VPSQi77z-button-thread-cutway-classic.png\"},{\"id\":4,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-Yrb5AtB8-hole-thread-cutway-modern.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-b54KOb99-button-thread-cutway-modern.png\"},{\"id\":5,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-Tuq4ykav-hole-thread-cutway-extreme.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-ttXQtdCH-button-thread-cutway-extreme.png\"},{\"id\":13,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-luvAZeFA-hole-thread-cutway-two-button.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-3KZ7gbF4-button-thread-cutway-two-button.png\"},{\"id\":14,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-fw9z1QHk-hole-thread-button-down-modern.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-gWxmRVNf-button-thread-button-down-modern.png\"},{\"id\":15,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-JVeOd78J-hole-thread-club-button.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-A6ouN9VS-button-thread-club-button.png\"},{\"id\":16,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-qUyHHfPG-hole-thread-mao.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-vIGKnAmq-button-thread-mao.png\"},{\"id\":17,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-6Y9uRcLl-hole-thread-wing.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-oghfwZK3-button-thread-wing.png\"},{\"id\":18,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-TF3oq2aF-hole-thread-pin.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-pFKxmQh8-button-thread-pin.png\"},{\"id\":19,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-5ZfLJrpu-hole-thread-turndown.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-KVeUE2bm-button-thread-turndown.png\"}],\"cuff\":[{\"id\":1,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-8TWiH0M2-hole-thread-single-button-cuff.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-zJMncl5z-button-thread-single-button-cuff.png\"},{\"id\":6,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-e2Mo9Qr8-hole-thread-franch-cuff.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-R8vIkZ6a-button-thread-franch-cuff.png\"},{\"id\":9,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-CtdcLsil-hole-thread-convirtible-cuff.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-HVzNZmOr-button-thread-convirtible-cuff.png\"},{\"id\":10,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-RQtn9jXu-hole-thread-double-button-cuff.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-9frS9VwE-button-thread-double-button-cuff.png\"},{\"id\":11,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-ZtAOfkbp-hole-thread-link-cuff.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-0rLedRg6-button-thread-link-cuff.png\"},{\"id\":12,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-fBfdwH9y-hole-thread-narrow-cuff.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-sKW79fqw-button-thread-narrow-cuff.png\"},{\"id\":13,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-8TWiH0M2-hole-thread-single-button-cuff.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-zJMncl5z-button-thread-single-button-cuff.png\"},{\"id\":14,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-CtdcLsil-hole-thread-convirtible-cuff.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-HVzNZmOr-button-thread-convirtible-cuff.png\"},{\"id\":15,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-RQtn9jXu-hole-thread-double-button-cuff.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-9frS9VwE-button-thread-double-button-cuff.png\"}],\"pocket\":[{\"id\":6,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-hcjRCbzm-hole-thread-pockets-left.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-dGlrfx8H-button-thread-pockets-left.png\"},{\"id\":7,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-6emWWrWo-hole-thread-pockets-both.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-cRPTQiLD-button-thread-pockets-both.png\"},{\"id\":8,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-hcjRCbzm-hole-thread-pockets-left-v.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-dGlrfx8H-button-thread-pockets-left-v.png\"},{\"id\":9,\"url\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-6emWWrWo-hole-thread-pockets-both-v.png\",\"button\":\"uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-cRPTQiLD-button-thread-pockets-both-v.png\"}]}]', 'uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-TvkJ5Fln-hole-thread-placket.png', 'uploads/threads/12/9921a3206d14db3c4ba122ad00f9be93-D2SlPQSx-button-thread-placket.png');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_ip` text NOT NULL,
  `qty` int(11) NOT NULL,
  `fabric` int(11) NOT NULL,
  `sleeve` int(11) DEFAULT NULL,
  `collar_style` int(11) DEFAULT NULL,
  `collar_stays` int(11) DEFAULT NULL,
  `collar_stiffness` int(11) DEFAULT NULL,
  `cuff` int(11) DEFAULT NULL,
  `placket` int(11) DEFAULT NULL,
  `pocket_placement` int(11) DEFAULT NULL,
  `pocket_style` int(11) DEFAULT NULL,
  `pocket_flap` int(11) DEFAULT NULL,
  `back_details` int(11) DEFAULT NULL,
  `back_yoke` int(11) DEFAULT NULL,
  `bottom_cut` int(11) DEFAULT NULL,
  `button` int(11) DEFAULT NULL,
  `button_thread` int(11) DEFAULT NULL,
  `button_hole_thread` int(11) DEFAULT NULL,
  `contrast_data` text DEFAULT NULL,
  `embroidery` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `total_amount` int(11) DEFAULT NULL,
  `measurement` int(11) DEFAULT NULL,
  `fitting` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `user_ip`, `qty`, `fabric`, `sleeve`, `collar_style`, `collar_stays`, `collar_stiffness`, `cuff`, `placket`, `pocket_placement`, `pocket_style`, `pocket_flap`, `back_details`, `back_yoke`, `bottom_cut`, `button`, `button_thread`, `button_hole_thread`, `contrast_data`, `embroidery`, `created_at`, `total_amount`, `measurement`, `fitting`) VALUES
(261, 0, '::1', 1, 18, 2, 16, 1, 2, 1, 3, 9, NULL, NULL, NULL, 1, 2, 12, 10, 10, NULL, NULL, '2020-12-27 23:16:52', 101, NULL, NULL),
(267, 0, '39.36.171.180', 1, 18, 1, 1, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-28 11:16:15', 105, NULL, NULL),
(268, 0, '39.37.252.101', 1, 18, 1, 1, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-28 11:42:40', 105, NULL, NULL),
(273, 0, '39.36.169.255', 1, 17, 1, 1, NULL, NULL, 15, 1, 7, NULL, NULL, 2, 2, NULL, 12, 10, 10, '{\"collar_out\":\"18\",\"collar_in\":\"18\",\"cuff_out\":\"18\",\"cuff_in\":\"17\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"18\",\"sleeve_placket\":\"18\",\"pocket_fabric\":\"18\"}', NULL, '2020-12-28 14:50:18', 85, NULL, NULL),
(274, 0, '39.36.211.90', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-29 03:55:32', 105, NULL, NULL),
(275, 0, '39.36.75.175', 1, 18, 1, 2, NULL, NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-29 10:14:05', 105, NULL, NULL),
(276, 0, '39.36.201.80', 1, 18, 1, 13, NULL, NULL, 9, 2, 8, NULL, NULL, 2, 2, NULL, 12, 10, 10, '{\"collar_out\":\"17\",\"collar_in\":\"17\",\"cuff_out\":\"17\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"\"}', NULL, '2020-12-29 13:49:57', 100, NULL, NULL),
(277, 0, '216.18.204.202', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-30 04:17:57', NULL, NULL, NULL),
(278, 0, '216.18.204.202', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-30 04:22:50', NULL, NULL, NULL),
(279, 0, '119.160.97.43', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, 3, 1, 1, 12, 10, 10, '{\"collar_out\":\"18\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"18\",\"fastening_out\":\"\",\"fastening_in\":\"18\",\"button_placket\":\"\",\"sleeve_placket\":\"18\"}', NULL, '2020-12-30 04:33:11', 85, NULL, NULL),
(280, 0, '39.36.240.98', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-30 05:36:42', 105, NULL, NULL),
(281, 0, '111.119.187.62', 1, 18, 1, 19, 2, 2, 9, 1, 6, NULL, NULL, 1, NULL, NULL, 11, 12, NULL, '{\"collar_out\":\"17\",\"collar_in\":\"18\",\"cuff_out\":\"17\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"\"}', NULL, '2020-12-30 09:13:50', 107, NULL, NULL),
(282, 0, '39.36.52.176', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-30 10:47:42', 105, NULL, NULL),
(283, 0, '39.37.232.195', 1, 18, 2, 13, NULL, NULL, 15, 1, 2, NULL, NULL, 3, NULL, 1, 12, 12, 10, '{\"collar_out\":\"17\",\"collar_in\":\"17\",\"cuff_out\":\"17\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"\"}', NULL, '2020-12-30 11:45:51', 100, NULL, NULL),
(284, 0, '182.185.166.174', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-30 12:28:00', 105, NULL, NULL),
(285, 0, '39.37.234.144', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-30 13:57:22', 105, NULL, NULL),
(286, 0, '39.36.3.19', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-31 00:51:15', 105, NULL, NULL),
(287, 0, '182.185.219.150', 1, 18, 1, 4, 1, NULL, 15, 1, 6, NULL, NULL, 1, 2, 2, 11, 12, 10, '{\"collar_out\":\"\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"17\",\"fastening_out\":\"17\",\"fastening_in\":\"17\",\"button_placket\":\"18\",\"sleeve_placket\":\"17\",\"pocket_fabric\":\"17\"}', '{\"placement\":\"1\",\"text\":\"kskjk\",\"thread\":\"#fff\",\"font\":\"ROMANESCO\"}', '2020-12-31 01:11:55', 108, NULL, NULL),
(288, 0, '39.36.198.21', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-31 02:13:29', 105, NULL, NULL),
(289, 0, '39.37.250.223', 1, 18, 1, 14, NULL, NULL, 1, 1, 6, NULL, NULL, 2, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-31 04:12:49', 105, NULL, NULL),
(290, 0, '39.36.165.103', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2020-12-31 11:39:29', 105, NULL, NULL),
(291, 0, '39.36.141.182', 1, 18, 1, 2, NULL, NULL, 15, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 10, NULL, '{\"collar_out\":\"17\",\"collar_in\":\"17\",\"cuff_out\":\"17\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"17\",\"sleeve_placket\":\"\",\"pocket_fabric\":\"17\"}', '{\"placement\":\"1\",\"text\":\"Ali r\",\"thread\":\"#000000\",\"font\":\"FREDOKA\"}', '2020-12-31 11:57:11', 107, NULL, NULL),
(292, 0, '182.48.95.110', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, '{\"placement\":\"1\",\"text\":\"Sujon\",\"thread\":\"#fff\",\"font\":\"\"}', '2020-12-31 13:59:03', 107, NULL, NULL),
(293, 0, '39.37.249.169', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-01 03:51:53', 105, NULL, NULL),
(294, 0, '39.37.226.49', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, '{\"placement\":\"1\",\"text\":\"Rizwa\",\"thread\":\"#fff\",\"font\":\"FREDOKA\"}', '2021-01-01 11:28:45', 107, NULL, NULL),
(295, 0, '39.36.121.77', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-02 08:04:49', 105, NULL, NULL),
(296, 0, '39.36.188.226', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, '{\"collar_out\":\"17\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"\"}', NULL, '2021-01-02 08:34:05', 105, NULL, NULL),
(297, 0, '203.96.169.216', 1, 18, 1, 1, NULL, NULL, 1, 2, 2, NULL, NULL, NULL, 2, 2, 11, 12, NULL, NULL, NULL, '2021-01-03 05:56:47', 105, NULL, NULL),
(298, 0, '39.36.145.54', 1, 18, 1, 14, NULL, NULL, 6, 3, 2, NULL, NULL, 3, NULL, 1, 11, 12, 10, '{\"collar_out\":\"\",\"collar_in\":\"\",\"cuff_out\":\"17\",\"cuff_in\":\"18\",\"fastening_out\":\"\",\"fastening_in\":\"17\",\"pocket_fabric\":\"17\",\"button_placket\":\"17\",\"sleeve_placket\":\"18\"}', NULL, '2021-01-03 10:10:07', 105, NULL, NULL),
(299, 0, '42.0.6.233', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-04 10:08:45', 105, NULL, NULL),
(300, 36, '42.0.6.235', 1, 17, 1, 2, NULL, NULL, 14, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-04 10:11:10', 90, 96, NULL),
(303, 0, '39.36.108.134', 1, 18, 2, 14, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, '{\"collar_out\":\"\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"17\",\"sleeve_placket\":\"\"}', NULL, '2021-01-05 05:05:02', 105, NULL, NULL),
(304, 36, '148.75.221.143', 1, 18, 1, 2, NULL, NULL, 15, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, '{\"collar_out\":\"17\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"\"}', '{\"placement\":\"3\",\"text\":\"\",\"thread\":\"#fff\",\"font\":\"\"}', '2021-01-06 12:13:50', 107, 108, NULL),
(305, 36, '148.75.221.143', 1, 18, 2, 16, 1, 3, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-07 07:45:16', 106, 108, NULL),
(306, 0, '39.36.198.153', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-09 00:40:03', 105, NULL, NULL),
(307, 0, '103.102.132.254', 1, 18, 2, 1, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-10 05:26:42', 105, NULL, NULL),
(308, 0, '39.36.228.24', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-10 07:27:01', 105, NULL, NULL),
(309, 0, '123.231.87.211', 1, 18, 2, 15, NULL, NULL, 1, 1, 5, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-11 01:50:46', 105, NULL, NULL),
(310, 0, '175.157.14.37', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-11 05:59:56', 105, NULL, NULL),
(311, 0, '39.36.200.127', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-11 06:17:19', 105, NULL, NULL),
(312, 0, '175.157.19.177', 1, 18, 2, 15, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-11 06:21:27', 105, NULL, NULL),
(313, 0, '39.37.232.231', 1, 18, 1, 14, NULL, NULL, 6, 1, 9, NULL, NULL, 2, NULL, NULL, 12, 12, NULL, NULL, NULL, '2021-01-11 11:42:58', 100, NULL, NULL),
(314, 0, '39.36.182.39', 1, 18, 1, 2, NULL, NULL, 1, 2, 7, NULL, NULL, NULL, NULL, NULL, 11, 12, 12, '{\"collar_out\":\"17\",\"collar_in\":\"17\",\"cuff_out\":\"17\",\"cuff_in\":\"17\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"17\",\"sleeve_placket\":\"18\",\"pocket_fabric\":\"17\"}', NULL, '2021-01-12 05:38:02', 105, NULL, NULL),
(315, 0, '82.54.75.243', 1, 18, 1, 2, 2, 3, 1, 2, 9, NULL, NULL, 3, NULL, NULL, 11, 12, 10, NULL, NULL, '2021-01-12 06:34:42', 109, NULL, NULL),
(316, 0, '39.36.18.183', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-12 08:04:51', 105, NULL, NULL),
(317, 0, '39.36.1.178', 1, 18, 2, 2, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-13 09:24:36', 105, NULL, NULL),
(318, 0, '103.83.232.25', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-14 11:03:41', 105, NULL, NULL),
(319, 0, '116.206.246.241', 1, 18, 2, 5, 2, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-16 01:07:11', 107, NULL, NULL),
(320, 0, '92.40.174.83', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-16 02:02:07', 105, NULL, NULL),
(321, 0, '39.36.84.128', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-16 06:28:33', 105, NULL, NULL),
(322, 0, '39.36.57.126', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-17 07:01:54', 105, NULL, NULL),
(323, 0, '39.36.107.53', 1, 18, 1, 2, NULL, NULL, 10, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, '{\"collar_out\":\"\",\"collar_in\":\"\",\"cuff_out\":\"17\",\"cuff_in\":\"17\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"17\"}', NULL, '2021-01-19 09:47:03', 105, NULL, NULL),
(324, 0, '175.157.41.10', 1, 18, 2, 5, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-20 07:36:47', 105, NULL, NULL),
(325, 0, '66.249.66.44', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-24 04:06:22', NULL, NULL, NULL),
(326, 0, '39.36.133.138', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-24 09:20:52', 105, NULL, NULL),
(327, 0, '66.249.66.41', 1, 0, 0, 0, NULL, NULL, 0, 0, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-01-24 10:26:03', NULL, NULL, NULL),
(328, 0, '66.249.66.38', 1, 0, 0, 0, NULL, NULL, 0, 0, 2, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '2021-01-24 12:36:00', NULL, NULL, NULL),
(329, 0, '39.36.24.152', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-24 12:41:36', 105, NULL, NULL),
(330, 0, '3.96.175.27', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-25 14:32:04', NULL, NULL, NULL),
(331, 0, '95.237.88.208', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-26 09:16:32', 105, NULL, NULL),
(332, 0, '157.49.230.55', 1, 17, 2, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 12, 12, NULL, NULL, NULL, '2021-01-26 23:35:29', 85, NULL, NULL),
(333, 0, '223.196.169.37', 1, 17, 1, 1, 2, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-27 00:00:45', 93, NULL, NULL),
(334, 0, '223.196.169.37', 1, 17, 1, 1, NULL, NULL, 12, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-27 00:03:29', 90, NULL, NULL),
(335, 0, '106.198.93.52', 1, 18, 2, 3, NULL, 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-27 00:04:20', 105, NULL, NULL),
(337, 0, '60.243.82.42', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-27 00:07:25', 105, NULL, NULL),
(338, 0, '223.196.169.112', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-27 00:11:13', 105, NULL, NULL),
(339, 0, '157.48.168.141', 1, 18, 1, 2, 2, 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-27 00:15:23', 109, NULL, NULL),
(340, 0, '40.77.167.62', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-01-28 11:34:55', NULL, NULL, NULL),
(341, 0, '39.36.153.165', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, '{\"collar_out\":\"17\",\"collar_in\":\"17\",\"cuff_out\":\"\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"17\"}', NULL, '2021-01-30 09:42:06', 105, NULL, NULL),
(342, 0, '82.80.249.249', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-01 06:02:35', NULL, NULL, NULL),
(343, 0, '82.80.249.249', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-01 06:02:42', NULL, NULL, NULL),
(344, 0, '157.46.92.165', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-02 03:26:35', 105, NULL, NULL),
(345, 0, '39.36.119.113', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, '{\"collar_out\":\"\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"17\",\"sleeve_placket\":\"\"}', NULL, '2021-02-02 05:25:25', 105, NULL, NULL),
(346, 0, '39.48.174.132', 1, 17, 2, 1, 1, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-03 05:45:10', 92, NULL, NULL),
(347, 0, '202.63.195.88', 1, 17, 1, 16, 2, 2, 1, 1, 6, NULL, NULL, 2, NULL, NULL, 12, 10, NULL, '{\"collar_out\":\"18\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"\"}', NULL, '2021-02-03 07:14:30', 87, 104, NULL),
(348, 0, '79.181.67.192', 1, 18, 1, 16, 1, NULL, 6, 1, 5, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-03 15:18:28', 106, NULL, NULL),
(349, 0, '182.48.76.186', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-04 03:19:45', 105, NULL, NULL),
(350, 0, '39.36.164.218', 1, 18, 1, 17, NULL, NULL, 15, 3, 7, NULL, NULL, 3, NULL, 1, 12, 10, 10, '{\"collar_out\":\"17\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"17\"}', NULL, '2021-02-05 13:05:44', 100, NULL, NULL),
(352, 0, '106.195.45.41', 1, 18, 1, 14, 2, 2, 10, 1, 2, NULL, NULL, NULL, 1, NULL, 12, 12, NULL, NULL, NULL, '2021-02-06 02:37:40', 102, NULL, NULL),
(353, 0, '2.53.20.17', 1, 18, 1, 17, NULL, NULL, 1, 3, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-06 19:19:47', 105, NULL, NULL),
(354, 0, '103.51.2.30', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-07 00:48:20', 105, NULL, NULL),
(355, 0, '39.36.148.104', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-08 12:19:22', 105, NULL, NULL),
(356, 0, '122.171.159.243', 1, 18, 1, 2, NULL, NULL, 6, 1, 2, NULL, NULL, NULL, NULL, NULL, 12, 12, NULL, '{\"collar_out\":\"\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"18\",\"button_placket\":\"\",\"sleeve_placket\":\"\"}', NULL, '2021-02-12 02:27:48', 100, 107, NULL),
(357, 0, '39.36.9.17', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-12 12:02:49', 105, NULL, NULL),
(358, 0, '39.36.76.187', 1, 18, 1, 1, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-13 07:37:14', 105, NULL, NULL),
(359, 0, '39.36.8.64', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-13 12:49:45', 105, NULL, NULL),
(360, 0, '39.36.4.118', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-14 10:18:31', NULL, NULL, NULL),
(361, 0, '182.48.95.22', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-14 13:04:18', 105, NULL, NULL),
(362, 0, '82.48.11.111', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-16 12:26:05', 105, NULL, NULL),
(363, 0, '79.183.170.174', 1, 17, 1, 16, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-17 04:26:42', 90, NULL, NULL),
(364, 0, '79.178.29.172', 1, 18, 1, 18, 2, 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-17 04:28:23', 107, NULL, NULL),
(365, 0, '39.37.253.35', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-17 23:32:11', 105, NULL, NULL),
(366, 0, '148.75.221.143', 1, 18, 1, 1, NULL, 3, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, '{\"collar_out\":\"\",\"collar_in\":\"\",\"cuff_out\":\"18\",\"cuff_in\":\"\",\"fastening_out\":\"18\",\"fastening_in\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"17\"}', '{\"placement\":\"1\",\"text\":\"\",\"thread\":\"#fff\",\"font\":\"\"}', '2021-02-19 07:36:47', 107, NULL, NULL),
(368, 0, '203.76.222.106', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-20 06:57:18', 105, NULL, NULL),
(369, 0, '207.244.71.82', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-20 09:06:19', 105, NULL, NULL),
(370, 0, '207.244.89.166', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-20 09:59:37', 105, NULL, NULL),
(371, 0, '39.36.96.65', 1, 18, 1, 1, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-21 07:26:05', 105, NULL, NULL),
(372, 0, '157.55.39.239', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-21 11:31:53', NULL, NULL, NULL),
(373, 0, '154.160.16.237', 1, 17, 1, 1, 2, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-23 06:36:55', 93, NULL, NULL),
(374, 0, '197.220.169.145', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-02-23 07:46:52', 105, NULL, NULL),
(375, 0, '113.21.229.50', 1, 18, 2, 2, NULL, NULL, 1, 2, 5, NULL, NULL, NULL, NULL, NULL, 11, 10, NULL, NULL, NULL, '2021-02-27 05:12:06', 105, NULL, NULL),
(376, 0, '157.55.39.22', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-03 22:49:13', NULL, NULL, NULL),
(377, 0, '183.87.11.51', 1, 17, 2, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-08 14:44:22', 90, 111, NULL),
(378, 0, '79.183.183.19', 1, 18, 1, 19, NULL, 3, 11, 1, 2, NULL, NULL, NULL, 1, NULL, 11, 12, NULL, '{\"collar_out\":\"17\",\"collar_in\":\"17\",\"cuff_out\":\"17\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"pocket_fabric\":\"18\",\"button_placket\":\"18\",\"sleeve_placket\":\"\"}', '{\"placement\":\"\",\"text\":\"\",\"thread\":\"#000000\",\"font\":\"\"}', '2021-03-12 00:33:00', 107, NULL, NULL),
(379, 0, '180.247.30.136', 1, 18, 2, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-12 00:34:28', 105, NULL, NULL),
(380, 0, '59.96.107.87', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-12 02:03:56', 90, NULL, NULL),
(381, 0, '157.48.168.157', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-12 05:50:30', 105, NULL, NULL),
(382, 0, '60.254.11.215', 1, 17, 2, 18, 2, NULL, 1, 3, 2, NULL, NULL, NULL, NULL, NULL, 12, 12, NULL, NULL, '{\"placement\":\"1\",\"text\":\"Test \",\"thread\":\"#fff\",\"font\":\"\"}', '2021-03-12 08:02:26', 89, 116, NULL),
(383, 0, '31.210.180.48', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-13 03:23:23', 105, NULL, NULL),
(384, 0, '76.19.104.143', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-15 16:48:27', 105, NULL, NULL),
(385, 0, '180.253.141.92', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-16 05:03:18', 105, NULL, NULL),
(386, 0, '36.72.218.147', 1, 18, 2, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-16 05:25:16', 105, NULL, NULL),
(387, 0, '114.5.249.216', 1, 18, 1, 5, 2, NULL, 1, 1, 2, NULL, NULL, NULL, 2, NULL, 11, 12, NULL, NULL, NULL, '2021-03-16 05:34:36', 107, NULL, NULL),
(388, 0, '109.64.5.238', 1, 18, 1, 2, 1, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-16 11:06:55', 108, NULL, NULL),
(389, 0, '36.72.218.147', 1, 17, 1, 19, NULL, NULL, 1, 1, 9, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-17 01:13:11', 90, NULL, NULL),
(390, 0, '104.236.44.95', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-18 23:35:29', NULL, NULL, NULL),
(391, 0, '72.79.53.16', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-18 23:56:27', NULL, NULL, NULL),
(392, 0, '54.190.100.55', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-19 01:55:07', NULL, NULL, NULL),
(393, 0, '71.121.180.253', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, 1, NULL, 11, 12, NULL, NULL, NULL, '2021-03-19 14:23:28', 105, NULL, NULL),
(394, 0, '210.1.246.82', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-20 06:14:35', NULL, NULL, NULL),
(395, 0, '136.232.127.150', 1, 18, 1, 1, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, 12, 12, 10, '{\"collar_out\":\"17\",\"collar_in\":\"\",\"cuff_out\":\"17\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"\"}', '{\"placement\":\"1\",\"text\":\"Hello\",\"thread\":\"#000000\",\"font\":\"FREDOKA\"}', '2021-03-20 06:14:42', 102, NULL, NULL),
(396, 0, '49.34.64.36', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-20 06:52:44', NULL, NULL, NULL),
(397, 0, '1.38.162.98', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, 2, 1, NULL, 11, 10, 10, '{\"collar_out\":\"18\",\"collar_in\":\"\",\"cuff_out\":\"18\",\"cuff_in\":\"18\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"18\",\"sleeve_placket\":\"\"}', '{\"placement\":\"1\",\"text\":\"Vaish\",\"thread\":\"#fff\",\"font\":\"\"}', '2021-03-20 06:53:00', 92, NULL, NULL),
(398, 0, '42.106.218.40', 1, 17, 1, 5, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-20 07:29:18', 90, NULL, NULL),
(399, 0, '27.106.11.77', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-20 09:06:19', 105, NULL, NULL),
(400, 0, '95.70.154.13', 1, 18, 2, 2, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-23 12:17:27', 105, NULL, NULL),
(401, 0, '42.108.221.16', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-24 12:41:40', NULL, NULL, NULL),
(402, 0, '42.108.204.64', 1, 18, 1, 1, 2, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-24 12:44:30', 108, NULL, NULL),
(403, 0, '219.91.237.24', 1, 17, 2, 1, NULL, NULL, 1, 2, 3, NULL, NULL, 3, NULL, NULL, 12, 12, NULL, NULL, NULL, '2021-03-24 12:45:30', 85, NULL, NULL),
(404, 0, '42.108.205.64', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-24 13:03:18', 90, NULL, NULL),
(405, 0, '180.253.171.75', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-25 01:05:18', 105, NULL, NULL),
(406, 0, '43.250.80.27', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-25 04:40:11', NULL, NULL, NULL),
(407, 0, '202.47.118.113', 1, 18, 2, 1, NULL, NULL, 1, 3, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-25 04:40:15', 105, NULL, NULL),
(408, 0, '59.103.190.14', 1, 18, 1, 14, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, '{\"collar_out\":\"\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"pocket_fabric\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"17\"}', NULL, '2021-03-28 11:00:52', 105, NULL, NULL),
(409, 0, '180.253.160.149', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-29 01:36:26', 105, NULL, NULL),
(410, 0, '36.73.190.198', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-29 22:14:31', 105, NULL, NULL),
(411, 0, '157.55.39.67', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-03-30 01:43:49', NULL, NULL, NULL),
(412, 0, '13.66.139.7', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-04 00:58:59', NULL, NULL, NULL),
(413, 0, '40.77.167.81', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-07 17:38:40', NULL, NULL, NULL),
(414, 0, '27.59.49.55', 1, 18, 2, 2, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-10 09:10:25', 105, NULL, NULL),
(415, 0, '84.33.84.255', 1, 18, 1, 1, NULL, 2, 12, 1, 2, NULL, NULL, NULL, NULL, NULL, 12, 12, NULL, NULL, NULL, '2021-04-12 13:50:56', 100, NULL, NULL),
(416, 0, '122.172.254.229', 1, 18, 2, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-13 04:08:13', 105, NULL, NULL),
(417, 0, '207.46.13.90', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-15 09:17:11', 105, NULL, NULL),
(418, 0, '122.179.127.225', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-15 10:15:55', 105, NULL, NULL),
(419, 0, '13.66.139.100', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-17 16:25:07', NULL, NULL, NULL),
(420, 0, '207.46.13.86', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-20 23:24:31', NULL, NULL, NULL),
(421, 0, '66.249.70.23', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-23 10:41:52', NULL, NULL, NULL),
(422, 0, '66.249.70.25', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-23 11:11:28', NULL, NULL, NULL),
(423, 0, '207.46.13.171', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-24 08:27:17', NULL, NULL, NULL),
(424, 0, '66.249.70.20', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-25 09:20:18', 105, NULL, NULL),
(425, 0, '66.249.70.22', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-25 09:23:36', 105, NULL, NULL),
(426, 0, '223.191.48.254', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-25 14:09:56', 105, NULL, NULL),
(428, 0, '69.122.206.217', 1, 18, 1, 1, NULL, NULL, 15, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-30 13:09:58', 105, NULL, NULL),
(429, 0, '40.77.167.38', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-04-30 21:01:16', NULL, NULL, NULL),
(430, 0, '49.207.199.122', 1, 18, 1, 1, NULL, NULL, 9, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-04 13:20:59', 105, NULL, NULL),
(431, 0, '49.207.199.122', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-04 13:26:17', NULL, NULL, NULL),
(432, 0, '197.210.76.82', 1, 17, 2, 1, NULL, NULL, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, 12, 12, 10, NULL, NULL, '2021-05-05 00:15:19', 85, NULL, NULL),
(433, 0, '197.210.52.39', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-05 00:29:00', 105, NULL, NULL),
(434, 0, '49.49.217.129', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-05 15:11:17', 90, NULL, NULL),
(435, 0, '124.122.192.125', 1, 18, 2, 13, 2, 3, 1, 1, 9, NULL, NULL, 3, NULL, NULL, 12, 10, 10, '{\"collar_out\":\"\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"17\",\"button_placket\":\"\",\"sleeve_placket\":\"\"}', '{\"placement\":\"1\",\"text\":\"Your\",\"thread\":\"#fff\",\"font\":\"FREDOKA\"}', '2021-05-05 18:09:04', 104, 133, NULL),
(436, 0, '182.232.26.169', 1, 17, 1, 13, 2, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-05 18:12:53', 92, NULL, NULL),
(437, 0, '124.120.192.226', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-07 15:14:18', 90, 134, NULL),
(438, 0, '157.38.48.12', 1, 17, 2, 1, 1, NULL, 1, 2, 7, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-11 07:52:27', 92, NULL, NULL),
(439, 0, '157.38.43.157', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-11 16:22:49', 105, NULL, NULL),
(440, 0, '103.25.46.78', 1, 18, 1, 1, 2, NULL, 15, 1, 7, NULL, NULL, NULL, NULL, NULL, 12, 12, NULL, NULL, NULL, '2021-05-12 16:55:29', 103, NULL, NULL),
(441, 0, '94.102.54.166', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-13 18:00:14', 105, NULL, NULL),
(442, 0, '39.42.3.153', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-17 07:37:32', 105, NULL, NULL),
(443, 0, '82.145.42.104', 1, 17, 2, 2, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-17 11:43:09', 90, NULL, NULL),
(444, 0, '198.16.66.157', 1, 17, 1, 18, NULL, 2, 9, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, '{\"collar_out\":\"\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"18\",\"sleeve_placket\":\"\"}', '{\"placement\":\"\",\"text\":\"\",\"thread\":\"#fff\",\"font\":\"\"}', '2021-05-17 13:03:11', 92, 138, NULL),
(445, 0, '78.163.96.224', 1, 18, 2, 3, NULL, 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-17 15:48:38', 105, NULL, NULL),
(446, 0, '78.163.96.224', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-17 15:49:42', 90, NULL, NULL),
(447, 0, '62.138.24.79', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-18 00:04:25', NULL, NULL, NULL),
(448, 0, '62.138.24.79', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-18 00:05:06', NULL, NULL, NULL),
(449, 0, '39.42.108.167', 1, 18, 2, 1, NULL, NULL, 1, 2, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-18 09:14:01', 105, NULL, NULL),
(450, 0, '39.42.74.157', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-18 15:22:05', 105, NULL, NULL),
(451, 0, '119.160.102.194', 1, 17, 2, 18, NULL, 2, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-18 15:31:05', 105, NULL, NULL),
(452, 0, '203.189.253.106', 1, 17, 2, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-18 15:35:27', 90, NULL, NULL),
(453, 0, '35.185.2.161', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-18 16:02:45', 105, NULL, NULL),
(454, 0, '66.249.66.85', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-19 23:36:23', 105, NULL, NULL),
(455, 0, '43.245.10.108', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-20 06:52:43', 105, NULL, NULL),
(456, 0, '49.15.23.24', 1, 17, 2, 17, NULL, 3, 1, 1, 6, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, '{\"collar_out\":\"18\",\"collar_in\":\"\",\"cuff_out\":\"\",\"cuff_in\":\"\",\"fastening_out\":\"\",\"fastening_in\":\"\",\"button_placket\":\"\",\"sleeve_placket\":\"\"}', '{\"placement\":\"1\",\"text\":\"Lion \",\"thread\":\"#fff\",\"font\":\"FREDOKA\"}', '2021-05-20 11:08:00', 92, 144, NULL),
(457, 0, '103.150.243.150', 1, 18, 2, 1, 2, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-20 12:01:40', 108, NULL, NULL),
(458, 0, '124.122.125.40', 1, 17, 2, 15, 1, 3, 1, 1, 6, NULL, NULL, 3, NULL, 2, 11, 12, NULL, NULL, NULL, '2021-05-20 17:06:23', 91, NULL, NULL),
(459, 0, '124.122.125.40', 1, 17, 2, 13, 1, 3, 1, 3, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-20 17:53:51', 91, NULL, NULL),
(460, 0, '119.160.98.13', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-20 18:25:27', 105, NULL, NULL),
(462, 0, '39.40.218.146', 1, 18, 2, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-20 18:48:44', 105, NULL, NULL),
(463, 0, '157.55.39.140', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-20 21:45:51', 90, NULL, NULL),
(464, 0, '119.63.138.205', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-21 06:17:04', 105, NULL, NULL),
(465, 0, '119.160.118.62', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-21 07:45:05', 105, NULL, NULL),
(466, 0, '2.238.108.219', 1, 17, 1, 4, NULL, 2, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-21 07:50:45', 90, NULL, NULL),
(467, 0, '66.249.69.3', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-21 08:09:00', 105, NULL, NULL),
(468, 0, '66.249.72.161', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-21 13:52:30', 105, NULL, NULL),
(469, 0, '39.40.199.211', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-21 19:31:28', 105, NULL, NULL),
(470, 0, '50.112.72.34', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-25 10:32:56', NULL, NULL, NULL),
(471, 0, '66.249.72.170', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-25 13:08:47', 105, NULL, NULL),
(472, 0, '39.42.77.188', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-25 15:03:41', 105, NULL, NULL),
(473, 0, '119.155.2.236', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-25 19:54:15', 105, NULL, NULL),
(474, 0, '202.12.83.196', 1, 17, 1, 16, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-26 12:42:48', 90, NULL, NULL),
(475, 0, '112.196.151.6', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-26 12:42:49', 105, NULL, NULL),
(477, 0, '49.49.222.217', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-26 18:24:41', 105, NULL, NULL),
(478, 0, '54.36.148.157', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-27 00:45:38', NULL, NULL, NULL),
(479, 0, '54.36.148.178', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-27 04:55:21', NULL, NULL, NULL),
(480, 0, '54.36.148.255', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-27 05:50:08', NULL, NULL, NULL),
(481, 0, '157.40.235.36', 1, 17, 2, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-30 07:41:20', 90, NULL, NULL),
(482, 0, '124.122.194.82', 1, 17, 1, 1, NULL, NULL, 15, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-30 18:59:25', 90, NULL, NULL),
(483, 0, '37.39.249.9', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-30 19:00:40', 105, NULL, NULL),
(484, 0, '109.161.178.77', 1, 18, 1, 1, 2, 1, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-31 19:12:24', 108, NULL, NULL),
(485, 0, '159.203.42.143', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-31 19:12:25', NULL, NULL, NULL),
(486, 0, '88.201.15.7', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-31 19:12:26', 105, NULL, NULL),
(487, 0, '109.161.178.77', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-05-31 19:14:39', 90, NULL, NULL),
(488, 0, '79.127.90.156', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-01 11:58:46', 105, NULL, NULL),
(489, 0, '72.79.50.66', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-02 18:55:16', NULL, NULL, NULL),
(490, 0, '72.79.50.66', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-02 18:55:24', NULL, NULL, NULL),
(491, 0, '185.191.171.6', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-06 03:43:18', NULL, NULL, NULL),
(492, 0, '185.191.171.24', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-07 03:23:00', NULL, NULL, NULL),
(493, 0, '173.231.59.202', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-07 15:26:38', NULL, NULL, NULL),
(494, 0, '173.231.59.202', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-07 15:48:45', NULL, NULL, NULL),
(495, 0, '185.191.171.45', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-07 17:40:35', NULL, NULL, NULL),
(496, 0, '119.63.138.88', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-07 19:41:27', 105, NULL, NULL),
(497, 0, '54.36.149.84', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-08 07:23:47', NULL, NULL, NULL),
(498, 0, '54.36.149.59', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-08 11:15:38', NULL, NULL, NULL),
(499, 0, '185.191.171.2', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-10 03:14:18', NULL, NULL, NULL),
(500, 0, '34.234.54.252', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-11 17:57:17', NULL, NULL, NULL),
(501, 0, '185.191.171.40', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-12 08:21:09', NULL, NULL, NULL),
(502, 0, '202.65.168.196', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-12 18:16:10', 105, NULL, NULL),
(503, 0, '36.99.136.141', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-14 19:34:37', NULL, NULL, NULL),
(504, 0, '36.99.136.138', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-14 19:36:15', NULL, NULL, NULL),
(505, 0, '36.99.136.139', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-14 19:36:22', NULL, NULL, NULL),
(506, 0, '111.7.100.25', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-15 06:51:20', NULL, NULL, NULL),
(507, 0, '111.7.100.24', 1, 17, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-15 06:51:22', NULL, NULL, NULL),
(508, 0, '82.79.48.142', 1, 18, 2, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-15 07:03:12', 105, NULL, NULL),
(509, 0, '49.37.180.121', 1, 18, 2, 1, 2, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-15 11:46:57', 108, NULL, NULL),
(510, 0, '36.99.136.131', 1, 18, 1, 1, NULL, NULL, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-15 14:28:44', NULL, NULL, NULL),
(511, 0, '49.36.215.15', 1, 17, 1, 19, 1, 2, 1, 1, 2, NULL, NULL, NULL, NULL, NULL, 11, 12, NULL, NULL, NULL, '2021-06-15 19:14:16', 91, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactivated',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`) VALUES
(1, 'Casual Shirt', 'casual-shirt', 1, '2020-04-27 04:43:20'),
(2, 'Denim Shirt', 'denim-shirt', 1, '2020-04-27 04:43:20');

-- --------------------------------------------------------

--
-- Table structure for table `collars`
--

CREATE TABLE `collars` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` text NOT NULL,
  `thumb` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collars`
--

INSERT INTO `collars` (`id`, `title`, `subtitle`, `thumb`, `status`, `created_at`, `price`) VALUES
(1, 'Classic', '', 'uploads/custom/collar/2c0c67bda155fa22be0668223a2763dd-tZFhXISV-7 (1).svg', 1, '2020-04-05 23:49:06', 0),
(2, 'Button Down Classic', 'A Classic spread collar with ample room for a tie knot.', 'uploads/custom/collar/7d38e3e812f72896149dbcea864109fa-9PwkhFVW-4 (1).svg', 1, '2020-04-05 23:49:06', 0),
(3, 'Cut Away Classic', '', 'uploads/custom/collar/aeee67cf021734a2aab3d348c6b00621-j9H3ouFb-2 (1).svg', 1, '2020-04-05 23:49:06', 0),
(4, 'Cut Away Modern', '', 'uploads/custom/collar/3c109323ccf6b9fc5e9db3bd9b6f468f-QfjQZk6u-14.svg', 1, '2020-04-05 23:49:06', 0),
(5, 'Cut Away Extreme', '', 'uploads/custom/collar/c350a711aef7a94bbd00292f739fa555-1I4f4M90-16.svg', 1, '2020-04-05 23:49:06', 0),
(13, 'Cut Away 2 Button', '', 'uploads/custom/collar/58dcf2b19c9f56382e83517be55e06e21.svg', 1, '2020-04-05 23:49:06', 0),
(14, 'Button Down Modern', 'A Classic spread collar with ample room for a tie knot.', 'uploads/custom/collar/0fea17b24dffccbba44d7aa69d54172b5.svg', 1, '2020-04-05 23:49:06', 0),
(15, 'Club Modern', '', 'uploads/custom/collar/7b7c01809fecdd984ab3908d895dfccb20.svg', 1, '2020-04-05 23:49:06', 0),
(16, 'Mao', '', 'uploads/custom/collar/ea196b5613e2b208c539baddbcc6295512.svg', 1, '2020-04-05 23:49:06', 0),
(17, 'Wing Collar', '', 'uploads/custom/collar/9e5010a78ff6df8254ee68b046ebf6ba9 (1).svg', 1, '2020-04-05 23:49:06', 0),
(18, 'Pin', '', 'uploads/custom/collar/0a182eaab7c3cf576df6bf5404dcd3f918.svg', 1, '2020-04-05 23:49:06', 0),
(19, 'Turndown', '', 'uploads/custom/collar/a1b3872fc19dc5ed9d197c1a5f3958a325.svg', 1, '2020-04-05 23:49:06', 0);

-- --------------------------------------------------------

--
-- Table structure for table `collar_stays`
--

CREATE TABLE `collar_stays` (
  `id` int(11) NOT NULL,
  `collar_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` text NOT NULL,
  `thumb` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collar_stays`
--

INSERT INTO `collar_stays` (`id`, `collar_id`, `title`, `subtitle`, `thumb`, `status`, `created_at`, `price`) VALUES
(1, 1, 'Insert', 'Sewn-in collar stays provide extra support to the collar and are not removable. Not available for linen, denim or flannel.', 'uploads/custom/collar-stays/2d15e53d67e99d0fd238a0244e1da762collar-stays-insert.svg', 1, '2020-04-05 23:51:23', 1),
(2, 1, 'Hidden button down ', 'A smart add-on feature that keeps the shirt collar in place at all times. A button hidden underneath the tip of the collar point secures the collar with a loop to keep it in place. ', 'uploads/custom/collar-stays/9b302f622ebd0d30fdc83316a1dd88e8collar-stays-hidden.svg', 1, '2020-04-05 23:51:23', 2);

-- --------------------------------------------------------

--
-- Table structure for table `collar_stiffness`
--

CREATE TABLE `collar_stiffness` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumb` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collar_stiffness`
--

INSERT INTO `collar_stiffness` (`id`, `title`, `thumb`, `status`, `created_at`) VALUES
(1, 'Light', 'uploads/custom/collar-stiffness/light-stiffness.svg', 1, '2020-04-06 00:12:25'),
(2, 'Medium', 'uploads/custom/collar-stiffness/medium-stiffness.svg', 1, '2020-04-06 00:12:25'),
(3, 'Hard', 'uploads/custom/collar-stiffness/542b95b8111519b93b5168f30cc0d553hard-stiffness.svg', 1, '2020-04-06 00:12:42');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `text`, `created_at`) VALUES
(14, 'Drew Daugherty', 'vygumeku@mailinator.com', 'Dolor non commodi qu', 'Vel totam omnis hic ', '2020-07-28 13:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `contrasts`
--

CREATE TABLE `contrasts` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumb` text NOT NULL,
  `mi_name` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contrasts`
--

INSERT INTO `contrasts` (`id`, `title`, `thumb`, `mi_name`, `status`, `created_at`) VALUES
(1, 'Outside Collar', 'uploads/custom/contrast/42c19fe65c847964af72567a647c639affb46d1cf2663a86682ed4d8296ddfafcollar-fabric.svg', 'contrast-collar-total', 1, '2020-04-06 01:51:03'),
(2, 'Inside Collar', 'uploads/custom/contrast/inside-collar.svg', 'contrast-collar-inside', 1, '2020-04-06 01:51:03'),
(3, 'Outside Cuff', 'uploads/custom/contrast/cuff-fabric.svg', 'contrast-cuff-total', 1, '2020-08-08 13:13:24'),
(4, 'Inside Cuff', 'uploads/custom/contrast/inside-cuff.svg', 'contrast-cuff-inside', 1, '2020-08-08 13:15:26'),
(5, 'Pocket', 'uploads/custom/contrast/pocket-fabric.svg', 'contrast-pocket-fabric', 1, '2020-08-08 13:19:46'),
(6, 'Placket', 'uploads/custom/contrast/outside-fastening.svg', 'contrast-button-fastening', 1, '2020-08-08 13:15:26'),
(9, 'Button Fasten', 'uploads/custom/contrast/20320f196ff9f5a8b1240cec07f1b52c-anSwDIb3-85.svg', 'contrast-inside-fastening', 1, '2020-08-08 13:15:26'),
(10, 'In Fasten', 'uploads/custom/contrast/8c79594991ab74cce9f1ed32a9201071-RggrKMeq-65.svg', 'contrast-outside-fastening', 1, '2020-08-08 13:15:26'),
(11, 'Sleeve Placket', 'uploads/custom/contrast/sleeve-placket.svg', 'contrast-sleeve-placket', 1, '2020-08-08 13:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `contrast_data`
--

CREATE TABLE `contrast_data` (
  `id` int(11) NOT NULL,
  `fab_id` int(11) NOT NULL,
  `collar_out` text NOT NULL,
  `collar_in` text NOT NULL,
  `cuff_out` text NOT NULL,
  `cuff_in` text NOT NULL,
  `fastening_in` text NOT NULL,
  `sleeve_placket` text NOT NULL,
  `cuff_backs` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=inactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `collar_back` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contrast_data`
--

INSERT INTO `contrast_data` (`id`, `fab_id`, `collar_out`, `collar_in`, `cuff_out`, `cuff_in`, `fastening_in`, `sleeve_placket`, `cuff_backs`, `status`, `created_at`, `collar_back`) VALUES
(6, 18, '[{\"id\":1,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eebusiness-classic-out.png\"},{\"id\":2,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eebutton-classic-out.png\"},{\"id\":3,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eecutway-classic-out.png\"},{\"id\":4,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eecutway-modern-out.png\"},{\"id\":5,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eecutway-extreme-out.png\"},{\"id\":13,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eecutway-duble-button-out.png\"},{\"id\":14,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eebutton-modern-out.png\"},{\"id\":15,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eeclub-out.png\"},{\"id\":16,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eemao-out.png\"},{\"id\":17,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eewing-out.png\"},{\"id\":18,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eepin-out.png\"},{\"id\":19,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eeturndown-out.png\"}]', '[{\"id\":1,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eebusiness-classic-in.png\"},{\"id\":2,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eebutton-classic-in.png\"},{\"id\":3,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eecutway-classic-in.png\"},{\"id\":4,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eecutway-modern-in.png\"},{\"id\":5,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eecutway-extreme-in.png\"},{\"id\":13,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eecutway-duble-button-in.png\"},{\"id\":14,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eebutton-modern-in.png\"},{\"id\":15,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eeclub-in.png\"},{\"id\":16,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eemao-in.png\"},{\"id\":17,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eewing-in.png\"},{\"id\":18,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eepin-in.png\"},{\"id\":19,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eeturndown-in.png\"}]', '[{\"id\":1,\"url\":\"uploads/contrast/18/f863bc023fb43978f45bc32c442fa03csingle-front.png\"},{\"id\":6,\"url\":\"uploads/contrast/18/f863bc023fb43978f45bc32c442fa03cfranch-front.png\"},{\"id\":9,\"url\":\"uploads/contrast/18/f863bc023fb43978f45bc32c442fa03csingle-front.png\"},{\"id\":10,\"url\":\"uploads/contrast/18/f863bc023fb43978f45bc32c442fa03csingle-front.png\"},{\"id\":11,\"url\":\"uploads/contrast/18/f863bc023fb43978f45bc32c442fa03clink-front.png\"},{\"id\":12,\"url\":\"uploads/contrast/18/f863bc023fb43978f45bc32c442fa03cshort-front.png\"}]', '[{\"id\":1,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eesingle-front-in.png\"},{\"id\":6,\"url\":\"\"},{\"id\":9,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eesingle-front-in.png\"},{\"id\":10,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eesingle-front-in.png\"},{\"id\":11,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eelink-front-in.png\"},{\"id\":12,\"url\":\"uploads/contrast/18/cae8a35e375810d0c14666a89475e6eeshort-front-in.png\"}]', 'uploads/contrast/18/cae8a35e375810d0c14666a89475e6eefasten.png', '[{\"id\":1,\"url\":\"uploads/contrast/18/b18d2b5984ecdfbed653cfdc36559a1asingle-two_button-back.png\"},{\"id\":6,\"url\":\"uploads/contrast/18/b18d2b5984ecdfbed653cfdc36559a1asingle-two_button-back.png\"},{\"id\":9,\"url\":\"uploads/contrast/18/b18d2b5984ecdfbed653cfdc36559a1asingle-two_button-back.png\"},{\"id\":10,\"url\":\"uploads/contrast/18/b18d2b5984ecdfbed653cfdc36559a1asingle-two_button-back.png\"},{\"id\":11,\"url\":\"uploads/contrast/18/b18d2b5984ecdfbed653cfdc36559a1asingle-two_button-back.png\"},{\"id\":12,\"url\":\"uploads/contrast/18/b18d2b5984ecdfbed653cfdc36559a1asingle-two_button-back.png\"}]', '[{\"id\":1,\"url\":\"uploads/contrast/18/b9045d318fb1a921474b8cd4511c16e3single-two_button-back.png\"},{\"id\":6,\"url\":\"uploads/contrast/18/b9045d318fb1a921474b8cd4511c16e3franch-back.png\"},{\"id\":9,\"url\":\"uploads/contrast/18/b9045d318fb1a921474b8cd4511c16e3single-two_button-back.png\"},{\"id\":10,\"url\":\"uploads/contrast/18/b9045d318fb1a921474b8cd4511c16e3single-two_button-back.png\"},{\"id\":11,\"url\":\"uploads/contrast/18/b9045d318fb1a921474b8cd4511c16e3link-back.png\"},{\"id\":12,\"url\":\"uploads/contrast/18/2670fc4bcdeec86fa3ddcd4ea3049002short-back.png\"}]', 1, '2020-12-10 13:57:50', 'uploads/contrast/18e91989ae7401d74e97e29e9c51a2783c-w4O3NaOg-collar_back.png'),
(8, 17, '[{\"id\":1,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacebusiness-classic-out.png\"},{\"id\":2,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacebutton-classic-out.png\"},{\"id\":3,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacecutway-classic-out.png\"},{\"id\":4,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacecutway-modern-out.png\"},{\"id\":5,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacecutway-extreme-out.png\"},{\"id\":13,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacecutway-duble-button-out.png\"},{\"id\":14,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacebutton-modern-out.png\"},{\"id\":15,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4baceclub-out.png\"},{\"id\":16,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacemao-out.png\"},{\"id\":17,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacewing-out.png\"},{\"id\":18,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacepin-out.png\"},{\"id\":19,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4baceturndown-out.png\"}]', '[{\"id\":1,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacebusiness-classic-in.png\"},{\"id\":2,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacebutton-classic-in.png\"},{\"id\":3,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacecutway-classic-in.png\"},{\"id\":4,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacecutway-modern-in.png\"},{\"id\":5,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacecutway-extreme-in.png\"},{\"id\":13,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacecutway-duble-button-in.png\"},{\"id\":14,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacebutton-modern-in.png\"},{\"id\":15,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4baceclub-in.png\"},{\"id\":16,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacemao-in.png\"},{\"id\":17,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacewing-in.png\"},{\"id\":18,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacepin-in.png\"},{\"id\":19,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4baceturndown-in.png\"}]', '[{\"id\":1,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacesingle-front.png\"},{\"id\":6,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacefranch-front.png\"},{\"id\":9,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacesingle-front.png\"},{\"id\":10,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacesingle-front.png\"},{\"id\":11,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacelink-front.png\"},{\"id\":12,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4baceshort-front.png\"}]', '[{\"id\":1,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacesingle-front-in.png\"},{\"id\":6,\"url\":\"\"},{\"id\":9,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacesingle-front-in.png\"},{\"id\":10,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacesingle-front-in.png\"},{\"id\":11,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacelink-front-in.png\"},{\"id\":12,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4baceshort-front-in.png\"}]', 'uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacefasten.png', '[{\"id\":1,\"url\":\"uploads/contrast/17/185f8a636afb918993dd9455a6aea30dsingle-back.png\"},{\"id\":6,\"url\":\"uploads/contrast/17/185f8a636afb918993dd9455a6aea30dsingle-back.png\"},{\"id\":9,\"url\":\"uploads/contrast/17/185f8a636afb918993dd9455a6aea30dsingle-back.png\"},{\"id\":10,\"url\":\"uploads/contrast/17/185f8a636afb918993dd9455a6aea30dsingle-back.png\"},{\"id\":11,\"url\":\"uploads/contrast/17/185f8a636afb918993dd9455a6aea30dsingle-back.png\"},{\"id\":12,\"url\":\"uploads/contrast/17/185f8a636afb918993dd9455a6aea30dsingle-back.png\"}]', '[{\"id\":1,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacesingle-two_button-back.png\"},{\"id\":6,\"url\":\"uploads/contrast/17/121d8e0fa49a5c4d8c26ad998f9d15d1franch-back.png\"},{\"id\":9,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacesingle-two_button-back.png\"},{\"id\":10,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4bacesingle-two_button-back.png\"},{\"id\":11,\"url\":\"uploads/contrast/17/121d8e0fa49a5c4d8c26ad998f9d15d1link-back.png\"},{\"id\":12,\"url\":\"uploads/contrast/17/240d47a7cd2bc1eb4e8c0bb8d4c4baceshort-back.png\"}]', 1, '2020-12-12 12:45:38', 'uploads/contrast/17d5b5fcd75aaccefa70fe6247925c07c9-OYxPVoyc-cuff_back.png');

-- --------------------------------------------------------

--
-- Table structure for table `cuffs`
--

CREATE TABLE `cuffs` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` text NOT NULL,
  `thumb` text NOT NULL,
  `image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cuffs`
--

INSERT INTO `cuffs` (`id`, `title`, `subtitle`, `thumb`, `image`, `status`, `created_at`) VALUES
(1, 'Single Button', 'A customer Favorite', 'uploads/custom/cuffs/2c58125a771df6a8090a33a82fec8989-Hd67KTDU-2.svg', '', 1, '2020-04-06 00:16:43'),
(6, 'French Cuff', 'Can be enlarged and use with cuff links', 'uploads/custom/cuffs/8ede36c213947b626a9259f73f2f5af57.svg', '', 1, '2020-04-06 00:16:43'),
(9, 'Convertible', 'A customer Favorite', 'uploads/custom/cuffs/c5ba9eee96c88354b9360d33d6066aa6-X5Nc3jW5-4_4.svg', '', 1, '2020-04-06 00:16:43'),
(10, 'Double Button', 'Can be enlarged and use with cuff links', 'uploads/custom/cuffs/6b1c5fd366875e1ddd3d2e77fa406727-t0LC22mq-6.svg', '', 1, '2020-04-06 00:16:43'),
(11, 'Link Cuff', 'A customer Favorite', 'uploads/custom/cuffs/14184a2828f376cc5d18f01d9dcf96548.svg', '', 1, '2020-04-06 00:16:43'),
(12, 'Narrow', 'Can be enlarged and use with cuff links', 'uploads/custom/cuffs/94c90d04ed42afecd2ad102a8c6bbc349.svg', '', 1, '2020-04-06 00:16:43'),
(13, 'Single Button Rounded', 'A customer Favorite', 'uploads/custom/cuffs/93b8c75651a9b2bb1b8ea04bf9ea1a9e-kZ3TKWq2-2_1.svg', '', 1, '2020-04-06 00:16:43'),
(14, 'Convertible Rounded', 'A customer Favorite', 'uploads/custom/cuffs/fcea2a1fc34f50f080a4e7514c17eb9f-7ju219ha-4 (1).svg', '', 1, '2020-04-06 00:16:43'),
(15, 'Double Button Rounded', 'Can be enlarged and use with cuff links', 'uploads/custom/cuffs/519a8802929e87f7c03a2348c0f9895d-gZjM65No-6_1.svg', '', 1, '2020-04-06 00:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_method`
--

CREATE TABLE `delivery_method` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `in_price` int(11) DEFAULT NULL,
  `in_delivery_time` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created` datetime NOT NULL DEFAULT current_timestamp(),
  `logo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_method`
--

INSERT INTO `delivery_method` (`id`, `name`, `in_price`, `in_delivery_time`, `status`, `created`, `logo`) VALUES
(1, 'DHL', 5, '3 days', 1, '2020-04-30 05:59:50', 'uploads/shipping-dhl.png'),
(2, 'Fedex', 7, '2 days', 1, '2020-04-30 05:59:50', 'uploads/shipping-fedex.png');

-- --------------------------------------------------------

--
-- Table structure for table `fabrics`
--

CREATE TABLE `fabrics` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `tag_ling` text DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1=regular;2=featured;3=premium;4=luxury;5=non-iron;',
  `weight` int(11) NOT NULL DEFAULT 1 COMMENT '1=regular;2=Very light;2=light;3=medium;4=heavy;5=very heavy;',
  `pattern` int(11) NOT NULL DEFAULT 1 COMMENT '1=solid; 2=striped;3=Checked;4=Printed',
  `color` varchar(100) DEFAULT NULL,
  `thumb` text DEFAULT NULL,
  `shape` text NOT NULL,
  `pro_img` text DEFAULT NULL,
  `gallary_image` text DEFAULT NULL,
  `elements` text DEFAULT NULL,
  `main_body` text DEFAULT NULL,
  `collars` text DEFAULT NULL,
  `cuffs` text DEFAULT NULL,
  `back_cuffs` text DEFAULT NULL,
  `sleeves` text DEFAULT NULL,
  `plackets` text DEFAULT NULL,
  `pockets` text DEFAULT NULL,
  `pocket_style` text DEFAULT NULL,
  `pocket_cover` text DEFAULT NULL,
  `bottom_shapes` text DEFAULT NULL,
  `back_details` text DEFAULT NULL,
  `back_yokes` text DEFAULT NULL,
  `button` int(11) DEFAULT NULL,
  `button_thread` text DEFAULT NULL,
  `contrasts` text DEFAULT NULL,
  `is_default` int(11) NOT NULL DEFAULT 2 COMMENT '1=yes;2=no',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fabrics`
--

INSERT INTO `fabrics` (`id`, `title`, `tag_ling`, `price`, `description`, `type`, `weight`, `pattern`, `color`, `thumb`, `shape`, `pro_img`, `gallary_image`, `elements`, `main_body`, `collars`, `cuffs`, `back_cuffs`, `sleeves`, `plackets`, `pockets`, `pocket_style`, `pocket_cover`, `bottom_shapes`, `back_details`, `back_yokes`, `button`, `button_thread`, `contrasts`, `is_default`, `status`, `created_at`, `category`) VALUES
(17, 'FABRIC-6499', 'Lorem Ipsum is simply dummy', 85, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2, 3, 1, 'Dark Red', 'uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dIMG-6499.JPG', 'uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dfeatured.png', 'uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dIMG-6499.JPG', '[\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dfeatured.png\"]', '{\"weight\":\"130\",\"yarn\":\"60/1\",\"weave\":\"Satin\"}', 'uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dbody.png', '[{\"id\":1,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dbusiness-classic.png\"},{\"id\":2,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dbutton-classic.png\"},{\"id\":3,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dcutway-classic.png\"},{\"id\":4,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dcutway-modern.png\"},{\"id\":5,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dcutway-extreme.png\"},{\"id\":13,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dcutway-duble-button.png\"},{\"id\":14,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dbutton-modern.png\"},{\"id\":15,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dclub.png\"},{\"id\":16,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dmao.png\"},{\"id\":17,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dwing.png\"},{\"id\":18,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dpin.png\"},{\"id\":19,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dturndown.png\"}]', '[{\"id\":1,\"url\":\"uploads/shirt/17/5cfc5228d19fe04d273f5ab04fe7a412-3C2yjUpB-single-front.png\"},{\"id\":6,\"url\":\"uploads/shirt/17/5cfc5228d19fe04d273f5ab04fe7a412-n0J551tD-franch-front.png\"},{\"id\":9,\"url\":\"uploads/shirt/17/5cfc5228d19fe04d273f5ab04fe7a412-RIE89D7g-single-front.png\"},{\"id\":10,\"url\":\"uploads/shirt/17/5cfc5228d19fe04d273f5ab04fe7a412-K68lQoXd-single-front.png\"},{\"id\":11,\"url\":\"uploads/shirt/17/5cfc5228d19fe04d273f5ab04fe7a412-zBf8FoSK-link-front.png\"},{\"id\":12,\"url\":\"uploads/shirt/17/4e0bcbddd2ef215b3364079d42bbeff0-slOxxpBj-short-front.png\"},{\"id\":13,\"url\":\"uploads/shirt/17/5cfc5228d19fe04d273f5ab04fe7a412-K68lQoXd-single-front.png\"},{\"id\":14,\"url\":\"uploads/shirt/17/5cfc5228d19fe04d273f5ab04fe7a412-zBf8FoSK-link-front.png\"},{\"id\":15,\"url\":\"uploads/shirt/17/e52a1665fc229b09a6914e8a0e5f7960-c06NxvwT-single-front.png\"}]', '[{\"id\":1,\"url\":\"uploads/shirt/17/98a16e9be11e1963e629bacd48514890-EAnJAZri-single-back.png\"},{\"id\":6,\"url\":\"uploads/shirt/17/98a16e9be11e1963e629bacd48514890-ESVBhcCn-franch-back.png\"},{\"id\":9,\"url\":\"uploads/shirt/17/98a16e9be11e1963e629bacd48514890-I1L1QavR-single-convertible-back.png\"},{\"id\":10,\"url\":\"uploads/shirt/17/98a16e9be11e1963e629bacd48514890-AXptuLdi-single-two_button-back.png\"},{\"id\":11,\"url\":\"uploads/shirt/17/f22dd4ec3554a45388508044dea0f60e-wu5P2sTb-link-back.png\"},{\"id\":12,\"url\":\"uploads/shirt/17/a7f0c851e0d6b181f6312c1c4d5932c5-flM3CM4t-short-back.png\"},{\"id\":13,\"url\":\"uploads/shirt/17/98a16e9be11e1963e629bacd48514890-AXptuLdi-single-two_button-back.png\"},{\"id\":14,\"url\":\"uploads/shirt/17/6e4c4d0bcccf2a9911f89950d48ee636-2GyfKMbI-single-back-baveled.png\"},{\"id\":15,\"url\":\"uploads/shirt/17/0b0ced9ef74fa06ff776897eb8bb3d53-YgReOcx2-single-back-baveled.png\"}]', '[{\"id\":1,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dlong.png\"},{\"id\":2,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dshort.png\"}]', '[{\"id\":1,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dwith.png\"},{\"id\":2,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dwithout.png\"},{\"id\":3,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dhidden.png\"}]', '[{\"id\":2,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dleft.png\"},{\"id\":3,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dboth.png\"},{\"id\":4,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dleft-v.png\"},{\"id\":5,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dboth-v.png\"},{\"id\":6,\"url\":\"uploads/shirt/17/7527ac3b4f8f3fe940fb27ab1beb87ea-PxiBn6YQ-left-flap.png\"},{\"id\":7,\"url\":\"uploads/shirt/17/7527ac3b4f8f3fe940fb27ab1beb87ea-s7LhwiJW-both-flap.png\"},{\"id\":8,\"url\":\"uploads/shirt/17/c4632f284bb2dac51ab0282b8a360c68-XFus1yJ1-left-v-flap.png\"},{\"id\":9,\"url\":\"uploads/shirt/17/c4632f284bb2dac51ab0282b8a360c68-aBwZGrAp-both-v-flap.png\"}]', NULL, NULL, '{\"short\":[{\"id\":1,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dbottom-short-cut.png\"},{\"id\":2,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dbottom-short-cut-short.png\"}],\"long\":[{\"id\":1,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dbottom-cut.png\"},{\"id\":2,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dbottom-cut-short.png\"}]}', '[{\"id\":1,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dno.png\"},{\"id\":2,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dmiddle.png\"},{\"id\":3,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dsides.png\"}]', '[{\"id\":1,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dregular.png\"},{\"id\":2,\"url\":\"uploads/shirt/17/ffd71f65a4d821432a0e69d385f8572dsplit.png\"}]', 11, '12', NULL, 2, 1, '2020-12-10 12:59:26', 1),
(18, 'FABRIC-6493', 'Lorem Ipsum is simply dummy ', 100, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 3, 3, 4, 'Sky Blue', 'uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cIMG-6493.JPG', 'uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cfeatured.png', 'uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cIMG-6493.JPG', '[\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cfeatured.png\"]', '{\"weight\":\"130\",\"yarn\":\"60/1\",\"weave\":\"Satin\"}', 'uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cbody.png', '[{\"id\":1,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cbusiness-classic.png\"},{\"id\":2,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cbutton-classic.png\"},{\"id\":3,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8ccutway-classic.png\"},{\"id\":4,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8ccutway-modern.png\"},{\"id\":5,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8ccutway-extreme.png\"},{\"id\":13,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8ccutway-duble-button.png\"},{\"id\":14,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cbutton-modern.png\"},{\"id\":15,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cclub.png\"},{\"id\":16,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cmao.png\"},{\"id\":17,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cwing.png\"},{\"id\":18,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cpin.png\"},{\"id\":19,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cturndown.png\"}]', '[{\"id\":1,\"url\":\"uploads/shirt/18/982ba54289c47a684063a84b25920ad8-Wqz185Dv-single-front-rounded.png\"},{\"id\":6,\"url\":\"uploads/shirt/18/d9d89dbf9c89f79df7ff720e07b7de1c-sHt1Dzsq-franch-front.png\"},{\"id\":9,\"url\":\"uploads/shirt/18/d9d89dbf9c89f79df7ff720e07b7de1c-amY9AcnV-single-front.png\"},{\"id\":10,\"url\":\"uploads/shirt/18/037c52b12955723b74b04e95c75bbe23-KfhCWcZY-single-front.png\"},{\"id\":11,\"url\":\"uploads/shirt/18/037c52b12955723b74b04e95c75bbe23-rDZVvsyX-single-front.png\"},{\"id\":12,\"url\":\"uploads/shirt/18/037c52b12955723b74b04e95c75bbe23-Bul1AHYM-single-front.png\"},{\"id\":13,\"url\":\"uploads/shirt/18/369ff7a1a55356d99d88b62ab99556b8single-front.png\"},{\"id\":14,\"url\":\"uploads/shirt/18/2ce6edd6efba5574463eed138372df47-mknkgvH6-single-front-rounded.png\"},{\"id\":15,\"url\":\"uploads/shirt/18/2ce6edd6efba5574463eed138372df47-A0RvERa7-single-front-rounded.png\"}]', '[{\"id\":1,\"url\":\"uploads/shirt/18/421f7e7e714e0133c3375839285c79cf-iXxBUPjE-single-back.png\"},{\"id\":6,\"url\":\"uploads/shirt/18/f9b82c22a2fbcf8cb5b54a27aee25dd7franch-back.png\"},{\"id\":9,\"url\":\"uploads/shirt/18/8676803d13419cccf7e6fd5704252e55-2T0x7QRz-single-convertible-back.png\"},{\"id\":10,\"url\":\"uploads/shirt/18/7666d8799c765d707398ede8f5fccc5a-ayoxfHh4-single-back.png\"},{\"id\":11,\"url\":\"uploads/shirt/18/7666d8799c765d707398ede8f5fccc5a-jWFeLCsK-link-back.png\"},{\"id\":12,\"url\":\"uploads/shirt/18/7666d8799c765d707398ede8f5fccc5a-qbYvqrrW-short-back.png\"},{\"id\":13,\"url\":\"uploads/shirt/18/3c8322c5a10204c3c071a5da50ee7ca5-1vQMRGuP-single-two_button-back-rounded.png\"},{\"id\":14,\"url\":\"uploads/shirt/18/3c8322c5a10204c3c071a5da50ee7ca5-wPSeDIaO-single-two_button-back-rounded.png\"},{\"id\":15,\"url\":\"uploads/shirt/18/3c8322c5a10204c3c071a5da50ee7ca5-Q2TL3GBX-single-two_button-back-rounded.png\"}]', '[{\"id\":1,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8clong.png\"},{\"id\":2,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cshort.png\"}]', '[{\"id\":1,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cwith.png\"},{\"id\":2,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cwithout.png\"},{\"id\":3,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8chidden.png\"}]', '[{\"id\":2,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cleft.png\"},{\"id\":3,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cboth.png\"},{\"id\":4,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cleft-v.png\"},{\"id\":5,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cboth-v.png\"},{\"id\":6,\"url\":\"uploads/shirt/18/9a6cced9919f42c395f1aad0430261ee-nLbhEdDS-left-flap.png\"},{\"id\":7,\"url\":\"uploads/shirt/18/9a6cced9919f42c395f1aad0430261ee-5dTpSpym-both-flap.png\"},{\"id\":8,\"url\":\"uploads/shirt/18/80d4054723017a77763991e1d15c8335-EGH1i6Rq-left-v-flap.png\"},{\"id\":9,\"url\":\"uploads/shirt/18/80d4054723017a77763991e1d15c8335-OA4ZFAsy-both-v-flap.png\"}]', NULL, NULL, '{\"short\":[{\"id\":1,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cbottom-short-cut.png\"},{\"id\":2,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cbottom-short-cut-short.png\"}],\"long\":[{\"id\":1,\"url\":\"uploads/shirt/18/216f728f0fcff67ad3abe19b5fc7ff68-38BnNTFy-bottom-cut.png\"},{\"id\":2,\"url\":\"uploads/shirt/18/216f728f0fcff67ad3abe19b5fc7ff68-hE6KEGd9-bottom-cut-short.png\"}]}', '[{\"id\":1,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cno.png\"},{\"id\":2,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cmiddle.png\"},{\"id\":3,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8csides.png\"}]', '[{\"id\":1,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8cregular.png\"},{\"id\":2,\"url\":\"uploads/shirt/18/c74d4dcac49c84812e4f8eb1b7071e8csplit.png\"}]', 11, '12', NULL, 1, 1, '2020-12-10 13:09:02', 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`) VALUES
(1, 'Is this a secure site for purchases?', 'Absolutely! We work with top payment companies which guarantees your safety and security. All billing information is stored on our payment processing partner which has the most stringent level of certification available in the payments industry.'),
(2, 'Can I cancel my subscription?', 'You can cancel your subscription anytime in your account. Once the subscription is cancelled, you will not be charged next month. You will continue to have access to your account until your current subscription expires.'),
(3, 'How long are your contracts?', 'Currently, we only offer monthly subscription. You can upgrade or cancel your monthly account at any time with no further obligation.'),
(4, 'Can I update my card details?', 'Yes. Go to the billing section of your dashboard and update your payment information.'),
(5, 'Can I request refund?', 'Unfortunately, not. We do not issue full or partial refunds for any reason.'),
(6, 'Can I try your service for free?', 'Of course! We’re happy to offer a free plan to anyone who wants to try our service.');

-- --------------------------------------------------------

--
-- Table structure for table `fittings`
--

CREATE TABLE `fittings` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumb` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fittings`
--

INSERT INTO `fittings` (`id`, `title`, `thumb`, `status`, `created_at`) VALUES
(1, 'Slim fit', 'uploads/custom/fit/slim.png', 1, '2020-04-05 23:45:53'),
(2, 'Regular fit', 'uploads/custom/fit/regular.png', 1, '2020-04-05 23:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `home_page_settings`
--

CREATE TABLE `home_page_settings` (
  `id` int(11) NOT NULL,
  `meta_name` text DEFAULT NULL,
  `meta_value` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home_page_settings`
--

INSERT INTO `home_page_settings` (`id`, `meta_name`, `meta_value`, `type`) VALUES
(1, 'home_page_banner_background', 'uploads/home-page/3bb46c125978737d18c90abdf7dcfc02banner_background.jpg', 'banner'),
(2, 'home_page_banner_image', 'uploads/home-page/b6fc5f27864599677cf8cbf20ce0dfdabanner.png', 'banner'),
(3, 'home_page_banner_title', 'Make purchases with our app', 'banner'),
(4, 'home_page_banner_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem repellendus quasi fuga nesciunt dolorum nulla magnam veniam sapiente! Commodi sequi non animi ea dolor molestiae iste.', 'banner'),
(5, 'home_page_banner_button_text', 'CREATE YOUR OWN DESIGN', 'banner'),
(6, 'home_page_content_title_main', 'Why is it so great?', 'content'),
(7, 'home_page_content_text_main', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'content'),
(8, 'content_items', '{\"icon\":\"fa-flag-checkered\",\"title\":\"International\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam minima assumenda deleniti hic.\"}', 'content'),
(15, 'content_items', '{\"icon\":\"fa-flask\",\"title\":\"Experimental\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam minima assumenda deleniti hic.\"}', 'content'),
(16, 'home_page_content_image', 'uploads/home-page/d660c5a95e46ec4354bd3ec57bb6c28bcontent_image.png', 'content'),
(17, 'home_page_best_seller_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit fugit, error amet numquam iure provident voluptate esse quasi nostrum quisquam eum porro a pariatur veniam.', 'best_seller'),
(18, 'home_page_best_seller_quantity', '3', 'best_seller'),
(19, 'home_page_feature_text_main', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.', 'feature'),
(20, 'feature_items', '{\"icon\":\"fa-fire-extinguisher\",\"title\":\"CREATIVITY\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam minima assumenda deleniti hic.\"}', 'feature'),
(21, 'feature_items', '{\"icon\":\"fa-code\",\"title\":\"CODING\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores aperiam minima assumenda deleniti hic.\"}', 'feature'),
(22, 'content_items', '{\"icon\":\"fa-hourglass\",\"title\":\"Relaxing\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam minima assumenda deleniti hic.\"}', 'content'),
(23, 'content_items', '{\"icon\":\"fa-heart\",\"title\":\"Beloved\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam minima assumenda deleniti hic.\"}', 'content'),
(24, 'content_items', '{\"icon\":\"fa-bolt\",\"title\":\"Rapid\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam minima assumenda deleniti hic.\"}', 'content'),
(25, 'content_items', '{\"icon\":\"fa-magic\",\"title\":\"Magical\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores nam, aperiam minima assumenda deleniti hic.\"}', 'content'),
(26, 'feature_items', '{\"icon\":\"fa-users\",\"title\":\"PROFESSIONALISM\",\"text\":\"Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit maiores aperiam minima assumenda deleniti hic.\"}', 'feature'),
(27, 'testimonial_text', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit, error amet numquam iure provident voluptate esse quasi, veritatis totam voluptas nostrum quisquam eum porro a pariatur veniam.', 'testimonial'),
(28, 'faq_text', 'Got a question? We\'ve got answers. If you have some other questions, see our support center.', 'faq');

-- --------------------------------------------------------

--
-- Table structure for table `measurement`
--

CREATE TABLE `measurement` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_ip` text NOT NULL,
  `neck` varchar(50) DEFAULT NULL,
  `chest` varchar(50) DEFAULT NULL,
  `waist` varchar(50) DEFAULT NULL,
  `hip` varchar(50) DEFAULT NULL,
  `seat` varchar(50) DEFAULT NULL,
  `shirt_length` varchar(50) DEFAULT NULL,
  `sholder_width` varchar(50) DEFAULT NULL,
  `arm_length` varchar(50) DEFAULT NULL,
  `wrist` varchar(50) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `is_save` int(11) NOT NULL DEFAULT 1 COMMENT '1=no;2=yes',
  `profile_name` text DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1=tape;2=copy;3=quick',
  `height` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `collar` varchar(50) DEFAULT NULL,
  `sleeve_width` varchar(50) DEFAULT NULL,
  `bicep` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `measurement`
--

INSERT INTO `measurement` (`id`, `user_id`, `user_ip`, `neck`, `chest`, `waist`, `hip`, `seat`, `shirt_length`, `sholder_width`, `arm_length`, `wrist`, `created_at`, `is_save`, `profile_name`, `type`, `height`, `weight`, `collar`, `sleeve_width`, `bicep`) VALUES
(86, 36, '::1', '16', '42', NULL, NULL, NULL, NULL, '19', '25', NULL, '2020-10-25 00:18:19', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(87, 36, '::1', '16', '40', NULL, NULL, NULL, NULL, '19', '25', NULL, '2020-10-28 21:46:13', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(88, 36, '::1', '15', '32', '29', '28', '32', '28', '18', '19', '7', '2020-10-28 21:47:38', 2, 'sujon', 2, NULL, NULL, NULL, '', '9'),
(89, 36, '::1', '15.5', '39', NULL, NULL, NULL, NULL, '18', '24.5', NULL, '2020-11-11 02:12:06', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(91, 0, '::1', '14', '32', NULL, NULL, NULL, NULL, '16', '23', NULL, '2020-12-24 02:29:52', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(92, 0, '::1', '16', '41', NULL, NULL, NULL, NULL, '19', '25', NULL, '2020-12-24 02:34:42', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(93, 0, '::1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-24 02:35:00', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(94, 0, '39.36.171.180', '14', '33', NULL, NULL, NULL, NULL, '16', '23', NULL, '2020-12-28 10:32:22', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(95, 0, '216.18.204.202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-30 06:14:19', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(96, 36, '42.0.6.235', '15', '38', NULL, NULL, NULL, NULL, '17', '23.5', NULL, '2021-01-04 10:12:27', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(97, 36, '148.75.221.143', '16', '41', NULL, NULL, NULL, NULL, '19', '25', NULL, '2021-01-05 03:59:33', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(98, 0, '82.54.75.243', '14', '32', NULL, NULL, NULL, NULL, '16', '23', NULL, '2021-01-13 14:55:28', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(99, 0, '82.54.75.243', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-13 14:55:44', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(100, 0, '92.40.174.83', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-01-16 02:06:33', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(101, 36, '148.75.221.143', '17', '45', NULL, NULL, NULL, NULL, '20', '26', NULL, '2021-01-16 15:25:59', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(102, 0, '82.80.249.249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-01 06:03:03', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(103, 0, '202.63.195.88', '16.5', '42', NULL, NULL, NULL, NULL, '19.5', '25.5', NULL, '2021-02-03 07:17:25', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(104, 0, '202.63.195.88', '16', '42', NULL, NULL, NULL, NULL, '19', '25', NULL, '2021-02-03 07:22:29', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(105, 0, '202.63.195.88', '16.5', '42', NULL, NULL, NULL, NULL, '19.5', '25.5', NULL, '2021-02-03 07:40:33', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(106, 0, '202.63.195.88', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-03 07:40:52', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(107, 0, '122.171.159.243', '15', '38', NULL, NULL, NULL, NULL, '17', '23.5', NULL, '2021-02-12 02:32:25', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(108, 0, '148.75.221.143', '16.5', '43', NULL, NULL, NULL, NULL, '19.5', '25.5', NULL, '2021-02-19 06:36:34', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(109, 0, '148.75.221.143', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-19 07:04:49', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(110, 0, '154.160.16.237', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-23 06:39:32', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(111, 0, '183.87.11.51', '15', '38', NULL, NULL, NULL, NULL, '17', '23.5', NULL, '2021-03-08 14:46:21', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(112, 0, '103.78.53.99', '14.5', '36', NULL, NULL, NULL, NULL, '16.5', '23', NULL, '2021-03-09 01:07:19', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(113, 0, '84.33.84.255', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-10 12:38:28', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(114, 0, '103.233.219.109', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-12 06:28:46', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(115, 0, '165.225.231.117', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-12 06:28:55', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(116, 0, '60.254.11.215', '14.5', '35', NULL, NULL, NULL, NULL, '16.5', '23', NULL, '2021-03-12 08:00:49', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(117, 0, '60.254.11.215', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-12 08:07:57', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(118, 0, '1.38.162.98', '14.5', '35', NULL, NULL, NULL, NULL, '16.5', '23', NULL, '2021-03-20 07:04:46', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(119, 0, '207.46.13.104', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-30 05:06:45', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(120, 0, '151.49.173.31', '14', '33', NULL, NULL, NULL, NULL, '16', '23', NULL, '2021-04-08 02:56:16', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(121, 0, '151.49.173.31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-08 02:56:39', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(122, 0, '207.46.13.86', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-16 03:34:00', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(123, 0, '182.48.95.110', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-17 04:30:14', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(124, 0, '207.46.13.129', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-01 00:58:29', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(125, 0, '49.207.199.122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-04 13:26:21', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(126, 0, '197.210.76.82', '16.5', '44', NULL, NULL, NULL, NULL, '19.5', '25.5', NULL, '2021-05-05 00:21:04', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(127, 0, '197.210.76.82', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-05 00:21:50', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(128, 0, '124.122.192.125', '14', '34', NULL, NULL, NULL, NULL, '16', '23', NULL, '2021-05-05 22:48:56', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(129, 0, '124.122.192.125', '16', '40', NULL, NULL, NULL, NULL, '19', '25', NULL, '2021-05-05 22:50:01', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(130, 0, '115.87.151.107', '15', '37', NULL, NULL, NULL, NULL, '17', '23.5', NULL, '2021-05-05 22:51:04', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(131, 0, '124.122.192.125', '14.5', '35', NULL, NULL, NULL, NULL, '16.5', '23', NULL, '2021-05-05 22:56:28', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(132, 0, '124.122.192.125', '15.5', '39', NULL, NULL, NULL, NULL, '18', '24.5', NULL, '2021-05-05 22:57:02', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(133, 0, '124.122.192.125', '14.5', '36', NULL, NULL, NULL, NULL, '16.5', '23', NULL, '2021-05-05 22:57:55', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(134, 0, '124.120.192.226', '14.5', '35', NULL, NULL, NULL, NULL, '16.5', '23', NULL, '2021-05-07 15:16:12', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(135, 0, '171.96.190.51', '16', '41', NULL, NULL, NULL, NULL, '19', '25', NULL, '2021-05-07 15:17:10', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(136, 0, '171.96.190.51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-07 15:18:25', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(137, 0, '157.55.39.140', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-16 16:17:41', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(138, 0, '198.16.66.157', '15', '38', NULL, NULL, NULL, NULL, '17', '23.5', NULL, '2021-05-17 13:03:48', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(139, 0, '198.16.76.69', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-17 13:17:40', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(140, 0, '62.138.24.79', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-18 00:05:26', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(141, 0, '39.42.107.200', '14', '33', NULL, NULL, NULL, NULL, '16', '23', NULL, '2021-05-18 10:55:00', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(142, 0, '39.42.107.200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-18 10:56:58', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(143, 0, '39.42.74.157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-18 11:24:02', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(144, 0, '49.15.23.24', '15', '36', NULL, NULL, NULL, NULL, '17', '23.5', NULL, '2021-05-20 11:13:23', 2, 'Quick Size Measurement', 3, NULL, NULL, NULL, NULL, NULL),
(145, 0, '171.96.189.51', '15.5', '38', NULL, NULL, NULL, NULL, '18', '24.5', NULL, '2021-05-20 17:40:41', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(146, 0, '124.122.125.40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-20 17:41:06', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(147, 0, '66.249.72.170', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-21 08:45:51', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(148, 0, '39.42.77.188', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-25 15:04:16', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(149, 0, '202.12.83.196', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-26 12:44:34', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(150, 0, '157.55.39.61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-26 22:09:26', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(151, 0, '209.250.230.106', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-29 17:38:55', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(152, 0, '109.161.178.77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-05-31 19:13:39', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(153, 0, '72.79.50.66', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-02 18:55:59', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(154, 0, '196.196.216.232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-05 20:02:27', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(155, 0, '173.231.59.202', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-07 17:39:30', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(156, 0, '54.36.148.157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-09 08:44:35', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(157, 0, '185.191.171.19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-12 10:19:49', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL),
(158, 0, '185.191.171.24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-12 21:46:43', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(159, 0, '185.191.171.8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-13 02:46:14', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(160, 0, '54.36.149.22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-13 14:13:49', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(161, 0, '185.191.171.18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-15 06:58:20', 1, NULL, 2, NULL, NULL, NULL, NULL, NULL),
(162, 0, '185.191.171.23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-15 11:30:56', 1, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(163, 0, '49.36.215.15', '14', '34', NULL, NULL, NULL, NULL, '16', '23', NULL, '2021-06-15 19:16:28', 2, NULL, 1, NULL, NULL, NULL, NULL, NULL),
(164, 0, '49.36.215.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-06-15 19:17:24', 1, NULL, 3, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `measurement_meta`
--

CREATE TABLE `measurement_meta` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `background_image` text NOT NULL,
  `icon` text NOT NULL,
  `status` int(2) NOT NULL COMMENT '1=active, 2=inactive',
  `type` int(2) NOT NULL COMMENT '1=tape, 2=shirt',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `measurement_meta`
--

INSERT INTO `measurement_meta` (`id`, `title`, `description`, `background_image`, `icon`, `status`, `type`, `created_at`) VALUES
(2, 'neck', 'The neck measurement is taken around the neck with the tape resting on your shoulders. You should put one finger between the tape and the neck if you want to allow for some extra room.', 'img/measurement/mes-all/tape-neck.jpg', 'img/measurement/button-all/tape-neck.svg', 1, 1, '2020-10-06 18:52:01'),
(3, 'chest', 'The chest measurement is taken as a circumference measurement around your chest at the widest point. Stand in a relaxed posture and breathe out.\r\n\r\n', 'img/measurement/mes-all/tape-chest.jpg', 'img/measurement/button-all/tape-chest.svg', 1, 1, '2020-10-06 17:08:30'),
(4, 'waist', 'The waist measurement is taken as a circumference measurement around your waist just above your belly button. Stand in a relaxed posture and breathe out.\r\n\r\n', 'img/measurement/mes-all/tape-waist.jpg', 'img/measurement/button-all/tape-waist.svg', 1, 1, '2020-10-06 17:09:03'),
(5, 'hip', 'The hip measurement is taken as a circumference measurement around your hips at the widest part.\r\n\r\n', 'img/measurement/mes-all/tape-realhip.jpg', 'img/measurement/button-all/tape-realhip.svg', 1, 1, '2020-10-06 17:09:11'),
(6, 'seat', 'The seat measurement is taken as a circumference measurement around your seat at the widest part.\r\n\r\n', 'img/measurement/mes-all/tape-hip.jpg', 'img/measurement/button-all/tape-hip.svg', 1, 1, '2020-10-06 17:09:19'),
(7, 'shirt_length', 'The shirt length measurement is taken from the top of the shoulder, close to the mid side of your neck, following your body down to the point where you want your shirt to end.\r\n\r\n', 'img/measurement/mes-all/tape-shirtl.jpg', 'img/measurement/button-all/tape-shirtl.svg', 1, 1, '2020-10-06 20:32:30'),
(8, 'sholder_width', 'Think of a line going from your armpit straight upwards to your shoulder. Measure between those two points and hold the tape measure straight.\r\n\r\n', 'img/measurement/mes-all/tape-back.jpg', 'img/measurement/button-all/tape-back.svg', 1, 1, '2020-10-06 20:32:58'),
(9, 'arm_length', 'The sleeve length measurement is taken from the point of your shoulder (where you took the shoulder width measurement), following your bent arm down to where you want the sleeve to end. NOTE 1! Bend your arm slightly when taking this measurement. NOTE 2! This measurement is always the full length of the arm. For short sleeve and 3/4 sleeve you should still measure the full length of the arm.\r\n\r\n', 'img/measurement/mes-all/tape-arm.jpg', 'img/measurement/button-all/tape-arm.svg', 1, 1, '2020-10-06 20:33:10'),
(10, 'bicep', 'The biceps measurement is taken as a circumference measurement around your biceps. Relax the muscle and measure at the widest part of your upper arm.\r\n\r\n', 'img/measurement/mes-all/tape-bicep.jpg', 'img/measurement/button-all/tape-bicep.svg', 1, 1, '2020-10-06 17:10:30'),
(11, 'wrist', 'The wrist measurement is taken as a circumference measurement around your wrist. NOTE ! We will add movement ease according to the cuff you select.\r\n\r\n', 'img/measurement/mes-all/0d1b3d7b51ff80f56451279fac95af93cuff.jpg', 'img/measurement/button-all/tape-cuff.svg', 1, 1, '2020-10-07 08:06:59'),
(12, 'neck', 'The neck measurement is taken around the neck with the tape resting on your shoulders. You should put one finger between the tape and the neck if you want to allow for some extra room.\r\n\r\n', 'img/measurement/mes-all/shirt-neck.jpg', 'img/measurement/button-all/shirt-neck.svg', 1, 2, '2020-10-06 17:10:40'),
(13, 'chest', 'The chest measurement is taken as a circumference measurement around your chest at the widest point. Stand in a relaxed posture and breathe out.\r\n\r\n', 'img/measurement/mes-all/shirt-chest.jpg', 'img/measurement/button-all/shirt-chest.svg', 1, 2, '2020-10-06 17:10:46'),
(14, 'waist', 'The waist measurement is taken as a circumference measurement around your waist just above your belly button. Stand in a relaxed posture and breathe out.\r\n\r\n', 'img/measurement/mes-all/shirt-waist.jpg', 'img/measurement/button-all/shirt-waist.svg', 1, 2, '2020-10-06 17:10:51'),
(15, 'hip', 'The hip measurement is taken as a circumference measurement around your hips at the widest part.\r\n\r\n', 'img/measurement/mes-all/shirt-hip.jpg', 'img/measurement/button-all/shirt-hip.svg', 1, 2, '2020-10-06 17:10:57'),
(16, 'shirt_length', 'The shirt length measurement is taken from the top of the shoulder, close to the mid side of your neck, following your body down to the point where you want your shirt to end.\r\n\r\n', 'img/measurement/mes-all/shirt-shirtl.jpg', 'img/measurement/button-all/shirt-shirtl.svg', 1, 2, '2020-10-06 20:33:26'),
(17, 'sholder_width', 'Think of a line going from your armpit straight upwards to your shoulder. Measure between those two points and hold the tape measure straight.\r\n\r\n', 'img/measurement/mes-all/shirt-back.jpg', 'img/measurement/button-all/shirt-back.svg', 1, 2, '2020-10-06 20:33:41'),
(18, 'arm_length', 'The sleeve length measurement is taken from the point of your shoulder (where you took the shoulder width measurement), following your bent arm down to where you want the sleeve to end. NOTE 1! Bend your arm slightly when taking this measurement. NOTE 2! This measurement is always the full length of the arm. For short sleeve and 3/4 sleeve you should still measure the full length of the arm.\r\n\r\n', 'img/measurement/mes-all/shirt-arm_upper.jpg', 'img/measurement/button-all/shirt-arm.svg', 1, 2, '2020-10-06 20:33:53'),
(19, 'wrist', 'The wrist measurement is taken as a circumference measurement around your wrist. NOTE ! We will add movement ease according to the cuff you select.\r\n\r\n', 'img/measurement/mes-all/shirt-cuff.jpg', 'img/measurement/button-all/shirt-cuff.svg', 1, 2, '2020-10-06 17:11:38'),
(20, 'sleeve_width', 'The sleeve width measurement is taken across the sleeve where it meets the shirt body. Straighten the seam.\r\n\r\n', 'img/measurement/mes-all/shirt-armpit.jpg', 'img/measurement/button-all/shirt-armpit.svg', 1, 2, '2020-10-07 11:31:25');

-- --------------------------------------------------------

--
-- Table structure for table `mi_admin`
--

CREATE TABLE `mi_admin` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_name` text DEFAULT NULL,
  `user_email` text DEFAULT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_verification_code` int(15) NOT NULL,
  `user_password` text DEFAULT NULL,
  `user_salt` text DEFAULT NULL,
  `user_address` text DEFAULT NULL,
  `user_photo` text DEFAULT NULL,
  `user_status` varchar(11) NOT NULL DEFAULT '1' COMMENT '1=Pending; 2=Activated; 3=Deactivated',
  `user_attepts` int(11) DEFAULT 0 COMMENT 'Failed Login attempts. More then 5 will block the user',
  `user_authen_time` datetime DEFAULT NULL COMMENT 'block remove timer',
  `user_last_login` datetime DEFAULT NULL COMMENT 'Login ',
  `user_signed_up` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'User Signup Date'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mi_admin`
--

INSERT INTO `mi_admin` (`id`, `role_id`, `user_name`, `user_email`, `user_phone`, `user_verification_code`, `user_password`, `user_salt`, `user_address`, `user_photo`, `user_status`, `user_attepts`, `user_authen_time`, `user_last_login`, `user_signed_up`) VALUES
(10, 6, 'Super Admin', 'admin@gmail.com', '01676707067', 166090, '56bf377cae026633fe10d7401f40dbb4', 'hello@123', '01676707067', 'staff-uploads/staff-profile/041eb1b43b48631e7e71bf0633c06f58client-2.jpg', '2', 0, '0000-00-00 00:00:00', '2021-07-13 08:49:43', '2019-08-20 18:05:13'),
(34, 1, 'Zena Mccall1', 'maamun79@gmail.com', '0174242650', 0, '202cb962ac59075b964b07152d234b70', '123', '0174242650', 'staff-uploads/staff-profile/04c24e25b9997e306a305ad906b47e0aheadphone.jpg', '2', 0, '0000-00-00 00:00:00', '2020-07-29 15:38:00', '2020-07-23 19:03:04'),
(37, 6, 'darshan', 'darshan@gmail.com', '7719931028', 123, 'darshan', 'darshan', 'abc', NULL, '2', 0, '2021-07-12 19:36:37', '2021-07-12 19:36:37', '2021-07-12 23:13:53');

-- --------------------------------------------------------

--
-- Table structure for table `mi_orders`
--

CREATE TABLE `mi_orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'user id',
  `user_ip` text NOT NULL COMMENT 'user ip',
  `order_id` text NOT NULL COMMENT 'order unique code',
  `shirt_details` text NOT NULL COMMENT 'json data',
  `shipping_details` text NOT NULL COMMENT 'json data',
  `delivery_method` text NOT NULL COMMENT 'delivery method data',
  `payment_method` int(11) NOT NULL COMMENT '1=paypal;2=card;',
  `coupon_data` text DEFAULT NULL COMMENT 'json data; containing coupon id; and amount;',
  `payment_id` text DEFAULT NULL COMMENT 'transaction id by payment getawa api;',
  `payment_status` int(11) NOT NULL DEFAULT 1 COMMENT '1=not paid; 2= paid;',
  `order_status` int(11) NOT NULL DEFAULT 1 COMMENT '1=pending;2=processing;3=shipped;4=delivered;5=cancelled;6=cancellation requested',
  `cancellation_reason` text DEFAULT NULL COMMENT 'order cancellation reason',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'when the order submitted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mi_orders`
--

INSERT INTO `mi_orders` (`id`, `user_id`, `user_ip`, `order_id`, `shirt_details`, `shipping_details`, `delivery_method`, `payment_method`, `coupon_data`, `payment_id`, `payment_status`, `order_status`, `cancellation_reason`, `created_at`) VALUES
(39, 36, '::1', 'MITU38TSq', '[{\"id\":\"249\",\"user_id\":\"36\",\"user_ip\":\"::1\",\"qty\":\"1\",\"fabric\":\"18\",\"sleeve\":\"1\",\"collar_style\":\"14\",\"collar_stays\":null,\"collar_stiffness\":null,\"cuff\":\"9\",\"placket\":\"1\",\"pocket_placement\":\"7\",\"pocket_style\":null,\"pocket_flap\":null,\"back_details\":null,\"back_yoke\":null,\"bottom_cut\":null,\"button\":\"10\",\"button_thread\":\"8\",\"button_hole_thread\":null,\"contrast_data\":null,\"created_at\":\"2020-12-12 16:59:29\",\"total_amount\":\"105\",\"measurement\":{\"id\":\"90\",\"user_id\":\"36\",\"user_ip\":\"::1\",\"neck\":\"5\",\"chest\":\"5\",\"waist\":\"5\",\"hip\":\"5\",\"seat\":\"5\",\"shirt_length\":\"5\",\"sholder_width\":\"5\",\"arm_length\":\"5\",\"wrist\":\"5\",\"created_at\":\"2020-11-17 13:10:38\",\"is_save\":\"1\",\"profile_name\":null,\"type\":\"1\",\"height\":null,\"weight\":null,\"collar\":null,\"sleeve_width\":\"\",\"bicep\":\"5\"},\"fitting\":null,\"embroidery\":null}]', '{\"name\":\"Monirul Islam\",\"email\":\"misujon58262@gmail.com\",\"phone\":\"+8801676707067\",\"address\":\"43/1, Bilashdi, Narshingdi\",\"postal\":\"1600\",\"city\":\"Narshingdi\",\"country\":\"bd\",\"extra_message\":\"\"}', '{\"name\":\"Fedex\",\"price\":\"7\",\"id\":\"2\"}', 0, NULL, '4J146703G7491864M', 2, 3, '', '2020-12-19 00:21:28');

-- --------------------------------------------------------

--
-- Table structure for table `mi_users`
--

CREATE TABLE `mi_users` (
  `id` int(11) NOT NULL,
  `user_name` text DEFAULT NULL,
  `user_email` text DEFAULT NULL,
  `user_phone` varchar(15) NOT NULL,
  `user_verification_code` int(15) NOT NULL,
  `user_password` text DEFAULT NULL,
  `user_salt` text DEFAULT NULL,
  `user_address` text DEFAULT NULL,
  `user_photo` text DEFAULT NULL,
  `user_status` varchar(11) NOT NULL DEFAULT '1' COMMENT '1=Pending; 2=Activated; 3=Deactivated',
  `user_attepts` int(11) DEFAULT 0 COMMENT 'Failed Login attempts. More then 5 will block the user',
  `user_authen_time` datetime DEFAULT NULL COMMENT 'block remove timer',
  `user_last_login` datetime DEFAULT NULL COMMENT 'Login ',
  `user_signed_up` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'User Signup Date'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mi_users`
--

INSERT INTO `mi_users` (`id`, `user_name`, `user_email`, `user_phone`, `user_verification_code`, `user_password`, `user_salt`, `user_address`, `user_photo`, `user_status`, `user_attepts`, `user_authen_time`, `user_last_login`, `user_signed_up`) VALUES
(10, 'Monirul Islam Sujon1', 'misujon58262@gmail.com', '01676707067', 166090, '81dc9bdb52d04dc20036dbd8313ed055', '1234', '43/1, Bilasdi, Narsingdi, Dhaka, Bangladesh', '', '2', 9, '2020-11-11 13:51:26', '2020-10-09 15:16:20', '2019-08-20 18:05:13'),
(31, 'Meskat Ahosan', 'meskat@gmail.com', '01742426503', 0, '698d51a19d8a121ce581499d7b701668', '111', '51/A', '', '2', 2, '2020-05-30 11:53:23', '2020-05-22 16:55:17', '2020-05-22 04:59:07'),
(32, 'Mamun', 't@g.com', '01742426503', 0, '8d5e957f297893487bd98fa830fa6413', '147', '51/A/1', '', '1', 0, '0000-00-00 00:00:00', '2020-07-23 22:24:30', '2020-07-22 20:17:52'),
(33, 'Zenia Giles up', 'm@g.com', '01742426503', 0, '202cb962ac59075b964b07152d234b70', '123', '51/A/1', '', '1', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2020-07-24 16:51:16'),
(34, 'sakib', 'islamrakib361@gmail.com', '1742426503', 0, '827ccb0eea8a706c4c34a16891f84e7b', '12345', '', '', '2', 0, '0000-00-00 00:00:00', '2020-07-27 17:30:18', '2020-07-27 17:29:36'),
(36, 'Sujon', 'sujon@gmail.com', '01742426503', 0, '202cb962ac59075b964b07152d234b70', '123', '51/A/1', NULL, '2', 0, '0000-00-00 00:00:00', '2021-01-17 02:22:49', '2020-09-13 13:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `background_image` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `background_image`, `status`) VALUES
(13, 'About', '<div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">What is Lorem Ipsum?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\"><strong style=\"margin: 0px; padding: 0px;\">Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">Why do we use it?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><p><br style=\"margin: 0px; padding: 0px; clear: both; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: center;\"></p><div style=\"margin: 0px 14.3906px 0px 28.7969px; padding: 0px; width: 436.797px; float: left; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">Where does it come from?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><div style=\"margin: 0px 28.7969px 0px 14.3906px; padding: 0px; width: 436.797px; float: right; font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\"><h2 style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-family: DauphinPlain; font-size: 24px; line-height: 24px;\">Where can I get some?</h2><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p></div>', 'uploads/page/a6b6b416b1ac4e7b9b1f6ab4e212d8dbbanner.PNG', 1);

-- --------------------------------------------------------

--
-- Table structure for table `placket`
--

CREATE TABLE `placket` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `subtitle` text NOT NULL,
  `thumb` text NOT NULL,
  `price` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `have_buttons` int(11) NOT NULL DEFAULT 1 COMMENT '1=show;2=none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `placket`
--

INSERT INTO `placket` (`id`, `title`, `subtitle`, `thumb`, `price`, `status`, `created_at`, `have_buttons`) VALUES
(1, 'With placket', '', 'uploads/custom/placket/with-placket.svg', 0, 1, '2020-04-06 00:19:56', 1),
(2, 'Without placket', '', 'uploads/custom/placket/without-placket.svg', 0, 1, '2020-04-06 00:19:56', 1),
(3, 'Hidden placket', '', 'uploads/custom/placket/hidden-placket.svg', 0, 1, '2020-04-06 00:19:56', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pocket_placement`
--

CREATE TABLE `pocket_placement` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumb` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `have_button` int(1) NOT NULL DEFAULT 1 COMMENT '1=none; 2=have'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pocket_placement`
--

INSERT INTO `pocket_placement` (`id`, `title`, `thumb`, `status`, `created_at`, `have_button`) VALUES
(1, 'No Pocket', 'uploads/custom/pocket/placement/without-pocket.svg\r\n\r\n\r\n', 1, '2020-04-06 00:21:45', 1),
(2, 'Straight Left', 'uploads/custom/pocket/placement/fc6ec84c6b0c87a05d06758e0ab2c4ee1.png', 1, '2020-04-06 00:21:45', 1),
(3, 'Straight Both ', 'uploads/custom/pocket/placement/bb3ff1b8d69ade8e7eee3541858a928c2.png', 1, '2020-04-06 00:21:45', 1),
(4, 'Left-V', 'uploads/custom/pocket/style/v-shape.svg\r\n', 1, '2020-04-06 00:21:45', 1),
(5, 'Both-V', 'uploads/custom/pocket/placement/de556c25c2fa62cfc70f592ba3033800-goqZ73oT-Untitled design (5).png', 1, '2020-04-06 00:21:45', 1),
(6, 'Left Flap', 'uploads/custom/pocket/placement/c7651bdd7feebd61bd893f81584340ff-dwbbeizC-29541dac10ec3000f1a877f6361212c51 (1).png', 1, '2020-04-06 00:21:45', 2),
(7, 'Both Flap', 'uploads/custom/pocket/placement/98baac742bdfcaece257792a960c71a9-3vHoA0kh-3bd6ceb97ce2fb6a534877548b68ccb01 (1).png', 1, '2020-04-06 00:21:45', 2),
(8, 'Left V Flap', 'uploads/custom/pocket/placement/2532c072fbbfa1a350b3e1d2fac6c4f5-Ya2pFnbJ-3.png', 1, '2020-04-06 00:21:45', 2),
(9, 'Both V Flap', 'uploads/custom/pocket/placement/60ae448be18c946f2475248659435b8c-zPoknMS0-3-1.png', 1, '2020-04-06 00:21:45', 2);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `meta_name` varchar(100) DEFAULT NULL,
  `meta_value` text DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `meta_name`, `meta_value`, `type`) VALUES
(1, 'site_title_text', 'MI Tailoring Service', 'home_page'),
(2, 'site_logo', 'uploads/site-logo/dc0a7a52887d392b657e65e32d42f1c1finallogo.png', 'home_page'),
(3, 'footer_title', 'Contact Information', 'footer'),
(4, 'footer_text', '36-Commercial Area, Cavalry Ground<br>\r\nLahor, Pakistan<br><br>\r\n\r\ninfo@perennial.com.pak<br>\r\nsales@perennial.com.pak<br>\r\nsupport@perennial.com.pak', 'footer'),
(5, 'footer_copyright', 'Perennial.com', 'footer'),
(6, 'copyright_link', 'https://misujon.com/', 'footer'),
(7, 'fa-facebook', 'https://www.facebook.com/', 'social_icon'),
(8, 'fa-twitter', 'https://www.twitter.com/', 'social_icon'),
(9, 'fa-linkedin', 'https://www.linkedin.com/', 'social_icon'),
(10, 'fa-instagram', 'https://www.instagram.com/', 'social_icon'),
(11, 'contact_info', '<p><b>36-Commercial Area, Cavalry Ground<br>Lahor, Pakistan</b></p><ul><li>\r\n\r\n\r\n\r\ninfo@perennial.com.pak</li><li>sales@perennial.com.pak</li><li>support@perennial.com.pak</li></ul>', 'contact'),
(12, 'fabric_thumb', 'uploads/custom/shirt-element/456d6b964e6f69da65cf5d316cd73b15fabric.png', 'shirt_element'),
(13, 'button_thumb', 'uploads/custom/shirt-element/5c96d0c5fc3fc2a61afab7b1f173e4a627e54c241c93706e0196ee17dadf9b1bmadison.jpg', 'shirt_element'),
(14, 'button_thread_thumb', 'uploads/custom/shirt-element/button-thread.svg', 'shirt_element'),
(15, 'contrast_thumb', 'uploads/custom/shirt-element/contrasts.svg', 'shirt_element'),
(16, 'embroidery_thumb', 'uploads/custom/shirt-element/f7c10d8123aeda8a77b990c42d2040b2embroidary.png', 'shirt_element'),
(17, 'paypal_client_id', 'AXYd5BJF5uA_2eKZgaOiesf9jh4BuEHEb1ELQfkLuYmwNuJNPpqP3kNH7Sa1WMlI2ine3FfgCR2iHMUC', 'payment_getaway'),
(18, 'paypal_currency', 'USD', 'payment_getaway'),
(19, 'button_hole_thread_thumb', 'uploads/custom/button/hole-thread.svg', 'shirt_element');

-- --------------------------------------------------------

--
-- Table structure for table `sleeves`
--

CREATE TABLE `sleeves` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumb` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1=active;2=deactive;',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sleeves`
--

INSERT INTO `sleeves` (`id`, `title`, `thumb`, `status`, `created_at`) VALUES
(1, 'Long', 'uploads/custom/sleeve/sleeve-long.svg', 1, '2020-04-05 23:45:53'),
(2, 'Short', 'uploads/custom/sleeve/5450287338075b61b491d42fb33c727f9d687ee1ae14f04834ef162af18224a9sleeve-short.svg', 1, '2020-04-05 23:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(255) NOT NULL,
  `store_manager` varchar(255) NOT NULL,
  `store_address` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`store_id`, `store_name`, `store_manager`, `store_address`, `created`) VALUES
(1, 'fashion store', 'abc', 'abc', '2021-07-13 02:25:09'),
(2, 'limited edition', 'xyz', 'xyz', '2021-07-13 02:25:54'),
(5, 'nike', 'abcd', 'abcd', '2021-07-13 02:33:17'),
(6, 'raymond', 'dilip joshi', '711-2880 Nulla St. Mankato Mississippi 96522 (257) 563-7401', '2021-07-13 02:34:27'),
(8, 'Adidas', 'manager @adidas', 'Adidas India Private Limited registered address is Office No. 6, 2nd Floor, Sector B, Pocket No. 7, Plot No. 11, Vasant Kunj New Delhi South West Delhi DL 110070 IN.', '2021-07-13 02:48:34');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `quote` text DEFAULT NULL,
  `photo` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `quote`, `photo`, `rating`) VALUES
(1, 'Anna Deynah', 'Web Designer', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quod eos id officiis hic tenetur quae quaerat ad velit ab hic tenetur.', 'uploads/testimonial/client-1.jpg', 4),
(2, 'John Doe', 'Web Developer', 'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid commodi.', 'uploads/testimonial/client-2.jpg', 5),
(3, 'Maria Kate', 'Photographer', 'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti.', 'uploads/testimonial/8c4b68046a3e982d650cf262f5963f57client-1.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL,
  `design` int(11) DEFAULT NULL,
  `tailoring` int(11) DEFAULT NULL,
  `orders` int(11) DEFAULT NULL,
  `user_management` int(11) DEFAULT NULL,
  `settings` int(11) DEFAULT NULL,
  `status` varchar(20) NOT NULL COMMENT '1=active\r\n2=deactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_name`, `design`, `tailoring`, `orders`, `user_management`, `settings`, `status`) VALUES
(1, 'Manager', 1, 0, 0, 1, 0, '1'),
(6, 'Admin', 1, 1, 1, 1, 1, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `back_details`
--
ALTER TABLE `back_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `back_yoke`
--
ALTER TABLE `back_yoke`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bottom_cut`
--
ALTER TABLE `bottom_cut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buttons`
--
ALTER TABLE `buttons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `button_threads`
--
ALTER TABLE `button_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collars`
--
ALTER TABLE `collars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collar_stays`
--
ALTER TABLE `collar_stays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collar_stiffness`
--
ALTER TABLE `collar_stiffness`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contrasts`
--
ALTER TABLE `contrasts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contrast_data`
--
ALTER TABLE `contrast_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cuffs`
--
ALTER TABLE `cuffs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_method`
--
ALTER TABLE `delivery_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fabrics`
--
ALTER TABLE `fabrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fittings`
--
ALTER TABLE `fittings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measurement`
--
ALTER TABLE `measurement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `measurement_meta`
--
ALTER TABLE `measurement_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mi_admin`
--
ALTER TABLE `mi_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mi_orders`
--
ALTER TABLE `mi_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mi_users`
--
ALTER TABLE `mi_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `placket`
--
ALTER TABLE `placket`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pocket_placement`
--
ALTER TABLE `pocket_placement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sleeves`
--
ALTER TABLE `sleeves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `back_details`
--
ALTER TABLE `back_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `back_yoke`
--
ALTER TABLE `back_yoke`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bottom_cut`
--
ALTER TABLE `bottom_cut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `buttons`
--
ALTER TABLE `buttons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `button_threads`
--
ALTER TABLE `button_threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `collars`
--
ALTER TABLE `collars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `collar_stays`
--
ALTER TABLE `collar_stays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `collar_stiffness`
--
ALTER TABLE `collar_stiffness`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `contrasts`
--
ALTER TABLE `contrasts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `contrast_data`
--
ALTER TABLE `contrast_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cuffs`
--
ALTER TABLE `cuffs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `delivery_method`
--
ALTER TABLE `delivery_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fabrics`
--
ALTER TABLE `fabrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fittings`
--
ALTER TABLE `fittings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_page_settings`
--
ALTER TABLE `home_page_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `measurement`
--
ALTER TABLE `measurement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165;

--
-- AUTO_INCREMENT for table `measurement_meta`
--
ALTER TABLE `measurement_meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mi_admin`
--
ALTER TABLE `mi_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `mi_orders`
--
ALTER TABLE `mi_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `mi_users`
--
ALTER TABLE `mi_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `placket`
--
ALTER TABLE `placket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pocket_placement`
--
ALTER TABLE `pocket_placement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sleeves`
--
ALTER TABLE `sleeves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
