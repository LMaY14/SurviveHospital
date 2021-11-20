-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2021 at 08:49 AM
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

--
-- Dumping data for table `bookappointment`
--

INSERT INTO `bookappointment` (`BookingID`, `BookingDate`, `BookingTime`, `DoctorID`, `BookingDetail`, `UserID`) VALUES
(3101, '2020-02-08', '13:00:00', 6001, 'pre-surgery checkup', 1001),
(3102, '2020-02-09', '11:00:00', 6002, 'Radiation therapy', 1002),
(3103, '2020-03-10', '10:00:00', 6003, 'Lung checkup', 1003),
(3104, '2020-03-18', '15:00:00', 6010, 'physical exam', 1004),
(3105, '2020-03-20', '13:30:00', 6005, 'Ambulatory(24 hour) blood pressure monitoring checkup', 1005),
(3106, '2020-04-04', '10:00:00', 6006, 'Underlying disease check', 1006),
(3107, '2020-04-30', '11:00:00', 6010, 'physical exam', 1007),
(3108, '2020-06-07', '10:00:00', 6001, 'Lung checkup', 1002),
(3109, '2020-07-11', '15:00:00', 6001, 'pre-surgery checkup', 1008),
(3110, '2020-08-04', '10:30:00', 6011, 'X-ray', 1010),
(3111, '2020-09-13', '10:00:00', 6001, 'physical exam', 1009),
(3112, '2020-10-17', '11:00:00', 6010, 'physical exam', 1012),
(3113, '2020-11-16', '14:00:00', 6001, 'pre-surgery checkup', 1013),
(3114, '2020-11-18', '15:00:00', 6010, 'physical exam', 1014),
(3115, '2020-12-17', '10:30:00', 6011, 'X-ray', 1015),
(3116, '2020-12-23', '13:00:00', 6009, 'antenatal care', 1011),
(3117, '2021-01-12', '10:00:00', 6001, 'physical exam', 1001),
(3118, '2021-01-19', '10:00:00', 6003, 'Lung checkup', 1002),
(3119, '2021-02-03', '10:00:00', 6006, 'physical exam', 1006),
(3120, '2021-03-10', '13:30:00', 6005, 'Ambulatory(24 hour) blood pressure monitoring checkup', 1008),
(3121, '2021-04-22', '13:00:00', 6009, 'physical exam', 1011),
(3122, '2021-05-19', '10:30:00', 6011, 'X-ray', 1004),
(3123, '2021-05-20', '10:00:00', 6011, 'physical exam', 1015),
(3124, '2021-08-11', '15:00:00', 6004, 'physical exam', 1006),
(3125, '2021-08-14', '11:30:00', 6005, 'Ambulatory(24 hour) blood pressure monitoring checkup', 1010),
(3126, '2021-09-17', '13:00:00', 6005, 'Ambulatory(24 hour) blood pressure monitoring checkup', 1001),
(3127, '2021-10-01', '11:00:00', 6001, 'X-ray', 1005),
(3128, '2021-10-04', '10:00:00', 6003, 'Underlying disease check', 1003),
(3129, '2021-10-05', '14:30:00', 6009, 'physical exam', 1011),
(3130, '2021-10-05', '13:30:00', 6005, 'Ambulatory(24 hour) blood pressure monitoring checkup', 1012),
(3131, '2021-10-05', '13:00:00', 6001, 'pre-surgery checkup', 1013),
(3132, '2021-10-09', '11:00:00', 6008, 'Pityriasis rosea checkup', 1007),
(3133, '2021-10-20', '10:00:00', 6009, 'antenatal care', 1009),
(3134, '2021-10-23', '15:00:00', 6011, 'Underlying disease check', 1015),
(3135, '2021-10-28', '13:30:00', 6010, 'physical exam', 1004),
(3136, '2021-11-08', '13:00:00', 6009, 'physical exam', 1012),
(3137, '2021-11-09', '11:00:00', 6011, 'pre-surgery checkup', 1004),
(3138, '2021-11-10', '10:00:00', 6002, 'Radiation therapy', 1002),
(3139, '2021-11-16', '15:00:00', 6007, 'physical exam', 1005),
(3140, '2021-11-26', '13:30:00', 6002, 'Radiation therapy', 1002);

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

--
-- Dumping data for table `bookingroom`
--

