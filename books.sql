-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 18 apr 2017 om 11:46
-- Serverversie: 5.7.11
-- PHP-versie: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `books`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `books`
--

CREATE TABLE `books` (
  `id` int(30) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `books`
--

INSERT INTO `books` (`id`, `title`) VALUES
(1, 'Things Fall Apart'),
(2, 'Fairy tales'),
(3, 'The Divine Comedy'),
(4, 'The Epic Of Gilgamesh'),
(5, 'The Book Of Job'),
(6, 'One Thousand and One Nights'),
(7, 'Njál\'s Saga'),
(8, 'Pride and Prejudice'),
(9, 'Le Père Goriot'),
(10, 'Molloy, Malone Dies, The Unnamable, the trilogy'),
(11, 'The Decameron'),
(12, 'Ficciones'),
(13, 'Wuthering Heights'),
(14, 'The Stranger'),
(15, 'Poems'),
(16, 'Journey to the End of the Night'),
(17, 'Don Quijote De La Mancha'),
(18, 'The Canterbury Tales'),
(19, 'Stories'),
(20, 'Nostromo'),
(21, 'Great Expectations'),
(22, 'Jacques the Fatalist'),
(23, 'Berlin Alexanderplatz'),
(24, 'Crime and Punishment'),
(25, 'The Idiot'),
(26, 'The Possessed'),
(27, 'The Brothers Karamazov'),
(28, 'Middlemarch'),
(29, 'Invisible Man'),
(30, 'Medea'),
(31, 'Absalom, Absalom!'),
(32, 'The Sound and the Fury'),
(33, 'Madame Bovary'),
(34, 'Sentimental Education'),
(35, 'Gypsy Ballads'),
(36, 'One Hundred Years of Solitude'),
(37, 'Love in the Time of Cholera'),
(38, 'Faust'),
(39, 'Dead Souls'),
(40, 'The Tin Drum'),
(41, 'The Devil to Pay in the Backlands'),
(42, 'Hunger'),
(43, 'The Old Man and the Sea'),
(44, 'Iliad'),
(45, 'Odyssey'),
(46, 'A Doll\'s House'),
(47, 'Ulysses'),
(48, 'Stories'),
(49, 'The Trial'),
(50, 'The Castle'),
(51, 'The recognition of Shakuntala'),
(52, 'The Sound of the Mountain'),
(53, 'Zorba the Greek'),
(54, 'Sons and Lovers'),
(55, 'Independent People'),
(56, 'Poems'),
(57, 'The Golden Notebook'),
(58, 'Pippi Longstocking'),
(59, 'Diary of a Madman'),
(60, 'Children of Gebelawi'),
(61, 'Buddenbrooks'),
(62, 'The Magic Mountain'),
(63, 'Moby Dick'),
(64, 'Essays'),
(65, 'History'),
(66, 'Beloved'),
(67, 'The Tale of Genji'),
(68, 'The Man Without Qualities'),
(69, 'Lolita'),
(70, 'Nineteen Eighty-Four'),
(71, 'Metamorphoses'),
(72, 'The Book of Disquiet'),
(73, 'Tales'),
(74, 'In Search of Lost Time'),
(75, 'Gargantua and Pantagruel'),
(76, 'Pedro Páramo'),
(77, 'The Masnavi'),
(78, 'Midnight\'s Children'),
(79, 'Bostan'),
(80, 'Season of Migration to the North'),
(81, 'Blindness'),
(82, 'Hamlet'),
(83, 'King Lear'),
(84, 'Othello'),
(85, 'Oedipus the King'),
(86, 'The Red and the Black'),
(87, 'The Life And Opinions of Tristram Shandy'),
(88, 'Confessions of Zeno'),
(89, 'Gulliver\'s Travels'),
(90, 'War and Peace'),
(91, 'Anna Karenina'),
(92, 'The Death of Ivan Ilyich'),
(93, 'The Adventures of Huckleberry Finn'),
(94, 'Ramayana'),
(95, 'The Aeneid'),
(96, 'Mahabharata'),
(97, 'Leaves of Grass'),
(98, 'Mrs Dalloway'),
(99, 'To the Lighthouse'),
(100, 'Memoirs of Hadrian');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('admin', 'FreakyITisAwesomeeee');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `books`
--
ALTER TABLE `books`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
