-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Pon 04. bře 2019, 08:33
-- Verze serveru: 10.1.30-MariaDB
-- Verze PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `week9_v3`
--

--
-- Vypisuji data pro tabulku `captains`
--

INSERT INTO `captains` (`id`, `slug`, `name`, `story`, `serves_from`, `serves_until`, `created_at`, `updated_at`) VALUES
(1, 'kirk', 'James T. Kirk', 'James Tiberius \"Jim\" Kirk was a male Human Starfleet officer in the 23rd century. He was arguably one of the most famous and highly decorated starship captains in the history of Starfleet. As the commanding officer of the Constitution-class starships USS Enterprise and USS Enterprise-A, Kirk served United Federation of Planets interests as an explorer, soldier, time-traveler, and diplomat.', '20:00:00', '06:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(2, 'picard', 'Jean Luc Picard', 'Jean-Luc Picard was a celebrated Starfleet officer, archaeologist and diplomat who served throughout much of the 24th century. The highlights of his career were centered around assignments as commanding officer of the Federation starships USS Stargazer, USS Enterprise-D, and the USS Enterprise-E. In these roles, Picard not only witnessed major turning points of recent galactic history, but played a key role in them also, from making first contact as captain of the Federation\'s flagship with no fewer than 27 alien species, including the Ferengi and the Borg.', '10:00:00', '16:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(3, 'janeway', 'Kathryn Janeway', 'Kathryn Janeway was a 24th century Starfleet officer, most noted for her service as captain of the starship USS Voyager. She became the first Federation captain to successfully traverse the Delta Quadrant, encountering dozens of new planets and civilizations over the course of seven years. While there, she and her crew also survived numerous encounters with the Borg. By 2379, she was a vice admiral at Starfleet Command.', '09:00:00', '17:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(4, 'archer', 'Jonathan Archer', 'Jonathan Archer was a 22nd century Human Starfleet officer and captain of Enterprise NX-01, United Earth\'s first full-fledged starship. In that role, he was responsible for greatly expanding United Earth\'s presence in the Alpha and Beta Quadrants and making first contact with more than a dozen species, among them Klingons, Andorians, and Xindi.', '17:00:00', '23:00:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36'),
(5, 'georgiou', 'Philippa Georgiou', 'Captain Philippa Georgiou was a female Human Starfleet officer who lived during the mid-23rd century. She served in the command division as the commanding officer of the USS Shenzhou in 2256.', '03:00:00', '23:59:00', '2018-03-05 07:23:36', '2018-03-05 07:23:36');

--
-- Vypisuji data pro tabulku `captain_image`
--

INSERT INTO `captain_image` (`captain_id`, `image_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 2),
(3, 3);

--
-- Vypisuji data pro tabulku `images`
--

INSERT INTO `images` (`id`, `path`, `description`, `created_at`, `updated_at`) VALUES
(1, 'media/kirk-standing.jpg', 'Captain Kirk standing somewhere.', NULL, NULL),
(2, 'media/kirk-with-picard.jpg', 'Captain Kirk with captain Picard and some horses.', NULL, NULL),
(3, 'media/kirk-janeway.jpg', 'Captain Janeway\'s dream.', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
