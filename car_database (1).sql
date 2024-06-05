-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 05, 2024 at 04:07 PM
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
  `damage_state` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `vin`, `brand`, `model`, `year`, `mileage`, `engine`, `fuel_type`, `owner_count`, `damage_state`) VALUES
(1, 'WAUZZZ8P1AA000001', 'Audi', 'A3', 2010, 120000, '1.6L I4', 'Benzyna', 2, 'dobry'),
(2, 'WVWZZZ1KZAW000002', 'Volkswagen', 'Golf', 2010, 130000, '1.4L TSI', 'Benzyna', 1, 'dobry'),
(3, 'WBA3A31000K000003', 'BMW', '3 Series', 2012, 100000, '2.0L I4', 'Diesel', 1, 'dobry'),
(4, 'VF1KZ170640000004', 'Renault', 'Clio', 2015, 80000, '1.2L I4', 'Benzyna', 1, 'dobry'),
(5, 'VF7SBRFVB72000005', 'Citroën', 'C4', 2014, 75000, '1.6L I4', 'Diesel', 2, 'bardzo dobry'),
(6, 'W0L0XCE759T000006', 'Opel', 'Astra', 2009, 110000, '1.6L I4', 'Benzyna', 3, 'dobry'),
(7, 'WAUZZZ8P2BA000007', 'Audi', 'A3', 2011, 90000, '2.0L TDI', 'Diesel', 1, 'bardzo dobry'),
(8, 'WVWZZZ1KZCW000008', 'Volkswagen', 'Golf', 2012, 95000, '1.6L TDI', 'Diesel', 2, 'dobry'),
(9, 'WBA3A31000K000009', 'BMW', '3 Series', 2013, 85000, '2.0L I4', 'Diesel', 1, 'znośny'),
(10, 'VF1KZ170640000010', 'Renault', 'Clio', 2016, 60000, '1.5L dCi', 'Diesel', 1, 'bardzo dobry'),
(11, 'VF7SBRFVB72000011', 'Citroën', 'C4', 2015, 70000, '1.6L I4', 'Diesel', 2, 'znośny'),
(12, 'W0L0XCE759T000012', 'Opel', 'Astra', 2010, 105000, '1.4L I4', 'Benzyna', 2, 'znośny'),
(13, 'WAUZZZ8P1BA000013', 'Audi', 'A3', 2012, 85000, '1.8L TFSI', 'Benzyna', 1, 'dobry'),
(14, 'WVWZZZ1KZDW000014', 'Volkswagen', 'Golf', 2013, 80000, '2.0L TDI', 'Diesel', 1, 'bardzo dobry'),
(15, 'WBA3A31000K000015', 'BMW', '3 Series', 2014, 70000, '2.0L I4', 'Diesel', 1, 'dobry'),
(16, 'VF1KZ170640000016', 'Renault', 'Clio', 2017, 55000, '0.9L TCe', 'Benzyna', 1, 'dobry'),
(17, 'VF7SBRFVB72000017', 'Citroën', 'C4', 2016, 65000, '1.2L PureTech', 'Benzyna', 2, 'bardzo dobry'),
(18, 'W0L0XCE759T000018', 'Opel', 'Astra', 2011, 95000, '1.7L CDTI', 'Diesel', 2, 'bardzo dobry'),
(19, 'WAUZZZ8P1CA000019', 'Audi', 'A3', 2013, 75000, '2.0L TDI', 'Diesel', 1, 'dobry'),
(20, 'WVWZZZ1KZFW000020', 'Volkswagen', 'Golf', 2015, 70000, '1.6L TDI', 'Diesel', 1, 'dobry'),
(21, 'WBA3A31000K000021', 'BMW', '3 Series', 2015, 60000, '2.0L I4', 'Diesel', 1, 'bardzo dobry'),
(22, 'VF1KZ170640000022', 'Renault', 'Clio', 2018, 40000, '1.0L TCe', 'Benzyna', 1, 'dobry'),
(23, 'VF7SBRFVB72000023', 'Citroën', 'C4', 2017, 50000, '1.6L I4', 'Diesel', 2, 'dobry'),
(24, 'W0L0XCE759T000024', 'Opel', 'Astra', 2012, 85000, '1.4L I4', 'Benzyna', 2, 'dobry'),
(25, 'WAUZZZ8P1DA000025', 'Audi', 'A3', 2014, 60000, '1.6L TDI', 'Diesel', 1, 'dobry'),
(26, 'WAUZZZ4L9HD000001', 'Audi', 'Q5', 2019, 15000, '2.0L TFSI', 'Benzyna', 1, 'dobry'),
(27, 'WDCGG5HB9FG000002', 'Mercedes-Benz', 'GLK', 2018, 18000, '2.1L I4', 'Diesel', 1, 'dobry'),
(28, 'WVGZZZ5NZKW000003', 'Volkswagen', 'Tiguan', 2020, 12000, '1.5L TSI', 'Benzyna', 1, 'dobry'),
(29, 'WBAWZ710200000004', 'BMW', 'X3', 2019, 10000, '2.0L I4', 'Diesel', 1, 'znośny'),
(30, 'WA1VAAF79KD000005', 'Audi', 'Q7', 2019, 17000, '3.0L V6', 'Diesel', 1, 'dobry'),
(31, 'SALYA2BN4KA000006', 'Land Rover', 'Discovery', 2020, 16000, '2.0L I4', 'Diesel', 1, 'bardzo dobry'),
(32, '5XYKTDA27FG000007', 'Kia', 'Sorento', 2019, 14000, '2.2L I4', 'Diesel', 1, 'bardzo dobry'),
(33, 'WDC0G4KB2KF000008', 'Mercedes-Benz', 'GLC', 2019, 13000, '2.0L I4', 'Diesel', 1, 'bardzo dobry'),
(34, 'WVGZZZ5NZLV000009', 'Volkswagen', 'Tiguan', 2021, 8000, '2.0L TSI', 'Benzyna', 1, 'bardzo dobry'),
(35, '5UXWZ7C54K0D00010', 'BMW', 'X5', 2019, 19000, '3.0L I6', 'Diesel', 1, 'dobry'),
(36, 'SALWR2RV6KA000011', 'Land Rover', 'Range Rover Sport', 2019, 17000, '3.0L V6', 'Diesel', 1, 'znośny'),
(37, 'JTMYFREV9JD000012', 'Toyota', 'RAV4', 2019, 11000, '2.5L I4', 'Benzyna', 1, 'dobry'),
(38, 'KNAPC81BXK5000001', 'Kia', 'Sportage', 2020, 10000, '1.6L I4', 'Benzyna', 1, 'bardzo dobry'),
(39, 'SHHFK8G7XJU000014', 'Honda', 'CR-V', 2019, 9000, '1.5L I4', 'Benzyna', 1, 'dobry'),
(40, 'WDC0J5KB2JF000015', 'Mercedes-Benz', 'GLE', 2019, 18000, '3.0L I6', 'Diesel', 1, 'dobry'),
(41, 'WA1ANAFY9K2000001', 'Audi', 'Q3', 2020, 12000, '2.0L TFSI', 'Benzyna', 1, 'dobry'),
(42, '5YJXCAE22JF000017', 'Tesla', 'Model X', 2019, 16000, 'elektryk', 'Elektryk', 1, 'znośny'),
(43, 'JN1BJ1CR9JW000018', 'Nissan', 'Qashqai', 2019, 10000, '1.3L I4', 'Benzyna', 1, 'dobry'),
(44, 'ZFA3200000K000019', 'Fiat', '500X', 2020, 12000, '1.0L I3', 'Benzyna', 1, 'znośny'),
(45, 'JMZKF4W10L0000020', 'Mazda', 'CX-5', 2020, 8000, '2.0L I4', 'Benzyna', 1, 'bardzo dobry'),
(46, 'SHSRE6750LU000021', 'Honda', 'HR-V', 2020, 15000, '1.5L I4', 'Benzyna', 1, 'dobry'),
(47, 'WDC2923241A000022', 'Mercedes-Benz', 'GLE Coupe', 2019, 18000, '3.0L V6', 'Diesel', 1, 'znośny'),
(48, 'WAUZZZFY9J2000002', 'Audi', 'Q2', 2019, 17000, '1.5L TFSI', 'Benzyna', 1, 'znośny'),
(49, 'TMBJG7NX0L0000024', 'Škoda', 'Kodiaq', 2020, 14000, '2.0L I4', 'Diesel', 1, 'dobry'),
(50, 'WF0AXXWPMAKU00025', 'Ford', 'Edge', 2020, 11000, '2.0L I4', 'Diesel', 1, 'dobry'),
(76, '1FTFW1RG6JFA00001', 'Ford', 'F-150', 2021, 4000, '3.5L V6', 'Benzyna', 1, 'znośny'),
(77, '1C6SRFFT9LN100002', 'Ram', '1500', 2022, 3500, '5.7L V8', 'Benzyna', 1, 'dobry'),
(78, '1GNSKCKD0MR200003', 'Chevrolet', 'Tahoe', 2021, 3000, '5.3L V8', 'Benzyna', 1, 'dobry'),
(79, '1HGCV2F38MA300004', 'Honda', 'Accord', 2021, 2500, '2.0L I4', 'Benzyna', 1, 'dobry'),
(80, '1N4AL4CV5LC400005', 'Nissan', 'Altima', 2021, 2000, '2.5L I4', 'Benzyna', 1, 'bardzo dobry'),
(81, '2T3P1RFV2MW500006', 'Toyota', 'RAV4', 2021, 3500, '2.5L I4', 'Benzyna', 1, 'dobry'),
(82, '5YJ3E1EA8MF600007', 'Tesla', 'Model 3', 2021, 4500, 'elektryk', 'Elektryk', 1, 'bardzo dobry'),
(83, '1FMEE5DH9ML700008', 'Ford', 'Bronco', 2022, 1500, '2.3L I4', 'Benzyna', 1, 'bardzo dobry'),
(84, '5TDYZRAH5MS800009', 'Toyota', 'Highlander', 2021, 3000, '3.5L V6', 'Benzyna', 1, 'bardzo dobry'),
(85, '1G1ZE5ST0MF900010', 'Chevrolet', 'Malibu', 2021, 2000, '1.5L I4', 'Benzyna', 1, 'znośny'),
(86, '3GCUDHEL9MG100011', 'Chevrolet', 'Silverado', 2021, 4000, '6.2L V8', 'Benzyna', 1, 'dobry'),
(87, '2FMPK4K96MBA00012', 'Ford', 'Edge', 2021, 2500, '2.0L I4', 'Benzyna', 1, 'znośny'),
(88, '1C4PJMDX0KD100013', 'Jeep', 'Cherokee', 2021, 3500, '3.2L V6', 'Benzyna', 1, 'bardzo dobry'),
(89, '1FM5K8D89LGA00014', 'Ford', 'Explorer', 2021, 3000, '2.3L I4', 'Benzyna', 1, 'dobry'),
(90, '1N6ED1EK1NN200015', 'Nissan', 'Frontier', 2022, 1500, '3.8L V6', 'Benzyna', 1, 'dobry');

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
