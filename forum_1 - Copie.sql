-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 30, 2023 at 05:13 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `forum_1`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int NOT NULL,
  `titre` text NOT NULL,
  `description` text NOT NULL,
  `contenu` text NOT NULL,
  `id_auteur` int NOT NULL,
  `pseudo_auteur` varchar(255) NOT NULL,
  `date_publication` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `titre`, `description`, `contenu`, `id_auteur`, `pseudo_auteur`, `date_publication`) VALUES
(17, 'zerty', 'azertyu', 'azertyu', 8, 'CELIA', '29/Jun/2023'),
(18, 'azerty', 'qsdfgh', 'azerty', 8, 'CELIA', '29/Jun/2023'),
(19, 'qsdfghjxcvbn,', 'qsdfghjkl', 'zertyuiop', 8, 'CELIA', '29/Jun/2023'),
(20, 'azertyu', 'azertyu', 'qsdfghjk', 10, 'casimir', '30/Jun/2023');

-- --------------------------------------------------------

--
-- Table structure for table `reponse`
--

CREATE TABLE `reponse` (
  `id` int NOT NULL,
  `id_auteur` int NOT NULL,
  `pseudo_auteur` varchar(255) NOT NULL,
  `id_question` int NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reponse`
--

INSERT INTO `reponse` (`id`, `id_auteur`, `pseudo_auteur`, `id_question`, `contenu`) VALUES
(1, 10, 'casimir', 20, 'azertyuio<br />\r\nazertyui'),
(2, 10, 'casimir', 20, 'azertyuio<br />\r\nazertyui'),
(3, 10, 'casimir', 20, 'azertyui<br />\r\nqsdfghjkl<br />\r\nqsdfghjkl<br />\r\nsdfghjkl<br />\r\n'),
(4, 10, 'casimir', 20, 'azertyui<br />\r\nqsdfghjkl<br />\r\nqsdfghjkl<br />\r\nsdfghjkl<br />\r\n'),
(5, 10, 'casimir', 20, 'azertyui<br />\r\nqsdfghjkl<br />\r\nqsdfghjkl<br />\r\nsdfghjkl<br />\r\n'),
(6, 10, 'casimir', 20, 'azertyui<br />\r\nqsdfghjkl<br />\r\nqsdfghjkl<br />\r\nsdfghjkl<br />\r\n'),
(7, 10, 'casimir', 20, 'azertyui<br />\r\nqsdfghjkl<br />\r\nqsdfghjkl<br />\r\nsdfghjkl<br />\r\n'),
(8, 10, 'casimir', 20, 'azertyui<br />\r\nqsdfghjkl<br />\r\nqsdfghjkl<br />\r\nsdfghjkl<br />\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `salarié_dev`
--

CREATE TABLE `salarié_dev` (
  `id` int NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `mdp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `salarié_dev`
--

INSERT INTO `salarié_dev` (`id`, `pseudo`, `nom`, `prenom`, `mdp`) VALUES
(7, 'ADOGO', 'ADOLOGO', 'AZERTYU', '$2y$10$ImLwupsow3oiYk/pFMmYv.lSaC6qvbV9xe832zM0M9GjweuQsD0eq'),
(8, 'CELIA', 'BATIONO', 'VALERIE', '$2y$10$3BpVv5CkLJOIzEQ.ZW.E8OhCGq4pwBTeehmLIMUq9fjrjbBS4gUpG'),
(9, 'BRICE', 'ZONGO', 'ANGE', '$2y$10$vwqtSSr/yhQpmitCWoKm0Oc1wvys.MPx9mvec5vrL89em4nnEsF9O'),
(10, 'casimir', 'zert', 'azertyazerty', '$2y$10$lwKd3HaSWIf/VwhEZ/u.S.o/SJ5XEGdRoQA0i/DXB7i3.PbF3vKci');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salarié_dev`
--
ALTER TABLE `salarié_dev`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `salarié_dev`
--
ALTER TABLE `salarié_dev`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
