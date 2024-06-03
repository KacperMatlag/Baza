-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 03, 2024 at 10:33 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `announcementdb`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `announcement`
--

CREATE TABLE `announcement` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `JobPositionID` int(11) UNSIGNED NOT NULL,
  `JobLevelID` int(10) UNSIGNED DEFAULT NULL,
  `TypeOfContractID` int(10) UNSIGNED DEFAULT NULL,
  `WorkingTimeID` int(10) UNSIGNED NOT NULL,
  `WorkTypeID` int(10) UNSIGNED NOT NULL,
  `WorkCategoryID` int(10) UNSIGNED NOT NULL,
  `ExpirationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `MinWage` int(11) NOT NULL,
  `MaxWage` int(11) NOT NULL,
  `CompanyID` int(10) UNSIGNED NOT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`ID`, `Title`, `Description`, `JobPositionID`, `JobLevelID`, `TypeOfContractID`, `WorkingTimeID`, `WorkTypeID`, `WorkCategoryID`, `ExpirationDate`, `MinWage`, `MaxWage`, `CompanyID`, `CreatedAt`) VALUES
(3, 'Front-end Developer', 'Build user interfaces and create amazing user experiences.', 4, 2, 1, 2, 1, 2, '2024-12-11 23:00:00', 70000, 100000, 1, '2023-10-28 22:00:00'),
(4, 'HR Specialist', 'Join our HR team and contribute to employee success.', 1, 1, 2, 1, 2, 3, '2024-04-23 21:04:01', 60000, 90000, 19, '2023-10-28 22:00:00'),
(5, 'Graphic Designer', 'Create visually appealing designs for our brand.', 3, 2, 1, 1, 1, 1, '2024-12-11 23:00:00', 55000, 80000, 2, '2023-10-28 22:00:00'),
(6, 'Sales Representative', 'Drive sales and build relationships with clients.', 2, 1, 2, 2, 2, 2, '2024-12-11 23:00:00', 65000, 95000, 1, '2023-10-28 22:00:00'),
(7, 'Network Administrator', 'Manage and maintain our network infrastructure.', 4, 2, 1, 1, 1, 3, '2024-12-11 23:00:00', 75000, 110000, 3, '2023-10-28 22:00:00'),
(8, 'Content Writer', 'Create engaging and informative content for our audience.', 3, 1, 2, 2, 1, 1, '2024-12-11 23:00:00', 50000, 75000, 2, '2023-10-28 22:00:00'),
(9, 'Financial Analyst', 'Analyze financial data and provide insights for decision-making.', 2, 2, 1, 1, 2, 2, '2024-12-11 23:00:00', 70000, 100000, 1, '2023-10-28 22:00:00'),
(10, 'Customer Support Specialist', 'Assist customers and provide exceptional support.', 1, 1, 2, 1, 2, 3, '2024-12-11 23:00:00', 55000, 80000, 3, '2023-10-28 22:00:00'),
(11, 'Product Manager', 'Lead the development and launch of new products.', 4, 2, 1, 2, 1, 2, '2024-12-11 23:00:00', 80000, 120000, 2, '2023-10-28 22:00:00'),
(12, 'Quality Assurance Engineer', 'Ensure the quality of our software products.', 3, 1, 2, 1, 1, 1, '2024-12-11 23:00:00', 60000, 90000, 1, '2023-10-28 22:00:00'),
(13, '123', '123', 1, 1, 1, 1, 1, 1, '2024-12-11 23:00:00', 1, 0, 1, '2023-11-10 23:00:00'),
(14, 'Jakas super robota', 'Serio ci mowie', 2, 9, 2, 1, 1, 1, '2024-12-11 23:00:00', 123, 456, 1, '2023-11-10 23:00:00'),
(52, 'Praca jakas', 'Jakis super opis', 12, 1, 1, 1, 2, 8, '2024-01-15 19:06:37', 3000, 6000, 1, '2024-01-29 17:57:18'),
(53, 'Ogloszenie testowe', 'Ogloszenie testowe', 2, 2, 1, 2, 2, 1, '2024-01-21 00:00:00', 5000, 7000, 1, '2024-01-15 19:08:27'),
(54, 'SuperSprawa', 'SuperSprawa SuperSprawa', 10, 6, 2, 1, 1, 6, '2024-02-18 00:00:00', 1, 2, 1, '2024-02-04 17:24:02'),
(55, 'Super Tytul', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 12, 3, 3, 2, 1, 8, '2024-03-03 00:00:00', 1, 2, 1, '2024-02-21 19:00:08'),
(56, 'Oferowane przez pracodawce', 'Oferowane przez pracodawceOferowane przez pracodawce', 15, 1, 1, 1, 1, 11, '2024-03-03 00:00:00', 1, 2, 1, '2024-03-01 14:34:00'),
(57, 'Oferowane przez pracodawce', 'Oferowane przez pracodawceOferowane przez pracodawce', 15, 1, 1, 1, 1, 11, '2024-03-03 00:00:00', 1, 2, 1, '2024-03-01 14:36:26'),
(58, 'Ogloszenie testowe', 'Ogloszenie testowe', 15, 3, 2, 2, 2, 11, '2024-03-31 00:00:00', 1, 2, 1, '2024-03-02 16:50:08'),
(59, 'superzmianajakastego', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 15, 4, 3, 2, 3, 11, '2024-04-23 21:41:55', 1, 2, 1, '2024-03-05 19:10:13'),
(60, 'SuperZadyma', 'SuperZadyma', 15, 1, 1, 1, 2, 11, '2024-03-03 00:00:00', 1, 2, 1, '2024-03-13 11:37:42'),
(61, 'Jakies masne ogloszenie', 'Jakies masne ogloszenie', 12, 1, 6, 1, 2, 8, '2024-03-24 00:00:00', 1, 2, 1, '2024-03-16 17:26:03'),
(62, 'SuperNoweOgloszenie', 'SuperNoweOgloszenie', 15, 2, 1, 1, 1, 11, '2024-03-25 21:09:26', 1, 1, 19, '2024-03-25 21:08:31'),
(78, 'Lubie to', 'Cos ciekawego', 8, 2, 3, 3, 2, 4, '2024-06-09 00:00:00', 123, 456, 27, '2024-06-03 16:26:53'),
(87, 'HamburgerHamburgerHamburger', 'HamburgerHamburgerHamburger', 12, 2, 3, 1, 2, 8, '2024-06-03 20:07:25', 123, 456, 19, '2024-06-03 20:04:26'),
(88, 'SuperSprawaStarySuperSprawaStary', 'SuperSprawaStarySuperSprawaStary', 7, 2, 1, 1, 2, 3, '2024-06-16 00:00:00', 1, 1, 36, '2024-06-03 20:17:02'),
(89, 'SuperSprawaStarySuperSprawaStarySuperSprawaStarySuperSprawaStary', 'SuperSprawaStarySuperSprawaStarySuperSprawaStarySuperSprawaStary', 15, 1, 2, 2, 1, 11, '2024-06-20 00:00:00', 1, 2, 36, '2024-06-03 20:28:28');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `application`
--

CREATE TABLE `application` (
  `ID` int(11) NOT NULL,
  `AnnouncementID` int(11) NOT NULL,
  `ProfileID` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`ID`, `AnnouncementID`, `ProfileID`, `createdAt`, `updatedAt`) VALUES
(18, 14, 59, '2024-06-03 18:03:57', '2024-06-03 18:03:57');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categorywithpositions`
--