INSERT INTO `bookingroom` (`BookingRoomID`, `RoomID`, `BookingRoomCheckInDate`, `BookingRoomCheckOutDate`, `BookingRoomDetail`, `TreatmentID`, `PaymentID`) VALUES
(6401, 9001, '2020-02-06', '2020-02-10', '-', 8002, 78704),
(6402, 9004, '2020-02-06', '2020-02-16', '-', 8027, 78701),
(6403, 9010, '2020-02-07', '2020-02-08', '-', 8016, 78715),
(6404, 9006, '2020-02-09', '2020-02-11', '-', 8015, 78702),
(6405, 9008, '2020-02-09', '2020-02-16', '-', 8016, 78708),
(6406, 9002, '2020-02-10', '2020-02-11', '-', 8026, 78712),
(6407, 9004, '2020-02-12', '2020-02-13', '-', 8002, 78707),
(6408, 9003, '2020-02-12', '2020-02-16', '-', 8008, 78703),
(6409, 9007, '2020-02-13', '2020-02-15', '-', 8030, 78705),
(6410, 9002, '2020-02-13', '2020-02-16', '-', 8011, 78706),
(6411, 9001, '2020-02-17', '2020-02-21', 'Need Extra Caring', 8024, 78711),
(6412, 9009, '2020-02-17', '2020-02-19', '-', 8022, 78714),
(6413, 9003, '2020-02-18', '2020-02-19', '-', 8001, 78719),
(6414, 9005, '2020-02-18', '2020-02-20', '-', 8007, 78730),
(6415, 9006, '2020-02-18', '2020-02-21', 'Need Extra Caring', 8023, 78722),
(6416, 9008, '2020-02-19', '2020-02-20', '-', 8017, 78709),
(6417, 9001, '2020-02-19', '2020-02-23', 'Need Extra Caring', 8014, 78727),
(6418, 9010, '2020-02-20', '2020-02-22', '-', 8007, 78725),
(6419, 9009, '2020-02-21', '2020-02-25', '-', 8021, 78720),
(6420, 9007, '2020-02-22', '2020-02-24', '-', 8003, 78728),
(6421, 9005, '2020-02-22', '2020-02-28', '-', 8022, 78716),
(6422, 9002, '2020-02-23', '2020-02-26', '-', 8013, 78710),
(6423, 9006, '2020-02-24', '2020-02-25', '-', 8010, 78729),
(6424, 9004, '2020-02-24', '0000-00-00', '-', 8002, 78713),
(6425, 9007, '2020-03-01', '2020-03-05', '-', 8029, 78721),
(6426, 9008, '2020-03-02', '2020-03-07', '-', 8028, 78724),
(6427, 9010, '2020-03-03', '2020-03-04', '-', 8018, 78726),
(6428, 9009, '2020-03-03', '2020-03-06', 'Need Extra Caring', 8008, 78717),
(6429, 9005, '2020-03-04', '2020-03-08', '-', 8009, 78723),
(6430, 9003, '2020-03-04', '2020-03-10', '-', 8026, 78718);

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

--
-- Dumping data for table `clinic&center`
--

INSERT INTO `clinic&center` (`ClinicID`, `ClinicName`, `ClinicDetail`, `ClinicOpenDay`, `ClinicTimeOpen`, `ClinicTimeClose`, `ClinicBuilding`, `ClinicFloor`, `ClinicTel`, `ClinicEmail`) VALUES
(4001, 'OPD', 'Outpatient Department', 'Mon-Sun', '00:00:08', '00:00:20', 'Alpha', 1, '02-782-7001', 'Outpatient@survivehospital.com'),
(4002, 'IPD', 'Inpatient Department', 'Mon-Sun', '00:00:08', '00:00:22', 'Delta', 1, '02-782-7002', 'Inpatient@survivehospital.com'),
(4003, 'PT', 'Physical Therapy', 'Mon-Sat', '00:00:10', '00:00:18', 'Bravo', 1, '02-782-7003', ' PhysicalTherapy@survivehospital.com'),
(4004, 'ER', 'Emergency Room', 'Mon-Sun', '00:00:00', '00:00:23', 'Charlie', 1, '02-782-7004', ' Emergency@survivehospital.com'),
(4005, 'OR', 'Operating Room', 'Mon-Sun', '00:00:00', '00:00:23', 'Charlie', 1, '02-782-7005', 'Operating@survivehospital.com'),
(4006, 'LR', 'Labor Room', 'Mon-Sun', '00:00:00', '00:00:23', 'Charlie', 1, '02-782-7006', 'Labor@survivehospital.com'),
(4007, 'MED', 'Medicine', 'Mon-Sun', '00:00:08', '00:00:20', 'Bravo', 2, '02-782-7007', 'Medicine@survivehospital.com'),
(4008, 'PED', 'Pediatric', 'Mon-Wed-Fri-Sat', '00:00:10', '00:00:18', 'Bravo', 2, '02-782-7008', 'Pediatric@survivehospital.com'),
(4009, 'SUR', 'Surgical', 'Mon-Sun', '00:00:00', '00:00:23', 'Charlie', 2, '02-782-7009', 'Surgical@survivehospital.com'),
(4010, 'ORTHO', 'Orthopedic', 'Tue-Thu-Fri', '00:00:08', '00:00:20', 'Bravo', 2, '02-782-7010', 'Orthopedic@survivehospital.com'),
(4011, 'OB-GYN', 'Obstetric Gynecology', 'Mon-Sun', '00:00:10', '00:00:18', 'Charlie', 2, '02-782-7011', 'Obstetric@survivehospital.com'),
(4012, 'LAB', 'Laboratory', 'Mon-Sat', '00:00:08', '00:00:18', 'Alpha', 2, '02-782-7012', 'Laboratory@survivehospital.com');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DoctorID` int(8) NOT NULL,
  `DoctorFName` varchar(25) NOT NULL,
  `DoctorLName` varchar(25) NOT NULL,
  `StaffID` int(8) NOT NULL,
  `DoctorGraduate` text NOT NULL,
  `DoctorDayWork` varchar(45) NOT NULL,
  `DoctorTimeStartWork` time NOT NULL,
  `DoctorTimeEndWork` time NOT NULL,
  `DoctorDetail` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DoctorID`, `DoctorFName`, `DoctorLName`, `StaffID`, `DoctorGraduate`, `DoctorDayWork`, `DoctorTimeStartWork`, `DoctorTimeEndWork`, `DoctorDetail`) VALUES
