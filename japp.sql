-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 22 okt 2019 kl 10:33
-- Serverversion: 10.4.6-MariaDB
-- PHP-version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `japp`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `kunder`
--

CREATE TABLE `kunder` (
  `kundID` int(10) UNSIGNED NOT NULL,
  `anvnamn` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `förnamn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `efternamn` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `adress` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `postnummer` int(10) NOT NULL,
  `postadress` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `telefon` varchar(10) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `order`
--

CREATE TABLE `order` (
  `orderID` int(10) UNSIGNED NOT NULL,
  `produktID` int(10) UNSIGNED NOT NULL,
  `antal` int(5) NOT NULL,
  `kundID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Tabellstruktur `products`
--

CREATE TABLE `products` (
  `ProductID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `Discription` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `Price` int(50) NOT NULL,
  `Picture` varchar(200) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `products`
--

INSERT INTO `products` (`ProductID`, `Name`, `Discription`, `Price`, `Picture`) VALUES
(1, 'Äpple', 'En frukt', 10, 'image/apple.jpg');

-- --------------------------------------------------------

--
-- Tabellstruktur `taiwan`
--

CREATE TABLE `taiwan` (
  `Username` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `Email` varchar(150) COLLATE utf8_swedish_ci NOT NULL,
  `Password` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `Status` tinyint(2) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumpning av Data i tabell `taiwan`
--

INSERT INTO `taiwan` (`Username`, `Email`, `Password`, `Status`) VALUES
('hej', 'halloj@gmail.com', 'qwe123', 0);

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `kunder`
--
ALTER TABLE `kunder`
  ADD PRIMARY KEY (`kundID`),
  ADD KEY `anvnamn` (`anvnamn`);

--
-- Index för tabell `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `produktID` (`produktID`),
  ADD KEY `kundID` (`kundID`);

--
-- Index för tabell `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Index för tabell `taiwan`
--
ALTER TABLE `taiwan`
  ADD PRIMARY KEY (`Username`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `Password` (`Password`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `kunder`
--
ALTER TABLE `kunder`
  MODIFY `kundID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `order`
--
ALTER TABLE `order`
  MODIFY `orderID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT för tabell `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
