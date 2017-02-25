-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 02, 2017 at 02:42 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `admission`
--

CREATE TABLE `admission` (
  `id` int(11) NOT NULL,
  `bedid` smallint(5) UNSIGNED NOT NULL,
  `doctorid` smallint(5) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `ad_day` date NOT NULL,
  `re_day` date DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `vehicle_no` varchar(50) NOT NULL,
  `staffid` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`id`, `vehicle_no`, `staffid`) VALUES
(6, 'Dhaka metro kh-34-56-2345', 22),
(7, 'Dhaka metro kh-45-75-2414', 23),
(8, 'Dhaka metro kh-34-56-2754', 21);

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `specialtyid` tinyint(3) UNSIGNED NOT NULL,
  `doctorid` smallint(5) UNSIGNED NOT NULL,
  `visitdayid` int(10) UNSIGNED NOT NULL,
  `patient_name` varchar(40) NOT NULL,
  `patient_email` varchar(40) NOT NULL,
  `patient_address` varchar(100) NOT NULL,
  `patient_phone_no` char(11) NOT NULL,
  `gender` char(6) NOT NULL,
  `patient_age` char(3) NOT NULL,
  `reason_of_appointment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `specialtyid`, `doctorid`, `visitdayid`, `patient_name`, `patient_email`, `patient_address`, `patient_phone_no`, `gender`, `patient_age`, `reason_of_appointment`) VALUES
(1, 24, 8, 15, 'Md. Mohsin Patwary', 'patwarydk@gamil.com', 'Bonosree, Rampura, Dhaka', '01670871877', 'Male', '34', 'Pain in head'),
(2, 24, 11, 13, 'Mr. Khaleq Ahmed', 'khaleq@gmail.com', 'Mohammadpur, Dhaaka', '01775266433', 'Male', '67', '');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `number` varchar(20) NOT NULL,
  `roomid` tinyint(4) NOT NULL,
  `amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`id`, `number`, `roomid`, `amount`) VALUES
(10, 'WO-101', 2, 300),
(11, 'WO-102', 2, 300),
(20, 'OT-301', 6, 35000),
(21, 'OT-302', 6, 5000),
(22, 'PO-310', 4, 7000),
(23, 'PO-311', 4, 7000),
(24, 'LR-206', 3, 400);

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `blood_group` varchar(5) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `name`, `email`, `contact`, `address`, `blood_group`, `date`) VALUES
(4, 'Fatema Akter', 'fatema@gmail.com', '01775324353', 'Bonosree, Rampura, Dhaka', 'O+', '2016-12-26 05:31:04'),
(5, 'Kaniz Almas', 'kaniz@gmail.com', '01974673546', 'Dhanmondi, Dhaka-1206', 'A+', '2016-12-26 05:31:18'),
(6, 'Md. Mohsin Patwary', 'patwarydk@gmail.com', '01775266433', 'keranigonj, Dhaka', 'O+', '2016-12-27 12:22:15');

-- --------------------------------------------------------

--
-- Table structure for table `blood_receiver`
--