(6001, 'Jinda', 'Manee', 5001, 'Chula U.', 'Mon-Wed-Fri', '09:00:00', '16:00:00', 'Cardiologist'),
(6002, 'Sakchai', 'Thawon', 5003, 'Harvard U.', 'Mon-Tue', '09:00:00', '15:00:00', 'Oncologist'),
(6003, 'Akira', 'Taiwin', 5006, 'Chula U.', 'Tue-Wed-Sun', '10:00:00', '19:00:00', 'Pulmonologist'),
(6004, 'Rachan', 'Homfung', 5008, 'Mahidol U.', 'Thu-Sat', '20:00:00', '07:30:00', 'Infectious disease specialist'),
(6005, 'Siwaporn', 'Duangdee', 5010, 'Thamasart U.', 'Mon-Tue-Sat-Sun', '10:00:00', '15:00:00', 'Certified Hypertension Specialist (CHS)'),
(6006, 'Kwanjai', 'Nakkid', 5011, 'University of Oxford ', 'Mon-Wed-Fri', '10:00:00', '00:00:00', 'Pediatrician'),
(6007, 'Fakfah', 'Suwannakit', 5012, 'Johns Hopkins U.', 'Tue-Wed-Sat', '13:00:00', '23:00:00', 'Geriatric medicine'),
(6008, 'Guntaphong', 'Santiwadee', 5013, 'Stanford U.', 'Thu-Fri-Sun', '10:00:00', '22:00:00', 'Dermatologists'),
(6009, 'Keawalin', 'Wipatpun', 5017, 'University of Cambridge', 'Wed-Sat', '08:00:00', '20:00:00', 'Obstetrician/gynecologists'),
(6010, 'Karnjana', 'Worakitkorn', 5019, 'Harvard U.', 'Tue-Thu-Sat', '10:00:00', '23:00:00', 'Otolaryngologists'),
(6011, 'Tophong', 'Tipnaree', 5020, 'Thamasart U. ', 'Mon-Fri-Sun', '19:00:00', '13:00:00', 'Rheumatologists ');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `InquiryID` int(8) NOT NULL,
  `InquiryDate` date NOT NULL,
  `UserID` int(8) NOT NULL,
  `InquiryQuestion` text NOT NULL,
  `InquiryAnswer` text DEFAULT NULL,
  `ClinicID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`InquiryID`, `InquiryDate`, `UserID`, `InquiryQuestion`, `InquiryAnswer`, `ClinicID`) VALUES
(4201, '2020-10-05', 1002, 'I had a bad headache after I did treatment, what should I do?', 'You should come to the hospital and let the doctor check.', 4001),
(4202, '2021-10-05', 1001, 'Will vitamin D save my life? Should I really be taking four times the recommended daily dose?', 'If you are under 50 and you consume the recommended 200 IUs and get 10 to 15 minutes of sun exposure—without sunscreen—a day, a 400 IU supplement should do you fine.', 4002),
(4203, '2021-10-06', 1007, 'What should I avoid after doing a surgery?', 'You should not do any kind of exercise and do not forget to take the medicines.', 4002),
(4204, '2021-10-06', 1010, 'When do I schedule my first appointment after surgery?', 'First post-operative appointments are scheduled approximately 2-3 weeks after surgery.', 4001),
(4205, '2021-10-07', 1005, 'When can I drive?', 'You may drive 2-3 weeks after the treatment.', 4002),
(4206, '2021-10-07', 1015, 'When do I start physical therapy / rehabilitation?', 'We will make arrangements for you to receive home physical therapy and nursing care.', 4002),
(4207, '2021-10-07', 1003, 'Are there restrictions as to the position I sleep in?', 'You may sleep on your back (supine) or on either side with a pillow between your legs. Avoid sleeping on your stomach .', 4002),
(4208, '2021-10-10', 1012, 'What are the chances that the disease will come back?', 'It’s depend on your daily activities.', 4002),
(4209, '2021-10-10', 1002, 'How often do I need to return for checkups?', 'You should come to check at our hospital at least once a week.', 4001),
(4210, '2021-10-11', 1001, 'When can I stop wearing the stockings?', 'Stockings are to be removed every evening before bed and re-applied in the morning. We recommend you wear the compression stockings for 2 weeks.', 4002),
(4211, '2021-10-12', 1013, 'Will I Need to Return For Follow-Up Appointments?', 'Once your procedure is complete, you may still need to return to your physician for checkups.', 4002),
(4212, '2021-10-14', 1004, 'Were There Any Complications?', 'If there were any complications, you should be able to trust your surgeon to inform you about them.', 4001),
(4213, '2021-10-15', 1001, 'Will There Be Side Effects?', 'It\'s normal to experience some side effects after the treatment. For instance, general anesthesia may make you feel sick when you wake up.', 4002),
(4214, '2021-10-15', 1008, 'What Do I Need to Know About Post-Op Care and Medications?', 'Your doctor should send you home or to a recovery center with detailed information on how to care for your wound.', 4002),
(4215, '2021-10-16', 1009, 'Will I Need Rehabilitation?', 'After treatment, your body may be weak. Before returning to business as usual, you might need to visit a physical therapist.', 4001),
(4216, '2021-10-17', 1010, 'Will I Need a Nurse or Any Special Equipment While I Recover?', 'Make sure you find out if you’re going to need any specialized equipment or nurses to aid you in your recovery.', 4001),
(4217, '2021-10-20', 1011, 'Whats The Timeline For My Recovery?', 'In almost all prcedures, your doctor will let you know how long it takes to heal from your symptom.', 4002),
(4218, '2021-10-21', 1012, 'What steps do I need to take during the first hour of the treatment?', 'Normally, your doctor will check on your symptom first then your doctor will tell  you later.', 4002),
(4219, '2021-10-22', 1014, 'How much does it take for the treatment?', 'It will be approximately 40,000 Baht.', 4002),
(4220, '2021-10-23', 1015, 'Why is this procedure being recommended?', 'It is one of the best procedure to heal your body.', 4002),
(4221, '2021-10-24', 1001, 'What is the success rate for this procedure?', 'It is over 95% success rate', 4002),
(4222, '2021-10-25', 1008, 'How do I avoid an infection?', 'Take the antibiotic pills as directed and do not discontinue them until finished.', 4002),
(4223, '2021-10-25', 1004, 'Do I need to clean the incision?', 'Once the surgical dressing is removed 2 weeks after surgery, the incision is to be cleansed with warm water and your usual bathing soap.', 4002),
(4224, '2021-11-05', 1001, 'How much discomfort can I expect?', 'Unfortunately most surgery is accompanied by some degree of discomfort. You will usually have a prescription for pain medication.', 4001),
(4225, '2021-11-08', 1009, 'Are there certain precautions I should take?', 'Do not disturb the treatment area today. Do NOT rinse vigorously or probe the area with any objects.', 4001),
(4226, '2021-11-09', 1014, 'What is a dry socket and how do I know if I have one?', 'Dry sockets usually occur three to five days after surgery. A dry socket occurs when a blood clot gets dislodged prematurely from the tooth socket or does not expand to fill the socket and the bone is left exposed.', 4002),
(4227, '2021-11-10', 1013, 'How long can I expect to be off work following my treatment?', 'The recovery period varies per patient.', 4002),
(4228, '2021-11-15', 1007, 'What about diet? Should I avoid certain foods or drinks?', 'You may eat any nourishing food that can be taken with comfort.', 4002),
(4229, '2021-11-25', 1006, 'Can I apply hot compresses to ease the pain or swelling?', 'You may apply warm compresses to the skin over the areas of swelling (hot water bottle, hot moist towels, and heating pad) for 20 minutes on and 20 minutes off to help soothe tender areas.', 4001),
(4230, '2021-12-05', 1011, 'How long will the healing process take?', 'It will take approximately 1-2 weeks', 4002);

-- --------------------------------------------------------

--
-- Table structure for table `managementroom`
--

CREATE TABLE `managementroom` (
  `BookingRoomID` int(8) NOT NULL,
  `StaffID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `managementroom`
