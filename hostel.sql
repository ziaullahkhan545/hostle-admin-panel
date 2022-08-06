-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2022 at 07:14 PM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'zia.ullah60@outlook.com', 'admin', '2016-04-04 20:31:45', '2022-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(4) NOT NULL,
  `state_id` int(4) NOT NULL,
  `city` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `city`) VALUES
(1, 1, 'Muzaffarabad'),
(2, 1, 'Hattian Bala'),
(3, 1, 'Neelum'),
(4, 1, 'Mirpur'),
(5, 1, 'Bhimber'),
(6, 1, 'Kotli'),
(7, 1, 'Poonch'),
(8, 1, 'Bagh'),
(9, 1, 'Haveli'),
(10, 1, 'Sudhnati'),
(11, 2, 'Awaran'),
(12, 2, 'Barkhan'),
(13, 2, 'Chagai'),
(14, 2, 'Chaman'),
(15, 2, 'Dera Bugti'),
(16, 2, 'Duki'),
(17, 2, 'Gwadar'),
(18, 2, 'Harnai'),
(19, 2, 'Jafarabad'),
(20, 2, 'Jhal Magsi'),
(21, 2, 'Kachhi'),
(22, 2, 'Kalat'),
(23, 2, 'Kech'),
(24, 2, 'Kharan'),
(25, 2, 'Khuzdar'),
(26, 2, 'Kohlu'),
(27, 2, 'Lasbela'),
(28, 2, 'Loralai'),
(29, 2, 'Mastung'),
(30, 2, 'Musakhel'),
(31, 2, 'Nasirabad'),
(32, 2, 'Nushki'),
(33, 2, 'Panjgur'),
(34, 2, 'Pishin'),
(35, 2, 'Quetta'),
(36, 2, 'Qila Abdullah'),
(37, 2, 'Qilla Saifullah'),
(38, 2, 'Sherani'),
(39, 2, 'Sibi'),
(40, 2, 'Sohbatpur'),
(41, 2, 'Shaheed Sikandarabad'),
(42, 2, 'Washuk'),
(43, 2, 'Zhob'),
(44, 2, 'Ziarat'),
(45, 3, 'Ghanche'),
(46, 3, 'Skardu'),
(47, 3, 'Astore'),
(48, 3, 'Diamer'),
(49, 3, 'Ghizer'),
(50, 3, 'Gilgit'),
(51, 3, 'Hunza'),
(52, 3, 'Kharmang'),
(53, 3, 'Shigar'),
(54, 3, 'Nagar'),
(56, 3, 'Tangir'),
(57, 3, 'Darel'),
(58, 3, 'Roundu'),
(59, 4, 'Islamabad'),
(60, 5, 'Abbottabad'),
(61, 5, 'Bajaur'),
(62, 5, 'Bannu'),
(63, 5, 'Battagram'),
(64, 5, 'Buner'),
(65, 5, 'Charsadda'),
(66, 5, 'Dera Ismail Khan'),
(67, 5, 'Hangu'),
(68, 5, 'Haripur'),
(69, 5, 'Karak'),
(70, 5, 'Khyber'),
(71, 5, 'Kohat'),
(72, 5, 'Kurram'),
(73, 5, 'Kolai Palas'),
(74, 5, 'Lakki Marwat'),
(75, 5, 'Lower Dir'),
(76, 5, 'Lower Kohistan'),
(77, 5, 'Lower Chitral'),
(78, 5, 'Malakand'),
(79, 5, 'Mansehra'),
(80, 5, 'Mardan'),
(81, 5, 'Mohmand'),
(82, 5, 'North Waziristan'),
(83, 5, 'Nowshera'),
(84, 5, 'Orakzai'),
(85, 5, 'Peshawar'),
(86, 5, 'Shangla'),
(87, 5, 'South Waziristan'),
(88, 5, 'Swabi'),
(89, 5, 'Swat'),
(90, 5, 'Tank'),
(91, 5, 'Torghar'),
(92, 5, 'Upper Dir'),
(93, 5, 'Upper Kohistan'),
(94, 5, 'Upper Chitral'),
(95, 6, 'Attock'),
(96, 6, 'Bahawalnagar'),
(97, 6, 'Bahawalpur'),
(98, 6, 'Bhakkar'),
(99, 6, 'Chakwal'),
(100, 6, 'Chiniot'),
(101, 6, 'Dera Ghazi Khan'),
(102, 6, 'Faisalabad'),
(103, 6, 'Gujranwala'),
(104, 6, 'Gujrat'),
(105, 6, 'Hafizabad'),
(106, 6, 'Jhang'),
(107, 6, 'Jhelum'),
(108, 6, 'Kasur'),
(109, 6, 'Khanewal'),
(110, 6, 'Khushab'),
(111, 6, 'Lahore'),
(112, 6, 'Layyah'),
(113, 6, 'Lodhran'),
(114, 6, 'Mandi Bahauddin'),
(115, 6, 'Mianwali'),
(116, 6, 'Multan'),
(117, 6, 'Muzaffargarh'),
(118, 6, 'Narowal'),
(119, 6, 'Nankana Sahib'),
(120, 6, 'Okara'),
(121, 6, 'Pakpattan'),
(122, 6, 'Rahim Yar Khan'),
(123, 6, 'Rajanpur'),
(124, 6, 'Rawalpindi'),
(125, 6, 'Sahiwal'),
(126, 6, 'Sargodha'),
(127, 6, 'Sheikhupura'),
(128, 6, 'Sialkot'),
(129, 6, 'Toba Tek Singh'),
(130, 6, 'Vehari'),
(131, 7, 'Badin'),
(132, 7, 'Dadu'),
(133, 7, 'Ghotki'),
(134, 7, 'Hyderabad'),
(135, 7, 'Jacobabad'),
(136, 7, 'Jamshoro'),
(137, 7, 'Karachi Central'),
(138, 7, 'Karachi East'),
(139, 7, 'Karachi South'),
(140, 7, 'Karachi West'),
(141, 7, 'Kashmore'),
(142, 7, 'Khairpur'),
(143, 7, 'Korangi'),
(144, 7, 'Keamari'),
(145, 7, 'Larkana'),
(146, 7, 'Malir'),
(147, 7, 'Matiari'),
(148, 7, 'Mirpur Khas'),
(149, 7, 'Naushahro Feroze'),
(150, 7, 'Qambar Shahdadkot'),
(151, 7, 'Sanghar'),
(152, 7, 'Shaheed Benazirabad'),
(153, 7, 'Shikarpur'),
(154, 7, 'Sujawal'),
(155, 7, 'Sukkur'),
(156, 7, 'Tando Allahyar'),
(157, 7, 'Tando Muhammad Khan'),
(158, 7, 'Tharparkar'),
(159, 7, 'Thatta'),
(160, 7, 'Umerkot');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) DEFAULT NULL,
  `course_sn` varchar(255) DEFAULT NULL,
  `course_fn` varchar(255) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(2, 'BCOM1453', 'B.Com', 'Bachelor Of commerce ', '2020-07-04 19:31:42'),
