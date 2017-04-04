-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2017 at 09:29 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lids`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alerts`
--

CREATE TABLE `tb_alerts` (
  `timestampMs` bigint(20) NOT NULL,
  `Violation` varchar(200) NOT NULL,
  `Number` varchar(20) NOT NULL COMMENT 'Registation plate number',
  `Action` smallint(6) NOT NULL,
  `AlertPriority` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_alerts`
--

INSERT INTO `tb_alerts` (`timestampMs`, `Violation`, `Number`, `Action`, `AlertPriority`) VALUES
(1491126808181, '1', 'AP10CE2012', 2, 4),
(1491123155968, 'adkbfshfbsbf', 'GJ10CD1234', 1, 100);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pollutionquotient`
--

CREATE TABLE `tb_pollutionquotient` (
  `LicenseID` varchar(150) NOT NULL,
  `CurrentCF` int(11) NOT NULL,
  `Startdate` date NOT NULL,
  `EstimatedExpiry` date NOT NULL,
  `CFQuota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pollutionquotient`
--

INSERT INTO `tb_pollutionquotient` (`LicenseID`, `CurrentCF`, `Startdate`, `EstimatedExpiry`, `CFQuota`) VALUES
('1', 144, '2017-04-02', '2018-10-08', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_trafficcontrol`
--

CREATE TABLE `tb_trafficcontrol` (
  `SignalID` int(11) NOT NULL,
  `SignalLocation` varchar(50) NOT NULL,
  `SignalStatus` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_trafficcontrol`
--

INSERT INTO `tb_trafficcontrol` (`SignalID`, `SignalLocation`, `SignalStatus`) VALUES
(2017, 'MGRoadCrossRoad', 1),
(2018, 'MGRoad Second Cross', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_userinfo`
--

CREATE TABLE `tb_userinfo` (
  `UUID` varchar(150) NOT NULL,
  `UserName` varchar(500) NOT NULL,
  `password` varchar(50) NOT NULL,
  `LicenseNumber` varchar(20) NOT NULL,
  `VehicleID` varchar(150) NOT NULL,
  `OtherIDs` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_userinfo`
--

INSERT INTO `tb_userinfo` (`UUID`, `UserName`, `password`, `LicenseNumber`, `VehicleID`, `OtherIDs`) VALUES
('7474', 'Sohail Yasin Chamadia', 'gxhxhhx', '1234567899', '', ''),
('123566', 'Sohail Yasin Chamadia', 'qwertyuu', '1234567890', '0', ''),
('5289 2479 2788', 'Sohail Yasin Chamadia', 'abc', '1234567890', '111', ''),
('121315', 'sohail', 'abc', '48846512', '1554', ''),
('5289 2479 2788', 'Sohail Yasin Chamadia', 'www', '6266373737', '777', ''),
('5289 2479 2788', 'Sohail Yasin Chamadia', 'hihello', '1234567890', 'abcd', ''),
('5289 2479 2788', 'Sohail Yasin Chamadia', '1234567ghi', '1234512345', 'abcdefghi', ''),
('5289 2479 2788', 'Sohail Yasin Chamadia', 'qwertyuiop', '1234567890', 'qwerty', ''),
('5289 2479 2788', 'Sohail Yasin Chamadia', 'hiheeee', '1234567890', 'sghshsjjs', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_userreg`
--

CREATE TABLE `tb_userreg` (
  `UUID` varchar(150) NOT NULL,
  `VehicleID` int(10) NOT NULL,
  `LicenseNumber` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_usertrips`
--

CREATE TABLE `tb_usertrips` (
  `UUID` varchar(150) NOT NULL,
  `TripID` int(11) NOT NULL,
  `VehicleID` int(11) NOT NULL,
  `isTripLive` tinyint(1) NOT NULL DEFAULT '0',
  `Duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_usertrips`
--

INSERT INTO `tb_usertrips` (`UUID`, `TripID`, `VehicleID`, `isTripLive`, `Duration`) VALUES
('107', 1, 101, 1, 100),
('107', 2, 101, 1, 0),
('107', 3, 101, 1, 0),
('107', 4, 101, 1, 0),
('107', 5, 101, 1, 0),
('107', 6, 101, 1, 0),
('107', 7, 101, 1, 0),
('107', 8, 101, 1, 0),
('109', 11, 104, 0, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_usertrips_loc`
--

CREATE TABLE `tb_usertrips_loc` (
  `TripID` int(20) NOT NULL,
  `latitude7E` float NOT NULL,
  `longitude7E` float NOT NULL,
  `timestampMs` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_usertrips_loc`
--

INSERT INTO `tb_usertrips_loc` (`TripID`, `latitude7E`, `longitude7E`, `timestampMs`) VALUES
(11, 16.4414, 80.6215, 1491128816),
(11, 16.4414, 80.6215, 1491128832),
(11, 16.4415, 80.6212, 1491128832),
(11, 16.4425, 80.6212, 1491128832),
(11, 16.4427, 80.6218, 1491128832),
(11, 16.443, 80.6225, 1491128832),
(11, 16.443, 80.6218, 1491128832),
(11, 16.4429, 80.6218, 1491128832),
(11, 16.4427, 80.6221, 1491128832),
(11, 16.4423, 80.6224, 1491128832),
(11, 16.4423, 80.6224, 1491128832),
(11, 16.4423, 80.6224, 1491128832),
(11, 16.4418, 80.6225, 1491128832),
(11, 16.4414, 80.6218, 1491128832);

-- --------------------------------------------------------

--
-- Table structure for table `tb_vehicle`
--

CREATE TABLE `tb_vehicle` (
  `VehicleID` int(11) NOT NULL,
  `VehicleInfo` varchar(500) NOT NULL,
  `LastTripID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_vehiclecommand`
--

CREATE TABLE `tb_vehiclecommand` (
  `VehicleID` varchar(150) NOT NULL,
  `LicenseID` varchar(20) NOT NULL,
  `Immobilized` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_vehiclecommand`
--

INSERT INTO `tb_vehiclecommand` (`VehicleID`, `LicenseID`, `Immobilized`) VALUES
('', '', 0),
('111', '1234567890', 1),
('777', '6266373737', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_trafficcontrol`
--
ALTER TABLE `tb_trafficcontrol`
  ADD PRIMARY KEY (`SignalID`);

--
-- Indexes for table `tb_userinfo`
--
ALTER TABLE `tb_userinfo`
  ADD PRIMARY KEY (`VehicleID`);

--
-- Indexes for table `tb_usertrips`
--
ALTER TABLE `tb_usertrips`
  ADD PRIMARY KEY (`TripID`);

--
-- Indexes for table `tb_vehiclecommand`
--
ALTER TABLE `tb_vehiclecommand`
  ADD PRIMARY KEY (`VehicleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_usertrips`
--
ALTER TABLE `tb_usertrips`
  MODIFY `TripID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