--

INSERT INTO `managementroom` (`BookingRoomID`, `StaffID`) VALUES
(6401, 5002),
(6402, 5004),
(6403, 5014),
(6404, 5005),
(6405, 5005),
(6406, 5007),
(6407, 5016),
(6408, 5018),
(6409, 5005),
(6410, 5002),
(6411, 5016),
(6412, 5004),
(6413, 5009),
(6414, 5018),
(6415, 5016),
(6416, 5007),
(6417, 5009),
(6418, 5002),
(6419, 5014),
(6420, 5005),
(6421, 5014),
(6422, 5007),
(6423, 5018),
(6424, 5004),
(6425, 5016),
(6426, 5009),
(6427, 5014),
(6428, 5009),
(6429, 5004),
(6430, 5002);

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

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `PaymentDate`, `PaymentTime`, `PaymentStatus`, `PaymentPrice`, `UserID`, `PaymentType`) VALUES
(78701, '2020-02-08', '09:54:04', 'Paid', 70000, 1006, 'Credit Card'),
(78702, '2020-02-08', '10:05:06', 'Paid', 42000, 1009, 'Credit Card'),
(78703, '2020-02-08', '10:45:54', 'Pending', 86000, 1001, 'Credit Card'),
(78704, '2020-02-08', '12:45:35', 'Paid', 2000, 1004, 'Credit Card'),
(78705, '2020-02-09', '09:45:28', 'Paid', 3200, 1011, 'Cash'),
(78706, '2020-02-11', '10:02:27', 'Paid', 4200, 1013, 'Credit Card'),
(78707, '2020-02-12', '10:05:24', 'Pending', 1600, 1007, 'Credit Card'),
(78708, '2020-02-12', '16:35:24', 'Paid', 98000, 1003, 'Credit Card'),
(78709, '2020-02-12', '16:41:13', 'Paid', 16000, 1008, 'Credit Card'),
(78710, '2020-02-13', '09:55:16', 'Pending', 45000, 1006, 'Credit Card'),
(78711, '2020-02-13', '16:56:23', 'Paid', 64000, 1014, 'Credit Card'),
(78712, '2020-02-14', '10:03:41', 'Paid', 3600, 1002, 'Cash'),
(78713, '2020-02-14', '10:30:36', 'Paid', 9800, 1005, 'Cash'),
(78714, '2020-02-14', '18:57:58', 'Paid', 7400, 1014, 'Credit Card'),
(78715, '2020-02-16', '12:05:34', 'Paid', 1800, 1010, 'Credit Card'),
(78716, '2020-02-16', '19:52:03', 'Paid', 4200, 1004, 'Credit Card'),
(78717, '2020-02-16', '21:15:36', 'Paid', 7700, 1012, 'Credit Card'),
(78718, '2020-02-17', '15:57:41', 'Pending', 22000, 1015, 'Credit Card'),
(78719, '2020-02-18', '13:39:44', 'Paid', 14000, 1011, 'Credit Card'),
(78720, '2020-02-18', '16:28:55', 'Paid', 98600, 1005, 'Credit Card'),
(78721, '2020-02-19', '12:45:42', 'Paid', 15400, 1009, 'Credit Card'),
(78722, '2020-02-19', '14:42:36', 'Paid', 79100, 1013, 'Credit Card'),
(78723, '2020-02-20', '20:16:11', 'Paid', 42400, 1015, 'Cash'),
(78724, '2020-02-22', '10:08:13', 'Paid', 87200, 1007, 'Credit Card'),
(78725, '2020-02-22', '12:03:06', 'Paid', 56400, 1003, 'Credit Card'),
(78726, '2020-02-22', '12:34:39', 'Paid', 43500, 1001, 'Credit Card'),
(78727, '2020-02-23', '16:02:42', 'Paid', 62800, 1010, 'Cash'),
(78728, '2020-02-24', '10:03:54', 'Paid', 91000, 1008, 'Credit Card'),
(78729, '2020-02-24', '11:22:47', 'Paid', 5400, 1012, 'Credit Card'),
(78730, '2020-02-24', '18:36:37', 'Paid', 3000, 1002, 'Credit Card');

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

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`RoomID`, `RoomBuilding`, `RoomFloor`, `RoomNumber`, `RoomType`, `RoomPrice`, `RoomFacility`, `RoomTel`) VALUES
(9001, 'WardA', 3, 301, 'Single', 4000, 'sofa&microwave', '9301'),
(9002, 'WardA', 3, 302, 'Single', 4000, 'sofa&microwave', '9302'),
(9003, 'WardB', 4, 401, 'Single', 4000, 'sofa&microwave', '9401'),
(9004, 'WardB', 4, 402, 'Single', 4000, 'sofa&microwave', '9402'),
(9005, 'WardB', 3, 303, 'Deluxe', 4500, 'sofa & microwave & electrically adjustable bed', '9303'),
(9006, 'WardB', 3, 304, 'Deluxe', 4500, 'sofa & microwave & electrically adjustable bed', '9304'),
(9007, 'WardB', 4, 403, 'Deluxe', 4500, 'sofa & microwave & electrically adjustable bed', '9403'),
(9008, 'WardB', 4, 404, 'Deluxe', 4500, 'sofa & microwave & electrically adjustable bed', '9404'),
(9009, 'WardB', 3, 309, 'Two bedroom', 3000, 'refrigerator and shared bathroom', '9309'),
(9010, 'WardB', 5, 501, 'VIP', 9500, 'electrically adjustable bed -free minibar and living room', '9501');

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

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `StaffFName`, `StaffLName`, `StaffGender`, `StaffDOB`, `StaffEmail`, `StaffTel`, `StaffAddress`, `Clinic&center_ClinicID`, `StaffType`, `StaffUsername`, `StaffPassword`) VALUES
(5001, 'Jinda', 'Manee', 'Female', '1989-12-20', 'JindaMa@survivehospital.com', '067-892-2412', '45/231 A Building Cozy apartment Tawan street 10022', 4004, 'Doctor', 'Jinda5001', 'JinManee1912'),
(5002, 'Sunisa', 'Yindee', 'Female', '1992-06-13', 'SunisaYi@survivehospital.com', '086-443-9879', '89/24 D Building Wila condo Jantra road 10329', 4005, 'Nurse', 'Sunisa5002', 'SuYindee00202'),
(5003, 'Sakchai', 'Thawon', 'Male', '1977-02-14', 'SakchaiTha@survivehospital.com', '091-945-8998', '32/349 Soi 7 Dendee village Phahol road 10222', 4002, 'Doctor', 'Sakchai5003', 'SakThawon34914'),
(5004, 'Denduang', 'Kittikarnkorn', 'Male', '1987-03-22', 'DenduangKit@survivehospital.com', '082-833-7911', '111 Sukdee park village Vibhavadi street 10220', 4003, 'Male nurse', 'Denduang5004', 'DenKittikarnkorn987'),
(5005, 'Piriya', 'Santiwadee', 'Female', '1995-09-24', 'PiriyaSan@survivehospital.com', '097-382-2144', '57/501 Sukdee condo Bangjan street 13452', 4005, 'Assistant', 'Piriya5005', 'PiSantiwadee2495'),
(5006, 'Akira', 'Taiwin', 'Male', '1988-11-05', 'AkiraTai@survivehospital.com', '083-382-5789', '59/823 Santi house Janjam street 10221', 4004, 'Doctor', 'Akira5006', 'ATaiwin0588'),
(5007, 'Chanachon', 'Wongsawad', 'Male', '1995-11-25', 'ChanachonWong@survivehospital.com', '065-605-3623', '89/301 A Building Wila condo Jantra road 10329', 4002, 'Assistant', 'Chanachon5007', 'ChaWong259'),
(5008, 'Rachan', 'Homfung', 'Male', '1986-01-09', 'RachanHom@survivehospital.com', '090-422-8766', '84/186 Konoha village 14410', 4012, 'Doctor', 'Rachan5008', 'RaHomfung019'),
(5009, 'Akkaraphon', 'Rojrunrong', 'Male', '1991-02-13', 'AkkaraphonRoj@survivehospital.com', '086-532-2348', '239/25 Suparai village Thonthanee road 45300', 4004, 'Assistant', 'Akkaraphon5009', 'AkRojrunrong8648'),
(5010, 'Siwaporn', 'Duangdee', 'Female', '1987-04-30', 'SiwapornDuang@survivehospital.com', '097-793-8332', '89/77 B Building Wila condo Jantra road 10329', 4007, 'Doctor', 'Siwaporn5010', 'SiDuangdee430'),
(5011, 'Kwanjai', 'Nakkid', 'Female', '1996-11-09', 'KwanjaiNak@survivehospital.com', '088-897-2636', '59/182 Santi house Janjam street 10221', 4008, 'Doctor', 'Kwanjai5011', 'KwanNakkid11'),
(5012, 'Fakfah', 'Suwannakit', 'Male', '1995-05-18', 'FakfahSu@survivehospital', '061-989-3732', '61 A Building Tawee condo Samsib road 75000', 4007, 'Doctor', 'Fakfah5012', 'FakSuwannakit65'),
(5013, 'Guntaphong', 'Santiwadee', 'Male', '1985-07-13', 'GuntaphongSan@survivehospital.com', '098-893-3441', '57/501 Sukdee condo Bangjan street 13452', 4009, 'Doctor', 'Guntaphong5013', 'GunSantiwadee441'),
(5014, 'Numchai', 'Pongpan', 'Male', '1992-09-24', 'NumchaiPong@survivehospital.com', '088-882-3291', '57/21 Sukdee condo Bangjan street 13452', 4002, 'Male nurse', 'Numchai5014', 'NumPongpan628'),
(5015, 'Dumrong', 'Tongyuen', 'Male', '1981-03-07', 'DumrongTong@survivehospital.com', '097-678-5647', '23/202 Wandee Condo Narai street 23450', 4010, 'Male nurse', 'Dumrong5015', 'DumTongyuen817'),
(5016, 'Jamjan', 'Reungrit', 'Female', '1979-12-24', 'PiriyaSan@survivehospital.com', '081-788-5666', '32/712 Soi 7 Dendee village Phahol road 10222', 4006, 'Nurse', 'Jamjan5016', 'JamReungrit24'),
(5017, 'Keawalin', 'Wipatpun', 'Female', '1996-02-29', 'KeawalinWi@survivehospital.com', '083-673-3777', '45/309 A Building Cozy apartment Tawan street 10022', 4011, 'Doctor', 'Keawalin5017', 'KeawWipatpun673'),
(5018, 'Jariya', 'Jongjit', 'Female', '1981-11-04', 'JariyaJong@survivehospital.com', '062-244-5644', '32/349 Soi 7 Dendee village Phahol road 10222', 4001, 'Nurse', 'Jariya5018', 'JaJongjit12'),
(5019, 'Karnjana', 'Worakitkorn', 'Female', '1973-06-30', 'KarnjanaWo@survivehospital.com', '082-898-7262', '239/191 Suparai village Thonthanee road 45300', 4001, 'Doctor', 'Karnjana5019', 'KarnWorakitkorn73'),
(5020, 'Tophong', 'Tipnaree', 'Male', '1968-02-21', 'TophongTip@survivehospital.com', '084-902-7223', '57/501 86/99 A village Ratchapruek road 10100', 4010, 'Doctor', 'Tophong5020', 'ToTipnaree68');

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

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`TreatmentID`, `TreatmentNote`, `DoctorID`, `PaymentID`) VALUES
(8001, 'Physical check acceptable', 6006, 78701),
(8002, 'Ultra scan', 6009, 78702),
(8003, 'Pre-surgery checkup looks fine', 6001, 78703),
(8004, 'physical exam result', 6010, 78704),
(8005, 'Ultra scan result', 6009, 78705),
(8006, 'Pre-surgery checkup', 6001, 78706),
(8007, 'Physical exam result', 6010, 78707),
(8008, 'Lung check result', 6003, 78708),
(8009, 'Pre-surgery checkup pending', 6001, 78709),
(8010, 'Underlying disease check', 6006, 78710),
(8011, 'physical exam', 6010, 78711),
(8012, 'Radiation therapy simulation step', 6002, 78712),
(8013, 'Ambulatory blood pressure check', 6005, 78713),
(8014, 'physical exam result', 6010, 78714),
(8015, 'x-ray result', 6011, 78715),
(8016, 'x-ray picture', 6011, 78716),
(8017, 'Physical exam result', 6010, 78717),
(8018, 'X-ray result', 6011, 78718),
(8019, 'Physical exam result', 6009, 78719),
(8020, 'X-ray result', 6001, 78720),
(8021, 'Antenatal care', 6009, 78721),
(8022, 'Pre-surgery checkup status', 6001, 78722),
(8023, 'Physical exam result', 6011, 78723),
(8024, 'Pityriasis rosea checkup', 6008, 78724),
(8025, 'Underlying disease check', 6003, 78725),
(8026, 'Ambulatory blood pressure', 6005, 78726),
(8027, 'Ambulatory blood pressure', 6005, 78728),
(8028, 'Ambulatory blood pressure', 6005, 78729),
(8029, 'Ambulatory blood pressure', 6005, 78729),
(8030, 'Lung checkup result', 6003, 78730);

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
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `UserFName`, `UserLName`, `UserGender`, `UserDOB`, `UserAge`, `UserCongenitalDisease`, `UserCountry`, `UserNationality`, `UserTel`, `UserEmail`, `UserAddress`, `UserUsername`, `UserPassword`) VALUES
(1001, 'John', 'Brown', 'Male', '1998-12-20', 23, 'Heart disease', 'Thailand', 'American', '088-888-8888', 'john@gmail.com', '88/8 J Condo sesame street 10100', 'John123', 'Johnny001'),
(1002, 'Suchart', 'Jiam', 'Male', '1980-03-11', 41, 'Cancer', 'Thailand', 'Thai', '088-888-8887', 'suchart@gmail.com ', '87/7 B Condo Abc street 10200', 'suchart', 'suchart1'),
(1003, 'Prapassorn', 'Buatong', 'Female', '2000-09-26', 21, 'Allergic', 'Thailand', 'Thai', '088-888-8886', 'prapass@gmail.com ', '86/6 A village Ratchapruek road 10100', 'pass21', 'Passzz1'),
(1004, 'Kittiphorn', 'Hengdee', 'Female', '1982-02-20', 39, 'Gout', 'Thailand', 'Thai', '088-888-8885', 'hengheng@gmail.com', '40/4 Heng village Heng road 15500', 'kitheng', 'heng555'),
(1005, 'Sarutobi', 'Hirusen', 'Male', '1940-06-08', 81, 'Hypertension', 'Thailand', 'Japanese', '088-888-8844', 'Hirusen@gmail.com ', '84/7 Konoha village 14410', 'Hiruzen', 'Hiruzen777'),
(1006, 'Cara', 'Dellnel', 'Female', '2010-09-10', 11, 'Asthma', 'Denmark', 'Danish', '088-848-3965', 'CaraDD3@gmail.com ', '23/111 Wandee Condo Narai street 23450', 'CaraDn65', 'Cr0919'),
(1007, 'Logan', 'Seawa', 'Male', '1993-10-17', 28, 'Depression', 'Sweden', 'Swedish', '096-226-1410', 'LoganWa9@gmail.com', '81/445 Game apartment Thamma road 62451', 'LoganWa9', 'LossWin21'),
(1008, 'Owen', 'Karnjana', 'Male', '2003-03-04', 18, 'Heart disease', 'Thailand', 'French', '064-541-2928', 'KarnOW334@gmail.com', '59/2322 Santi house Janjam street 10221', 'Owen199', 'OK5559'),
(1009, 'Naomi', 'Kawii', 'Female', '1999-08-14', 22, '-', 'Japan', 'Japanese', '085-235-3891', 'Naomiii02@gmail.com', '715 D Building Tawee condo Samsib road 75000', 'Naomiii02', 'Namii1489'),
(1010, 'Surapon', 'Srison', 'Male', '1964-07-01', 57, 'Gout', 'Thailand', 'Thai', '099-267-7322', 'SuraponSri@gmail.com', '239/71 Suparai village Thonthanee road 45300', 'Surapon07', 'pon010764'),
(1011, 'Aileen', 'Krinjan', 'Female', '1999-04-15', 22, '-', 'Thailand', 'Thai', '083-643-2355', 'AileenK04@gmail.com', '88/45 J Condo sesame street 10100', 'AileenK04', 'aileen555'),
(1012, 'Charlotte', 'Endasen', 'Female', '1990-07-17', 31, 'Depression', 'Germany', 'German', '089-267-3418', 'Charlot347@gmail.com', '81/222 Game apartment Thamma road 62451', 'Charlotte17', 'charty089'),
(1013, 'Takeshi', 'Bimki', 'Male', '1979-07-01', 42, 'Heart disease', 'Japan', 'Japanese', '095-746-6846', 'TakeshiBK22@gmail.com', '59/1711 Santi house Janjam street 10221', 'TakeshiBK22', 'ken4601'),
(1014, 'Ashira', 'Nobmanee', 'Male', '2002-09-09', 19, '-', 'Thailand', 'Thai', '099-648-2827', 'Ashiranob89@gmail.com', '40/21 Heng village Heng road 15500', 'Ashira89', 'Ann9279'),
(1015, 'Jonathan', 'Wellbeling', 'Male', '1984-07-01', 37, 'Gout', 'Denmark', 'Danish', '066-827-6478', 'JonathanWell@gmail.com', '239/71 Suparai village Thonthanee road 45300', 'JonathanW0107', 'Joe1784');

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
  MODIFY `BookingID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3141;

--
-- AUTO_INCREMENT for table `bookingroom`
--
ALTER TABLE `bookingroom`
  MODIFY `BookingRoomID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6431;

--
-- AUTO_INCREMENT for table `clinic&center`
--
ALTER TABLE `clinic&center`
  MODIFY `ClinicID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4013;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `DoctorID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6012;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `InquiryID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4232;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PaymentID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78731;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `RoomID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9011;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `StaffID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5021;

--
-- AUTO_INCREMENT for table `treatment`
--
ALTER TABLE `treatment`
  MODIFY `TreatmentID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8031;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1016;

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
