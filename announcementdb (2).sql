-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 04, 2023 at 09:05 PM
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
  `Description` varchar(500) NOT NULL,
  `JobPositionID` int(11) UNSIGNED NOT NULL,
  `JobLevelID` int(10) UNSIGNED DEFAULT NULL,
  `TypeOfContractID` int(10) UNSIGNED DEFAULT NULL,
  `WorkingTimeID` int(10) UNSIGNED NOT NULL,
  `WorkTypeID` int(10) UNSIGNED NOT NULL,
  `WorkCategoryID` int(10) UNSIGNED NOT NULL,
  `ExpirationDate` date NOT NULL,
  `MinWage` int(11) NOT NULL,
  `MaxWage` int(11) NOT NULL,
  `Requirements` varchar(500) NOT NULL,
  `Responsibilities` varchar(1000) NOT NULL,
  `WhatTheEmployerOffers` varchar(500) NOT NULL,
  `CompanyID` int(10) UNSIGNED NOT NULL,
  `CreatedAt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`ID`, `Title`, `Description`, `JobPositionID`, `JobLevelID`, `TypeOfContractID`, `WorkingTimeID`, `WorkTypeID`, `WorkCategoryID`, `ExpirationDate`, `MinWage`, `MaxWage`, `Requirements`, `Responsibilities`, `WhatTheEmployerOffers`, `CompanyID`, `CreatedAt`) VALUES
(1, 'Job Title 1', 'Description for Job 1', 1, 1, 1, 1, 1, 1, '2023-11-01', 50000, 80000, 'Requirements for Job 1', '', 'What the employer offers for Job 1', 1, '2023-10-29'),
(2, 'Job Title 2', 'Description for Job 2', 2, 2, 2, 2, 2, 2, '2023-11-15', 60000, 90000, 'Requirements for Job 2', '', 'What the employer offers for Job 2', 2, '2023-10-29'),
(3, 'Front-end Developer', 'Build user interfaces and create amazing user experiences.', 4, 2, 1, 2, 1, 2, '2023-11-25', 70000, 100000, 'Experience with React and JavaScript required.', '', 'Flexible work environment and training opportunities.', 1, '2023-10-29'),
(4, 'HR Specialist', 'Join our HR team and contribute to employee success.', 1, 1, 2, 1, 2, 3, '2023-11-30', 60000, 90000, 'Experience in HR operations and recruitment preferred.', '', 'Competitive salary and comprehensive benefits.', 3, '2023-10-29'),
(5, 'Graphic Designer', 'Create visually appealing designs for our brand.', 3, 2, 1, 1, 1, 1, '2023-12-05', 55000, 80000, 'Proficient in Adobe Creative Suite.', '', 'Artistic and collaborative work environment.', 2, '2023-10-29'),
(6, 'Sales Representative', 'Drive sales and build relationships with clients.', 2, 1, 2, 2, 2, 2, '2023-12-10', 65000, 95000, 'Proven sales experience and excellent communication skills required.', '', 'Commission-based earnings and performance bonuses.', 1, '2023-10-29'),
(7, 'Network Administrator', 'Manage and maintain our network infrastructure.', 4, 2, 1, 1, 1, 3, '2023-12-15', 75000, 110000, 'Certification in network administration and hands-on experience preferred.', '', 'Health insurance and retirement plans provided.', 3, '2023-10-29'),
(8, 'Content Writer', 'Create engaging and informative content for our audience.', 3, 1, 2, 2, 1, 1, '2023-12-20', 50000, 75000, 'Excellent writing skills and knowledge of SEO best practices.', '', 'Flexible work hours and professional development opportunities.', 2, '2023-10-29'),
(9, 'Financial Analyst', 'Analyze financial data and provide insights for decision-making.', 2, 2, 1, 1, 2, 2, '2023-12-25', 70000, 100000, 'Bachelor\'s degree in Finance or related field required.', '', 'Competitive salary and career advancement opportunities.', 1, '2023-10-29'),
(10, 'Customer Support Specialist', 'Assist customers and provide exceptional support.', 1, 1, 2, 1, 2, 3, '2023-12-30', 55000, 80000, 'Strong interpersonal skills and patience required.', '', 'Health and wellness programs available.', 3, '2023-10-29'),
(11, 'Product Manager', 'Lead the development and launch of new products.', 4, 2, 1, 2, 1, 2, '2024-01-05', 80000, 120000, 'Proven experience in product management and strategic planning.', '', 'Competitive salary and stock options.', 2, '2023-10-29'),
(12, 'Quality Assurance Engineer', 'Ensure the quality of our software products.', 3, 1, 2, 1, 1, 1, '2024-01-10', 60000, 90000, 'Experience in software testing and knowledge of testing tools.', '', 'Professional development and growth opportunities.', 1, '2023-10-29');

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
  `Name` varchar(50) NOT NULL,
  `CompanyLocationID` int(10) UNSIGNED NOT NULL,
  `Map` varchar(500) NOT NULL,
  `Description` varchar(500) DEFAULT NULL,
  `Image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`ID`, `Name`, `CompanyLocationID`, `Map`, `Description`, `Image`) VALUES