(3, 'BSC12', 'BSC', 'Bachelor  of Science', '2020-07-04 19:31:42'),
(4, 'BC36356', 'BCA', 'Bachelor Of Computer Application', '2020-07-04 19:31:42'),
(6, 'MBA75', 'MBA', 'Master of Business Administration', '2020-07-04 19:31:42'),
(9, 'BSCS210545', 'Bs', 'Computer Science ', '2022-07-14 11:46:35'),
(10, 'FL123', 'FL', 'Freelancer', '2022-07-14 11:48:18'),
(11, '', 'FL', 'asdfasd', '2022-07-14 12:54:27'),
(12, 'asdf', 'weter', '4534346', '2022-07-15 10:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `no` int(11) NOT NULL,
  `date` datetime(6) DEFAULT NULL,
  `amount` varchar(50) NOT NULL,
  `purpose` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`no`, `date`, `amount`, `purpose`) VALUES
(5, '2022-07-12 00:00:00.000000', '1000', 'laundry'),
(6, '2022-07-27 00:00:00.000000', '3000', 'kitchen'),
(7, '2022-07-19 00:00:00.000000', '3000', 'foos'),
(8, '2021-01-06 00:00:00.000000', '3044', 'ddfdklsfd'),
(9, '2023-02-09 00:00:00.000000', '100', 'dklfjsdfk'),
(10, '2020-07-12 00:00:00.000000', '1005', '0');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(10) NOT NULL,
  `regno` int(5) NOT NULL,
  `studentname` varchar(25) NOT NULL,
  `roomcharges` int(10) NOT NULL,
  `foodcharges` int(10) NOT NULL,
  `msic_charges` int(10) NOT NULL,
  `total` int(15) NOT NULL,
  `dated` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fee`
--

INSERT INTO `fee` (`id`, `regno`, `studentname`, `roomcharges`, `foodcharges`, `msic_charges`, `total`, `dated`) VALUES
(1, 342352, 'zia', 3000, 500, 100, 3600, '2022-08-06');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) DEFAULT NULL,
  `seater` int(11) DEFAULT NULL,
  `feespm` int(11) DEFAULT NULL,
  `foodstatus` int(11) DEFAULT NULL,
  `stayfrom` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `course` varchar(500) DEFAULT NULL,
  `regno` int(11) DEFAULT NULL,
  `firstName` varchar(500) DEFAULT NULL,
  `middleName` varchar(500) DEFAULT NULL,
  `lastName` varchar(500) DEFAULT NULL,
  `gender` varchar(250) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `emailid` varchar(500) DEFAULT NULL,
  `egycontactno` bigint(11) DEFAULT NULL,
  `guardianName` varchar(500) DEFAULT NULL,
  `guardianRelation` varchar(500) DEFAULT NULL,
  `guardianContactno` bigint(11) DEFAULT NULL,
  `corresAddress` varchar(500) DEFAULT NULL,
  `corresCIty` varchar(500) DEFAULT NULL,
  `corresState` varchar(500) DEFAULT NULL,
  `corresPincode` int(11) DEFAULT NULL,
  `pmntAddress` varchar(500) DEFAULT NULL,
  `pmntCity` varchar(500) DEFAULT NULL,
  `pmnatetState` varchar(500) DEFAULT NULL,
  `pmntPincode` int(11) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(3, 112, 3, 4000, 0, '2022-07-19', 12, 'Bachelor Of commerce ', 1, 'zia', '', 'ullah', 'male', 3488381490, 'zia.ullah60@outlook.com', 234, 'mukammal shah', 'asdf', 0, 'asdfasdf', 'asdfasdf', 'Jammu and Kashmir', 0, 'asdfasdf', 'asdfasdf', 'Jammu and Kashmir', 0, '2022-07-14 10:27:23', NULL),
(4, 1, 1, 20000, 0, '2022-07-18', 2, 'Freelancer', 342352, 'zia', '', 'ullah', 'male', 30958039523, '234234234@sdg.cpm', 234234, 'sdfgsdfg', 'Father', 834334234, 'village tappi karak, tehsil, district and post office karak ', 'karak', 'Arunachal Pradesh', 27200, 'village tappi karak, tehsil, district and post office karak ', 'karak', 'Arunachal Pradesh', 27200, '2022-07-14 11:51:37', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `seater` int(11) DEFAULT NULL,
  `room_no` int(11) DEFAULT NULL,
  `fees` int(11) DEFAULT NULL,
  `posting_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(8, 1, 1, 20000, '2022-07-14 10:32:05'),
