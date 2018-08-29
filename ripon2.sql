-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2017 at 01:23 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ripon2`
--

-- --------------------------------------------------------

--
-- Table structure for table `due_calculation`
--

CREATE TABLE IF NOT EXISTS `due_calculation` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `current_due` int(10) NOT NULL DEFAULT '0',
  `daily_deposit` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=33 ;

--
-- Dumping data for table `due_calculation`
--

INSERT INTO `due_calculation` (`id`, `company_name`, `current_due`, `daily_deposit`) VALUES
(26, 'B', 1000, 50),
(27, 'B', 200, 100),
(28, 'B', 1000, 500),
(29, 'B', 1000, 1500),
(30, 'B', 1000, 0),
(31, 'B', 0, 2050),
(32, 'B', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE IF NOT EXISTS `online` (
  `enforce_bd` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`enforce_bd`) VALUES
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(0),
(10000000),
(-10000000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `out` int(8) NOT NULL DEFAULT '0',
  `return` int(8) NOT NULL DEFAULT '0',
  `everyday_sell` int(10) NOT NULL DEFAULT '0',
  `damage_product` int(10) NOT NULL DEFAULT '0',
  `damage_total_product` int(10) NOT NULL DEFAULT '0',
  `damage_total_value` float NOT NULL DEFAULT '0',
  `unit_price` float NOT NULL DEFAULT '0',
  `current_stock` int(10) NOT NULL DEFAULT '0',
  `current_stock_value` float NOT NULL DEFAULT '0',
  `total_sell_number` int(10) NOT NULL DEFAULT '0',
  `total_sell_value` float NOT NULL DEFAULT '0',
  `company_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=151 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `out`, `return`, `everyday_sell`, `damage_product`, `damage_total_product`, `damage_total_value`, `unit_price`, `current_stock`, `current_stock_value`, `total_sell_number`, `total_sell_value`, `company_name`) VALUES
(101, 'à¦ªà§à¦²à¦¾à¦¸ à§§à§ªà§¦ à¦—à§à¦°à¦¾ :', 0, 0, 0, 0, 0, 0, 74.8, 0, 0, 0, 0, ''),
(102, 'à¦ªà§à¦²à¦¾à¦¸ à§­à§¦ à¦—à§à¦°à¦¾ :', 0, 0, 0, 0, 0, 0, 52.8, 0, 0, 0, 0, ''),
(103, 'à¦ªà§à¦²à¦¾à¦¸ à§ªà§¦ à¦—à§à¦°à¦¾ :', 0, 0, 0, 0, 0, 0, 32.3, 0, 0, 0, 0, ''),
(104, 'à¦¡à¦¿. à¦à¦¸. à§§à§ªà§¦ à¦—à§à¦°à¦¾ :', 0, 0, 0, 0, 0, 0, 114.75, 0, 0, 0, 0, ''),
(105, 'à¦¡à¦¿. à¦à¦¸. à§¯à§¦ à¦—à§à¦°à¦¾ :', 0, 0, 0, 0, 0, 0, 76.5, 0, 0, 0, 0, ''),
(106, 'à¦¡à¦¿. à¦à¦¸. à§ªà§¦ à¦—à§à¦°à¦¾ :', 0, 0, 0, 0, 0, 0, 40.8, 0, 0, 0, 0, ''),
(107, 'à¦¬à¦¿. à¦†à¦ª à§§à§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 86.75, 0, 0, 0, 0, ''),
(108, 'à¦¬à¦¿. à¦†à¦ª à§ªà§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 40.8, 0, 0, 0, 0, ''),
(109, 'à¦¬à¦¿. à¦†à¦ª à§§à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 4.25, 0, 0, 0, 0, ''),
(110, 'à¦«à§à¦°à§à¦°à¦¾à¦‡à¦¡ à§§à§¦à§¦ à¦—à§à¦°à¦¾', 0, 0, 0, 0, 0, 0, 85, 0, 0, 0, 0, ''),
(111, 'à¦¸à§‡à¦®à§à¦ªà§ à§§à§¨à§«', 0, 0, 0, 0, 0, 0, 93.5, 0, 0, 0, 0, ''),
(112, 'à¦¸à§‡à¦®à§à¦ªà§ à§®', 0, 0, 0, 0, 0, 0, 5.95, 0, 0, 0, 0, ''),
(113, 'à¦‡à¦‚ à¦¸à¦¾à¦¬à¦¾à¦¨ à§ªà§¦', 0, 0, 0, 0, 0, 0, 20.4, 0, 0, 0, 0, ''),
(114, 'à¦‡à¦‚ à¦¸à¦¾à¦¬à¦¾à¦¨ à§­à§«', 0, 0, 0, 0, 0, 0, 29.75, 0, 0, 0, 0, ''),
(115, 'à¦à¦¨ à¦­à¦¿ à§¯à§¦', 0, 0, 0, 0, 0, 0, 38.25, 0, 0, 0, 0, ''),
(116, 'à¦Ÿà§à¦°à§à¦¥ à¦¬à§à¦°à¦¾à¦¸ ', 0, 0, 0, 0, 0, 0, 68, 0, 0, 0, 0, ''),
(117, 'à¦«à§à¦²à¦•à§à¦¸ ', 0, 0, 0, 0, 0, 0, 98.5, 0, 0, 0, 0, ''),
(118, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(119, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(120, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(121, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(122, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(123, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(124, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(125, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(126, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(127, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(128, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(129, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(130, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(131, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(132, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(133, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(134, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(135, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(136, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(137, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(138, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(139, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(140, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(141, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(143, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(144, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(145, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(146, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(147, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(148, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(149, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(150, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
