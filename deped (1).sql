-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2025 at 05:38 AM
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
-- Database: `deped`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `ID` int(11) NOT NULL,
  `c_num` varchar(15) DEFAULT NULL,
  `full_name` varchar(50) NOT NULL,
  `c_pass` text NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `c_school` varchar(50) NOT NULL,
  `u_type` enum('admin','user','technician') NOT NULL DEFAULT 'user',
  `accountStatus` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`ID`, `c_num`, `full_name`, `c_pass`, `c_email`, `c_school`, `u_type`, `accountStatus`) VALUES
(44, '09124578693', 'Arjay Moreno', '$2y$10$E5jYZZH0ChPTzww3dj6VHuOD0Si.GkX3jJMcz9iKPFwnzc9j7Wuvi', 'arjay123@deped.gov.ph', 'SDO-SDS Office', 'technician', 'Active'),
(49, '09879654321', 'Anderson Forlales', '$2y$10$lVHbJdfP1fpT/dsGZ167Z.ylzgDczCJkB3ZJ0NYMHpeIQztiLf6Im', 'derson1@deped.gov.ph', 'SDO-SDS Office', 'admin', 'Active'),
(50, '09235689741', 'Justine Santos', '$2y$10$3QcIfLRGvQHf6rVa/NmW4.IJV8qcrG3W/YeufMvfKnRMadfid2Omu', 'justine@deped.gov.ph', 'SDO-SDS Office', 'admin', 'Active'),
(51, '09231654987', 'Angelina De Galicia', '$2y$10$adxk85z8OwchHfSsUbkZoOwifXIkKuQNZitzXi3ea3WQFTi9i.OUm', 'angelina@deped.gov.ph', 'SDO-SDS Office', 'admin', 'Active'),
(52, '09897654321', 'Marc Pinlac', '$2y$10$HE8fxz52nWtd.10RxbKHiuD5p4KJ0QZCgI7K.uiNPOLkq/nxx..YK', 'marc@deped.gov.ph', 'SDO-SDS Office', 'technician', 'Active'),
(53, '09654123987', 'Nicole Anderson Forlales', '$2y$10$HsVw1w2xsgZHex9/dVQggePwY0IMP2rfUuZW2tcV13LXK7BM2DQD.', 'anderson@deped.gov.ph', 'SDO-SDS Office', 'technician', ''),
(54, '09987456321', 'Patrick Pimentel', '$2y$10$fKVUeB.8QlLw74XGI2mqqOQIRCOqDF6m7uowQ3IQoN2BPpx0t4nQu', 'patrick@deped.gov.ph', 'SDO-SDS Office', 'technician', ''),
(55, '09321654987', 'Jessa Sebastian', '$2y$10$c7s2r5QMubUR6Gwqa3rcm.fBaC8D52UDzoQ.2q75mcbCy4Z7xmN2G', 'jessa@deped.gov.ph', 'SDO-SDS Office', 'user', ''),
(60, '09568932456', 'Apollos Dailo', '$2y$10$U76nUbmi0mmQgy8X3nJgOeGgDVbWXBeAjFqyn6IpFN3ieWdNQMBUm', 'apollos@deped.gov.ph', 'SDO-SDS Office', 'user', ''),
(62, '09568942357', 'Albert Matic', '$2y$10$InttXP5eAt3Eg5MDrLJ3Ae1lc6GYnuqi.IJ29MUsJ7znnsCMzvwei', 'albert@deped.gov.ph', 'SDO-ICT Unit', 'admin', ''),
(63, '09568912354', 'Julius Librando', '$2y$10$Ul/Flr7U7cEw73aXVjQNSusseSInAY3vSSNFAH4R3u0cQ64ReA8cu', 'julius@deped.gov.ph', 'SDO-ICT Unit', 'admin', ''),
(64, '09789456123', 'Ramil Vic Sotto', '$2y$10$2SBwWTfebKDchEepxXwOCeXEDQfHnVePfPlGf8UeTnMXRflHDyP7.', 'ramil@deped.gov.ph', 'SDO-SGOD Office', 'user', ''),
(65, '09982936068', 'Ohtani Shohei', '$2y$10$CSy0JRh5YTGPFoMVGyBbseHuUEDlAlSSLEZJeX2oeKapr3PknT6Bi', 'shohei@deped.gov.ph', 'SDO-SDS Office', 'technician', ''),
(66, '09982936068', 'angelina de galicia', '$2y$10$mULoGZNHglFAwAbPuA5/0en1rg0zTgxREKeH2J4twnRmZ8BPW4D2e', 'asdegalicia@deped.gov.ph', 'SDO-SDS Office', 'admin', 'Active'),
(67, '09946108949', 'hikaru nakamura', '$2y$10$7CyXv00jA8xf3eqoHoMOK.fRfhpz99vlPDhz/HrHh0JTelfhmrqDi', 'hikaru@deped.gov.ph', 'SDO-Admin Office', 'user', ''),
(68, '09982936068', 'anderson forlales', '$2y$10$wnC/k5mMkkF1RCXvjQeFIuDab1fic9jji0SkuqFE0CRf.tWpL5UNS', 'aforlales@deped.gov.ph', 'SDO-Payroll Section', 'user', 'Active'),
(69, '09982936068', 'itachi uchiha', '$2y$10$9TK01wci7iY/rLMniR1Ppe4MCyxiZGVlQ5CtbTsp3gBjgtN3miSPq', 'konospy@deped.gov.ph', 'SDO-SDS Office', 'user', 'Active'),
(70, '09982936068', 'Charles Leclerc', '$2y$10$1IkMvn.3PBc48mX.oLq0LO/rIkxUy59ffKzAPAqLO6W8dy8HONPDq', 'CharlesL@deped.gov.ph', 'SDO-SDS Office', 'user', 'Active'),
(71, '09982936068', 'apollos dailo malone', '$2y$10$/1T83b9pNWeEXnR9Px4.DutUKQMFo12FpN1OdCiAYBylDnSZovrFK', 'apollosmalone@deped.gov.ph', 'SDO-SDS Office', 'user', 'Active'),
(72, '09982936068', 'joshua garcia', '$2y$10$wHY2KTrCDXRygwxj9xZd5eOgfs3FZIu.xs185Q/zaVwKWzpGiYBdi', 'joshua@deped.gov.ph', 'SDO-SDS Office', 'user', 'Pending'),
(73, '09982936068', 'arjay moreno', '$2y$10$Fz2o9Kk9Obo5be5gp6AeIeiLCCTUeWMqXE1X6EMc/bk07rSBiJnlm', 'arjay54moreno@deped.gov.ph', 'SDO-SDS Office', 'user', 'Pending'),
(74, '09123456789', 'gabbi', '$2y$10$8rxa6TyZnOiczMpwSqt.8OVaVj8E/BTXKylBT6UnngBB4Rcz5sLAS', 'gabbi@deped.gov.ph', 'SDO-SDS Office', 'user', 'Pending'),
(75, '09123456789', 'gabbi nochi', '$2y$10$Uqy42RLVp3k75vyJc2h1mu1IXwHp4AOW0JTxXSXfcQOqvzT0DTIqm', 'gabbi2k@deped.gov.ph', 'SDO-Supply Unit', 'user', 'Pending'),
(76, '09123456789', 'armeltaba', '$2y$10$OlssfI3SZScoZSY9aCitsOKuZTzllIOlZjZzuhT85LA8mH7wJy9TK', 'armeltabios@deped.gov.ph', 'SDO-SDS Office', 'user', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `job_order` bigint(20) NOT NULL,
  `urgency` enum('Low','Medium','High','Urgent') NOT NULL,
  `full_name` varchar(65) NOT NULL,
  `m_number` varchar(11) NOT NULL,
  `email` varchar(65) NOT NULL,
  `t_req` varchar(50) NOT NULL,
  `r_desc` varchar(65) NOT NULL,
  `r_details` text NOT NULL,
  `technician` varchar(50) NOT NULL,
  `school` varchar(65) NOT NULL,
  `cstatus` enum('Pending','On Going','Completed','TBA') NOT NULL DEFAULT 'TBA',
  `r_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`job_order`, `urgency`, `full_name`, `m_number`, `email`, `t_req`, `r_desc`, `r_details`, `technician`, `school`, `cstatus`, `r_date`) VALUES
(202500000032, 'Low', 'Jessa Sebastian', '09321654987', 'jessa@deped.gov.ph', 'Creation/Deletion/Rename/Updates of User Accounts', 'gmail account', 'forgot password', 'Nicole Anderson Forlales', 'SDO-SDS Office', '', '2025-04-04'),
(202500000033, 'Medium', 'Jessa Sebastian', '09321654987', 'jessa@deped.gov.ph', 'Repair and Maintenance of ICT Equipment', 'sirang pc', 'nagmamatay bigla', 'Arjay Moreno', 'SDO-SDS Office', 'On Going', '2025-04-04'),
(202500000034, 'High', 'Jessa Sebastian', '09321654987', 'jessa@deped.gov.ph', 'Technical Assistance to DepEd PPA\'s', 'Camera', 'for photoshoot', 'Marc Pinlac', 'SDO-SDS Office', 'On Going', '2025-04-05'),
(202500000035, 'Urgent', 'Jessa Sebastian', '09321654987', 'jessa@deped.gov.ph', 'Technical Assistance to DepEd PPA\'s', 'Sound System', 'for graduation', 'Patrick Pimentel', 'SDO-SDS Office', 'On Going', '2025-04-05'),
(202500000038, 'Low', 'Jessa Sebastian', '09321654987', 'jessa@deped.gov.ph', 'Technical Assistance to DepEd PPA\'s', 'Camera', 'for photoshoot', 'Arjay Moreno', 'SDO-SDS Office', 'On Going', '2025-04-05'),
(202500000039, 'Low', 'angelina de galicia', '09982936068', 'asdegalicia@deped.gov.ph', 'Uploading of Publications and Updates Online', 'announcement for no classes', 'this is your captain speaking there is no class today', 'Arjay Moreno', 'SDO-SDS Office', 'On Going', '2025-04-21'),
(202500000040, 'Low', 'angelina de galicia', '09982936068', 'asdegalicia@deped.gov.ph', 'Uploading of Publications and Updates Online', 'test data', 'data test', '', 'SDO-SDS Office', 'On Going', '2025-04-22'),
(202500000041, 'Low', 'angelina de galicia', '09982936068', 'asdegalicia@deped.gov.ph', 'Repair and Maintenance of ICT Equipment', '', '1', 'Nicole Anderson Forlales', 'SDO-SDS Office', 'On Going', '2025-04-22'),
(202500000042, 'Low', 'angelina de galicia', '09982936068', 'asdegalicia@deped.gov.ph', 'Repair and Maintenance of ICT Equipment', '', '123', '', 'SDO-SDS Office', 'On Going', '2025-04-22'),
(202500000043, 'Low', 'angelina de galicia', '09982936068', 'asdegalicia@deped.gov.ph', 'Repair and Maintenance of ICT Equipment', '', '1', 'Arjay Moreno', 'SDO-SDS Office', 'On Going', '2025-04-22'),
(202500000044, 'Low', 'angelina de galicia', '09982936068', 'asdegalicia@deped.gov.ph', 'Repair and Maintenance of ICT Equipment', '', '1', '', 'SDO-SDS Office', 'TBA', '2025-04-22'),
(202500000045, 'Low', 'hikaru nakamura', '09946108949', 'hikaru@deped.gov.ph', 'Uploading of Publications and Updates Online', '', '214', '', 'SDO-Admin Office', 'TBA', '2025-04-22'),
(202500000046, 'Low', 'hikaru nakamura', '09946108949', 'hikaru@deped.gov.ph', 'Repair and Maintenance of ICT Equipment', '', 'please set up my new computer', '', 'SDO-Admin Office', 'TBA', '2025-04-22'),
(202500000047, 'Low', 'hikaru nakamura', '09946108949', 'hikaru@deped.gov.ph', 'Repair and Maintenance of ICT Equipment', '', 'test data', '', 'SDO-Admin Office', 'TBA', '2025-04-22'),
(202500000048, 'Low', 'hikaru nakamura', '09946108949', 'hikaru@deped.gov.ph', 'Repair and Maintenance of ICT Equipment', '', 'test data', '', 'SDO-Admin Office', 'TBA', '2025-04-22'),
(202500000049, 'Low', 'angelina de galicia', '09982936068', 'asdegalicia@deped.gov.ph', 'Repair and Maintenance of ICT Equipment', '', 'nag paper jam', '', 'SDO-SDS Office', 'TBA', '2025-04-22'),
(202500000050, 'Low', 'anderson forlales', '09982936068', 'aforlales@deped.gov.ph', 'Repair and Maintenance of ICT Equipment', '', '1234', '', 'SDO-Payroll Section', 'TBA', '2025-04-22'),
(202500000051, 'Low', 'Charles Leclerc', '09982936068', 'CharlesL@deped.gov.ph', 'Uploading of Publications and Updates Online', '', 'Lets all welcome the prime minister of japan ', '', 'SDO-SDS Office', 'TBA', '2025-04-24'),
(202500000052, 'Low', 'Charles Leclerc', '09982936068', 'CharlesL@deped.gov.ph', 'Repair and Maintenance of ICT Equipment', '', 'hajimimashite', '', 'SDO-SDS Office', 'TBA', '2025-04-24'),
(202500000053, 'Low', 'Charles Leclerc', '09982936068', 'CharlesL@deped.gov.ph', 'Repair and Maintenance of ICT Equipment', '', 'skill issues', '', 'SDO-SDS Office', 'TBA', '2025-04-24'),
(202500000054, 'Low', 'Charles Leclerc', '09982936068', 'CharlesL@deped.gov.ph', 'Creation/Deletion/Rename/Updates of User Accounts', '', 'skill issues', '', 'SDO-SDS Office', 'TBA', '2025-04-24'),
(202500000055, 'Low', 'Charles Leclerc', '09982936068', 'CharlesL@deped.gov.ph', 'Uploading of Publications and Updates Online', '', 'testdummy', '', 'SDO-SDS Office', 'TBA', '2025-04-24'),
(202500000056, 'Low', 'Charles Leclerc', '09982936068', 'CharlesL@deped.gov.ph', 'Creation/Deletion/Rename/Updates of User Accounts', '', '211', '', 'SDO-SDS Office', 'TBA', '2025-04-24'),
(202500000058, 'Low', 'Charles Leclerc', '09982936068', 'CharlesL@deped.gov.ph', 'Uploading of Publications and Updates Online', '', '123', 'Nicole Anderson Forlales', 'SDO-SDS Office', 'TBA', '2025-04-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`job_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `job_order` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202500000060;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
