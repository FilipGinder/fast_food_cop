-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2023 at 11:05 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fast_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `dodaci`
--

CREATE TABLE `dodaci` (
  `id` int(100) NOT NULL,
  `naziv` varchar(300) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `dodaci`
--

INSERT INTO `dodaci` (`id`, `naziv`) VALUES
(1, 'Kečap'),
(2, 'Majonez'),
(3, 'Kupus'),
(4, 'Tartar'),
(5, 'Majonez'),
(6, 'Senf'),
(7, 'Luk'),
(8, 'Krastavac');

-- --------------------------------------------------------

--
-- Table structure for table `kompanija`
--

CREATE TABLE `kompanija` (
  `id` int(100) NOT NULL,
  `naziv` varchar(300) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `kompanija`
--

INSERT INTO `kompanija` (`id`, `naziv`) VALUES
(1, 'Čop');

-- --------------------------------------------------------

--
-- Table structure for table `meni`
--

CREATE TABLE `meni` (
  `id` int(100) NOT NULL,
  `id_objekta` int(100) NOT NULL,
  `naziv` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `validan` int(1) NOT NULL,
  `naziv_eng` varchar(200) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `meni`
--

INSERT INTO `meni` (`id`, `id_objekta`, `naziv`, `validan`, `naziv_eng`) VALUES
(55, 88, 'Pica', 0, 'Pizza'),
(58, 88, 'Roštilj', 1, 'Barbecue'),
(59, 88, 'Palačinke', 1, 'Pancakes');

-- --------------------------------------------------------

--
-- Table structure for table `meni_stavke`
--

CREATE TABLE `meni_stavke` (
  `id` int(100) NOT NULL,
  `id_menia` int(10) NOT NULL,
  `naziv` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `opis` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `tezina` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `cena` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `validan` int(1) NOT NULL,
  `naziv_eng` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `opis_eng` varchar(500) COLLATE utf8_slovenian_ci NOT NULL,
  `cena_eng` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `obim` varchar(100) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `meni_stavke`
--

INSERT INTO `meni_stavke` (`id`, `id_menia`, `naziv`, `opis`, `tezina`, `cena`, `validan`, `naziv_eng`, `opis_eng`, `cena_eng`, `obim`) VALUES
(89, 55, 'Kaprićoza', 'Klasična pica', '/', '750', 1, 'Capriciousness', 'ghgh', '6.4', '50cm'),
(90, 55, 'Margarita', 'bla', '400g', '700', 0, 'tr', 'trt', '5', '50'),
(91, 58, 'Ćevapi', 'mmmm', '400g', '350din', 1, 'ffff', 'eeee', '3.3', ''),
(92, 58, 'Pljeskavica', '/', '200g', '250din', 1, '', '', '', ''),
(93, 58, 'Giros', 'erte', '423', '243', 1, '', '', '', '234'),
(94, 58, 'Ustipci', 'ergerg', '543', '3543', 1, '', '', '', '543'),
(96, 58, 'Šiš Ćevap', '', '250g', '350din', 1, '', '', '', ''),
(97, 55, 'Srpska', '', '/', '1200DIN', 1, '', '', '', '50CM'),
(98, 55, 'Madjarska', '', '345', '345', 1, '', '', '', '543'),
(129, 55, '', '', '', '', 1, '', '', '', ''),
(130, 55, 'weq', '', 'ewq', 'ewq', 1, '', '', '', 'ewq');

-- --------------------------------------------------------

--
-- Table structure for table `meni_stavke_doadci`
--

CREATE TABLE `meni_stavke_doadci` (
  `id` int(100) NOT NULL,
  `id_meni_stavke` int(100) NOT NULL,
  `id_dodataka` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `meni_stavke_doadci`
--

INSERT INTO `meni_stavke_doadci` (`id`, `id_meni_stavke`, `id_dodataka`) VALUES
(1, 130, 3),
(2, 130, 6),
(3, 130, 4),
(4, 130, 3),
(5, 130, 3),
(6, 130, 3),
(7, 130, 3),
(8, 130, 8),
(9, 130, 1),
(10, 130, 3),
(11, 130, 3),
(12, 130, 3);

-- --------------------------------------------------------

--
-- Table structure for table `objekti`
--

CREATE TABLE `objekti` (
  `id` int(100) NOT NULL,
  `id_kompanije` int(100) NOT NULL,
  `ime` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `adresa` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `pib` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `maticni_br_firme` varchar(10) COLLATE utf8_slovenian_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `telefon` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `validan` int(1) NOT NULL,
  `radno_vreme_rad_dan_od` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `radno_vreme_rad_dan_do` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `radno_vreme_vikend_od` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `radno_vreme_vikend_do` varchar(100) COLLATE utf8_slovenian_ci NOT NULL,
  `datum_kreiranja_rest` timestamp NOT NULL DEFAULT current_timestamp(),
  `opis_rest_text` text COLLATE utf8_slovenian_ci NOT NULL,
  `opis_rest_text_eng` text COLLATE utf8_slovenian_ci NOT NULL,
  `url_youtube` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `iframe_google_map` varchar(1000) COLLATE utf8_slovenian_ci NOT NULL,
  `url_ka_fb` varchar(1000) COLLATE utf8_slovenian_ci NOT NULL,
  `url_ka_instagramu` varchar(1000) COLLATE utf8_slovenian_ci NOT NULL,
  `tekuci_racun` varchar(100) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Dumping data for table `objekti`
--

INSERT INTO `objekti` (`id`, `id_kompanije`, `ime`, `adresa`, `pib`, `maticni_br_firme`, `email`, `telefon`, `validan`, `radno_vreme_rad_dan_od`, `radno_vreme_rad_dan_do`, `radno_vreme_vikend_od`, `radno_vreme_vikend_do`, `datum_kreiranja_rest`, `opis_rest_text`, `opis_rest_text_eng`, `url_youtube`, `iframe_google_map`, `url_ka_fb`, `url_ka_instagramu`, `tekuci_racun`) VALUES
(88, 1, 'Čop', 'Dunavsko sokace', '123654789', '85236974', 'test@test.com', '011/111-111', 1, '10:00', '23:59', '10:00', '20:00', '2021-07-25 17:43:00', 'Beograd 1 Vivamus iaculis lacus velit, a posuere nisl rutrum sed. Maecenas faucibus at orci in pretium. Praesent dignissim dolor sed sodales egestas. Sed a lectus vel est varius elementum. Etiam vel tristique ipsum. Nullam at mi lectus. Nunc a mollis leo, a bibendum erat. Etiam ante massa, aliquam sed semper non, feugiat quis tortor. Nullam eget sollicitudin augue. Nam quis turpis quis massa mattis consectetur ac ac nisi. Cras quis libero ac justo sodales facilisis in eu sapien. Sed sit amet massa orci. Sed bibendum, ante in consectetur facilisis, nisi lorem viverra augue, vehicula pretium tortor odio ac ante. In hac habitasse platea dictumst. Nam viverra ullamcorper purus, at rutrum enim tincidunt eget.', 'Engleski Beograd 1 fsgs sfgfs g fsgfs gfsgfs', 'https://www.youtube.com/watch?v=3kJqPVVympo', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d5667.780023100807!2d20.606421337587754!3d44.74226069162958!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x8563727d85d52c61!2sAuto%20Gaca!5e0!3m2!1ssr!2srs!4v1637704825476!5m2!1ssr!2srs\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>', 'zzzzzzzz', 'zzzzzzzzz', '');

-- --------------------------------------------------------

--
-- Table structure for table `porudzbina_stavke`
--

CREATE TABLE `porudzbina_stavke` (
  `id` int(100) NOT NULL,
  `id_porudzbine` int(100) NOT NULL,
  `id_meni_stavke` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `porudzbina_stavke_dodaci`
--

CREATE TABLE `porudzbina_stavke_dodaci` (
  `id` int(100) NOT NULL,
  `id_porudzbine_stavke` int(100) NOT NULL,
  `id_dodataka` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `porudzbine`
--

CREATE TABLE `porudzbine` (
  `id` int(100) NOT NULL,
  `ime_porucioca` varchar(200) COLLATE utf8_slovenian_ci NOT NULL,
  `telefon` varchar(6) COLLATE utf8_slovenian_ci NOT NULL,
  `vreme_porudzbine` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `napomena` varchar(200) COLLATE utf8_slovenian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_slovenian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dodaci`
--
ALTER TABLE `dodaci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kompanija`
--
ALTER TABLE `kompanija`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meni`
--
ALTER TABLE `meni`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_restorana` (`id_objekta`);

--
-- Indexes for table `meni_stavke`
--
ALTER TABLE `meni_stavke`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_menia` (`id_menia`);

--
-- Indexes for table `meni_stavke_doadci`
--
ALTER TABLE `meni_stavke_doadci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_meni_stavke` (`id_meni_stavke`),
  ADD KEY `id_dodataka` (`id_dodataka`);

--
-- Indexes for table `objekti`
--
ALTER TABLE `objekti`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kompanije` (`id_kompanije`);

--
-- Indexes for table `porudzbina_stavke`
--
ALTER TABLE `porudzbina_stavke`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_porudzbine` (`id_porudzbine`),
  ADD KEY `id_stavke_menia` (`id_meni_stavke`);

--
-- Indexes for table `porudzbina_stavke_dodaci`
--
ALTER TABLE `porudzbina_stavke_dodaci`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dodataka` (`id_dodataka`),
  ADD KEY `id_porudzbine_stavke` (`id_porudzbine_stavke`);

--
-- Indexes for table `porudzbine`
--
ALTER TABLE `porudzbine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dodaci`
--
ALTER TABLE `dodaci`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kompanija`
--
ALTER TABLE `kompanija`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meni`
--
ALTER TABLE `meni`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `meni_stavke`
--
ALTER TABLE `meni_stavke`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `meni_stavke_doadci`
--
ALTER TABLE `meni_stavke_doadci`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `objekti`
--
ALTER TABLE `objekti`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT for table `porudzbina_stavke`
--
ALTER TABLE `porudzbina_stavke`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `porudzbina_stavke_dodaci`
--
ALTER TABLE `porudzbina_stavke_dodaci`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `porudzbine`
--
ALTER TABLE `porudzbine`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meni`
--
ALTER TABLE `meni`
  ADD CONSTRAINT `meni_ibfk_1` FOREIGN KEY (`id_objekta`) REFERENCES `objekti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meni_stavke`
--
ALTER TABLE `meni_stavke`
  ADD CONSTRAINT `meni_stavke_ibfk_1` FOREIGN KEY (`id_menia`) REFERENCES `meni` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `meni_stavke_doadci`
--
ALTER TABLE `meni_stavke_doadci`
  ADD CONSTRAINT `meni_stavke_doadci_ibfk_1` FOREIGN KEY (`id_meni_stavke`) REFERENCES `meni_stavke` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `meni_stavke_doadci_ibfk_2` FOREIGN KEY (`id_dodataka`) REFERENCES `dodaci` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `objekti`
--
ALTER TABLE `objekti`
  ADD CONSTRAINT `objekti_ibfk_1` FOREIGN KEY (`id_kompanije`) REFERENCES `kompanija` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `porudzbina_stavke`
--
ALTER TABLE `porudzbina_stavke`
  ADD CONSTRAINT `porudzbina_stavke_ibfk_1` FOREIGN KEY (`id_porudzbine`) REFERENCES `porudzbine` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `porudzbina_stavke_ibfk_2` FOREIGN KEY (`id_meni_stavke`) REFERENCES `meni_stavke` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `porudzbina_stavke_dodaci`
--
ALTER TABLE `porudzbina_stavke_dodaci`
  ADD CONSTRAINT `porudzbina_stavke_dodaci_ibfk_1` FOREIGN KEY (`id_porudzbine_stavke`) REFERENCES `porudzbina_stavke` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `porudzbina_stavke_dodaci_ibfk_2` FOREIGN KEY (`id_dodataka`) REFERENCES `dodaci` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
