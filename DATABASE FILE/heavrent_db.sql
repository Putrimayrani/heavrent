-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 22, 2024 at 10:40 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heavrent_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tms_admin`
--

CREATE TABLE `tms_admin` (
  `a_id` int(20) NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_pwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_admin`
--

INSERT INTO `tms_admin` (`a_id`, `a_name`, `a_email`, `a_pwd`) VALUES
(1, 'System Admin', 'admin@mail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tms_feedback`
--

CREATE TABLE `tms_feedback` (
  `f_id` int(20) NOT NULL,
  `f_uname` varchar(200) NOT NULL,
  `f_content` longtext NOT NULL,
  `f_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_feedback`
--

INSERT INTO `tms_feedback` (`f_id`, `f_uname`, `f_content`, `f_status`) VALUES
(4, 'Rafida  Rehan Hatta ', 'I have a great time did renting in here!', 'Published'),
(5, 'Rafidaa Rehan Hatta ', 'ssdsdsd', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tms_pwd_resets`
--

CREATE TABLE `tms_pwd_resets` (
  `r_id` int(20) NOT NULL,
  `r_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_pwd_resets`
--

INSERT INTO `tms_pwd_resets` (`r_id`, `r_email`) VALUES
(2, 'admin@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tms_syslogs`
--

CREATE TABLE `tms_syslogs` (
  `l_id` int(20) NOT NULL,
  `u_id` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_ip` varbinary(200) NOT NULL,
  `u_city` varchar(200) NOT NULL,
  `u_country` varchar(200) NOT NULL,
  `u_logintime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_syslogs`
--

INSERT INTO `tms_syslogs` (`l_id`, `u_id`, `u_email`, `u_ip`, `u_city`, `u_country`, `u_logintime`) VALUES
(1, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-21 17:39:03.884010'),
(2, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-21 17:41:58.263244'),
(3, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-21 17:56:32.192273'),
(4, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-21 18:02:28.466007'),
(5, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-21 18:29:12.848330'),
(6, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-21 19:07:25.249831'),
(7, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-21 19:21:01.069574'),
(8, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-21 23:42:08.906263'),
(9, '17', 'putridewi@gmail.com', 0x3a3a31, '', '', '2024-02-21 23:52:32.891411'),
(10, '17', 'putridewi@gmail.com', 0x3a3a31, '', '', '2024-02-21 23:52:33.070410'),
(11, '17', 'putridewi@gmail.com', 0x3a3a31, '', '', '2024-02-21 23:52:33.206483'),
(12, '17', 'putridewi@gmail.com', 0x3a3a31, '', '', '2024-02-21 23:53:49.423657'),
(13, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-22 00:18:20.761801'),
(14, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-22 02:48:03.064804'),
(15, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-22 02:48:41.778777'),
(16, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-22 02:48:48.589727'),
(17, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-22 02:49:13.448611'),
(18, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-22 02:49:26.415860'),
(19, '13', 'rafidarehattaa@gmail.com', 0x3a3a31, '', '', '2024-02-22 08:19:04.888461'),
(20, '16', 'test@gmail.com', 0x3a3a31, '', '', '2024-02-22 09:18:44.559586');

-- --------------------------------------------------------

--
-- Table structure for table `tms_user`
--

CREATE TABLE `tms_user` (
  `u_id` int(20) NOT NULL,
  `u_fname` varchar(200) NOT NULL,
  `u_lname` varchar(200) NOT NULL,
  `u_phone` varchar(200) NOT NULL,
  `u_addr` varchar(200) NOT NULL,
  `u_category` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_pwd` varchar(20) NOT NULL,
  `u_car_type` varchar(255) DEFAULT NULL,
  `u_car_regno` varchar(255) DEFAULT NULL,
  `u_car_bookdate` varchar(200) DEFAULT NULL,
  `u_car_book_status` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_user`
--

INSERT INTO `tms_user` (`u_id`, `u_fname`, `u_lname`, `u_phone`, `u_addr`, `u_category`, `u_email`, `u_pwd`, `u_car_type`, `u_car_regno`, `u_car_bookdate`, `u_car_book_status`) VALUES
(16, 'test', 'test', '0123456789', 'West Jakarta', 'User', 'test@gmail.com', 'test', '', '', '', ''),
(17, 'Putri', 'Dewi Mayyasa', '0123456', 'Central Jakarta', 'User', 'putridewi@gmail.com', '12345', '', '', '', ''),
(18, 'Putri', 'Mayrani', '123456789', 'West Jakarta', 'User', 'putrimay@gmail.com', '12345', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tms_vehicle`
--

CREATE TABLE `tms_vehicle` (
  `v_id` int(20) NOT NULL,
  `v_name` varchar(200) NOT NULL,
  `v_reg_no` varchar(200) NOT NULL,
  `v_category` varchar(200) NOT NULL,
  `v_dpic` varchar(200) NOT NULL,
  `v_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_vehicle`
--

INSERT INTO `tms_vehicle` (`v_id`, `v_name`, `v_reg_no`, `v_category`, `v_dpic`, `v_status`) VALUES
(9, 'Hitachi ZX70-5G', 'MA1001', 'Fuso', 'ZX70-5G_KS-EN248S-1.jpg', 'Available'),
(11, 'Mitsubishi FN 527ML K', 'MA1001', 'Heavy Machine', 'fusofighter.png', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tms_admin`
--
ALTER TABLE `tms_admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  ADD PRIMARY KEY (`l_id`);

--
-- Indexes for table `tms_user`
--
ALTER TABLE `tms_user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `tms_vehicle`
--
ALTER TABLE `tms_vehicle`
  ADD PRIMARY KEY (`v_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tms_admin`
--
ALTER TABLE `tms_admin`
  MODIFY `a_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tms_feedback`
--
ALTER TABLE `tms_feedback`
  MODIFY `f_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tms_pwd_resets`
--
ALTER TABLE `tms_pwd_resets`
  MODIFY `r_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tms_syslogs`
--
ALTER TABLE `tms_syslogs`
  MODIFY `l_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tms_user`
--
ALTER TABLE `tms_user`
  MODIFY `u_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tms_vehicle`
--
ALTER TABLE `tms_vehicle`
  MODIFY `v_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