(1, 'Lenovo Polska', 2, '1', NULL, 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(2, 'TechSolutions Co.', 6, '', 'Tworzymy innowacyjne rozwiązania technologiczne.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(3, 'Hospitality Experts', 2, '', 'Specjaliści w dziedzinie hotelarstwa i obsługi klienta.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(4, 'GreenAgro Farms', 15, '', 'Zajmujemy się produkcją ekologicznych artykułów rolnych.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(5, 'MediaMasters Agency', 10, '', 'Agencja reklamowa zajmująca się mediami i marketingiem.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(6, 'TransportEase Logistics', 8, '', 'Zapewniamy kompleksowe usługi logistyczne.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(7, 'ArtisticExpressions Studio', 9, '', 'Studio artystyczne specjalizujące się w tworzeniu dzieł sztuki.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(8, 'EducationHub Institute', 3, '', 'Instytut edukacyjny oferujący różnorodne kursy i szkolenia.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(9, 'TelecomConnect Solutions', 18, '', 'Specjaliści w dziedzinie telekomunikacji i sieci.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(10, 'IndustryInnovators Ltd.', 12, '', 'Innowacyjne rozwiązania dla przemysłu.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png'),
(11, 'SalesForce Experts', 7, '', 'Zespołowi eksperci ds. sprzedaży i obsługi klienta.', 'https://www.kadencewp.com/wp-content/uploads/2020/10/alogo-2.png');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `education`
--

CREATE TABLE `education` (
  `ID` int(10) UNSIGNED NOT NULL,
  `SchoolName` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL,
  `LevelOfEducation` enum('podstawowe','zawodowe','średnie','licencjat') NOT NULL,
  `FieldOfStudy` varchar(100) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` int(11) NOT NULL,
  `Still` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `id` int(11) UNSIGNED NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobposition`
--

INSERT INTO `jobposition` (`id`, `Name`) VALUES
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
(2, 'Niemiecki'),
(3, 'Hiszpanski'),
(4, 'Portugalski');

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
  `Skills` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`ID`, `Name`, `Surname`, `DateOfBirth`, `Email`, `PhoneNumber`, `ProfilePicture`, `AddressID`, `ProfessionalSummary`, `CurrentJobPositionID`, `CurrentJobPositionDescription`, `Skills`) VALUES
(2, 'Adam', 'Kowalski', '2023-10-01', 'aa', '+48693202', 'aa', 1, 'aa', NULL, NULL, ''),
(3, 'Adam', 'Kowalski', '2023-10-01', 'aa', '+4869320', 'aa', 1, 'aa', NULL, NULL, ''),
(4, 'John', 'Doe', '1990-01-01', 'john.doe@example.com', '123456789', 'default.jpg', 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', NULL, NULL, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `services`
--

CREATE TABLE `services` (
  `ID` int(10) UNSIGNED NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`ID`, `Name`) VALUES
(1, 'GitHub'),
(2, 'LinkedIn'),
(3, 'Discord');

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
  `Password` varchar(50) NOT NULL,
  `ProfileID` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Login`, `Password`, `ProfileID`) VALUES
(2, 'Admin', 'Admin', 2),
(3, 'user48', 'password59', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `useraddress`
--

CREATE TABLE `useraddress` (
  `ID` int(11) UNSIGNED NOT NULL,
  `City` varchar(100) NOT NULL,
  `Street` varchar(100) NOT NULL,
  `HouseNumber` varchar(11) NOT NULL,
  `PostCode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useraddress`
--

INSERT INTO `useraddress` (`ID`, `City`, `Street`, `HouseNumber`, `PostCode`) VALUES
(1, 'Limanowa', 'ul.Kopernika', '543', '34-600'),
(2, 'Limanowa', 'ul.Kopernika', '54', '34-600');

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
  `Level` enum('A','B','C','') NOT NULL,
  `ProfileID` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  ADD KEY `CompanyID` (`CompanyID`),
  ADD KEY `JobLevelID` (`JobLevelID`),
  ADD KEY `JobPositionID` (`JobPositionID`),
  ADD KEY `TypeOfContractID` (`TypeOfContractID`),
  ADD KEY `WorkCategoryID` (`WorkCategoryID`),
  ADD KEY `WorkingTimeID` (`WorkingTimeID`),
  ADD KEY `WorkTypeID` (`WorkTypeID`);

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
  ADD KEY `CompanyLocationID` (`CompanyLocationID`);

--
-- Indeksy dla tabeli `education`
--
ALTER TABLE `education`
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
  ADD PRIMARY KEY (`id`),
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
-- Indeksy dla tabeli `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`ID`);

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
  ADD KEY `LanguageID` (`LanguageID`),
  ADD KEY `ProfileID` (`ProfileID`);

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
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `categorywithpositions`
--
ALTER TABLE `categorywithpositions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `useraddress`
--
ALTER TABLE `useraddress`
  MODIFY `ID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlinks`
--
ALTER TABLE `userlinks`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usertraining`
--
ALTER TABLE `usertraining`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  ADD CONSTRAINT `announcement_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `company` (`ID`),
  ADD CONSTRAINT `announcement_ibfk_2` FOREIGN KEY (`JobLevelID`) REFERENCES `joblevel` (`ID`),
  ADD CONSTRAINT `announcement_ibfk_3` FOREIGN KEY (`JobPositionID`) REFERENCES `jobposition` (`id`),
  ADD CONSTRAINT `announcement_ibfk_4` FOREIGN KEY (`TypeOfContractID`) REFERENCES `typeofcontract` (`ID`),
  ADD CONSTRAINT `announcement_ibfk_5` FOREIGN KEY (`WorkCategoryID`) REFERENCES `workcategory` (`ID`),
  ADD CONSTRAINT `announcement_ibfk_6` FOREIGN KEY (`WorkingTimeID`) REFERENCES `workingtime` (`ID`),
  ADD CONSTRAINT `announcement_ibfk_7` FOREIGN KEY (`WorkTypeID`) REFERENCES `worktype` (`ID`);

--
-- Constraints for table `categorywithpositions`
--
ALTER TABLE `categorywithpositions`
  ADD CONSTRAINT `categorywithpositions_ibfk_1` FOREIGN KEY (`JobPositionID`) REFERENCES `jobposition` (`id`),
  ADD CONSTRAINT `categorywithpositions_ibfk_2` FOREIGN KEY (`WorkCategoryID`) REFERENCES `workcategory` (`ID`);

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
  ADD CONSTRAINT `userlanguages_ibfk_1` FOREIGN KEY (`LanguageID`) REFERENCES `language` (`ID`),
  ADD CONSTRAINT `userlanguages_ibfk_2` FOREIGN KEY (`ProfileID`) REFERENCES `profile` (`ID`);

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
