-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2021 at 02:44 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `plants` int(11) NOT NULL,
  `bio_fertilizer` int(11) NOT NULL,
  `equipment` int(11) NOT NULL,
  `seeds` int(11) NOT NULL,
  `personal_care` int(11) NOT NULL,
  `health_care` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `userid`, `password`, `status`, `plants`, `bio_fertilizer`, `equipment`, `seeds`, `personal_care`, `health_care`) VALUES
(1, 'Admin2020', 'Sa!@#$.54321', '1', 400, 200, 300, 300, 500, 500);

-- --------------------------------------------------------

--
-- Table structure for table `agency`
--

CREATE TABLE `agency` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plants` int(255) NOT NULL,
  `bio_fertilizer` int(255) NOT NULL,
  `seeds` int(255) NOT NULL,
  `equipment` int(255) NOT NULL,
  `personal_care` int(255) NOT NULL,
  `health_care` int(255) NOT NULL,
  `income` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `agency`
--

INSERT INTO `agency` (`id`, `name`, `userid`, `email`, `phone`, `password`, `plants`, `bio_fertilizer`, `seeds`, `equipment`, `personal_care`, `health_care`, `income`) VALUES
(1, 'Abhi', 'SAF5492', 'abhishekrss@gmail.com', '343434', '12345', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bio`
--

CREATE TABLE `bio` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dp` float NOT NULL,
  `bv` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `msgid` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `msgid`, `name`, `email`, `msg`, `date`, `time`) VALUES
(2, 'ENQ67592', 'ABHISHEK SINGH', 'abhishekrss070802@gmail.com', 'asdf', '2020-10-14', '19:32:48');

-- --------------------------------------------------------

--
-- Table structure for table `equip`
--

CREATE TABLE `equip` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dp` float NOT NULL,
  `bv` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forgot`
--

CREATE TABLE `forgot` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `franch_user`
--

CREATE TABLE `franch_user` (
  `id` int(11) NOT NULL,
  `userid` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `freepin`
--

CREATE TABLE `freepin` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` varchar(30) NOT NULL,
  `pin` varchar(30) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `freepin`
--


-- --------------------------------------------------------

--
-- Table structure for table `freeuser`
--