CREATE TABLE `categorywithpositions` (
  `ID` int(11) NOT NULL,
  `JobPositionID` int(11) UNSIGNED DEFAULT NULL,
  `WorkCategoryID` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorywithpositions`
--

INSERT INTO `categorywithpositions` (`ID`, `JobPositionID`, `WorkCategoryID`) VALUES
(61, 1, 1),
(62, 2, 1),
(63, 3, 1),
(64, 4, 1),
(65, 5, 2),
(66, 6, 2),
(67, 7, 3),
(68, 8, 4),
(69, 9, 5),
(70, 10, 6),
(71, 11, 7),
(72, 12, 8),
(73, 13, 9),
(74, 14, 10),
(75, 15, 11),
(76, 16, 12),
(77, 17, 13),
(78, 18, 14),
(79, 19, 15),
(80, 20, 16);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `company`
--

CREATE TABLE `company` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL,
  `AddressID` int(10) UNSIGNED NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`ID`, `Name`, `AddressID`, `Description`, `Image`) VALUES
(1, 'Lenovo Polska', 6, NULL, 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(2, 'TechSolutions Co.', 6, 'Tworzymy innowacyjne rozwiązania technologiczne.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(3, 'Hospitality Experts', 6, 'Specjaliści w dziedzinie hotelarstwa i obsługi klienta.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(4, 'GreenAgro Farms', 6, 'Zajmujemy się produkcją ekologicznych artykułów rolnych.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(5, 'MediaMasters Agency', 6, 'Agencja reklamowa zajmująca się mediami i marketingiem.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(6, 'TransportEase Logistics', 6, 'Zapewniamy kompleksowe usługi logistyczne.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(7, 'ArtisticExpressions Studio', 6, 'Studio artystyczne specjalizujące się w tworzeniu dzieł sztuki.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(8, 'EducationHub Institute', 6, 'Instytut edukacyjny oferujący różnorodne kursy i szkolenia.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(9, 'TelecomConnect Solutions', 6, 'Specjaliści w dziedzinie telekomunikacji i sieci.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(10, 'IndustryInnovators Ltd.', 6, 'Innowacyjne rozwiązania dla przemysłu.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(11, 'SalesForce Experts', 6, 'Zespołowi eksperci ds. sprzedaży i obsługi klienta.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(12, 'Firma', 6, '123', '123'),
(13, 'SuperSprawa', 12, 'SuperAkcja', NULL),
(14, 'LAskowa', 13, 'Firma', NULL),
(15, 'Cos', 1, 'Ktos', NULL),
(16, 'SuperSpaera', 15, 'SuperSpaera', NULL),
(17, '', 2, '', NULL),
(18, 'ZZZ', 16, 'AAA', NULL),
(19, 'xxx', 17, 'z', 'http://localhost:2137/uploads/9c40b768-d0a1-4016-a911-38b3ec3186ee.gif'),
(20, '', 2, '', 'http://localhost:2137/uploads/823fc743-c656-42e2-bff6-f0ffacf17b8d.gif'),
(21, 'Limanowska firma niczego', 2, 'Limanowska firma niczego', NULL),
(22, 'Limanowska firma niczego', 2, 'Limanowska firma niczego', NULL),
(24, 'FirmaMoja', 20, 'MojaFirma', NULL),
(25, 'Moja nuwafirma', 21, 'Super firma', 'http://localhost:2137/uploads/4202a2b5-ba63-4a1d-8193-11e7ad8a6dc7.gif'),
(27, 'Spoko firma123', 23, 'zzzz', 'http://localhost:2137/uploads/6059207e-08c9-4fc5-8950-55a581660b4d.gif'),
(30, 'hjfdhjifsdka', 24, 'hjfdhjifsdk', 'http://localhost:2137/uploads/c12dabdb-e8d8-4a75-ae22-c5583600865b.gif'),
(35, 'SuperSprawaStary', 29, 'SuperSprawaStary', NULL),
(36, 'CCCCCCCCCCCCCCCCCCC', 20, 'ZZZZZZZZZZZZZZZZ', 'http://localhost:2137/uploads/9f41c46c-4ea2-46ad-a4d3-455884770386.gif');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `course`
--

CREATE TABLE `course` (
  `ID` int(11) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Organizer` varchar(200) NOT NULL,
  `StartDate` datetime DEFAULT NULL,
  `EndDate` datetime DEFAULT NULL,
  `ProfileID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`ID`, `Name`, `Organizer`, `StartDate`, `EndDate`, `ProfileID`) VALUES
(1, 'Kurs c++', 'Super organizator', '2024-04-29 00:00:00', '2024-05-05 00:00:00', 59),
(2, 'Super Kurs', 'Super Ogranizator', '2024-04-29 00:00:00', '2024-05-05 00:00:00', 59);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `duties`
--

CREATE TABLE `duties` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(150) NOT NULL,
  `AnnouncementID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `duties`
--

INSERT INTO `duties` (`ID`, `Name`, `AnnouncementID`) VALUES
(1, 'a', 8),
(24, 'obowiazek 1', 52),
(25, 'obowiazek 3', 52),
(26, 'obowiazek 2', 52),
(27, 'obowiazki 1', 53),
(28, 'obowiazki 2', 53),
(29, 'obowiazki 3', 53),
(30, 'jakies cos', 54),
(31, '1234', 59),
(32, '1234', 60),
(33, '12344', 60),
(34, 'obowiazek', 61);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `education`
--

CREATE TABLE `education` (
  `ID` int(10) UNSIGNED NOT NULL,
  `SchoolName` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `SchoolType` int(11) NOT NULL,
  `FieldOfStudy` varchar(100) DEFAULT NULL,
  `StartDate` int(11) NOT NULL,
  `EndDate` int(11) DEFAULT NULL,
  `Still` tinyint(1) NOT NULL,
  `ProfileID` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`ID`, `SchoolName`, `City`, `SchoolType`, `FieldOfStudy`, `StartDate`, `EndDate`, `Still`, `ProfileID`) VALUES
(26, 'ZSTIO Limanowa', 'Limanowa', 3, 'Technik Programista', 2019, 2025, 0, 59),
(28, 'WSEI', 'Kraków', 5, 'Informatyka', 2026, NULL, 0, 59),
(29, 'Szkoła podstawowa', 'Młynne', 1, NULL, 2012, 2019, 0, 59),
(30, 'Jakas Szkola', 'cos', 2, 'Kierunek', 1999, 2010, 0, 78),
(31, 'Szkola2', 'Miasto2', 3, 'Kierunek2', 20011, 2022, 0, 78),
(32, 'ZSTIO', 'Limanowa', 3, 'Jakis', 2005, 2009, 0, 79);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employment`
--

CREATE TABLE `employment` (
  `ID` int(11) NOT NULL,
  `Company` varchar(100) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `StartDate` datetime NOT NULL,
  `EndDate` datetime NOT NULL,
  `ProfileID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employment`
--

INSERT INTO `employment` (`ID`, `Company`, `Position`, `StartDate`, `EndDate`, `ProfileID`) VALUES
(13, 'Firma1', 'Pozycja1', '2024-06-30 00:00:00', '2024-07-01 00:00:00', 59);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `experience`
--

CREATE TABLE `experience` (
  `ID` int(10) UNSIGNED NOT NULL,
  `PositionID` int(10) UNSIGNED NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `CompanyID` int(10) UNSIGNED NOT NULL,
  `Still` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `joblevel`
--

CREATE TABLE `joblevel` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `joblevel`
--

INSERT INTO `joblevel` (`ID`, `Name`) VALUES
(1, 'praktykant/stażysta'),
(2, 'asystent'),
(3, 'młodszy specjalista (junior)'),
(4, 'specjalista  (mid)'),
(5, ' starszy specjalista (senior)'),
(6, 'ekspert'),
(7, 'kierownik/koordynator'),
(8, 'menedżer'),
(9, 'dyrektor'),
(10, 'prezes');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `jobposition`
--

CREATE TABLE `jobposition` (
  `ID` int(11) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobposition`
--

INSERT INTO `jobposition` (`ID`, `Name`) VALUES
(8, 'Analityk Finansowy'),
(13, 'Artysta/Artystka'),
(14, 'Dziennikarz/Dziennikarka'),
(9, 'Inżynier Mechanik'),
(16, 'Inżynier Produkcji'),
(3, 'Inżynier Sieciowy'),
(12, 'Kierowca Dostawca'),
(5, 'Kierownik Hotelu'),
(18, 'Kierownik Marketingu'),
(7, 'Nauczyciel'),
(10, 'Pielęgniarka/Pielegniarz'),
(2, 'Programista Backend'),
(1, 'Programista Frontend'),
(4, 'Projektant UX/UI'),
(11, 'Przedstawiciel Handlowy'),
(19, 'Przedstawiciel Obsługi Klienta'),
(15, 'Specjalista ds. HR'),
(20, 'Specjalista ds. Telekomunikacji'),
(17, 'Specjalista Rolnictwa'),
(6, 'Szef Kuchni');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `language`
--

CREATE TABLE `language` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`ID`, `Name`) VALUES
(1, 'Angielski'),
(2, 'Polski'),
(3, 'Niemiecki'),
(4, 'Francuski'),
(5, 'Hiszpański'),
(6, 'Włoski'),
(7, 'Rosyjski'),
(8, 'Chiński'),
(9, 'Japoński'),
(10, 'Arabski'),
(11, 'Portugalski'),
(12, 'Holenderski'),
(13, 'Szwedzki'),
(14, 'Norweski'),
(15, 'Fiński'),
(16, 'Duński'),
(17, 'Turecki'),
(18, 'Koreański'),
(19, 'Grecki'),
(20, 'Czeski'),
(21, 'Węgierski'),
(22, 'Słowacki');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `profile`
--

