-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 24, 2019 at 06:23 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asset_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `asset_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`asset_id`, `category_id`, `createdAt`, `updatedAt`) VALUES
(10000, 3, '2019-03-18 11:58:15', '2019-03-18 11:58:15'),
(10001, 3, '2019-03-18 11:58:15', '2019-03-24 04:36:31'),
(10002, 3, '2019-03-18 11:58:15', '2019-03-18 11:58:15'),
(10003, 3, '2019-03-18 11:58:15', '2019-03-18 11:58:15'),
(10004, 1, '2019-03-18 11:58:15', '2019-03-18 11:58:15'),
(10005, 1, '2019-03-18 11:58:15', '2019-03-18 11:58:15'),
(10006, 3, '2019-03-18 11:58:15', '2019-03-24 04:22:50'),
(10008, 1, '2019-03-18 11:58:15', '2019-03-18 11:58:15'),
(10009, 1, '2019-03-18 11:58:15', '2019-03-18 11:58:15'),
(10010, 1, '2019-03-18 11:58:15', '2019-03-18 11:58:15'),
(20010, 1, '2019-03-22 19:07:20', '2019-03-22 19:07:20'),
(30000, 1, '2019-03-22 06:32:08', '2019-03-22 06:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `asset_to_attributes`
--

CREATE TABLE `asset_to_attributes` (
  `asset_to_attributes_id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `attribute_value` text NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `asset_to_attributes`
--