CREATE TABLE `freeuser` (
  `id` int(11) NOT NULL,
  `pin` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `joiningdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `sponcerid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `heal_care`
--

CREATE TABLE `heal_care` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dp` float NOT NULL,
  `bv` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `name` text NOT NULL,
  `day_bal` float NOT NULL,
  `sponcering_bal` float NOT NULL,
  `matching_bal` float NOT NULL,
  `direct_bal` double NOT NULL,
  `current_bal` float NOT NULL,
  `gold_rewards` double NOT NULL,
  `silver_rewards` int(30) NOT NULL,
  `franch_25` decimal(30,0) NOT NULL,
  `franch_50` decimal(30,0) NOT NULL,
  `franch_100` int(30) NOT NULL,
  `total_bal` float NOT NULL,
  `temp_bal` float NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `count` int(11) NOT NULL,
  `week1` float NOT NULL,
  `week2` float NOT NULL,
  `week3` float NOT NULL,
  `week4` float NOT NULL,
  `count-day` int(11) NOT NULL,
  `sponcer_count` int(11) NOT NULL,
  `franch_left` int(11) NOT NULL,
  `franch_right` int(11) NOT NULL,
  `tds1` float(10,0) NOT NULL,
  `tds2` float(10,0) NOT NULL,
  `tds3` float(10,0) NOT NULL,
  `tds4` float(10,0) NOT NULL,
  `gold_status` tinyint(1) NOT NULL,
  `silver_status` tinyint(1) NOT NULL,
  `paid_status` enum('0','1') NOT NULL DEFAULT '0',
  `last_week` float(10,0) NOT NULL,
  `last_tds` float(10,0) NOT NULL,
  `total_week_income` float(10,0) NOT NULL,
  `total_week_tds` float(10,0) NOT NULL,
  `total_balance` float(10,0) NOT NULL,
  `check_total` float NOT NULL,
  `last_month_income` float NOT NULL,
  `only_last_month` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `income_history`
--

CREATE TABLE `income_history` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `userid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` float NOT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DATE_AND_TIME` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `joining`
--

CREATE TABLE `joining` (
  `joined` int(11) NOT NULL,
  `day_bal` decimal(11,0) NOT NULL,
  `cto` double NOT NULL,
  `bv_pair` int(20) NOT NULL,
  `total_cto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `joining`
--

INSERT INTO `joining` (`joined`, `day_bal`, `cto`, `bv_pair`, `total_cto`) VALUES
(0, '0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` enum('m','l') NOT NULL,
  `age` int(30) NOT NULL,
  `account` varchar(30) NOT NULL,
  `ifsc` varchar(30) NOT NULL,
  `branch` varchar(30) NOT NULL,
  `pan` varchar(20) NOT NULL,
  `addhar` varchar(20) NOT NULL,
  `address` varchar(40) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `pincode` int(10) NOT NULL,
  `img` varchar(255) NOT NULL,
  `income` int(30) NOT NULL,
  `week1` decimal(10,0) NOT NULL,
  `week2` decimal(10,0) NOT NULL,
  `week3` decimal(10,0) NOT NULL,
  `week4` decimal(10,0) NOT NULL,
  `tds1` decimal(10,0) NOT NULL,
  `tds2` decimal(10,0) NOT NULL,
  `tds3` decimal(10,0) NOT NULL,
  `tds4` decimal(10,0) NOT NULL,
  `last_tds` decimal(10,0) NOT NULL,
  `last_week` decimal(10,0) NOT NULL,
  `paid_status` tinyint(1) NOT NULL,
  `total_week_income` decimal(10,0) NOT NULL,
  `total_week_tds` decimal(10,0) NOT NULL,
  `plan_tds` float NOT NULL,
  `plan_pay` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `month`
--

CREATE TABLE `month` (
  `id` int(11) NOT NULL,
  `userid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `month1` decimal(10,0) NOT NULL,
  `month2` decimal(10,0) NOT NULL,
  `month3` decimal(10,0) NOT NULL,
  `month4` decimal(10,0) NOT NULL,
  `month5` decimal(10,0) NOT NULL,
  `month6` decimal(10,0) NOT NULL,
  `month7` decimal(10,0) NOT NULL,
  `month8` decimal(10,0) NOT NULL,
  `month9` decimal(10,0) NOT NULL,
  `month10` decimal(10,0) NOT NULL,
  `month11` decimal(10,0) NOT NULL,
  `month12` decimal(10,0) NOT NULL,
  `last_month` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `month`
--

INSERT INTO `month` (`id`, `userid`, `month1`, `month2`, `month3`, `month4`, `month5`, `month6`, `month7`, `month8`, `month9`, `month10`, `month11`, `month12`, `last_month`) VALUES
(1, 'SHN899008', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(2, 'SHN9297524', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(3, 'SHN4708810', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(4, 'SHN197083', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(5, 'SHN2113854', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(6, 'SHN3901452', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(7, 'SHN9049636', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(8, 'SHN7718462', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(9, 'SHN309324', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(10, 'SHN8636384', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(11, 'SHN9860185', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(12, 'SHN5054511', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(13, 'SHN3739950', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(14, 'SHN2744740', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(15, 'SHN5610818', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(16, 'SHN9615047', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(17, 'SHN9651650', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(18, 'SHN6889259', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(19, 'SHN8058719', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(20, 'SHN6595287', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(21, 'SHN8768200', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(22, 'SHN2338452', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(23, 'SHN6711908', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(24, 'SHN3081995', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(25, 'SHN1607892', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(26, 'SHN5283633', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(27, 'SHN9088351', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(28, 'SHN7976038', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(29, 'SHN5407899', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(30, 'SHN7415702', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(31, 'SHN9388460', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(32, 'SHN8684303', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(33, 'SHN7805551', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(34, 'SHN184011', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(35, 'SHN8533964', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(36, 'SHN3468279', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(37, 'SHN3525730', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(38, 'SHN2229532', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(39, 'SHN5252006', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(40, 'SHN6506153', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(41, 'SHN8281194', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(42, 'SHN1320710', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(43, 'SHN947607', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(44, 'SHN2142135', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0'),
(45, 'SHN3016036', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `monthly_income`
--

CREATE TABLE `monthly_income` (
  `id` int(11) NOT NULL,
  `userid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='this table is for noraml income insertion every month';

-- --------------------------------------------------------

--
-- Table structure for table `monthly_user`
--

CREATE TABLE `monthly_user` (
  `id` int(11) NOT NULL,
  `userid` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `monthly_user`
--

INSERT INTO `monthly_user` (`id`, `userid`) VALUES
(221, 'SHN1320710'),
(222, 'SHN947607'),
(223, 'SHN2142135'),
(224, 'SHN3016036');

-- --------------------------------------------------------

--
-- Table structure for table `msg_to_admin`
--

CREATE TABLE `msg_to_admin` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `msg_to_admin`
--

INSERT INTO `msg_to_admin` (`id`, `userid`, `name`, `email`, `msg`, `date`, `time`) VALUES
(2, 'cscacs', '0', '0', '0', '2020-10-14', '00:00:00'),
(3, 'csaca', '0', '0', '0', '2020-10-14', '00:00:00'),
(4, 'cacas', 'ABHISHEK SINGH', 'abhishekrss070802@gmail.com', 'sasqsqasaSAdxa', '2020-10-14', '00:00:00'),
(5, 'cca', 'ABHISHEK SINGH', 'abhishekrss070802@gmail.com', 'hiiiiiiudgsfsjn fsetgdn dfraestgrjmcfb rfwsyhsrfm  swatgsrfn ccawrfeshbn ', '2020-10-14', '00:00:00'),
(7, 'csasc', 'ABHISHEK SINGH', 'abhishekrss070802@gmail.com', 'xawdarwstws  dawdac    ', '2020-10-14', '18:58:11'),
(8, 'csaca', 'ABHISHEK SINGH', 'abhishekrss070802@gmail.com', 'xawdarwstws  dawdac    ', '2020-10-14', '19:00:09'),
(13, 'SHN2011567', 'Suvadeep ', 'suvasonuofficial@gmail.com', 'Hii,This is suvadeep Maity.\r\n ', '2020-10-14', '20:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `normal_income`
--

CREATE TABLE `normal_income` (
  `id` int(11) NOT NULL,
  `userid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `every_month` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `msgid` varchar(30) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp(),
  `msg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int(11) NOT NULL,
  `userid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('L','R') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'L',
  `time_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pair`
--

CREATE TABLE `pair` (
  `id` int(15) NOT NULL,
  `userid` varchar(15) NOT NULL,
  `PAIR` int(5) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pair_count`
--

CREATE TABLE `pair_count` (
  `id` int(10) NOT NULL,
  `sponcerid` varchar(30) NOT NULL,
  `userid` varchar(12) NOT NULL,
  `total_pair` varchar(5) NOT NULL,
  `date` date DEFAULT current_timestamp(),
  `extra_pair` int(5) NOT NULL,
  `total_rank_pair` int(10) NOT NULL,
  `counts` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history`
--

CREATE TABLE `payment_history` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `userid` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` float NOT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `per_care`
--

CREATE TABLE `per_care` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dp` float NOT NULL,
  `bv` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pinadv`
--

CREATE TABLE `pinadv` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pinlist`
--

CREATE TABLE `pinlist` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `pin` varchar(30) NOT NULL,
  `pinno` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pintwo`
--

CREATE TABLE `pintwo` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pin` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinno` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `sponcerid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dp` float NOT NULL,
  `bv` float NOT NULL,
  `left_bv` float NOT NULL,
  `right_bv` float NOT NULL,
  `bv_pair` int(11) NOT NULL,
  `last_bv_pair` int(11) NOT NULL,
  `right_bv_count` int(11) NOT NULL,
  `left_bv_count` int(11) NOT NULL,
  `active_bonus_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `checks` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `active_bonus` float NOT NULL,
  `leadership_bonus` float NOT NULL,
  `temp_lbp` int(11) NOT NULL,
  `check_carfund` int(11) NOT NULL,
  `carfund` float NOT NULL,
  `tourfund` float NOT NULL,
  `homefund` float NOT NULL,
  `royalityfund` float NOT NULL,
  `carfund_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `tourfund_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `homefund_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `royalityfund_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `monthly_royality_count` int(11) NOT NULL,
  `royalityfund_count` int(11) NOT NULL,
  `lbp` int(11) NOT NULL,
  `tds` float NOT NULL,
  `total` float NOT NULL,
  `pay` float NOT NULL,
  `paid_status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `all_time_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plant`
--

CREATE TABLE `plant` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dp` float NOT NULL,
  `bv` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(20) NOT NULL,
  `password` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `userid`, `name`, `email`, `phone`, `password`) VALUES
(1, 'SAE939941', 'ABHISHEK SINGH', 'abhishekrss070802@gmail.com', 2147483647, '1234'),
(2, 'SAE129982', 'Goutam prasad pandit', 'goutam.pandit.10@gmail.com', 2147483647, 'kumbhakar'),
(3, 'SAE531868', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE `reply` (
  `id` int(11) NOT NULL,
  `msgid` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `time` time NOT NULL DEFAULT current_timestamp(),
  `msg` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reply`
--

INSERT INTO `reply` (`id`, `msgid`, `userid`, `date`, `time`, `msg`) VALUES
(13, 'RPL57459', 'SHN473781', '2020-10-15', '07:53:43', 'asdd'),
(14, 'RPL57458', 'SHN473781', '2020-10-15', '07:57:00', 'dwdsas'),
(15, 'RPL97388', 'SHN2011567', '2020-10-15', '07:57:28', 'dda'),
(19, 'RPL36980', 'Admin2020', '2020-10-28', '15:34:22', 'I am abhishek kumar singh who are you I don\'t know could you introduce yourself'),
(21, 'RPL52237', 'Admin2020', '2020-11-06', '08:16:44', 'This is Admin of Siddharth Agro . '),
(22, 'RPL96308', 'Admin2020', '2020-11-06', '08:17:14', 'This is Admin ');

-- --------------------------------------------------------

--
-- Table structure for table `seeds`
--

CREATE TABLE `seeds` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dp` float NOT NULL,
  `bv` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subadmin`
--

CREATE TABLE `subadmin` (
  `id` int(11) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL,
  `plants` int(255) NOT NULL,
  `bio_fertilizer` int(255) NOT NULL,
  `seeds` int(255) NOT NULL,
  `equipment` int(255) NOT NULL,
  `personal_care` int(255) NOT NULL,
  `health_care` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tree`
--

CREATE TABLE `tree` (
  `id` int(11) NOT NULL,
  `sponcerid` varchar(20) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `L` varchar(30) NOT NULL,
  `R` varchar(30) NOT NULL,
  `leftcount` int(11) NOT NULL,
  `rightcount` int(11) NOT NULL,
  `left_added` int(11) NOT NULL,
  `right_added` int(11) NOT NULL,
  `sponcer_count` int(11) NOT NULL,
  `tl_count` int(11) NOT NULL,
  `tr_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `pin` varchar(30) NOT NULL,
  `joiningdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `sponcerid` varchar(30) NOT NULL,
  `userid` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `package` varchar(30) NOT NULL,
  `tpin` varchar(30) NOT NULL,
  `position` enum('L','R') DEFAULT NULL,
  `L` varchar(20) NOT NULL,
  `R` varchar(20) NOT NULL,
  `franchise` enum('0','1') NOT NULL,
  `placement_id` varchar(12) NOT NULL,
  `left_side` varchar(11) NOT NULL,
  `right_side` varchar(11) NOT NULL,
  `product_status` enum('0','1') NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT current_timestamp(),
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agency`
--
ALTER TABLE `agency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bio`
--
ALTER TABLE `bio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `equip`
--
ALTER TABLE `equip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgot`
--
ALTER TABLE `forgot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `franch_user`
--
ALTER TABLE `franch_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freepin`
--
ALTER TABLE `freepin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `freeuser`
--
ALTER TABLE `freeuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `heal_care`
--
ALTER TABLE `heal_care`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_history`
--
ALTER TABLE `income_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `month`
--
ALTER TABLE `month`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthly_income`
--
ALTER TABLE `monthly_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monthly_user`
--
ALTER TABLE `monthly_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `msg_to_admin`
--
ALTER TABLE `msg_to_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `normal_income`
--
ALTER TABLE `normal_income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pair`
--
ALTER TABLE `pair`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pair_count`
--
ALTER TABLE `pair_count`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_history`
--
ALTER TABLE `payment_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `per_care`
--
ALTER TABLE `per_care`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pinadv`
--
ALTER TABLE `pinadv`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pinlist`
--
ALTER TABLE `pinlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pintwo`
--
ALTER TABLE `pintwo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plant`
--
ALTER TABLE `plant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seeds`
--
ALTER TABLE `seeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subadmin`
--
ALTER TABLE `subadmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tree`
--
ALTER TABLE `tree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `agency`
--
ALTER TABLE `agency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bio`
--
ALTER TABLE `bio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `equip`
--
ALTER TABLE `equip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forgot`
--
ALTER TABLE `forgot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `franch_user`
--
ALTER TABLE `franch_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `freepin`
--
ALTER TABLE `freepin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `freeuser`
--
ALTER TABLE `freeuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `heal_care`
--
ALTER TABLE `heal_care`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT for table `income_history`
--
ALTER TABLE `income_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `month`
--
ALTER TABLE `month`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `monthly_income`
--
ALTER TABLE `monthly_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monthly_user`
--
ALTER TABLE `monthly_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `msg_to_admin`
--
ALTER TABLE `msg_to_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `normal_income`
--
ALTER TABLE `normal_income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `pair`
--
ALTER TABLE `pair`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pair_count`
--
ALTER TABLE `pair_count`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `payment_history`
--
ALTER TABLE `payment_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `per_care`
--
ALTER TABLE `per_care`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pinadv`
--
ALTER TABLE `pinadv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `pinlist`
--
ALTER TABLE `pinlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;

--
-- AUTO_INCREMENT for table `pintwo`
--
ALTER TABLE `pintwo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `plant`
--
ALTER TABLE `plant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reply`
--
ALTER TABLE `reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `seeds`
--
ALTER TABLE `seeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subadmin`
--
ALTER TABLE `subadmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tree`
--
ALTER TABLE `tree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=647;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
