-- phpMyAdmin SQL Dump
-- version 4.0.10.14
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Nov 01, 2016 at 03:34 PM
-- Server version: 10.0.27-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jakarea_akkhan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE IF NOT EXISTS `tasks` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `assign_to` int(5) NOT NULL,
  `task` varchar(200) NOT NULL,
  `completed` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=205 ;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `assign_to`, `task`, `completed`, `ordering`) VALUES
(1, 1, 'Make a coffee', 0, 0),
(2, 1, 'Brush your teath', 0, 0),
(3, 1, 'Do fb account', 0, 5),
(4, 1, 'Deactive fb account', 1, 0),
(5, 1, 'Take care of you', 1, 7),
(6, 3, 'Go to bed', 1, 0),
(7, 1, 'Do fb account', 1, 8),
(8, 4, 'Deactive fb account', 1, 0),
(9, 4, 'Do Twitter account', 0, 0),
(10, 5, 'Do you have your meal', 1, 0),
(11, 5, 'Do not brush your teeth every day', 0, 0),
(12, 5, 'Eat burger instead of pizza', 1, 0),
(13, 1, 'hello world', 1, 15),
(14, 1, 'Hello bangladesh', 1, 5),
(15, 1, 'DevTools failed to parse SourceMap', 0, 6),
(16, 2, 'DevTools to parse SourceMap', 1, 19),
(17, 2, 'Incorrect integer value parse SourceMap', 0, 16),
(18, 2, 'DevTools toIncorrect integer value', 1, 18),
(19, 1, ' integer value parse SourceMap', 1, 9),
(20, 2, ' toIncorrect integer value', 1, 17),
(21, 29, 'simply dummy text of the printing and typesetting ', 0, 0),
(22, 29, ' dummy text of the printing and ', 1, 1),
(23, 29, 'simply dummy Why do we use it? ', 0, 0),
(24, 29, ' Why do we use it? of the printing and ', 1, 1),
(25, 30, 'Make a coffee', 0, 0),
(26, 31, 'Brush your teath', 0, 0),
(27, 31, 'Do fb account', 0, 5),
(28, 31, 'Deactive fb account', 1, 0),
(29, 31, 'Take care of you', 1, 7),
(30, 33, 'Go to bed', 1, 0),
(31, 31, 'Do fb account', 1, 8),
(32, 34, 'Deactive fb account', 1, 0),
(33, 34, 'Do Twitter account', 0, 0),
(34, 35, 'Do you have your meal', 1, 0),
(35, 35, 'Do not brush your teeth every day', 0, 0),
(36, 35, 'Eat burger instead of pizza', 1, 0),
(37, 31, 'hello world', 1, 15),
(38, 31, 'Hello bangladesh', 1, 5),
(39, 31, 'DevTools failed to parse SourceMap', 0, 6),
(40, 32, 'DevTools to parse SourceMap', 1, 15),
(41, 32, 'Incorrect integer value parse SourceMap', 0, 15),
(42, 32, 'DevTools toIncorrect integer value', 0, 15),
(43, 31, ' integer value parse SourceMap', 1, 9),
(44, 32, ' toIncorrect integer value', 1, 14),
(45, 31, 'Make a coffee', 0, 0),
(46, 32, 'Brush your teath', 0, 0),
(47, 33, 'Do fb account', 0, 5),
(48, 34, 'Deactive fb account', 1, 0),
(49, 35, 'Take care of you', 1, 7),
(50, 35, 'Go to bed', 1, 0),
(51, 36, 'Do fb account', 1, 8),
(52, 36, 'Deactive fb account', 1, 0),
(53, 37, 'Do Twitter account', 0, 0),
(54, 38, 'Do you have your meal', 1, 0),
(55, 39, 'Do not brush your teeth every day', 0, 0),
(56, 31, 'Eat burger instead of pizza', 1, 0),
(57, 32, 'hello world', 1, 15),
(58, 33, 'Hello bangladesh', 1, 5),
(59, 34, 'DevTools failed to parse SourceMap', 0, 6),
(60, 35, 'DevTools to parse SourceMap', 1, 15),
(61, 36, 'Incorrect integer value parse SourceMap', 0, 15),
(62, 37, 'DevTools toIncorrect integer value', 0, 15),
(63, 38, ' integer value parse SourceMap', 1, 9),
(64, 39, ' toIncorrect integer value', 1, 14),
(65, 31, 'Make a coffee', 0, 0),
(66, 32, 'Brush your teath', 0, 0),
(67, 33, 'Do fb account', 0, 5),
(68, 34, 'Deactive fb account', 1, 0),
(69, 35, 'Take care of you', 1, 7),
(70, 35, 'Go to bed', 1, 0),
(71, 36, 'Do fb account', 1, 8),
(72, 36, 'Deactive fb account', 1, 0),
(73, 37, 'Do Twitter account', 0, 0),
(74, 31, 'Do you have your meal', 1, 0),
(75, 39, 'Do not brush your teeth every day', 0, 0),
(76, 39, 'Eat burger instead of pizza', 1, 0),
(77, 38, 'hello world', 1, 15),
(78, 37, 'Hello bangladesh', 1, 5),
(79, 36, 'DevTools failed to parse SourceMap', 0, 6),
(80, 35, 'DevTools to parse SourceMap', 1, 15),
(81, 34, 'Incorrect integer value parse SourceMap', 0, 15),
(82, 33, 'DevTools toIncorrect integer value', 0, 15),
(83, 32, ' integer value parse SourceMap', 1, 9),
(84, 31, ' toIncorrect integer value', 1, 14),
(85, 31, 'Make a coffee', 0, 0),
(86, 32, 'Brush your teath', 0, 0),
(87, 33, 'Do fb account', 0, 5),
(88, 34, 'Deactive fb account', 1, 0),
(89, 35, 'Take care of you', 1, 7),
(90, 35, 'Go to bed', 1, 0),
(91, 36, 'Do fb account', 1, 8),
(92, 36, 'Deactive fb account', 1, 0),
(93, 37, 'Do Twitter account', 0, 0),
(94, 38, 'Do you have your meal', 1, 0),
(95, 39, 'Do not brush your teeth every day', 0, 0),
(96, 31, 'Eat burger instead of pizza', 1, 0),
(97, 32, 'hello world', 1, 15),
(98, 33, 'Hello bangladesh', 1, 5),
(99, 34, 'DevTools failed to parse SourceMap', 0, 6),
(100, 35, 'DevTools to parse SourceMap', 1, 15),
(101, 36, 'Incorrect integer value parse SourceMap', 0, 15),
(102, 37, 'DevTools toIncorrect integer value', 0, 15),
(103, 38, ' integer value parse SourceMap', 1, 9),
(104, 39, ' toIncorrect integer value', 1, 14),
(105, 31, 'Make a coffee', 0, 0),
(106, 32, 'Brush your teath', 0, 0),
(107, 33, 'Do fb account', 0, 5),
(108, 34, 'Deactive fb account', 1, 0),
(109, 35, 'Take care of you', 1, 7),
(110, 35, 'Go to bed', 1, 0),
(111, 36, 'Do fb account', 1, 8),
(112, 36, 'Deactive fb account', 1, 0),
(113, 37, 'Do Twitter account', 0, 0),
(114, 31, 'Do you have your meal', 1, 0),
(115, 39, 'Do not brush your teeth every day', 0, 0),
(116, 39, 'Eat burger instead of pizza', 1, 0),
(117, 38, 'hello world', 1, 15),
(118, 37, 'Hello bangladesh', 1, 5),
(119, 36, 'DevTools failed to parse SourceMap', 0, 6),
(120, 35, 'DevTools to parse SourceMap', 1, 15),
(121, 34, 'Incorrect integer value parse SourceMap', 0, 15),
(122, 33, 'DevTools toIncorrect integer value', 0, 15),
(123, 32, ' integer value parse SourceMap', 1, 9),
(124, 31, ' toIncorrect integer value', 1, 14),
(125, 31, 'Make a coffee', 0, 0),
(126, 32, 'Brush your teath', 0, 0),
(127, 33, 'Do fb account', 0, 5),
(128, 34, 'Deactive fb account', 1, 0),
(129, 35, 'Take care of you', 1, 7),
(130, 35, 'Go to bed', 1, 0),
(131, 36, 'Do fb account', 1, 8),
(132, 36, 'Deactive fb account', 1, 0),
(133, 37, 'Do Twitter account', 0, 0),
(134, 38, 'Do you have your meal', 1, 0),
(135, 39, 'Do not brush your teeth every day', 0, 0),
(136, 31, 'Eat burger instead of pizza', 1, 0),
(137, 32, 'hello world', 1, 15),
(138, 33, 'Hello bangladesh', 1, 5),
(139, 34, 'DevTools failed to parse SourceMap', 0, 6),
(140, 35, 'DevTools to parse SourceMap', 1, 15),
(141, 36, 'Incorrect integer value parse SourceMap', 0, 15),
(142, 37, 'DevTools toIncorrect integer value', 0, 15),
(143, 38, ' integer value parse SourceMap', 1, 9),
(144, 39, ' toIncorrect integer value', 1, 14),
(145, 31, 'Make a coffee', 0, 0),
(146, 32, 'Brush your teath', 0, 0),
(147, 33, 'Do fb account', 0, 5),
(148, 34, 'Deactive fb account', 1, 0),
(149, 35, 'Take care of you', 1, 7),
(150, 35, 'Go to bed', 1, 0),
(151, 36, 'Do fb account', 1, 8),
(152, 36, 'Deactive fb account', 1, 0),
(153, 37, 'Do Twitter account', 0, 0),
(154, 31, 'Do you have your meal', 1, 0),
(155, 39, 'Do not brush your teeth every day', 0, 0),
(156, 39, 'Eat burger instead of pizza', 1, 0),
(157, 38, 'hello world', 1, 15),
(158, 37, 'Hello bangladesh', 1, 5),
(159, 36, 'DevTools failed to parse SourceMap', 0, 6),
(160, 35, 'DevTools to parse SourceMap', 1, 15),
(161, 34, 'Incorrect integer value parse SourceMap', 0, 15),
(162, 33, 'DevTools toIncorrect integer value', 0, 15),
(163, 32, ' integer value parse SourceMap', 1, 9),
(164, 31, ' toIncorrect integer value', 1, 14),
(165, 28, 'Make a coffee', 0, 0),
(166, 29, 'Brush your teath', 0, 0),
(167, 30, 'Do fb account', 0, 5),
(168, 31, 'Deactive fb account', 1, 0),
(169, 28, 'Take care of you', 1, 7),
(170, 28, 'Go to bed', 1, 0),
(171, 29, 'Do fb account', 1, 8),
(172, 29, 'Deactive fb account', 1, 0),
(173, 30, 'Do Twitter account', 0, 0),
(174, 31, 'Do you have your meal', 1, 0),
(175, 28, 'Do not brush your teeth every day', 0, 0),
(176, 28, 'Eat burger instead of pizza', 1, 0),
(177, 29, 'hello world', 1, 15),
(178, 30, 'Hello bangladesh', 1, 5),
(179, 31, 'DevTools failed to parse SourceMap', 0, 6),
(180, 28, 'DevTools to parse SourceMap', 1, 15),
(181, 29, 'Incorrect integer value parse SourceMap', 0, 15),
(182, 30, 'DevTools toIncorrect integer value', 0, 15),
(183, 31, ' integer value parse SourceMap', 1, 9),
(184, 28, ' toIncorrect integer value', 1, 14),
(185, 28, 'Make a coffee', 0, 0),
(186, 29, 'Brush your teath', 0, 0),
(187, 30, 'Do fb account', 0, 5),
(188, 31, 'Deactive fb account', 1, 0),
(189, 28, 'Take care of you', 1, 7),
(190, 28, 'Go to bed', 1, 0),
(191, 29, 'Do fb account', 1, 8),
(192, 29, 'Deactive fb account', 1, 0),
(193, 30, 'Do Twitter account', 0, 0),
(194, 28, 'Do you have your meal', 1, 0),
(195, 28, 'Do not brush your teeth every day', 0, 0),
(196, 28, 'Eat burger instead of pizza', 1, 0),
(197, 31, 'hello world', 1, 15),
(198, 30, 'Hello bangladesh', 1, 5),
(199, 29, 'DevTools failed to parse SourceMap', 0, 6),
(200, 28, 'DevTools to parse SourceMap', 1, 15),
(201, 31, 'Incorrect integer value parse SourceMap', 0, 15),
(202, 30, 'DevTools toIncorrect integer value', 0, 15),
(203, 29, ' integer value parse SourceMap', 1, 9),
(204, 28, ' toIncorrect integer value', 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `varified` tinyint(1) NOT NULL DEFAULT '0',
  `expire` int(10) NOT NULL,
  `link` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `varified`, `expire`, `link`) VALUES
(1, 'Sign@in.com', '43d201f7e542159a458c12e9b2f7c88e8b04eac1edcd7cf589c6d82f8c6ccc38', 0, 1234567890, '1234567'),
(2, 'jakareaparvez@ymail.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 1, 1477910038, ''),
(27, 'tanmay@tanmay.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, 1477938297, 'XDlfc73yOI'),
(28, 'cse.tanmay@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 0, 1477938563, 'wEaWyVmTfS');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
