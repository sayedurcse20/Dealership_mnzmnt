-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 25, 2017 at 01:24 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ripon3`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `due_calculation`
--

INSERT INTO `due_calculation` (`id`, `company_name`, `current_due`, `daily_deposit`) VALUES
(1, 'B', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE IF NOT EXISTS `online` (
  `j_and_j` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`j_and_j`) VALUES
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
(300000),
(-300000);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=186 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `out`, `return`, `everyday_sell`, `damage_product`, `damage_total_product`, `damage_total_value`, `unit_price`, `current_stock`, `current_stock_value`, `total_sell_number`, `total_sell_value`, `company_name`) VALUES
(132, 'à¦Ÿà¦¿à¦¨ à§¨à§¦à§¦ à¦—à§à¦°à¦¾à¦ƒ', 0, 0, 0, 0, 0, 0, 85.71, 0, 0, 0, 0, ''),
(133, 'à¦Ÿà¦¿à¦¨ à§ªà§¦à§¦ à¦—à§à¦°à¦¾à¦ƒ', 0, 0, 0, 0, 0, 0, 162.86, 0, 0, 0, 0, ''),
(134, 'à¦¨à¦¨à¦¸à§à¦Ÿà¦¿à¦• à§¯à§¦', 0, 0, 0, 0, 0, 0, 41.14, 0, 0, 0, 0, ''),
(135, 'à¦¨à¦¨à¦¸à§à¦Ÿà¦¿à¦• à§§à§¬à§¦', 0, 0, 0, 0, 0, 0, 71.14, 0, 0, 0, 0, ''),
(136, 'à¦¨à¦¨à¦¸à§à¦Ÿà¦¿à¦• à§©à§©à§¦', 0, 0, 0, 0, 0, 0, 141.43, 0, 0, 0, 0, ''),
(137, 'à¦¨à¦¨à¦¸à§à¦Ÿà¦¿à¦• à§ªà§« ', 0, 0, 0, 0, 0, 0, 20.31, 0, 0, 0, 0, ''),
(138, 'à¦œà§‡à¦²à¦¿ à§§à§« à¦—à§à¦°à¦¾à¦ƒ', 0, 0, 0, 0, 0, 0, 13.15, 0, 0, 0, 0, ''),
(139, 'à¦œà§‡à¦²à¦¿ à§«à§¦ à¦—à§à¦°à¦¾à¦ƒ', 0, 0, 0, 0, 0, 0, 36.92, 0, 0, 0, 0, ''),
(140, 'à¦²à¦¿à¦ªà¦œà§‡à¦² à§§à§¦', 0, 0, 0, 0, 0, 0, 21.43, 0, 0, 0, 0, ''),
(141, 'à¦ªà¦®à§‡à¦Ÿ à§«à§¦', 0, 0, 0, 0, 0, 0, 39.69, 0, 0, 0, 0, ''),
(142, 'à¦—à§à¦²à¦¿à¦¸à¦¾à¦°à¦¿à¦¨ à§¬à§¦', 0, 0, 0, 0, 0, 0, 36, 0, 0, 0, 0, ''),
(143, 'à¦—à§à¦²à¦¿à¦¸à¦¾à¦°à¦¿à¦¨ à§§à§¦à§¦ ', 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, ''),
(144, 'à¦¸à¦°à¦¿à¦·à¦¾ à§®à§¦', 0, 0, 0, 0, 0, 0, 19.85, 0, 0, 0, 0, ''),
(145, 'à¦¸à¦°à¦¿à¦·à¦¾ à§¨à§¦à§¦', 0, 0, 0, 0, 0, 0, 45.85, 0, 0, 0, 0, ''),
(146, 'à¦¸à¦°à¦¿à¦·à¦¾ à§«à§¦à§¦', 0, 0, 0, 0, 0, 0, 95, 0, 0, 0, 0, ''),
(147, 'à¦œà§‡à¦¸à¦®à¦¿à¦¨ à§«à§¦', 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, ''),
(148, 'à¦—à¦¿à¦«à¦Ÿ à§¬à§¦', 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, ''),
(149, 'à¦à¦¨à¦œà§‡à¦² à§©à§¦', 0, 0, 0, 0, 0, 0, 140, 0, 0, 0, 0, ''),
(150, 'à¦à¦•à§à¦¸à¦Ÿà§à¦°à¦¿à¦¨ à§® à¦—à§à¦°à¦¾à¦ƒ', 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, ''),
(151, 'à¦†à¦¤à¦° à§© à¦®à¦¿à¦²à¦¿ ', 0, 0, 0, 0, 0, 0, 31.11, 0, 0, 0, 0, ''),
(152, 'à¦†à¦¤à¦° à§© à¦®à¦¿à¦²à¦¿ ', 0, 0, 0, 0, 0, 0, 34.15, 0, 0, 0, 0, ''),
(153, 'à¦†à¦¤à¦° à§¬ à¦—à§à¦°à¦¾à¦ƒ', 0, 0, 0, 0, 0, 0, 53.38, 0, 0, 0, 0, ''),
(154, 'à¦†à¦«à¦Ÿà¦¾à¦° à§ªà§¦', 0, 0, 0, 0, 0, 0, 58, 0, 0, 0, 0, ''),
(159, 'à¦†à¦«à¦Ÿà¦¾à¦° à§§à§¦à§¦', 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, ''),
(160, 'à¦¬à¦¡à¦¿ à§§à§¦à§¦', 0, 0, 0, 0, 0, 0, 66, 0, 0, 0, 0, ''),
(161, 'à¦¬à§‡à¦¬à§€ à§§à§¦à§¦', 0, 0, 0, 0, 0, 0, 69, 0, 0, 0, 0, ''),
(162, 'à¦¸à¦¾à¦¬à¦¾à¦¨ à§­à§«', 0, 0, 0, 0, 0, 0, 19, 0, 0, 0, 0, ''),
(163, 'à¦¸à¦¾à¦¬à¦¾à¦¨ à¦¬à¦•à§à¦¸ à§­à§«', 0, 0, 0, 0, 0, 0, 19.31, 0, 0, 0, 0, ''),
(164, 'à¦®à§‡à¦¹à§‡à¦¦à§€ ', 0, 0, 0, 0, 0, 0, 20, 0, 0, 0, 0, ''),
(165, 'à¦²à¦¨à§à¦¡à§à¦°à¦¿ à§§à§©à§¦', 0, 0, 0, 0, 0, 0, 14.57, 0, 0, 0, 0, ''),
(166, 'à¦«à§‡à§Ÿà¦¾à¦° à§ªà§¦', 0, 0, 0, 0, 0, 0, 55, 0, 0, 0, 0, ''),
(167, 'à¦«à§‡à§Ÿà¦¾à¦° à§­à§«', 0, 0, 0, 0, 0, 0, 95, 0, 0, 0, 0, ''),
(168, 'à¦¬à¦¾à¦²à§à¦¬ à§ªà§¦', 0, 0, 0, 0, 0, 0, 19.23, 0, 0, 0, 0, ''),
(169, 'à¦¬à¦¾à¦²à§à¦¬ à§¬à§¦', 0, 0, 0, 0, 0, 0, 19.23, 0, 0, 0, 0, ''),
(170, 'à¦¬à¦¾à¦²à§à¦¬ à§§à§¦à§¦', 0, 0, 0, 0, 0, 0, 21.42, 0, 0, 0, 0, ''),
(171, 'à¦à¦¨à¦¾à¦°à§à¦œà¦¿ à§¯ ', 0, 0, 0, 0, 0, 0, 180, 0, 0, 0, 0, ''),
(172, 'à¦à¦¨à¦¾à¦°à§à¦œà¦¿ à§§à§§ ', 0, 0, 0, 0, 0, 0, 193.85, 0, 0, 0, 0, ''),
(173, 'à¦à¦¨à¦¾à¦°à§à¦œà¦¿ à§§à§« ', 0, 0, 0, 0, 0, 0, 198, 0, 0, 0, 0, ''),
(174, 'à¦à¦¨à¦¾à¦°à§à¦œà¦¿ à§¨à§¦ ', 0, 0, 0, 0, 0, 0, 217, 0, 0, 0, 0, ''),
(175, 'à¦à¦¨à¦¾à¦°à§à¦œà¦¿ à§¨à§© ', 0, 0, 0, 0, 0, 0, 225, 0, 0, 0, 0, ''),
(176, 'à¦à¦¨à¦¾à¦°à§à¦œà¦¿ à§¨à§¬ ', 0, 0, 0, 0, 0, 0, 233, 0, 0, 0, 0, ''),
(177, 'à¦à¦¨à¦¾à¦°à§à¦œà¦¿ à§©à§¦ ', 0, 0, 0, 0, 0, 0, 242, 0, 0, 0, 0, ''),
(178, 'à¦Ÿà§‡à¦²à¦•à¦® à§§à§¦à§¦', 0, 0, 0, 0, 0, 0, 29.57, 0, 0, 0, 0, ''),
(179, 'à¦²à¦¾à¦•à§à¦¸à¦¾à¦°à§€ à§§à§¦à§¦', 0, 0, 0, 0, 0, 0, 30, 0, 0, 0, 0, ''),
(180, 'à¦²à¦¾à¦•à§à¦¸à¦¾à¦°à§€ à§«à§¦ ', 0, 0, 0, 0, 0, 0, 18.64, 0, 0, 0, 0, ''),
(181, 'à¦ªà§à¦°à¦¿à¦•à¦²à¦¿ à§§à§¦à§¦', 0, 0, 0, 0, 0, 0, 35.14, 0, 0, 0, 0, ''),
(182, 'à¦•à§à¦² à§§à§¦à§¦', 0, 0, 0, 0, 0, 0, 38.57, 0, 0, 0, 0, ''),
(183, 'à¦¡à¦¿à¦¡à¦¾à¦° à§¨à§¦à§¦', 0, 0, 0, 0, 0, 0, 38.57, 0, 0, 0, 0, ''),
(184, 'à¦¡à¦¿à¦¡à¦¾à¦° à§«à§¦à§¦', 0, 0, 0, 0, 0, 0, 39.28, 0, 0, 0, 0, ''),
(185, 'à¦®à¦¾à¦œà¦¨à¦¿ ', 0, 0, 0, 0, 0, 0, 11.67, 0, 0, 0, 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