CREATE TABLE `profile` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Email` varchar(250) NOT NULL,
  `PhoneNumber` varchar(9) DEFAULT NULL,
  `ProfilePicture` varchar(500) DEFAULT NULL,
  `AddressID` int(11) UNSIGNED DEFAULT NULL,
  `ProfessionalSummary` varchar(1000) DEFAULT NULL,
  `CurrentJobPositionID` int(11) UNSIGNED DEFAULT NULL,
  `CurrentJobPositionDescription` varchar(500) DEFAULT NULL,
  `Skills` varchar(1000) DEFAULT NULL,
  `ProfilePictureURL` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`ID`, `Name`, `Surname`, `DateOfBirth`, `Email`, `PhoneNumber`, `ProfilePicture`, `AddressID`, `ProfessionalSummary`, `CurrentJobPositionID`, `CurrentJobPositionDescription`, `Skills`, `ProfilePictureURL`) VALUES
(59, 'Michał2', 'Zbedny', '2024-02-18', 'a@pl.pl', '123456789', NULL, 19, NULL, 10, 'aaaaa', NULL, 'http://localhost:2137/uploads/185254a6-db15-42e6-a0b1-f9144aa98295.gif'),
(60, 'IMIE MOJE', 'Nazwisko', NULL, 'a@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Jasksa', 'sasasasaasaaa', NULL, 'a@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'KKKKKKKK', 'LLLLLLL', NULL, 'A@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'KKKKKKKK', 'LLLLLLLL', NULL, 'PL@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'Kacper', 'Jakis', NULL, '123456@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Super', 'Sprawa', NULL, 'ss@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'JAKISREGISTER', 'JAKISREGISTER', NULL, 'JAKISREGISTER@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'JAKISREGISTER', 'JAKISREGISTER', NULL, 'JAKISREGISTER@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'SuperLogin', 'SuperLogin', NULL, 'SuperLogin@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'localhost', 'localhost', NULL, 'localhost@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'JakiesCos', 'JakiesCos', NULL, 'JakiesCos@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'AAAAAAAAAAAAAA', 'AAAAAAAAAAAAAAAA', NULL, 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'AAAAAAAAAAAAAAAAAAAAAAAAAA', 'AAAAAAAAAAAAAAAAAAAAAAAAAA', NULL, 'AAAAAAAAAAAAAAAAAAAAAAAAAA@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'ZZZZZZZZZZZ', 'ZZZZZZZZZZZ', NULL, 'ZZZZZZZZZZZ@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'testowe', 'testowe', NULL, 'testowe@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Michał', 'Michał', NULL, 'michal@pl.pl', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Marcin', 'Nazwisko', '2024-05-05', 'Imie@pl.pl', '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Marcinek', 'Nowak', '2024-05-05', 'Nowak@pl.pl', '321321321', NULL, 22, NULL, 15, 'OPIS JAKIS', NULL, 'http://localhost:2137/uploads/8ac29b37-4db5-4224-8994-5656fa496fc6.gif'),
(79, 'Adam', 'Jakis', '2024-06-02', 'adam@pl.pl', '123456789', NULL, 25, NULL, 7, 'Super Nauczyciel', NULL, 'http://localhost:2137/uploads/a6f6d3ce-c12e-4b75-a52c-bf80db771171.gif');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `requirements`
--

CREATE TABLE `requirements` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(150) NOT NULL,
  `AnnouncementID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requirements`
--

INSERT INTO `requirements` (`ID`, `Name`, `AnnouncementID`) VALUES
(11, 'wymagania 1', 52),
(12, 'wymagania 2', 52),
(13, 'wymagania 3', 52),
(14, 'Wymagania 1', 53),
(15, 'Wymagania 2', 53),
(16, 'Wymagania 3', 53),
(17, 'super sprawa', 54),
(18, 'wymog', 61);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `schooltype`
--

CREATE TABLE `schooltype` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schooltype`
--

