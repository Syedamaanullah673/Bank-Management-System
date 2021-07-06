-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
-- Host: 127.0.0.1
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mybank`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '100101', 'RT Nagar'),
(2, '100102', 'Koramangala');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(1, 'This is testing message to admin or manager by fk', 1, '2021-06-17 10:00:48'),
(3, 'This is testing message to admin or manager by fk', 2, '2021-06-20 07:00:48'),
(4, 'this is help card for admin', 1, '2021-06-23 12:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'cashier@cashier.com', 'cashier@12345', 'cashier', '2021-06-18 10:06:27'),
(2, 'manager@manager.com', 'manager$234', 'manager', '2021-06-17 08:06:27'),
(3, 'sadfas@gmail.com', 'sadfas9567', 'cashier', '2021-06-19 12:43:12'),
(4, 'fkgeo@gmail.com', 'fkgeo97986', 'manager', '2021-06-17 05:43:18'),
(6, 'cashier2@cashier.com', 'cashier2#25454', 'cashier', '2021-06-20 12:44:47'),
(8, 'cashier3@ksh.com', 'cashier5342', 'cashier', '2021-07-03 21:53:39');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer! <br> OUr privacy policy is changed for account information get new prospectus from your nearest branch', '2021-06-24 18:41:46'),
(6, '2', 'Dear Customer,<br>\r\nOur privacy policy has been changed please visit nearest <kbd> SAS </kbd> branch for new prospectus.', '2021-06-24 11:59:23'),
(7, '1', 'We will shortly reply to your Query', '2021-07-03 17:30:42');
-- --------------------------------------------------------

--
-- Table structure for table `otheraccounts`
--

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otheraccounts`
--

INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001122', 'Syndicate', 'Yaqoob Quraishi', '40800', '2021-06-18 17:25:07'),
(2, '12001123', 'Kotak Mahindra Bank', 'Yousaf Khan', '47800', '2021-06-19 17:25:07');


-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`, `beneId`, `other`, `userId`, `date`) VALUES
(4, 'transfer', '', '200', '', '', '12001122', 1, '2021-06-17 18:03:40'),
(5, 'transfer', '', '200', '', '', '10054777', 1, '2021-06-18 18:26:48'),
(6, 'transfer', '', '333', '', '', '10054777', 1, '2021-06-19 18:27:20'),
(7, 'transfer', '', '222', '', '', '10054777', 1, '2021-06-20 18:28:19'),
(8, 'transfer', '', '333', '', '', '10054777', 1, '2021-06-20 18:30:23'),
(16, 'withdraw', '', '100', '', '', '23423', 1, '2021-06-21 14:01:59'),
(17, 'deposit', '1200', '', '', '', '234232', 1, '2021-06-21 14:02:17'),
(18, 'transfer', '', '467', '', '', '12001122', 1, '2021-06-21 12:14:48'),
(22, 'deposit', '1200', '', '', '', '32424', 2, '2021-06-22 12:26:29'),
(23, 'withdraw', '', '12', '', '', '23423', 2, '2021-06-23 12:29:02'),
(24, 'deposit', '12', '', '', '', '21321', 2, '2021-06-24 12:29:20'),
(25, 'transfer', '', '1200', '', '', '10054777', 1, '2021-06-26 12:31:37'),
(26, 'deposit', '600', '', '', '', '342342', 2, '2021-06-27 12:34:39'),
(27, 'withdraw', '', '1012', '', '', '23423', 2, '2021-06-28 12:34:58');

-- --------------------------------------------------------

--
-- Table structure for table `useraccounts`
--

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `cnic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccounts`
--

INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `AadhaarNumber`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'some@gmail.com', 'someone4u', 'Fayyaz Khan', '9800', '321037555542', '03356910260', 'Islamabad', 'Bangalore', 'Programmer', '1005469', '1', 'Current', '2021-06-18 11:20:06'),
(2, 'some2@gmail.com', 'some25653653', 'Ali khan', '16000', '321037555534', '03356910260', 'Islamabad', 'Bangalore', 'Programmer', '10054777', '1', 'Saving', '2021-06-19 10:20:06'),
(6, 'realx4rd@gmail.com', 'realdgt5%', 'Karan.K', '234234', '324033883490', '03356910260', 'Taunsa', 'Chennai', 'Govt. job', '1513410739', '1', 'saving', '2021-06-20 13:24:18'),
(7, 'realx4rd2@gmail.com', 'rahul%%#$123', 'Rahul.S', '12121', '324033883490', '03356910260', 'Taunsa', 'Chennai', 'Govt. job', '1513410837', '1', 'current', '2021-07-03 17:39:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);

--
-- Indexes for table `useraccounts`
--
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `otheraccounts`
--
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `useraccounts`
--
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
