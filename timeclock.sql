-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2022 at 04:57 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `timeclock`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clock_comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rfid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` int(11) DEFAULT NULL,
  `iprestriction` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `opt` varchar(800) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `country`, `timezone`, `clock_comment`, `rfid`, `time_format`, `iprestriction`, `opt`) VALUES
(1, 'Nigeria', 'Africa/Lagos', NULL, NULL, 1, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company_data`
--

CREATE TABLE `tbl_company_data` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `jobposition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `companyemail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `idno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `startdate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dateregularized` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `reason` varchar(455) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `leaveprivilege` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_company_data`
--

INSERT INTO `tbl_company_data` (`id`, `reference`, `company`, `department`, `jobposition`, `companyemail`, `idno`, `startdate`, `dateregularized`, `reason`, `leaveprivilege`) VALUES
(1, 1, 'VERSE X PAY LTD', 'OPERATIONS', 'HEAD OF OPERATIONS', '', '001122', '2020-02-01', '2020-02-01', '', NULL),
(4, 4, 'VERSE X PAY LTD', 'IT DEPARTMENT', 'PROGRAMMER', 'jimvalex@qverselearning.com', 'VERSEX-0812934', '2022-04-05', '2022-04-12', '', NULL),
(6, 6, 'Q-VERSE LEARNING LIMITED', 'OPERATIONS', 'HEAD OF OPERATIONS', 'jesse@qverselearning.com', 'QV-0102', '2020-11-10', '2020-11-10', '', NULL),
(7, 7, 'Q-VERSE LEARNING LIMITED', 'BUSINESS DEVELOPMENT', 'BUSINESS DEVELOPMENT EXECUTIVE', 'olivia@qverselearning.com', 'QV-0103', '2022-05-17', '2022-05-17', '', NULL),
(8, 8, 'Q-VERSE LEARNING LIMITED', 'CONTENT MANAGEMENT', 'CONTENT MANAGEMENT EXECUTIVE', 'stecy@qverselearning.com', 'QV-0104', '2021-03-01', '2021-03-01', '', NULL),
(9, 9, 'Q-VERSE LEARNING LIMITED', 'BUSINESS DEVELOPMENT', 'BUSINESS DEVELOPMENT EXECUTIVE', 'queendalin@qverselearning.com', 'QV-05', '2022-05-17', '2022-05-17', '', NULL),
(10, 10, 'Q-VERSE LEARNING LIMITED', 'ACCOUNTING', 'ACCOUNTS EXECUTIVE', 'emoshoke@qverselearning.com', 'QV-0106', '2022-05-05', '2022-05-05', '', NULL),
(11, 11, 'Q-VERSE LEARNING LIMITED', 'IT DEPARTMENT', 'HEAD OF ICT', 'arinze@qverselearning.com', 'QV0107', '2018-12-18', '2018-12-18', '', NULL),
(12, 12, 'Q-VERSE LEARNING LIMITED', 'CONTENT MANAGEMENT', 'CONTENT MANAGEMENT EXECUTIVE', 'suleiman@qverselearning.com', 'QV-0108', '2022-05-04', '2022-05-04', '', NULL),
(13, 13, 'Q-VERSE LEARNING LIMITED', 'CONTENT MANAGEMENT', 'CONTENT MANAGEMENT EXECUTIVE', 'austin@qverselearning.com', 'QV-0109', '2021-03-01', '2021-03-01', '', NULL),
(14, 14, 'Q-VERSE LEARNING LIMITED', 'CONTENT MANAGEMENT', 'CONTENT MANAGEMENT EXECUTIVE', 'patience@qverselearning.com', 'QV-0110', '2022-05-04', '2022-05-04', '', NULL),
(15, 15, 'VERSE X PAY LTD', 'BUSINESS DEVELOPMENT', 'BUSINESS DEVELOPMENT EXECUTIVE', 'eric@versexpay.com', 'VX-0103', '2022-02-02', '2022-02-02', '', NULL),
(16, 16, 'VERSE X PAY LTD', 'BUSINESS DEVELOPMENT', 'BUSINESS DEVELOPMENT EXECUTIVE', 'confidence@versexpay.com', 'VX-0104', '2022-05-04', '2022-05-04', '', NULL),
(17, 17, 'VERSE X PAY LTD', 'BUSINESS DEVELOPMENT', 'BUSINESS DEVELOPMENT EXECUTIVE', 'chika@versxpay.com', 'VX-0114', '2022-05-04', '2022-05-04', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_company`
--

CREATE TABLE `tbl_form_company` (
  `id` int(11) UNSIGNED NOT NULL,
  `company` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_form_company`
--

INSERT INTO `tbl_form_company` (`id`, `company`) VALUES
(8, 'VERSE X PAY LTD'),
(9, 'Q-VERSE LEARNING LIMITED');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_department`
--

CREATE TABLE `tbl_form_department` (
  `id` int(11) UNSIGNED NOT NULL,
  `department` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_form_department`
--

INSERT INTO `tbl_form_department` (`id`, `department`) VALUES
(5, 'IT DEPARTMENT'),
(6, 'ACCOUNTING'),
(7, 'CONTENT MANAGEMENT'),
(8, 'OPERATIONS'),
(9, 'BUSINESS DEVELOPMENT');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_jobtitle`
--

CREATE TABLE `tbl_form_jobtitle` (
  `id` int(11) UNSIGNED NOT NULL,
  `jobtitle` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `dept_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_form_jobtitle`
--

INSERT INTO `tbl_form_jobtitle` (`id`, `jobtitle`, `dept_code`) VALUES
(4, 'HEAD OF ICT', 5),
(5, 'PROGRAMMER', 5),
(6, 'HEAD OF CONTENT MANAGEMENT', 7),
(7, 'HEAD OF OPERATIONS', 8),
(8, 'ACCOUNTS EXECUTIVE', 6),
(9, 'CONTENT MANAGEMENT EXECUTIVE', 7),
(10, 'BUSINESS DEVELOPMENT EXECUTIVE', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_leavegroup`
--

CREATE TABLE `tbl_form_leavegroup` (
  `id` int(11) UNSIGNED NOT NULL,
  `leavegroup` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leaveprivileges` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_leavetype`
--

CREATE TABLE `tbl_form_leavetype` (
  `id` int(11) UNSIGNED NOT NULL,
  `leavetype` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percalendar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_people`
--

CREATE TABLE `tbl_people` (
  `id` int(6) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `emailaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `civilstatus` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `height` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobileno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `nationalid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthplace` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeaddress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `employmentstatus` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `employmenttype` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_people`
--

INSERT INTO `tbl_people` (`id`, `firstname`, `mi`, `lastname`, `age`, `gender`, `emailaddress`, `civilstatus`, `height`, `weight`, `mobileno`, `birthday`, `nationalid`, `birthplace`, `homeaddress`, `employmentstatus`, `employmenttype`, `avatar`) VALUES
(1, 'MANAGER', '', 'VERSEX', NULL, '', 'manager@versex.com', '', NULL, NULL, NULL, '2020-01-03', '', '', '', 'Active', NULL, ''),
(4, 'CHUKWUEBUKA', 'V', 'NOKO', 27, 'MALE', 'jimvalex54@gmail.com', 'SINGLE', '164', '180', '08163078143', '1995-06-14', '70568280619', 'ENUGU, ENUGU NORTH, NIGERIA', '24 RICHARD STREET, ASATA, ENUGU, ENUGU NORTH, NIGERIA', 'Active', 'Regular', '13775410_988409917945324_2334224219983609584_n.jpg'),
(6, 'JESSE', 'UZONDU', 'UMEH', 39, 'MALE', 'jesseuzondu@gmail.com', 'MARRIED', '180', '240', '08062889769', '1984-04-01', '79304958881 - NIN', 'ENUGU', 'PLOT 38 IKEM STREET, ABAKPA NIKE, ENUGU', 'Active', 'Regular', 'WhatsApp Image 2022-06-08 at 9.53.22 AM (1).jpeg'),
(7, 'OLIVIA', 'OGOCHUKWU', 'EDEH', 25, 'FEMALE', 'oliviaedeh623@gmail.com', 'SINGLE', '120', '200', '07038509592', '1970-01-01', '71BC130276534411867-VIN', 'ENUGU', '34 EZIOKWE STREET COMMUNITY ESTATE, TRANS EKULU', 'Active', 'Regular', 'WhatsApp Image 2022-06-08 at 10.04.12 AM.jpeg'),
(8, 'STECY', 'JUACHI', 'OGBUAGU', 28, 'FEMALE', 'ogbuagustecy@gmail.com', 'SINGLE', '140', '180', '08037788927', '1994-08-23', '21343558924-NIN', 'ENUGU', '', 'Active', 'Regular', 'WhatsApp Image 2022-06-08 at 10.21.47 AM.jpeg'),
(9, 'QUEENDALIN', 'IJEOMA', 'NNACHETAM', 24, 'FEMALE', 'queendalinij@gmail.com', 'SINGLE', '170', '180', '08147411411', '1997-11-29', '90F5AFFAEF527502543-VIN', 'ENUGU', '10 IBIAM STREET UWANI, ENUGU.', 'Active', 'Regular', 'WhatsApp Image 2022-06-08 at 11.17.31 AM.jpeg'),
(10, 'MARIAN', 'EMOSHOKE', 'OYATHELEMHI', 23, 'FEMALE', 'oyathelemhimarian@gmail.com', 'SINGLE', '140', '180', '09067218633', '1999-10-19', '44091464524-NIN', 'EDO STATE', '18 IGBOEZE STREET, INDEPENDENCE LAYOUT', 'Active', 'Regular', 'WhatsApp Image 2022-06-08 at 10.44.57 AM.jpeg'),
(11, 'ARINZE', 'JOSEPH', 'ANI', 32, 'MALE', 'arinzeanijoe@gmail.com', 'MARRIED', '170', '200', '08038536332', '1990-02-07', '8038536332', 'ENUGU', '4 AKONAM EZE CRESENT, THINKERS CORNER, ENUGU STATE.', 'Active', 'Regular', 'WhatsApp Image 2022-06-08 at 11.57.07 AM.jpeg'),
(12, 'SULEIMAN', 'SANI', 'SANI', 29, 'MALE', 'sanhamdia@gmail.com', 'SINGLE', '170', '180', '08050836308', '1993-08-25', 'NYSC/KUY/2022/098451', 'KOGI STATE', '83 IGBOEZE STREET, INDEPENDENCE LAYOUT, ENUGU', 'Active', 'Regular', 'WhatsApp Image 2022-06-08 at 10.21.46 AM.jpeg'),
(13, 'AUGUSTINE', 'CHUKWUKEZIE', 'CHUKWUKEZIE', 28, 'MALE', 'profaustilo8@gmail.com', 'SINGLE', '180', '180', '08168938201', '1994-05-23', 'A1141418-IP', 'ENUGU', '7 OKESTINA STREET ACHARA LAYOUT, ENUGU.', 'Active', 'Regular', ''),
(14, 'AMAKA', 'PATIENCE', 'OKOYE', 26, 'FEMALE', 'patienceokoye402@gmail.com', 'SINGLE', '120', '100', '07065233042', '1996-12-09', '71BC12CO6C519217092-VIN', 'ENUGU', 'NO 1A LUGARD AVENUE, GRA, ENUGU', 'Active', 'Regular', 'WhatsApp Image 2022-06-08 at 11.24.33 AM.jpeg'),
(15, 'ERIC', 'UCHECHUKWU', 'OKERE', 30, 'MALE', 'ericokere10@gmail.com', 'SINGLE', '150', '200', '08033875566', '1992-07-12', 'A12550877', 'ENUGU', '2 ATANI STREET, ABAKPA, ENUGU', 'Active', 'Regular', 'WhatsApp Image 2022-06-08 at 10.23.59 AM.jpeg'),
(16, 'CONFIDENCE', 'ALEKIRINWO', 'NWORLU', 27, 'FEMALE', 'alekirichi01@gmail.com', 'SINGLE', '160', '180', '08066091135', '1995-10-11', 'A12033903', 'PORTHARCOURT', '58 COAL CITY GARDEN ESTATE, ENUGU.', 'Active', 'Regular', 'WhatsApp Image 2022-06-08 at 10.24.00 AM.jpeg'),
(17, 'CHIKODINAKA', 'AUGUSTA', 'NNEKE', 23, 'FEMALE', 'nnekeaugust1@gmail.com', 'SINGLE', '150', '180', '8109758968', '1999-10-23', '241815614432-NIN', 'OWERRI', '7 TONY CARRIMORE DRIVE, BRICKS ESTATE, ENUGU.', 'Active', 'Regular', 'WhatsApp Image 2022-06-08 at 10.24.00 AM (1).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_people_attendance`
--

CREATE TABLE `tbl_people_attendance` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `date` date DEFAULT NULL,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `timein` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timeout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalhours` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status_timein` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status_timeout` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_people_attendance`
--

INSERT INTO `tbl_people_attendance` (`id`, `reference`, `idno`, `date`, `employee`, `timein`, `timeout`, `totalhours`, `status_timein`, `status_timeout`, `reason`, `comment`, `created_at`) VALUES
(4, 4, 'VERSEX-0812934', '2022-06-08', 'NOKO, CHUKWUEBUKA V', '2022-06-08 10:21:17 AM', '2022-06-08 05:33:54 PM', '7.12', 'Late In', 'On Time', '', '', '2022-06-08 09:21:17'),
(5, 6, 'QV-0102', '2022-06-08', 'UMEH, JESSE UZONDU', '2022-06-08 02:10:03 PM', '2022-06-08 05:29:29 PM', '3.19', 'Late In', 'On Time', '', '', '2022-06-08 13:10:03'),
(6, 9, 'QV-05', '2022-06-08', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-08 02:16:20 PM', '2022-06-08 05:24:43 PM', '3.8', 'Late In', 'On Time', '', '', '2022-06-08 13:16:20'),
(7, 16, 'VX-0104', '2022-06-08', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-08 02:20:23 PM', '2022-06-08 05:32:36 PM', '3.12', 'Late In', 'On Time', '', '', '2022-06-08 13:20:23'),
(8, 17, 'VX-0114', '2022-06-08', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-08 02:22:10 PM', '2022-06-08 05:22:55 PM', '3.0', 'Late In', 'On Time', '', '', '2022-06-08 13:22:10'),
(9, 7, 'QV-0103', '2022-06-08', 'EDEH, OLIVIA OGOCHUKWU', '2022-06-08 02:24:49 PM', '2022-06-08 05:19:23 PM', '2.54', 'Late In', 'On Time', '', '', '2022-06-08 13:24:49'),
(10, 13, 'QV-0109', '2022-06-08', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-06-08 02:26:34 PM', '2022-06-08 05:07:59 PM', '2.41', 'Late In', 'On Time', '', '', '2022-06-08 13:26:34'),
(11, 15, 'VX-0103', '2022-06-08', 'OKERE, ERIC UCHECHUKWU', '2022-06-08 02:28:50 PM', '2022-06-08 05:04:37 PM', '2.35', 'Late In', 'On Time', '', '', '2022-06-08 13:28:50'),
(12, 8, 'QV-0104', '2022-06-08', 'OGBUAGU, STECY JUACHI', '2022-06-08 02:31:20 PM', '2022-06-08 05:09:18 PM', '2.37', 'Late In', 'On Time', '', '', '2022-06-08 13:31:20'),
(13, 12, 'QV-0108', '2022-06-08', 'SANI, SULEIMAN SANI', '2022-06-08 02:34:54 PM', '2022-06-08 05:06:10 PM', '2.31', 'Ok', 'Ok', '', '', '2022-06-08 13:34:54'),
(14, 11, 'QV0107', '2022-06-08', 'ANI, ARINZE JOSEPH', '2022-06-08 03:29:16 PM', '2022-06-09 08:36:45 AM', '17.7', 'Late In', 'Early Out', '', '', '2022-06-08 14:29:16'),
(15, 6, 'QV-0102', '2022-06-09', 'UMEH, JESSE UZONDU', '2022-06-09 07:54:49 AM', '2022-06-09 04:19:19 PM', '8.24', 'In Time', 'Early Out', '', '', '2022-06-09 06:54:49'),
(16, 4, 'VERSEX-0812934', '2022-06-09', 'NOKO, CHUKWUEBUKA V', '2022-06-09 07:55:57 AM', '2022-06-09 05:06:54 PM', '9.10', 'In Time', 'On Time', '', '', '2022-06-09 06:55:57'),
(17, 16, 'VX-0104', '2022-06-09', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-09 07:59:48 AM', '2022-06-09 05:09:53 PM', '9.10', 'In Time', 'On Time', '', '', '2022-06-09 06:59:48'),
(18, 13, 'QV-0109', '2022-06-09', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-06-09 08:20:47 AM', '2022-06-09 04:55:00 PM', '8.34', 'In Time', 'Early Out', '', '', '2022-06-09 07:20:47'),
(19, 14, 'QV-0110', '2022-06-09', 'OKOYE, AMAKA PATIENCE', '2022-06-09 08:22:59 AM', '2022-06-09 05:05:44 PM', '8.42', 'In Time', 'On Time', '', '', '2022-06-09 07:22:59'),
(20, 17, 'VX-0114', '2022-06-09', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-09 08:26:41 AM', '2022-06-09 05:00:36 PM', '8.33', 'In Time', 'On Time', '', '', '2022-06-09 07:26:41'),
(21, 11, 'QV0107', '2022-06-09', 'ANI, ARINZE JOSEPH', '2022-06-09 08:36:50 AM', '2022-06-14 08:50:06 AM', '120.13', 'In Time', 'On Time', '', '', '2022-06-09 07:36:50'),
(22, 10, 'QV-0106', '2022-06-09', 'OYATHELEMHI, MARIAN EMOSHOKE', '2022-06-09 08:42:18 AM', '2022-06-09 05:04:08 PM', '8.21', 'In Time', 'On Time', '', '', '2022-06-09 07:42:18'),
(23, 8, 'QV-0104', '2022-06-09', 'OGBUAGU, STECY JUACHI', '2022-06-09 08:49:48 AM', '2022-06-09 05:11:58 PM', '8.22', 'In Time', 'On Time', '', '', '2022-06-09 07:49:48'),
(24, 9, 'QV-05', '2022-06-09', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-09 08:55:14 AM', '2022-06-09 05:18:20 PM', '8.23', 'In Time', 'On Time', '', '', '2022-06-09 07:55:14'),
(25, 15, 'VX-0103', '2022-06-09', 'OKERE, ERIC UCHECHUKWU', '2022-06-09 08:59:15 AM', '2022-06-09 05:02:29 PM', '8.3', 'In Time', 'On Time', '', '', '2022-06-09 07:59:15'),
(26, 7, 'QV-0103', '2022-06-09', 'EDEH, OLIVIA OGOCHUKWU', '2022-06-09 09:08:31 AM', '2022-06-09 05:19:07 PM', '8.10', 'Late In', 'On Time', '', '', '2022-06-09 08:08:31'),
(27, 6, 'QV-0102', '2022-06-10', 'UMEH, JESSE UZONDU', '2022-06-10 07:26:48 AM', '2022-06-10 04:49:45 PM', '9.22', 'In Time', 'Early Out', '', '', '2022-06-10 06:26:48'),
(28, 16, 'VX-0104', '2022-06-10', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-10 08:11:51 AM', '2022-06-10 05:22:01 PM', '9.10', 'In Time', 'On Time', '', '', '2022-06-10 07:11:51'),
(29, 14, 'QV-0110', '2022-06-10', 'OKOYE, AMAKA PATIENCE', '2022-06-10 08:13:03 AM', '2022-06-10 05:08:04 PM', '8.55', 'In Time', 'On Time', '', '', '2022-06-10 07:13:03'),
(30, 4, 'VERSEX-0812934', '2022-06-10', 'NOKO, CHUKWUEBUKA V', '2022-06-10 08:14:13 AM', '2022-06-10 05:14:52 PM', '9.0', 'In Time', 'On Time', '', '', '2022-06-10 07:14:13'),
(31, 13, 'QV-0109', '2022-06-10', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-06-10 08:20:00 AM', '2022-06-10 04:51:54 PM', '8.31', 'In Time', 'Early Out', '', '', '2022-06-10 07:20:00'),
(32, 9, 'QV-05', '2022-06-10', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-10 08:26:59 AM', '2022-06-10 05:16:15 PM', '8.49', 'In Time', 'On Time', '', '', '2022-06-10 07:26:59'),
(33, 17, 'VX-0114', '2022-06-10', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-10 08:29:10 AM', '2022-06-10 05:09:12 PM', '8.40', 'In Time', 'On Time', '', '', '2022-06-10 07:29:10'),
(34, 10, 'QV-0106', '2022-06-10', 'OYATHELEMHI, MARIAN EMOSHOKE', '2022-06-10 08:40:24 AM', '2022-06-10 05:09:57 PM', '8.29', 'In Time', 'On Time', '', '', '2022-06-10 07:40:24'),
(35, 8, 'QV-0104', '2022-06-10', 'OGBUAGU, STECY JUACHI', '2022-06-10 08:41:45 AM', '2022-06-14 08:44:15 AM', '96.2', 'In Time', 'On Time', '', '', '2022-06-10 07:41:45'),
(36, 12, 'QV-0108', '2022-06-10', 'SANI, SULEIMAN SANI', '2022-06-10 08:46:58 AM', '2022-06-10 05:11:49 PM', '8.24', 'Ok', 'Ok', '', '', '2022-06-10 07:46:58'),
(37, 15, 'VX-0103', '2022-06-10', 'OKERE, ERIC UCHECHUKWU', '2022-06-10 08:48:10 AM', '2022-06-10 04:55:31 PM', '8.7', 'In Time', 'Early Out', '', '', '2022-06-10 07:48:10'),
(38, 7, 'QV-0103', '2022-06-10', 'EDEH, OLIVIA OGOCHUKWU', '2022-06-10 08:55:20 AM', '2022-06-10 05:02:09 PM', '8.8', 'In Time', 'Early Out', '', '', '2022-06-10 07:55:20'),
(39, 16, 'VX-0104', '2022-06-14', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-14 07:53:23 AM', '2022-06-14 05:32:17 PM', '9.38', 'Early In', 'On Time', '', '', '2022-06-14 06:53:23'),
(40, 4, 'VERSEX-0812934', '2022-06-14', 'NOKO, CHUKWUEBUKA V', '2022-06-14 07:54:28 AM', '2022-06-14 05:28:45 PM', '9.34', 'Early In', 'On Time', '', '', '2022-06-14 06:54:28'),
(41, 6, 'QV-0102', '2022-06-14', 'UMEH, JESSE UZONDU', '2022-06-14 07:55:50 AM', '2022-06-14 05:04:02 PM', '9.8', 'Early In', 'On Time', '', '', '2022-06-14 06:55:50'),
(43, 15, 'VX-0103', '2022-06-14', 'OKERE, ERIC UCHECHUKWU', '2022-06-14 08:14:05 AM', '2022-06-14 05:08:36 PM', '8.54', 'Early In', 'On Time', '', '', '2022-06-14 07:14:05'),
(44, 14, 'QV-0110', '2022-06-14', 'OKOYE, AMAKA PATIENCE', '2022-06-14 08:22:17 AM', '2022-06-14 05:09:57 PM', '8.47', 'Early In', 'On Time', '', '', '2022-06-14 07:22:17'),
(45, 10, 'QV-0106', '2022-06-14', 'OYATHELEMHI, MARIAN EMOSHOKE', '2022-06-14 08:32:33 AM', '2022-06-14 05:27:24 PM', '8.54', 'Early In', 'On Time', '', '', '2022-06-14 07:32:33'),
(46, 12, 'QV-0108', '2022-06-14', 'SANI, SULEIMAN SANI', '2022-06-14 08:35:04 AM', '2022-06-14 05:26:38 PM', '8.51', 'Ok', 'Ok', '', '', '2022-06-14 07:35:04'),
(47, 8, 'QV-0104', '2022-06-14', 'OGBUAGU, STECY JUACHI', '2022-06-14 08:45:37 AM', '2022-06-14 05:06:24 PM', '8.20', 'Early In', 'On Time', '', '', '2022-06-14 07:45:37'),
(48, 11, 'QV0107', '2022-06-14', 'ANI, ARINZE JOSEPH', '2022-06-14 08:50:11 AM', '2022-06-14 05:40:00 PM', '8.49', 'Early In', 'On Time', '', '', '2022-06-14 07:50:11'),
(49, 9, 'QV-05', '2022-06-14', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-14 08:54:38 AM', '2022-06-14 05:36:45 PM', '8.42', 'Early In', 'On Time', '', '', '2022-06-14 07:54:38'),
(50, 17, 'VX-0114', '2022-06-14', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-14 01:30:05 PM', '2022-06-14 05:05:13 PM', '3.35', 'Late In', 'On Time', '', '', '2022-06-14 12:30:05'),
(51, 6, 'QV-0102', '2022-06-15', 'UMEH, JESSE UZONDU', '2022-06-15 07:33:44 AM', '2022-06-15 04:44:12 PM', '9.10', 'Early In', 'On Time', '', '', '2022-06-15 06:33:44'),
(52, 16, 'VX-0104', '2022-06-15', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-15 07:47:35 AM', '2022-06-15 05:13:13 PM', '9.25', 'Early In', 'On Time', '', '', '2022-06-15 06:47:35'),
(53, 17, 'VX-0114', '2022-06-15', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-15 08:29:56 AM', '2022-06-15 04:57:53 PM', '8.27', 'Early In', 'On Time', '', '', '2022-06-15 07:29:56'),
(54, 9, 'QV-05', '2022-06-15', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-15 08:30:45 AM', '2022-06-15 05:06:21 PM', '8.35', 'Early In', 'On Time', '', '', '2022-06-15 07:30:45'),
(55, 4, 'VERSEX-0812934', '2022-06-15', 'NOKO, CHUKWUEBUKA V', '2022-06-15 08:33:43 AM', '2022-06-15 05:05:33 PM', '8.31', 'Early In', 'On Time', '', '', '2022-06-15 07:33:43'),
(56, 8, 'QV-0104', '2022-06-15', 'OGBUAGU, STECY JUACHI', '2022-06-15 08:44:17 AM', '2022-06-15 05:03:32 PM', '8.19', 'Early In', 'On Time', '', '', '2022-06-15 07:44:17'),
(57, 12, 'QV-0108', '2022-06-15', 'SANI, SULEIMAN SANI', '2022-06-15 08:45:36 AM', '2022-06-15 05:01:46 PM', '8.16', 'Ok', 'Ok', '', '', '2022-06-15 07:45:36'),
(58, 13, 'QV-0109', '2022-06-15', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-06-15 08:57:52 AM', '2022-06-15 05:11:15 PM', '8.13', 'Early In', 'On Time', '', '', '2022-06-15 07:57:52'),
(59, 15, 'VX-0103', '2022-06-15', 'OKERE, ERIC UCHECHUKWU', '2022-06-15 09:00:04 AM', '2022-06-15 05:10:16 PM', '8.10', 'Early In', 'On Time', '', '', '2022-06-15 08:00:04'),
(60, 11, 'QV0107', '2022-06-15', 'ANI, ARINZE JOSEPH', '2022-06-15 09:06:57 AM', '2022-06-15 06:07:15 PM', '9.0', 'Late In', 'On Time', '', '', '2022-06-15 08:06:57'),
(61, 11, 'QV0107', '2022-06-16', 'ANI, ARINZE JOSEPH', '2022-06-16 08:21:51 AM', NULL, '', 'Early In', '', '', '', '2022-06-16 07:21:52'),
(62, 16, 'VX-0104', '2022-06-16', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-16 08:26:27 AM', '2022-06-16 05:12:45 PM', '8.46', 'Early In', 'On Time', '', '', '2022-06-16 07:26:27'),
(63, 14, 'QV-0110', '2022-06-16', 'OKOYE, AMAKA PATIENCE', '2022-06-16 08:27:33 AM', '2022-06-16 05:01:57 PM', '8.34', 'Early In', 'On Time', '', '', '2022-06-16 07:27:33'),
(64, 9, 'QV-05', '2022-06-16', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-16 08:28:25 AM', '2022-06-16 05:23:49 PM', '8.55', 'Early In', 'On Time', '', '', '2022-06-16 07:28:25'),
(65, 17, 'VX-0114', '2022-06-16', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-16 08:29:53 AM', '2022-06-16 05:08:56 PM', '8.39', 'Early In', 'On Time', '', '', '2022-06-16 07:29:53'),
(66, 13, 'QV-0109', '2022-06-16', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-06-16 08:30:35 AM', '2022-06-16 04:17:23 PM', '7.46', 'Early In', 'Early Out', '', '', '2022-06-16 07:30:35'),
(67, 7, 'QV-0103', '2022-06-16', 'EDEH, OLIVIA OGOCHUKWU', '2022-06-16 08:44:09 AM', '2022-06-16 05:24:28 PM', '8.40', 'Early In', 'On Time', '', '', '2022-06-16 07:44:09'),
(68, 10, 'QV-0106', '2022-06-16', 'OYATHELEMHI, MARIAN EMOSHOKE', '2022-06-16 08:46:20 AM', '2022-06-16 05:11:21 PM', '8.25', 'Early In', 'On Time', '', '', '2022-06-16 07:46:20'),
(69, 8, 'QV-0104', '2022-06-16', 'OGBUAGU, STECY JUACHI', '2022-06-16 08:47:42 AM', '2022-06-16 05:00:38 PM', '8.12', 'Early In', 'On Time', '', '', '2022-06-16 07:47:42'),
(70, 4, 'VERSEX-0812934', '2022-06-16', 'NOKO, CHUKWUEBUKA V', '2022-06-16 08:50:18 AM', '2022-06-16 05:21:27 PM', '8.31', 'Early In', 'On Time', '', '', '2022-06-16 07:50:18'),
(71, 6, 'QV-0102', '2022-06-16', 'UMEH, JESSE UZONDU', '2022-06-16 09:03:54 AM', '2022-06-16 05:15:02 PM', '8.11', 'Late In', 'On Time', '', '', '2022-06-16 08:03:54'),
(72, 15, 'VX-0103', '2022-06-16', 'OKERE, ERIC UCHECHUKWU', '2022-06-16 09:05:41 AM', '2022-06-16 05:10:23 PM', '8.4', 'Late In', 'On Time', '', '', '2022-06-16 08:05:41'),
(73, 6, 'QV-0102', '2022-06-17', 'UMEH, JESSE UZONDU', '2022-06-17 08:11:51 AM', '2022-06-17 06:17:43 PM', '10.5', 'Early In', 'On Time', '', '', '2022-06-17 07:11:51'),
(74, 14, 'QV-0110', '2022-06-17', 'OKOYE, AMAKA PATIENCE', '2022-06-17 08:13:09 AM', '2022-06-17 05:08:10 PM', '8.55', 'Early In', 'On Time', '', '', '2022-06-17 07:13:09'),
(75, 4, 'VERSEX-0812934', '2022-06-17', 'NOKO, CHUKWUEBUKA V', '2022-06-17 08:18:05 AM', '2022-06-17 05:13:48 PM', '8.55', 'Early In', 'On Time', '', '', '2022-06-17 07:18:05'),
(76, 9, 'QV-05', '2022-06-17', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-17 08:26:27 AM', '2022-06-17 10:24:12 AM', '1.57', 'Early In', 'Early Out', '', '', '2022-06-17 07:26:27'),
(77, 17, 'VX-0114', '2022-06-17', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-17 08:36:58 AM', '2022-06-17 05:08:55 PM', '8.31', 'Early In', 'On Time', '', '', '2022-06-17 07:36:58'),
(78, 16, 'VX-0104', '2022-06-17', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-17 08:37:48 AM', '2022-06-17 05:40:08 PM', '9.15', 'Early In', 'On Time', '', '', '2022-06-17 07:37:48'),
(79, 8, 'QV-0104', '2022-06-17', 'OGBUAGU, STECY JUACHI', '2022-06-17 08:48:23 AM', '2022-06-17 05:09:54 PM', '8.21', 'Early In', 'On Time', '', '', '2022-06-17 07:48:23'),
(80, 15, 'VX-0103', '2022-06-17', 'OKERE, ERIC UCHECHUKWU', '2022-06-17 08:50:03 AM', '2022-06-17 05:05:56 PM', '8.15', 'Early In', 'On Time', '', '', '2022-06-17 07:50:03'),
(81, 7, 'QV-0103', '2022-06-17', 'EDEH, OLIVIA OGOCHUKWU', '2022-06-17 08:50:54 AM', '2022-06-17 05:11:26 PM', '8.20', 'Early In', 'On Time', '', '', '2022-06-17 07:50:54'),
(82, 10, 'QV-0106', '2022-06-17', 'OYATHELEMHI, MARIAN EMOSHOKE', '2022-06-17 08:52:11 AM', '2022-06-17 05:06:58 PM', '8.14', 'Early In', 'On Time', '', '', '2022-06-17 07:52:11'),
(83, 13, 'QV-0109', '2022-06-17', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-06-17 08:56:58 AM', '2022-06-17 05:10:32 PM', '8.13', 'Early In', 'On Time', '', '', '2022-06-17 07:56:58'),
(84, 6, 'QV-0102', '2022-06-21', 'UMEH, JESSE UZONDU', '2022-06-21 07:27:43 AM', '2022-06-22 08:03:08 AM', '24.35', 'Early In', 'On Time', '', '', '2022-06-21 06:27:43'),
(85, 16, 'VX-0104', '2022-06-21', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-21 07:38:17 AM', '2022-06-21 05:14:05 PM', '9.35', 'Early In', 'On Time', '', '', '2022-06-21 07:53:17'),
(86, 10, 'QV-0106', '2022-06-21', 'OYATHELEMHI, MARIAN EMOSHOKE', '2022-06-21 08:23:17 AM', '2022-06-21 05:05:17 PM', '8.42', 'Early In', 'On Time', '', '', '2022-06-21 07:54:17'),
(87, 9, 'QV-05', '2022-06-21', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-21 08:30:00 AM', '2022-06-21 05:01:55 PM', '8.31', 'Early In', 'On Time', '', '', '2022-06-21 07:55:00'),
(88, 4, 'VERSEX-0812934', '2022-06-21', 'NOKO, CHUKWUEBUKA V', '2022-06-21 08:50:14 AM', '2022-06-21 05:07:08 PM', '8.16', 'Early In', 'On Time', '', '', '2022-06-21 07:56:14'),
(89, 14, 'QV-0110', '2022-06-21', 'OKOYE, AMAKA PATIENCE', '2022-06-21 08:11:34 AM', '2022-06-21 05:08:22 PM', '8.56', 'Early In', 'On Time', '', '', '2022-06-21 07:58:34'),
(90, 7, 'QV-0103', '2022-06-21', 'EDEH, OLIVIA OGOCHUKWU', '2022-06-21 08:54:41 AM', '2022-06-21 05:02:57 PM', '8.8', 'Early In', 'On Time', '', '', '2022-06-21 07:59:41'),
(91, 8, 'QV-0104', '2022-06-21', 'OGBUAGU, STECY JUACHI', '2022-06-21 08:35:24 AM', '2022-06-21 05:11:20 PM', '8.35', 'Early In', 'On Time', '', '', '2022-06-21 08:03:24'),
(92, 12, 'QV-0108', '2022-06-21', 'SANI, SULEIMAN SANI', '2022-06-21 08:23:17 AM', '2022-06-21 05:12:55 PM', '8.49', 'Early In', 'Ok', '', '', '2022-06-21 08:04:17'),
(93, 13, 'QV-0109', '2022-06-21', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-06-21 08:38:19 AM', '2022-06-21 05:11:59 PM', '8.33', 'Early In', 'On Time', '', '', '2022-06-21 08:05:19'),
(94, 17, 'VX-0114', '2022-06-21', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-21 04:01:25 PM', '2022-06-21 05:00:32 PM', '0.59', 'Late In', 'On Time', '', '', '2022-06-21 15:01:25'),
(95, 16, 'VX-0104', '2022-06-22', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-22 07:59:56 AM', '2022-06-22 05:14:31 PM', '9.14', 'Early In', 'On Time', '', '', '2022-06-22 06:59:57'),
(96, 6, 'QV-0102', '2022-06-22', 'UMEH, JESSE UZONDU', '2022-06-22 08:03:17 AM', '2022-06-22 05:56:48 PM', '9.53', 'Early In', 'On Time', '', '', '2022-06-22 07:03:17'),
(97, 4, 'VERSEX-0812934', '2022-06-22', 'NOKO, CHUKWUEBUKA V', '2022-06-22 08:08:39 AM', '2022-06-22 05:15:29 PM', '9.6', 'Early In', 'On Time', '', '', '2022-06-22 07:08:39'),
(98, 15, 'VX-0103', '2022-06-22', 'OKERE, ERIC UCHECHUKWU', '2022-06-22 08:33:31 AM', '2022-06-22 05:11:30 PM', '8.37', 'Early In', 'On Time', '', '', '2022-06-22 07:33:31'),
(99, 8, 'QV-0104', '2022-06-22', 'OGBUAGU, STECY JUACHI', '2022-06-22 08:34:44 AM', '2022-06-22 05:13:09 PM', '8.38', 'Early In', 'On Time', '', '', '2022-06-22 07:34:44'),
(100, 17, 'VX-0114', '2022-06-22', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-22 08:35:20 AM', '2022-06-22 05:13:39 PM', '8.38', 'Early In', 'On Time', '', '', '2022-06-22 07:35:20'),
(101, 9, 'QV-05', '2022-06-22', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-22 08:36:14 AM', '2022-06-22 05:09:36 PM', '8.33', 'Early In', 'On Time', '', '', '2022-06-22 07:36:14'),
(102, 7, 'QV-0103', '2022-06-22', 'EDEH, OLIVIA OGOCHUKWU', '2022-06-22 08:47:05 AM', '2022-06-22 05:10:11 PM', '8.23', 'Early In', 'On Time', '', '', '2022-06-22 07:47:05'),
(103, 12, 'QV-0108', '2022-06-22', 'SANI, SULEIMAN SANI', '2022-06-22 08:48:24 AM', '2022-06-22 05:01:13 PM', '8.12', 'Ok', 'Ok', '', '', '2022-06-22 07:48:24'),
(104, 13, 'QV-0109', '2022-06-22', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-06-22 09:02:27 AM', '2022-06-22 04:38:54 PM', '7.36', 'Late In', 'Early Out', '', '', '2022-06-22 08:02:28'),
(105, 6, 'QV-0102', '2022-06-23', 'UMEH, JESSE UZONDU', '2022-06-23 07:06:06 AM', '2022-06-23 05:01:26 PM', '9.55', 'Early In', 'On Time', '', '', '2022-06-23 06:06:06'),
(106, 14, 'QV-0110', '2022-06-23', 'OKOYE, AMAKA PATIENCE', '2022-06-23 07:51:35 AM', '2022-06-23 05:10:19 PM', '9.18', 'Early In', 'On Time', '', '', '2022-06-23 06:51:35'),
(107, 16, 'VX-0104', '2022-06-23', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-23 08:06:59 AM', '2022-06-23 05:07:04 PM', '9.0', 'Early In', 'On Time', '', '', '2022-06-23 07:06:59'),
(108, 4, 'VERSEX-0812934', '2022-06-23', 'NOKO, CHUKWUEBUKA V', '2022-06-23 08:23:14 AM', '2022-06-23 05:09:18 PM', '8.46', 'Early In', 'On Time', '', '', '2022-06-23 07:23:14'),
(109, 17, 'VX-0114', '2022-06-23', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-23 08:28:05 AM', '2022-06-23 05:02:06 PM', '8.34', 'Early In', 'On Time', '', '', '2022-06-23 07:28:05'),
(110, 8, 'QV-0104', '2022-06-23', 'OGBUAGU, STECY JUACHI', '2022-06-23 08:37:06 AM', '2022-06-23 05:12:39 PM', '8.35', 'Early In', 'On Time', '', '', '2022-06-23 07:37:06'),
(111, 9, 'QV-05', '2022-06-23', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-23 08:37:52 AM', '2022-06-23 05:05:54 PM', '8.28', 'Early In', 'On Time', '', '', '2022-06-23 07:37:52'),
(112, 10, 'QV-0106', '2022-06-23', 'OYATHELEMHI, MARIAN EMOSHOKE', '2022-06-23 08:42:58 AM', '2022-06-23 05:03:12 PM', '8.20', 'Early In', 'On Time', '', '', '2022-06-23 07:42:58'),
(113, 7, 'QV-0103', '2022-06-23', 'EDEH, OLIVIA OGOCHUKWU', '2022-06-23 08:48:38 AM', '2022-06-23 05:04:57 PM', '8.16', 'Early In', 'On Time', '', '', '2022-06-23 07:48:38'),
(114, 15, 'VX-0103', '2022-06-23', 'OKERE, ERIC UCHECHUKWU', '2022-06-23 09:16:05 AM', '2022-06-23 05:11:24 PM', '7.55', 'Late In', 'On Time', '', '', '2022-06-23 08:16:05'),
(115, 13, 'QV-0109', '2022-06-23', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-06-23 09:38:50 AM', '2022-06-23 05:13:30 PM', '7.34', 'Late In', 'On Time', '', '', '2022-06-23 08:38:50'),
(116, 6, 'QV-0102', '2022-06-24', 'UMEH, JESSE UZONDU', '2022-06-24 07:25:16 AM', '2022-06-24 04:06:08 PM', '8.40', 'Early In', 'On Time', '', '', '2022-06-24 06:25:17'),
(117, 14, 'QV-0110', '2022-06-24', 'OKOYE, AMAKA PATIENCE', '2022-06-24 08:29:30 AM', '2022-06-24 05:02:41 PM', '8.33', 'Early In', 'On Time', '', '', '2022-06-24 07:29:30'),
(118, 8, 'QV-0104', '2022-06-24', 'OGBUAGU, STECY JUACHI', '2022-06-24 08:31:16 AM', '2022-06-24 05:13:49 PM', '8.42', 'Early In', 'On Time', '', '', '2022-06-24 07:31:16'),
(119, 17, 'VX-0114', '2022-06-24', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-24 08:31:47 AM', '2022-06-24 05:48:25 PM', '9.16', 'Early In', 'On Time', '', '', '2022-06-24 07:31:47'),
(120, 12, 'QV-0108', '2022-06-24', 'SANI, SULEIMAN SANI', '2022-06-24 08:48:39 AM', '2022-06-29 05:08:01 PM', '128.19', 'Ok', 'Ok', '', '', '2022-06-24 07:48:39'),
(121, 4, 'VERSEX-0812934', '2022-06-24', 'NOKO, CHUKWUEBUKA V', '2022-06-24 08:52:49 AM', '2022-06-24 05:47:39 PM', '8.54', 'Early In', 'On Time', '', '', '2022-06-24 07:52:49'),
(122, 9, 'QV-05', '2022-06-24', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-24 09:08:17 AM', '2022-06-24 05:10:02 PM', '8.1', 'Late In', 'On Time', '', '', '2022-06-24 08:08:17'),
(123, 7, 'QV-0103', '2022-06-24', 'EDEH, OLIVIA OGOCHUKWU', '2022-06-24 09:08:56 AM', '2022-06-24 05:10:32 PM', '8.1', 'Late In', 'On Time', '', '', '2022-06-24 08:08:56'),
(124, 15, 'VX-0103', '2022-06-24', 'OKERE, ERIC UCHECHUKWU', '2022-06-24 09:21:36 AM', '2022-06-24 05:12:49 PM', '7.51', 'Late In', 'On Time', '', '', '2022-06-24 08:21:36'),
(125, 13, 'QV-0109', '2022-06-24', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-06-24 09:22:59 AM', '2022-06-24 05:14:26 PM', '7.51', 'Late In', 'On Time', '', '', '2022-06-24 08:22:59'),
(126, 16, 'VX-0104', '2022-06-24', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-24 09:37:14 AM', '2022-06-24 05:07:03 PM', '7.29', 'Late In', 'On Time', '', '', '2022-06-24 08:37:14'),
(127, 4, 'VERSEX-0812934', '2022-06-29', 'NOKO, CHUKWUEBUKA V', '2022-06-29 07:57:30 AM', '2022-06-29 05:06:58 PM', '9.9', 'Early In', 'On Time', '', '', '2022-06-29 06:57:30'),
(128, 16, 'VX-0104', '2022-06-29', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-29 07:59:12 AM', '2022-06-29 05:05:56 PM', '9.6', 'Early In', 'On Time', '', '', '2022-06-29 06:59:13'),
(129, 6, 'QV-0102', '2022-06-29', 'UMEH, JESSE UZONDU', '2022-06-29 08:01:16 AM', '2022-06-29 05:17:20 PM', '9.16', 'Early In', 'On Time', '', '', '2022-06-29 07:01:16'),
(130, 17, 'VX-0114', '2022-06-29', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-29 08:27:55 AM', '2022-06-29 04:56:03 PM', '8.28', 'Early In', 'On Time', '', '', '2022-06-29 07:27:55'),
(131, 8, 'QV-0104', '2022-06-29', 'OGBUAGU, STECY JUACHI', '2022-06-29 08:43:41 AM', '2022-06-29 05:09:34 PM', '8.25', 'Early In', 'On Time', '', '', '2022-06-29 07:43:41'),
(132, 9, 'QV-05', '2022-06-29', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-29 08:44:28 AM', '2022-06-29 05:15:50 PM', '8.31', 'Early In', 'On Time', '', '', '2022-06-29 07:44:28'),
(133, 7, 'QV-0103', '2022-06-29', 'EDEH, OLIVIA OGOCHUKWU', '2022-06-29 08:48:22 AM', '2022-06-29 05:19:14 PM', '8.30', 'Early In', 'On Time', '', '', '2022-06-29 07:48:22'),
(134, 13, 'QV-0109', '2022-06-29', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-06-29 09:21:17 AM', '2022-06-29 04:36:34 PM', '7.15', 'Late In', 'Early Out', '', '', '2022-06-29 08:21:17'),
(135, 4, 'VERSEX-0812934', '2022-06-30', 'NOKO, CHUKWUEBUKA V', '2022-06-30 07:42:19 AM', '2022-06-30 05:02:34 PM', '9.20', 'Early In', 'On Time', '', '', '2022-06-30 06:42:19'),
(136, 14, 'QV-0110', '2022-06-30', 'OKOYE, AMAKA PATIENCE', '2022-06-30 07:45:17 AM', '2022-06-30 05:04:22 PM', '9.19', 'Early In', 'On Time', '', '', '2022-06-30 06:45:17'),
(137, 6, 'QV-0102', '2022-06-30', 'UMEH, JESSE UZONDU', '2022-06-30 07:54:11 AM', '2022-06-30 04:36:01 PM', '8.41', 'Early In', 'On Time', '', '', '2022-06-30 06:54:11'),
(138, 15, 'VX-0103', '2022-06-30', 'OKERE, ERIC UCHECHUKWU', '2022-06-30 08:09:01 AM', '2022-06-30 05:16:16 PM', '9.7', 'Early In', 'On Time', '', '', '2022-06-30 07:09:01'),
(139, 16, 'VX-0104', '2022-06-30', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-06-30 08:14:01 AM', '2022-06-30 05:17:50 PM', '9.3', 'Early In', 'On Time', '', '', '2022-06-30 07:14:01'),
(140, 17, 'VX-0114', '2022-06-30', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-06-30 08:34:33 AM', '2022-06-30 05:01:18 PM', '8.26', 'Early In', 'On Time', '', '', '2022-06-30 07:34:33'),
(141, 8, 'QV-0104', '2022-06-30', 'OGBUAGU, STECY JUACHI', '2022-06-30 08:42:46 AM', '2022-06-30 05:07:58 PM', '8.25', 'Early In', 'On Time', '', '', '2022-06-30 07:42:46'),
(142, 10, 'QV-0106', '2022-06-30', 'OYATHELEMHI, MARIAN EMOSHOKE', '2022-06-30 08:45:01 AM', '2022-06-30 05:03:19 PM', '8.18', 'Early In', 'On Time', '', '', '2022-06-30 07:45:01'),
(143, 7, 'QV-0103', '2022-06-30', 'EDEH, OLIVIA OGOCHUKWU', '2022-06-30 08:48:46 AM', '2022-06-30 05:00:47 PM', '8.12', 'Early In', 'On Time', '', '', '2022-06-30 07:48:46'),
(144, 9, 'QV-05', '2022-06-30', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-06-30 08:49:46 AM', '2022-06-30 05:00:14 PM', '8.10', 'Early In', 'On Time', '', '', '2022-06-30 07:49:46'),
(145, 13, 'QV-0109', '2022-06-30', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-06-30 09:47:44 AM', '2022-06-30 06:02:30 PM', '8.14', 'Late In', 'On Time', '', '', '2022-06-30 08:47:44'),
(146, 6, 'QV-0102', '2022-07-01', 'UMEH, JESSE UZONDU', '2022-07-01 07:18:28 AM', '2022-07-01 05:17:05 PM', '9.58', 'Early In', 'On Time', '', '', '2022-07-01 06:18:28'),
(147, 4, 'VERSEX-0812934', '2022-07-01', 'NOKO, CHUKWUEBUKA V', '2022-07-01 07:21:35 AM', '2022-07-01 05:12:17 PM', '9.50', 'Early In', 'On Time', '', '', '2022-07-01 06:21:35'),
(148, 14, 'QV-0110', '2022-07-01', 'OKOYE, AMAKA PATIENCE', '2022-07-01 08:04:34 AM', '2022-07-01 05:13:55 PM', '9.9', 'Early In', 'On Time', '', '', '2022-07-01 07:04:34'),
(149, 15, 'VX-0103', '2022-07-01', 'OKERE, ERIC UCHECHUKWU', '2022-07-01 08:12:07 AM', '2022-07-01 05:09:32 PM', '8.57', 'Early In', 'On Time', '', '', '2022-07-01 07:12:07'),
(150, 13, 'QV-0109', '2022-07-01', 'CHUKWUKEZIE, AUGUSTINE CHUKWUKEZIE', '2022-07-01 08:36:17 AM', '2022-07-01 05:15:07 PM', '8.38', 'Early In', 'On Time', '', '', '2022-07-01 07:36:17'),
(151, 17, 'VX-0114', '2022-07-01', 'NNEKE, CHIKODINAKA AUGUSTA', '2022-07-01 08:42:02 AM', '2022-07-01 05:07:36 PM', '8.25', 'Early In', 'On Time', '', '', '2022-07-01 07:42:02'),
(152, 10, 'QV-0106', '2022-07-01', 'OYATHELEMHI, MARIAN EMOSHOKE', '2022-07-01 08:42:36 AM', '2022-07-01 05:13:04 PM', '8.30', 'Early In', 'On Time', '', '', '2022-07-01 07:42:36'),
(153, 12, 'QV-0108', '2022-07-01', 'SANI, SULEIMAN SANI', '2022-07-01 08:43:34 AM', '2022-07-01 05:11:13 PM', '8.27', 'Ok', 'Ok', '', '', '2022-07-01 07:43:34'),
(154, 8, 'QV-0104', '2022-07-01', 'OGBUAGU, STECY JUACHI', '2022-07-01 08:45:37 AM', '2022-07-01 05:08:33 PM', '8.22', 'Early In', 'On Time', '', '', '2022-07-01 07:45:37'),
(155, 9, 'QV-05', '2022-07-01', 'NNACHETAM, QUEENDALIN IJEOMA', '2022-07-01 08:53:13 AM', '2022-07-01 05:17:59 PM', '8.24', 'Early In', 'On Time', '', '', '2022-07-01 07:53:13'),
(156, 7, 'QV-0103', '2022-07-01', 'EDEH, OLIVIA OGOCHUKWU', '2022-07-01 08:53:46 AM', '2022-07-01 05:16:00 PM', '8.22', 'Early In', 'On Time', '', '', '2022-07-01 07:53:46'),
(157, 16, 'VX-0104', '2022-07-01', 'NWORLU, CONFIDENCE ALEKIRINWO', '2022-07-01 09:15:26 AM', '2022-07-01 05:06:51 PM', '7.51', 'Late In', 'On Time', '', '', '2022-07-01 08:15:26');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_people_leaves`
--

CREATE TABLE `tbl_people_leaves` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `typeid` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `leavefrom` date DEFAULT NULL,
  `leaveto` date DEFAULT NULL,
  `returndate` date DEFAULT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archived` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_people_schedules`
--

CREATE TABLE `tbl_people_schedules` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intime` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `outime` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `datefrom` date DEFAULT NULL,
  `dateto` date DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  `restday` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `archive` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_people_schedules`
--

INSERT INTO `tbl_people_schedules` (`id`, `reference`, `idno`, `employee`, `intime`, `outime`, `datefrom`, `dateto`, `hours`, `restday`, `archive`) VALUES
(6, 6, 'QV-0102', 'UMEH, JESSE', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Saturday', 0),
(7, 4, 'VERSEX-0812934', 'NOKO, CHUKWUEBUKA', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Saturday', 0),
(8, 7, 'QV-0103', 'EDEH, OLIVIA', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Saturday', 0),
(9, 8, 'QV-0104', 'OGBUAGU, STECY', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Saturday', 0),
(10, 9, 'QV-05', 'NNACHETAM, QUEENDALIN', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Saturday', 0),
(11, 10, 'QV-0106', 'OYATHELEMHI, MARIAN', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Wednesday, Saturday', 0),
(12, 11, 'QV0107', 'ANI, ARINZE', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Saturday', 0),
(13, 12, 'QV-0107', 'SANI, SULEIMAN', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Thursday, Saturday', 0),
(14, 13, 'QV-0109', 'CHUKWUKEZIE, AUGUSTINE', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Saturday', 0),
(15, 14, 'QV-0110', 'OKOYE, AMAKA', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Wednesday, Saturday', 0),
(16, 15, 'VX-0103', 'OKERE, ERIC', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Saturday', 0),
(17, 16, 'VX-0104', 'NWORLU, CONFIDENCE', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Saturday', 0),
(18, 17, 'VX-0114', 'NNEKE, CHIKODINAKA', '09:00 AM', '05:00 PM', '2022-06-01', '2022-06-30', 128, 'Sunday, Monday, Tuesday, Saturday', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_people_tasks`
--

CREATE TABLE `tbl_people_tasks` (
  `id` int(11) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `taskdate` date NOT NULL,
  `taskdateend` date NOT NULL,
  `archive` int(11) DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_report_views`
--

CREATE TABLE `tbl_report_views` (
  `id` int(11) UNSIGNED NOT NULL,
  `report_id` int(11) DEFAULT NULL,
  `last_viewed` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_report_views`
--

INSERT INTO `tbl_report_views` (`id`, `report_id`, `last_viewed`, `title`) VALUES
(1, 1, '', 'Employee List Report'),
(2, 2, 'Jun, 28 2022', 'Employee Attendance Report'),
(3, 3, '', 'Employee Leaves Report'),
(4, 4, '', 'Employee Schedule Report'),
(5, 5, '', 'Organizational Profile'),
(6, 6, '', 'User Accounts Report'),
(7, 7, 'Jun, 10 2022', 'Employee Birthdays');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `reference` int(11) DEFAULT NULL,
  `idno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `role_id` int(11) DEFAULT NULL,
  `acc_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `reference`, `idno`, `name`, `email`, `role_id`, `acc_type`, `status`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 1, '001122', 'VERSEX, MANAGER', 'manager@versex.com', 1, 2, 1, '$2y$10$mDAH.R8JG5ThPelt4zRXc.8sxizt.tqXQfndx5s/W/3j0Sq6xS3LG', 'TDCiIEfhQIYN19h0kZiJlBIMbwyWDyrDrou0buzb4FK4WwDdqiDT1LmBB8Tn', '2018-10-31 12:10:04', '2018-10-31 12:10:04'),
(4, 4, 'VERSEX-0812934', 'NOKO, CHUKWUEBUKA', 'jimvalex54@gmail.com', 6, 1, 1, '$2y$10$9BJvuIHOBj91tZH4Dzk5C.ZmRS8owtfFtPmMuUjnsSxI.yJ/..a1K', NULL, '2022-05-11 09:11:13', '2022-05-11 09:11:13'),
(6, 6, 'QV-0102', 'UMEH, JESSE', 'jesseuzondu@gmail.com', 1, 1, 1, '$2y$10$zukzV8oYpKpeO92pG86USe8Im..jvydlhCtve8ghWcrF20WaDFeZG', NULL, '2022-06-08 09:05:04', '2022-06-08 09:05:04'),
(7, 7, 'QV-0103', 'EDEH, OLIVIA', 'oliviaedeh623@gmail.com', 7, 1, 1, '$2y$10$XI9pvcMW9zeKhcrk.GdZWeQKP2I3CqIBTASLuiboDDd07xEJOMntC', NULL, '2022-06-08 09:39:20', '2022-06-08 09:39:20'),
(8, 8, 'QV-0104', 'OGBUAGU, STECY', 'ogbuagustecy@gmail.com', 8, 1, 1, '$2y$10$WhZfORn5TxSiguwLFyyiY.KMZt8kycvTxJ/28KW0ENyKHy4gMweai', NULL, '2022-06-08 10:10:46', '2022-06-08 10:10:46'),
(9, 9, 'QV-0105', 'NNACHETAM, QUEENDALIN', 'queendalinij@gmail.com', 7, 1, 1, '$2y$10$5KMIygBYCmX51vFQNyvhw.48.6j1hocUM8meHFMkmbRoCOqDZruE2', NULL, '2022-06-08 10:25:28', '2022-06-08 10:25:28'),
(10, 10, 'QV-0106', 'OYATHELEMHI, MARIAN', 'oyathelemhimarian@gmail.com', 10, 1, 1, '$2y$10$H3AB/XoFTJmx8eCiDEcZC.pbIK4ltKLqwrk8noGHLfR4XQfschXiW', NULL, '2022-06-08 10:45:06', '2022-06-08 10:45:06'),
(11, 11, 'QV-0107', 'ANI, ARINZE', 'arinzeanijoe@gmail.com', 1, 1, 1, '$2y$10$10S/Jk/ksnllg5P2lm9JMOnycRyV.ISighMdDSyJZ6CmLZ35DFlLu', NULL, '2022-06-08 11:05:08', '2022-06-08 11:05:08'),
(12, 12, 'QV-0108', 'SANI, SULEIMAN', 'sanhamdia@gmail.com', 8, 1, 1, '$2y$10$RVFvpPccOAGPlNlLRpSc4uS.rHqMyXdz6ZHal.siN9KlsrJpk7EBG', NULL, '2022-06-08 11:26:32', '2022-06-08 11:26:32'),
(13, 13, 'QV-0109', 'CHUKWUKEZIE, AUGUSTINE', 'profaustilo8@gmail.com', 7, 1, 1, '$2y$10$aGdD3Yqrhyb4n2OP3kI9WOFualD.E/.Uisjw2xFvjwmEdacZ0/hpW', NULL, '2022-06-08 11:48:26', '2022-06-08 11:48:26'),
(14, 14, 'QV-0110', 'OKOYE, AMAKA', 'patienceokoye402@gmail.com', 8, 1, 1, '$2y$10$ilRCZUE1nzAO8w2GnuH1tulWGp4k0XEEhgvQ2WLiaOblLatQPqacG', NULL, '2022-06-08 12:19:56', '2022-06-08 12:19:56'),
(15, 15, 'VX-0103', 'OKERE, ERIC', 'ericokere10@gmail.com', 7, 1, 1, '$2y$10$JQo6QjwHwkU30Z08ZH5sZ.S0qF.ECW1F2IGFDi7ab92fMdip8yrHa', NULL, '2022-06-08 12:33:15', '2022-06-08 12:33:15'),
(16, 16, 'VX-0104', 'NWORLU, CONFIDENCE', 'alekirichi01@gmail.com', 7, 1, 1, '$2y$10$qXy85Np3BQZdZI3OgxVg7u0n0ofOskOgCv/eubQdl6MAJM4slOX5m', NULL, '2022-06-08 12:48:30', '2022-06-08 12:48:30'),
(17, 17, 'VX-0114', 'NNEKE, CHIKODINAKA', 'nnekeaugust1@gmail.com', 8, 1, 1, '$2y$10$p/462ZYpLWYu8iXDmFQepOnFExzewdO5rvaAChK8BK9AOUnOLg7zq', 'nWNyhgtxt1B26zHDO9VPNJvKmh60NWS1vWCE6h3cxIbpccgBRHwTfpczjh37', '2022-06-08 13:01:58', '2022-06-08 13:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `perm_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_permissions`
--

INSERT INTO `users_permissions` (`id`, `role_id`, `perm_id`) VALUES
(1798, 1, 1),
(1799, 1, 2),
(1800, 1, 22),
(1801, 1, 21),
(1802, 1, 23),
(1803, 1, 24),
(1804, 1, 25),
(1805, 1, 3),
(1806, 1, 31),
(1807, 1, 32),
(1808, 1, 4),
(1809, 1, 41),
(1810, 1, 42),
(1811, 1, 43),
(1812, 1, 44),
(1813, 1, 5),
(1814, 1, 52),
(1815, 1, 53),
(1816, 1, 9),
(1817, 1, 91),
(1818, 1, 7),
(1819, 1, 8),
(1820, 1, 81),
(1821, 1, 82),
(1822, 1, 83),
(1823, 1, 10),
(1824, 1, 101),
(1825, 1, 102),
(1826, 1, 103),
(1827, 1, 104),
(1828, 1, 11),
(1829, 1, 111),
(1830, 1, 112),
(1831, 1, 12),
(1832, 1, 121),
(1833, 1, 122),
(1834, 1, 13),
(1835, 1, 131),
(1836, 1, 132),
(1837, 1, 14),
(1838, 1, 141),
(1839, 1, 142),
(1840, 1, 15),
(1841, 1, 151),
(1842, 1, 152),
(1843, 1, 153),
(1844, 1, 6),
(1845, 1, 61),
(1846, 1, 62),
(1847, 1, 63),
(1848, 1, 64);

-- --------------------------------------------------------

--
-- Table structure for table `users_roles`
--

CREATE TABLE `users_roles` (
  `id` int(11) UNSIGNED NOT NULL,
  `role_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_roles`
--

INSERT INTO `users_roles` (`id`, `role_name`, `state`) VALUES
(1, 'MANAGER', 'Active'),
(2, 'EMPLOYEE', 'Active'),
(6, 'BACKEND PROGRAMMER', 'Active'),
(7, 'BUSINESS DEVELOPMENT EXECUTIVE', 'Active'),
(8, 'CONTENT DEVELOPMENT EXECUTIVE', 'Active'),
(9, 'HUMAN RESOURCES EXECUTIVE', 'Active'),
(10, 'ACCOUNTS EXECUTIVE', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `tbl_company_data`
--
ALTER TABLE `tbl_company_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_form_company`
--
ALTER TABLE `tbl_form_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_form_department`
--
ALTER TABLE `tbl_form_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_form_jobtitle`
--
ALTER TABLE `tbl_form_jobtitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_form_leavegroup`
--
ALTER TABLE `tbl_form_leavegroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_form_leavetype`
--
ALTER TABLE `tbl_form_leavetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_people`
--
ALTER TABLE `tbl_people`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_people_attendance`
--
ALTER TABLE `tbl_people_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_people_leaves`
--
ALTER TABLE `tbl_people_leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_people_schedules`
--
ALTER TABLE `tbl_people_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_people_tasks`
--
ALTER TABLE `tbl_people_tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_report_views`
--
ALTER TABLE `tbl_report_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_company_data`
--
ALTER TABLE `tbl_company_data`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_form_company`
--
ALTER TABLE `tbl_form_company`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_form_department`
--
ALTER TABLE `tbl_form_department`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_form_jobtitle`
--
ALTER TABLE `tbl_form_jobtitle`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_form_leavegroup`
--
ALTER TABLE `tbl_form_leavegroup`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_form_leavetype`
--
ALTER TABLE `tbl_form_leavetype`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_people`
--
ALTER TABLE `tbl_people`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_people_attendance`
--
ALTER TABLE `tbl_people_attendance`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `tbl_people_leaves`
--
ALTER TABLE `tbl_people_leaves`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_people_schedules`
--
ALTER TABLE `tbl_people_schedules`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_people_tasks`
--
ALTER TABLE `tbl_people_tasks`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_report_views`
--
ALTER TABLE `tbl_report_views`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users_permissions`
--
ALTER TABLE `users_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1849;

--
-- AUTO_INCREMENT for table `users_roles`
--
ALTER TABLE `users_roles`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
