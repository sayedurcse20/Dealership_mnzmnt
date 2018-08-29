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
-- Database: `ripon1`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `due_calculation`
--

INSERT INTO `due_calculation` (`id`, `company_name`, `current_due`, `daily_deposit`) VALUES
(26, 'B', 0, 0),
(27, 'B', 0, 0),
(28, 'B', 0, 0),
(29, 'B', 0, 0),
(30, 'B', 0, 0),
(31, 'B', 10000, 5000),
(32, 'B', 0, 2000),
(33, 'B', 0, 3000),
(34, 'B', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE IF NOT EXISTS `online` (
  `rakit_bankijer` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `online`
--

INSERT INTO `online` (`rakit_bankijer`) VALUES
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
(900000),
(100000),
(5000),
(-1005000);

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
(101, 'à¦…à¦°à§à¦œà¦¿: à§©à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 8.08, 0, 0, 0, 0, ''),
(102, 'à¦…à¦°à§à¦œà¦¿: à§­à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 26.72, 0, 0, 0, 0, ''),
(103, 'à¦…à¦°à§à¦œà¦¿: à§§à§¨à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 38.3, 0, 0, 0, 0, ''),
(104, 'à¦¸à§à¦•à§€à¦¨: à§­à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 26.72, 0, 0, 0, 0, ''),
(105, 'à¦¸à§à¦•à§€à¦¨: à§§à§¨à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 38.3, 0, 0, 0, 0, ''),
(106, 'à¦•à§à¦²: à§­à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 26.72, 0, 0, 0, 0, ''),
(107, 'à¦•à§à¦²: à§§à§¨à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 38.3, 0, 0, 0, 0, ''),
(108, 'à¦²à¦¾à¦·à§à¦Ÿà¦¿à¦‚: à§­à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 26.72, 0, 0, 0, 0, ''),
(109, 'à¦…à¦°à§à¦œà¦¿: à§«à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 16.2, 0, 0, 0, 0, ''),
(110, 'à¦¹à¦¾à¦°: à§¨à§¨à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 31.2, 0, 0, 0, 0, ''),
(111, 'à¦¹à¦¾à¦°: à§«à§¦à§¦ à¦—à§à¦°à¦¾: N', 0, 0, 0, 0, 0, 0, 74.86, 0, 0, 0, 0, ''),
(112, 'à¦¹à¦¾à¦°: à§«à§¦à§¦ à¦—à§à¦°à¦¾: C', 0, 0, 0, 0, 0, 0, 76.03, 0, 0, 0, 0, ''),
(113, 'à¦¹à¦¾à¦°: à§­à§«à§¦ à¦—à§à¦°à¦¾: N', 0, 0, 0, 0, 0, 0, 94.9, 0, 0, 0, 0, ''),
(114, 'à¦¹à¦¾à¦°: à§­à§«à§¦ à¦—à§à¦°à¦¾: C', 0, 0, 0, 0, 0, 0, 96.38, 0, 0, 0, 0, ''),
(115, 'à¦¹à¦¾à¦°: à§§à§¦à§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 127.63, 0, 0, 0, 0, ''),
(116, 'à¦¹à¦¾à¦°: à¦Ÿà§‹ à§¨à§¦à§¦ à¦—à§à¦°à¦¾', 0, 0, 0, 0, 0, 0, 28.75, 0, 0, 0, 0, ''),
(117, 'à¦¹à¦¾à¦°: à¦Ÿà§‹ à§ªà§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 49.87, 0, 0, 0, 0, ''),
(118, 'à¦²à¦¿à¦•à§à¦‡à¦Ÿ à§«à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 27.01, 0, 0, 0, 0, ''),
(119, 'à¦²à¦¿à¦•à§à¦‡à¦Ÿ à§§à§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(120, 'à¦²à¦¿à¦•à§à¦‡à¦Ÿ à§«à§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 130, 0, 0, 0, 0, ''),
(121, 'à¦²à¦¿à¦•à§à¦‡à¦Ÿ à§­à§«à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 142.81, 0, 0, 0, 0, ''),
(122, 'à¦“à§Ÿà¦¾à¦¶ à§§à§­à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 46.92, 0, 0, 0, 0, ''),
(123, 'à¦“à§Ÿà¦¾à¦¶ à§¨à§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 74.74, 0, 0, 0, 0, ''),
(124, 'à¦•à§Ÿà§‡à¦² N', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(125, ' à¦•à§Ÿà§‡à¦² C', 0, 0, 0, 0, 0, 0, 57.54, 0, 0, 0, 0, ''),
(126, 'à¦¸à§à¦ªà§à¦°à§‡ M à§®à§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 360.9, 0, 0, 0, 0, ''),
(127, 'à¦¸à§à¦ªà§à¦°à§‡ M à§ªà§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(128, 'à¦¡à¦¾à¦®à¦¿à¦•à§à¦² à§§à§«à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 92.1, 0, 0, 0, 0, ''),
(129, ' 	à¦Ÿà§à¦°à¦¿à¦•à§à¦¸ à§§à§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 8.01, 0, 0, 0, 0, ''),
(130, 'à¦Ÿà§à¦°à¦¿à¦•à§à¦¸ à§©à§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 20.27, 0, 0, 0, 0, ''),
(131, 'à¦Ÿà§à¦°à¦¿à¦•à§à¦¸ à§«à§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 68.06, 0, 0, 0, 0, ''),
(132, 'à¦­à¦¿à¦Ÿ N à§¨à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 72.4, 0, 0, 0, 0, ''),
(133, 'à¦­à¦¿à¦Ÿ C à§¨à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 66.18, 0, 0, 0, 0, ''),
(134, 'à¦­à¦¿à¦Ÿ à§¬à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 45.32, 0, 0, 0, 0, ''),
(135, 'à¦­à¦¿à¦Ÿ à§§à§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 200, 0, 0, 0, 0, ''),
(136, 'à¦²à¦¾à¦‡à¦œà¦² à§¨à§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 38.57, 0, 0, 0, 0, ''),
(137, 'à¦²à¦¾à¦‡à¦œà¦² à§«à§¦à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 108.2, 0, 0, 0, 0, ''),
(138, ' 	à¦¬à§à¦°à¦¾à¦¸à§‹ à§©à§«à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 97.32, 0, 0, 0, 0, ''),
(139, 'à¦—à§‡à¦­à¦¿à¦¸à§à¦•à§‹à¦¨', 0, 0, 0, 0, 0, 0, 338.41, 0, 0, 0, 0, ''),
(140, 'à¦¹à¦¾à¦°: à¦²à¦¾à¦²', 0, 0, 0, 0, 0, 0, 81.43, 0, 0, 0, 0, ''),
(141, 'à¦¡à¦¿à¦¸à¦ªà§à¦°à¦¿à¦¨ à§§à§¦à§¦ à¦ªà¦¿:', 0, 0, 0, 0, 0, 0, 115, 0, 0, 0, 0, ''),
(142, ' 	à¦¡à¦¿à¦¸à¦ªà§à¦°à¦¿à¦¨ à§«à§¦à§¦ à¦ªà¦¿:', 0, 0, 0, 0, 0, 0, 559.64, 0, 0, 0, 0, ''),
(143, 'à¦•à¦¨à¦¡à¦®', 0, 0, 0, 0, 0, 0, 49.98, 0, 0, 0, 0, ''),
(144, 'à¦¹à¦¾à¦°: à¦Ÿà§‹ à§¨à§¦ à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 4.06, 0, 0, 0, 0, ''),
(145, 'à¦­à¦¿à¦Ÿ à§§à§« à¦—à§à¦°à¦¾:', 0, 0, 0, 0, 0, 0, 41.25, 0, 0, 0, 0, ''),
(146, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(147, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(148, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(149, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(150, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
