-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2016 at 12:21 PM
-- Server version: 5.7.11
-- PHP Version: 5.5.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `awesome`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--
drop database if exists awesome;

create database awesome;

use awesome;

CREATE TABLE `blogs` (
  `id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(500) NOT NULL,
  `name` varchar(50) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `user_name`, `user_image`, `name`, `summary`, `content`, `created_at`) VALUES
('001460387351690f460e57ff033445384a909012dc02db4000', '001460383900521a2d0601e90764c81995db3f75a358a50000', 'test', 'http://www.gravatar.com/avatar/4debd6b3545865622853e15877cb4055?d=mm&s=120', 'jfiwejf', 'fjweoijfoi', 'fjowiejfoi', 1460387351.69092);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` varchar(50) NOT NULL,
  `blog_id` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_image` varchar(500) NOT NULL,
  `content` mediumtext NOT NULL,
  `created_at` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `payment` varchar(50) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `effictive` varchar(50) DEFAULT NULL,
  `flow` varchar(50) DEFAULT NULL,
  `notes` mediumtext,
  `created_at` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer`, `phone`, `price`, `payment`, `address`, `effictive`, `flow`, `notes`, `created_at`) VALUES
('00146038635330159501dc697314c559014d7557585ba09000', 'jfiowejfoi', '', '123', NULL, NULL, NULL, NULL, NULL, 1460386353.30136),
('0014604008310414d905c7c102b49d6859bba8f1ed54ae6000', '大可', '18674848282', '688', '货到付款', '湖南省长沙市岳麓区家兴苑3栋', NULL, NULL, '测试', 1460400831.04115),
('00146040179240160daf452eebb45dfa25fc67a0dff150f000', '服务陈', '服务e', '688', '支付宝付款', '江苏省无锡市崇安区发', NULL, NULL, '房产网', 1460401792.40157),
('00146040202292737f7b30d112c4408bcf0ec4a18acd93d000', '服务陈房产', '服务e', '688', '支付宝付款', '江苏省无锡市崇安区发', NULL, NULL, '房产网', 1460402022.92713),
('00146040205930654d4b3b28fa94317a85878eb55b8bd80000', '服务陈', '8576405572', '688', '货到付款', '广东省深圳市罗湖区宝安区金马商业广场3期', NULL, NULL, '服务陈', 1460402059.30631),
('00146043909119875652121639a4f1aadb4bebbc947a8e6000', '2444', '4234234', '688', '货到付款', '河北省邯郸市峰峰矿区房产', NULL, NULL, '服务陈', 1460439091.19801),
('001460439281383c7eeb5d1d41047daa2ab7039ba608d4a000', '2444', '4234234', '688', '货到付款', '河北省邯郸市峰峰矿区房产', NULL, NULL, '服务陈', 1460439281.38309),
('0014604408398559524fa8e25c841b387d17836859d33de000', '123', '1234421', '688', '货到付款', '河北省邯郸市丛台区124214', NULL, NULL, '4214124', 1460440839.85563),
('0014604415352702759cdc6d49e487386ce7a038212a223000', '123', '1234421', '688', '货到付款', '124214', NULL, NULL, '4214124', 1460441535.27081),
('001460441547429f38bba11bc3347e8bc97fdc41021ba65000', '123', '1234421', '688', '货到付款', '124214', NULL, NULL, '4214124', 1460441547.42992),
('0014604415621835fb6dde7af9a442b939fb0ce9bc270e0000', '123', '1234421', '688', '货到付款', '124214', NULL, NULL, '4214124', 1460441562.1836),
('0014604416196153b9c4c296adb40bd911fa85094a5be3f000', '123', '1234421', '688', '货到付款', '吉林省吉林市124214', NULL, NULL, '4214124', 1460441619.61574),
('001460441745867ea67a8d4042b462da5952cbdebfc8a7d000', '123', '1234421', '688', '货到付款', '内蒙古自治区包头市东河区124214', NULL, NULL, '4214124', 1460441745.86694),
('001460441760341fe71aec81b2a4cea9d7bb8091139955a000', '123', '1234421', '688', '货到付款', '124214', NULL, NULL, '4214124', 1460441760.34142),
('0014604418227866392f48006d443afb6e3d957358d12c0000', '123', '1234421', '688', '货到付款', '124214', NULL, NULL, '4214124', 1460441822.78686),
('0014604443807467625381e2da34029a80f4099c834f701000', '123', '12412', '688', '货到付款', '内蒙古自治区包头市昆都仑区142412', NULL, NULL, '421412', 1460444380.74644),
('001460444496250a32b612cf6e34c67b5a962bcc0e25be1000', '123', '12412', '688', '货到付款', '天津市河东区 142412', NULL, NULL, '421412', 1460444496.25027),
('00146044481286559d2d687a35a4d7388c757c1e698c1ed000', '123', '12412', '688', '货到付款', '天津市河东区 142412', NULL, NULL, '421412', 1460444812.86525),
('00146044488348587050579e71a4e73ac4c729fc3bc0205000', '123', '12412', '688', '货到付款', '天津市河东区142412', NULL, NULL, '421412', 1460444883.48516),
('0014604448915458b4afd68df7847be8998a6a45c4fab36000', '123', '12412', '688', '货到付款', '天津市河北区142412', NULL, NULL, '421412', 1460444891.54495),
('00146044521914553a9ac7e70074ff18c96aa7528ce233f000', '牵扯', '18255555555', '688', '货到付款', '北京市西城区测试', NULL, NULL, '', 1460445219.1459),
('001460445224331ca0d35b8cc3540f187da6f1d8241219e000', '牵扯', '18255555555', '688', '货到付款', '北京市西城区测试', NULL, NULL, '风尘', 1460445224.33118),
('001460445376753affbb398511e4574be670d0a538b6dc7000', '服务陈', '1244', '688', '货到付款', '天津市和平区服务陈', NULL, NULL, '', 1460445376.75334),
('0014604457288915e3c3de5c5c94f7388e95ba9662467b2000', '123', '18576405572', '688', '货到付款', '北京市东城区123123', NULL, NULL, '', 1460445728.89166),
('001460446439667a22a6b214a14442da10c2d12e93fbd3f000', '牵扯', '15567890000', '688', '货到付款', '北京市东城区1233', NULL, NULL, '', 1460446439.66713),
('0014604470090293390035bcfae4f5bbd5176a9c0507b3f000', 'luohui', '18520590612', '688', '货到付款', '广东省广州市花都区shiling', NULL, NULL, '', 1460447009.02933);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `admin` tinyint(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `created_at` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `passwd`, `admin`, `name`, `image`, `created_at`) VALUES
('001460383900521a2d0601e90764c81995db3f75a358a50000', 'loki@51upali.com', '66159a6e7e3615a5d3a6bc06970dc311976c93d4', 1, 'test', 'http://www.gravatar.com/avatar/4debd6b3545865622853e15877cb4055?d=mm&s=120', 1460383900.5218);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `idx_created_at` (`created_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_email` (`email`),
  ADD KEY `idx_created_at` (`created_at`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