INSERT INTO `schooltype` (`ID`, `Name`) VALUES
(1, 'Szkoła podstawowa'),
(2, 'Liceum'),
(3, 'Technikum'),
(4, 'Szkoła branżowa'),
(5, 'Uczelnia wyższa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `services`
--

CREATE TABLE `services` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL,
  `UrlPrefix` varchar(100) NOT NULL,
  `ImageUrl` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ID`, `Name`, `UrlPrefix`, `ImageUrl`) VALUES
(1, 'GitHub', 'https://github.com/', 'https://cdn-icons-png.flaticon.com/512/25/25231.png'),
(2, 'LinkedIn', 'https://www.linkedin.com/', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/600px-LinkedIn_logo_initials.png'),
(3, 'Discord', 'https://discord.gg/', 'https://cdn.logojoy.com/wp-content/uploads/20210422095037/discord-mascot.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `expires` int(11) UNSIGNED NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`session_id`, `expires`, `data`) VALUES
('eVderFn11yg51acYTpXISlG-kNd14XZY', 1717448557, '{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2024-06-03T20:59:37.353Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"user\":{\"ID\":79,\"Login\":\"LubiePlacki\",\"ProfileID\":78,\"Profile\":{\"ID\":78,\"Name\":\"Marcinek\",\"Surname\":\"Nowak\",\"DateOfBirth\":\"2024-05-05\",\"Email\":\"Nowak@pl.pl\",\"PhoneNumber\":\"321321321\",\"ProfilePicture\":null,\"AddressID\":22,\"ProfessionalSummary\":null,\"CurrentJobPositionID\":15,\"CurrentJobPositionDescription\":\"OPIS JAKIS\",\"Skills\":null,\"ProfilePictureURL\":\"http://localhost:2137/uploads/8ac29b37-4db5-4224-8994-5656fa496fc6.gif\",\"Applications\":[],\"Employment\":[],\"Companies\":[{\"ID\":5,\"ProfileID\":78,\"CompanyID\":26,\"HierarchyID\":null,\"Company\":{\"ID\":26,\"Name\":\"123\",\"Description\":\"123\",\"Image\":null,\"AddressID\":23,\"Address\":{\"ID\":23,\"Address\":\"TX-123 Bus, Seguin, TX 78155\",\"Longitude\":30,\"Latitude\":-98}}},{\"ID\":11,\"ProfileID\":78,\"CompanyID\":32,\"HierarchyID\":null,\"Company\":{\"ID\":32,\"Name\":\"ZSTIO firma\",\"Description\":\"ZSTIO firma\",\"Image\":\"http://localhost:2137/uploads/b96af248-18c1-4d7b-8999-9606ebff2f3a.gif\",\"AddressID\":27,\"Address\":{\"ID\":27,\"Address\":\"Leśna 67, 34-600 Limanowa, Polska\",\"Longitude\":50,\"Latitude\":20}}}],\"JobPosition\":{\"ID\":15,\"Name\":\"Specjalista ds. HR\"},\"Services\":[{\"ID\":22,\"ProfileID\":78,\"ServiceID\":2,\"Link\":\"https://www.linkedin.com/Potrzebny321\",\"Service\":{\"ID\":2,\"Name\":\"LinkedIn\",\"UrlPrefix\":\"https://www.linkedin.com/\",\"ImageUrl\":\"https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/600px-LinkedIn_logo_initials.png\"}},{\"ID\":23,\"ProfileID\":78,\"ServiceID\":1,\"Link\":\"https://github.com/KacperMatlag\",\"Service\":{\"ID\":1,\"Name\":\"GitHub\",\"UrlPrefix\":\"https://github.com/\",\"ImageUrl\":\"https://cdn-icons-png.flaticon.com/512/25/25231.png\"}}],\"Address\":{\"ID\":22,\"Address\":\"Siekierczyna 234, 34-600 Limanowa Gmina, Poland\",\"Longitude\":50,\"Latitude\":20},\"Languages\":[{\"ID\":56,\"LanguageID\":22,\"Level\":\"B2\",\"ProfileID\":78,\"Language\":{\"ID\":22,\"Name\":\"Słowacki\"}},{\"ID\":57,\"LanguageID\":5,\"Level\":\"B2\",\"ProfileID\":78,\"Language\":{\"ID\":5,\"Name\":\"Hiszpański\"}},{\"ID\":58,\"LanguageID\":9,\"Level\":\"C2\",\"ProfileID\":78,\"Language\":{\"ID\":9,\"Name\":\"Japoński\"}}],\"Education\":[{\"ID\":30,\"SchoolName\":\"Jakas Szkola\",\"City\":\"cos\",\"FieldOfStudy\":\"Kierunek\",\"StartDate\":1999,\"EndDate\":2010,\"ProfileID\":78,\"SchoolType\":2,\"schoolType\":{\"ID\":2,\"Name\":\"Liceum\"}},{\"ID\":31,\"SchoolName\":\"Szkola2\",\"City\":\"Miasto2\",\"FieldOfStudy\":\"Kierunek2\",\"StartDate\":20011,\"EndDate\":2022,\"ProfileID\":78,\"SchoolType\":3,\"schoolType\":{\"ID\":3,\"Name\":\"Technikum\"}}],\"Course\":[]}}}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `training`
--

CREATE TABLE `training` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL,
  `organizer` varchar(200) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `typeofcontract`
--

CREATE TABLE `typeofcontract` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `typeofcontract`
--

INSERT INTO `typeofcontract` (`ID`, `Name`) VALUES
(1, 'o pracę'),
(2, 'o dzieło'),
(3, 'zlecenie'),
(4, 'B2B'),
(5, 'zastępstwo'),
(6, 'staż/praktyka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Password` varchar(1000) NOT NULL,
  `ProfileID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Login`, `Password`, `ProfileID`) VALUES
