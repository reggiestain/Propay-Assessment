-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2017 at 01:45 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `propay-assessment`
--

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `description`, `created`) VALUES
(1, 'English', '', '2017-02-20 00:00:00'),
(2, 'Zulu', '', '2017-02-24 00:00:00'),
(3, 'Xhosa', '', '2017-02-27 00:00:00'),
(4, 'Sotho', '', '2017-02-20 00:00:00'),
(5, 'Twana', '', '2017-02-24 00:00:00'),
(6, 'Afrikaans', '', '2017-02-26 00:00:00'),
(7, 'Venda', '', '2017-02-26 00:00:00'),
(8, 'Tsonga', '', '2017-02-26 00:00:00'),
(9, 'Swati', '', '2017-02-26 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE IF NOT EXISTS `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `surname` varchar(30) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `language_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_of_birth` varchar(12) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(40) NOT NULL DEFAULT '',
  `data` text,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `data`, `expires`) VALUES
('3c0u365qkbcpv3rt3a0aheqdc1', 'Config|a:1:{s:4:"time";i:1487971797;}Flash|a:0:{}Auth|a:1:{s:4:"User";a:3:{s:2:"id";i:1;s:8:"username";s:6:"Reggie";s:7:"created";O:14:"Cake\\I18n\\Time":3:{s:4:"date";s:19:"2017-02-24 21:22:49";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}}}', 1488230998),
('4uvbaeeob8a4dkjhhh7o469aa5', 'Config|a:1:{s:4:"time";i:1488058639;}Flash|a:0:{}Auth|a:1:{s:4:"User";a:4:{s:2:"id";i:12;s:5:"email";s:21:"reggiestain@gmail.com";s:6:"mobile";s:0:"";s:7:"created";O:14:"Cake\\I18n\\Time":3:{s:4:"date";s:19:"2017-02-25 12:13:15";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}}}', 1488317842),
('fad377rmosvsijj1iblvfv11d6', 'Config|a:1:{s:4:"time";i:1488113056;}Auth|a:1:{s:4:"User";a:4:{s:2:"id";i:12;s:5:"email";s:21:"reggiestain@gmail.com";s:6:"mobile";s:0:"";s:7:"created";O:14:"Cake\\I18n\\Time":3:{s:4:"date";s:19:"2017-02-25 12:13:15";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}}}Flash|a:0:{}', 1488372258),
('l2r2h8n2shehoh1ilkkfcclc06', 'Config|a:1:{s:4:"time";i:1488061394;}Auth|a:1:{s:4:"User";a:4:{s:2:"id";i:12;s:5:"email";s:21:"reggiestain@gmail.com";s:6:"mobile";s:0:"";s:7:"created";O:14:"Cake\\I18n\\Time":3:{s:4:"date";s:19:"2017-02-25 12:13:15";s:13:"timezone_type";i:3;s:8:"timezone";s:3:"UTC";}}}Flash|a:0:{}', 1488320595);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` char(120) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `created`) VALUES
(12, 'reggiestain@gmail.com', '$2y$10$fyAF9gSIu79XfM0rtTZcAuoCYXsx1adREKi3Q9pUuF.sq84A4kJbu', '2017-02-25 12:13:15');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
