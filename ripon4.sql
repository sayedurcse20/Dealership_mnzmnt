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
-- Database: `ripon4`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `due_calculation`
--

INSERT INTO `due_calculation` (`id`, `company_name`, `current_due`, `daily_deposit`) VALUES
(31, 'B', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE IF NOT EXISTS `online` (
  `mafin` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`mafin`) VALUES
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
(1000),
(-1000);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `out`, `return`, `everyday_sell`, `damage_product`, `damage_total_product`, `damage_total_value`, `unit_price`, `current_stock`, `current_stock_value`, `total_sell_number`, `total_sell_value`, `company_name`) VALUES
(100, 'à¦²à¦¾à¦šà§à¦›à¦¿ à§§à§­à§¦', 0, 0, 0, 0, 0, 0, 13.33, 0, 0, 0, 0, ''),
(101, ' 	à¦²à¦¾à¦šà§à¦›à¦¿ à§¨à§¦à§¦', 0, 0, 0, 0, 0, 0, 16.16, 0, 0, 0, 0, ''),
(102, 'à¦œà§à¦¸ à§§à§«à§¦', 0, 0, 0, 0, 0, 0, 10.17, 0, 0, 0, 0, ''),
(103, 'à¦œà§à¦¸ à§¨à§¦à§¦', 0, 0, 0, 0, 0, 0, 12.8, 0, 0, 0, 0, ''),
(104, ' à¦œà§Ÿ à§¨à§«à§¦ ', 0, 0, 0, 0, 0, 0, 16.31, 0, 0, 0, 0, ''),
(105, ' 	à¦œà§Ÿ à§«à§¦à§¦', 0, 0, 0, 0, 0, 0, 29.3, 0, 0, 0, 0, ''),
(106, 'à¦œà§Ÿ à§§à§¦à§¦à§¦', 0, 0, 0, 0, 0, 0, 48.86, 0, 0, 0, 0, ''),
(107, 'à¦«à¦¾à¦¨ à¦Ÿà¦¾à¦‡à¦® à§¨à§«à§¦', 0, 0, 0, 0, 0, 0, 16.85, 0, 0, 0, 0, ''),
(108, 'à¦²à¦¿à¦šà¦¿ à§§à§­à§¦', 0, 0, 0, 0, 0, 0, 7.83, 0, 0, 0, 0, ''),
(109, 'à¦…à¦°à§‡à¦žà§à¦œ à§§à§­à§¦', 0, 0, 0, 0, 0, 0, 7.83, 0, 0, 0, 0, ''),
(110, 'à¦¦à§à¦§ à§¨à§¦ à¦—à§à¦°à¦¾à¦®', 0, 0, 0, 0, 0, 0, 7.66, 0, 0, 0, 0, ''),
(111, 'à¦¦à§à¦§ à§¨à§¦à§¦ à¦—à§à¦°à¦¾à¦®', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(112, 'à¦¦à§à¦§ à§ªà§¦à§¦ à¦—à§à¦°à¦¾à¦®', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(113, ' 	à¦¦à§à¦§ à§«à§¦à§¦ à¦—à§à¦°à¦¾à¦® ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(114, 'à¦¦à§à¦§ à§§ à¦²à¦¿à¦Ÿà¦¾à¦°', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(115, ' 	à¦²à¦²à¦¿à¦ªà¦ª', 0, 0, 0, 0, 0, 0, 220, 0, 0, 0, 0, ''),
(116, 'à¦¬à¦¾à¦¬à§à¦² à¦—à¦¾à¦®', 0, 0, 0, 0, 0, 0, 85, 0, 0, 0, 0, ''),
(117, 'à¦®à§à¦¯à¦¾à¦œà¦¿à¦• à¦°à§à¦²', 0, 0, 0, 0, 0, 0, 80, 0, 0, 0, 0, ''),
(118, 'à¦šà¦¿à¦ªà¦¸ à§¨à§« à¦—à§à¦°à¦¾à¦®', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(119, ' 	à¦šà¦¿à¦ªà¦¸ à§¨à§« à¦—à§à¦°à¦¾à¦® N', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(120, 'à¦®à¦¾à¦®à¦¾', 0, 0, 0, 0, 0, 0, 40, 0, 0, 0, 0, ''),
(121, 'à¦ªà¦¾à¦ªà¦¾ à¦²à§‡à§Ÿà¦¾à¦° ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(122, ' 	à¦ªà¦¾à¦ªà¦¾ à¦•à¦¾à¦ª ', 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, ''),
(123, 'à¦…à¦°à§‡à¦žà§à¦œ à¦•à§‡à¦•', 0, 0, 0, 0, 0, 0, 24.5, 0, 0, 0, 0, ''),
(124, ' 	à¦¡à§à¦°à¦¾à¦‡ à¦•à§‡à¦• ', 0, 0, 0, 0, 0, 0, 100, 0, 0, 0, 0, ''),
(125, 'à¦¸à§à¦®à¦¾à¦‡à¦² à¦•à§‡à¦• ', 0, 0, 0, 0, 0, 0, 12, 0, 0, 0, 0, ''),
(126, 'à¦¸à§à¦®à¦¾à¦‡à¦² à¦šà¦•à¦²à§‡à¦Ÿ', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(127, 'à¦®à¦¾à¦«à¦¿à¦¨', 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, ''),
(128, ' à¦œà§ à¦•à§‡à¦• à¦ªà¦¾à¦¤à§à¦°', 0, 0, 0, 0, 0, 0, 130, 0, 0, 0, 0, ''),
(129, 'à¦¶à¦®à¦ªà¦¾à¦ªà§œà¦¿', 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, ''),
(130, 'à¦•à§à¦¯à¦¾à¦¨à§à¦¡à¦¿ ', 0, 0, 0, 0, 0, 0, 142, 0, 0, 0, 0, ''),
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
(149, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
