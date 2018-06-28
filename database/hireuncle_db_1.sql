-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2017 at 08:05 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
-- Database: `coerportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaintcounter`
--

CREATE TABLE IF NOT EXISTS `complaintcounter` (
  `complaintid` varchar(10) NOT NULL,
  `coerid` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintcounter`
--

INSERT INTO `complaintcounter` (`complaintid`, `coerid`) VALUES
('81', '14041056'),
('90', '14041056');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE IF NOT EXISTS `complaints` (
  `complaintid` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `coerid` int(11) NOT NULL,
  `subject` text NOT NULL,
  `complaint` text NOT NULL,
  `category` varchar(50) NOT NULL,
  `privacy` varchar(10) NOT NULL,
  `count` int(11) DEFAULT '1',
  `complaintstatus` varchar(20) NOT NULL DEFAULT 'UR',
  `warden` varchar(30) NOT NULL,
  `hostel` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `present` varchar(1) NOT NULL DEFAULT 'y',
  `wcomment` text NOT NULL,
  `wdate` date NOT NULL,
  `wtime` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`complaintid`, `name`, `coerid`, `subject`, `complaint`, `category`, `privacy`, `count`, `complaintstatus`, `warden`, `hostel`, `date`, `time`, `present`, `wcomment`, `wdate`, `wtime`) VALUES
(74, 'Pranjal Majumdar', 14041011, 'Hostel Power Supply', 'The power supply of hostel is not good.', 'Hostel', 'Yes', 1, 'RE', 'MDV', 'SWE', '2016-01-29', '18:39:58', 'n', 'Response Awaited.', '0000-00-00', '00:00:00'),
(75, 'Pranjal Majumdar', 14041011, 'jdsghsgh', 'lgdsfgluhlsuigh', 'Campus', 'Yes', 1, 'RE', 'MDV', 'ASK', '2016-01-29', '20:21:34', 'n', 'Response Awaited.', '0000-00-00', '00:00:00'),
(76, 'Pranjal Majumdar', 14041011, 'dgdfdfgdrgdr', 'sdgsdgsdg', 'Campus', 'Yes', 1, 'RE', 'MDV', 'ASK', '2016-01-29', '20:27:35', 'n', 'Response Awaited.', '0000-00-00', '00:00:00'),
(77, 'Pankaj Joshi', 14041080, 'Food Is Just Disgusting', 'dgsdgsd;gojsgjk', 'Mess', 'Yes', 1, 'RE', 'MDV', 'KKB', '2016-01-31', '13:54:20', 'n', 'Okay ', '2016-02-12', '18:29:43'),
(78, 'Neelesh Bhakt', 14041043, 'Food Is Horrible', 'Food is just disgusting.\r\nImprove it as soon as possible. :P', 'Mess', 'Yes', 1, 'RE', 'MDV', 'KKB', '2016-02-07', '13:51:29', 'n', 'Response Awaited.', '0000-00-00', '00:00:00'),
(79, 'Pranjal Majumdar', 14041011, 'Hello', 'Hello Hello Hello', 'Campus', 'Yes', 1, 'RE', 'DN-EX', 'ASK', '2016-02-14', '22:50:01', 'n', 'Response Awaited.', '0000-00-00', '00:00:00'),
(80, 'UmangGupta', 14041022, 'The Mess Food is Horrible !!', 'kjsafafjkabdsjkfbakjf', 'Mess', 'No', 1, 'RE', 'DN-EX', 'KKB', '2016-02-15', '11:50:11', 'n', 'Response Awaited.', '0000-00-00', '00:00:00'),
(81, 'Tarpit Sahu', 14041056, 'WiFi Coverage Is Not Good !!', 'The Wifi Speed in Guptisagar block is not good. Pls increase the speed of the wifi.', 'Hostel', 'Yes', 2, 'UR', 'DN-SW', 'GSB', '2016-02-16', '14:46:15', 'y', 'We have received your problem', '2016-02-16', '16:52:17'),
(82, 'Tarpit Sahu', 14041056, 'Power Supply', 'Power Supply Is Very Poor', 'Hostel', 'No', 1, 'RE', 'DN-SW', 'KKB', '2016-02-16', '16:46:24', 'n', 'Response Awaited.', '0000-00-00', '00:00:00'),
(83, 'Tarpit Sahu', 14041056, 'Mess Food Is ...', 'kjbszfjkbkjbzkj', 'Mess', 'No', 1, 'UR', 'DN-SW', 'GSB', '2016-02-16', '16:53:21', 'n', 'the complaint has been received', '2016-02-17', '14:42:10'),
(84, 'Tarpit Sahu', 14041056, 'kgiu', 'guiug', 'Hostel', 'Yes', 1, 'UR', 'DN-ACD', 'ASK', '2016-02-16', '16:53:56', 'n', 'Response Awaited.', '0000-00-00', '00:00:00'),
(85, 'Tarpit Sahu', 14041056, 'ihoiho', 'ouigoiugh', 'Hostel', 'Yes', 1, 'UR', 'DN-ACD', 'TWT', '2016-02-16', '16:54:15', 'n', 'Response Awaited.', '0000-00-00', '00:00:00'),
(86, 'Tarpit Sahu', 14041056, 'Power Supply', 'Powersupply is poor', 'Campus', 'Yes', 1, 'RE', 'DN-ACD', 'GSB', '2016-02-17', '14:39:51', 'y', 'Response Awaited.', '0000-00-00', '00:00:00'),
(87, 'Tarpit Sahu', 14041056, 'Power Supply', 'ajsdgashgdgjh', 'Hostel', 'No', 1, 'RE', 'DN-ACD', 'GSB', '2016-03-15', '13:26:32', 'n', 'Response Awaited.', '0000-00-00', '00:00:00'),
(88, 'Ushakant Sharma', 140411104, 'Bijli nahi aati', 'itni fees le rakhi hai in logo ne kam se kam ek pankha chalane k liye bijli to dedo c*****', 'Hostel', 'Yes', 1, 'UR', 'MDV', 'KKB', '2016-04-01', '16:27:08', 'n', 'Response Awaited.', '0000-00-00', '00:00:00'),
(89, 'Tarpit Sahu', 14041056, 'The Mess food quality is not good', 'The mess foo quality is degrading day by day. Even after so many complaints, the situation is as it is.\r\nPlease look forward into the complaint. ', 'Hostel', 'Yes', 1, 'UR', 'DN-ACD', 'KKB', '2016-04-05', '14:14:38', 'y', 'Response Awaited.', '0000-00-00', '00:00:00'),
(90, 'Tarpit Sahu', 14041056, 'Drinking Water Problem', 'Clean drinking water is not present in the college hostel. Most of the water coolers are not working and the ones which are working are not cleaned at regular basis.\r\n', 'Others', 'Yes', 2, 'RE', 'DN-EX', 'ASK', '2016-04-05', '14:16:41', 'y', 'Response Awaited.', '0000-00-00', '00:00:00'),
(91, 'kMonish', 1341038, 'Machchar hore', 'All Out lagao,Machchar bhagao', 'Hostel', 'Yes', 1, 'UR', 'MDV', 'GSB', '2016-07-19', '11:54:01', 'y', 'Response Awaited.', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(80) NOT NULL COMMENT 'User Name',
  `coerid` varchar(11) NOT NULL COMMENT 'COER Identity Number',
  `password` varchar(26) NOT NULL,
  `email` varchar(255) NOT NULL COMMENT 'User''s EMail ID',
  `mobilenumber` varchar(10) NOT NULL COMMENT 'User''s Mobile Number',
  `userstatus` varchar(7) DEFAULT NULL COMMENT 'User''s Status',
  `year` tinyint(4) DEFAULT NULL COMMENT 'Year',
  `initials` varchar(10) DEFAULT '',
  `address` varchar(255) DEFAULT NULL,
  `course` varchar(10) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL,
  `counter` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Main Table to hold the records of all the registered users.';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `coerid`, `password`, `email`, `mobilenumber`, `userstatus`, `year`, `initials`, `address`, `course`, `question`, `answer`, `counter`) VALUES
('A Yadav', '12309810', 'A@123asdf', 'yadav@coer.com', '9897223344', 'warden', NULL, 'DN-ACD', '', '', 'My Admission No', '1658', 8),
('V K Mehta', '12312300', 'V@123asdf', 'vkmehta@coer.com', '9412312312', 'warden', NULL, 'DN-EX', '', '', 'My Favourite Book', 'chemistry', 9),
('Anant ', '13410359', 'Anant2015*', 'amd.anant@gmail.com', '7376600005', 'student', 3, '13410359', 'GSB-303', 'B.Tech', 'lol', 'lol', 0),
('kMonish', '1341038', 'M@123asdf', 'monish@gmail.com', '9897889905', 'student', 4, '1341038', 'Haldwani', 'BTech', 'My GF Name', 'pinki', 1),
('PrashantNegi', '14041000', 'P@123asdf', 'prashant@coer.com', '9897989745', 'student', 2, '14041000', 'Haridwar', 'Btech', 'My Pet Name', 'negi', 0),
('Pranjal Majumdar', '14041011', 'P@123asdf', 'pranjalthecr@gmail.com', '9874567410', 'student', 2, '14041011', 'Nawaabo Ki Gali, Lucknow', 'BTech', 'My favorite color', 'red', 4),
('UmangGupta', '14041022', 'U@123asdf', 'umang@coer.com', '9897989712', 'student', 2, '14041022', 'Saharanpur', 'B Tech', 'My Pet Name', 'mangu', 1),
('Neelesh Bhakt', '14041043', 'N@123asdf', 'neelesh@gmail.com', '1231231234', 'student', 2, '14041043', 'Nainital', 'Btech', 'My JEE Rank', '120', 1),
('Tarpit Sahu', '14041056', 'T@123asdf', 'tarpitsahu@gmail.com', '9410892916', 'student', 2, '14041056', 'Sahu Niwas, Upper Road, Haridwar', 'B Tech', 'My Admission Number of DAV', '1658', 9),
('Xyz Abc', '14041057', 'V@123asdf', 'xyzabc@coer.com', '9897123321', 'warden', NULL, 'DN-SW', '', '', 'My first school name', 'DAV', 3),
('Pankaj Joshi', '14041080', 'P@123asdf', 'pankaj@joshi.com', '9412345678', 'student', 3, '14041080', 'Rudrapur', 'B Tech', 'my first pet', 'tommy', 1),
('Yogesh', '14041088', 'Y@123asdf', 'yogesh@coer.com', '9897989700', 'student', 2, '14041088', 'Dehradun', 'BTECH', 'My Pet Name', 'yogi', 0),
('Ushakant Sharma', '140411104', 'U@123asdf', 'ushakantsharma5@gmail.com', '9897456123', 'student', 2, '140411104', 'V & P Bulandshahar, Ghaziabad, UP', 'BTech', 'My crush name', 'navyu', 1),
('vanshika', '14042010', '12345', 'hhpion', '784t0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Mayank Dev', '147852963', 'M@123asdf', 'mayank_coer@yahoo.in', '9415975300', 'warden', NULL, 'MDV', '', '', 'What is my favorite pokemon', 'pikachu', 1),
('shrishantanau', '150999789', 'sfdsdf', 'shdfgksgdk', '9897562345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('xyzhxvhzx', '44444444', 'X@123asdf', 'asshjs@coer.com', '9897989700', 'warden', NULL, 'ASDF', '', '', 'dfgrg', 'dfgdgf', 0),
('Shubhamsingh', '54654', '564', '4', '554', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Ushakant', '64102030', 'U@123asdf', 'ushakant@gmail.com', '9897456321', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Peeyusgh', '646513', 'abc', 'hjgjhg', 'jhgjhg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Peeyusghnbc', '6465134545', 'nbn', 'hjgjhg', 'jhgjhg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('Dr ABC Singh', '9410892', 'A@123asdf', 'drabc_coer@gmail.com', '9897562365', 'warden', NULL, 'DN-R&D', '', '', 'My High School Percentage', '90', 0),
('Mr XYZ', '99887766', 'X@123asdf', 't@coer.com', '9897989700', 'warden', NULL, 'mnbp', '', '', 'jjshj', 'kjhjkhkj', 0),
('admin', 'admin', 'A@123asdf', 'admin@coer.co.in', '9897208308', 'admin', NULL, 'ADM', 'COER, Roorkee', '', 'What was my rank in JEE ?', '70000', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`complaintid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`coerid`),
  ADD UNIQUE KEY `initials` (`initials`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `complaintid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;--
-- Database: `hireuncle`
--

-- --------------------------------------------------------

--
-- Table structure for table `employeedata`
--

CREATE TABLE IF NOT EXISTS `employeedata` (
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobileno` bigint(11) NOT NULL,
  `aadharno` bigint(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` int(11) NOT NULL,
  `skill` varchar(30) NOT NULL,
  `exp` int(11) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '0',
  `numrating` int(11) NOT NULL DEFAULT '0',
  `avgrating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employeedata`
--

INSERT INTO `employeedata` (`username`, `name`, `password`, `mobileno`, `aadharno`, `email`, `address`, `city`, `state`, `skill`, `exp`, `rating`, `numrating`, `avgrating`) VALUES
('p', 'p', '4a2bd1f09a89409c5df8716d75fe1a54', 2147483647, 2147483647, 'p@gm.com', 'sds', 'kjb', 1, '1', 2, 0, 0, 0),
('peeyush1', 'peeyush1', '3fc0a7acf087f549ac2b266baf94b8b1', 7417233836, 123456789123, 'sahupeeyushsahu@gmail.com', 'ssahu niwas', 'har', 17, '5', 2, 0, 0, 0),
('peeyush1', 'peeyush1', '006d2143154327a64d86a264aea225f3', 7417233836, 123456789123, 'sahupeeyushsahu@gmail.com', 'ssahu niwas', 'har', 17, '5', 2, 0, 0, 0),
('peeyush1', 'peeyush1', '76d80224611fc919a5d54f0ff9fba446', 7417233836, 123456789123, 'sahupeeyushsahu@gmail.com', 'ssahu niwas', 'har', 17, '5', 2, 0, 0, 0),
('saqe', 'saqe', '3fc0a7acf087f549ac2b266baf94b8b1', 7417233836, 123456789123, 'sahu@gmail.com', 'kjsh', 'kjhk', 1, '10', 1, 0, 0, 0),
('Ramesh1', 'Romesh', 'pankha@bulb', 7777888800, 120013001400, 'jhaadu@pocha.com', 'pehelwanpur', 'champak', 10, '4', 2, 0, 0, 0),
('Ramesh2', 'Romesh', 'pankha@bulb', 7777888800, 120013001400, 'jhaadu@pocha.com', 'pehelwanpur', 'champak', 10, '4', 2, 0, 0, 0),
('Ramesh3', 'Romesh', 'pankha@bulb', 7777888800, 120013001400, 'jhaadu@pocha.com', 'pehelwanpur', 'champak', 10, '4', 2, 0, 0, 0),
('Ramesh4', 'Romesh', 'pankha@bulb', 7777888800, 120013001400, 'jhaadu@pocha.com', 'pehelwanpur', 'champak', 10, '4', 2, 0, 0, 0),
('Ramesh5', 'Romesh', 'pankha@bulb', 7777888800, 120013001400, 'jhaadu@pocha.com', 'pehelwanpur', 'champak', 10, '4', 2, 0, 0, 0),
('Ramesh6', 'Romesh', 'pankha@bulb', 7777888800, 120013001400, 'jhaadu@pocha.com', 'pehelwanpur', 'champak', 10, '4', 2, 0, 0, 0),
('Ramesh7', 'Romesh', 'pankha@bulb', 7777888800, 120013001400, 'jhaadu@pocha.com', 'pehelwanpur', 'champak', 10, '4', 2, 0, 0, 0),
('Ramesh8', 'Romesh', 'pankha@bulb', 7777888800, 120013001400, 'jhaadu@pocha.com', 'pehelwanpur', 'champak', 10, '4', 2, 0, 0, 0),
('zsafasf', 'asdas fasfasf', '3fc0a7acf087f549ac2b266baf94b8b1', 7417233836, 123456789123, 'sahu.gayatri123@gmail.com', 'sadfa', 'sdsadf', 17, '9', 2, 0, 0, 0),
('sahupeeyush', 'peeyush sahu', '3fc0a7acf087f549ac2b266baf94b8b1', 7417233836, 123456789123, 'sahu@sahu.com', '''); 1=1', 'Haridwar', 17, '9', 2, 0, 0, 0),
('sahu', 'sahu', '3fc0a7acf087f549ac2b266baf94b8b1', 7417233836, 123456789123, 'sahu@sahu.com', 'sahu niwas', 'haridwar', 1, '0', 2, 0, 0, 0),
('khan', 'khan', '3fc0a7acf087f549ac2b266baf94b8b1', 7417233836, 123123123123, 'khan@khna.com', 'khanpur', 'salimpur', 17, 'Carpet Cleaner', 3, 3, 0, 0),
('tarpit', 'tarpitji', '5be15738f2fc11a7d4f20a5096b88b24', 9410892916, 120045007800, 'dev.tarpit@gmail.com', 'sahu niwas', 'Haridwar', 35, 'Driver Service', 6, 37, 11, 3),
('lokesh', 'Lokesh Kumar', '95443d7281ffd5de4678198c471beaa1', 9897456321, 987412369874, 'lokesh@gmail.com', 'Kankhal', 'Haridwar', 35, 'Painter', 3, 0, 0, 0),
('pari', 'Lokesh Kumar', '95443d7281ffd5de4678198c471beaa1', 9897456321, 987412369874, 'lokesh@gmail.com', 'Kankhal', 'Haridwar', 35, 'Painter', 3, 0, 0, 0),
('pari', 'Lokesh Kumar', '95443d7281ffd5de4678198c471beaa1', 9897456321, 987412369874, 'lokesh@gmail.com', 'Kankhal', 'Haridwar', 35, 'Painter', 3, 0, 0, 0),
('pari', 'Lokesh Kumar', '95443d7281ffd5de4678198c471beaa1', 9897456321, 987412369874, 'lokesh@gmail.com', 'Kankhal', 'Haridwar', 35, 'Painter', 3, 0, 0, 0),
('pari', 'Lokesh Kumar', '95443d7281ffd5de4678198c471beaa1', 9897456321, 987412369874, 'lokesh@gmail.com', 'Kankhal', 'Haridwar', 35, 'Painter', 3, 0, 0, 0),
('pari', 'Lokesh Kumar', '95443d7281ffd5de4678198c471beaa1', 9897456321, 987412369874, 'lokesh@gmail.com', 'Kankhal', 'Haridwar', 35, 'Painter', 3, 0, 0, 0),
('pari', 'Lokesh Kumar', '95443d7281ffd5de4678198c471beaa1', 9897456321, 987412369874, 'lokesh@gmail.com', 'Kankhal', 'Haridwar', 35, 'Painter', 3, 0, 0, 0),
('pari', 'Lokesh Kumar', '95443d7281ffd5de4678198c471beaa1', 9897456321, 987412369874, 'lokesh@gmail.com', 'Kankhal', 'Haridwar', 35, 'Painter', 3, 0, 0, 0),
('pari', 'Lokesh Kumar', '95443d7281ffd5de4678198c471beaa1', 9897456321, 987412369874, 'lokesh@gmail.com', 'Kankhal', 'Haridwar', 35, 'Painter', 3, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `serviceid` varchar(20) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `employeeid` varchar(50) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`serviceid`, `userid`, `employeeid`, `feedback`, `date`, `rating`) VALUES
('', 'pari', '', '', '2017-10-08', 0),
('', 'pari', 'tarpit', 'bdiya bahut bdiya\r\nbahut achcha kaam kiya, kult ekdm bekaar phone hai', '2017-10-08', 4),
('tarpit3', 'pari', 'tarpit', 'bdiya bahut bdiya\r\nbahut achcha kaam kiya, kult ekdm bekaar phone hai', '2017-10-08', 4),
('tarpit3', 'pari', 'tarpit', 'wonderful work', '2017-10-08', 3),
('tarpit3', 'pari', 'tarpit', 'sdfwef', '2017-10-08', 2),
('tarpit3', 'pari', 'tarpit', 'esgsd', '2017-10-08', 1),
('tarpit3', 'pari', 'tarpit', 'sdaads', '2017-10-08', 2),
('', 'pari', '', '', '2017-10-08', 0),
('tarpit3', 'pari', 'tarpit', 'salakdhsiahdihdalisdja;odj', '2017-10-08', 5),
('', 'pari', '', '', '2017-10-08', 0),
('tarpit3', 'pari', 'tarpit', 'dsmbfdlksnfkl;.', '2017-10-08', 4),
('', 'pari', '', '', '2017-10-08', 0),
('tarpit3', 'pari', 'tarpit', 'cxxcvzlkhn.', '2017-10-08', 3),
('', 'pari', '', '', '2017-10-08', 0),
('tarpit3', 'pari', 'tarpit', 'werd;poj;l.', '2017-10-08', 5),
('tarpit3', 'pari', 'tarpit', 'skjabdasjkhdb,', '2017-10-08', 4);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `serviceid` varchar(20) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `employeeid` varchar(50) NOT NULL,
  `date` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`serviceid`, `userid`, `employeeid`, `date`, `status`) VALUES
('khan0', 'pari', 'khan', '2017-10-07', 'pending'),
('khan1', 'pari', 'khan', '2017-10-07', 'pending'),
('khan2', 'pari', 'khan', '2017-10-07', 'pending'),
('khan3', 'pari', 'khan', '2017-10-08', 'pending'),
('khan4', 'pari', 'khan', '2017-10-08', 'pending'),
('0', 'pari', '', '2017-10-08', 'pending'),
('1', 'pari', '', '2017-10-08', 'pending'),
('khan5', 'pari', 'khan', '2017-10-08', 'pending'),
('2', 'pari', '', '2017-10-08', 'pending'),
('khan6', 'pari', 'khan', '2017-10-08', 'pending'),
('tarpit0', 'pari', 'tarpit', '2017-10-08', 'pending'),
('tarpit1', 'pari', 'tarpit', '2017-10-08', 'rejected'),
('tarpit2', 'pari', 'tarpit', '2017-10-08', 'rejected'),
('khan7', 'pari', 'khan', '2017-10-08', 'pending'),
('khan8', 'pari', 'khan', '2017-10-08', 'pending'),
('3', 'pari', '', '2017-10-08', 'pending'),
('khan9', 'pari', 'khan', '2017-10-08', 'accepted'),
('khan10', 'pari', 'khan', '2017-10-08', 'pending'),
('khan11', 'pari', 'khan', '2017-10-08', 'pending'),
('tarpit3', 'pari', 'tarpit', '2017-10-08', 'accepted'),
('4', 'pari', '', '2017-10-08', 'pending'),
('5', '', '', '2017-10-08', 'pending'),
('khan12', 'pari', 'khan', '2017-10-09', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE IF NOT EXISTS `userdata` (
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobileno` bigint(10) NOT NULL,
  `aadharno` bigint(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`username`, `name`, `password`, `mobileno`, `aadharno`, `email`, `address`, `city`, `state`) VALUES
('aksjdhd1213@', 'zczcc xzcz#', '3fc0a7acf087f549ac2b266baf94b8b1', 7417233836, 123456789123, 'sahu.gayatri123@gmail.com', 'sacas', 'sacsca', 18),
('asd', 'asd', '3fc0a7acf087f549ac2b266baf94b8b1', 7417233836, 123456789123, 'sahu@sahu.com', 'sfdfd', 'haridwar', 35),
('awasf', 'sas asda', '3fc0a7acf087f549ac2b266baf94b8b1', 7417233836, 123456789123, 'sahu.gayatri123@gmail.com', 'dfsfaf', 'ssa', 14),
('pari', 'Himadri sahu', 'ed69ff2a1cc4cec40684b3627eeda3f5', 9897508608, 999999999999, 'pari@sahu.com', 'sahu niwas', 'Pokemon Nagar', 32),
('peeyusgh', 'poeeyush', '4a2bd1f09a89409c5df8716d75fe1a54', 9897208308, 120012001200, 'p@gmail.com', 'asd', 'Haridwar', 35),
('peeyush', 'sahu', 'd4395a5856617fa4afe8c5cd2eed3912', 7417233836, 123456789123, 'sahu.gayatri123@gmail.com', 'Sahu Niwas, Upper Road', 'Haridwar', 35),
('raviprakash', 'Ravi Prakash', 'e58cc3fe4b3387c893c8fc9dd43a829a', 9999988888, 147896321478, 'ravipk@gmail.com', 'Near Sabzi Mandi, Jwalapur', 'Roorkee', 35),
('sahu', 'sahu', '3fc0a7acf087f549ac2b266baf94b8b1', 7417233836, 123456789123, 'sahu@gmail.com', 'kshcgkasjg', 'haridwar', 17),
('tarpitsahu', '"); or 1=1;', '4a2bd1f09a89409c5df8716d75fe1a54', 2147483647, 2147483647, 't@g.com', 'aasd', 'asd', 35),
('tarpitsahuji', '"); or 1=1;', '4a2bd1f09a89409c5df8716d75fe1a54', 2147483647, 2147483647, 't@g.com', 'aasd', 'asd', 35),
('tarpitsahuji1', '"); or 1=1;', '4a2bd1f09a89409c5df8716d75fe1a54', 2147483647, 2147483647, 't@g.com', 'aasd', 'asd', 35);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `userdata`
--
ALTER TABLE `userdata`
  ADD PRIMARY KEY (`username`);
--
-- Database: `onlinejudge`
--

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE IF NOT EXISTS `problems` (
  `problemid` varchar(20) NOT NULL,
  `problemname` varchar(50) NOT NULL,
  `difficulty` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `timelimit` int(11) NOT NULL,
  `success` int(11) NOT NULL DEFAULT '0',
  `totalsub` int(11) NOT NULL DEFAULT '0',
  `testcases` int(11) NOT NULL DEFAULT '1',
  `status` varchar(10) NOT NULL,
  `author` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`problemid`, `problemname`, `difficulty`, `date`, `timelimit`, `success`, `totalsub`, `testcases`, `status`, `author`) VALUES
('ARJT', 'Sum Of Diagonal Elements', 'Easy', '2017-03-30', 1, 0, 15, 3, 'active', 'Arjun Tyagi'),
('DSUM', 'Sum Of Elements Of Matrix', 'Medium', '2017-03-29', 1, 3, 15, 3, 'active', 'Peeyush Sahu'),
('LTIM', 'Double Strings', 'Easy', '2017-03-29', 1, 4, 11, 3, 'active', 'Peeyush Sahu'),
('PYRAMID', 'Mystery Of Pyramids ', 'Easy', '2017-03-29', 1, 1, 4, 3, 'incative', 'tarpitsahu');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE IF NOT EXISTS `profile` (
  `name` varchar(100) NOT NULL,
  `userid` varchar(16) NOT NULL,
  `password` varchar(20) NOT NULL,
  `institute` varchar(100) NOT NULL,
  `status` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `question` varchar(150) NOT NULL,
  `answer` varchar(20) NOT NULL,
  `totalsub` int(11) NOT NULL DEFAULT '0',
  `WA` int(11) NOT NULL DEFAULT '0',
  `CTE` int(11) NOT NULL DEFAULT '0',
  `TLE` int(11) NOT NULL DEFAULT '0',
  `solved` int(11) NOT NULL DEFAULT '0',
  `partlysolved` int(11) NOT NULL DEFAULT '0',
  `regdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`name`, `userid`, `password`, `institute`, `status`, `email`, `mobile`, `question`, `answer`, `totalsub`, `WA`, `CTE`, `TLE`, `solved`, `partlysolved`, `regdate`) VALUES
('', '', '', '', 'notactive', '', '', '', '', 13, 0, 13, 0, 0, 0, '2016-09-16'),
('shantanu', '14041068', 'Shanu#18.', 'COER', 'notactive', 'shantanub1812@gmail.com', '7895877077', 'whats my pet name?', 'Alin', 1, 0, 0, 0, 1, 0, '2016-11-18'),
('Peeyush Sahu', 'peeyushsahu', 'P@123asdf', 'DAV', 'notactive', 'sahupeeyush1999@gmail.com', '7417233836', 'My favorite cartoon', 'Doraemon', 18, 1, 11, 1, 4, 1, '2016-10-25'),
('Tarpit Sahu', 'tarpitsahu', 'T@123asdf', 'COER', 'notactive', 'tarpitsahu@gmail.com', '9410892916', 'PL', 'Python', 58, 17, 25, 3, 13, 15, '2016-09-16'),
('Ushakant Sharma', 'ushakant', 'UU@123asdf', 'COER', 'notactive', 'ushakantsharma5@gmail.com', '9897208308', 'Hello How Are You', '123456', 0, 0, 0, 0, 0, 0, '2016-10-27'),
('Ushakant Sharma', 'ushakant1', 'U@123asdf', 'COER', 'notactive', 'ushakantsharma5@gmail.com', '9410992916', 'Hello How Are You', '123456', 0, 0, 0, 0, 0, 0, '2016-10-27'),
('ushikant', 'ushikant', 'U@123asdf', 'COER', 'notactive', 'ushakantsharma5@gmail.com', '1234567890', 'M', 'M', 11, 7, 2, 0, 2, 7, '2017-03-30');

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE IF NOT EXISTS `submissions` (
  `subid` varchar(100) NOT NULL,
  `subuser` varchar(100) NOT NULL,
  `subproblem` varchar(20) NOT NULL,
  `subdate` date NOT NULL,
  `result` varchar(5) NOT NULL,
  `score` int(11) NOT NULL DEFAULT '0',
  `language` varchar(15) NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`subid`, `subuser`, `subproblem`, `subdate`, `result`, `score`, `language`, `time`) VALUES
('0', '', '', '2016-10-25', 'CA', 0, 'C', '00:00:00'),
('10', '', '', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('11', '', '', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('12', '', '', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('140410680', '14041068', 'LTIM', '2016-11-18', 'CA', 100, 'C', '00:00:00'),
('4', '', '', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('5', '', '', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('6', '', '', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('7', '', '', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('8', '', '', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('9', '', '', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('peeyushsahu0', 'peeyushsahu', 'LTIM', '2016-10-25', 'TLE', 0, 'C', '00:00:00'),
('peeyushsahu1', 'peeyushsahu', 'LTIM', '2016-10-25', 'TLE', 0, 'C', '00:00:00'),
('peeyushsahu10', 'peeyushsahu', 'LTIM', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('peeyushsahu11', 'peeyushsahu', 'LTIM', '2016-10-25', 'CA', 100, 'C', '00:00:00'),
('peeyushsahu12', 'peeyushsahu', 'LTIM', '2016-10-25', 'WA', 67, 'C', '00:00:00'),
('peeyushsahu13', 'peeyushsahu', 'LTIM', '2016-10-25', 'CA', 100, 'C', '00:00:00'),
('peeyushsahu14', 'peeyushsahu', 'LTIM', '2016-10-25', 'CA', 100, 'C', '00:00:00'),
('peeyushsahu15', 'peeyushsahu', 'LTIM', '2016-10-25', 'CA', 100, 'C', '00:00:00'),
('peeyushsahu16', 'peeyushsahu', 'LTIM', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('peeyushsahu17', 'peeyushsahu', 'LTIM', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('peeyushsahu2', 'peeyushsahu', 'LTIM', '2016-10-25', 'CA', 0, 'C', '00:00:00'),
('peeyushsahu3', 'peeyushsahu', 'LTIM', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('peeyushsahu4', 'peeyushsahu', 'LTIM', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('peeyushsahu5', 'peeyushsahu', 'LTIM', '2016-10-25', 'CA', 100, 'C', '00:00:00'),
('peeyushsahu6', 'peeyushsahu', 'LTIM', '2016-10-25', 'TLE', 0, 'C', '00:00:00'),
('peeyushsahu7', 'peeyushsahu', 'LTIM', '2016-10-25', 'TLE', 0, 'C', '00:00:00'),
('peeyushsahu8', 'peeyushsahu', 'LTIM', '2016-10-25', 'TLE', 0, 'C', '00:00:00'),
('peeyushsahu9', 'peeyushsahu', 'LTIM', '2016-10-25', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu0', 'tarpitsahu', 'LTIM', '2016-10-25', 'CA', 100, 'C', '00:00:00'),
('tarpitsahu10', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu11', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu12', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu13', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu14', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu15', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu16', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu17', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu18', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu19', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu20', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu21', 'tarpitsahu', 'LTIM', '2017-03-29', 'WA', 0, 'C', '00:00:00'),
('tarpitsahu22', 'tarpitsahu', 'LTIM', '2017-03-29', 'CA', 100, 'C', '00:00:00'),
('tarpitsahu23', 'tarpitsahu', 'PYRAMID', '2017-03-29', 'WA', 0, 'C', '00:00:00'),
('tarpitsahu24', 'tarpitsahu', 'PYRAMID', '2017-03-29', 'WA', 67, 'C', '00:00:00'),
('tarpitsahu25', 'tarpitsahu', 'PYRAMID', '2017-03-29', 'CA', 100, 'C', '00:00:00'),
('tarpitsahu26', 'tarpitsahu', 'PYRAMID', '2017-03-29', 'TLE', 0, 'C', '00:00:00'),
('tarpitsahu27', 'tarpitsahu', 'DSUM', '2017-03-29', 'CA', 0, 'C', '00:00:00'),
('tarpitsahu28', 'tarpitsahu', 'DSUM', '2017-03-29', 'WA', 33, 'C', '00:00:00'),
('tarpitsahu29', 'tarpitsahu', 'DSUM', '2017-03-29', 'WA', 33, 'C', '00:00:00'),
('tarpitsahu30', 'tarpitsahu', 'DSUM', '2017-03-29', 'WA', 67, 'C', '00:00:00'),
('tarpitsahu31', 'tarpitsahu', 'DSUM', '2017-03-29', 'WA', 33, 'C', '00:00:00'),
('tarpitsahu32', 'tarpitsahu', 'DSUM', '2017-03-29', 'WA', 33, 'C', '00:00:00'),
('tarpitsahu33', 'tarpitsahu', 'DSUM', '2017-03-29', 'WA', 67, 'C', '00:00:00'),
('tarpitsahu34', 'tarpitsahu', 'DSUM', '2017-03-29', 'CA', 100, 'C', '00:00:00'),
('tarpitsahu35', 'tarpitsahu', 'DSUM', '2017-03-29', 'WA', 67, 'C', '00:00:00'),
('tarpitsahu36', 'tarpitsahu', 'DSUM', '2017-03-29', 'WA', 67, 'C', '00:00:00'),
('tarpitsahu37', 'tarpitsahu', 'DSUM', '2017-03-29', 'CA', 100, 'C', '00:00:00'),
('tarpitsahu38', 'tarpitsahu', 'DSUM', '2017-03-29', 'TLE', 0, 'C', '00:00:00'),
('tarpitsahu39', 'tarpitsahu', 'DSUM', '2017-03-29', 'WA', 33, 'C', '00:00:00'),
('tarpitsahu4', 'tarpitsahu', 'LTIM', '2016-10-27', 'TLE', 0, 'C', '00:00:00'),
('tarpitsahu40', 'tarpitsahu', 'DSUM', '2017-03-29', 'WA', 33, 'C', '00:00:00'),
('tarpitsahu41', 'tarpitsahu', 'DSUM', '2017-03-29', 'CA', 100, 'C', '00:00:00'),
('tarpitsahu42', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu43', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu44', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu45', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu46', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu47', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '00:00:00'),
('tarpitsahu48', 'tarpitsahu', 'LTIM', '2017-03-29', 'CTE', 0, 'C', '19:20:35'),
('tarpitsahu49', 'tarpitsahu', 'DSUM', '2017-03-29', 'CTE', 0, 'C', '19:22:31'),
('tarpitsahu5', 'tarpitsahu', 'LTIM', '2016-11-03', 'CA', 100, 'C', '00:00:00'),
('tarpitsahu50', 'tarpitsahu', 'ARJT', '2017-03-30', 'WA', 33, 'C', '14:32:58'),
('tarpitsahu51', 'tarpitsahu', 'ARJT', '2017-03-30', 'WA', 67, 'C', '14:33:52'),
('tarpitsahu52', 'tarpitsahu', 'ARJT', '2017-03-30', 'CTE', 0, 'C', '14:36:00'),
('tarpitsahu53', 'tarpitsahu', 'ARJT', '2017-03-30', 'WA', 33, 'C', '14:36:18'),
('tarpitsahu54', 'tarpitsahu', 'ARJT', '2017-03-30', 'WA', 33, 'C', '14:40:20'),
('tarpitsahu55', 'tarpitsahu', 'LTIM', '2017-03-31', 'CA', 100, 'C', '13:13:41'),
('tarpitsahu56', 'tarpitsahu', 'LTIM', '2017-03-31', 'CA', 100, 'C', '13:21:21'),
('tarpitsahu57', 'tarpitsahu', 'ARJT', '2017-10-09', 'CTE', 0, 'C', '13:05:33'),
('tarpitsahu6', 'tarpitsahu', 'LTIM', '2016-11-03', 'CA', 100, 'C', '00:00:00'),
('tarpitsahu7', 'tarpitsahu', 'LTIM', '2016-11-03', 'CA', 100, 'C', '00:00:00'),
('tarpitsahu8', 'tarpitsahu', 'LTIM', '2016-11-03', 'CA', 100, 'C', '00:00:00'),
('tarpitsahu9', 'tarpitsahu', 'LTIM', '2016-11-18', 'CA', 100, 'C', '00:00:00'),
('ushikant0', 'ushikant', 'LTIM', '2017-03-30', 'CA', 100, 'C', '13:47:21'),
('ushikant1', 'ushikant', 'ARJT', '2017-03-30', 'CTE', 0, 'C', '14:04:19'),
('ushikant10', 'ushikant', 'ARJT', '2017-03-30', 'WA', 33, 'C', '14:28:19'),
('ushikant2', 'ushikant', 'ARJT', '2017-03-30', 'CTE', 0, 'C', '14:04:40'),
('ushikant3', 'ushikant', 'ARJT', '2017-03-30', 'WA', 33, 'C', '14:06:07'),
('ushikant4', 'ushikant', 'ARJT', '2017-03-30', 'WA', 33, 'C', '14:06:50'),
('ushikant5', 'ushikant', 'ARJT', '2017-03-30', 'WA', 33, 'C', '14:19:23'),
('ushikant6', 'ushikant', 'ARJT', '2017-03-30', 'WA', 33, 'C', '14:20:16'),
('ushikant7', 'ushikant', 'LTIM', '2017-03-30', 'CA', 100, 'C', '14:21:24'),
('ushikant8', 'ushikant', 'ARJT', '2017-03-30', 'WA', 33, 'C', '14:22:15'),
('ushikant9', 'ushikant', 'ARJT', '2017-03-30', 'WA', 33, 'C', '14:27:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `problems`
--
ALTER TABLE `problems`
  ADD PRIMARY KEY (`problemid`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`subid`);
--
-- Database: `pattu`
--

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE IF NOT EXISTS `testing` (
  `empid` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`empid`, `salary`) VALUES
(101, NULL),
(102, 1000),
(103, 2000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uname` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uname`, `email`, `password`, `date`, `time`) VALUES
('', '', '', '0000-00-00', '00:00:00'),
('ankitsharma', 'ankit@yahoo.com', '123abcdeff', '0000-00-00', '00:00:00'),
('peeyush', 'coder@yahoo.com', 'coder@123', '0000-00-00', '00:00:00'),
('goku', 'dragon@kmail.com', 'pokemon', '0000-00-00', '00:00:00'),
('pokemonpokemonpokemonpokemonpokemonpokemonpokemonpokemonpokemonpokemonpokemonpokemonpokemonpokemonpokemonpokemonpokemonpokemonpokemondigimondigimondigimondigimondigimondigimondigimondigimondigimon', 'lspfjaoj', '456464', '0000-00-00', '00:00:00'),
('tarpitsasdssdsd', 'mynnnnnnnnmynnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', 'sdsdsds', '0000-00-00', '00:00:00'),
('tarpit', 'mynnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn', 'dsfsd', '0000-00-00', '00:00:00'),
('pokemon', 'p@p.com', 'pokpl', '0000-00-00', '00:00:00'),
('tarpitsahu', 'pok@gmail.com', '123565', '0000-00-00', '00:00:00'),
('hello', 'poke@poke.com', 'hello', '0000-00-00', '00:00:00'),
('hello', 'pokemon@pikachu.com', 'jadugar', '0000-00-00', '00:00:00'),
('pokemon', 'pop@opo.com', 'ljsljl', '0000-00-00', '00:00:00'),
('tarpit', 'sahu@gmail.com', 'pokemon', '0000-00-00', '00:00:00'),
('digimondigimondigimondigimondigimondigimondigimondigimondigimondigimondigimon<br>pokemonpokemonpokemon', 'sdfa', '415343', '0000-00-00', '00:00:00'),
('tarpitsahu', 'tarpitsahu@gmail.com', 'password', '0000-00-00', '00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` tinyint(5) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `date`) VALUES
(1, 'admin', 'admin', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE IF NOT EXISTS `cashier` (
  `cashier_id` tinyint(5) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `staff_id` varchar(10) NOT NULL,
  `postal_address` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`cashier_id`, `first_name`, `last_name`, `staff_id`, `postal_address`, `phone`, `email`, `username`, `password`, `date`) VALUES
(4, 'gfhf', 'ewdsc', '67hhtf', '45 nhyfg', '65424579', 'will@henry.com', 'gty', 'getty', '2013-11-23 12:54:49'),
(5, 'Sam', 'Osoro', 'Pharmacy/C', '76 nairobi', '09865468', 'samwel@pharmacy.com', 'sam', '1234', '2013-11-25 20:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `invoice_id` int(5) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `served_by` varchar(15) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'Unpaid',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `customer_name`, `served_by`, `status`, `date`) VALUES
(10, 'Sigar', 'osoro', 'Pending', '2013-12-10 11:19:42'),
(11, 'Jalas', 'osoro', 'Pending', '2013-12-10 11:28:59'),
(12, 'Abuto', 'osoro', 'Pending', '2013-12-10 12:19:02'),
(13, 'Andre', 'osoro', 'Pending', '2013-12-10 12:25:19'),
(14, 'William', 'osoro', 'Pending', '2013-12-10 12:29:38'),
(15, 'Osoro', 'osoro', 'Pending', '2013-12-10 12:39:51'),
(16, 'Sam Osoro', 'osoro', 'Pending', '2013-12-10 12:49:45'),
(17, 'Peter Nyaisa', 'osoro', 'Pending', '2013-12-10 12:51:48'),
(18, 'Gtyhd', 'osoro', 'Pending', '2013-12-12 19:20:44'),
(19, 'Jay-z', 'osoro', 'Pending', '2013-12-12 20:34:51');

--
-- Triggers `invoice`
--
DELIMITER $$
CREATE TRIGGER `tarehe` AFTER INSERT ON `invoice`
 FOR EACH ROW BEGIN
     SET @date=NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE IF NOT EXISTS `invoice_details` (
  `id` tinyint(5) NOT NULL,
  `invoice` int(5) NOT NULL,
  `drug` tinyint(5) NOT NULL,
  `cost` int(5) DEFAULT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `invoice`, `drug`, `cost`, `quantity`) VALUES
(2, 10, 5, 5, 12),
(3, 11, 5, 5, 12),
(5, 11, 6, 120, 12),
(6, 12, 5, 5, 15),
(7, 12, 6, 120, 17),
(9, 12, 7, 250, 15),
(10, 12, 8, 15, 15),
(11, 12, 9, 1, 20),
(13, 13, 5, 5, 5),
(14, 13, 6, 120, 10),
(15, 13, 7, 250, 20),
(16, 13, 8, 15, 16),
(17, 13, 9, 1, 10),
(19, 14, 5, 5, 5),
(20, 15, 5, 5, 12),
(21, 16, 5, 5, 30),
(22, 16, 6, 120, 10),
(23, 17, 5, 5, 10),
(24, 17, 8, 15, 60),
(25, 18, 5, 5, 12),
(26, 18, 6, 120, 15),
(27, 19, 5, 5, 12),
(28, 19, 6, 120, 15),
(29, 19, 8, 15, 20),
(30, 19, 9, 1, 20);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `manager_id` tinyint(5) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `staff_id` varchar(10) NOT NULL,
  `postal_address` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`manager_id`, `first_name`, `last_name`, `staff_id`, `postal_address`, `phone`, `email`, `username`, `password`, `date`) VALUES
(1, 'Samwel', 'Osoro', 'sam/pharm', '456 Kabu', '0789653417', 'samoso@pharmacy.com', 'samoso', '12345', '2013-12-10 14:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttypes`
--

CREATE TABLE IF NOT EXISTS `paymenttypes` (
  `id` tinyint(5) NOT NULL,
  `Name` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymenttypes`
--

INSERT INTO `paymenttypes` (`id`, `Name`) VALUES
(1, 'Cash'),
(2, 'Credit card'),
(3, 'Mobile Money'),
(4, 'Cheque'),
(5, '');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE IF NOT EXISTS `pharmacist` (
  `pharmacist_id` tinyint(5) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `staff_id` varchar(10) NOT NULL,
  `postal_address` varchar(20) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `email` varchar(20) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`pharmacist_id`, `first_name`, `last_name`, `staff_id`, `postal_address`, `phone`, `email`, `username`, `password`, `date`) VALUES
(5, 'Sam', 'Osoro', 'Pharmacy/1', '56 Kabu', '0789653412', 'sam@pharmacysys.com', 'osoro', '1234', '2013-11-24 17:18:51');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE IF NOT EXISTS `prescription` (
  `id` tinyint(5) NOT NULL,
  `prescription_id` int(5) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `postal_address` varchar(20) NOT NULL,
  `invoice_id` tinyint(5) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `prescription_id`, `customer_id`, `customer_name`, `age`, `sex`, `postal_address`, `invoice_id`, `phone`, `date`) VALUES
(4, 1002, 254678, 'Andre', 0, 'male', '45 eldy', 13, '0987643524', '2013-12-10 12:25:19'),
(9, 1003, 6765, 'Gtyhd', 45, 'Male', '664466447744 Njy', 18, '887998', '2013-12-12 19:20:44'),
(10, 1004, 1678, 'Jay-z', 45, 'Male', '123 Brooklyn', 19, '088721313', '2013-12-12 20:34:50');

--
-- Triggers `prescription`
--
DELIMITER $$
CREATE TRIGGER `taree` AFTER INSERT ON `prescription`
 FOR EACH ROW BEGIN
SET@date=NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_details`
--

CREATE TABLE IF NOT EXISTS `prescription_details` (
  `id` tinyint(5) NOT NULL,
  `pres_id` int(5) NOT NULL,
  `drug_name` tinyint(5) NOT NULL,
  `strength` varchar(15) NOT NULL,
  `dose` varchar(15) NOT NULL,
  `quantity` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription_details`
--

INSERT INTO `prescription_details` (`id`, `pres_id`, `drug_name`, `strength`, `dose`, `quantity`) VALUES
(2, 999, 5, '10 gms', '1x2', 12),
(3, 1000, 5, '10 gms', '1x2', 12),
(5, 1000, 6, '150 gms', '1x4', 12),
(6, 1001, 5, '20 gms', '2x3', 15),
(7, 1001, 6, '30 gms', '2x4', 17),
(9, 1001, 7, '50 gms', '1x3', 15),
(10, 1001, 8, '40 gms', '1x3', 15),
(11, 1001, 9, '15 gms', '2x3', 20),
(13, 1002, 5, '50 gms', '2X3', 5),
(14, 1002, 6, '150 gms', '2X3', 10),
(15, 1002, 7, '20 gms', '2X3', 20),
(16, 1002, 8, '15 gms', '2X3', 16),
(17, 1002, 9, '10 gms', '2X3', 10),
(19, 1003, 5, '50 gms', '1x2', 5),
(20, 1004, 5, '12', '1x2', 12),
(21, 1005, 5, '20 gms', '2x3', 30),
(22, 1005, 6, '40 gms', '1x3', 10),
(23, 1006, 5, '12 gms', '1x3', 10),
(24, 1006, 8, '15 gms', '1x3', 60),
(25, 1003, 5, '20 gms', '1x3', 12),
(26, 1003, 6, '30 gms', '1x2', 15),
(27, 1004, 5, '20 gms', '1x3', 12),
(28, 1004, 6, '150 gms', '1x4', 15),
(29, 1004, 8, '120 gms', '1x3', 20),
(30, 1004, 9, '10 gms', '2x3', 20);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE IF NOT EXISTS `receipts` (
  `reciptNo` int(10) NOT NULL,
  `customer_id` varchar(10) NOT NULL,
  `total` int(10) NOT NULL,
  `payType` varchar(10) NOT NULL,
  `serialno` varchar(10) DEFAULT NULL,
  `served_by` varchar(15) NOT NULL,
  `date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`reciptNo`, `customer_id`, `total`, `payType`, `serialno`, `served_by`, `date`) VALUES
(0, '', 1500, '', '', 'sam', '0000-00-00 00:00:00'),
(999, '', 1350, '', '', 'sam', '0000-00-00 00:00:00');

--
-- Triggers `receipts`
--
DELIMITER $$
CREATE TRIGGER `siku` AFTER INSERT ON `receipts`
 FOR EACH ROW BEGIN
     SET @date=NOW();
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE IF NOT EXISTS `stock` (
  `stock_id` tinyint(5) NOT NULL,
  `drug_name` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `company` varchar(20) NOT NULL,
  `supplier` varchar(20) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` int(11) NOT NULL,
  `status` enum('Available','Inavailable') NOT NULL,
  `date_supplied` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`stock_id`, `drug_name`, `category`, `description`, `company`, `supplier`, `quantity`, `cost`, `status`, `date_supplied`) VALUES
(5, 'Piriton', 'tablet', 'Painkiller', 'SB', 'SB', 1000, 5, 'Available', '2013-11-30'),
(6, 'Dual Cotexin', 'tablet', 'Malaria', 'GX', 'Clinix', 150, 120, 'Available', '2013-11-30'),
(7, 'Naproxen', 'Tablet', 'Reproductive', 'Family Health', 'Stopes', 250, 250, 'Available', '2013-11-30'),
(8, 'Flagi', 'talet', 'Digestive', 'GX', 'Clinix', 657, 15, 'Available', '2013-11-30'),
(9, 'Actal', 'Tablet', 'Stomach Reliev', 'GX', 'Clinix', 1000, 1, 'Available', '2013-12-06');

-- --------------------------------------------------------

--
-- Table structure for table `tempprescri`
--

CREATE TABLE IF NOT EXISTS `tempprescri` (
  `id` tinyint(5) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `postal_address` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `drug_name` varchar(30) NOT NULL,
  `strength` varchar(30) NOT NULL,
  `dose` varchar(30) NOT NULL,
  `quantity` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`cashier_id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stocks` (`drug`),
  ADD KEY `invoices` (`invoice`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`manager_id`);

--
-- Indexes for table `paymenttypes`
--
ALTER TABLE `paymenttypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`pharmacist_id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`,`prescription_id`);

--
-- Indexes for table `prescription_details`
--
ALTER TABLE `prescription_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dsfd` (`drug_name`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`reciptNo`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stock_id`);

--
-- Indexes for table `tempprescri`
--
ALTER TABLE `tempprescri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` tinyint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `cashier_id` tinyint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `manager_id` tinyint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `paymenttypes`
--
ALTER TABLE `paymenttypes`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `pharmacist_id` tinyint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `prescription_details`
--
ALTER TABLE `prescription_details`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stock_id` tinyint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tempprescri`
--
ALTER TABLE `tempprescri`
  MODIFY `id` tinyint(5) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD CONSTRAINT `invoices` FOREIGN KEY (`invoice`) REFERENCES `invoice` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stocks` FOREIGN KEY (`drug`) REFERENCES `stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `prescription_details`
--
ALTER TABLE `prescription_details`
  ADD CONSTRAINT `dsfd` FOREIGN KEY (`drug_name`) REFERENCES `stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"onlinejudge","table":"profile"},{"db":"hireuncle","table":"userdata"},{"db":"hireuncle","table":"request"},{"db":"hireuncle","table":"feedback"},{"db":"hireuncle","table":"employeedata"},{"db":"justdial","table":"request"},{"db":"justdial","table":"employeedata"},{"db":"justdial","table":"feedback"},{"db":"justdial","table":"userdata"},{"db":"justdial","table":"employeeprofile"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
  `id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'coerportal', 'users', '[]', '2016-10-14 04:36:52'),
('root', 'coerportal', 'complaints', '{"sorted_col":"`warden` ASC"}', '2016-01-29 13:00:14'),
('root', 'onlinejudge', 'problems', '{"sorted_col":"`testcases` ASC"}', '2017-03-29 12:41:14'),
('root', 'onlinejudge', 'submissions', '{"sorted_col":"`subdate` DESC"}', '2017-03-29 13:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2015-10-28 09:08:19', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_history`
--
ALTER TABLE `pma_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma_recent`
--
ALTER TABLE `pma_recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_relation`
--
ALTER TABLE `pma_relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma_table_info`
--
ALTER TABLE `pma_table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma_tracking`
--
ALTER TABLE `pma_tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma_users`
--
ALTER TABLE `pma_users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_history`
--
ALTER TABLE `pma_history`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `sk`
--
--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE IF NOT EXISTS `testing` (
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`date`, `time`) VALUES
('0000-00-00', '00:00:00'),
('2016-01-07', '11:20:51'),
('2016-01-07', '11:21:31');
--
-- Database: `users`
--
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_pwd`
--
ALTER TABLE `user_pwd`
  ADD PRIMARY KEY (`name`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
