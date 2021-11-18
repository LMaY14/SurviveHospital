-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2021 at 08:20 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookappointment`
--

CREATE TABLE `bookappointment` (
  `BookingID` int(8) NOT NULL,
  `BookingDate` date NOT NULL,
  `BookingTime` time NOT NULL,
  `DoctorID` int(8) NOT NULL,
  `BookingDetail` text DEFAULT NULL,
  `UserID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bookingroom`
--

CREATE TABLE `bookingroom` (
  `BookingRoomID` int(8) NOT NULL,
  `RoomID` int(8) NOT NULL,
  `BookingRoomCheckInDate` date NOT NULL,
  `BookingRoomCheckOutDate` date NOT NULL,
  `BookingRoomDetail` varchar(45) NOT NULL,
  `TreatmentID` int(8) NOT NULL,
  `PaymentID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `clinic&center`
--

CREATE TABLE `clinic&center` (
  `ClinicID` int(8) NOT NULL,
  `ClinicName` varchar(25) NOT NULL,
  `ClinicDetail` text NOT NULL,
  `ClinicOpenDay` varchar(25) NOT NULL,
  `ClinicTimeOpen` time NOT NULL,
  `ClinicTimeClose` time NOT NULL,
  `ClinicBuilding` varchar(25) NOT NULL,
  `ClinicFloor` int(2) NOT NULL,
  `ClinicTel` varchar(25) NOT NULL,
  `ClinicEmail` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` int(8) NOT NULL,
  `StaffID` int(8) NOT NULL,
  `DoctorGraduate` text NOT NULL,
  `DoctorDayWork` varchar(45) NOT NULL,
  `DoctorTimeStartWork` time NOT NULL,
  `DoctorTimeEndWork` time NOT NULL,
  `DoctorDetail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `InquiryID` int(8) NOT NULL,
  `InquiryDate` datetime NOT NULL,
  `UserID` int(8) NOT NULL,
  `InquiryQuestion` text NOT NULL,
  `InquiryAnswer` text DEFAULT NULL,
  `ClinicID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `managementroom`
--

CREATE TABLE `managementroom` (
  `BookingRoomID` int(8) NOT NULL,
  `StaffID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(8) NOT NULL,
  `PaymentDate` date NOT NULL,
  `PaymentTime` time NOT NULL,
  `PaymentStatus` varchar(25) NOT NULL,
  `PaymentPrice` int(10) NOT NULL,
  `UserID` int(8) NOT NULL,
  `PaymentType` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `RoomID` int(8) NOT NULL,
  `RoomBuilding` varchar(25) NOT NULL,
  `RoomFloor` int(2) NOT NULL,
  `RoomNumber` int(4) NOT NULL,
  `RoomType` varchar(25) NOT NULL,
  `RoomPrice` int(8) NOT NULL,
  `RoomFacility` text NOT NULL,
  `RoomTel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(8) NOT NULL,
  `StaffFName` varchar(25) NOT NULL,
  `StaffLName` varchar(25) NOT NULL,
  `StaffGender` varchar(6) NOT NULL,
  `StaffDOB` date NOT NULL,
  `StaffEmail` varchar(45) NOT NULL,
  `StaffTel` varchar(25) NOT NULL,
  `StaffAddress` text NOT NULL,
  `Clinic&center_ClinicID` int(8) NOT NULL,
  `StaffType` varchar(45) NOT NULL,
  `StaffUsername` varchar(25) NOT NULL,
  `StaffPassword` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `TreatmentID` int(8) NOT NULL,
  `TreatmentNote` text NOT NULL,
  `DoctorID` int(8) NOT NULL,
  `PaymentID` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(8) NOT NULL,
  `UserFName` varchar(25) NOT NULL,
  `UserLName` varchar(25) NOT NULL,
  `UserGender` varchar(6) NOT NULL,
  `UserDOB` date NOT NULL,
  `UserAge` int(3) NOT NULL,
  `UserCongenitalDisease` varchar(45) NOT NULL,
  `UserCountry` varchar(25) NOT NULL,
  `UserNationality` varchar(25) NOT NULL,
  `UserTel` varchar(25) NOT NULL,
  `UserEmail` varchar(45) NOT NULL,
  `UserAddress` text NOT NULL,
  `UserUsername` varchar(25) NOT NULL,
  `UserPassword` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookappointment`
--
ALTER TABLE `bookappointment`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `Doctor_DoctorID` (`DoctorID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `bookingroom`
--
ALTER TABLE `bookingroom`
  ADD PRIMARY KEY (`BookingRoomID`),
  ADD KEY `Room_RoomID` (`RoomID`),
  ADD KEY `Payment_PaymentID` (`PaymentID`),
  ADD KEY `TreatmentID` (`TreatmentID`);

--
-- Indexes for table `clinic&center`
--
ALTER TABLE `clinic&center`
  ADD PRIMARY KEY (`ClinicID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DoctorID`),
  ADD KEY `Staff_StaffID` (`StaffID`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`InquiryID`),
  ADD KEY `Clinic&center_ClinicID` (`ClinicID`),
  ADD KEY `User_UserID` (`UserID`);

--
-- Indexes for table `managementroom`
--
ALTER TABLE `managementroom`
  ADD KEY `Staff_StaffID` (`StaffID`),
  ADD KEY `bookingroom_has_staff_ibfk_1` (`BookingRoomID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `User_UserID` (`UserID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`RoomID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD KEY `Clinic&center_ClinicID` (`Clinic&center_ClinicID`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`TreatmentID`),
  ADD KEY `DoctorID` (`DoctorID`),
  ADD KEY `PaymentID` (`PaymentID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookappointment`
--
ALTER TABLE `bookappointment`
  MODIFY `BookingID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookingroom`
--
ALTER TABLE `bookingroom`
  MODIFY `BookingRoomID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clinic&center`
--
ALTER TABLE `clinic&center`
  MODIFY `ClinicID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DoctorID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `InquiryID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `RoomID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `StaffID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `TreatmentID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(8) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookappointment`
--
ALTER TABLE `bookappointment`
  ADD CONSTRAINT `bookappointment_ibfk_3` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`),
  ADD CONSTRAINT `bookappointment_ibfk_4` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `bookingroom`
--
ALTER TABLE `bookingroom`
  ADD CONSTRAINT `bookingroom_ibfk_1` FOREIGN KEY (`RoomID`) REFERENCES `room` (`RoomID`),
  ADD CONSTRAINT `bookingroom_ibfk_2` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`PaymentID`),
  ADD CONSTRAINT `bookingroom_ibfk_3` FOREIGN KEY (`TreatmentID`) REFERENCES `treatment` (`TreatmentID`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `doctor_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`);

--
-- Constraints for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD CONSTRAINT `inquiry_ibfk_1` FOREIGN KEY (`ClinicID`) REFERENCES `clinic&center` (`ClinicID`),
  ADD CONSTRAINT `inquiry_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `managementroom`
--
ALTER TABLE `managementroom`
  ADD CONSTRAINT `managementroom_ibfk_1` FOREIGN KEY (`BookingRoomID`) REFERENCES `bookingroom` (`BookingRoomID`),
  ADD CONSTRAINT `managementroom_ibfk_2` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`Clinic&center_ClinicID`) REFERENCES `clinic&center` (`ClinicID`);

--
-- Constraints for table `treatment`
--
ALTER TABLE `treatment`
  ADD CONSTRAINT `treatment_ibfk_1` FOREIGN KEY (`DoctorID`) REFERENCES `doctor` (`DoctorID`),
  ADD CONSTRAINT `treatment_ibfk_2` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`PaymentID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