INSERT INTO `asset_to_attributes` (`asset_to_attributes_id`, `asset_id`, `attribute_id`, `attribute_value`, `createdAt`, `updatedAt`) VALUES
(11, 10017, 1, 'STI-CSR-10017', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(12, 10017, 2, 'Chelsie', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(13, 10017, 3, 'STI', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(14, 10017, 4, 'CSR', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(15, 10017, 5, 'A4', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(31, 10004, 1, 'STI-CSR-10004', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(32, 10004, 2, 'Jesus', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(33, 10004, 3, 'STI', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(34, 10004, 4, 'CSR', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(35, 10004, 5, 'B3', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(43, 10004, 12, '----------\r\n', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(44, 10004, 13, '----------\r\n', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(98, 10119, 1, 'STI-IT-10119', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(99, 10119, 2, 'Not in use', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(100, 10119, 3, 'STI', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(101, 10119, 4, 'IT', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(102, 10119, 5, 'No record found', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(103, 10119, 6, 'AMD Sempron', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(104, 10119, 7, '320GB HDD', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(105, 10119, 8, '2GB RAM', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(106, 10119, 9, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(107, 10119, 10, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(108, 10119, 11, '3/24/2018', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(186, 10004, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(187, 10004, 7, 'test', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(188, 10004, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(189, 10004, 7, 'test', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(190, 10004, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(191, 10004, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(411, 10017, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(412, 10017, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(413, 10017, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(414, 10017, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(415, 10017, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(416, 10017, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1140, 11001, 1, 'Test Name', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1141, 11001, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1142, 11001, 3, 'Test Company', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1143, 11001, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1144, 11001, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1145, 11001, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1146, 11001, 12, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1147, 11001, 13, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1156, 10075, 1, 'Seagate', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1157, 10075, 7, '320 GB', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1158, 10075, 10, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1159, 10075, 11, '4/13/2018', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1160, 10075, 12, 'Barracuda 7200.10 ', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1161, 10075, 13, '9QF9AN32', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1209, 10034, 1, 'Western Digital', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1210, 10034, 7, '1 TB', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1211, 10034, 10, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1212, 10034, 11, '4/13/2018', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1213, 10034, 12, 'WD10EALX', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1214, 10034, 13, 'WCATR8649400', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1228, 88338, 13, '88338 - SN', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1272, 20000, 12, '20000 - Model', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1273, 20000, 13, '20000 - SN', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1285, 10002, 1, '10002 - Name', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1286, 10002, 7, '10002 - Storage', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1287, 10002, 10, '10002 - HDD', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1288, 10002, 11, '10002 - Date Tested', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1289, 10002, 12, '10002 - Model', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1290, 10002, 13, '10002 - SN', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1317, 10012, 1, 'STI-CSR-10012', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1318, 10012, 2, 'Jermicka', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1319, 10012, 3, 'STI', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1320, 10012, 4, 'CSR', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1321, 10012, 5, 'A1', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1322, 10012, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1323, 10012, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1324, 10012, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1325, 10012, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1326, 10012, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1327, 10012, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1328, 10010, 1, 'STI-CSR-10010', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1329, 10010, 2, 'Jim', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1330, 10010, 3, 'STI', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1331, 10010, 4, 'CSR', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1332, 10010, 5, 'C3', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1333, 10010, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1334, 10010, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1335, 10010, 8, 'Test', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1336, 10010, 9, 'Test', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1337, 10010, 10, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1338, 10010, 11, '3/21/2018', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1339, 10029, 1, 'STI-CSR-10029', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1340, 10029, 2, 'None', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1341, 10029, 3, 'STI', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1342, 10029, 4, 'CSR', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1343, 10029, 5, 'A5', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1344, 10029, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1345, 10029, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1346, 10029, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1347, 10029, 9, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1348, 10029, 10, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1349, 10029, 11, '10/26/2018', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1350, 10024, 1, 'STI-CSR-10024', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1351, 10024, 2, 'Marco', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1352, 10024, 3, 'STI', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1353, 10024, 4, 'CSR', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1354, 10024, 5, 'B2', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1355, 10024, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1356, 10024, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1357, 10024, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1358, 10024, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1359, 10024, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1360, 10024, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1361, 10110, 1, 'N/A', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1362, 10110, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1363, 10110, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1364, 10110, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1365, 10110, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1366, 10110, 6, 'Phenom II x4', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1367, 10110, 7, '1000GB HDD', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1368, 10110, 8, '6GB RAM', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1369, 10110, 9, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1370, 10110, 10, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1371, 10110, 11, '3/21/2018', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1372, 10127, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1373, 10127, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1374, 10127, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1375, 10127, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1376, 10127, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1377, 10127, 6, 'Athlon 64 X2 Dual Core 4800+', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1378, 10127, 7, '320GB HD', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1379, 10127, 8, '2GB RAM', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1380, 10127, 9, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1381, 10127, 10, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1382, 10127, 11, '5/11/2018', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1383, 10124, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1384, 10124, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1385, 10124, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1386, 10124, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1387, 10124, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1388, 10124, 6, 'AMD Athlon LE-1640', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1389, 10124, 7, '250GB HDD', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1390, 10124, 8, '3GB RAM', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1391, 10124, 9, 'PASS ', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1392, 10124, 10, 'PASS/PRE-FAILURE', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1393, 10124, 11, '5/12/2018', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1394, 10132, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1395, 10132, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1396, 10132, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1397, 10132, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1398, 10132, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1399, 10132, 6, 'Phenom II x4', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1400, 10132, 7, '1TB HDD', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1401, 10132, 8, '4GB RAM', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1402, 10132, 9, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1403, 10132, 10, 'PASS', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1404, 10132, 11, '3/24/2018', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1416, 10107, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1417, 10107, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1418, 10107, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1419, 10107, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1420, 10107, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1421, 10107, 6, 'Pentium Quad Core', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1422, 10107, 7, '250GB HDD', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1423, 10107, 8, '4GB RAM', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1424, 10107, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1425, 10107, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1426, 10107, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1435, 10014, 1, '10014', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1436, 10014, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1437, 10014, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1438, 10014, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1439, 10014, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1440, 10014, 6, '10014', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1441, 10014, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1442, 10014, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1443, 10014, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1444, 10014, 10, '10014', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1445, 10014, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1446, 10079, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1447, 10079, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1448, 10079, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1449, 10079, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1450, 10079, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1451, 10079, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1452, 10079, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1453, 10079, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1454, 10079, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1455, 10079, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1456, 10079, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1457, 10019, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1458, 10019, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1459, 10019, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1460, 10019, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1461, 10019, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1462, 10019, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1463, 10019, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1464, 10019, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1465, 10019, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1466, 10019, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1467, 10019, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1468, 10020, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1469, 10020, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1470, 10020, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1471, 10020, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1472, 10020, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1473, 10020, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1474, 10020, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1475, 10020, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1476, 10020, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1477, 10020, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1478, 10020, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1479, 10101, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1480, 10101, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1481, 10101, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1482, 10101, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1483, 10101, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1484, 10101, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1485, 10101, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1486, 10101, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1487, 10101, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1488, 10101, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1489, 10101, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1490, 10006, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1491, 10006, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1492, 10006, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1493, 10006, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1494, 10006, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1495, 10006, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1496, 10006, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1497, 10006, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1498, 10006, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1499, 10006, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1500, 10006, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1501, 10021, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1502, 10021, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1503, 10021, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1504, 10021, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1505, 10021, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1506, 10021, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1507, 10021, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1508, 10021, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1509, 10021, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1510, 10021, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1511, 10021, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1512, 10008, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1513, 10008, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1514, 10008, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1515, 10008, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1516, 10008, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1517, 10008, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1518, 10008, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1519, 10008, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1520, 10008, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1521, 10008, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1522, 10008, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1523, 10009, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1524, 10009, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1525, 10009, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1526, 10009, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1527, 10009, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1528, 10009, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1529, 10009, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1530, 10009, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1531, 10009, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1532, 10009, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1533, 10009, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1534, 10027, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1535, 10027, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1536, 10027, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1537, 10027, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1538, 10027, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1539, 10027, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1540, 10027, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1541, 10027, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1542, 10027, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1543, 10027, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1544, 10027, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1545, 10026, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1546, 10026, 2, 'Carl', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1547, 10026, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1548, 10026, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1549, 10026, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1550, 10026, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1551, 10026, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1552, 10026, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1553, 10026, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1554, 10026, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1555, 10026, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1556, 10076, 1, 'STI-QA-10076', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1557, 10076, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1558, 10076, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1559, 10076, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1560, 10076, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1561, 10076, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1562, 10076, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1563, 10076, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1564, 10076, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1565, 10076, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1566, 10076, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1567, 10033, 1, 'STI-1033', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1568, 10033, 2, 'Briggete', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1569, 10033, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1570, 10033, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1571, 10033, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1572, 10033, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1573, 10033, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1574, 10033, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1575, 10033, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1576, 10033, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1577, 10033, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1578, 10018, 1, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1579, 10018, 2, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1580, 10018, 3, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1581, 10018, 4, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1582, 10018, 5, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1583, 10018, 6, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1584, 10018, 7, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1585, 10018, 8, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1586, 10018, 9, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1587, 10018, 10, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30'),
(1588, 10018, 11, '----------', '2019-03-18 12:35:30', '2019-03-18 12:35:30');

-- --------------------------------------------------------

--
-- Table structure for table `asset_to_notes`
--

CREATE TABLE `asset_to_notes` (
  `asset_to_note_id` int(11) NOT NULL,
  `asset_id` int(11) NOT NULL,
  `note_id` int(10) NOT NULL,
  `notes` text NOT NULL,
  `notes_entry_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `asset_to_notes`
--

INSERT INTO `asset_to_notes` (`asset_to_note_id`, `asset_id`, `note_id`, `notes`, `notes_entry_date`, `createdAt`, `updatedAt`) VALUES
(6, 10119, 1, 'HDD Wiped', '2019-03-21 15:00:02', '2018-04-01 21:25:24', '2019-03-18 12:41:41'),
(17, 10004, 1, '----------', '2019-03-21 15:00:02', '2018-04-05 22:39:54', '2019-03-18 12:41:41'),
(36, 10017, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-04-13 15:26:09', '2019-03-18 12:41:41'),
(65, 10005, 1, 'TEST TEST TEST ', '2019-03-21 15:00:02', '2018-04-19 19:39:47', '2019-03-18 12:41:41'),
(70, 10039, 1, '----------', '2019-03-21 15:00:02', '2018-04-29 19:54:50', '2019-03-18 12:41:41'),
(73, 10040, 1, '----------', '2019-03-21 15:00:02', '2018-04-29 20:25:56', '2019-03-18 12:41:41'),
(74, 10041, 1, '----------', '2019-03-21 15:00:02', '2018-04-29 20:39:36', '2019-03-18 12:41:41'),
(95, 11001, 1, 'Test Notes', '2019-03-21 15:00:02', '2018-05-04 18:10:16', '2019-03-18 12:41:41'),
(97, 10075, 1, '----------', '2019-03-21 15:00:02', '2018-05-04 22:18:13', '2019-03-18 12:41:41'),
(110, 10034, 1, '1034 - NOTES', '2019-03-21 15:00:02', '2018-05-25 21:54:38', '2019-03-18 12:41:41'),
(122, 10002, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-06-20 14:29:43', '2019-03-18 12:41:41'),
(126, 10012, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-06-30 20:23:06', '2019-03-18 12:41:41'),
(127, 10010, 1, 'Audio updated, moved to ext. 7904', '2019-03-21 15:00:02', '2018-06-30 20:33:10', '2019-03-18 12:41:41'),
(128, 10029, 1, 'Installed: iSymphony, Silverlight 10/24/2018', '2019-03-21 15:00:02', '2018-06-30 20:54:02', '2019-03-18 12:41:41'),
(129, 10024, 1, '----------', '2019-03-21 15:00:02', '2018-06-30 20:57:21', '2019-03-18 12:41:41'),
(130, 10110, 1, 'HD Wiped', '2019-03-21 15:00:02', '2018-07-28 17:26:14', '2019-03-18 12:41:41'),
(131, 10127, 1, 'HD Needs review (NOT WIPED) - Server files - Mysql User Alimovz', '2019-03-21 15:00:02', '2018-07-28 17:59:18', '2019-03-18 12:41:41'),
(132, 10124, 1, 'HD Wiped', '2019-03-21 15:00:02', '2018-07-28 18:01:53', '2019-03-18 12:41:41'),
(133, 10132, 1, 'HD Wiped', '2019-03-21 15:00:02', '2018-07-28 18:15:13', '2019-03-18 12:41:41'),
(135, 10107, 1, '----------', '2019-03-21 15:00:02', '2018-07-28 18:37:47', '2019-03-18 12:41:41'),
(140, 10083, 1, 'Just a test', '2019-03-21 15:00:02', '2018-09-30 19:22:12', '2019-03-18 12:41:41'),
(141, 10083, 1, 'Just a test', '2019-03-21 15:00:02', '2018-09-30 19:22:12', '2019-03-18 12:41:41'),
(142, 10014, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-10-03 17:04:07', '2019-03-18 12:41:41'),
(143, 10079, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-10-03 17:04:54', '2019-03-18 12:41:41'),
(144, 10019, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-10-03 17:08:36', '2019-03-18 12:41:41'),
(145, 10020, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-10-03 17:10:14', '2019-03-18 12:41:41'),
(146, 10101, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-10-03 22:23:34', '2019-03-18 12:41:41'),
(147, 10006, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-10-03 22:24:53', '2019-03-18 12:41:41'),
(148, 10021, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-10-03 22:29:13', '2019-03-18 12:41:41'),
(149, 10008, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-10-03 22:37:51', '2019-03-18 12:41:41'),
(150, 10009, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-10-03 22:39:25', '2019-03-18 12:41:41'),
(151, 10027, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-10-03 22:47:27', '2019-03-18 12:41:41'),
(152, 10026, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-10-04 13:18:10', '2019-03-18 12:41:41'),
(153, 10076, 1, 'Audio updated', '2019-03-21 15:00:02', '2018-10-04 13:21:33', '2019-03-18 12:41:41'),
(154, 10033, 1, 'Gray box, updated silverlight', '2019-03-21 15:00:02', '2018-10-25 15:02:55', '2019-03-18 12:41:41'),
(155, 10033, 1, 'Gray box, updated silverlight', '2019-03-21 15:00:02', '2018-10-25 15:02:55', '2019-03-18 12:41:41'),
(156, 10018, 1, 'Unused switched with Jim', '2019-03-21 15:00:02', '2018-10-25 15:17:18', '2019-03-18 12:41:41'),
(182, 10004, 1, '----------', '2019-03-21 15:00:02', '2018-02-19 01:49:50', '2019-03-18 12:41:41'),
(183, 10004, 1, '----------', '2019-03-21 15:00:02', '2018-02-19 01:51:14', '2019-03-18 12:41:41'),
(184, 10004, 1, '----------', '2019-03-21 15:00:02', '2018-02-19 01:52:12', '2019-03-18 12:41:41'),
(185, 10004, 1, '----------', '2019-03-21 15:00:02', '2018-02-19 01:53:01', '2019-03-18 12:41:41'),
(186, 10004, 1, '----------', '2019-03-21 15:00:02', '2018-02-19 01:53:22', '2019-03-18 12:41:41'),
(187, 10075, 1, '----------', '2019-03-21 15:00:02', '2018-02-19 08:49:47', '2019-03-18 12:41:41'),
(191, 10074, 1, '----------', '2019-03-21 15:00:02', '2018-02-19 20:26:57', '2019-03-18 12:41:41'),
(198, 10074, 1, '----------', '2019-03-21 15:00:02', '2018-02-21 14:41:58', '2019-03-18 12:41:41'),
(199, 10074, 1, '----------', '2019-03-21 15:00:02', '2018-02-21 14:51:44', '2019-03-18 12:41:41'),
(200, 10074, 1, '----------', '2019-03-21 15:00:02', '2018-02-21 14:55:48', '2019-03-18 12:41:41'),
(203, 10074, 1, '----------', '2019-03-21 15:00:02', '2018-03-06 15:47:32', '2019-03-18 12:41:41');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `attribute_id` int(11) NOT NULL,
  `attribute_name` varchar(256) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`attribute_id`, `attribute_name`, `createdAt`, `updatedAt`) VALUES
(1, 'Name', '2019-03-18 12:42:38', '2019-03-18 12:42:38'),
(2, 'User', '2019-03-18 12:42:38', '2019-03-18 12:42:38'),
(3, 'Company', '2019-03-18 12:42:38', '2019-03-18 12:42:38'),
(4, 'Department', '2019-03-18 12:42:38', '2019-03-18 12:42:38'),
(5, 'Station', '2019-03-18 12:42:38', '2019-03-18 12:42:38'),
(6, 'Processor', '2019-03-18 12:42:38', '2019-03-18 12:42:38'),
(7, 'Storage', '2019-03-18 12:42:38', '2019-03-18 12:42:38'),
(8, 'Memory', '2019-03-18 12:42:38', '2019-03-18 12:42:38'),
(9, 'RAM Test', '2019-03-18 12:42:38', '2019-03-18 12:42:38'),
(10, 'HDD Test', '2019-03-18 12:42:38', '2019-03-18 12:42:38'),
(11, 'Date Tested', '2019-03-18 12:42:38', '2019-03-18 12:42:38'),
(12, 'Model', '2019-03-18 12:42:38', '2019-03-18 12:42:38'),
(13, 'Serial Number', '2019-03-18 12:42:38', '2019-03-18 12:42:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(256) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `createdAt`, `updatedAt`) VALUES
(1, 'Computers', '2019-03-18 12:43:36', '2019-03-18 12:43:36'),
(2, 'Phones', '2019-03-18 12:43:36', '2019-03-18 12:43:36'),
(3, 'HDD', '2019-03-18 12:43:36', '2019-03-18 12:43:36'),
(4, 'new test category', '2019-03-22 20:47:19', '2019-03-22 21:01:51'),
(5, 'second new test category ', '2019-03-22 21:10:17', '2019-03-22 21:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `category_to_attributes`
--

CREATE TABLE `category_to_attributes` (
  `category_to_attributes_id` int(11) NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_to_attributes`
--

INSERT INTO `category_to_attributes` (`category_to_attributes_id`, `attribute_id`, `category_id`, `createdAt`, `updatedAt`) VALUES
(1, 1, 1, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(2, 2, 1, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(3, 3, 1, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(4, 4, 1, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(5, 5, 1, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(6, 6, 1, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(7, 7, 1, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(8, 8, 1, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(9, 9, 1, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(10, 10, 1, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(11, 11, 1, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(12, 11, 2, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(13, 11, 3, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(14, 12, 2, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(15, 12, 3, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(16, 13, 3, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(17, 13, 2, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(18, 1, 2, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(19, 1, 3, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(20, 7, 3, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(21, 2, 2, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(22, 10, 3, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(23, 2, 3, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(24, 3, 2, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(25, 4, 2, '2019-03-18 12:45:24', '2019-03-18 12:45:24'),
(26, 5, 2, '2019-03-18 12:45:24', '2019-03-18 12:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `SequelizeMeta`
--

CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `SequelizeMeta`
--

INSERT INTO `SequelizeMeta` (`name`) VALUES
('20190318053256-create-assets.js'),
('20190318053541-create-categories.js'),
('20190318054053-create-attributes.js'),
('20190318054655-create-asset-to-notes.js'),
('20190318054750-create-asset-to-attributes.js'),
('20190318054827-create-category-to-attributes.js');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `asset_to_attributes`
--
ALTER TABLE `asset_to_attributes`
  ADD PRIMARY KEY (`asset_to_attributes_id`);

--
-- Indexes for table `asset_to_notes`
--
ALTER TABLE `asset_to_notes`
  ADD PRIMARY KEY (`asset_to_note_id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `category_to_attributes`
--
ALTER TABLE `category_to_attributes`
  ADD PRIMARY KEY (`category_to_attributes_id`);

--
-- Indexes for table `SequelizeMeta`
--
ALTER TABLE `SequelizeMeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset_to_attributes`
--
ALTER TABLE `asset_to_attributes`
  MODIFY `asset_to_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1589;

--
-- AUTO_INCREMENT for table `asset_to_notes`
--
ALTER TABLE `asset_to_notes`
  MODIFY `asset_to_note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=204;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_to_attributes`
--
ALTER TABLE `category_to_attributes`
  MODIFY `category_to_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
