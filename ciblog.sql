-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 02, 2019 at 08:18 PM
-- Server version: 8.0.13
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ciblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id`, `name`) VALUES
(1, 'Business'),
(2, 'Technology');

-- --------------------------------------------------------

--
-- Table structure for table `Post`
--

CREATE TABLE `Post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Post`
--

INSERT INTO `Post` (`id`, `category_id`, `title`, `slug`, `body`, `post_image`) VALUES
(1, 1, 'How to create a webpage with codeigniter', 'How-to-create-a-webpage-with-codeigniter', '<h1><strong>You need to bla bla bla</strong></h1>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otroPrimero que todo, necesitamos descargar esto y lo otroPrimero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otroPrimero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n', 'noimage.jpg'),
(3, 2, 'New editori1!!!', 'New-editori1', '<p>We have now a new editor ;) check it out</p>\r\n', 'noimage.jpg'),
(16, 1, 'sdasdasdasdas', 'sdasdasdasdas', '<p>dasdasdasda</p>\r\n', 'noimage.jpg'),
(17, 1, 'sasdasd', 'sasdasd', '<p>asdasdasdasasdas</p>\r\n', 'Screenshot from 2018-12-31 20-33-23.png'),
(18, 1, 'sdas', 'sdas', '<p>sdasdas</p>\r\n', 'Screenshot from 2018-12-31 20-33-23.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Post`
--
ALTER TABLE `Post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
