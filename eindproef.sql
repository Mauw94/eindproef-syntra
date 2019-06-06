-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 06 jun 2019 om 11:27
-- Serverversie: 10.1.36-MariaDB
-- PHP-versie: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eindproef`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `applied_projects`
--

CREATE TABLE `applied_projects` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `apply_status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `applied_projects`
--

INSERT INTO `applied_projects` (`id`, `user_id`, `project_id`, `company_id`, `apply_status`) VALUES
(25, 9, 11, 3, NULL),
(26, 9, 15, 3, NULL);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `contact_person` varchar(80) NOT NULL,
  `active` int(11) NOT NULL,
  `looking_for` varchar(100) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `reg_time_stamp` int(11) NOT NULL,
  `company` tinyint(1) NOT NULL DEFAULT '1',
  `email_confirmed` tinyint(4) NOT NULL,
  `setup_profile` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `companies`
--

INSERT INTO `companies` (`id`, `name`, `contact_person`, `active`, `looking_for`, `email`, `phone`, `password`, `reg_time_stamp`, `company`, `email_confirmed`, `setup_profile`) VALUES
(3, 'TestingComp1', 'John Wick', 0, 'java dev', 'comp1@gmail.com', 123456789, '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', 0, 1, 1, 1),
(4, 'TestingComp2', 'John Wick2', 0, 'php', 'comp2@gmail.com', 123457689, '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `prog_lang` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `keywords` varchar(200) NOT NULL,
  `project_owner` varchar(80) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `location` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `projects`
--

INSERT INTO `projects` (`id`, `company_id`, `prog_lang`, `name`, `description`, `keywords`, `project_owner`, `start_date`, `end_date`, `location`) VALUES
(11, 3, 'java', 'TestProj1', 'some app using java :)', 'java app', 'John Wick', '2019-06-06', '2019-06-25', 'genk'),
(12, 3, '.net', 'TestProj2', 'some app using .net : )', '.net app', 'John Wick 2', '2019-06-13', '2019-06-27', 'genk'),
(13, 4, 'php', 'new_project_123', 'new webapp using laravel as backend, react as frontend', 'php laravel', '/', '2019-09-02', '2020-02-06', 'brussel'),
(14, 3, 'typescript', 'TestProj3', 'angular based webapp - need frontend dev', 'angular typescript', '/', '2019-07-10', '2019-08-01', 'Brugge'),
(15, 3, 'nodejs node', 'NewProject_10', 'nodejs backend ', 'nodejs node backend', 'Harry', '2019-06-07', '2019-06-21', 'Hasselt');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `saved_projects`
--

CREATE TABLE `saved_projects` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `saved_projects`
--

INSERT INTO `saved_projects` (`id`, `user_id`, `project_id`) VALUES
(15, 9, 13),
(16, 9, 12),
(17, 9, 11);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(80) NOT NULL,
  `last_name` varchar(80) NOT NULL,
  `years_experience` int(11) NOT NULL,
  `prog_languages` varchar(150) DEFAULT NULL,
  `github` varchar(50) DEFAULT NULL,
  `reg_time_stamp` datetime DEFAULT CURRENT_TIMESTAMP,
  `available` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `nationality` varchar(80) DEFAULT NULL,
  `hobbies` varchar(150) DEFAULT NULL,
  `email` varchar(80) NOT NULL,
  `phone` int(11) DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `price_h` float DEFAULT NULL,
  `pref_language` varchar(80) DEFAULT NULL,
  `min_days_week` int(11) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `email_confirmed` tinyint(4) NOT NULL,
  `setup_profile` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `years_experience`, `prog_languages`, `github`, `reg_time_stamp`, `available`, `age`, `nationality`, `hobbies`, `email`, `phone`, `rating`, `price_h`, `pref_language`, `min_days_week`, `password`, `email_confirmed`, `setup_profile`) VALUES
(9, 'Free1', 'Lancer', 5, 'java .net php', 'https://github.com/....', '2019-06-06 10:55:13', 0, 38, 'dutch', '/', 'free1@gmail.com', 123456789, NULL, 15, 'php', 5, '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', 1, 1);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `applied_projects`
--
ALTER TABLE `applied_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexen voor tabel `saved_projects`
--
ALTER TABLE `saved_projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `applied_projects`
--
ALTER TABLE `applied_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT voor een tabel `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT voor een tabel `saved_projects`
--
ALTER TABLE `saved_projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