(59, 'Login', '$2a$10$ox4qhLfjaGxLfANaXL8xZOYLA4KikMvdVi7nW/Qd2ojCR7t5uxjHC', 59),
(60, 'JakisLogin', '$2a$10$MTizb71CMK.zIIbdxWTXFeFjGkBQ2pMGz51TnsUKDTjN8EzXQZdT.', 60),
(61, 'JakiesImie', '$2a$10$G6fSdzipXAFmR29aB.P7YeS7AIjbiAYHx7Gctvll/sk9G5IMpdonC', 61),
(70, 'JAKISREGISTER', '$2a$10$2qY/TgQGOVrlP6zxfyaiCeTc8/AGSVOpEmcB8AmvV1YUnCv006KxG', 68),
(71, 'SuperLogin', '$2a$10$aPWaLRu9542pMjq90MOvaeyD5n60Tw3iX55ropDBmUjA198SK3is6', 69),
(72, 'localhost', '$2a$10$1adLuuXyjr3Gf8Bwcz0HKehRlXACnDJ6MAf86Wy0KmX3WxqSBuCE6', 70),
(73, 'JakiesCos', '$2a$10$c14g/6BwUgpGT.4M8AA7o.KhJKHQ176RLrxOXQTw7MvDigtc6cmKS', 71),
(74, 'AAAAAAAAAAAAAAAAAAAAAAAAAA', 'AAAAAAAAAAAAAAAAAAAAAAAAAA', 73),
(75, 'ZZZZZZZZZZZ', '$2a$10$.pLJQOcNqS48NT0x6EXGh.Rzt3p6SwHwrvC1xQQVawsuR08u.8m0e', 74),
(76, 'testowe', '$2a$10$pYOi3eZ..EsQtKAIj6vABeVkmrK/M.S2u1wMGUSV.lVXauyQ8yIqq', 75),
(77, 'Login2', '$2a$10$BIUleDK3R6Rw7kQwqsj5h.Q0tOouOcudfoBGcoe6c6KnptfX7PxaW', 76),
(78, 'SuperLogin123', '$2a$10$0eNNwCWxgHk4yGnaNQXAAe7D0B1Qf.dQC4SVuQYCcMPqKy0Hjh9zu', 77),
(79, 'LubiePlacki', '$2a$10$GIyGrPTZgl2aqoK5QR4Mdu25CkOexZmDknr5Dd9n4YPud82/FVFJ6', 78),
(80, 'Testowe123', '$2a$10$zbiCiHYvpI/EYf6Y97sp8eXHmRqNxgtprILl3ojJNjG8m.StsZgMC', 79);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `useraddress`
--

