-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2019 at 03:04 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jamal_Ahmed_carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `Booking`
--

CREATE TABLE `Booking` (
  `bookingID` int(11) NOT NULL,
  `fk_customerID` int(11) DEFAULT NULL,
  `fk_officeID` int(11) DEFAULT NULL,
  `fk_vehicleID` int(11) DEFAULT NULL,
  `pickUpDate` date DEFAULT NULL,
  `returnDate` date DEFAULT NULL,
  `fk_paymentID` int(11) DEFAULT NULL,
  `fk_bookingStatusID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Booking`
--

INSERT INTO `Booking` (`bookingID`, `fk_customerID`, `fk_officeID`, `fk_vehicleID`, `pickUpDate`, `returnDate`, `fk_paymentID`, `fk_bookingStatusID`) VALUES
(1, 1, 1, 2, '2000-12-04', '2000-12-06', 2, 1),
(2, 1, 1, 2, '2000-12-05', '2000-12-06', 3, 1),
(3, 1, 1, 2, '2000-11-07', '2000-12-01', 4, 1),
(4, 2, 1, 2, '2000-11-09', '2000-11-12', 5, 1),
(5, 2, 1, 2, '2002-11-09', '2002-11-12', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookStatus`
--

CREATE TABLE `bookStatus` (
  `bookingStatusID` int(11) NOT NULL,
  `statusDescription` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookStatus`
--

INSERT INTO `bookStatus` (`bookingStatusID`, `statusDescription`) VALUES
(0, 'notavailable'),
(1, 'available'),
(3, 'available'),
(33, 'available');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `Firstname` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `contactNumber` int(11) DEFAULT NULL,
  `drivingLicenseNumber` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `Firstname`, `LastName`, `Address`, `city`, `postcode`, `contactNumber`, `drivingLicenseNumber`) VALUES
(1, 'Jamal', 'Ahmed', 'ottekeinger', 'vienna', '1020', 20, 3443),
(2, 'Metta', 'Ares', 'ottekeinger', 'vienna', '1020', 21, 3444),
(3, 'Metias', 'Ares', 'ottekeinger', 'vienna', '1020', 22, 3445),
(4, 'Metias', 'Ares', 'ottekeinger', 'vienna', '1020', 23, 3446),
(5, 'Melas', 'Ares', 'ottekeinger', 'vienna', '1020', 24, 3447);

-- --------------------------------------------------------

--
-- Table structure for table `depot`
--

CREATE TABLE `depot` (
  `depotID` int(11) NOT NULL,
  `depotName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depot`
--

INSERT INTO `depot` (`depotID`, `depotName`) VALUES
(90, 'prater'),
(91, 'prater'),
(92, 'prater'),
(93, 'prater'),
(94, 'prater'),
(95, 'prater');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoiceID` int(11) NOT NULL,
  `invoiceDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoiceID`, `invoiceDate`) VALUES
(1, '2000-12-12'),
(2, '2000-12-13'),
(3, '2000-12-14'),
(4, '2000-12-15'),
(5, '2000-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE `manufacturer` (
  `manufacturerID` int(11) NOT NULL,
  `manufacturerName` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturerID`, `manufacturerName`) VALUES
(1, 'mercedes '),
(2, 'Audi'),
(3, 'Renault'),
(4, 'Ford'),
(5, 'Hyundai');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `modelID` int(11) NOT NULL,
  `fk_manufacturerID` int(11) DEFAULT NULL,
  `madelName` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`modelID`, `fk_manufacturerID`, `madelName`) VALUES
(1, 1, 'clks500'),
(2, 2, 'A8'),
(3, 3, 'KOngoo'),
(4, 4, 'Adge'),
(5, 5, 'i30');

-- --------------------------------------------------------

--
-- Table structure for table `office`
--

CREATE TABLE `office` (
  `officeID` int(11) NOT NULL,
  `officeName` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `postcode` int(20) NOT NULL,
  `telnum` int(20) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `office`
--

INSERT INTO `office` (`officeID`, `officeName`, `address`, `city`, `postcode`, `telnum`, `email`) VALUES
(1, 'prateralle', 'kichenstra', 'vienna', 2020, 676060060, 'jamlyaho@malus');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `fk_invoice` int(11) DEFAULT NULL,
  `paymentdate` date DEFAULT NULL,
  `paymentAmount` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`paymentID`, `fk_invoice`, `paymentdate`, `paymentAmount`) VALUES
