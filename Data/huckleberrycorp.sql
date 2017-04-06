-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 03, 2017 at 07:56 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `huckleberrycorp`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE DATABASE IF NOT EXISTS huckleberrycorp;
USE huckleberrycorp;

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('07n9jpdvt46971smeqm2i0n31qtrgku4', '127.0.0.1', 1491182881, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313138323838313b),
('n7si7mpj9i8vgd5si9ohs7e4qvngn9n7', '127.0.0.1', 1491183321, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313138333332313b),
('koe6gepkbupmep794ksf6rhrrb4lfudn', '127.0.0.1', 1491184146, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313138343134363b),
('mqfjm12i321vkerh86t244aq0lg6mh21', '127.0.0.1', 1491184774, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313138343737343b),
('cpr4n1snqbk5fjd3qpggut775la9igan', '127.0.0.1', 1491185098, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313138353039383b),
('93h5l562fku4150okqm3s926atdjhu7d', '127.0.0.1', 1491185667, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313138353636373b),
('6ti8037hdd0ag9j08opl4l65k5o9apvg', '127.0.0.1', 1491188621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313138383632313b),
('llu5q05qfvt69cu9f5aumdpq1q850o9d', '127.0.0.1', 1491189101, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313138393130313b),
('reqdp27c8edsrnc1gulfdsn5oi0pbuog', '127.0.0.1', 1491189436, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313138393433363b),
('kvs0gjgq8740humbl8spoccaq9hs1v9d', '127.0.0.1', 1491189942, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313138393934323b),
('0lcv8st6qdojh61fuenvkmes8ip0cnq5', '127.0.0.1', 1491193339, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313139333333393b),
('mt9mnfllblpiv9civ15rj4tsn143dcs2', '127.0.0.1', 1491195675, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313139353637353b),
('2g88muveb71o48m5lblvkkrtnk3q9cim', '127.0.0.1', 1491196031, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313139363033313b),
('q8cipdd9it0v4hbvsc6e4bv1bfrskepd', '127.0.0.1', 1491196352, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313139363335323b),
('r5i64aumhs79i903f5f819frkdc7kllo', '127.0.0.1', 1491197683, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313139373638333b),
('k2p61nd9ig2ao4k4ua8024nr31spnjt7', '127.0.0.1', 1491198038, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313139383033383b),
('qnthtnv5nrl5ka3cdpjrfe4452tt095k', '127.0.0.1', 1491198361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313139383336313b75736572726f6c657c733a353a226f776e6572223b),
('vdmhpjlitrhc85487t7c3tqsba02mkuo', '127.0.0.1', 1491198361, 0x5f5f63695f6c6173745f726567656e65726174657c693a313439313139383336313b75736572726f6c657c733a353a226f776e6572223b);

-- --------------------------------------------------------

--
-- Table structure for table `Histories`
--

DROP TABLE IF EXISTS `Histories`;
CREATE TABLE `Histories` (
  `id` int(11) NOT NULL,
  `transactionType` varchar(10) NOT NULL,
  `value` int(11) NOT NULL,
  `dateTime` date NOT NULL,
  `productType` varchar(4) NOT NULL,
  `productIdentifier` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Histories`
--

INSERT INTO `Histories` (`id`, `transactionType`, `value`, `dateTime`, `productType`, `productIdentifier`) VALUES
(2, 'purchase', 10, '2017-04-02', 'bot', 'GH67DF45');

-- --------------------------------------------------------

--
-- Table structure for table `Parts`
--

DROP TABLE IF EXISTS `Parts`;
CREATE TABLE `Parts` (
  `id` int(11) NOT NULL,
  `caCode` varchar(8) NOT NULL,
  `model` varchar(1) NOT NULL,
  `piece` int(11) NOT NULL,
  `plant` varchar(20) NOT NULL,
  `dateTime` date NOT NULL,
  `used` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Parts`
--

INSERT INTO `Parts` (`id`, `caCode`, `model`, `piece`, `plant`, `dateTime`, `used`) VALUES
(0, '45RT67YU', 'm', 3, '13', '2017-04-02', 0),
(1, '45FGRE67', 'a', 2, '5', '2017-04-02', 0),
(2, 'GH6789KL', 'm', 3, '13', '2017-04-02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Robots`
--

DROP TABLE IF EXISTS `Robots`;
CREATE TABLE `Robots` (
  `id` int(11) NOT NULL,
  `topCode` varchar(8) NOT NULL,
  `torsoCode` varchar(8) NOT NULL,
  `bottomCode` varchar(8) NOT NULL,
  `robotCode` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Robots`
--

INSERT INTO `Robots` (`id`, `topCode`, `torsoCode`, `bottomCode`, `robotCode`) VALUES
(3, 'ER45TY67', 'ERYU7890', 'GHTY67JK', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Parts`
--
ALTER TABLE `Parts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `caCode` (`caCode`);

--
-- Indexes for table `Robots`
--
ALTER TABLE `Robots`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
