-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2018 at 11:15 AM
-- Server version: 5.7.23
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testforfixstudy`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendies`
--

CREATE TABLE `attendies` (
  `id_attendies` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id_class` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `class_loc` varchar(50) NOT NULL,
  `class_date` date NOT NULL,
  `class_time` time(5) NOT NULL,
  `class_desc` mediumtext NOT NULL,
  `class_payment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id_class`, `id_user`, `class_name`, `class_loc`, `class_date`, `class_time`, `class_desc`, `class_payment`) VALUES
(1, 4, 'Kelas Web intermediate', 'FIK LAB 401', '2018-08-03', '09:45:57.00000', 'Kegiatan study club', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `comment` tinytext NOT NULL,
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_comment`, `id_user`, `id_post`, `comment`, `created`) VALUES
(1, 3, 1, 'Nice article', '2018-08-01 02:29:06.629678'),
(2, 2, 1, 'woww great', '2018-08-01 02:58:20.717006'),
(3, 2, 2, 'Wadawww Keren banget min...', '2018-08-01 03:01:27.302678'),
(4, 1, 2, 'Kereeen sangaaddd....', '2018-08-01 03:05:04.145080'),
(5, 1, 2, 'Kereeen sangaaddd (2x)....', '2018-08-01 03:26:23.232240');

-- --------------------------------------------------------

--
-- Table structure for table `fixclass`
--

CREATE TABLE `fixclass` (
  `id_class` int(11) NOT NULL,
  `nama_class` varchar(45) DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fixuser`
--

CREATE TABLE `fixuser` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `post` longtext NOT NULL,
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `id_user`, `post`, `created`) VALUES
(1, 3, 'This is my first post, but, there will be a great post for further more, so stay tuned yaww\n', '2018-08-01 02:05:55.968136'),
(2, 2, 'This is my second post, but, there will be a great post for further more, so stay tuned yaww.....\njangan bosen\n', '2018-08-01 02:51:24.930224'),
(3, 4, 'This is my post at 2:59 pm', '2018-08-01 07:59:17.192377');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id_profile` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `gender` tinytext,
  `department` varchar(50) DEFAULT NULL,
  `study_year` varchar(10) DEFAULT NULL,
  `bio` longtext,
  `experience` longtext,
  `phone` char(14) DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id_profile`, `id_user`, `birthdate`, `gender`, `department`, `study_year`, `bio`, `experience`, `phone`, `photo_url`, `created`) VALUES
(1, 3, '1997-05-05', '1', 'Computer Science', '2016', 'baba baba gaga baga bada', 'baba baba gaga baga bada', '083891296705', 'https://myphoto.example.com/images2', '2018-08-01 01:37:46.926529'),
(2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-01 07:48:00.867694'),
(3, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-01 09:05:51.660848'),
(4, 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-01 09:12:43.527405');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `password_user` varchar(50) NOT NULL,
  `created` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `email_user`, `password_user`, `created`) VALUES
(1, 'roy1@gmail.com', 'roypasssword1', '2018-07-31 23:06:19.546760'),
(2, 'roy2@gmail.com', 'roypasssword2', '2018-08-01 00:55:55.005855'),
(3, 'roy3@gmail.com', 'roypasssword3', '2018-08-01 01:04:53.641663'),
(4, 'roy4@gmail.com', 'roypasssword4', '2018-08-01 07:48:00.795690'),
(6, 'roy5@gmail.com', 'roypasssword5', '2018-08-01 09:12:43.397398');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendies`
--
ALTER TABLE `attendies`
  ADD PRIMARY KEY (`id_attendies`),
  ADD KEY `fk_attendies_user1_idx` (`id_user`),
  ADD KEY `fk_attendies_class1_idx` (`id_class`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id_class`),
  ADD KEY `fk_class_user1_idx` (`id_user`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `fk_comment_user1_idx` (`id_user`),
  ADD KEY `fk_comment_post1_idx` (`id_post`);

--
-- Indexes for table `fixclass`
--
ALTER TABLE `fixclass`
  ADD PRIMARY KEY (`id_class`),
  ADD KEY `fk_fixclass_fixuser_idx` (`id_user`);

--
-- Indexes for table `fixuser`
--
ALTER TABLE `fixuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `fk_post_user1_idx` (`id_user`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_profile`),
  ADD KEY `fk_mahasiswa_user1_idx` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `email_user_UNIQUE` (`email_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendies`
--
ALTER TABLE `attendies`
  MODIFY `id_attendies` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fixclass`
--
ALTER TABLE `fixclass`
  MODIFY `id_class` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fixuser`
--
ALTER TABLE `fixuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendies`
--
ALTER TABLE `attendies`
  ADD CONSTRAINT `fk_attendies_class1` FOREIGN KEY (`id_class`) REFERENCES `class` (`id_class`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_attendies_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `fk_class_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_post1` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_comment_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `fixclass`
--
ALTER TABLE `fixclass`
  ADD CONSTRAINT `fk_fixclass_fixuser` FOREIGN KEY (`id_user`) REFERENCES `fixuser` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_post_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_mahasiswa_user1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