CREATE TABLE `useraddress` (
  `ID` int(11) UNSIGNED NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Longitude` int(11) NOT NULL,
  `Latitude` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useraddress`
--

INSERT INTO `useraddress` (`ID`, `Address`, `Longitude`, `Latitude`) VALUES
(1, 'Józefa Piłsudskiego 25, 34-600 Limanowa, Poland', 50, 20),
(2, '', 0, 0),
(6, 'Józefa Marka 69, 34-600 Limanowa, Poland', 50, 20),
(7, 'Krakowska 23, 34-600 Limanowa, Poland', 50, 20),
(8, 'Lipowa 26, 34-600 Limanowa, Poland', 50, 20),
(9, 'Krakowska 27, 34-600 Limanowa, Poland', 50, 20),
(10, '28, 34-600 Limanowa, Poland', 50, 20),
(11, 'Krakowska 29, 34-600 Limanowa, Poland', 50, 20),
(12, 'Józefa Piłsudskiego 30, 34-600 Limanowa, Poland', 50, 20),
(13, 'Laskowa 75, 34-602 Laskowa, Poland', 50, 20),
(14, 'Engenho Barbalho Ll 32, 124, Charneca, Cabo de Santo Agostinho - Pernambuco, 54500-000, Brazil', -8, -35),
(15, 'Laskowa 69, 34-602 Laskowa, Poland', 50, 20),
(16, 'Jalan Sungai Burung AA 32/AA, 40460 Kelang, Selangor, Malaysia', 3, 102),
(17, 'Jl. Perkebunan Blok Z No. 10, Kecamatan Percut Sei Tuan, Deli Serdang Regency, Sumatera Utara 20371, Indonesia', 4, 99),
(18, 'Pasternik 26, 31-354 Cracow, Poland', 50, 20),
(19, 'Podegrodzie 3, 33-386 Gmina Podegrodzie, Poland', 50, 21),
(20, 'Leśna 23, 34-600 Limanowa, Polska', 50, 20),
(21, 'Dworna 34, 30-244 Cracow, Poland', 50, 20),
(22, 'Siekierczyna 234, 34-600 Limanowa Gmina, Poland', 50, 20),
(23, 'TX-123 Bus, Seguin, TX 78155', 30, -98),
(24, 'A-455, 41450 Constantina, Seville, Spain', 38, -6),
(25, 'Węgierska 123, 33-300 Nowy Sącz, Polska', 50, 21),
(26, 'Put za Paleru, 52100 Ližnjan, Hrvatska', 45, 14),
(27, 'Leśna 67, 34-600 Limanowa, Polska', 50, 20),
(28, 'Hamburger Straße, Bremen, Germany', 53, 9),
(29, 'Leśna 32, 34-600 Limanowa, Polska', 50, 20);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `usereducation`
--

CREATE TABLE `usereducation` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ProfileID` int(10) UNSIGNED NOT NULL,
  `EducationID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `userexperience`
--

CREATE TABLE `userexperience` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ProfileID` int(10) UNSIGNED NOT NULL,
  `ExperienceID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `userlanguages`
--

CREATE TABLE `userlanguages` (
  `ID` int(10) UNSIGNED NOT NULL,
  `LanguageID` int(50) UNSIGNED NOT NULL,
  `Level` enum('A1','A2','B1','B2','C1','C2') NOT NULL,
  `ProfileID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlanguages`
--

INSERT INTO `userlanguages` (`ID`, `LanguageID`, `Level`, `ProfileID`) VALUES
(41, 1, 'A1', 59),
(56, 22, 'B2', 78),
(57, 5, 'B2', 78),
(58, 9, 'C2', 78),
(59, 1, 'A1', 79),
(60, 8, 'C2', 59),
(61, 5, 'B2', 59),
(62, 15, 'B2', 59),
(63, 11, 'B2', 59);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `userlinks`
--

CREATE TABLE `userlinks` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ProfileID` int(10) UNSIGNED NOT NULL,
  `ServiceID` int(10) UNSIGNED NOT NULL,
  `Link` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userlinks`
--

INSERT INTO `userlinks` (`ID`, `ProfileID`, `ServiceID`, `Link`) VALUES
(15, 59, 1, 'https://www.linkedin.com/Potrzebny321'),
(20, 59, 2, '123'),
(22, 78, 2, 'https://www.linkedin.com/Potrzebny321'),
(23, 78, 1, 'https://github.com/KacperMatlag'),
(25, 79, 1, 'https://github.com/KacperMatlag');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `usertraining`
--

CREATE TABLE `usertraining` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ProfileID` int(10) UNSIGNED NOT NULL,
  `TrainingID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `userwithcompanies`
--

CREATE TABLE `userwithcompanies` (
  `ID` int(10) UNSIGNED NOT NULL,
  `ProfileID` int(10) UNSIGNED NOT NULL,
  `CompanyID` int(10) UNSIGNED NOT NULL,
  `HierarchyID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userwithcompanies`
--

INSERT INTO `userwithcompanies` (`ID`, `ProfileID`, `CompanyID`, `HierarchyID`) VALUES
(1, 59, 19, NULL),
(3, 77, 24, NULL),
(4, 77, 25, NULL),
(6, 59, 27, NULL),
(9, 79, 30, NULL),
(14, 59, 35, NULL),
(15, 59, 36, NULL);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `whattheemployeroffers`
--

CREATE TABLE `whattheemployeroffers` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(150) NOT NULL,
  `AnnouncementID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `whattheemployeroffers`
--

INSERT INTO `whattheemployeroffers` (`ID`, `Name`, `AnnouncementID`) VALUES
(5, 'Oferowane przez pracodawce 3', 52),
(6, 'Oferowane przez pracodawce 2', 52),
(7, 'Oferowane przez pracodawce 1', 52),
(8, 'Oferowane przez pracodawce 1', 53),
(9, 'Oferowane przez pracodawce 2', 53),
(10, 'Oferowane przez pracodawce 3', 53),
(11, 'niebywale', 54),
(12, 'Oferowane przez pracodawce', 61);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `workcategory`
--

CREATE TABLE `workcategory` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workcategory`
--

INSERT INTO `workcategory` (`ID`, `Name`) VALUES
(11, 'Administracja'),
(14, 'Budownictwo'),
(3, 'Edukacja'),
(4, 'Finanse'),
(2, 'Hotelarstwo'),
(5, 'Inżynieria'),
(1, 'IT'),
(16, 'Marketing'),
(10, 'Media i Komunikacja'),
(13, 'Nauka'),
(12, 'Przemysł'),
(15, 'Rolnictwo'),
(7, 'Sprzedaż'),
(9, 'Sztuka i Kultura'),
(18, 'Telekomunikacja'),
(8, 'Transport'),
(17, 'Usługi'),
(6, 'Zdrowie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `workingtime`
--

CREATE TABLE `workingtime` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `workingtime`
--

INSERT INTO `workingtime` (`ID`, `Name`) VALUES
(1, 'część etatu'),
(2, 'cały etat'),
(3, 'dodatkowa/tymczasowa');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `worktype`
--

CREATE TABLE `worktype` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `worktype`
--

INSERT INTO `worktype` (`ID`, `Name`) VALUES
(1, 'zdalnie'),
(2, 'stacjonarnie'),
(3, 'hybrydowo');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `announcement_ibfk_1` (`CompanyID`),
  ADD KEY `announcement_ibfk_2` (`JobLevelID`),
  ADD KEY `announcement_ibfk_3` (`JobPositionID`),
  ADD KEY `announcement_ibfk_4` (`TypeOfContractID`),
  ADD KEY `announcement_ibfk_5` (`WorkCategoryID`),
  ADD KEY `announcement_ibfk_6` (`WorkingTimeID`),
  ADD KEY `announcement_ibfk_7` (`WorkTypeID`);

--
-- Indeksy dla tabeli `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `categorywithpositions`
--
ALTER TABLE `categorywithpositions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `JobPositionID` (`JobPositionID`),
  ADD KEY `WorkCategoryID` (`WorkCategoryID`);

--
-- Indeksy dla tabeli `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Indeksy dla tabeli `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `duties`
--
ALTER TABLE `duties`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AnnouncementID` (`AnnouncementID`);

--
-- Indeksy dla tabeli `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SchoolType` (`SchoolType`),
  ADD KEY `ProfileID` (`ProfileID`);

--
-- Indeksy dla tabeli `employment`
--
ALTER TABLE `employment`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CompanyID` (`CompanyID`),
  ADD KEY `PositionID` (`PositionID`);

--
-- Indeksy dla tabeli `joblevel`
--
ALTER TABLE `joblevel`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `jobposition`
--
ALTER TABLE `jobposition`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Name` (`Name`);

--
-- Indeksy dla tabeli `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `AddressID` (`AddressID`),
  ADD KEY `CurrentJobPositionID` (`CurrentJobPositionID`);

--
-- Indeksy dla tabeli `requirements`
--
ALTER TABLE `requirements`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `requirements_ibfk_1` (`AnnouncementID`);

--
-- Indeksy dla tabeli `schooltype`
--
ALTER TABLE `schooltype`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indeksy dla tabeli `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `typeofcontract`
--
ALTER TABLE `typeofcontract`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProfileID` (`ProfileID`);

--
-- Indeksy dla tabeli `useraddress`
--
ALTER TABLE `useraddress`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `usereducation`
--
ALTER TABLE `usereducation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProfileID` (`ProfileID`),
  ADD KEY `EducationID` (`EducationID`);

--
-- Indeksy dla tabeli `userexperience`
--
ALTER TABLE `userexperience`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ExperienceID` (`ExperienceID`),
  ADD KEY `ProfileID` (`ProfileID`);

--
-- Indeksy dla tabeli `userlanguages`
--
ALTER TABLE `userlanguages`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProfileID` (`ProfileID`),
  ADD KEY `LanguageID` (`LanguageID`);

--
-- Indeksy dla tabeli `userlinks`
--
ALTER TABLE `userlinks`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProfileID` (`ProfileID`),
  ADD KEY `ServiceID` (`ServiceID`);

--
-- Indeksy dla tabeli `usertraining`
--
ALTER TABLE `usertraining`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProfileID` (`ProfileID`),
  ADD KEY `TrainingID` (`TrainingID`);

--
-- Indeksy dla tabeli `userwithcompanies`
--
ALTER TABLE `userwithcompanies`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProfileID` (`ProfileID`),
  ADD KEY `userwithcompanies_ibfk_1` (`CompanyID`);

--
-- Indeksy dla tabeli `whattheemployeroffers`
--
ALTER TABLE `whattheemployeroffers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `whattheemployeroffers_ibfk_1` (`AnnouncementID`);

--
-- Indeksy dla tabeli `workcategory`
--
ALTER TABLE `workcategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Name` (`Name`);

--
-- Indeksy dla tabeli `workingtime`
--
ALTER TABLE `workingtime`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `worktype`
--
ALTER TABLE `worktype`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categorywithpositions`
--
ALTER TABLE `categorywithpositions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `duties`
--
ALTER TABLE `duties`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `employment`
--
ALTER TABLE `employment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `joblevel`
--
ALTER TABLE `joblevel`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobposition`
--
ALTER TABLE `jobposition`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `requirements`
--
ALTER TABLE `requirements`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `schooltype`
--
ALTER TABLE `schooltype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `training`
--
ALTER TABLE `training`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typeofcontract`
--
ALTER TABLE `typeofcontract`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `useraddress`
--
ALTER TABLE `useraddress`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `usereducation`
--
ALTER TABLE `usereducation`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userexperience`
--
ALTER TABLE `userexperience`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlanguages`
--
ALTER TABLE `userlanguages`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `userlinks`
--
ALTER TABLE `userlinks`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `usertraining`
--
ALTER TABLE `usertraining`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userwithcompanies`
--
ALTER TABLE `userwithcompanies`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `whattheemployeroffers`
--
ALTER TABLE `whattheemployeroffers`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `workcategory`
--
ALTER TABLE `workcategory`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `workingtime`
--
ALTER TABLE `workingtime`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `worktype`
--
ALTER TABLE `worktype`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcement`
--
ALTER TABLE `announcement`
  ADD CONSTRAINT `announcement_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `company` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `announcement_ibfk_2` FOREIGN KEY (`JobLevelID`) REFERENCES `joblevel` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `announcement_ibfk_3` FOREIGN KEY (`JobPositionID`) REFERENCES `jobposition` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `announcement_ibfk_4` FOREIGN KEY (`TypeOfContractID`) REFERENCES `typeofcontract` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `announcement_ibfk_5` FOREIGN KEY (`WorkCategoryID`) REFERENCES `workcategory` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `announcement_ibfk_6` FOREIGN KEY (`WorkingTimeID`) REFERENCES `workingtime` (`ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `announcement_ibfk_7` FOREIGN KEY (`WorkTypeID`) REFERENCES `worktype` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `categorywithpositions`
--
ALTER TABLE `categorywithpositions`
  ADD CONSTRAINT `categorywithpositions_ibfk_1` FOREIGN KEY (`JobPositionID`) REFERENCES `jobposition` (`id`),
  ADD CONSTRAINT `categorywithpositions_ibfk_2` FOREIGN KEY (`WorkCategoryID`) REFERENCES `workcategory` (`ID`);

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `useraddress` (`ID`);

--
-- Constraints for table `duties`
--
ALTER TABLE `duties`
  ADD CONSTRAINT `duties_ibfk_1` FOREIGN KEY (`AnnouncementID`) REFERENCES `announcement` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `education`
--
ALTER TABLE `education`
  ADD CONSTRAINT `education_ibfk_1` FOREIGN KEY (`SchoolType`) REFERENCES `schooltype` (`ID`),
  ADD CONSTRAINT `education_ibfk_2` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ID`);

--
-- Constraints for table `experience`
--
ALTER TABLE `experience`
  ADD CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `company` (`ID`),
  ADD CONSTRAINT `experience_ibfk_3` FOREIGN KEY (`PositionID`) REFERENCES `jobposition` (`id`);

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `useraddress` (`ID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `profile_ibfk_2` FOREIGN KEY (`CurrentJobPositionID`) REFERENCES `jobposition` (`id`);

--
-- Constraints for table `requirements`
--
ALTER TABLE `requirements`
  ADD CONSTRAINT `requirements_ibfk_1` FOREIGN KEY (`AnnouncementID`) REFERENCES `announcement` (`ID`) ON DELETE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `usereducation`
--
ALTER TABLE `usereducation`
  ADD CONSTRAINT `usereducation_ibfk_1` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ID`),
  ADD CONSTRAINT `usereducation_ibfk_2` FOREIGN KEY (`EducationID`) REFERENCES `education` (`ID`);

--
-- Constraints for table `userexperience`
--
ALTER TABLE `userexperience`
  ADD CONSTRAINT `userexperience_ibfk_1` FOREIGN KEY (`ExperienceID`) REFERENCES `experience` (`ID`),
  ADD CONSTRAINT `userexperience_ibfk_2` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ID`);

--
-- Constraints for table `userlanguages`
--
ALTER TABLE `userlanguages`
  ADD CONSTRAINT `userlanguages_ibfk_2` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ID`),
  ADD CONSTRAINT `userlanguages_ibfk_3` FOREIGN KEY (`LanguageID`) REFERENCES `language` (`ID`);

--
-- Constraints for table `userlinks`
--
ALTER TABLE `userlinks`
  ADD CONSTRAINT `userlinks_ibfk_1` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ID`),
  ADD CONSTRAINT `userlinks_ibfk_2` FOREIGN KEY (`ServiceID`) REFERENCES `services` (`ID`);

--
-- Constraints for table `usertraining`
--
ALTER TABLE `usertraining`
  ADD CONSTRAINT `usertraining_ibfk_1` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ID`),
  ADD CONSTRAINT `usertraining_ibfk_2` FOREIGN KEY (`TrainingID`) REFERENCES `training` (`ID`);

--
-- Constraints for table `userwithcompanies`
--
ALTER TABLE `userwithcompanies`
  ADD CONSTRAINT `userwithcompanies_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `company` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userwithcompanies_ibfk_2` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ID`);

--
-- Constraints for table `whattheemployeroffers`
--
ALTER TABLE `whattheemployeroffers`
  ADD CONSTRAINT `whattheemployeroffers_ibfk_1` FOREIGN KEY (`AnnouncementID`) REFERENCES `announcement` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