(1, 1, '2001-12-09', '30'),
(2, 2, '2001-12-11', '30'),
(3, 3, '2001-12-13', '30'),
(4, 3, '2001-12-14', '30'),
(5, 3, '2001-12-20', '40');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicleID` int(11) NOT NULL,
  `fk_modelID` int(11) DEFAULT NULL,
  `fk_depotID` int(11) DEFAULT NULL,
  `dailyRate` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicleID`, `fk_modelID`, `fk_depotID`, `dailyRate`) VALUES
(1, 1, 90, '30'),
(2, 1, 91, '30'),
(3, 1, 91, '30'),
(4, 1, 94, '30'),
(5, 1, 95, '40');

-- --------------------------------------------------------

--
-- Table structure for table `vehicleAvailability`
--

CREATE TABLE `vehicleAvailability` (
  `availabilityID` int(11) NOT NULL,
  `fk_vehicleID` int(11) DEFAULT NULL,
  `availabilityDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicleAvailability`
--

INSERT INTO `vehicleAvailability` (`availabilityID`, `fk_vehicleID`, `availabilityDate`) VALUES
(1, 2, '2000-12-04'),
(2, 3, '2000-12-04'),
(3, 4, '2000-12-04'),
(4, 5, '2000-11-20'),
(5, 5, '2000-10-22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Booking`
--
ALTER TABLE `Booking`
  ADD PRIMARY KEY (`bookingID`),
  ADD KEY `fk_customerID` (`fk_customerID`) USING BTREE,
  ADD KEY `fk_bookingStatusID` (`fk_bookingStatusID`),
  ADD KEY `fk_officeID` (`fk_officeID`),
  ADD KEY `fk_paymentID` (`fk_paymentID`),
  ADD KEY `fk_vehicleID` (`fk_vehicleID`);

--
-- Indexes for table `bookStatus`
--
ALTER TABLE `bookStatus`
  ADD PRIMARY KEY (`bookingStatusID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `depot`
--
ALTER TABLE `depot`
  ADD PRIMARY KEY (`depotID`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoiceID`);

--
-- Indexes for table `manufacturer`
--
ALTER TABLE `manufacturer`
  ADD PRIMARY KEY (`manufacturerID`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`modelID`),
  ADD KEY `fk_manufacturerID` (`fk_manufacturerID`);

--
-- Indexes for table `office`
--
ALTER TABLE `office`
  ADD PRIMARY KEY (`officeID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `fk_invoice` (`fk_invoice`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicleID`),
  ADD KEY `fk_modelID` (`fk_modelID`),
  ADD KEY `fk_depotID` (`fk_depotID`);

--
-- Indexes for table `vehicleAvailability`
--
ALTER TABLE `vehicleAvailability`
  ADD PRIMARY KEY (`availabilityID`),
  ADD KEY `fk_vehicleID` (`fk_vehicleID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `office`
--
ALTER TABLE `office`
  MODIFY `officeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Booking`
--
ALTER TABLE `Booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`fk_customerID`) REFERENCES `customer` (`customerID`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`fk_officeID`) REFERENCES `office` (`officeID`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`fk_bookingStatusID`) REFERENCES `bookStatus` (`bookingStatusID`),
  ADD CONSTRAINT `booking_ibfk_4` FOREIGN KEY (`fk_officeID`) REFERENCES `office` (`officeID`),
  ADD CONSTRAINT `booking_ibfk_5` FOREIGN KEY (`fk_paymentID`) REFERENCES `payment` (`paymentID`),
  ADD CONSTRAINT `booking_ibfk_6` FOREIGN KEY (`fk_vehicleID`) REFERENCES `vehicle` (`vehicleID`);

--
-- Constraints for table `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`fk_manufacturerID`) REFERENCES `manufacturer` (`manufacturerID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`fk_invoice`) REFERENCES `invoice` (`invoiceID`);

--
-- Constraints for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`fk_depotID`) REFERENCES `depot` (`depotID`),
  ADD CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`fk_modelID`) REFERENCES `model` (`modelID`),
  ADD CONSTRAINT `vehicle_ibfk_3` FOREIGN KEY (`fk_depotID`) REFERENCES `depot` (`depotID`);

--
-- Constraints for table `vehicleAvailability`
--
ALTER TABLE `vehicleAvailability`
  ADD CONSTRAINT `vehicleavailability_ibfk_1` FOREIGN KEY (`fk_vehicleID`) REFERENCES `vehicle` (`vehicleID`),
  ADD CONSTRAINT `vehicleavailability_ibfk_2` FOREIGN KEY (`fk_vehicleID`) REFERENCES `vehicle` (`vehicleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