(9, 6, 210, 20000, '2022-07-14 11:42:43'),
(11, 5, 3420, 30000, '2022-07-15 10:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(7, 'Sindh'),
(6, 'Punjab'),
(3, 'Gilgit Baltistan'),
(5, 'Kyber-Pukhtoonkhwa'),
(4, 'ICT-islamabad'),
(2, 'Baloachistan'),
(1, 'AJK');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(6, 3, '10806121', 0x3a3a31, '', '', '2020-07-20 14:56:45'),
(7, 4, 'zia2450@gmail.com', 0x3a3a31, '', '', '2022-07-13 05:30:08'),
(8, 4, 'zia2450@gmail.com', 0x3a3a31, '', '', '2022-07-13 05:30:16');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `middleName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `contactNo` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) DEFAULT NULL,
  `passUdateDate` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(3, '10806121', 'Anuj', '', 'kumar', 'male', 1234567890, 'test@gmail.com', 'Test@123', '2020-07-20 14:56:18', NULL, NULL),
(4, '345345', 'zia', '', 'ullah', 'male', 3464545436345, 'zia2450@gmail.com', 'admin', '2022-07-13 05:28:27', NULL, NULL),
(5, '01', 'zia', '', 'ullah', 'male', 3488381490, 'zia.ullah60@outlook.com', '03488381490', '2022-07-14 10:27:23', NULL, NULL),
(6, '342352`', 'zia', '', 'ullah', 'male', 30958039523, '234234234@sdg.cpm', '30958039523', '2022-07-14 11:51:37', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_no` (`room_no`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