CREATE TABLE `blood_receiver` (
  `id` int(10) UNSIGNED NOT NULL,
  `packNumber` int(10) UNSIGNED NOT NULL,
  `bloodGroup` varchar(5) NOT NULL,
  `receiverName` int(10) UNSIGNED NOT NULL,
  `bed` smallint(7) NOT NULL,
  `amount` float(6,2) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_receiver`
--

INSERT INTO `blood_receiver` (`id`, `packNumber`, `bloodGroup`, `receiverName`, `bed`, `amount`, `date`) VALUES
(9, 4, 'O+', 14, 24, 1200.00, '2016-12-27 10:33:07'),
(11, 5, 'A+', 14, 24, 1200.00, '2016-12-27 10:39:19'),
(12, 6, 'O+', 17, 22, 2500.00, '2016-12-27 12:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `canteen`
--

CREATE TABLE `canteen` (
  `id` tinyint(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` tinyint(4) NOT NULL,
  `price` float(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `canteen`
--

INSERT INTO `canteen` (`id`, `name`, `quantity`, `price`) VALUES
(17, 'Nola fish', 100, 60.00),
(18, 'Rui Fish(Big Size)', 100, 80.00),
(19, 'Farm (Murgi)', 100, 70.00),
(20, 'Meat (Firm)', 100, 70.00),
(21, 'Meat (Sonali)', 100, 80.00),
(22, 'Meat (Beef)', 100, 120.00),
(23, 'Meat (Mutton)', 100, 180.00),
(24, 'Kacchi (Kasmeri)', 100, 170.00),
(25, 'Kacchi (Indian)', 100, 160.00),
(26, 'Raice (Plain)', 100, 10.00),
(27, 'Raice (Vegitable)', 100, 30.00),
(28, 'Chicken fry', 100, 90.00),
(29, 'Vegitable', 100, 30.00),
(30, 'Dal (Liquide)', 100, 20.00),
(31, 'Dal (Vhuna)', 100, 40.00),
(32, 'Vegitable(Chinise)', 100, 60.00);

-- --------------------------------------------------------

--
-- Table structure for table `cash`
--

CREATE TABLE `cash` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_head` varchar(255) NOT NULL,
  `debit` float(10,2) NOT NULL,
  `credit` float(10,2) NOT NULL,
  `remarks` varchar(255) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cash`
--

INSERT INTO `cash` (`id`, `account_head`, `debit`, `credit`, `remarks`, `date`) VALUES
(87, 'Blood bank service Account', 0.00, 1200.00, 'Blood bank service charge income gain', '2016-12-27'),
(89, 'Blood bank service Account', 0.00, 1200.00, 'Blood bank service charge income gain', '2016-12-27'),
(90, 'Blood bank service Account', 0.00, 2500.00, 'Blood bank service charge income gain', '2016-12-27'),
(91, 'Sale Madicine', 0.00, 0.00, 'paid', '2016-12-27'),
(92, 'Sale Madicine', 0.00, 0.00, 'paid', '2016-12-27');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(3, 'Computer'),
(4, 'Frozen'),
(1, 'Fruits'),
(2, 'Laptop');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`) VALUES
(2, 'gastroenterology'),
(3, 'pediatrics'),
(4, 'gastroenterology'),
(5, 'Hematology');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`id`, `name`) VALUES
(2, 'Ass. Medical Officer'),
(3, 'Medicine'),
(4, 'Medical officer'),
(5, 'Senior medical officer');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosistest`
--

CREATE TABLE `diagnosistest` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` float(8,2) NOT NULL,
  `discount` float(4,2) NOT NULL,
  `vat` float(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosistest`
--

INSERT INTO `diagnosistest` (`id`, `name`, `amount`, `discount`, `vat`) VALUES
(1, 'Urin test Nomuna', 2000.00, 15.00, 12.00),
(4, 'Blood nomuna', 4400.00, 5.00, 12.00),
(5, 'Acidity (pH)', 300.00, 10.00, 10.00),
(6, 'Alcohol (ethanol)', 200.00, 10.00, 10.00),
(7, 'Ammonia', 200.00, 10.00, 10.00),
(8, 'Antinuclear antibodies (ANA)â€¡', 500.00, 8.00, 6.00),
(9, 'Bicarbonate (carbon dioxide content)', 500.00, 10.00, 6.00),
(10, 'Carbon dioxide pressure (expressed as a comparison with how high the level of mercury [Hg] rises in a tube due to air pressure at sea level)', 400.00, 10.00, 6.00),
(11, 'Carboxyhemoglobin (carbon monoxide in hemoglobin)', 500.00, 10.00, 10.00),
(12, 'Complete blood cell count (CBC)', 700.00, 10.00, 10.00),
(13, 'Creatine kinase (CK), also called creatine phosphokinase (CPK)', 200.00, 8.00, 10.00),
(14, 'Creatine kinase (CK) in its different forms (isoenzymes)', 500.00, 10.00, 6.00),
(15, 'Erythrocyte sedimentation rate (ESR)', 500.00, 10.00, 10.00),
(16, 'Hematocrit', 1000.00, 10.00, 10.00),
(17, 'Iron-binding capacity', 1000.00, 10.00, 10.00),
(18, 'Lactate (lactic acid)', 500.00, 10.00, 6.00),
(19, 'Lactic dehydrogenase', 1000.00, 10.00, 10.00),
(20, 'High-density lipoprotein (HDL)', 1000.00, 10.00, 10.00),
(21, 'Mean corpuscular hemoglobin (MCH)', 2000.00, 10.00, 10.00),
(22, 'Mean corpuscular hemoglobin concentration (MCHC)', 1000.00, 10.00, 6.00),
(23, 'Mean corpuscular volume (MCV)', 500.00, 10.00, 10.00),
(24, 'Oxygen saturation (arterial)', 500.00, 10.00, 10.00),
(25, 'Partial thromboplastin time (PTT)', 1000.00, 10.00, 10.00),
(26, 'Thyroid-stimulating hormone (TSH)', 1000.00, 10.00, 10.00),
(27, 'Transaminases (liver enzymes):', 2000.00, 10.00, 10.00),
(28, 'Urea nitrogen (BUN)', 1000.00, 10.00, 10.00),
(29, 'White blood cell (WBC) count', 500.00, 10.00, 6.00),
(30, 'Uric acid', 500.00, 10.00, 10.00);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosis_invoice`
--

CREATE TABLE `diagnosis_invoice` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `Date` datetime NOT NULL,
  `patientid` int(10) UNSIGNED NOT NULL,
  `diagnosistestid` tinyint(3) UNSIGNED NOT NULL,
  `amount` float(8,2) UNSIGNED NOT NULL,
  `vat` float(4,2) UNSIGNED NOT NULL,
  `discount` float(4,2) UNSIGNED NOT NULL,
  `total` float(10,2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosis_invoice`
--

INSERT INTO `diagnosis_invoice` (`id`, `Date`, `patientid`, `diagnosistestid`, `amount`, `vat`, `discount`, `total`) VALUES
(1, '2016-12-27 04:35:10', 19, 6, 200.00, 10.00, 10.00, 198.00),
(2, '2016-12-27 04:35:10', 19, 7, 200.00, 10.00, 10.00, 198.00),
(3, '2016-12-27 04:35:10', 19, 20, 1000.00, 10.00, 10.00, 990.00);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `fees` float(6,2) DEFAULT NULL,
  `visit_start_hour` time NOT NULL,
  `visit_end_hour` time NOT NULL,
  `visit_day` varchar(12) NOT NULL,
  `commission` float(4,2) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`id`, `name`, `email`, `contact`, `fees`, `visit_start_hour`, `visit_end_hour`, `visit_day`, `commission`, `details`) VALUES
(8, 'ABM Abdullah', 'abdullah@idb.com', '01712635465', 300.00, '00:00:05', '00:00:11', '', 10.00, 'Professor'),
(9, 'Professor Anisur rahman', 'anis@idb.com', '01912635465', 800.00, '00:00:05', '00:00:11', '', 10.00, 'Professor'),
(10, 'Professor Kazi Din Mohammad', 'mohammad@gmail.com', '01718877633', 1000.00, '00:00:03', '00:00:12', '', 10.00, 'Professor'),
(11, 'Dr. Mrigendra Nath Gantait', 'gantait@idb.com', '01727548475', 3000.00, '00:00:07', '00:00:10', '', 20.00, 'Professor'),
(12, 'Mr.Rajanikant Pradhan', 'pradhan@gmail.com', '01675742635', 1000.00, '00:00:05', '00:00:10', '', 10.00, 'Profrssor'),
(13, 'Prof. Sajal Krishna Banerjee', 'drsajalk2003@yahoo.com', '+88-02-8626169', 1000.00, '00:00:05', '00:00:11', '', 10.00, 'Professor'),
(14, 'Prof. Md. Abu Siddique', 'drabusiddique@yahoo.com', '+88-02-8626170', 500.00, '00:00:03', '00:00:10', '', 10.00, 'Professor'),
(15, 'Prof. Mohd. Zahid Hussain', 'z.hussain71@yahoo.com', '+88-02-8626187', 500.00, '00:00:05', '00:00:10', '', 10.00, 'Professor'),
(16, 'Prof. Masuda Begum ', 'masudabegumk34@gmail.com', '88-02-9139403', 1000.00, '00:00:05', '00:00:10', '', 10.00, 'Professor'),
(17, 'Prof. A.B.M. Yunus ', 'abmyunus@dhaka.net', '88-02-9139404', 700.00, '00:00:05', '00:00:11', '', 10.00, 'Professor'),
(18, 'Prof. Md. Abdur Rahim', 'abdurrahimdrmd@yahoo.com', '88-02-9139405', 800.00, '00:00:07', '00:00:12', '', 10.00, 'Professor'),
(19, 'Prof. Md. Abdul Jalil Chowdhury', 'majchow@yahoo.com', '88-02-9139406', 700.00, '00:00:05', '00:00:10', '', 10.00, 'Professor'),
(20, 'Prof. Md. Zilan Miah Sarker', 'Zilan_miah@yahoo.com', '88-02-9139409', 700.00, '00:00:05', '00:00:10', '', 10.00, 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecialty`
--

CREATE TABLE `doctorspecialty` (
  `doctorid` smallint(5) UNSIGNED NOT NULL,
  `specialtyid` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecialty`
--

INSERT INTO `doctorspecialty` (`doctorid`, `specialtyid`) VALUES
(8, 24),
(9, 24),
(10, 58),
(10, 59),
(10, 60),
(11, 24),
(12, 24),
(12, 25),
(12, 26),
(12, 27),
(12, 28),
(13, 29),
(13, 30),
(13, 31),
(13, 52),
(13, 71),
(14, 29),
(14, 30),
(14, 52),
(15, 31),
(16, 47),
(17, 47),
(18, 51),
(19, 51),
(20, 24),
(20, 25),
(20, 26),
(20, 27),
(20, 28);

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `amount` float NOT NULL,
  `usersid` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `title`, `description`, `amount`, `usersid`, `date`) VALUES
(2, 'Computer', 'samsung', 30000, 14, '2016-12-11'),
(6, 'Mdeicine', 'Medicine purchase from Renata Pharmaceuticals ', 500000, 14, '2016-12-25'),
(7, 'Ambulance purchase', 'Toyota ambulance purchase from japan', 6700000, 14, '2012-12-16');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `rating` varchar(10) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `userid`, `rating`, `description`, `date`) VALUES
(12, 14, '1', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use.', '2016-12-22 05:11:34'),
(13, 14, '2', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use.', '2016-12-22 05:12:46'),
(14, 14, '3', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use.', '2016-12-22 05:12:58');

-- --------------------------------------------------------

--
-- Table structure for table `generic`
--

CREATE TABLE `generic` (
  `id` tinyint(5) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generic`
--

INSERT INTO `generic` (`id`, `name`) VALUES
(11, 'aceclofenac'),
(4, 'Adhatoda vasica'),
(9, 'azithromycin'),
(12, 'calcium + vitamin-d'),
(10, 'ciprofloxacin'),
(5, 'Clotrimazole'),
(8, 'esomiprazole'),
(13, 'loratadine'),
(6, 'pantoprazole'),
(2, 'Paracetamol & Caffeine'),
(7, 'rabiprazole');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `genericid` tinyint(5) UNSIGNED NOT NULL,
  `strips` tinyint(3) NOT NULL,
  `price` float(8,2) UNSIGNED NOT NULL,
  `stock` smallint(5) UNSIGNED NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `name`, `genericid`, `strips`, `price`, `stock`, `date`) VALUES
(3, 'Ace Plus', 2, 20, 15.10, 2000, '2016-12-13'),
(5, 'Adovas', 4, 1, 50.00, 2000, '2016-12-13'),
(6, 'Afun', 4, 2, 60.00, 2000, '2016-12-13'),
(7, 'AC-100', 11, 50, 100.00, 2000, '2016-12-13'),
(8, 'calbo-D', 12, 1, 80.00, 2000, '2016-12-13'),
(9, 'zymax', 9, 1, 240.00, 2000, '2016-12-13'),
(10, 'ciprocin', 10, 1, 150.00, 2000, '2016-12-13'),
(11, 'maxpro-20', 8, 1, 60.00, 2000, '2016-12-13'),
(12, 'laratin', 13, 1, 30.00, 2000, '2016-12-13'),
(13, 'rabe', 7, 1, 70.00, 2000, '2016-12-13'),
(14, 'pantonix', 6, 1, 50.00, 2000, '2016-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `picture` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `date`, `title`, `description`, `picture`) VALUES
(67, '2016-12-19', 'Vacancy announcement', 'Many people were surprised by the government''s announcement that there will be a cut in taxes. I heard an announcement on the loudspeaker saying that the store was closing in 10 minutes. The company president made an announcement about the merger. He asked us to pay attention because he had an important announcement to make. I saw their wedding announcement in the newspaper. They have been very busy since the announcement of their wedding.', 'jpg'),
(68, '2016-12-18', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alter', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English.', 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` char(32) NOT NULL,
  `password` char(32) NOT NULL,
  `contact` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctorid` smallint(5) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `medicineid` tinyint(3) UNSIGNED NOT NULL,
  `quentity` tinyint(4) NOT NULL,
  `morning` varchar(2) DEFAULT NULL,
  `midday` varchar(2) DEFAULT NULL,
  `night` varchar(2) DEFAULT NULL,
  `meal` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `doctorid`, `userid`, `date`, `medicineid`, `quentity`, `morning`, `midday`, `night`, `meal`) VALUES
(14, 8, 17, '2016-12-25', 7, 34, '1', '1', '1', 'a'),
(15, 8, 17, '2016-12-25', 3, 45, '1', '0', '1', 'a'),
(16, 8, 17, '2016-12-25', 3, 66, '1', '1', '1', 'a'),
(17, 8, 17, '2016-12-25', 11, 12, '1', '0', '1', 'b'),
(18, 8, 17, '2016-12-25', 5, 24, '1', '1', '1', 'a'),
(19, 8, 17, '2016-12-25', 6, 34, '1', '0', '1', 'a'),
(20, 11, 19, '2016-12-25', 7, 12, '1', '1', '1', 'a'),
(21, 11, 19, '2016-12-25', 8, 77, '0', '0', '1', 'a'),
(22, 11, 19, '2016-12-25', 10, 33, '1', '0', '1', 'a'),
(23, 11, 19, '2016-12-25', 11, 66, '1', '0', '1', 'b'),
(24, 11, 19, '2016-12-25', 12, 44, '1', '0', '1', 'b'),
(25, 11, 19, '2016-12-25', 9, 45, '1', '0', '1', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `name`) VALUES
(3, 'Cabin'),
(7, 'CDP'),
(5, 'LCU 123');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `amount` float DEFAULT NULL,
  `details` varchar(200) DEFAULT NULL,
  `date` date NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sales_medicine`
--

CREATE TABLE `sales_medicine` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `usersid` int(10) UNSIGNED NOT NULL,
  `medicineid` tinyint(3) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `total` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales_medicine`
--

INSERT INTO `sales_medicine` (`id`, `usersid`, `medicineid`, `quantity`, `date`, `total`) VALUES
(1, 17, 7, 1, '2016-12-27 04:35:32', 0.00),
(2, 17, 5, 1, '2016-12-27 04:35:32', 0.00),
(3, 17, 14, 1, '2016-12-27 04:35:32', 0.00),
(4, 17, 10, 1, '2016-12-27 04:35:32', 0.00),
(5, 17, 6, 1, '2016-12-27 04:35:32', 0.00),
(6, 17, 5, 1, '2016-12-27 04:35:47', 0.00),
(7, 17, 6, 1, '2016-12-27 04:35:47', 0.00),
(8, 17, 8, 1, '2016-12-27 04:35:47', 0.00),
(9, 17, 8, 1, '2016-12-27 04:35:47', 0.00),
(10, 17, 12, 1, '2016-12-27 04:35:47', 0.00),
(11, 17, 6, 1, '2016-12-27 04:35:47', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `specialty`
--

CREATE TABLE `specialty` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specialty`
--

INSERT INTO `specialty` (`id`, `name`) VALUES
(24, 'Addiction Medicine'),
(25, 'Allergy & Immunology'),
(26, 'Anesthesiology'),
(27, 'Bariatric (Weight Loss) Surgery'),
(28, 'Cancer Surgery'),
(29, 'Cardiothoracic Surgery'),
(30, 'Cardiovascular Disease'),
(31, 'Cardiovascular Surgery'),
(32, 'Clinical Psychology'),
(33, 'Colorectal Surgery'),
(34, 'Critical Care Medicine'),
(23, 'Dental Surgon'),
(35, 'Dentistry/Oral Surgery'),
(36, 'Dermatology'),
(37, 'Dermatopathology'),
(38, 'Electrophysiology'),
(39, 'Emergency Medicine'),
(40, 'Endocrinology, Diabetes, & Metabolism'),
(41, 'Family Medicine'),
(42, 'Gastroenterology'),
(43, 'Geriatric Medicine'),
(44, 'Geriatric Psychiatry'),
(45, 'Gynecologic Oncology'),
(5, 'Gynecologist'),
(46, 'Hand Surgery'),
(47, 'Hematology'),
(48, 'HIV Disease Specialist'),
(49, 'Hospitalist'),
(50, 'Infectious Disease'),
(51, 'Internal Medicine'),
(52, 'Interventional Cardiology'),
(53, 'Maternal and Fetal Medicine'),
(54, 'Medical Oncology'),
(55, 'Microsurgery'),
(56, 'Neonatal-Perinatal Medicine'),
(57, 'Nephrology'),
(58, 'Neurology'),
(59, 'Neuroradiology'),
(60, 'Neurosurgery'),
(61, 'Nuclear Medicine'),
(62, 'Obstetrics and Gynecology'),
(63, 'Ophthalmology'),
(64, 'Oral & Maxillofacial Surgery'),
(65, 'Orthopaedics'),
(66, 'Orthopedic Surgery'),
(67, 'Otolaryngology (Ear, Nose, and Throat)'),
(68, 'Pain Management'),
(69, 'Pathology'),
(70, 'Pediatric Anesthesiology'),
(71, 'Pediatric Cardiology'),
(72, 'Pediatric Opthalmology'),
(73, 'Pediatric Surgery'),
(22, 'pediatrician'),
(74, 'Pediatrics'),
(75, 'Physical Medicine & Rehabilitation'),
(76, 'Plastic Surgery'),
(77, 'Podiatry'),
(78, 'Psychiatry'),
(79, 'Pulmonary Diseas'),
(80, 'Radiation Oncology'),
(81, 'Radiology'),
(82, 'Reconstructive Surgery'),
(83, 'Reproductive Endocrinology'),
(84, 'Rheumatology'),
(85, 'Sleep Medicine'),
(86, 'Spine Surgery'),
(87, 'Sports Medicine'),
(88, 'Surgery'),
(89, 'Surgical Critical Care'),
(90, 'Thoracic Surgery'),
(92, 'Urology'),
(91, 'Vascular Surgery');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `departmentid` tinyint(3) UNSIGNED NOT NULL,
  `designationid` tinyint(3) UNSIGNED NOT NULL,
  `salary` float(9,2) NOT NULL,
  `contact` char(11) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `address` varchar(50) NOT NULL,
  `age` tinyint(3) NOT NULL,
  `picture` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `departmentid`, `designationid`, `salary`, `contact`, `gender`, `address`, `age`, `picture`) VALUES
(20, 'Dr. Nurul Islam', 2, 2, 500.00, '01745552252', 'M', 'mirpur-1', 40, ''),
(21, 'Rezaul Karim Rhythm', 2, 2, 500.00, '01743186946', 'M', 'Sector 7, Uttora, Dhaka', 25, 'jpg'),
(22, 'Kamrul Hasan', 3, 2, 500.00, '01775266433', 'M', 'Bonosree, Rampura, Dhaka-1219', 34, 'png'),
(23, 'Professor Mahmudul Hasan', 2, 3, 500.00, '01766554334', 'M', 'Dhanmondi, Dhaka-1204', 44, 'jpg'),
(24, 'Samiun Karim Patwary', 2, 2, 150000.00, '01754295364', 'M', 'Dhanmondi, Dhaka-1204', 55, 'jpg'),
(27, 'Fatema Akter', 2, 2, 1200000.00, '01766554338', 'F', 'Bonosree, Rampura, Dhaka-1219', 34, 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `categoryid` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `name`, `categoryid`) VALUES
(8, 'aaaa', 1),
(6, 'aaaa', 2),
(19, 'asldkjg', 4),
(4, 'Banana', 1),
(20, 'fadvbgdg', 1),
(14, 'farhad', 1),
(2, 'Orange', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `id` int(10) UNSIGNED NOT NULL,
  `ambulanceid` tinyint(3) UNSIGNED NOT NULL,
  `staffid` tinyint(3) UNSIGNED NOT NULL,
  `start_destination` varchar(50) NOT NULL,
  `end_destination` varchar(50) NOT NULL,
  `amount` float(8,2) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`id`, `ambulanceid`, `staffid`, `start_destination`, `end_destination`, `amount`, `date`) VALUES
(5, 1, 17, 'dhaka', 'comilla', 8000.00, '2016-08-12'),
(6, 5, 20, 'dhaka', 'comilla', 8000.00, '2016-12-05'),
(7, 5, 24, 'Dhaka', 'Noakhali', 5000.00, '2016-12-22'),
(8, 5, 24, 'Dhaka', 'Noakhali', 5000.00, '2016-12-22'),
(10, 7, 24, 'Dhaka', 'Comilla', 5000.00, '2016-12-22'),
(11, 7, 24, 'Chandpur', 'Dinajpur', 15000.00, '2016-12-25');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` char(32) NOT NULL,
  `type` varchar(1) NOT NULL,
  `address` varchar(200) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `picture` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `address`, `contact`, `gender`, `picture`) VALUES
(14, 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', 'a', 'mirpur-1', '01700000000', 1, 'jpg'),
(17, 'Khadiza Akter', 'khadiza@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'u', 'Mohammadpur, Dhaka', '01746746325', 2, 'jpg'),
(19, 'Md. Mohsin Patwary', 'patwarydk@gamil.com', '202cb962ac59075b964b07152d234b70', 'u', 'Bonosree, Rampura, Dhaka', '01775266433', 1, 'png');

-- --------------------------------------------------------

--
-- Table structure for table `visitday`
--

CREATE TABLE `visitday` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctorid` smallint(5) UNSIGNED NOT NULL,
  `day` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `visitday`
--

INSERT INTO `visitday` (`id`, `doctorid`, `day`) VALUES
(1, 8, 'Saturday'),
(15, 8, 'Sunday'),
(3, 9, 'Saturday'),
(9, 10, 'Friday'),
(11, 10, 'Saturday'),
(7, 11, 'Saturday'),
(13, 11, 'Wednesday');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admission`
--
ALTER TABLE `admission`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bedid` (`bedid`),
  ADD KEY `doctorid` (`doctorid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patient_email` (`patient_email`),
  ADD KEY `specialtyid` (`specialtyid`),
  ADD KEY `doctorid` (`doctorid`),
  ADD KEY `visitdayid` (`visitdayid`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `number` (`number`),
  ADD KEY `roomid` (`roomid`);

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_receiver`
--
ALTER TABLE `blood_receiver`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bloodbankid` (`packNumber`);

--
-- Indexes for table `canteen`
--
ALTER TABLE `canteen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `cash`
--
ALTER TABLE `cash`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosistest`
--
ALTER TABLE `diagnosistest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diagnosis_invoice`
--
ALTER TABLE `diagnosis_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patientid` (`patientid`),
  ADD KEY `diagnosistestid` (`diagnosistestid`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecialty`
--
ALTER TABLE `doctorspecialty`
  ADD KEY `doctorid` (`doctorid`),
  ADD KEY `specialtyid` (`specialtyid`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersid` (`usersid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `generic`
--
ALTER TABLE `generic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `genericid` (`genericid`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `doctorid` (`doctorid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `medicineid` (`medicineid`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `sales_medicine`
--
ALTER TABLE `sales_medicine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usersid` (`usersid`),
  ADD KEY `medicineid` (`medicineid`);

--
-- Indexes for table `specialty`
--
ALTER TABLE `specialty`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD KEY `departmentid` (`departmentid`),
  ADD KEY `designationid` (`designationid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`,`categoryid`),
  ADD KEY `categoryid` (`categoryid`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ambulanceid` (`ambulanceid`),
  ADD KEY `staffid` (`staffid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `visitday`
--
ALTER TABLE `visitday`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctorid_2` (`doctorid`,`day`),
  ADD KEY `doctorid` (`doctorid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admission`
--
ALTER TABLE `admission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ambulance`
--
ALTER TABLE `ambulance`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `blood_bank`
--
ALTER TABLE `blood_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `blood_receiver`
--
ALTER TABLE `blood_receiver`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `canteen`
--
ALTER TABLE `canteen`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `cash`
--
ALTER TABLE `cash`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `designation`
--
ALTER TABLE `designation`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `diagnosistest`
--
ALTER TABLE `diagnosistest`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `diagnosis_invoice`
--
ALTER TABLE `diagnosis_invoice`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `generic`
--
ALTER TABLE `generic`
  MODIFY `id` tinyint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sales_medicine`
--
ALTER TABLE `sales_medicine`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `specialty`
--
ALTER TABLE `specialty`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `visitday`
--
ALTER TABLE `visitday`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `admission`
--
ALTER TABLE `admission`
  ADD CONSTRAINT `admission_ibfk_1` FOREIGN KEY (`bedid`) REFERENCES `bed` (`id`),
  ADD CONSTRAINT `admission_ibfk_2` FOREIGN KEY (`doctorid`) REFERENCES `doctor` (`id`),
  ADD CONSTRAINT `admission_ibfk_3` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

--
-- Constraints for table `ambulance`
--
ALTER TABLE `ambulance`
  ADD CONSTRAINT `ambulance_ibfk_1` FOREIGN KEY (`staffid`) REFERENCES `staff` (`id`);

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`specialtyid`) REFERENCES `specialty` (`id`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`doctorid`) REFERENCES `doctor` (`id`),
  ADD CONSTRAINT `appointment_ibfk_3` FOREIGN KEY (`visitdayid`) REFERENCES `visitday` (`id`);

--
-- Constraints for table `diagnosis_invoice`
--
ALTER TABLE `diagnosis_invoice`
  ADD CONSTRAINT `diagnosis_invoice_ibfk_1` FOREIGN KEY (`patientid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `diagnosis_invoice_ibfk_2` FOREIGN KEY (`diagnosistestid`) REFERENCES `diagnosistest` (`id`);

--
-- Constraints for table `doctorspecialty`
--
ALTER TABLE `doctorspecialty`
  ADD CONSTRAINT `doctorspecialty_ibfk_1` FOREIGN KEY (`doctorid`) REFERENCES `doctor` (`id`),
  ADD CONSTRAINT `doctorspecialty_ibfk_2` FOREIGN KEY (`specialtyid`) REFERENCES `specialty` (`id`);

--
-- Constraints for table `expense`
--
ALTER TABLE `expense`
  ADD CONSTRAINT `expense_ibfk_1` FOREIGN KEY (`usersid`) REFERENCES `users` (`id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

--
-- Constraints for table `medicine`
--
ALTER TABLE `medicine`
  ADD CONSTRAINT `medicine_ibfk_1` FOREIGN KEY (`genericid`) REFERENCES `generic` (`id`);

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`doctorid`) REFERENCES `doctor` (`id`),
  ADD CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `prescription_ibfk_3` FOREIGN KEY (`medicineid`) REFERENCES `medicine` (`id`);

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);

--
-- Constraints for table `sales_medicine`
--
ALTER TABLE `sales_medicine`
  ADD CONSTRAINT `sales_medicine_ibfk_1` FOREIGN KEY (`usersid`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sales_medicine_ibfk_2` FOREIGN KEY (`medicineid`) REFERENCES `medicine` (`id`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`departmentid`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (`designationid`) REFERENCES `designation` (`id`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`);

--
-- Constraints for table `visitday`
--
ALTER TABLE `visitday`
  ADD CONSTRAINT `visitday_ibfk_1` FOREIGN KEY (`doctorid`) REFERENCES `doctor` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
