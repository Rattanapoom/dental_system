-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2021 at 05:39 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dental_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `backup`
--

CREATE TABLE `backup` (
  `idDental` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `dentalname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nameDoctor` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `backup`
--

INSERT INTO `backup` (`idDental`, `idUser`, `date`, `time`, `dentalname`, `nameDoctor`, `status`) VALUES
(33, 10, '2021-07-17', '10:30:00', 'ฝอกสีฟัน', 'นายแพทย์1', 'ชำระเงินแล้ว'),
(39, 10, '2021-07-21', '16:00:00', 'จัดฟัน', 'นายแพทย์1', 'ชำระเงินแล้ว'),
(38, 10, '2021-07-19', '13:00:00', 'จัดฟัน', 'นายแพทย์2', 'ชำระเงินแล้ว'),
(59, 10, '2021-08-16', '15:00:00', 'อุดฟัน', 'หมอโซดา', 'สำเร็จแล้ว'),
(61, 10, '2021-08-23', '15:30:00', 'อุดฟัน', 'หมอโซดา', 'สำเร็จแล้ว'),
(60, 10, '2021-08-25', '15:00:00', 'จัดฟัน', 'หมอโซดา', 'สำเร็จแล้ว'),
(91, 10, '2021-08-29', '10:00:00', '', '', 'สำเร็จแล้ว'),
(92, 3, '2021-09-05', '11:00:00', 'อุดฟัน', 'หมอกานดา', 'ยกเลิกการจอง'),
(93, 10, '2021-09-11', '08:30:00', 'อุดฟัน', '', 'ยกเลิกการจอง'),
(93, 10, '2021-09-11', '08:30:00', 'อุดฟัน', '', 'ยกเลิกการจอง'),
(66, 10, '2021-09-20', '17:00:00', 'อุดฟัน', 'หมอโซดา', 'จองสำเร็จ'),
(99, 3, '2021-09-20', '16:30:00', 'จัดฟัน', 'หมอโซดา', 'ยกเลิกการจอง'),
(90, 10, '2021-11-09', '09:30:00', 'อุดฟัน', 'หมอกานดา', 'จองสำเร็จ'),
(89, 10, '2021-11-08', '10:00:00', 'อุดฟัน', 'หมอกานดา', 'ยกเลิกการจอง');

-- --------------------------------------------------------

--
-- Table structure for table `dentalitems`
--

CREATE TABLE `dentalitems` (
  `idDental` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `dentalname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nameDoctor` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `namecus` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dentalitems`
--

INSERT INTO `dentalitems` (`idDental`, `idUser`, `date`, `time`, `dentalname`, `nameDoctor`, `status`, `namecus`) VALUES
(1, 10, '2021-11-01', '14:00:00', 'จัดฟัน', 'หมอโซดา', 'จองสำเร็จ', ''),
(62, 10, '2021-09-30', '12:00:00', 'จัดฟัน', 'หมอโซดา', 'จองสำเร็จ', ''),
(65, 10, '2021-10-07', '16:00:00', 'จัดฟัน', 'หมอโซดา', 'จองสำเร็จ', ''),
(85, 10, '2021-10-08', '13:30:00', 'จัดฟัน', 'หมอโซดา', 'จองสำเร็จ', ''),
(86, 10, '2021-10-06', '10:30:00', 'จัดฟัน', 'หมอโซดา', 'จองสำเร็จ', ''),
(87, 10, '2021-09-11', '16:00:00', 'จัดฟัน', 'หมอโซดา', 'จองสำเร็จ', ''),
(88, 10, '2021-09-12', '11:00:00', 'จัดฟัน', 'หมอโซดา', 'จองสำเร็จ', ''),
(94, 3, '2021-11-10', '16:30:00', 'จัดฟัน', 'หมอโซดา', 'จองสำเร็จ', ''),
(95, 3, '2021-11-11', '08:00:00', 'อุดฟัน', 'หมอกานดา', 'จองสำเร็จ', ''),
(96, 3, '2021-11-12', '08:30:00', 'จัดฟัน', 'หมอโซดา', 'จองสำเร็จ', 'เกมส์'),
(97, 10, '2021-09-25', '11:00:00', 'ฟอกสีฟัน', 'หมอกานดา', 'จองสำเร็จ', ''),
(98, 10, '2021-09-30', '08:00:00', 'อุดฟัน', 'หมอกานดา', 'จองสำเร็จ', ''),
(101, 10, '2021-10-08', '10:00:00', 'อุดฟัน', 'หมอเกมส์', 'จองสำเร็จ', ''),
(102, 10, '2021-10-07', '09:30:00', 'อุดฟัน', 'หมอเกมส์', 'จองสำเร็จ', ''),
(103, 3, '2021-11-09', '11:00:00', 'ฟอกสีฟัน', 'หมอเกมส์', 'จองสำเร็จ', 'รัตนภูมิ'),
(104, 10, '2021-11-09', '09:30:00', 'อุดฟัน', 'หมอเกมส์', 'จองสำเร็จ', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` int(11) NOT NULL,
  `named` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `list_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `named`, `list_id`) VALUES
(2, 'หมอเกมส์', 2),
(3, 'หมอโซดา', 1),
(7, 'หมอกานดา', 2);

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `id` int(11) NOT NULL,
  `namelist` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stalist` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`id`, `namelist`, `stalist`) VALUES
(2, 'ขูดหินปูน', 'กำลังจอง'),
(1, 'จัดฟัน', 'กำลังจอง'),
(2, 'ฟอกสีฟัน', 'กำลังจอง'),
(2, 'อุดฟัน', 'กำลังจอง');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(11) NOT NULL,
  `times` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`id`, `times`) VALUES
(1, '08:00:00'),
(2, '08:30:00'),
(3, '09:00:00'),
(4, '09:30:00'),
(5, '10:00:00'),
(6, '10:30:00'),
(7, '11:00:00'),
(8, '11:30:00'),
(9, '13:00:00'),
(10, '13:30:00'),
(11, '14:00:00'),
(12, '14:30:00'),
(13, '15:00:00'),
(14, '15:30:00'),
(15, '16:00:00'),
(16, '16:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(20) NOT NULL,
  `congenitaldisease` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allergic` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergencycontract` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emergencyphone` int(11) NOT NULL,
  `level` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `name`, `lname`, `gender`, `email`, `password`, `phone`, `congenitaldisease`, `allergic`, `blood`, `emergencycontract`, `emergencyphone`, `level`) VALUES
(3, 'Admin', '', 'ชาย', 'admin@mail.com', '1234', 984812229, '', '', '', '', 0, '1'),
(4, 'หมอกานดา', '', 'หญิง', 'doc@mail.com', '1234', 984812229, '', '', '', '', 0, '3'),
(10, 'รัตนภูมิ', 'สระสรวย', 'ชาย', 'test@mail.com', '1234', 615398294, '-', '-', 'O', '-', 615398294, '2'),
(12, 'หมอเกมส์', '', '', 'doc1@mail.com', '1234', 0, '', '', '', '', 0, '3'),
(13, 'หมอโซดา', '', '', 'doc2@mail.com', '1234', 0, '', '', '', '', 0, '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dentalitems`
--
ALTER TABLE `dentalitems`
  ADD PRIMARY KEY (`idDental`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`namelist`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dentalitems`
--
ALTER TABLE `dentalitems`
  MODIFY `idDental` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dentalitems`
--
ALTER TABLE `dentalitems`
  ADD CONSTRAINT `dentalitems_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
