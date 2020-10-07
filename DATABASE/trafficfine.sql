-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 10:58 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trafficfine`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladminlogin`
--

CREATE TABLE `tbladminlogin` (
  `AdminID` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladminlogin`
--

INSERT INTO `tbladminlogin` (`AdminID`, `Password`) VALUES
('1', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `tblfine`
--

CREATE TABLE `tblfine` (
  `License_Number` varchar(10) NOT NULL,
  `Challan_Number` int(11) NOT NULL,
  `Fine_Reason` varchar(25) NOT NULL,
  `Fine_Amount` int(11) NOT NULL,
  `Challan_Area` varchar(15) NOT NULL,
  `Challan_Date` date NOT NULL,
  `Case_Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfine`
--

INSERT INTO `tblfine` (`License_Number`, `Challan_Number`, `Fine_Reason`, `Fine_Amount`, `Challan_Area`, `Challan_Date`, `Case_Status`) VALUES
('BT123', 2, 'Without License/Paper', 500, 'powai', '2017-03-31', 'Pending'),
('dfsdsfds', 4, 'Drink and drive', 876, 'andheri', '2017-03-15', 'Pending'),
('dfsdsfds', 6, 'Drink and drive', 876, 'andheri', '2017-03-15', 'Pending'),
('dfsdsfds', 12, 'Drink and drive', 876, 'andheri', '2017-03-15', 'Pending'),
('dfsdsf', 15, 'Without License/Paper', 505, 'malad', '2017-03-17', 'Pending'),
('BT123', 16, 'btr', 850, 'bandra', '2017-03-07', 'Pending'),
('Tb123', 17, 'btr', 500, 'powai', '2017-03-21', 'Solved'),
('Tb123', 18, 'Drink and drive', 500, 'powai', '2017-03-01', 'Pending'),
('BT678', 19, 'wlp', 700, 'powai', '2017-04-03', 'Solved'),
('MH01200801', 20, 'Without License/Paper', 500, 'andheri', '2017-04-08', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbllicense`
--

CREATE TABLE `tbllicense` (
  `Sr_No` int(11) NOT NULL,
  `License_Number` varchar(10) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Mobile` varchar(11) NOT NULL,
  `Address` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllicense`
--

INSERT INTO `tbllicense` (`Sr_No`, `License_Number`, `Name`, `Mobile`, `Address`) VALUES
(44, '123123123', 'asdfasf', '1234567890', 'ASDFASDF'),
(34, '6754', 'abc', '2147483647', '   santacruz'),
(30, 'BT123', 'Dimple ', '312586957', ' andheri'),
(41, 'BT678', 'Parry', '2147483647', '   marol'),
(40, 'BT6784', 'Parry', '90909090909', '   marol'),
(39, 'BT67845', 'Parry', '2147483647', ' marol'),
(28, 'dfsdsf', 'ds', '2147483647', '    p'),
(29, 'dfsdsfds', 'Parry', '888', '  fsd'),
(42, 'MH01200801', 'Sabir Shaikh', '7666286719', ' andheri'),
(43, 'MH013000', 'chintan', '7666286718', ' andheri'),
(38, 'pq123', 'chetan', '2147483647', '  midc'),
(36, 'Tb123', 'Dimple', '2147483647', '  andheri');

-- --------------------------------------------------------

--
-- Table structure for table `tbllogin`
--

CREATE TABLE `tbllogin` (
  `UserID` int(11) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbllogin`
--

INSERT INTO `tbllogin` (`UserID`, `password`) VALUES
(1, 123);

-- --------------------------------------------------------

--
-- Table structure for table `tbltemperary`
--

CREATE TABLE `tbltemperary` (
  `Sr_No` int(11) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Mobile` int(11) NOT NULL,
  `Address` varchar(120) NOT NULL,
  `Vehicle_Number` varchar(12) NOT NULL,
  `Challan_Date` date NOT NULL,
  `Fine_Reason` text NOT NULL,
  `Fine_Amount` int(11) NOT NULL DEFAULT 0,
  `Case_Status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltemperary`
--

INSERT INTO `tbltemperary` (`Sr_No`, `Name`, `Mobile`, `Address`, `Vehicle_Number`, `Challan_Date`, `Fine_Reason`, `Fine_Amount`, `Case_Status`) VALUES
(5, 'dfsd', 2147483647, '         dfs', 'dfs', '0000-00-00', '', 512, 'Pending'),
(12, 'Dimple', 2147483647, ' ', 'Mh34', '0000-00-00', '', 500, 'Pending'),
(14, 'Dimple', 2147483647, '  andheri', 'BT1211', '2017-03-02', 'Without license', 1000, 'Solved'),
(15, 'Dimple', 2147483647, '   malad', 'BT1211', '2017-03-15', 'Without license', 500, 'Pending'),
(17, 'Dimple', 2147483647, ' Milind Nagar\r\nRajiv Gandhi Nagar', 'BT1211', '2017-03-15', 'Without license', 400, 'Pending'),
(23, 'dimple', 2147483647, 'bandra', 'mh02yh7645', '2017-03-07', 'without license', 200, 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladminlogin`
--
ALTER TABLE `tbladminlogin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `tblfine`
--
ALTER TABLE `tblfine`
  ADD PRIMARY KEY (`Challan_Number`),
  ADD KEY `License_Number` (`License_Number`);

--
-- Indexes for table `tbllicense`
--
ALTER TABLE `tbllicense`
  ADD PRIMARY KEY (`License_Number`),
  ADD UNIQUE KEY `tblLicense_AutoIncrement` (`Sr_No`);

--
-- Indexes for table `tbltemperary`
--
ALTER TABLE `tbltemperary`
  ADD PRIMARY KEY (`Sr_No`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblfine`
--
ALTER TABLE `tblfine`
  MODIFY `Challan_Number` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbllicense`
--
ALTER TABLE `tbllicense`
  MODIFY `Sr_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbltemperary`
--
ALTER TABLE `tbltemperary`
  MODIFY `Sr_No` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblfine`
--
ALTER TABLE `tblfine`
  ADD CONSTRAINT `tblfine_Foreignkey` FOREIGN KEY (`License_Number`) REFERENCES `tbllicense` (`License_Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
