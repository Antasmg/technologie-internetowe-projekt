-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 11, 2024 at 04:06 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car_database`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cars`
--

CREATE TABLE `cars` (
  `id` int(11) NOT NULL,
  `vin` varchar(17) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `mileage` int(11) NOT NULL,
  `engine` varchar(50) DEFAULT NULL,
  `fuel_type` varchar(50) DEFAULT NULL,
  `owner_count` int(11) DEFAULT NULL,
  `damage_state` text DEFAULT NULL,
  `photo_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `vin`, `brand`, `model`, `year`, `mileage`, `engine`, `fuel_type`, `owner_count`, `damage_state`, `photo_path`) VALUES
(1, 'WAUZZZ8P1AA000001', 'Audi', 'A3', 2010, 120000, '1.6L I4', 'Benzyna', 2, 'dobry', '/path/to/photos/audi_a3_2010.jpg'),
(2, 'WVWZZZ1KZAW000002', 'Volkswagen', 'Golf', 2010, 130000, '1.4L TSI', 'Benzyna', 1, 'dobry', '/path/to/photos/vw_golf_2010.jpg'),
(3, 'WBA3A31000K000003', 'BMW', '3 Series', 2012, 100000, '2.0L I4', 'Diesel', 1, 'dobry', '/path/to/photos/bmw_3_series_2012.jpg'),
(4, 'VF1KZ170640000004', 'Renault', 'Clio', 2015, 80000, '1.2L I4', 'Benzyna', 1, 'dobry', '/path/to/photos/renault_clio_2015.jpg'),
(5, 'VF7SBRFVB72000005', 'Citroën', 'C4', 2014, 75000, '1.6L I4', 'Diesel', 2, 'bardzo dobry', '/path/to/photos/citroen_c4_2014.jpg'),
(6, 'W0L0XCE759T000006', 'Opel', 'Astra', 2009, 110000, '1.6L I4', 'Benzyna', 3, 'dobry', '/path/to/photos/opel_astra_2009.jpg'),
(7, 'WAUZZZ8P2BA000007', 'Audi', 'A3', 2011, 90000, '2.0L TDI', 'Diesel', 1, 'bardzo dobry', '/path/to/photos/audi_a3_2011.jpg'),
(8, 'WVWZZZ1KZCW000008', 'Volkswagen', 'Golf', 2012, 95000, '1.6L TDI', 'Diesel', 2, 'dobry', '/path/to/photos/vw_golf_2012.jpg'),
(9, 'WBA3A31000K000009', 'BMW', '3 Series', 2013, 85000, '2.0L I4', 'Diesel', 1, 'znośny', '/path/to/photos/bmw_3_series_2013.jpg'),
(10, 'VF1KZ170640000010', 'Renault', 'Clio', 2016, 60000, '1.5L dCi', 'Diesel', 1, 'bardzo dobry', '/path/to/photos/renault_clio_2016.jpg'),
(11, 'VF7SBRFVB72000011', 'Citroën', 'C4', 2015, 70000, '1.6L I4', 'Diesel', 2, 'znośny', '/path/to/photos/citroen_c4_2015.jpg'),
(12, 'W0L0XCE759T000012', 'Opel', 'Astra', 2010, 105000, '1.4L I4', 'Benzyna', 2, 'znośny', '/path/to/photos/opel_astra_2010.jpg'),
(13, 'WAUZZZ8P1BA000013', 'Audi', 'A3', 2012, 85000, '1.8L TFSI', 'Benzyna', 1, 'dobry', '/path/to/photos/audi_a3_2012.jpg'),
(14, 'WVWZZZ1KZDW000014', 'Volkswagen', 'Golf', 2013, 80000, '2.0L TDI', 'Diesel', 1, 'bardzo dobry', '/path/to/photos/vw_golf_2013.jpg'),
(15, 'WBA3A31000K000015', 'BMW', '3 Series', 2014, 70000, '2.0L I4', 'Diesel', 1, 'dobry', '/path/to/photos/bmw_3_series_2014.jpg'),
(16, 'VF1KZ170640000016', 'Renault', 'Clio', 2017, 55000, '0.9L TCe', 'Benzyna', 1, 'dobry', '/path/to/photos/renault_clio_2017.jpg'),
(17, 'VF7SBRFVB72000017', 'Citroën', 'C4', 2016, 65000, '1.2L PureTech', 'Benzyna', 2, 'bardzo dobry', '/path/to/photos/citroen_c4_2016.jpg'),
(18, 'W0L0XCE759T000018', 'Opel', 'Astra', 2011, 95000, '1.7L CDTI', 'Diesel', 2, 'bardzo dobry', '/path/to/photos/opel_astra_2011.jpg'),
(19, 'WAUZZZ8P1CA000019', 'Audi', 'A3', 2013, 75000, '2.0L TDI', 'Diesel', 1, 'dobry', '/path/to/photos/audi_a3_2013.jpg'),
(20, 'WVWZZZ1KZFW000020', 'Volkswagen', 'Golf', 2015, 70000, '1.6L TDI', 'Diesel', 1, 'dobry', '/path/to/photos/vw_golf_2015.jpg'),
(21, 'WBA3A31000K000021', 'BMW', '3 Series', 2015, 60000, '2.0L I4', 'Diesel', 1, 'bardzo dobry', '/path/to/photos/bmw_3_series_2015.jpg'),
(22, 'VF1KZ170640000022', 'Renault', 'Clio', 2018, 40000, '1.0L TCe', 'Benzyna', 1, 'dobry', '/path/to/photos/renault_clio_2018.jpg'),
(23, 'VF7SBRFVB72000023', 'Citroën', 'C4', 2017, 50000, '1.6L I4', 'Diesel', 2, 'dobry', '/path/to/photos/citroen_c4_2017.jpg'),
(24, 'W0L0XCE759T000024', 'Opel', 'Astra', 2012, 85000, '1.4L I4', 'Benzyna', 2, 'dobry', '/path/to/photos/opel_astra_2012.jpg'),
(25, 'WAUZZZ8P1DA000025', 'Audi', 'A3', 2014, 60000, '1.6L TDI', 'Diesel', 1, 'dobry', '/path/to/photos/audi_a3_2014.jpg'),
(26, 'WAUZZZ4L9HD000001', 'Audi', 'Q5', 2019, 15000, '2.0L TFSI', 'Benzyna', 1, 'dobry', '/path/to/photos/audi_q5_2019.jpg'),
(27, 'WDCGG5HB9FG000002', 'Mercedes-Benz', 'GLK', 2018, 18000, '2.1L I4', 'Diesel', 1, 'dobry', '/path/to/photos/mercedes_glk_2018.jpg'),
(28, 'WVGZZZ5NZKW000003', 'Volkswagen', 'Tiguan', 2020, 12000, '1.5L TSI', 'Benzyna', 1, 'dobry', '/path/to/photos/vw_tiguan_2020.jpg'),
(29, 'WBAWZ710200000004', 'BMW', 'X3', 2019, 10000, '2.0L I4', 'Diesel', 1, 'znośny', '/path/to/photos/bmw_x3_2019.jpg'),
(30, 'WA1VAAF79KD000005', 'Audi', 'Q7', 2019, 17000, '3.0L V6', 'Diesel', 1, 'dobry', '/path/to/photos/audi_q7_2019.jpg'),
(31, 'SALYA2BN4KA000006', 'Land Rover', 'Discovery', 2020, 16000, '2.0L I4', 'Diesel', 1, 'bardzo dobry', '/path/to/photos/land_rover_discovery_2020.jpg'),
(32, '5XYKTDA27FG000007', 'Kia', 'Sorento', 2019, 14000, '2.2L I4', 'Diesel', 1, 'bardzo dobry', '/path/to/photos/kia_sorento_2019.jpg'),
(33, 'WDC0G4KB2KF000008', 'Mercedes-Benz', 'GLC', 2019, 13000, '2.0L I4', 'Diesel', 1, 'bardzo dobry', '/path/to/photos/mercedes_glc_2019.jpg'),
(34, 'WVGZZZ5NZLV000009', 'Volkswagen', 'Tiguan', 2021, 8000, '2.0L TSI', 'Benzyna', 1, 'bardzo dobry', '/path/to/photos/vw_tiguan_2021.jpg'),
(35, '5UXWZ7C54K0D00010', 'BMW', 'X5', 2019, 19000, '3.0L I6', 'Diesel', 1, 'dobry', '/path/to/photos/bmw_x5_2019.jpg'),
(36, 'SALWR2RV6KA000011', 'Land Rover', 'Range Rover Sport', 2019, 17000, '3.0L V6', 'Diesel', 1, 'znośny', '/path/to/photos/land_rover_range_rover_sport_2019.jpg'),
(37, 'JTMYFREV9JD000012', 'Toyota', 'RAV4', 2019, 11000, '2.5L I4', 'Benzyna', 1, 'dobry', '/path/to/photos/toyota_rav4_2019.jpg'),
(38, 'KNAPC81BXK5000001', 'Kia', 'Sportage', 2020, 10000, '1.6L I4', 'Benzyna', 1, 'bardzo dobry', '/path/to/photos/kia_sportage_2020.jpg'),
(39, 'SHHFK8G7XJU000014', 'Honda', 'CR-V', 2019, 9000, '1.5L I4', 'Benzyna', 1, 'dobry', '/path/to/photos/honda_crv_2019.jpg'),
(40, 'WDC0J5KB2JF000015', 'Mercedes-Benz', 'GLE', 2019, 18000, '3.0L I6', 'Diesel', 1, 'dobry', '/path/to/photos/mercedes_gle_2019.jpg'),
(41, 'WA1ANAFY9K2000001', 'Audi', 'Q3', 2020, 12000, '2.0L TFSI', 'Benzyna', 1, 'dobry', '/path/to/photos/audi_q3_2020.jpg'),
(42, '5YJXCAE22JF000017', 'Tesla', 'Model X', 2019, 16000, 'elektryk', 'Elektryk', 1, 'znośny', '/path/to/photos/tesla_model_x_2019.jpg'),
(43, 'JN1BJ1CR9JW000018', 'Nissan', 'Qashqai', 2019, 10000, '1.3L I4', 'Benzyna', 1, 'dobry', '/path/to/photos/nissan_qashqai_2019.jpg'),
(44, 'ZFA3200000K000019', 'Fiat', '500X', 2020, 12000, '1.0L I3', 'Benzyna', 1, 'znośny', '/path/to/photos/fiat_500x_2020.jpg'),
(45, 'JMZKF4W10L0000020', 'Mazda', 'CX-5', 2020, 8000, '2.0L I4', 'Benzyna', 1, 'bardzo dobry', '/path/to/photos/mazda_cx5_2020.jpg'),
(46, 'SHSRE6750LU000021', 'Honda', 'HR-V', 2020, 15000, '1.5L I4', 'Benzyna', 1, 'dobry', '/path/to/photos/honda_hrv_2020.jpg'),
(47, 'WDC2923241A000022', 'Mercedes-Benz', 'GLE Coupe', 2019, 18000, '3.0L V6', 'Diesel', 1, 'znośny', '/path/to/photos/mercedes_gle_coupe_2019.jpg'),
(48, 'WAUZZZFY9J2000002', 'Audi', 'Q2', 2019, 17000, '1.5L TFSI', 'Benzyna', 1, 'znośny', '/path/to/photos/audi_q2_2019.jpg'),
(49, 'TMBJG7NX0L0000024', 'Škoda', 'Kodiaq', 2020, 14000, '2.0L I4', 'Diesel', 1, 'dobry', '/path/to/photos/skoda_kodiaq_2020.jpg'),
(50, 'WF0AXXWPMAKU00025', 'Ford', 'Edge', 2020, 11000, '2.0L I4', 'Diesel', 1, 'dobry', '/path/to/photos/ford_edge_2020.jpg'),
(76, '1FTFW1RG6JFA00001', 'Ford', 'F-150', 2021, 4000, '3.5L V6', 'Benzyna', 1, 'znośny', '/path/to/photos/ford_f150_2021.jpg'),
(77, '1C6SRFFT9LN100002', 'Ram', '1500', 2022, 3500, '5.7L V8', 'Benzyna', 1, 'dobry', '/path/to/photos/ram_1500_2022.jpg'),
(78, '1GNSKCKD0MR200003', 'Chevrolet', 'Tahoe', 2021, 3000, '5.3L V8', 'Benzyna', 1, 'dobry', '/path/to/photos/chevrolet_tahoe_2021.jpg'),
(79, '1HGCV2F38MA300004', 'Honda', 'Accord', 2021, 2500, '2.0L I4', 'Benzyna', 1, 'dobry', '/path/to/photos/honda_accord_2021.jpg'),
(80, '1N4AL4CV5LC400005', 'Nissan', 'Altima', 2021, 2000, '2.5L I4', 'Benzyna', 1, 'bardzo dobry', '/path/to/photos/nissan_altima_2021.jpg'),
(81, '2T3P1RFV2MW500006', 'Toyota', 'RAV4', 2021, 3500, '2.5L I4', 'Benzyna', 1, 'dobry', '/path/to/photos/toyota_rav4_2021.jpg'),
(82, '5YJ3E1EA8MF600007', 'Tesla', 'Model 3', 2021, 4500, 'elektryk', 'Elektryk', 1, 'bardzo dobry', '/path/to/photos/tesla_model_3_2021.jpg'),
(83, '1FMEE5DH9ML700008', 'Ford', 'Bronco', 2022, 1500, '2.3L I4', 'Benzyna', 1, 'bardzo dobry', '/path/to/photos/ford_bronco_2022.jpg'),
(84, '5TDYZRAH5MS800009', 'Toyota', 'Highlander', 2021, 3000, '3.5L V6', 'Benzyna', 1, 'bardzo dobry', '/path/to/photos/toyota_highlander_2021.jpg'),
(85, '1G1ZE5ST0MF900010', 'Chevrolet', 'Malibu', 2021, 2000, '1.5L I4', 'Benzyna', 1, 'znośny', '/path/to/photos/chevrolet_malibu_2021.jpg'),
(86, '3GCUDHEL9MG100011', 'Chevrolet', 'Silverado', 2021, 4000, '6.2L V8', 'Benzyna', 1, 'dobry', '/path/to/photos/chevrolet_silverado_2021.jpg'),
(87, '2FMPK4K96MBA00012', 'Ford', 'Edge', 2021, 2500, '2.0L I4', 'Benzyna', 1, 'znośny', '/path/to/photos/ford_edge_2021.jpg'),
(88, '1C4PJMDX0KD100013', 'Jeep', 'Cherokee', 2021, 3500, '3.2L V6', 'Benzyna', 1, 'bardzo dobry', '/path/to/photos/jeep_cherokee_2021.jpg'),
(89, '1FM5K8D89LGA00014', 'Ford', 'Explorer', 2021, 3000, '2.3L I4', 'Benzyna', 1, 'dobry', '/path/to/photos/ford_explorer_2021.jpg'),
(90, '1N6ED1EK1NN200015', 'Nissan', 'Frontier', 2022, 1500, '3.8L V6', 'Benzyna', 1, 'dobry', '/path/to/photos/nissan_frontier_2022.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password_hash`, `email`, `created_at`) VALUES
(1, 'john_doe', 'hashed_password_1', 'john.doe@example.com', '2024-06-05 08:59:36'),
(2, 'jane_smith', 'hashed_password_2', 'jane.smith@example.com', '2024-06-05 08:59:36');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vin` (`vin`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
