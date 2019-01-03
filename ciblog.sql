-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Jan 03, 2019 at 06:19 PM
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
(2, 'Technology'),
(3, 'Monster'),
(4, 'xd');

-- --------------------------------------------------------

--
-- Table structure for table `Comment`
--

CREATE TABLE `Comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Comment`
--

INSERT INTO `Comment` (`id`, `post_id`, `name`, `email`, `body`) VALUES
(1, 18, 'Andrés', 'andresmontoyafcb@gmail.com', 'Great post!'),
(2, 18, 'sdasdas', 'sdassd@saa.com', 'dsdas');

-- --------------------------------------------------------

--
-- Table structure for table `Post`
--

CREATE TABLE `Post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `Post`
--

INSERT INTO `Post` (`id`, `category_id`, `user_id`, `title`, `slug`, `body`, `post_image`) VALUES
(1, 1, 0, 'How to create a webpage with codeigniter', 'How-to-create-a-webpage-with-codeigniter', '<h1><strong>You need to bla bla bla</strong></h1>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otroPrimero que todo, necesitamos descargar esto y lo otroPrimero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otroPrimero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n\r\n<p>Primero que todo, necesitamos descargar esto y lo otro</p>\r\n', 'noimage.jpg'),
(3, 2, 0, 'New editori1!!!', 'New-editori1', '<p>We have now a new editor ;) check it out</p>\r\n', 'noimage.jpg'),
(16, 1, 0, 'sdasdasdasdas', 'sdasdasdasdas', '<p>dasdasdasda</p>\r\n', 'noimage.jpg'),
(17, 1, 0, 'sasdasd', 'sasdasd', '<p>asdasdasdasasdas</p>\r\n', 'Screenshot from 2018-12-31 20-33-23.png'),
(21, 1, 0, 'sads', 'sads', '<p>asdasdas</p>\r\n', 'noimage.jpg'),
(22, 1, 0, 'sads', 'sads', '<p>asdasdas</p>\r\n', 'noimage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `User`
--

INSERT INTO `User` (`id`, `name`, `zipcode`, `email`, `username`, `password`) VALUES
(1, 'Andrés', '231321', 'andresmontoyafcb@gmail.com', 'AndresMontoya', 'c3fc5bbe8786cb4556480eb3e009508f');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Comment`
--
ALTER TABLE `Comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Comment`
--
ALTER TABLE `Comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Post`
--
ALTER TABLE `Post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
