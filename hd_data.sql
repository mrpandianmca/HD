-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2018 at 01:24 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hd_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `campus`
--

CREATE TABLE `campus` (
  `CAMPUS_ID` int(4) NOT NULL,
  `CAMPUS_NAME` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campus`
--

INSERT INTO `campus` (`CAMPUS_ID`, `CAMPUS_NAME`) VALUES
(1001, 'CEG'),
(1002, 'ACT'),
(1003, 'SAP'),
(1004, 'MIT'),
(1005, 'University Colleges');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `ITEM` int(4) NOT NULL,
  `ITEM_NAME` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`ITEM`, `ITEM_NAME`) VALUES
(1, 'Desktop'),
(2, 'Server'),
(3, 'Laptop'),
(4, 'Workstation'),
(5, 'Printer'),
(6, 'iMac'),
(7, 'Network');

-- --------------------------------------------------------

--
-- Stand-in structure for view `item_count`
-- (See below for the actual view)
--
CREATE TABLE `item_count` (
`ITEM_NAME` varchar(60)
,`COUNT(*)` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `page_1`
--

CREATE TABLE `page_1` (
  `ID` int(5) NOT NULL,
  `PAGE_CONTENT` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `page_1`
--

INSERT INTO `page_1` (`ID`, `PAGE_CONTENT`) VALUES
(1, 'Clearly specify the problem'),
(2, 'Provide the exact location of the systems'),
(3, 'Remember to note down the ticket number to check the status'),
(4, 'Dont register the same complaints again and again'),
(5, 'For further clarification contact intercom number.');

-- --------------------------------------------------------

--
-- Table structure for table `rcc_purchase`
--

CREATE TABLE `rcc_purchase` (
  `SLNO` int(6) NOT NULL,
  `PUR_DATE` date NOT NULL,
  `ITEM_NO` int(6) NOT NULL,
  `MAKE` varchar(60) NOT NULL,
  `ITEM_NAME` varchar(60) NOT NULL,
  `ITME_DESCRIPTION` varchar(200) NOT NULL,
  `PO_YEAR` varchar(16) NOT NULL,
  `CAMPUS` varchar(60) NOT NULL,
  `DEPARTMENT` varchar(120) NOT NULL,
  `VENDOR` varchar(120) NOT NULL,
  `VENDOR2` varchar(60) NOT NULL,
  `VENDOR3` varchar(60) NOT NULL,
  `PRICE_PER_ITEM` varchar(16) NOT NULL,
  `WARRANTY_EXPIRE_DATE` varchar(10) NOT NULL,
  `AMC` varchar(20) NOT NULL,
  `NO_OF_ITEM` int(6) NOT NULL,
  `FILE_ID` int(10) NOT NULL,
  `FILE_NAME` varchar(120) NOT NULL,
  `FILE_TYPE` varchar(60) NOT NULL,
  `FILE_SIZE` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rcc_purchase`
--

INSERT INTO `rcc_purchase` (`SLNO`, `PUR_DATE`, `ITEM_NO`, `MAKE`, `ITEM_NAME`, `ITME_DESCRIPTION`, `PO_YEAR`, `CAMPUS`, `DEPARTMENT`, `VENDOR`, `VENDOR2`, `VENDOR3`, `PRICE_PER_ITEM`, `WARRANTY_EXPIRE_DATE`, `AMC`, `NO_OF_ITEM`, `FILE_ID`, `FILE_NAME`, `FILE_TYPE`, `FILE_SIZE`) VALUES
(0, '0000-00-00', 1, '', 'Desktop', 'i5', '', '', '', 'RAJALAKSHMI SYSTEM PVT.LTD\r\n', '', '', '49000', '3', '', 1, 0, ' 1 -mysql_tutorial.pdf', 'application/pdf', 678643),
(0, '0000-00-00', 2, '', 'Server', 'High End 256RAM', '', '', '', 'RAJALAKSHMI SYSTEM PVT.LTD', '', '', '100000', '5', '', 1, 0, ' 2 -mysql_tutorial.pdf', 'application/pdf', 678643),
(0, '0000-00-00', 3, '', 'Laptop', 'i5 HP', '', '', '', 'RAJALAKSHMI SYSTEM PVT.LTD', '', '', '68000', '5', '', 1, 0, ' 3 -mysql_tutorial.pdf', 'application/pdf', 678643),
(0, '0000-00-00', 4, '', 'Workstation', 'HP 201 64G RAM', '', '', '', 'R2', '', '', '120000', '5', '', 1, 0, ' 4 -mysql-tutorial-excerpt-5.5-en.pdf', 'application/pdf', 198174),
(0, '0000-00-00', 5, '', 'iMac', 'iMac', '', '', '', 'V1', '', '', '169000', '5', '', 1, 0, ' 5 -mysql_tutorial.pdf', 'application/pdf', 678643),
(0, '0000-00-00', 6, '', 'Network', 'Server Rack', '', '', '', 'RAJALAKSHMI SYSTEM PVT.LTD', '', '', '28500', '3', '', 1, 0, '6-PO_Networking.pdf', 'application/pdf', 0),
(0, '0000-00-00', 7, '', 'Network', 'Switch', '', '', '', 'RAJALAKSHMI SYSTEM PVT.LTD', '', '', '38000', '5', '', 1, 0, ' 7 -PO_Networking.pdf', 'application/pdf', 3293594),
(0, '0000-00-00', 8, '', 'Desktop', 'i7', '', '', '', 'RAJALAKSHMI SYSTEM PVT.LTD', '', '', '60000', '5', '', 1, 0, ' 8 -PO_Networking.pdf', 'application/pdf', 3293594),
(0, '0000-00-00', 9, '', 'Desktop', 'i3', '', '', '', 'RAJALAKSHMI SYSTEM PVT.LTD', '', '', '40000', '5', '', 1, 0, ' 9 -PO_Networking.pdf', 'application/pdf', 3293594),
(0, '0000-00-00', 10, '', 'Desktop', 'Operating System: Windows 10 , RAM: 8GB, Processor: Intel Co', '', '', '', 'RAJALAKSHMI SYSTEM PVT.LTD', '', '', '58000', '3', '', 1, 0, ' 10 -PO_Networking.pdf', 'application/pdf', 3293594),
(0, '0000-00-00', 11, '', 'Server', 'HP ProLiant ML350 Gen9 Server With Intel Xeon E5-2620v3 Processor 8 GB-R, P440ar/2G Storage Controller And 8 Hot-Plug SFF SAS/SATA HDD Bays', '', '', '', 'RAJALAKSHMI SYSTEM PVT.LTD', '', '', '750000', '5', '', 1, 0, ' 11 -PO_Networking.pdf', 'application/pdf', 3293594),
(0, '0000-00-00', 12, 'HP', 'Server', 'HP ProLiant ML350 Gen9 Server With Intel Xeon E5-2620v3 Processor 32 GB-R, P440ar/2G Storage Controller And 8 Hot-Plug SFF SAS/SATA HDD Bays', '', '', '', 'RAJALAKSHMI SYSTEM PVT.LTD', 'X1', 'V1', '325000', '5', '', 1, 0, ' 12 -PO_Networking.pdf', 'application/pdf', 3293594),
(0, '0000-00-00', 13, 'Dell', 'Server', 'ML350 Gen9 Server With Intel Xeon E5-2620v3 Processor 32 GB-R, P440ar/2G Storage Controller And 8 Hot-Plug SFF SAS/SATA HDD Bays', '', '', '', 'R1', 'RAJALAKSHMI SYSTEM PVT.LTD', 'R2', '1200000', '5', '10', 1, 0, ' 13 -PO_Networking.pdf', 'application/pdf', 3293594),
(0, '0000-00-00', 14, 'HP', 'Laptop', 'i7, 6GB RAM', '', '', '', 'R1', 'R2', 'V1', '45000', '2', '2', 1, 0, ' 14 -mysql-tutorial-excerpt-5.5-en.pdf', 'application/pdf', 198174);

-- --------------------------------------------------------

--
-- Table structure for table `rcc_pur_dept_apply`
--

CREATE TABLE `rcc_pur_dept_apply` (
  `SLNO` int(6) NOT NULL,
  `PUR_DATE` date NOT NULL,
  `ITEM_NO` int(6) NOT NULL,
  `ITEM_NAME` varchar(60) NOT NULL,
  `ITME_DESCRIPTION` varchar(200) NOT NULL,
  `PO_YEAR` varchar(16) NOT NULL,
  `CAMPUS` varchar(60) NOT NULL,
  `DEPARTMENT` varchar(120) NOT NULL,
  `VENDOR` varchar(120) NOT NULL,
  `PRICE_PER_ITEM` varchar(16) NOT NULL,
  `WARRANTY_EXPIRE_DATE` varchar(10) NOT NULL,
  `NO_OF_ITEM` int(6) NOT NULL,
  `FILE_ID` int(10) NOT NULL,
  `FILE_NAME` varchar(120) NOT NULL,
  `FILE_TYPE` varchar(60) NOT NULL,
  `FILE_SIZE` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rcc_pur_from_babu`
--

CREATE TABLE `rcc_pur_from_babu` (
  `SL_NO` int(10) NOT NULL,
  `PO_YEAR` int(10) NOT NULL,
  `ITEM_NAME` varchar(11) NOT NULL,
  `ITME_DESCRIPTION` varchar(19) NOT NULL,
  `DEPARTMENT` varchar(45) NOT NULL,
  `NO_OF_ITEM` int(10) NOT NULL,
  `PUR_DATE1` varchar(10) NOT NULL,
  `PRICE_PER_ITEM` int(10) NOT NULL,
  `ITEM_NO` int(4) NOT NULL,
  `PUR_DATE` date NOT NULL,
  `CAMPUS` varchar(60) NOT NULL,
  `WARRANTY_EXPIRE_DATE` date NOT NULL,
  `VENDOR` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rcc_pur_from_babu`
--

INSERT INTO `rcc_pur_from_babu` (`SL_NO`, `PO_YEAR`, `ITEM_NAME`, `ITME_DESCRIPTION`, `DEPARTMENT`, `NO_OF_ITEM`, `PUR_DATE1`, `PRICE_PER_ITEM`, `ITEM_NO`, `PUR_DATE`, `CAMPUS`, `WARRANTY_EXPIRE_DATE`, `VENDOR`) VALUES
(1, 2014, 'Desktop', 'Desktop Computer i3', 'Examination Centre', 18, '23.09.2014', 672673, 1000, '0000-00-00', '', '0000-00-00', ''),
(2, 2014, 'Desktop', 'Desktop Computer i3', 'CTDT', 3, '23.09.2014', 157278, 1001, '0000-00-00', '', '0000-00-00', ''),
(3, 2014, 'Desktop', 'Desktop Computer i3', 'Biotechnolgy UIC', 2, '29.09.2014', 73739, 1002, '0000-00-00', '', '0000-00-00', ''),
(4, 2014, 'Desktop', 'Desktop Computer i5', 'CIPR', 5, '29.09.2014', 224755, 1003, '0000-00-00', '', '0000-00-00', ''),
(5, 2014, 'Desktop', 'Desktop Computer i5', 'IQAC', 2, '29.09.2014', 89902, 1004, '0000-00-00', '', '0000-00-00', ''),
(6, 2014, 'Desktop', 'Desktop Computer i3', 'Computer Technology MIT', 40, '29.12.2014', 1474788, 1005, '0000-00-00', '', '0000-00-00', ''),
(7, 2014, 'Desktop', 'Desktop Computer i3', 'Civil Engineering CEG Campus', 5, '29.12.2014', 184349, 1006, '0000-00-00', '', '0000-00-00', ''),
(8, 2014, 'Desktop', 'Desktop Computer i3', 'Ref./Ac Division Mech', 4, '29.12.2014', 147479, 1007, '0000-00-00', '', '0000-00-00', ''),
(9, 2014, 'Desktop', 'Desktop Computer i3', 'Physics dept. CEG Campus', 2, '29.12.2014', 73739, 1008, '0000-00-00', '', '0000-00-00', ''),
(10, 2014, 'Desktop', 'Desktop Computer i3', 'Applied Sci. and Tech. A.C.Tech Cam', 2, '29.12.2014', 73739, 1009, '0000-00-00', '', '0000-00-00', ''),
(11, 2014, 'Desktop', 'Desktop Computer i3', 'Industrial Engg. CEG Campus', 6, '29.12.2014', 221218, 1010, '0000-00-00', '', '0000-00-00', ''),
(12, 2014, 'Desktop', 'Desktop Computer i5', 'EEE CEG Campus', 7, '29.12.2014', 314656, 1011, '0000-00-00', '', '0000-00-00', ''),
(13, 2014, 'Desktop', 'Desktop Computer i5', 'Student Affairs', 6, '29.12.2014', 269706, 1012, '0000-00-00', '', '0000-00-00', ''),
(14, 2014, 'Desktop', 'Desktop Computer i5', 'Printing Technology', 5, '29.12.2014', 224755, 1013, '0000-00-00', '', '0000-00-00', ''),
(15, 2014, 'Desktop', 'Desktop Computer i5', 'The Library CEG Campus', 2, '29.12.2014', 89902, 1014, '0000-00-00', '', '0000-00-00', ''),
(16, 2014, 'Desktop', 'Desktop Computer i5', 'Physics dept. CEG Campus', 1, '29.12.2014', 44951, 1015, '0000-00-00', '', '0000-00-00', ''),
(17, 2014, 'Desktop', 'Desktop Computer i7', 'Electronics Engg. MIT Campus', 88, '29.12.2014', 4531296, 1016, '0000-00-00', '', '0000-00-00', ''),
(18, 2014, 'Desktop', 'Desktop Computer i7', 'Dean A.C.Tech. ', 20, '29.12.2014', 1029840, 1017, '0000-00-00', '', '0000-00-00', ''),
(19, 2014, 'Desktop', 'Desktop Computer i7', 'ECE CEG Campus', 12, '29.12.2014', 617904, 1018, '0000-00-00', '', '0000-00-00', ''),
(20, 2014, 'Desktop', 'Desktop Computer i7', 'Computer Tech. MIT Campus', 10, '29.12.2014', 514920, 1019, '0000-00-00', '', '0000-00-00', ''),
(21, 2014, 'Desktop', 'Desktop Computer i7', 'Library Main Campus', 6, '29.12.2014', 308952, 1020, '0000-00-00', '', '0000-00-00', ''),
(22, 2014, 'Desktop', 'Desktop Computer i7', 'ACOE Main Campus', 5, '29.12.2014', 257460, 1021, '0000-00-00', '', '0000-00-00', ''),
(23, 2014, 'Desktop', 'Desktop Computer i7', 'Dean A.C.Tech. ', 5, '29.12.2014', 257460, 1022, '0000-00-00', '', '0000-00-00', ''),
(24, 2014, 'Desktop', 'Desktop Computer i7', 'Knowledge Data Centre', 5, '29.12.2014', 257460, 1023, '0000-00-00', '', '0000-00-00', ''),
(25, 2014, 'Desktop', 'Desktop Computer i7', 'EEE CEG Campus', 4, '29.12.2014', 205968, 1024, '0000-00-00', '', '0000-00-00', ''),
(26, 2014, 'Desktop', 'Desktop Computer i7', 'Printing Tech. CEG Campus', 2, '29.12.2014', 102984, 1025, '0000-00-00', '', '0000-00-00', ''),
(27, 2014, 'Desktop', 'Desktop Computer i7', 'Health Centre CEG Campus', 1, '29.12.2014', 51492, 1026, '0000-00-00', '', '0000-00-00', ''),
(28, 2015, 'Desktop', 'Desktop Computer i3', 'Mathematics CEG Campus', 35, '02.03.2015', 1035854, 1027, '0000-00-00', '', '0000-00-00', ''),
(29, 2015, 'Desktop', 'Desktop Computer i3', 'Mathematics CEG Campus', 2, '02.03.2015', 59192, 1028, '0000-00-00', '', '0000-00-00', ''),
(30, 2015, 'Desktop', 'Desktop Computer i7', 'Mathematics CEG Campus', 2, '02.03.2015', 101454, 1029, '0000-00-00', '', '0000-00-00', ''),
(31, 2015, 'Desktop', 'Desktop Computer i3', 'Geology CEG Campus', 25, '02.03.2015', 739896, 1030, '0000-00-00', '', '0000-00-00', ''),
(32, 2015, 'Desktop', 'Desktop Computer i5', 'CES CEG Campus', 5, '02.03.2015', 199298, 1031, '0000-00-00', '', '0000-00-00', ''),
(33, 2015, 'Desktop', 'Desktop Computer i5', 'Dean MIT Campus', 4, '02.03.2015', 159438, 1032, '0000-00-00', '', '0000-00-00', ''),
(34, 2015, 'Desktop', 'Desktop Computer i5', 'Media Science CEG Campus', 5, '02.03.2015', 199298, 1033, '0000-00-00', '', '0000-00-00', ''),
(35, 2015, 'Desktop', 'Desktop Computer i5', 'Manufacturing Engg CEG Campus', 15, '02.03.2015', 597894, 1034, '0000-00-00', '', '0000-00-00', ''),
(36, 2015, 'Desktop', 'Desktop Computer i5', 'Architecture SAP Campus', 4, '02.03.2015', 159438, 1035, '0000-00-00', '', '0000-00-00', ''),
(37, 2015, 'Desktop', 'Desktop Computer i5', 'Distance Education CEG Campus', 10, '02.03.2015', 398596, 1036, '0000-00-00', '', '0000-00-00', ''),
(38, 2015, 'Desktop', 'Desktop Computer i7', 'Distance Education CEG Campus', 5, '02.03.2015', 253635, 1037, '0000-00-00', '', '0000-00-00', ''),
(39, 2015, 'Desktop', 'Desktop Computer i7', 'Sciences and Humanities MIT Campus', 1, '02.03.2015', 50727, 1038, '0000-00-00', '', '0000-00-00', ''),
(40, 2015, 'Desktop', 'Desktop Computer i7', 'Co-ordination Section AU', 1, '02.03.2015', 50727, 1039, '0000-00-00', '', '0000-00-00', ''),
(41, 2015, 'Desktop', 'Desktop Computer i7', 'IQAC AU', 1, '02.03.2015', 50727, 1040, '0000-00-00', '', '0000-00-00', ''),
(42, 2015, 'Desktop', 'Desktop Computer i3', 'Head ECE ', 50, '11.03.2015', 1597917, 1041, '0000-00-00', '', '0000-00-00', ''),
(43, 2015, 'Desktop', 'Desktop Computer i5', 'Centre for Research', 10, '11.03.2015', 398596, 1042, '0000-00-00', '', '0000-00-00', ''),
(44, 2015, 'Desktop', 'Desktop Computer i5', 'Architecture SAP Campus', 2, '11.03.2015', 79719, 1043, '0000-00-00', '', '0000-00-00', ''),
(45, 2015, 'Desktop', 'Desktop Computer i7', 'Registrar Salary Section', 8, '11.03.2015', 405817, 1044, '0000-00-00', '', '0000-00-00', ''),
(46, 2015, 'Desktop', 'Desktop Computer i7', 'Registrar AU', 3, '13.03.2015', 152181, 1045, '0000-00-00', '', '0000-00-00', ''),
(47, 2015, 'Desktop', 'Desktop Computer i7', 'Centre For CC', 1, '16.03.2015', 50727, 1046, '0000-00-00', '', '0000-00-00', ''),
(48, 2015, 'Desktop', 'Desktop Computer i3', 'Director CUIC', 48, '06.10.2015', 1520352, 1047, '0000-00-00', '', '0000-00-00', ''),
(49, 2015, 'Desktop', 'Desktop Computer i3', 'Co-ordinator MHRD', 4, '06.10.2015', 126696, 1048, '0000-00-00', '', '0000-00-00', ''),
(50, 2015, 'Desktop', 'Desktop Computer i3', 'Head EEE CEG Campus', 3, '06.10.2015', 95022, 1049, '0000-00-00', '', '0000-00-00', ''),
(51, 2015, 'Desktop', 'Desktop Computer i3', 'Head Nanoscience and Tech.', 1, '06.10.2015', 31674, 1050, '0000-00-00', '', '0000-00-00', ''),
(52, 2015, 'Desktop', 'Desktop Computer i5', 'Prof. Electronics Engg. MIT Campus', 2, '06.10.2015', 78048, 1051, '0000-00-00', '', '0000-00-00', ''),
(53, 2015, 'Desktop', 'Desktop Computer i5', 'Director IRS CEG Campus', 6, '06.10.2015', 234144, 1052, '0000-00-00', '', '0000-00-00', ''),
(54, 2015, 'Desktop', 'Desktop Computer i5', 'Prof. Textile Tech. A.C.Tech.', 3, '06.10.2015', 117072, 1053, '0000-00-00', '', '0000-00-00', ''),
(55, 2015, 'Desktop', 'Desktop Computer i5', 'Health Centre CEG Campus', 2, '06.10.2015', 78048, 1054, '0000-00-00', '', '0000-00-00', ''),
(56, 2015, 'Desktop', 'Desktop Computer i7', 'Prof. Mechanical Engg. CEG Campus', 1, '06.10.2015', 50296, 1055, '0000-00-00', '', '0000-00-00', ''),
(57, 2015, 'Desktop', 'Desktop Computer i7', 'Director Recruitment Cell', 3, '06.10.2015', 150888, 1056, '0000-00-00', '', '0000-00-00', ''),
(58, 2015, 'Desktop', 'Desktop Computer i7', 'Director Crystal Growth Centre', 6, '06.10.2015', 301776, 1057, '0000-00-00', '', '0000-00-00', ''),
(59, 2015, 'Desktop', 'Desktop Computer i7', 'RTI Section Au', 1, '06.10.2015', 50296, 1058, '0000-00-00', '', '0000-00-00', ''),
(60, 2015, 'Desktop', 'Desktop Computer i7', 'Head CSE', 50, '06.10.2015', 2514800, 1059, '0000-00-00', '', '0000-00-00', ''),
(61, 2015, 'Desktop', 'Desktop Computer i7', 'Director EMRC', 3, '06.10.2015', 150888, 1060, '0000-00-00', '', '0000-00-00', ''),
(62, 2015, 'Desktop', 'Desktop Computer i5', 'Head Nanoscience and Tech.', 1, '12.10.2015', 39024, 1061, '0000-00-00', '', '0000-00-00', ''),
(63, 2015, 'Desktop', 'Desktop Computer i7', 'Head CSE CEG Campus', 10, '06.11.2015', 518700, 1062, '0000-00-00', '', '0000-00-00', ''),
(64, 2015, 'Desktop', 'Desktop Computer i7', 'Head Manufacturing Engg', 2, '06.11.2015', 124000, 1063, '0000-00-00', '', '0000-00-00', ''),
(65, 2015, 'Desktop', 'Desktop Computer i7', 'Director P&D', 1, '06.11.2015', 62000, 1064, '0000-00-00', '', '0000-00-00', ''),
(66, 2015, 'Desktop', 'Desktop Computer i3', 'Head Computer Centre MIT', 16, '22.12.2015', 506784, 1065, '0000-00-00', '', '0000-00-00', ''),
(67, 2015, 'Desktop', 'Desktop Computer i3', 'Head Computer Tech. MIT', 3, '22.12.2015', 95022, 1066, '0000-00-00', '', '0000-00-00', ''),
(68, 2015, 'Desktop', 'Desktop Computer i3', 'Head Applied Science & Humanities', 1, '22.12.2015', 31674, 1067, '0000-00-00', '', '0000-00-00', ''),
(69, 2015, 'Desktop', 'Desktop Computer i5', 'Director Nanoscience and Tech.', 1, '22.12.2015', 39024, 1068, '0000-00-00', '', '0000-00-00', ''),
(70, 2015, 'Desktop', 'Desktop Computer i5', 'Head MBA', 10, '22.12.2015', 390240, 1069, '0000-00-00', '', '0000-00-00', ''),
(71, 2015, 'Desktop', 'Desktop Computer i5', 'Head MBA', 5, '22.12.2015', 195120, 1070, '0000-00-00', '', '0000-00-00', ''),
(72, 2015, 'Desktop', 'Desktop Computer i5', 'Head Aerospace Engineering', 5, '22.12.2015', 195120, 1071, '0000-00-00', '', '0000-00-00', ''),
(73, 2015, 'Desktop', 'Desktop Computer i5', 'Head Rubber and Plastics Engg.', 9, '22.12.2015', 351216, 1072, '0000-00-00', '', '0000-00-00', ''),
(74, 2015, 'Desktop', 'Desktop Computer i5', 'Head ECE CEG Campus', 3, '22.12.2015', 117072, 1073, '0000-00-00', '', '0000-00-00', ''),
(75, 2015, 'Desktop', 'Desktop Computer i5', 'Head Nanoscience and Tech.', 1, '22.12.2015', 39024, 1074, '0000-00-00', '', '0000-00-00', ''),
(76, 2015, 'Desktop', 'Desktop Computer i5', 'Co-ordinator Applied Sci. & Hum. MIT', 5, '22.12.2015', 195120, 1075, '0000-00-00', '', '0000-00-00', ''),
(77, 2015, 'Desktop', 'Desktop Computer i5', 'Head Applied Science & Technology', 20, '22.12.2015', 780480, 1076, '0000-00-00', '', '0000-00-00', ''),
(78, 2015, 'Desktop', 'Desktop Computer i5', 'Dean SAP Campus (Architecture)', 35, '22.12.2015', 1365840, 1077, '0000-00-00', '', '0000-00-00', ''),
(79, 2015, 'Desktop', 'Desktop Computer i5', 'Head Printing Technology', 3, '22.12.2015', 117072, 1078, '0000-00-00', '', '0000-00-00', ''),
(80, 2015, 'Desktop', 'Desktop Computer i5', 'Director Library CEG Campus', 15, '22.12.2015', 585360, 1079, '0000-00-00', '', '0000-00-00', ''),
(81, 2015, 'Desktop', 'Desktop Computer i5', 'Head IT MIT Campus', 1, '22.12.2015', 39024, 1080, '0000-00-00', '', '0000-00-00', ''),
(82, 2015, 'Desktop', 'Desktop Computer i5', 'Head Textile Technology', 13, '22.12.2015', 507312, 1081, '0000-00-00', '', '0000-00-00', ''),
(83, 2015, 'Desktop', 'Desktop Computer i7', 'Director Crystal Growth Centre', 6, '22.12.2015', 301776, 1082, '0000-00-00', '', '0000-00-00', ''),
(84, 2015, 'Desktop', 'Desktop Computer i7', 'Head Nanoscience and Tech.', 1, '22.12.2015', 50296, 1083, '0000-00-00', '', '0000-00-00', ''),
(85, 2015, 'Desktop', 'Desktop Computer i7', 'Head CSE CEG Campus', 10, '22.12.2015', 502960, 1084, '0000-00-00', '', '0000-00-00', ''),
(86, 2015, 'Desktop', 'Desktop Computer i7', 'Head Applied Science and Tech. A.C.Tech.', 1, '22.12.2015', 50296, 1085, '0000-00-00', '', '0000-00-00', ''),
(87, 2015, 'Desktop', 'Desktop Computer i7', 'Head CSE CEG Campus', 59, '22.12.2015', 2967464, 1086, '0000-00-00', '', '0000-00-00', ''),
(88, 2015, 'Desktop', 'Desktop Computer i7', 'Head Printing Technology', 5, '22.12.2015', 251480, 1087, '0000-00-00', '', '0000-00-00', ''),
(89, 2015, 'Desktop', 'Desktop Computer i7', 'Head Instrumentation Engg. MIT Campus', 23, '22.12.2015', 1156808, 1088, '0000-00-00', '', '0000-00-00', ''),
(90, 2015, 'Desktop', 'Desktop Computer i7', 'Head Computer Tech. MIT', 5, '22.12.2015', 251480, 1089, '0000-00-00', '', '0000-00-00', ''),
(91, 2015, 'Desktop', 'Desktop Computer i7', 'Head IT MIT Campus', 5, '22.12.2015', 251480, 1090, '0000-00-00', '', '0000-00-00', ''),
(92, 2015, 'Desktop', 'Desktop Computer i7', 'Head Automobile Engg. MIT', 23, '22.12.2015', 1156808, 1091, '0000-00-00', '', '0000-00-00', ''),
(93, 2015, 'Desktop', 'Desktop Computer i7', 'Controller of Examinations AU', 31, '22.12.2015', 1559176, 1092, '0000-00-00', '', '0000-00-00', ''),
(94, 2015, 'Desktop', 'Desktop Computer i7', 'Head Production Tech. MIT', 7, '22.12.2015', 352072, 1093, '0000-00-00', '', '0000-00-00', ''),
(95, 2015, 'Desktop', 'Desktop Computer i3', 'Head Chemistry AU', 9, '22.12.2015', 285066, 1094, '0000-00-00', '', '0000-00-00', ''),
(96, 2015, 'Desktop', 'Desktop Computer i3', 'Head Mechancial Engg. CEG Campus', 5, '22.12.2015', 158370, 1095, '0000-00-00', '', '0000-00-00', ''),
(97, 2015, 'Desktop', 'Desktop Computer i5', 'Director IES CEG Campus', 4, '22.12.2015', 156096, 1096, '0000-00-00', '', '0000-00-00', ''),
(98, 2015, 'Desktop', 'Desktop Computer i5', 'Head Mechancial Engg. CEG Campus', 1, '22.12.2015', 39024, 1097, '0000-00-00', '', '0000-00-00', ''),
(99, 2015, 'Desktop', 'Desktop Computer i5', 'Head Computer Tech. MIT', 1, '22.12.2015', 39024, 1098, '0000-00-00', '', '0000-00-00', ''),
(100, 2015, 'Desktop', 'Desktop Computer i7', 'Head Internal Combustion Engg.  Mech.', 2, '22.12.2015', 100592, 1099, '0000-00-00', '', '0000-00-00', ''),
(101, 2015, 'Desktop', 'Desktop Computer i7', 'Head Computer Tech. MIT', 2, '22.12.2015', 100592, 1100, '0000-00-00', '', '0000-00-00', ''),
(102, 2015, 'Desktop', 'Desktop Computer i7', 'Head Mining Engg. CEG Campus', 11, '22.12.2015', 553256, 1101, '0000-00-00', '', '0000-00-00', ''),
(103, 2016, 'Desktop', 'Desktop Computer i3', 'Head Mathematics AU', 25, '03.03.2016', 791850, 1102, '0000-00-00', '', '0000-00-00', ''),
(104, 2016, 'Desktop', 'Desktop Computer i3', 'Head Indl. Engg. CEG Campus', 16, '31.05.2016', 624384, 1103, '0000-00-00', '', '0000-00-00', ''),
(105, 2016, 'Desktop', 'Desktop Computer i3', 'Head  Civil Engg. CEG Campus', 11, '31.05.2016', 429264, 1104, '0000-00-00', '', '0000-00-00', ''),
(106, 2016, 'Desktop', 'Desktop Computer i3', 'Head Aerospace Engineering MIT', 3, '31.05.2016', 150888, 1105, '0000-00-00', '', '0000-00-00', ''),
(107, 2016, 'Desktop', 'Desktop Computer i5', 'Secretary TNEA', 50, '31.05.2016', 2514800, 1106, '0000-00-00', '', '0000-00-00', ''),
(108, 2017, 'Desktop', 'Desktop Computer i7', 'Director Centre for Research', 5, '13.02.2017', 246750, 1107, '0000-00-00', '', '0000-00-00', ''),
(109, 2017, 'Desktop', 'Desktop Computer i7', 'Head Geology', 1, '13.02.2017', 49350, 1108, '0000-00-00', '', '0000-00-00', ''),
(110, 2017, 'Desktop', 'Desktop Computer i7', 'Director Aerospace Research', 5, '16.02.2017', 281400, 1109, '0000-00-00', '', '0000-00-00', ''),
(111, 2017, 'Desktop', 'Desktop Computer i7', 'Director IQAC', 3, '16.02.2017', 176085, 1110, '0000-00-00', '', '0000-00-00', ''),
(112, 2017, 'Desktop', 'Desktop Computer i7', 'Director P&D', 1, '16.02.2017', 58695, 1111, '0000-00-00', '', '0000-00-00', ''),
(113, 2017, 'Desktop', 'Desktop Computer i5', 'Head R&AC Div. Mechanical CEG Campus', 3, '16.02.2017', 126000, 1112, '0000-00-00', '', '0000-00-00', ''),
(114, 2017, 'Desktop', 'Desktop Computer i5', 'Head Transport Engg. Civil Engg. ', 2, '18.02.2017', 84000, 1113, '0000-00-00', '', '0000-00-00', ''),
(115, 2017, 'Desktop', 'Desktop Computer i7', 'Head DIST CEG Campus', 4, '24.02.2017', 197400, 1114, '0000-00-00', '', '0000-00-00', ''),
(116, 2017, 'Desktop', 'Desktop Computer i3', 'Head Mechancial Engg. CEG Campus', 3, '24.02.2017', 85500, 1115, '0000-00-00', '', '0000-00-00', ''),
(117, 2017, 'Desktop', 'Desktop Computer i7', 'Co-ordinator Science and Humanities MIT', 1, '28.02.2017', 58695, 1116, '0000-00-00', '', '0000-00-00', ''),
(118, 2017, 'Desktop', 'Desktop Computer i3', 'Head Science & Humanities MIT Campus', 1, '09.03.2017', 27500, 1117, '0000-00-00', '', '0000-00-00', ''),
(119, 2017, 'Desktop', 'Desktop Computer i5', 'FA 30 Section', 3, '22.06.2017', 132000, 1118, '0000-00-00', '', '0000-00-00', ''),
(120, 2017, 'Desktop', 'Desktop Computer i5', 'Purchase Section', 1, '22.06.2017', 44000, 1119, '0000-00-00', '', '0000-00-00', ''),
(121, 2017, 'Desktop', 'Desktop Computer i7', 'Head EEE CEG Campus', 1, '22.06.2017', 59900, 1120, '0000-00-00', '', '0000-00-00', ''),
(122, 2017, 'Desktop', 'Desktop Computer i5', 'Head Textile Technology', 3, '06.06.2017', 130980, 1121, '0000-00-00', '', '0000-00-00', ''),
(123, 2017, 'Desktop', 'Desktop Computer i5', 'Head Computer Tech. MIT', 1, '11.09.2017', 44000, 1122, '0000-00-00', '', '0000-00-00', ''),
(124, 2017, 'Desktop', 'Desktop Computer i5', 'Head Geology', 2, '11.09.2017', 88000, 1123, '0000-00-00', '', '0000-00-00', ''),
(125, 2017, 'Desktop', 'Desktop Computer i7', 'Centre for Water Resources', 8, '15.09.2017', 363440, 1124, '0000-00-00', '', '0000-00-00', ''),
(126, 2017, 'Desktop', 'Desktop Computer i7', 'Div. of Soil Mechanics', 8, '15.09.2017', 363440, 1125, '0000-00-00', '', '0000-00-00', ''),
(127, 2017, 'Desktop', 'Desktop Computer i7', 'Div. of Transportation Engg.', 10, '15.09.2017', 454300, 1126, '0000-00-00', '', '0000-00-00', ''),
(128, 2017, 'Desktop', 'Desktop Computer i7', 'Div. of Structural Engg.', 8, '15.09.2017', 363440, 1127, '0000-00-00', '', '0000-00-00', ''),
(129, 2017, 'Desktop', 'Desktop Computer i7', 'Institute of Ocean Management', 6, '15.09.2017', 272580, 1128, '0000-00-00', '', '0000-00-00', ''),
(130, 2017, 'Desktop', 'Desktop Computer i7', 'Centre for Environmental Studies', 9, '15.09.2017', 408870, 1129, '0000-00-00', '', '0000-00-00', ''),
(131, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Electrical Engg.', 18, '15.09.2017', 817740, 1130, '0000-00-00', '', '0000-00-00', ''),
(132, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of ECE', 15, '15.09.2017', 681450, 1131, '0000-00-00', '', '0000-00-00', ''),
(133, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of IST', 20, '15.09.2017', 908600, 1132, '0000-00-00', '', '0000-00-00', ''),
(134, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Printing Tech', 10, '15.09.2017', 454300, 1133, '0000-00-00', '', '0000-00-00', ''),
(135, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Maths', 10, '15.09.2017', 454300, 1134, '0000-00-00', '', '0000-00-00', ''),
(136, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Physics', 8, '15.09.2017', 363440, 1135, '0000-00-00', '', '0000-00-00', ''),
(137, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Chemistry', 8, '15.09.2017', 363440, 1136, '0000-00-00', '', '0000-00-00', ''),
(138, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of MBA', 10, '15.09.2017', 454300, 1137, '0000-00-00', '', '0000-00-00', ''),
(139, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Geology', 6, '15.09.2017', 272580, 1138, '0000-00-00', '', '0000-00-00', ''),
(140, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Media Science', 5, '15.09.2017', 227150, 1139, '0000-00-00', '', '0000-00-00', ''),
(141, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Manufacturing', 8, '15.09.2017', 363440, 1140, '0000-00-00', '', '0000-00-00', ''),
(142, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Medical Physics', 8, '15.09.2017', 363440, 1141, '0000-00-00', '', '0000-00-00', ''),
(143, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Mech. Engineering', 18, '15.09.2017', 817740, 1142, '0000-00-00', '', '0000-00-00', ''),
(144, 2017, 'Desktop', 'Desktop Computer i7', 'Planning and Development', 5, '15.09.2017', 227150, 1143, '0000-00-00', '', '0000-00-00', ''),
(145, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Chemical', 3, '15.09.2017', 167311, 1144, '0000-00-00', '', '0000-00-00', ''),
(146, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Chemical', 1, '15.09.2017', 54994, 1145, '0000-00-00', '', '0000-00-00', ''),
(147, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Ceramic Tech', 3, '15.09.2017', 160425, 1146, '0000-00-00', '', '0000-00-00', ''),
(148, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Applied Science Tech', 3, '15.09.2017', 160425, 1147, '0000-00-00', '', '0000-00-00', ''),
(149, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Textile Tech', 3, '15.09.2017', 160425, 1148, '0000-00-00', '', '0000-00-00', ''),
(150, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Bio-Technology', 4, '15.09.2017', 213773, 1149, '0000-00-00', '', '0000-00-00', ''),
(151, 2017, 'Desktop', 'Desktop Computer i7', 'Crystal Growth Centre', 3, '15.09.2017', 172057, 1150, '0000-00-00', '', '0000-00-00', ''),
(152, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Nano Science', 3, '15.09.2017', 160425, 1151, '0000-00-00', '', '0000-00-00', ''),
(153, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Leather Tech', 5, '15.09.2017', 278852, 1152, '0000-00-00', '', '0000-00-00', ''),
(154, 2017, 'Desktop', 'Desktop Computer i7', 'Computer Lab', 50, '15.09.2017', 2788517, 1153, '0000-00-00', '', '0000-00-00', ''),
(155, 2017, 'Desktop', 'Desktop Computer i7', 'Computer Centre (Computer Practice Lab)', 75, '15.09.2017', 3601154, 1154, '0000-00-00', '', '0000-00-00', ''),
(156, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Computer Tech', 6, '15.09.2017', 288092, 1155, '0000-00-00', '', '0000-00-00', ''),
(157, 2017, 'Desktop', 'Desktop Computer i7', 'Computer Centre (CAD Lab)', 30, '15.09.2017', 466465, 1156, '0000-00-00', '', '0000-00-00', ''),
(158, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of IT', 12, '15.09.2017', 659927, 1157, '0000-00-00', '', '0000-00-00', ''),
(159, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of ECE', 18, '15.09.2017', 989890, 1158, '0000-00-00', '', '0000-00-00', ''),
(160, 2017, 'Desktop', 'Desktop Computer i7', 'Head DIST CEG Campus', 3, '28.09.2017', 176614, 1159, '0000-00-00', '', '0000-00-00', ''),
(161, 2017, 'Desktop', 'Desktop Computer i7', 'Head CTDT', 7, '28.09.2017', 412100, 1160, '0000-00-00', '', '0000-00-00', ''),
(162, 2017, 'Desktop', 'Desktop Computer i7', 'Controller of Examinations', 3, '28.09.2017', 176614, 1161, '0000-00-00', '', '0000-00-00', ''),
(163, 2017, 'Desktop', 'Desktop Computer i7', 'Controller of Examinations', 6, '28.09.2017', 353228, 1162, '0000-00-00', '', '0000-00-00', ''),
(164, 2017, 'Desktop', 'Desktop Computer i7', 'Head ECE', 40, '28.09.2017', 1817200, 1163, '0000-00-00', '', '0000-00-00', ''),
(165, 2017, 'Desktop', 'Desktop Computer i7', 'Director IRS', 10, '28.09.2017', 534434, 1164, '0000-00-00', '', '0000-00-00', ''),
(166, 2017, 'Desktop', 'Desktop Computer i7', 'Head DIST', 6, '28.09.2017', 329963, 1165, '0000-00-00', '', '0000-00-00', ''),
(167, 2017, 'Desktop', 'Desktop Computer i7', 'Head EE MIT', 50, '28.09.2017', 2465374, 1166, '0000-00-00', '', '0000-00-00', ''),
(168, 2017, 'Desktop', 'Desktop Computer i7', 'Director RCC', 10, '28.09.2017', 534434, 1167, '0000-00-00', '', '0000-00-00', ''),
(169, 2017, 'Desktop', 'Desktop Computer i7', 'Director KDC', 6, '28.09.2017', 295845, 1168, '0000-00-00', '', '0000-00-00', ''),
(170, 2017, 'Desktop', 'Desktop Computer i7', 'Director Centre for Nano Science & Tech', 6, '28.09.2017', 295845, 1169, '0000-00-00', '', '0000-00-00', ''),
(171, 2017, 'Desktop', 'Desktop Computer i7', 'ACOE', 8, '28.09.2017', 470971, 1170, '0000-00-00', '', '0000-00-00', ''),
(172, 2017, 'Desktop', 'Desktop Computer i7', 'Head ECE', 1, '28.09.2017', 58871, 1171, '0000-00-00', '', '0000-00-00', ''),
(173, 2017, 'Desktop', 'Desktop Computer i7', 'Prof. and Head CT MIT', 2, '28.09.2017', 117743, 1172, '0000-00-00', '', '0000-00-00', ''),
(174, 2017, 'Desktop', 'Desktop Computer i7', 'Prof. and Head IT MIT', 10, '28.09.2017', 493075, 1173, '0000-00-00', '', '0000-00-00', ''),
(175, 2017, 'Desktop', 'Desktop Computer i7', 'Prof. and Head EEE', 2, '28.09.2017', 109988, 1174, '0000-00-00', '', '0000-00-00', ''),
(176, 2017, 'Desktop', 'Desktop Computer i7', 'Director CWR', 4, '28.09.2017', 197230, 1175, '0000-00-00', '', '0000-00-00', ''),
(177, 2017, 'Desktop', 'Desktop Computer i7', 'Director CWR', 3, '28.09.2017', 147922, 1176, '0000-00-00', '', '0000-00-00', ''),
(178, 2017, 'Desktop', 'Desktop Computer i7', 'Head DECE', 2, '28.09.2017', 117743, 1177, '0000-00-00', '', '0000-00-00', ''),
(179, 2017, 'Desktop', 'Desktop Computer i5', 'Head Chemistry AU', 25, '16.11.2017', 1003000, 1178, '0000-00-00', '', '0000-00-00', ''),
(180, 2018, 'Desktop', 'Desktop Computer i7', 'PRO\'s Office Rajbhavan', 3, '10.01.2018', 204997, 1179, '0000-00-00', '', '0000-00-00', ''),
(181, 2018, 'Desktop', 'Desktop Computer i7', 'Director IQAC', 1, '10.01.2018', 56050, 1180, '0000-00-00', '', '0000-00-00', ''),
(182, 2018, 'Desktop', 'Desktop Computer i7', 'Director Recruitment Cell', 2, '25.01.2018', 126282, 1181, '0000-00-00', '', '0000-00-00', ''),
(183, 2018, 'Desktop', 'Desktop Computer i5', 'Director Inst. Of Remote Sensing', 6, '22.03.2018', 253464, 1182, '0000-00-00', '', '0000-00-00', ''),
(184, 2018, 'Desktop', 'Desktop Computer i5', 'Dean UCE Konam Nagarkoil', 1, '22.03.2018', 42244, 1183, '0000-00-00', '', '0000-00-00', ''),
(185, 2018, 'Desktop', 'Desktop Computer i5', 'Director Library CEG Campus', 10, '22.03.2018', 422440, 1184, '0000-00-00', '', '0000-00-00', ''),
(186, 2018, 'Desktop', 'Desktop Computer i3', 'Dean BIT Campus Trichy', 70, '28.03.2018', 1858500, 1185, '0000-00-00', '', '0000-00-00', ''),
(187, 2018, 'Desktop', 'Desktop Computer i5', 'Dean UCE Kanchipuram', 200, '05.04.2018', 5734800, 1186, '0000-00-00', '', '0000-00-00', ''),
(188, 2018, 'Desktop', 'Desktop Computer i5', 'Dean UCE Ariyalur', 300, '05.04.2018', 8602800, 1187, '0000-00-00', '', '0000-00-00', ''),
(189, 2018, 'Desktop', 'Desktop Computer i5', 'Dean AU Regional Campus Madurai', 100, '05.04.2018', 2867400, 1188, '0000-00-00', '', '0000-00-00', ''),
(190, 2018, 'Desktop', 'Desktop Computer i5', 'Director CUIC CEG Campus', 40, '05.04.2018', 1146960, 1189, '0000-00-00', '', '0000-00-00', ''),
(191, 2018, 'Desktop', 'Desktop Computer i5', 'Head Mechancial Engg.', 5, '05.04.2018', 143370, 1190, '0000-00-00', '', '0000-00-00', ''),
(192, 2018, 'Desktop', 'Desktop Computer i5', 'Head EEE CEG Campus', 5, '05.04.2018', 143370, 1191, '0000-00-00', '', '0000-00-00', ''),
(193, 2018, 'Desktop', 'Desktop Computer i5', 'Head EEE CEG Campus', 7, '05.04.2018', 200718, 1192, '0000-00-00', '', '0000-00-00', ''),
(194, 2018, 'Desktop', 'Desktop Computer i5', 'Director CDE CEG Campus', 10, '05.04.2018', 286740, 1193, '0000-00-00', '', '0000-00-00', ''),
(195, 2018, 'Desktop', 'Desktop Computer i5', 'Co-ordinator UPE CEG Campus', 2, '05.04.2018', 57348, 1194, '0000-00-00', '', '0000-00-00', ''),
(196, 2018, 'Desktop', 'Desktop Computer i5', 'Head Mechancial Engg.', 20, '05.04.2018', 573480, 1195, '0000-00-00', '', '0000-00-00', ''),
(197, 2018, 'Desktop', 'Desktop Computer i5', 'Head Industrial Engg. CEG Campus', 10, '05.04.2018', 286740, 1196, '0000-00-00', '', '0000-00-00', ''),
(198, 2018, 'Desktop', 'Desktop Computer i5', 'Dean UCE Villupuram', 60, '05.04.2018', 1720440, 1197, '0000-00-00', '', '0000-00-00', ''),
(199, 2018, 'Desktop', 'Desktop Computer i5', 'Head Industrial Engg. CEG Campus', 2, '05.04.2018', 57348, 1198, '0000-00-00', '', '0000-00-00', ''),
(200, 2018, 'Desktop', 'Desktop Computer i5', 'Co-ordinator App. Sci. & Hum. MIT Campus', 3, '05.04.2018', 86022, 1199, '0000-00-00', '', '0000-00-00', ''),
(201, 2018, 'Desktop', 'Desktop Computer i5', 'Director CAI AU', 6, '05.04.2018', 172044, 1200, '0000-00-00', '', '0000-00-00', ''),
(202, 2018, 'Desktop', 'Desktop Computer i5', 'Dean SAP Campus', 6, '19.04.2018', 172044, 1201, '0000-00-00', '', '0000-00-00', ''),
(203, 2018, 'Desktop', 'Desktop Computer i5', 'Head Medical Physics', 2, '19.04.2018', 57348, 1202, '0000-00-00', '', '0000-00-00', ''),
(204, 2018, 'Desktop', 'Desktop Computer i7', 'Head DIST CEG Campus', 10, '21.05.2018', 668647, 1203, '0000-00-00', '', '0000-00-00', ''),
(205, 2018, 'Desktop', 'Desktop Computer i7', 'Head DCSE CEG Campus', 90, '21.07.2018', 5240970, 1204, '0000-00-00', '', '0000-00-00', ''),
(206, 2018, 'Desktop', 'Desktop Computer i7', 'Director P&D', 26, '21.07.2018', 1388270, 1205, '0000-00-00', '', '0000-00-00', ''),
(207, 2018, 'Desktop', 'Desktop Computer i7', 'Head Dept. Instrumentation Engg. MIT Campus', 10, '21.07.2018', 533950, 1206, '0000-00-00', '', '0000-00-00', ''),
(208, 2018, 'Desktop', 'Desktop Computer i7', 'Director Library CEG Campus', 5, '21.07.2018', 266975, 1207, '0000-00-00', '', '0000-00-00', ''),
(209, 2018, 'Desktop', 'Desktop Computer i7', 'Head Dept. Mechancial Engg. CEG Campus', 5, '21.07.2018', 266975, 1208, '0000-00-00', '', '0000-00-00', ''),
(210, 2018, 'Desktop', 'Desktop Computer i7', 'Director Academic Courses', 3, '21.07.2018', 160185, 1209, '0000-00-00', '', '0000-00-00', ''),
(211, 2018, 'Desktop', 'Desktop Computer i7', 'Controller of Examinations AU', 1, '21.07.2018', 53395, 1210, '0000-00-00', '', '0000-00-00', ''),
(1, 2014, 'Server', 'Server', 'Head CT MIT', 2, '31.12.2014', 119654, 1211, '0000-00-00', '', '0000-00-00', ''),
(2, 2014, 'Server', 'Server', 'Dean CEG', 1, '31.12.2014', 264760, 1212, '0000-00-00', '', '0000-00-00', ''),
(3, 2014, 'Server', 'Server', 'EEE CEG', 1, '31.12.2014', 140108, 1213, '0000-00-00', '', '0000-00-00', ''),
(4, 2015, 'Server', 'Server', 'Chemical Engineering', 2, '05.02.2015', 440268, 1214, '0000-00-00', '', '0000-00-00', ''),
(5, 2015, 'Server', 'Server', 'RCC', 1, '26.02.2015', 1350000, 1215, '0000-00-00', '', '0000-00-00', ''),
(6, 2015, 'Server', 'Server', 'IT MIT Campus', 1, '26.02.2015', 1350000, 1216, '0000-00-00', '', '0000-00-00', ''),
(7, 2015, 'Server', 'Server', 'IT MIT Campus', 1, '26.02.2015', 345000, 1217, '0000-00-00', '', '0000-00-00', ''),
(8, 2015, 'Server', 'Server', 'CT MIT Campus', 1, '26.02.2015', 345000, 1218, '0000-00-00', '', '0000-00-00', ''),
(9, 2015, 'Server', 'Server', 'Centre for Research', 1, '26.02.2015', 345000, 1219, '0000-00-00', '', '0000-00-00', ''),
(10, 2015, 'Server', 'Server', 'Dean MIT Campus', 1, '26.02.2015', 345000, 1220, '0000-00-00', '', '0000-00-00', ''),
(11, 2015, 'Server', 'Server', 'Computer Centre MIT Campus', 1, '26.02.2015', 345000, 1221, '0000-00-00', '', '0000-00-00', ''),
(12, 2015, 'Server', 'Blade Server', 'CSE CEG Campus', 4, '26.02.2015', 1998000, 1222, '0000-00-00', '', '0000-00-00', ''),
(13, 2015, 'Server', 'Blade Server', 'IT CEG Campus', 4, '26.02.2015', 1998000, 1223, '0000-00-00', '', '0000-00-00', ''),
(14, 2015, 'Server', 'Server', 'Knowledge Data Centre AU', 2, '09.03.2015', 2700000, 1224, '0000-00-00', '', '0000-00-00', ''),
(15, 2015, 'Server', 'Server', 'CSE CEG Campus', 2, '09.03.2015', 690000, 1225, '0000-00-00', '', '0000-00-00', ''),
(16, 2015, 'Server', 'Server', 'IT CEG Campus', 2, '09.03.2015', 690000, 1226, '0000-00-00', '', '0000-00-00', ''),
(17, 2015, 'Server', 'High End Server', 'Controller of Examinations AU', 4, '12.03.2015', 7854661, 1227, '0000-00-00', '', '0000-00-00', ''),
(18, 2015, 'Server', 'High End Server', 'Secretary TANCET Exams. Centre', 1, '23.03.2015', 1963665, 1228, '0000-00-00', '', '0000-00-00', ''),
(19, 2015, 'Server', 'High End Server', 'Secretary TNEA Exams. Centre', 1, '23.03.2015', 1963665, 1229, '0000-00-00', '', '0000-00-00', ''),
(20, 2015, 'Server', 'High End Server', 'Director KDC AU ', 2, '23.03.2015', 392733, 1230, '0000-00-00', '', '0000-00-00', ''),
(21, 2015, 'Server', 'Server', 'Co-ordinator NSS', 1, '27.07.2015', 251522, 1231, '0000-00-00', '', '0000-00-00', ''),
(22, 2015, 'Server', 'Server', 'Director Academic Courses', 1, '01.10.2015', 440000, 1232, '0000-00-00', '', '0000-00-00', ''),
(23, 2015, 'Server', 'Server', 'Director Recruitment Cell', 1, '12.10.2015', 440000, 1233, '0000-00-00', '', '0000-00-00', ''),
(24, 2015, 'Server', 'Server', 'Prof. & Head MBA', 1, '06.11.2015', 197225, 1234, '0000-00-00', '', '0000-00-00', ''),
(25, 2016, 'Server', ' Server', 'Head CSE CEG Campus', 1, '03.03.2016', 59000, 1235, '0000-00-00', '', '0000-00-00', ''),
(26, 2016, 'Server', ' Server', 'DCSE CEG Campus', 1, '21.03.2016', 189000, 1236, '0000-00-00', '', '0000-00-00', ''),
(27, 2016, 'Server', 'Server', 'Head Mining Depart', 1, '21.03.2016', 189000, 1237, '0000-00-00', '', '0000-00-00', ''),
(28, 2016, 'Server', ' Server', 'Head ECE  CEG Campus', 2, '03.03.2016', 378000, 1238, '0000-00-00', '', '0000-00-00', ''),
(29, 2016, 'Server', 'Rack Server', 'Director RCC', 1, '17.06.2016', 440000, 1239, '0000-00-00', '', '0000-00-00', ''),
(30, 2017, 'Server', 'Server', 'Head DIST CEG Campus', 1, '30.01.2017', 182700, 1240, '0000-00-00', '', '0000-00-00', ''),
(31, 2017, 'Server', 'Server', 'Dean SAP Campus', 1, '30.01.2017', 175350, 1241, '0000-00-00', '', '0000-00-00', ''),
(32, 2017, 'Server', 'Server', 'Director RCC', 1, '07.03.2017', 354000, 1242, '0000-00-00', '', '0000-00-00', ''),
(33, 2017, 'Server', 'Server', 'Head CWDiv. Mechanical Engg.', 1, '07.03.2017', 152250, 1243, '0000-00-00', '', '0000-00-00', ''),
(34, 2017, 'Server', 'Low End Server', 'Head CSE CEG Campus', 4, '05.06.2017', 283500, 1244, '0000-00-00', '', '0000-00-00', ''),
(35, 2017, 'Server', 'Server', 'Head Chemistry', 1, '05.06.2017', 231000, 1245, '0000-00-00', '', '0000-00-00', ''),
(36, 2017, 'Server', 'High End Server', 'Head CSE CEG Campus', 1, '19.07.2017', 485000, 1246, '0000-00-00', '', '0000-00-00', ''),
(37, 2017, 'Server', 'High End Server', 'Director RCC', 1, '20.07.2017', 955000, 1247, '0000-00-00', '', '0000-00-00', ''),
(38, 2017, 'Server', 'High End Server', 'Secretary TNEA Exams. Centre', 1, '20.07.2017', 955000, 1248, '0000-00-00', '', '0000-00-00', ''),
(39, 2017, 'Server', 'Server', 'Secretary TNEA Exams. Centre', 1, '24.08.2017', 849600, 1249, '0000-00-00', '', '0000-00-00', ''),
(40, 2017, 'Server', 'Server', 'Director P&D', 1, '15.09.2017', 213811, 1250, '0000-00-00', '', '0000-00-00', ''),
(41, 2017, 'Server', 'Server', 'Head DCSE CEG', 2, '15.09.2017', 804819, 1251, '0000-00-00', '', '0000-00-00', ''),
(42, 2017, 'Server', 'Server', 'Director RCC', 1, '15.09.2017', 867349, 1252, '0000-00-00', '', '0000-00-00', ''),
(43, 2017, 'Server', 'Server', 'Director KDC', 1, '15.09.2017', 768510, 1253, '0000-00-00', '', '0000-00-00', ''),
(44, 2017, 'Server', 'High End Server', 'Director CTDT', 1, '05.10.2017', 919999, 1254, '0000-00-00', '', '0000-00-00', ''),
(45, 2017, 'Server', 'HPC Server', 'Head Aerospace Research MIT', 1, '05.10.2017', 700000, 1255, '0000-00-00', '', '0000-00-00', ''),
(46, 2017, 'Server', 'High End Server', 'Head DCSE CEG', 1, '28.12.2017', 974000, 1256, '0000-00-00', '', '0000-00-00', ''),
(47, 2018, 'Server', 'High End Server', 'Director RCC', 1, '12.01.2018', 974000, 1257, '0000-00-00', '', '0000-00-00', ''),
(48, 2018, 'Server', 'Server', 'Head Media Science', 1, '19.01.2018', 325000, 1258, '0000-00-00', '', '0000-00-00', ''),
(49, 2018, 'Server', 'Server', 'Dean UCE Dindugul', 1, '28.02.2018', 64000, 1259, '0000-00-00', '', '0000-00-00', ''),
(50, 2018, 'Server', 'Server', 'Co-ordinator UPE CEG Campus', 1, '21.03.2018', 183750, 1260, '0000-00-00', '', '0000-00-00', ''),
(51, 2018, 'Server', 'Server', 'ACOE CEG Campus', 2, '28.03.2018', 1355962, 1261, '0000-00-00', '', '0000-00-00', ''),
(52, 2018, 'Server', 'Server', 'Director KDC CEG Campus', 4, '07.06.2018', 2596000, 1262, '0000-00-00', '', '0000-00-00', ''),
(53, 2018, 'Server', 'High End Server', 'Co-ordinator UPE CEG Campus', 1, '07.06.2018', 417375, 1263, '0000-00-00', '', '0000-00-00', ''),
(1, 2014, 'Workstation', 'Work Station', 'Aerospace Research', 1, '29.09.2014', 242802, 1264, '0000-00-00', '', '0000-00-00', ''),
(2, 2014, 'Workstation', 'Work Station', 'AU-KBC Centre MIT', 1, '29.09.2014', 139585, 1265, '0000-00-00', '', '0000-00-00', ''),
(3, 2014, 'Workstation', 'Work Station', 'Head Computer Tech. CEG Campus', 2, '24.12.2014', 125952, 1266, '0000-00-00', '', '0000-00-00', ''),
(4, 2014, 'Workstation', 'Work Station', 'Biotechnology', 1, '31.12.2014', 199500, 1267, '0000-00-00', '', '0000-00-00', ''),
(5, 2015, 'Workstation', 'Work Station', 'ACOE ', 1, '11.02.2015', 358624, 1268, '0000-00-00', '', '0000-00-00', ''),
(6, 2015, 'Workstation', 'Work Station', 'CSE CEG Campus', 5, '26.02.2015', 700000, 1269, '0000-00-00', '', '0000-00-00', ''),
(7, 2015, 'Workstation', 'Work Station', 'Exams. Centre TNEA', 4, '11.03.2015', 560000, 1270, '0000-00-00', '', '0000-00-00', ''),
(8, 2015, 'Workstation', 'Work Station', 'Centre for Biotechnolgy A.C.Tech.', 1, '25.05.2015', 333500, 1271, '0000-00-00', '', '0000-00-00', ''),
(9, 2015, 'Workstation', 'Work Station', 'Head Electronics Engg. MIT Campus', 1, '06.11.2015', 207900, 1272, '0000-00-00', '', '0000-00-00', ''),
(10, 2015, 'Workstation', 'Work Station', 'Director EMRC CEG Campus', 2, '06.11.2015', 185000, 1273, '0000-00-00', '', '0000-00-00', ''),
(11, 2015, 'Workstation', 'Work Station', 'Head Mechancial Engg. CEG Campus', 1, '22.12.2015', 93114, 1274, '0000-00-00', '', '0000-00-00', ''),
(12, 2016, 'Workstation', 'Work Station', 'Director AU-FRG HP 1.3', 2, '25.02.2016', 265125, 1275, '0000-00-00', '', '0000-00-00', ''),
(13, 2016, 'Workstation', 'Work Station', 'Director AU-FRG HP 1.4', 1, '25.02.2016', 171917, 1276, '0000-00-00', '', '0000-00-00', ''),
(14, 2017, 'Workstation', 'Work Station', 'Director AU-FRG ', 2, '30.01.2017', 174300, 1277, '0000-00-00', '', '0000-00-00', ''),
(15, 2017, 'Workstation', 'Work Station', 'Director AU-FRG ', 1, '30.01.2017', 109200, 1278, '0000-00-00', '', '0000-00-00', ''),
(16, 2017, 'Workstation', 'Work Station', 'Director AU-FRG ', 2, '30.01.2017', 163800, 1279, '0000-00-00', '', '0000-00-00', ''),
(17, 2017, 'Workstation', 'Work Station', 'Head Physics', 1, '13.02.2017', 169050, 1280, '0000-00-00', '', '0000-00-00', ''),
(18, 2017, 'Workstation', 'Work Station', 'Head Physics', 1, '16.02.2017', 138600, 1281, '0000-00-00', '', '0000-00-00', ''),
(19, 2017, 'Workstation', 'Work Station', 'Director RCC', 1, '24.02.2017', 210000, 1282, '0000-00-00', '', '0000-00-00', ''),
(20, 2017, 'Workstation', 'Work Station', 'Head Physics', 1, '20.07.2017', 430500, 1283, '0000-00-00', '', '0000-00-00', ''),
(21, 2017, 'Workstation', 'Work Station', 'Dean CEG', 3, '24.08.2017', 559544, 1284, '0000-00-00', '', '0000-00-00', ''),
(22, 2017, 'Workstation', 'Work Station', 'Prof. and Head Medical Physics', 1, '21.11.2017', 321788, 1285, '0000-00-00', '', '0000-00-00', ''),
(23, 2017, 'Workstation', 'Work Station', 'Director CCC&AR', 3, '28.12.2017', 573480, 1286, '0000-00-00', '', '0000-00-00', ''),
(24, 2018, 'Workstation', 'Workstation', 'Head DIST CEG Campus', 1, '03.01.2018', 108560, 1287, '0000-00-00', '', '0000-00-00', ''),
(25, 2018, 'Workstation', 'Workstation', 'Head Aerospace Engg. MIT Campus', 1, '20.02.2018', 205000, 1288, '0000-00-00', '', '0000-00-00', ''),
(26, 2018, 'Workstation', 'Workstation', 'Head Computer Tech. MIT Campus', 3, '10.03.2018', 350000, 1289, '0000-00-00', '', '0000-00-00', ''),
(27, 2018, 'Workstation', 'Workstation', 'Head Manufacturing Engg.', 2, '22.03.2018', 233333, 1290, '0000-00-00', '', '0000-00-00', ''),
(28, 2018, 'Workstation', 'Workstation', 'Director AU-FRG CEG Campus', 12, '07.06.2018', 891372, 1291, '0000-00-00', '', '0000-00-00', ''),
(29, 2018, 'Workstation', 'Workstation', 'Head DIST CEG Campus', 10, '29.06.2018', 849600, 1292, '0000-00-00', '', '0000-00-00', ''),
(1, 2014, 'Laptop', 'Laptop i3', 'Institute of Remote Sensing', 1, '12.09.2014', 35000, 1293, '0000-00-00', '', '0000-00-00', ''),
(2, 2014, 'Laptop', 'Laptop i7', 'Finance Officer', 1, '12.09.2014', 63000, 1294, '0000-00-00', '', '0000-00-00', ''),
(3, 2014, 'Laptop', 'Laptop i7', 'Prof. Syndicate Section', 1, '12.09.2014', 63000, 1295, '0000-00-00', '', '0000-00-00', ''),
(4, 2014, 'Laptop', 'Laptop i7', 'Academic Courses', 3, '12.09.2014', 176255, 1296, '0000-00-00', '', '0000-00-00', ''),
(5, 2014, 'Laptop', 'Laptop i7', 'ACOE', 1, '12.09.2014', 58572, 1297, '0000-00-00', '', '0000-00-00', ''),
(6, 2014, 'Laptop', 'Laptop i7', 'IQAC', 1, '12.09.2014', 58572, 1298, '0000-00-00', '', '0000-00-00', ''),
(7, 2014, 'Laptop', 'Laptop i3', 'Department of ECE', 1, '12.09.2014', 35000, 1299, '0000-00-00', '', '0000-00-00', ''),
(8, 2014, 'Laptop', 'Laptop i3', 'Department of Mech', 9, '23.09.2014', 382096, 1300, '0000-00-00', '', '0000-00-00', ''),
(9, 2014, 'Laptop', 'Laptop i5', 'RCC', 1, '29.09.2014', 69457, 1301, '0000-00-00', '', '0000-00-00', ''),
(10, 2014, 'Laptop', 'Laptop i5', 'CWR', 6, '01.10.2014', 228000, 1302, '0000-00-00', '', '0000-00-00', ''),
(11, 2015, 'Laptop', 'Laptop i5', 'Head IT MIT Campus', 1, '18.02.2015', 38000, 1303, '0000-00-00', '', '0000-00-00', ''),
(12, 2015, 'Laptop', 'Laptop i5', 'Div. Sciences and Humanities', 1, '18.02.2015', 38000, 1304, '0000-00-00', '', '0000-00-00', ''),
(13, 2015, 'Laptop', 'Laptop i5', 'Asst. Prof. Media Science', 1, '03.03.2015', 38000, 1305, '0000-00-00', '', '0000-00-00', ''),
(14, 2015, 'Laptop', 'Laptop MacBook', 'RCC AU', 10, '02.03.2015', 792900, 1306, '0000-00-00', '', '0000-00-00', ''),
(15, 2015, 'Laptop', 'Laptop i7', 'KDC AU', 1, '09.03.2015', 58968, 1307, '0000-00-00', '', '0000-00-00', ''),
(16, 2015, 'Laptop', 'Laptop i7', 'Prof. & Head. Manufacturing', 1, '09.03.2015', 58968, 1308, '0000-00-00', '', '0000-00-00', ''),
(17, 2015, 'Laptop', 'Laptop i7', 'Dean A.C.Tech.', 1, '09.03.2015', 58968, 1309, '0000-00-00', '', '0000-00-00', ''),
(18, 2015, 'Laptop', 'Laptop i5', 'Prof. & Head. CSE', 1, '09.03.2015', 89900, 1310, '0000-00-00', '', '0000-00-00', ''),
(19, 2015, 'Laptop', 'Laptop MacBook', 'Controller of Examination', 1, '12.03.2015', 79290, 1311, '0000-00-00', '', '0000-00-00', ''),
(20, 2015, 'Laptop', 'Laptop i5', 'Head Production Tech.', 1, '27.07.2015', 39000, 1312, '0000-00-00', '', '0000-00-00', ''),
(21, 2015, 'Laptop', 'Laptop i5', 'Controller of Examinations', 2, '27.07.2015', 100000, 1313, '0000-00-00', '', '0000-00-00', ''),
(22, 2015, 'Laptop', 'Laptop i5', 'Electronics Engg. MIT Campus', 2, '27.07.2015', 118500, 1314, '0000-00-00', '', '0000-00-00', ''),
(23, 2015, 'Laptop', 'Laptop i5', 'Mechancial Engg CEG Campus', 1, '27.07.2015', 59250, 1315, '0000-00-00', '', '0000-00-00', ''),
(24, 2015, 'Laptop', 'Laptop i5', 'Head ISTCEG Campus', 1, '10.08.2015', 59250, 1316, '0000-00-00', '', '0000-00-00', ''),
(25, 2015, 'Laptop', 'Laptop i5', 'Prof. & Head Textile Tech.', 2, '10.08.2015', 100000, 1317, '0000-00-00', '', '0000-00-00', ''),
(26, 2015, 'Laptop', 'Apple Macbook', 'Director CTDT', 1, '06.11.2015', 118700, 1318, '0000-00-00', '', '0000-00-00', ''),
(27, 2015, 'Laptop', 'Laptop i5', 'Head Printing Technology', 2, '22.12.2015', 102900, 1319, '0000-00-00', '', '0000-00-00', ''),
(28, 2015, 'Laptop', 'Laptop i7', 'Director Academic Courses', 4, '22.12.2015', 249900, 1320, '0000-00-00', '', '0000-00-00', ''),
(29, 2015, 'Laptop', 'Laptop i7', 'Director P & D', 1, '22.12.2015', 62475, 1321, '0000-00-00', '', '0000-00-00', ''),
(30, 2015, 'Laptop', 'Laptop i7', 'Co-ordinator Science & Hum. MIT', 1, '22.12.2015', 62475, 1322, '0000-00-00', '', '0000-00-00', ''),
(31, 2015, 'Laptop', 'Laptop i3', 'Head NHHID AU', 2, '31.12.2015', 53600, 1323, '0000-00-00', '', '0000-00-00', ''),
(32, 2015, 'Laptop', 'Laptop i3', 'Head Medical Physics', 1, '31.12.2015', 26800, 1324, '0000-00-00', '', '0000-00-00', ''),
(33, 2015, 'Laptop', 'Laptop i3', 'Head Biotech. A.C.Tech.', 2, '31.12.2015', 53600, 1325, '0000-00-00', '', '0000-00-00', ''),
(34, 2015, 'Laptop', 'Laptop i3', 'Director Library CEG Campus', 1, '31.12.2015', 26800, 1326, '0000-00-00', '', '0000-00-00', ''),
(35, 2015, 'Laptop', 'Laptop i5', 'Head Biotech. A.C.Tech.', 3, '31.12.2015', 119775, 1327, '0000-00-00', '', '0000-00-00', ''),
(36, 2015, 'Laptop', 'Laptop i5', 'Director Library CEG Campus', 1, '31.12.2015', 39925, 1328, '0000-00-00', '', '0000-00-00', ''),
(37, 2016, 'Laptop', 'Laptop i3', 'Head CWR  CEG Campus', 1, '14.01.2016', 26800, 1329, '0000-00-00', '', '0000-00-00', ''),
(38, 2016, 'Laptop', 'Laptop i3', 'Head Chemical Engg. A.C.Tech', 7, '17.02.2016', 210000, 1330, '0000-00-00', '', '0000-00-00', ''),
(39, 2016, 'Laptop', 'Laptop i5', 'Head Biotech. A.C.Tech.', 3, '02.03.2016', 119613, 1331, '0000-00-00', '', '0000-00-00', ''),
(40, 2016, 'Laptop', 'Laptop i5', 'Head NHHID AU', 1, '02.03.2016', 39871, 1332, '0000-00-00', '', '0000-00-00', ''),
(41, 2016, 'Laptop', 'Laptop i5', 'Head English', 1, '02.03.2016', 39871, 1333, '0000-00-00', '', '0000-00-00', ''),
(42, 2016, 'Laptop', 'Laptop i5', 'Head Electronics Engg. MIT', 5, '03.03.2016', 249000, 1334, '0000-00-00', '', '0000-00-00', ''),
(43, 2016, 'Laptop', 'Laptop i3', 'Dean SAP Campus', 2, '03.03.2016', 91770, 1335, '0000-00-00', '', '0000-00-00', ''),
(44, 2016, 'Laptop', 'Laptopi5', 'Head CSE', 1, '03.03.2016', 51450, 1336, '0000-00-00', '', '0000-00-00', ''),
(45, 2016, 'Laptop', 'Laptop i7', 'Dean CEG AU', 2, '03.03.2016', 124950, 1337, '0000-00-00', '', '0000-00-00', ''),
(46, 2016, 'Laptop', 'Laptop i7', 'IOM CEG ', 1, '03.03.2016', 62475, 1338, '0000-00-00', '', '0000-00-00', ''),
(47, 2017, 'Laptop', 'i5 Laptop', 'Division of Central Workshop', 1, '06.01.2017', 40682, 1339, '0000-00-00', '', '0000-00-00', ''),
(48, 2017, 'Laptop', 'i5 Laptop', 'IOM CEG ', 2, '06.01.2017', 81365, 1340, '0000-00-00', '', '0000-00-00', ''),
(49, 2017, 'Laptop', 'Laptop i7', 'Dierctor Nano Science & Tech', 4, '06.01.2017', 216300, 1341, '0000-00-00', '', '0000-00-00', ''),
(50, 2017, 'Laptop', 'Laptop i7', 'Head Automobile Engg. MIT', 1, '30.01.2017', 79275, 1342, '0000-00-00', '', '0000-00-00', ''),
(51, 2017, 'Laptop', 'Laptop i7', 'Director IQAC ', 1, '30.01.2017', 56700, 1343, '0000-00-00', '', '0000-00-00', ''),
(52, 2017, 'Laptop', 'Laptop i7', 'Director IOM', 1, '30.01.2017', 56700, 1344, '0000-00-00', '', '0000-00-00', ''),
(53, 2017, 'Laptop', 'MacBook Pro Laptop ', 'Director P & D', 1, '16.02.2017', 140000, 1345, '0000-00-00', '', '0000-00-00', ''),
(54, 2017, 'Laptop', 'Laptop i5', 'Head Electronics Engg. MIT', 5, '24.02.2017', 220000, 1346, '0000-00-00', '', '0000-00-00', ''),
(55, 2017, 'Laptop', 'Laptop i7', 'Dean CEG Campus', 4, '25.05.2017', 231000, 1347, '0000-00-00', '', '0000-00-00', ''),
(56, 2017, 'Laptop', 'MacBook Pro Laptop ', 'Director EMRC', 1, '05.06.2017', 203000, 1348, '0000-00-00', '', '0000-00-00', ''),
(57, 2017, 'Laptop', 'Laptop i5', 'Head Geology', 1, '22.06.2017', 61000, 1349, '0000-00-00', '', '0000-00-00', ''),
(58, 2017, 'Laptop', 'Apple Laptop', 'Head Physics', 1, '10.08.2017', 116500, 1350, '0000-00-00', '', '0000-00-00', ''),
(59, 2017, 'Laptop', 'Laptop i3', 'Head English', 3, '11.09.2017', 103546, 1351, '0000-00-00', '', '0000-00-00', ''),
(60, 2017, 'Laptop', 'Laptop i5', 'Head ECE CEG Campus', 1, '11.09.2017', 48000, 1352, '0000-00-00', '', '0000-00-00', ''),
(61, 2017, 'Laptop', 'Laptop i7', 'Head DIST CEG Campus', 8, '26.09.2017', 388928, 1353, '0000-00-00', '', '0000-00-00', ''),
(62, 2017, 'Laptop', 'Laptop i5', 'Head Geology', 1, '27.09.2017', 48616, 1354, '0000-00-00', '', '0000-00-00', ''),
(63, 2017, 'Laptop', 'Laptop i7', 'Dean AC Tech', 2, '27.09.2017', 119770, 1355, '0000-00-00', '', '0000-00-00', ''),
(64, 2017, 'Laptop', 'Laptop i7', 'Head Geology', 1, '27.09.2017', 48616, 1356, '0000-00-00', '', '0000-00-00', ''),
(65, 2017, 'Laptop', 'Apple Macbook ', 'Dean A.C.Tech.', 3, '05.10.2017', 508500, 1357, '0000-00-00', '', '0000-00-00', ''),
(66, 2017, 'Laptop', 'Laptop i7', 'Head Aerospace Research MIT', 2, '10.10.2017', 97232, 1358, '0000-00-00', '', '0000-00-00', ''),
(67, 2017, 'Laptop', 'Laptop i7', 'Head Sciences & Humanities MIT', 2, '10.10.2017', 97232, 1359, '0000-00-00', '', '0000-00-00', ''),
(68, 2017, 'Laptop', 'Laptop i7', 'Dean A.C.Tech.', 2, '13.10.2017', 132000, 1360, '0000-00-00', '', '0000-00-00', ''),
(69, 2018, 'Laptop', 'Laptop i7', 'Director IQAC', 1, '10.01.2018', 56000, 1361, '0000-00-00', '', '0000-00-00', ''),
(70, 2018, 'Laptop', 'Laptop i7', 'Director Academic Courses', 1, '25.01.2018', 56000, 1362, '0000-00-00', '', '0000-00-00', ''),
(71, 2018, 'Laptop', 'Laptop i7', 'Director Academic Courses', 1, '25.01.2018', 56000, 1363, '0000-00-00', '', '0000-00-00', ''),
(72, 2018, 'Laptop', 'MacBook i7 Laptop', 'Head DIST CEG Campus', 1, '28.02.2018', 200000, 1364, '0000-00-00', '', '0000-00-00', ''),
(73, 2018, 'Laptop', 'Laptop i3', 'Director Biotechnology', 3, '21.03.2018', 94164, 1365, '0000-00-00', '', '0000-00-00', ''),
(74, 2018, 'Laptop', 'Laptop i3', 'Head Mechancial Engg.', 6, '21.03.2018', 188328, 1366, '0000-00-00', '', '0000-00-00', ''),
(75, 2018, 'Laptop', 'Laptop i3', 'Director Biotechnology', 3, '21.03.2018', 94164, 1367, '0000-00-00', '', '0000-00-00', ''),
(76, 2018, 'Laptop', 'Laptop i3', 'Head Mechancial Engg.', 6, '21.03.2018', 188328, 1368, '0000-00-00', '', '0000-00-00', ''),
(1, 2014, 'iMac', 'iMac', 'Exam. Centre TNEA', 1, '29.12.2014', 176302, 1369, '0000-00-00', '', '0000-00-00', ''),
(2, 2015, 'iMac', 'iMac', 'Dean MIT', 1, '19.01.2015', 194200, 1370, '0000-00-00', '', '0000-00-00', ''),
(3, 2015, 'iMac', 'iMac', 'Civil Engg. Transportation Div.', 1, '26.02.2015', 74700, 1371, '0000-00-00', '', '0000-00-00', ''),
(4, 2018, 'iMac', 'iMac', 'The Director Centre for International Affairs', 1, '11.07.2018', 169000, 1372, '0000-00-00', '', '0000-00-00', ''),
(5, 2018, 'iMac', 'iMac', 'Director Bio-Technology', 1, '11.07.2018', 169000, 1373, '0000-00-00', '', '0000-00-00', ''),
(6, 2018, 'iMac', 'iMac', 'Head Leather Technology AC Tech', 1, '11.07.2018', 169000, 1374, '0000-00-00', '', '0000-00-00', ''),
(7, 2018, 'iMac', 'iMac', 'Head Leather Technology AC Tech', 1, '24.07.2018', 169000, 1375, '0000-00-00', '', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `system_confi`
--

CREATE TABLE `system_confi` (
  `SYS_CONFI_NO` int(5) NOT NULL,
  `ITEM_NAME` varchar(60) NOT NULL,
  `MAKE` varchar(60) NOT NULL,
  `ITEM_CONFI1` varchar(200) NOT NULL,
  `ITEM_CONFI2` varchar(60) NOT NULL,
  `ITEM_CONFI3` varchar(60) NOT NULL,
  `ITEM_CONFI4` varchar(60) NOT NULL,
  `ITEM_CONFI5` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `system_confi`
--

INSERT INTO `system_confi` (`SYS_CONFI_NO`, `ITEM_NAME`, `MAKE`, `ITEM_CONFI1`, `ITEM_CONFI2`, `ITEM_CONFI3`, `ITEM_CONFI4`, `ITEM_CONFI5`) VALUES
(3, 'Desktop', 'Dell', 'Operating System: Windows 10 , RAM: 8GB, Processor: Intel Core i7, Hard Drive/SSD: 2TB, Wireless:802.11 n/ac protocols and WPA2 Enterprise', '', '', '', ''),
(4, 'Desktop', 'HP', 'Operating System: Windows 10 , RAM: 8GB, Processor: Intel Core i5, Hard Drive/SSD: 2TB, Wireless:802.11 n/ac protocols and WPA2 Enterprise', '', '', '', ''),
(5, 'Desktop', 'Dell', 'Operating System: Windows 10 , RAM: 8GB, Processor: Intel Core i3, Hard Drive/SSD: 2TB, Wireless:802.11 n/ac protocols and WPA2 Enterprise', '', '', '', ''),
(6, 'Server', 'HP', 'HP ProLiant ML350 Gen9 Server With Intel Xeon E5-2620v3 Processor 8 GB-R, P440ar/2G Storage Controller And 8 Hot-Plug SFF SAS/SATA HDD Bays', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `table 8`
--

CREATE TABLE `table 8` (
  `SL_NO` int(3) DEFAULT NULL,
  `PO_YEAR` int(4) DEFAULT NULL,
  `ITEM_NAME` varchar(11) DEFAULT NULL,
  `ITME_DESCRIPTION` varchar(19) DEFAULT NULL,
  `DEPARTMENT` varchar(45) DEFAULT NULL,
  `NO_OF_ITEM` int(3) DEFAULT NULL,
  `PUR_DATE` varchar(10) DEFAULT NULL,
  `AMOUNT` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table 8`
--

INSERT INTO `table 8` (`SL_NO`, `PO_YEAR`, `ITEM_NAME`, `ITME_DESCRIPTION`, `DEPARTMENT`, `NO_OF_ITEM`, `PUR_DATE`, `AMOUNT`) VALUES
(1, 2014, 'Desktop', 'Desktop Computer i3', 'Examination Centre', 18, '23.09.2014', 672673),
(2, 2014, 'Desktop', 'Desktop Computer i3', 'CTDT', 3, '23.09.2014', 157278),
(3, 2014, 'Desktop', 'Desktop Computer i3', 'Biotechnolgy UIC', 2, '29.09.2014', 73739),
(4, 2014, 'Desktop', 'Desktop Computer i5', 'CIPR', 5, '29.09.2014', 224755),
(5, 2014, 'Desktop', 'Desktop Computer i5', 'IQAC', 2, '29.09.2014', 89902),
(6, 2014, 'Desktop', 'Desktop Computer i3', 'Computer Technology MIT', 40, '29.12.2014', 1474788),
(7, 2014, 'Desktop', 'Desktop Computer i3', 'Civil Engineering CEG Campus', 5, '29.12.2014', 184349),
(8, 2014, 'Desktop', 'Desktop Computer i3', 'Ref./Ac Division Mech', 4, '29.12.2014', 147479),
(9, 2014, 'Desktop', 'Desktop Computer i3', 'Physics dept. CEG Campus', 2, '29.12.2014', 73739),
(10, 2014, 'Desktop', 'Desktop Computer i3', 'Applied Sci. and Tech. A.C.Tech Cam', 2, '29.12.2014', 73739),
(11, 2014, 'Desktop', 'Desktop Computer i3', 'Industrial Engg. CEG Campus', 6, '29.12.2014', 221218),
(12, 2014, 'Desktop', 'Desktop Computer i5', 'EEE CEG Campus', 7, '29.12.2014', 314656),
(13, 2014, 'Desktop', 'Desktop Computer i5', 'Student Affairs', 6, '29.12.2014', 269706),
(14, 2014, 'Desktop', 'Desktop Computer i5', 'Printing Technology', 5, '29.12.2014', 224755),
(15, 2014, 'Desktop', 'Desktop Computer i5', 'The Library CEG Campus', 2, '29.12.2014', 89902),
(16, 2014, 'Desktop', 'Desktop Computer i5', 'Physics dept. CEG Campus', 1, '29.12.2014', 44951),
(17, 2014, 'Desktop', 'Desktop Computer i7', 'Electronics Engg. MIT Campus', 88, '29.12.2014', 4531296),
(18, 2014, 'Desktop', 'Desktop Computer i7', 'Dean A.C.Tech. ', 20, '29.12.2014', 1029840),
(19, 2014, 'Desktop', 'Desktop Computer i7', 'ECE CEG Campus', 12, '29.12.2014', 617904),
(20, 2014, 'Desktop', 'Desktop Computer i7', 'Computer Tech. MIT Campus', 10, '29.12.2014', 514920),
(21, 2014, 'Desktop', 'Desktop Computer i7', 'Library Main Campus', 6, '29.12.2014', 308952),
(22, 2014, 'Desktop', 'Desktop Computer i7', 'ACOE Main Campus', 5, '29.12.2014', 257460),
(23, 2014, 'Desktop', 'Desktop Computer i7', 'Dean A.C.Tech. ', 5, '29.12.2014', 257460),
(24, 2014, 'Desktop', 'Desktop Computer i7', 'Knowledge Data Centre', 5, '29.12.2014', 257460),
(25, 2014, 'Desktop', 'Desktop Computer i7', 'EEE CEG Campus', 4, '29.12.2014', 205968),
(26, 2014, 'Desktop', 'Desktop Computer i7', 'Printing Tech. CEG Campus', 2, '29.12.2014', 102984),
(27, 2014, 'Desktop', 'Desktop Computer i7', 'Health Centre CEG Campus', 1, '29.12.2014', 51492),
(28, 2015, 'Desktop', 'Desktop Computer i3', 'Mathematics CEG Campus', 35, '02.03.2015', 1035854),
(29, 2015, 'Desktop', 'Desktop Computer i3', 'Mathematics CEG Campus', 2, '02.03.2015', 59192),
(30, 2015, 'Desktop', 'Desktop Computer i7', 'Mathematics CEG Campus', 2, '02.03.2015', 101454),
(31, 2015, 'Desktop', 'Desktop Computer i3', 'Geology CEG Campus', 25, '02.03.2015', 739896),
(32, 2015, 'Desktop', 'Desktop Computer i5', 'CES CEG Campus', 5, '02.03.2015', 199298),
(33, 2015, 'Desktop', 'Desktop Computer i5', 'Dean MIT Campus', 4, '02.03.2015', 159438),
(34, 2015, 'Desktop', 'Desktop Computer i5', 'Media Science CEG Campus', 5, '02.03.2015', 199298),
(35, 2015, 'Desktop', 'Desktop Computer i5', 'Manufacturing Engg CEG Campus', 15, '02.03.2015', 597894),
(36, 2015, 'Desktop', 'Desktop Computer i5', 'Architecture SAP Campus', 4, '02.03.2015', 159438),
(37, 2015, 'Desktop', 'Desktop Computer i5', 'Distance Education CEG Campus', 10, '02.03.2015', 398596),
(38, 2015, 'Desktop', 'Desktop Computer i7', 'Distance Education CEG Campus', 5, '02.03.2015', 253635),
(39, 2015, 'Desktop', 'Desktop Computer i7', 'Sciences and Humanities MIT Campus', 1, '02.03.2015', 50727),
(40, 2015, 'Desktop', 'Desktop Computer i7', 'Co-ordination Section AU', 1, '02.03.2015', 50727),
(41, 2015, 'Desktop', 'Desktop Computer i7', 'IQAC AU', 1, '02.03.2015', 50727),
(42, 2015, 'Desktop', 'Desktop Computer i3', 'Head ECE ', 50, '11.03.2015', 1597917),
(43, 2015, 'Desktop', 'Desktop Computer i5', 'Centre for Research', 10, '11.03.2015', 398596),
(44, 2015, 'Desktop', 'Desktop Computer i5', 'Architecture SAP Campus', 2, '11.03.2015', 79719),
(45, 2015, 'Desktop', 'Desktop Computer i7', 'Registrar Salary Section', 8, '11.03.2015', 405817),
(46, 2015, 'Desktop', 'Desktop Computer i7', 'Registrar AU', 3, '13.03.2015', 152181),
(47, 2015, 'Desktop', 'Desktop Computer i7', 'Centre For CC', 1, '16.03.2015', 50727),
(48, 2015, 'Desktop', 'Desktop Computer i3', 'Director CUIC', 48, '06.10.2015', 1520352),
(49, 2015, 'Desktop', 'Desktop Computer i3', 'Co-ordinator MHRD', 4, '06.10.2015', 126696),
(50, 2015, 'Desktop', 'Desktop Computer i3', 'Head EEE CEG Campus', 3, '06.10.2015', 95022),
(51, 2015, 'Desktop', 'Desktop Computer i3', 'Head Nanoscience and Tech.', 1, '06.10.2015', 31674),
(52, 2015, 'Desktop', 'Desktop Computer i5', 'Prof. Electronics Engg. MIT Campus', 2, '06.10.2015', 78048),
(53, 2015, 'Desktop', 'Desktop Computer i5', 'Director IRS CEG Campus', 6, '06.10.2015', 234144),
(54, 2015, 'Desktop', 'Desktop Computer i5', 'Prof. Textile Tech. A.C.Tech.', 3, '06.10.2015', 117072),
(55, 2015, 'Desktop', 'Desktop Computer i5', 'Health Centre CEG Campus', 2, '06.10.2015', 78048),
(56, 2015, 'Desktop', 'Desktop Computer i7', 'Prof. Mechanical Engg. CEG Campus', 1, '06.10.2015', 50296),
(57, 2015, 'Desktop', 'Desktop Computer i7', 'Director Recruitment Cell', 3, '06.10.2015', 150888),
(58, 2015, 'Desktop', 'Desktop Computer i7', 'Director Crystal Growth Centre', 6, '06.10.2015', 301776),
(59, 2015, 'Desktop', 'Desktop Computer i7', 'RTI Section Au', 1, '06.10.2015', 50296),
(60, 2015, 'Desktop', 'Desktop Computer i7', 'Head CSE', 50, '06.10.2015', 2514800),
(61, 2015, 'Desktop', 'Desktop Computer i7', 'Director EMRC', 3, '06.10.2015', 150888),
(62, 2015, 'Desktop', 'Desktop Computer i5', 'Head Nanoscience and Tech.', 1, '12.10.2015', 39024),
(63, 2015, 'Desktop', 'Desktop Computer i7', 'Head CSE CEG Campus', 10, '06.11.2015', 518700),
(64, 2015, 'Desktop', 'Desktop Computer i7', 'Head Manufacturing Engg', 2, '06.11.2015', 124000),
(65, 2015, 'Desktop', 'Desktop Computer i7', 'Director P&D', 1, '06.11.2015', 62000),
(66, 2015, 'Desktop', 'Desktop Computer i3', 'Head Computer Centre MIT', 16, '22.12.2015', 506784),
(67, 2015, 'Desktop', 'Desktop Computer i3', 'Head Computer Tech. MIT', 3, '22.12.2015', 95022),
(68, 2015, 'Desktop', 'Desktop Computer i3', 'Head Applied Science & Humanities', 1, '22.12.2015', 31674),
(69, 2015, 'Desktop', 'Desktop Computer i5', 'Director Nanoscience and Tech.', 1, '22.12.2015', 39024),
(70, 2015, 'Desktop', 'Desktop Computer i5', 'Head MBA', 10, '22.12.2015', 390240),
(71, 2015, 'Desktop', 'Desktop Computer i5', 'Head MBA', 5, '22.12.2015', 195120),
(72, 2015, 'Desktop', 'Desktop Computer i5', 'Head Aerospace Engineering', 5, '22.12.2015', 195120),
(73, 2015, 'Desktop', 'Desktop Computer i5', 'Head Rubber and Plastics Engg.', 9, '22.12.2015', 351216),
(74, 2015, 'Desktop', 'Desktop Computer i5', 'Head ECE CEG Campus', 3, '22.12.2015', 117072),
(75, 2015, 'Desktop', 'Desktop Computer i5', 'Head Nanoscience and Tech.', 1, '22.12.2015', 39024),
(76, 2015, 'Desktop', 'Desktop Computer i5', 'Co-ordinator Applied Sci. & Hum. MIT', 5, '22.12.2015', 195120),
(77, 2015, 'Desktop', 'Desktop Computer i5', 'Head Applied Science & Technology', 20, '22.12.2015', 780480),
(78, 2015, 'Desktop', 'Desktop Computer i5', 'Dean SAP Campus (Architecture)', 35, '22.12.2015', 1365840),
(79, 2015, 'Desktop', 'Desktop Computer i5', 'Head Printing Technology', 3, '22.12.2015', 117072),
(80, 2015, 'Desktop', 'Desktop Computer i5', 'Director Library CEG Campus', 15, '22.12.2015', 585360),
(81, 2015, 'Desktop', 'Desktop Computer i5', 'Head IT MIT Campus', 1, '22.12.2015', 39024),
(82, 2015, 'Desktop', 'Desktop Computer i5', 'Head Textile Technology', 13, '22.12.2015', 507312),
(83, 2015, 'Desktop', 'Desktop Computer i7', 'Director Crystal Growth Centre', 6, '22.12.2015', 301776),
(84, 2015, 'Desktop', 'Desktop Computer i7', 'Head Nanoscience and Tech.', 1, '22.12.2015', 50296),
(85, 2015, 'Desktop', 'Desktop Computer i7', 'Head CSE CEG Campus', 10, '22.12.2015', 502960),
(86, 2015, 'Desktop', 'Desktop Computer i7', 'Head Applied Science and Tech. A.C.Tech.', 1, '22.12.2015', 50296),
(87, 2015, 'Desktop', 'Desktop Computer i7', 'Head CSE CEG Campus', 59, '22.12.2015', 2967464),
(88, 2015, 'Desktop', 'Desktop Computer i7', 'Head Printing Technology', 5, '22.12.2015', 251480),
(89, 2015, 'Desktop', 'Desktop Computer i7', 'Head Instrumentation Engg. MIT Campus', 23, '22.12.2015', 1156808),
(90, 2015, 'Desktop', 'Desktop Computer i7', 'Head Computer Tech. MIT', 5, '22.12.2015', 251480),
(91, 2015, 'Desktop', 'Desktop Computer i7', 'Head IT MIT Campus', 5, '22.12.2015', 251480),
(92, 2015, 'Desktop', 'Desktop Computer i7', 'Head Automobile Engg. MIT', 23, '22.12.2015', 1156808),
(93, 2015, 'Desktop', 'Desktop Computer i7', 'Controller of Examinations AU', 31, '22.12.2015', 1559176),
(94, 2015, 'Desktop', 'Desktop Computer i7', 'Head Production Tech. MIT', 7, '22.12.2015', 352072),
(95, 2015, 'Desktop', 'Desktop Computer i3', 'Head Chemistry AU', 9, '22.12.2015', 285066),
(96, 2015, 'Desktop', 'Desktop Computer i3', 'Head Mechancial Engg. CEG Campus', 5, '22.12.2015', 158370),
(97, 2015, 'Desktop', 'Desktop Computer i5', 'Director IES CEG Campus', 4, '22.12.2015', 156096),
(98, 2015, 'Desktop', 'Desktop Computer i5', 'Head Mechancial Engg. CEG Campus', 1, '22.12.2015', 39024),
(99, 2015, 'Desktop', 'Desktop Computer i5', 'Head Computer Tech. MIT', 1, '22.12.2015', 39024),
(100, 2015, 'Desktop', 'Desktop Computer i7', 'Head Internal Combustion Engg.  Mech.', 2, '22.12.2015', 100592),
(101, 2015, 'Desktop', 'Desktop Computer i7', 'Head Computer Tech. MIT', 2, '22.12.2015', 100592),
(102, 2015, 'Desktop', 'Desktop Computer i7', 'Head Mining Engg. CEG Campus', 11, '22.12.2015', 553256),
(103, 2016, 'Desktop', 'Desktop Computer i3', 'Head Mathematics AU', 25, '03.03.2016', 791850),
(104, 2016, 'Desktop', 'Desktop Computer i3', 'Head Indl. Engg. CEG Campus', 16, '31.05.2016', 624384),
(105, 2016, 'Desktop', 'Desktop Computer i3', 'Head  Civil Engg. CEG Campus', 11, '31.05.2016', 429264),
(106, 2016, 'Desktop', 'Desktop Computer i3', 'Head Aerospace Engineering MIT', 3, '31.05.2016', 150888),
(107, 2016, 'Desktop', 'Desktop Computer i5', 'Secretary TNEA', 50, '31.05.2016', 2514800),
(108, 2017, 'Desktop', 'Desktop Computer i7', 'Director Centre for Research', 5, '13.02.2017', 246750),
(109, 2017, 'Desktop', 'Desktop Computer i7', 'Head Geology', 1, '13.02.2017', 49350),
(110, 2017, 'Desktop', 'Desktop Computer i7', 'Director Aerospace Research', 5, '16.02.2017', 281400),
(111, 2017, 'Desktop', 'Desktop Computer i7', 'Director IQAC', 3, '16.02.2017', 176085),
(112, 2017, 'Desktop', 'Desktop Computer i7', 'Director P&D', 1, '16.02.2017', 58695),
(113, 2017, 'Desktop', 'Desktop Computer i5', 'Head R&AC Div. Mechanical CEG Campus', 3, '16.02.2017', 126000),
(114, 2017, 'Desktop', 'Desktop Computer i5', 'Head Transport Engg. Civil Engg. ', 2, '18.02.2017', 84000),
(115, 2017, 'Desktop', 'Desktop Computer i7', 'Head DIST CEG Campus', 4, '24.02.2017', 197400),
(116, 2017, 'Desktop', 'Desktop Computer i3', 'Head Mechancial Engg. CEG Campus', 3, '24.02.2017', 85500),
(117, 2017, 'Desktop', 'Desktop Computer i7', 'Co-ordinator Science and Humanities MIT', 1, '28.02.2017', 58695),
(118, 2017, 'Desktop', 'Desktop Computer i3', 'Head Science & Humanities MIT Campus', 1, '09.03.2017', 27500),
(119, 2017, 'Desktop', 'Desktop Computer i5', 'FA 30 Section', 3, '22.06.2017', 132000),
(120, 2017, 'Desktop', 'Desktop Computer i5', 'Purchase Section', 1, '22.06.2017', 44000),
(121, 2017, 'Desktop', 'Desktop Computer i7', 'Head EEE CEG Campus', 1, '22.06.2017', 59900),
(122, 2017, 'Desktop', 'Desktop Computer i5', 'Head Textile Technology', 3, '06.06.2017', 130980),
(123, 2017, 'Desktop', 'Desktop Computer i5', 'Head Computer Tech. MIT', 1, '11.09.2017', 44000),
(124, 2017, 'Desktop', 'Desktop Computer i5', 'Head Geology', 2, '11.09.2017', 88000),
(125, 2017, 'Desktop', 'Desktop Computer i7', 'Centre for Water Resources', 8, '15.09.2017', 363440),
(126, 2017, 'Desktop', 'Desktop Computer i7', 'Div. of Soil Mechanics', 8, '15.09.2017', 363440),
(127, 2017, 'Desktop', 'Desktop Computer i7', 'Div. of Transportation Engg.', 10, '15.09.2017', 454300),
(128, 2017, 'Desktop', 'Desktop Computer i7', 'Div. of Structural Engg.', 8, '15.09.2017', 363440),
(129, 2017, 'Desktop', 'Desktop Computer i7', 'Institute of Ocean Management', 6, '15.09.2017', 272580),
(130, 2017, 'Desktop', 'Desktop Computer i7', 'Centre for Environmental Studies', 9, '15.09.2017', 408870),
(131, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Electrical Engg.', 18, '15.09.2017', 817740),
(132, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of ECE', 15, '15.09.2017', 681450),
(133, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of IST', 20, '15.09.2017', 908600),
(134, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Printing Tech', 10, '15.09.2017', 454300),
(135, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Maths', 10, '15.09.2017', 454300),
(136, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Physics', 8, '15.09.2017', 363440),
(137, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Chemistry', 8, '15.09.2017', 363440),
(138, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of MBA', 10, '15.09.2017', 454300),
(139, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Geology', 6, '15.09.2017', 272580),
(140, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Media Science', 5, '15.09.2017', 227150),
(141, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Manufacturing', 8, '15.09.2017', 363440),
(142, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Medical Physics', 8, '15.09.2017', 363440),
(143, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Mech. Engineering', 18, '15.09.2017', 817740),
(144, 2017, 'Desktop', 'Desktop Computer i7', 'Planning and Development', 5, '15.09.2017', 227150),
(145, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Chemical', 3, '15.09.2017', 167311),
(146, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Chemical', 1, '15.09.2017', 54994),
(147, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Ceramic Tech', 3, '15.09.2017', 160425),
(148, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Applied Science Tech', 3, '15.09.2017', 160425),
(149, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Textile Tech', 3, '15.09.2017', 160425),
(150, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Bio-Technology', 4, '15.09.2017', 213773),
(151, 2017, 'Desktop', 'Desktop Computer i7', 'Crystal Growth Centre', 3, '15.09.2017', 172057),
(152, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Nano Science', 3, '15.09.2017', 160425),
(153, 2017, 'Desktop', 'Desktop Computer i7', 'Department of Leather Tech', 5, '15.09.2017', 278852),
(154, 2017, 'Desktop', 'Desktop Computer i7', 'Computer Lab', 50, '15.09.2017', 2788517),
(155, 2017, 'Desktop', 'Desktop Computer i7', 'Computer Centre (Computer Practice Lab)', 75, '15.09.2017', 3601154),
(156, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of Computer Tech', 6, '15.09.2017', 288092),
(157, 2017, 'Desktop', 'Desktop Computer i7', 'Computer Centre (CAD Lab)', 30, '15.09.2017', 466465),
(158, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of IT', 12, '15.09.2017', 659927),
(159, 2017, 'Desktop', 'Desktop Computer i7', 'Dept. of ECE', 18, '15.09.2017', 989890),
(160, 2017, 'Desktop', 'Desktop Computer i7', 'Head DIST CEG Campus', 3, '28.09.2017', 176614),
(161, 2017, 'Desktop', 'Desktop Computer i7', 'Head CTDT', 7, '28.09.2017', 412100),
(162, 2017, 'Desktop', 'Desktop Computer i7', 'Controller of Examinations', 3, '28.09.2017', 176614),
(163, 2017, 'Desktop', 'Desktop Computer i7', 'Controller of Examinations', 6, '28.09.2017', 353228),
(164, 2017, 'Desktop', 'Desktop Computer i7', 'Head ECE', 40, '28.09.2017', 1817200),
(165, 2017, 'Desktop', 'Desktop Computer i7', 'Director IRS', 10, '28.09.2017', 534434),
(166, 2017, 'Desktop', 'Desktop Computer i7', 'Head DIST', 6, '28.09.2017', 329963),
(167, 2017, 'Desktop', 'Desktop Computer i7', 'Head EE MIT', 50, '28.09.2017', 2465374),
(168, 2017, 'Desktop', 'Desktop Computer i7', 'Director RCC', 10, '28.09.2017', 534434),
(169, 2017, 'Desktop', 'Desktop Computer i7', 'Director KDC', 6, '28.09.2017', 295845),
(170, 2017, 'Desktop', 'Desktop Computer i7', 'Director Centre for Nano Science & Tech', 6, '28.09.2017', 295845),
(171, 2017, 'Desktop', 'Desktop Computer i7', 'ACOE', 8, '28.09.2017', 470971),
(172, 2017, 'Desktop', 'Desktop Computer i7', 'Head ECE', 1, '28.09.2017', 58871),
(173, 2017, 'Desktop', 'Desktop Computer i7', 'Prof. and Head CT MIT', 2, '28.09.2017', 117743),
(174, 2017, 'Desktop', 'Desktop Computer i7', 'Prof. and Head IT MIT', 10, '28.09.2017', 493075),
(175, 2017, 'Desktop', 'Desktop Computer i7', 'Prof. and Head EEE', 2, '28.09.2017', 109988),
(176, 2017, 'Desktop', 'Desktop Computer i7', 'Director CWR', 4, '28.09.2017', 197230),
(177, 2017, 'Desktop', 'Desktop Computer i7', 'Director CWR', 3, '28.09.2017', 147922),
(178, 2017, 'Desktop', 'Desktop Computer i7', 'Head DECE', 2, '28.09.2017', 117743),
(179, 2017, 'Desktop', 'Desktop Computer i5', 'Head Chemistry AU', 25, '16.11.2017', 1003000),
(180, 2018, 'Desktop', 'Desktop Computer i7', 'PRO\'s Office Rajbhavan', 3, '10.01.2018', 204997),
(181, 2018, 'Desktop', 'Desktop Computer i7', 'Director IQAC', 1, '10.01.2018', 56050),
(182, 2018, 'Desktop', 'Desktop Computer i7', 'Director Recruitment Cell', 2, '25.01.2018', 126282),
(183, 2018, 'Desktop', 'Desktop Computer i5', 'Director Inst. Of Remote Sensing', 6, '22.03.2018', 253464),
(184, 2018, 'Desktop', 'Desktop Computer i5', 'Dean UCE Konam Nagarkoil', 1, '22.03.2018', 42244),
(185, 2018, 'Desktop', 'Desktop Computer i5', 'Director Library CEG Campus', 10, '22.03.2018', 422440),
(186, 2018, 'Desktop', 'Desktop Computer i3', 'Dean BIT Campus Trichy', 70, '28.03.2018', 1858500),
(187, 2018, 'Desktop', 'Desktop Computer i5', 'Dean UCE Kanchipuram', 200, '05.04.2018', 5734800),
(188, 2018, 'Desktop', 'Desktop Computer i5', 'Dean UCE Ariyalur', 300, '05.04.2018', 8602800),
(189, 2018, 'Desktop', 'Desktop Computer i5', 'Dean AU Regional Campus Madurai', 100, '05.04.2018', 2867400),
(190, 2018, 'Desktop', 'Desktop Computer i5', 'Director CUIC CEG Campus', 40, '05.04.2018', 1146960),
(191, 2018, 'Desktop', 'Desktop Computer i5', 'Head Mechancial Engg.', 5, '05.04.2018', 143370),
(192, 2018, 'Desktop', 'Desktop Computer i5', 'Head EEE CEG Campus', 5, '05.04.2018', 143370),
(193, 2018, 'Desktop', 'Desktop Computer i5', 'Head EEE CEG Campus', 7, '05.04.2018', 200718),
(194, 2018, 'Desktop', 'Desktop Computer i5', 'Director CDE CEG Campus', 10, '05.04.2018', 286740),
(195, 2018, 'Desktop', 'Desktop Computer i5', 'Co-ordinator UPE CEG Campus', 2, '05.04.2018', 57348),
(196, 2018, 'Desktop', 'Desktop Computer i5', 'Head Mechancial Engg.', 20, '05.04.2018', 573480),
(197, 2018, 'Desktop', 'Desktop Computer i5', 'Head Industrial Engg. CEG Campus', 10, '05.04.2018', 286740),
(198, 2018, 'Desktop', 'Desktop Computer i5', 'Dean UCE Villupuram', 60, '05.04.2018', 1720440),
(199, 2018, 'Desktop', 'Desktop Computer i5', 'Head Industrial Engg. CEG Campus', 2, '05.04.2018', 57348),
(200, 2018, 'Desktop', 'Desktop Computer i5', 'Co-ordinator App. Sci. & Hum. MIT Campus', 3, '05.04.2018', 86022),
(201, 2018, 'Desktop', 'Desktop Computer i5', 'Director CAI AU', 6, '05.04.2018', 172044),
(202, 2018, 'Desktop', 'Desktop Computer i5', 'Dean SAP Campus', 6, '19.04.2018', 172044),
(203, 2018, 'Desktop', 'Desktop Computer i5', 'Head Medical Physics', 2, '19.04.2018', 57348),
(204, 2018, 'Desktop', 'Desktop Computer i7', 'Head DIST CEG Campus', 10, '21.05.2018', 668647),
(205, 2018, 'Desktop', 'Desktop Computer i7', 'Head DCSE CEG Campus', 90, '21.07.2018', 5240970),
(206, 2018, 'Desktop', 'Desktop Computer i7', 'Director P&D', 26, '21.07.2018', 1388270),
(207, 2018, 'Desktop', 'Desktop Computer i7', 'Head Dept. Instrumentation Engg. MIT Campus', 10, '21.07.2018', 533950),
(208, 2018, 'Desktop', 'Desktop Computer i7', 'Director Library CEG Campus', 5, '21.07.2018', 266975),
(209, 2018, 'Desktop', 'Desktop Computer i7', 'Head Dept. Mechancial Engg. CEG Campus', 5, '21.07.2018', 266975),
(210, 2018, 'Desktop', 'Desktop Computer i7', 'Director Academic Courses', 3, '21.07.2018', 160185),
(211, 2018, 'Desktop', 'Desktop Computer i7', 'Controller of Examinations AU', 1, '21.07.2018', 53395),
(1, 2014, 'Server', 'Server', 'Head CT MIT', 2, '31.12.2014', 119654),
(2, 2014, 'Server', 'Server', 'Dean CEG', 1, '31.12.2014', 264760),
(3, 2014, 'Server', 'Server', 'EEE CEG', 1, '31.12.2014', 140108),
(4, 2015, 'Server', 'Server', 'Chemical Engineering', 2, '05.02.2015', 440268),
(5, 2015, 'Server', 'Server', 'RCC', 1, '26.02.2015', 1350000),
(6, 2015, 'Server', 'Server', 'IT MIT Campus', 1, '26.02.2015', 1350000),
(7, 2015, 'Server', 'Server', 'IT MIT Campus', 1, '26.02.2015', 345000),
(8, 2015, 'Server', 'Server', 'CT MIT Campus', 1, '26.02.2015', 345000),
(9, 2015, 'Server', 'Server', 'Centre for Research', 1, '26.02.2015', 345000),
(10, 2015, 'Server', 'Server', 'Dean MIT Campus', 1, '26.02.2015', 345000),
(11, 2015, 'Server', 'Server', 'Computer Centre MIT Campus', 1, '26.02.2015', 345000),
(12, 2015, 'Server', 'Blade Server', 'CSE CEG Campus', 4, '26.02.2015', 1998000),
(13, 2015, 'Server', 'Blade Server', 'IT CEG Campus', 4, '26.02.2015', 1998000),
(14, 2015, 'Server', 'Server', 'Knowledge Data Centre AU', 2, '09.03.2015', 2700000),
(15, 2015, 'Server', 'Server', 'CSE CEG Campus', 2, '09.03.2015', 690000),
(16, 2015, 'Server', 'Server', 'IT CEG Campus', 2, '09.03.2015', 690000),
(17, 2015, 'Server', 'High End Server', 'Controller of Examinations AU', 4, '12.03.2015', 7854661),
(18, 2015, 'Server', 'High End Server', 'Secretary TANCET Exams. Centre', 1, '23.03.2015', 1963665),
(19, 2015, 'Server', 'High End Server', 'Secretary TNEA Exams. Centre', 1, '23.03.2015', 1963665),
(20, 2015, 'Server', 'High End Server', 'Director KDC AU ', 2, '23.03.2015', 392733),
(21, 2015, 'Server', 'Server', 'Co-ordinator NSS', 1, '27.07.2015', 251522),
(22, 2015, 'Server', 'Server', 'Director Academic Courses', 1, '01.10.2015', 440000),
(23, 2015, 'Server', 'Server', 'Director Recruitment Cell', 1, '12.10.2015', 440000),
(24, 2015, 'Server', 'Server', 'Prof. & Head MBA', 1, '06.11.2015', 197225),
(25, 2016, 'Server', ' Server', 'Head CSE CEG Campus', 1, '03.03.2016', 59000),
(26, 2016, 'Server', ' Server', 'DCSE CEG Campus', 1, '21.03.2016', 189000),
(27, 2016, 'Server', 'Server', 'Head Mining Depart', 1, '21.03.2016', 189000),
(28, 2016, 'Server', ' Server', 'Head ECE  CEG Campus', 2, '03.03.2016', 378000),
(29, 2016, 'Server', 'Rack Server', 'Director RCC', 1, '17.06.2016', 440000),
(30, 2017, 'Server', 'Server', 'Head DIST CEG Campus', 1, '30.01.2017', 182700),
(31, 2017, 'Server', 'Server', 'Dean SAP Campus', 1, '30.01.2017', 175350),
(32, 2017, 'Server', 'Server', 'Director RCC', 1, '07.03.2017', 354000),
(33, 2017, 'Server', 'Server', 'Head CWDiv. Mechanical Engg.', 1, '07.03.2017', 152250),
(34, 2017, 'Server', 'Low End Server', 'Head CSE CEG Campus', 4, '05.06.2017', 283500),
(35, 2017, 'Server', 'Server', 'Head Chemistry', 1, '05.06.2017', 231000),
(36, 2017, 'Server', 'High End Server', 'Head CSE CEG Campus', 1, '19.07.2017', 485000),
(37, 2017, 'Server', 'High End Server', 'Director RCC', 1, '20.07.2017', 955000),
(38, 2017, 'Server', 'High End Server', 'Secretary TNEA Exams. Centre', 1, '20.07.2017', 955000),
(39, 2017, 'Server', 'Server', 'Secretary TNEA Exams. Centre', 1, '24.08.2017', 849600),
(40, 2017, 'Server', 'Server', 'Director P&D', 1, '15.09.2017', 213811),
(41, 2017, 'Server', 'Server', 'Head DCSE CEG', 2, '15.09.2017', 804819),
(42, 2017, 'Server', 'Server', 'Director RCC', 1, '15.09.2017', 867349),
(43, 2017, 'Server', 'Server', 'Director KDC', 1, '15.09.2017', 768510),
(44, 2017, 'Server', 'High End Server', 'Director CTDT', 1, '05.10.2017', 919999),
(45, 2017, 'Server', 'HPC Server', 'Head Aerospace Research MIT', 1, '05.10.2017', 700000),
(46, 2017, 'Server', 'High End Server', 'Head DCSE CEG', 1, '28.12.2017', 974000),
(47, 2018, 'Server', 'High End Server', 'Director RCC', 1, '12.01.2018', 974000),
(48, 2018, 'Server', 'Server', 'Head Media Science', 1, '19.01.2018', 325000),
(49, 2018, 'Server', 'Server', 'Dean UCE Dindugul', 1, '28.02.2018', 64000),
(50, 2018, 'Server', 'Server', 'Co-ordinator UPE CEG Campus', 1, '21.03.2018', 183750),
(51, 2018, 'Server', 'Server', 'ACOE CEG Campus', 2, '28.03.2018', 1355962),
(52, 2018, 'Server', 'Server', 'Director KDC CEG Campus', 4, '07.06.2018', 2596000),
(53, 2018, 'Server', 'High End Server', 'Co-ordinator UPE CEG Campus', 1, '07.06.2018', 417375),
(1, 2014, 'Workstation', 'Work Station', 'Aerospace Research', 1, '29.09.2014', 242802),
(2, 2014, 'Workstation', 'Work Station', 'AU-KBC Centre MIT', 1, '29.09.2014', 139585),
(3, 2014, 'Workstation', 'Work Station', 'Head Computer Tech. CEG Campus', 2, '24.12.2014', 125952),
(4, 2014, 'Workstation', 'Work Station', 'Biotechnology', 1, '31.12.2014', 199500),
(5, 2015, 'Workstation', 'Work Station', 'ACOE ', 1, '11.02.2015', 358624),
(6, 2015, 'Workstation', 'Work Station', 'CSE CEG Campus', 5, '26.02.2015', 700000),
(7, 2015, 'Workstation', 'Work Station', 'Exams. Centre TNEA', 4, '11.03.2015', 560000),
(8, 2015, 'Workstation', 'Work Station', 'Centre for Biotechnolgy A.C.Tech.', 1, '25.05.2015', 333500),
(9, 2015, 'Workstation', 'Work Station', 'Head Electronics Engg. MIT Campus', 1, '06.11.2015', 207900),
(10, 2015, 'Workstation', 'Work Station', 'Director EMRC CEG Campus', 2, '06.11.2015', 185000),
(11, 2015, 'Workstation', 'Work Station', 'Head Mechancial Engg. CEG Campus', 1, '22.12.2015', 93114),
(12, 2016, 'Workstation', 'Work Station', 'Director AU-FRG HP 1.3', 2, '25.02.2016', 265125),
(13, 2016, 'Workstation', 'Work Station', 'Director AU-FRG HP 1.4', 1, '25.02.2016', 171917),
(14, 2017, 'Workstation', 'Work Station', 'Director AU-FRG ', 2, '30.01.2017', 174300),
(15, 2017, 'Workstation', 'Work Station', 'Director AU-FRG ', 1, '30.01.2017', 109200),
(16, 2017, 'Workstation', 'Work Station', 'Director AU-FRG ', 2, '30.01.2017', 163800),
(17, 2017, 'Workstation', 'Work Station', 'Head Physics', 1, '13.02.2017', 169050),
(18, 2017, 'Workstation', 'Work Station', 'Head Physics', 1, '16.02.2017', 138600),
(19, 2017, 'Workstation', 'Work Station', 'Director RCC', 1, '24.02.2017', 210000),
(20, 2017, 'Workstation', 'Work Station', 'Head Physics', 1, '20.07.2017', 430500),
(21, 2017, 'Workstation', 'Work Station', 'Dean CEG', 3, '24.08.2017', 559544),
(22, 2017, 'Workstation', 'Work Station', 'Prof. and Head Medical Physics', 1, '21.11.2017', 321788),
(23, 2017, 'Workstation', 'Work Station', 'Director CCC&AR', 3, '28.12.2017', 573480),
(24, 2018, 'Workstation', 'Workstation', 'Head DIST CEG Campus', 1, '03.01.2018', 108560),
(25, 2018, 'Workstation', 'Workstation', 'Head Aerospace Engg. MIT Campus', 1, '20.02.2018', 205000),
(26, 2018, 'Workstation', 'Workstation', 'Head Computer Tech. MIT Campus', 3, '10.03.2018', 350000),
(27, 2018, 'Workstation', 'Workstation', 'Head Manufacturing Engg.', 2, '22.03.2018', 233333),
(28, 2018, 'Workstation', 'Workstation', 'Director AU-FRG CEG Campus', 12, '07.06.2018', 891372),
(29, 2018, 'Workstation', 'Workstation', 'Head DIST CEG Campus', 10, '29.06.2018', 849600),
(1, 2014, 'Laptop', 'Laptop i3', 'Institute of Remote Sensing', 1, '12.09.2014', 35000),
(2, 2014, 'Laptop', 'Laptop i7', 'Finance Officer', 1, '12.09.2014', 63000),
(3, 2014, 'Laptop', 'Laptop i7', 'Prof. Syndicate Section', 1, '12.09.2014', 63000),
(4, 2014, 'Laptop', 'Laptop i7', 'Academic Courses', 3, '12.09.2014', 176255),
(5, 2014, 'Laptop', 'Laptop i7', 'ACOE', 1, '12.09.2014', 58572),
(6, 2014, 'Laptop', 'Laptop i7', 'IQAC', 1, '12.09.2014', 58572),
(7, 2014, 'Laptop', 'Laptop i3', 'Department of ECE', 1, '12.09.2014', 35000),
(8, 2014, 'Laptop', 'Laptop i3', 'Department of Mech', 9, '23.09.2014', 382096),
(9, 2014, 'Laptop', 'Laptop i5', 'RCC', 1, '29.09.2014', 69457),
(10, 2014, 'Laptop', 'Laptop i5', 'CWR', 6, '01.10.2014', 228000),
(11, 2015, 'Laptop', 'Laptop i5', 'Head IT MIT Campus', 1, '18.02.2015', 38000),
(12, 2015, 'Laptop', 'Laptop i5', 'Div. Sciences and Humanities', 1, '18.02.2015', 38000),
(13, 2015, 'Laptop', 'Laptop i5', 'Asst. Prof. Media Science', 1, '03.03.2015', 38000),
(14, 2015, 'Laptop', 'Laptop MacBook', 'RCC AU', 10, '02.03.2015', 792900),
(15, 2015, 'Laptop', 'Laptop i7', 'KDC AU', 1, '09.03.2015', 58968),
(16, 2015, 'Laptop', 'Laptop i7', 'Prof. & Head. Manufacturing', 1, '09.03.2015', 58968),
(17, 2015, 'Laptop', 'Laptop i7', 'Dean A.C.Tech.', 1, '09.03.2015', 58968),
(18, 2015, 'Laptop', 'Laptop i5', 'Prof. & Head. CSE', 1, '09.03.2015', 89900),
(19, 2015, 'Laptop', 'Laptop MacBook', 'Controller of Examination', 1, '12.03.2015', 79290),
(20, 2015, 'Laptop', 'Laptop i5', 'Head Production Tech.', 1, '27.07.2015', 39000),
(21, 2015, 'Laptop', 'Laptop i5', 'Controller of Examinations', 2, '27.07.2015', 100000),
(22, 2015, 'Laptop', 'Laptop i5', 'Electronics Engg. MIT Campus', 2, '27.07.2015', 118500),
(23, 2015, 'Laptop', 'Laptop i5', 'Mechancial Engg CEG Campus', 1, '27.07.2015', 59250),
(24, 2015, 'Laptop', 'Laptop i5', 'Head ISTCEG Campus', 1, '10.08.2015', 59250),
(25, 2015, 'Laptop', 'Laptop i5', 'Prof. & Head Textile Tech.', 2, '10.08.2015', 100000),
(26, 2015, 'Laptop', 'Apple Macbook', 'Director CTDT', 1, '06.11.2015', 118700),
(27, 2015, 'Laptop', 'Laptop i5', 'Head Printing Technology', 2, '22.12.2015', 102900),
(28, 2015, 'Laptop', 'Laptop i7', 'Director Academic Courses', 4, '22.12.2015', 249900),
(29, 2015, 'Laptop', 'Laptop i7', 'Director P & D', 1, '22.12.2015', 62475),
(30, 2015, 'Laptop', 'Laptop i7', 'Co-ordinator Science & Hum. MIT', 1, '22.12.2015', 62475),
(31, 2015, 'Laptop', 'Laptop i3', 'Head NHHID AU', 2, '31.12.2015', 53600),
(32, 2015, 'Laptop', 'Laptop i3', 'Head Medical Physics', 1, '31.12.2015', 26800),
(33, 2015, 'Laptop', 'Laptop i3', 'Head Biotech. A.C.Tech.', 2, '31.12.2015', 53600),
(34, 2015, 'Laptop', 'Laptop i3', 'Director Library CEG Campus', 1, '31.12.2015', 26800),
(35, 2015, 'Laptop', 'Laptop i5', 'Head Biotech. A.C.Tech.', 3, '31.12.2015', 119775),
(36, 2015, 'Laptop', 'Laptop i5', 'Director Library CEG Campus', 1, '31.12.2015', 39925),
(37, 2016, 'Laptop', 'Laptop i3', 'Head CWR  CEG Campus', 1, '14.01.2016', 26800),
(38, 2016, 'Laptop', 'Laptop i3', 'Head Chemical Engg. A.C.Tech', 7, '17.02.2016', 210000),
(39, 2016, 'Laptop', 'Laptop i5', 'Head Biotech. A.C.Tech.', 3, '02.03.2016', 119613),
(40, 2016, 'Laptop', 'Laptop i5', 'Head NHHID AU', 1, '02.03.2016', 39871),
(41, 2016, 'Laptop', 'Laptop i5', 'Head English', 1, '02.03.2016', 39871),
(42, 2016, 'Laptop', 'Laptop i5', 'Head Electronics Engg. MIT', 5, '03.03.2016', 249000),
(43, 2016, 'Laptop', 'Laptop i3', 'Dean SAP Campus', 2, '03.03.2016', 91770),
(44, 2016, 'Laptop', 'Laptopi5', 'Head CSE', 1, '03.03.2016', 51450),
(45, 2016, 'Laptop', 'Laptop i7', 'Dean CEG AU', 2, '03.03.2016', 124950),
(46, 2016, 'Laptop', 'Laptop i7', 'IOM CEG ', 1, '03.03.2016', 62475),
(47, 2017, 'Laptop', 'i5 Laptop', 'Division of Central Workshop', 1, '06.01.2017', 40682),
(48, 2017, 'Laptop', 'i5 Laptop', 'IOM CEG ', 2, '06.01.2017', 81365),
(49, 2017, 'Laptop', 'Laptop i7', 'Dierctor Nano Science & Tech', 4, '06.01.2017', 216300),
(50, 2017, 'Laptop', 'Laptop i7', 'Head Automobile Engg. MIT', 1, '30.01.2017', 79275),
(51, 2017, 'Laptop', 'Laptop i7', 'Director IQAC ', 1, '30.01.2017', 56700),
(52, 2017, 'Laptop', 'Laptop i7', 'Director IOM', 1, '30.01.2017', 56700),
(53, 2017, 'Laptop', 'MacBook Pro Laptop ', 'Director P & D', 1, '16.02.2017', 140000),
(54, 2017, 'Laptop', 'Laptop i5', 'Head Electronics Engg. MIT', 5, '24.02.2017', 220000),
(55, 2017, 'Laptop', 'Laptop i7', 'Dean CEG Campus', 4, '25.05.2017', 231000),
(56, 2017, 'Laptop', 'MacBook Pro Laptop ', 'Director EMRC', 1, '05.06.2017', 203000),
(57, 2017, 'Laptop', 'Laptop i5', 'Head Geology', 1, '22.06.2017', 61000),
(58, 2017, 'Laptop', 'Apple Laptop', 'Head Physics', 1, '10.08.2017', 116500),
(59, 2017, 'Laptop', 'Laptop i3', 'Head English', 3, '11.09.2017', 103546),
(60, 2017, 'Laptop', 'Laptop i5', 'Head ECE CEG Campus', 1, '11.09.2017', 48000),
(61, 2017, 'Laptop', 'Laptop i7', 'Head DIST CEG Campus', 8, '26.09.2017', 388928),
(62, 2017, 'Laptop', 'Laptop i5', 'Head Geology', 1, '27.09.2017', 48616),
(63, 2017, 'Laptop', 'Laptop i7', 'Dean AC Tech', 2, '27.09.2017', 119770),
(64, 2017, 'Laptop', 'Laptop i7', 'Head Geology', 1, '27.09.2017', 48616),
(65, 2017, 'Laptop', 'Apple Macbook ', 'Dean A.C.Tech.', 3, '05.10.2017', 508500),
(66, 2017, 'Laptop', 'Laptop i7', 'Head Aerospace Research MIT', 2, '10.10.2017', 97232),
(67, 2017, 'Laptop', 'Laptop i7', 'Head Sciences & Humanities MIT', 2, '10.10.2017', 97232),
(68, 2017, 'Laptop', 'Laptop i7', 'Dean A.C.Tech.', 2, '13.10.2017', 132000),
(69, 2018, 'Laptop', 'Laptop i7', 'Director IQAC', 1, '10.01.2018', 56000),
(70, 2018, 'Laptop', 'Laptop i7', 'Director Academic Courses', 1, '25.01.2018', 56000),
(71, 2018, 'Laptop', 'Laptop i7', 'Director Academic Courses', 1, '25.01.2018', 56000),
(72, 2018, 'Laptop', 'MacBook i7 Laptop', 'Head DIST CEG Campus', 1, '28.02.2018', 200000),
(73, 2018, 'Laptop', 'Laptop i3', 'Director Biotechnology', 3, '21.03.2018', 94164),
(74, 2018, 'Laptop', 'Laptop i3', 'Head Mechancial Engg.', 6, '21.03.2018', 188328),
(75, 2018, 'Laptop', 'Laptop i3', 'Director Biotechnology', 3, '21.03.2018', 94164),
(76, 2018, 'Laptop', 'Laptop i3', 'Head Mechancial Engg.', 6, '21.03.2018', 188328),
(1, 2014, 'iMac', 'iMac', 'Exam. Centre TNEA', 1, '29.12.2014', 176302),
(2, 2015, 'iMac', 'iMac', 'Dean MIT', 1, '19.01.2015', 194200),
(3, 2015, 'iMac', 'iMac', 'Civil Engg. Transportation Div.', 1, '26.02.2015', 74700),
(4, 2018, 'iMac', 'iMac', 'The Director Centre for International Affairs', 1, '11.07.2018', 169000),
(5, 2018, 'iMac', 'iMac', 'Director Bio-Technology', 1, '11.07.2018', 169000),
(6, 2018, 'iMac', 'iMac', 'Head Leather Technology AC Tech', 1, '11.07.2018', 169000),
(7, 2018, 'iMac', 'iMac', 'Head Leather Technology AC Tech', 1, '24.07.2018', 169000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_uploads`
--

CREATE TABLE `tbl_uploads` (
  `ITEM_no` int(11) NOT NULL,
  `id` int(10) NOT NULL,
  `file` varchar(100) NOT NULL,
  `type` varchar(10) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_uploads`
--

INSERT INTO `tbl_uploads` (`ITEM_no`, `id`, `file`, `type`, `size`) VALUES
(8023, 14, '97020-', '', 0),
(8024, 15, '87514-', '', 0),
(8025, 16, '53752-', '', 0),
(8026, 17, '26546-PDF_Choice_List_25.pdf', 'applicatio', 116069);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USERID` varchar(60) NOT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  `SESS_ID` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USERID`, `PASSWORD`, `SESS_ID`) VALUES
('CS', 'CS', 'USER'),
('EC', 'EC', 'USER'),
('MECH', 'MECH', 'USER'),
('RCC', 'RCC', 'RCC'),
('RCCADMIN', 'RCCADMIN', 'RCCADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `VENDOR_NAME` varchar(60) NOT NULL,
  `VENDOR_ADDRESS` varchar(120) NOT NULL,
  `VENDOR_CONTACT_NAME` varchar(60) NOT NULL,
  `VENDOR_WEB` varchar(60) NOT NULL,
  `VENDOR_MAIL` varchar(60) NOT NULL,
  `VENDOR_PHONE` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`VENDOR_NAME`, `VENDOR_ADDRESS`, `VENDOR_CONTACT_NAME`, `VENDOR_WEB`, `VENDOR_MAIL`, `VENDOR_PHONE`) VALUES
('R1', 'NO 79, ANNA SALAI, CHENNAI', 'VINOTH KUMAR', 'WWW.R1.COM', 'r1vinothkumar@gmail.com', 2147483647),
('R2', 'SAIDAPET, CHENNAI', 'RAVI R', 'WWW.R2.COM', 'r2ravir@gmail.com', 2147483647),
('V1', 'PERUNGUDI, CHENNAI', 'KESAVAN K', 'www.v1.com', 'v1kesavak@gmail.com', 44568932),
('X1', 'ADYAR, CHENNAI', 'ANANTH S', 'www.x1.com', 'x1ananths@gmail.com', 2147483647),
('RAJALAKSHMI SYSTEM PVT.LTD', 'ADYAR, CHENNAI', 'RAJASEKAR V', 'WWW.RAJALAKSHMISPV.COM', 'rajal.rajasekar@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Structure for view `item_count`
--
DROP TABLE IF EXISTS `item_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `item_count`  AS  select `rcc_purchase`.`ITEM_NAME` AS `ITEM_NAME`,count(0) AS `COUNT(*)` from `rcc_purchase` group by `rcc_purchase`.`ITEM_NAME` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rcc_purchase`
--
ALTER TABLE `rcc_purchase`
  ADD PRIMARY KEY (`ITEM_NO`);

--
-- Indexes for table `rcc_pur_from_babu`
--
ALTER TABLE `rcc_pur_from_babu`
  ADD PRIMARY KEY (`ITEM_NO`);

--
-- Indexes for table `system_confi`
--
ALTER TABLE `system_confi`
  ADD PRIMARY KEY (`SYS_CONFI_NO`);

--
-- Indexes for table `tbl_uploads`
--
ALTER TABLE `tbl_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_uploads`
--
ALTER TABLE `tbl_uploads`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
