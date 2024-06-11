-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 11, 2024 at 05:34 PM
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
(1, 'WAUZZZ8P1AA000001', 'Audi', 'A3', 2010, 120000, '1.6L I4', 'Benzyna', 2, 'dobry', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmYaUIR7IrUGHQJapduwaXVZ5BVpItg6VoaQQqC7nPefYTr70sAnYYI4ebTvyMoib9s7M&usqp=CAU'),
(2, 'WVWZZZ1KZAW000002', 'Volkswagen', 'Golf', 2010, 130000, '1.4L TSI', 'Benzyna', 1, 'dobry', 'https://a.allegroimg.com/s1024/0ced74/154b06d44d299af19b6a9b270e2e'),
(3, 'WBA3A31000K000003', 'BMW', '3 Series', 2012, 100000, '2.0L I4', 'Diesel', 1, 'dobry', 'https://a.allegroimg.com/s1024/0c8a59/51e7b0624c23bbe1833fb4c35b06'),
(4, 'VF1KZ170640000004', 'Renault', 'Clio', 2015, 80000, '1.2L I4', 'Benzyna', 1, 'dobry', 'https://interauto.krakow.pl/wp-content/uploads/2023/03/Renault-Clio-1-1024x678.jpg'),
(5, 'VF7SBRFVB72000005', 'Citroën', 'C4', 2014, 75000, '1.6L I4', 'Diesel', 2, 'bardzo dobry', 'https://upload.wikimedia.org/wikipedia/commons/d/dd/2015_Citro%C3%ABn_C4_Picasso_%28B7_MY15%29_Exclusive_e-THP_wagon_%282015-06-15%29_01.jpg'),
(6, 'W0L0XCE759T000006', 'Opel', 'Astra', 2009, 110000, '1.6L I4', 'Benzyna', 3, 'dobry', 'https://images.autouncle.com/pl/car_images/4464f798-b34d-4838-86f0-0064c22f1608_opel-astra-2009-rok-1-6-ben.jpg'),
(7, 'WAUZZZ8P2BA000007', 'Audi', 'A3', 2011, 90000, '2.0L TDI', 'Diesel', 1, 'bardzo dobry', 'https://www.njuskalo.hr/image-w920x690/auti/audi-a3-1.6-tdi-tronic-sportback-slika-124455884.jpg'),
(8, 'WVWZZZ1KZCW000008', 'Volkswagen', 'Golf', 2012, 95000, '1.6L TDI', 'Diesel', 2, 'dobry', 'https://www.cnet.com/a/img/resize/9a7532b0126949961c2f72f9bfe612b8e4af914f/hub/2012/11/12/18273f4c-bb76-11e2-8a8e-0291187978f3/35165474_OVR.jpg?auto=webp&fit=crop&height=675&width=1200'),
(9, 'WBA3A31000K000009', 'BMW', '3 Series', 2013, 85000, '2.0L I4', 'Diesel', 1, 'znośny', 'https://www.autocentrum.pl/dXp5bmEuSzkRVxReag5GLVIPQEIkFkk-GVkHQiIUCDQVRxtANR0LLB8aVwkhRlFhRgVXVXYUVD5AU1AOcEIHOkcFTQ8oAkkrFUcLDGhGST5DBU8LdkRJPkMBTwEsGBEiCVsDQy8FA3oN'),
(10, 'VF1KZ170640000010', 'Renault', 'Clio', 2016, 60000, '1.5L dCi', 'Diesel', 1, 'bardzo dobry', 'https://www.njuskalo.hr/image-w920x690/auti/renault-clio-1.5-dci-2016-godina-navigacija-slika-105965988.jpg'),
(11, 'VF7SBRFVB72000011', 'Citroën', 'C4', 2015, 70000, '1.6L I4', 'Diesel', 2, 'znośny', 'https://landinginteligente.com/fotos/CatalogoUsados/deconcesionarias--2023-6-15--13-15-15/8729cf1f-7355-4679-b9b1-e03fcf250db7.jpg'),
(12, 'W0L0XCE759T000012', 'Opel', 'Astra', 2010, 105000, '1.4L I4', 'Benzyna', 2, 'znośny', 'https://image.ceneostatic.pl/data/products/66663499/p-opel-astra-j-2010-115km-hatchback-czerwony.jpg'),
(13, 'WAUZZZ8P1BA000013', 'Audi', 'A3', 2012, 85000, '1.8L TFSI', 'Benzyna', 1, 'dobry', 'https://a.allegroimg.com/original/12e502/ba575572485aa0c85fc392a5f5f8'),
(14, 'WVWZZZ1KZDW000014', 'Volkswagen', 'Golf', 2013, 80000, '2.0L TDI', 'Diesel', 1, 'bardzo dobry', 'https://a.allegroimg.com/s1024/0c5fad/0a97105248aab207d28bdf225376'),
(15, 'WBA3A31000K000015', 'BMW', '3 Series', 2014, 70000, '2.0L I4', 'Diesel', 1, 'dobry', 'https://s2.auto.drom.ru/photo/w4N-0VToNDX9KZBYyv0PP4NVQ9ff7vka9iu6ME3yN4FdKkkgy973pKBZkGRpujScsMRb6b92KGmP6XF-KLYDB4-fpNuNYjTs.jpg'),
(16, 'VF1KZ170640000016', 'Renault', 'Clio', 2017, 55000, '0.9L TCe', 'Benzyna', 1, 'dobry', 'https://img.chceauto.pl/renault/clio/renault-clio-kombi-3415-31155_v2.jpg'),
(17, 'VF7SBRFVB72000017', 'Citroën', 'C4', 2016, 65000, '1.2L PureTech', 'Benzyna', 2, 'bardzo dobry', 'https://ireland.apollo.olxcdn.com/v1/files/hhl2879iq51m-PL/image;s=4032x3024'),
(18, 'W0L0XCE759T000018', 'Opel', 'Astra', 2011, 95000, '1.7L CDTI', 'Diesel', 2, 'bardzo dobry', 'https://image.ceneostatic.pl/data/products/150148361/p-opel-astra-2011-r-1-6-pb-115-km-bezwypadkow.jpg'),
(19, 'WAUZZZ8P1CA000019', 'Audi', 'A3', 2013, 75000, '2.0L TDI', 'Diesel', 1, 'dobry', 'https://www.3wauto.fr/composants/uploads/2023/04/audi-a3-sline-stronic-cockpit-avant.jpg'),
(20, 'WVWZZZ1KZFW000020', 'Volkswagen', 'Golf', 2015, 70000, '1.6L TDI', 'Diesel', 1, 'dobry', 'https://uzywane.renault.pl/CarExportImageManager.axd?ImageId=83686_0'),
(21, 'WBA3A31000K000021', 'BMW', '3 Series', 2015, 60000, '2.0L I4', 'Diesel', 1, 'bardzo dobry', 'https://images.pexels.com/photos/315882/pexels-photo-315882.jpeg'),
(22, 'VF1KZ170640000022', 'Renault', 'Clio', 2018, 40000, '1.0L TCe', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/1402778/pexels-photo-1402778.jpeg'),
(23, 'VF7SBRFVB72000023', 'Citroën', 'C4', 2017, 50000, '1.6L I4', 'Diesel', 2, 'dobry', 'https://images.pexels.com/photos/63703/pexels-photo-63703.jpeg'),
(24, 'W0L0XCE759T000024', 'Opel', 'Astra', 2012, 85000, '1.4L I4', 'Benzyna', 2, 'dobry', 'https://images.pexels.com/photos/170823/pexels-photo-170823.jpeg'),
(25, 'WAUZZZ8P1DA000025', 'Audi', 'A3', 2014, 60000, '1.6L TDI', 'Diesel', 1, 'dobry', 'https://images.pexels.com/photos/164634/pexels-photo-164634.jpeg'),
(26, 'WAUZZZ4L9HD000001', 'Audi', 'Q5', 2019, 15000, '2.0L TFSI', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/1402773/pexels-photo-1402773.jpeg'),
(27, 'WDCGG5HB9FG000002', 'Mercedes-Benz', 'GLK', 2018, 18000, '2.1L I4', 'Diesel', 1, 'dobry', 'https://images.pexels.com/photos/206646/pexels-photo-206646.jpeg'),
(28, 'WVGZZZ5NZKW000003', 'Volkswagen', 'Tiguan', 2020, 12000, '1.5L TSI', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/1386619/pexels-photo-1386619.jpeg'),
(29, 'WBAWZ710200000004', 'BMW', 'X3', 2019, 10000, '2.0L I4', 'Diesel', 1, 'znośny', 'https://images.pexels.com/photos/1402780/pexels-photo-1402780.jpeg'),
(30, 'WA1VAAF79KD000005', 'Audi', 'Q7', 2019, 17000, '3.0L V6', 'Diesel', 1, 'dobry', 'https://images.pexels.com/photos/1080938/pexels-photo-1080938.jpeg'),
(31, 'SALYA2BN4KA000006', 'Land Rover', 'Discovery', 2020, 16000, '2.0L I4', 'Diesel', 1, 'bardzo dobry', 'https://images.pexels.com/photos/250990/pexels-photo-250990.jpeg'),
(32, '5XYKTDA27FG000007', 'Kia', 'Sorento', 2019, 14000, '2.2L I4', 'Diesel', 1, 'bardzo dobry', 'https://images.pexels.com/photos/112460/pexels-photo-112460.jpeg'),
(33, 'WDC0G4KB2KF000008', 'Mercedes-Benz', 'GLC', 2019, 13000, '2.0L I4', 'Diesel', 1, 'bardzo dobry', 'https://images.pexels.com/photos/204560/pexels-photo-204560.jpeg'),
(34, 'WVGZZZ5NZLV000009', 'Volkswagen', 'Tiguan', 2021, 8000, '2.0L TSI', 'Benzyna', 1, 'bardzo dobry', 'https://images.pexels.com/photos/120049/pexels-photo-120049.jpeg'),
(35, '5UXWZ7C54K0D00010', 'BMW', 'X5', 2019, 19000, '3.0L I6', 'Diesel', 1, 'dobry', 'https://images.pexels.com/photos/1386319/pexels-photo-1386319.jpeg'),
(36, 'SALWR2RV6KA000011', 'Land Rover', 'Range Rover Sport', 2019, 17000, '3.0L V6', 'Diesel', 1, 'znośny', 'https://images.pexels.com/photos/937666/pexels-photo-937666.jpeg'),
(37, 'JTMYFREV9JD000012', 'Toyota', 'RAV4', 2019, 11000, '2.5L I4', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/94268/pexels-photo-94268.jpeg'),
(38, 'KNAPC81BXK5000001', 'Kia', 'Sportage', 2020, 10000, '1.6L I4', 'Benzyna', 1, 'bardzo dobry', 'https://images.pexels.com/photos/223528/pexels-photo-223528.jpeg'),
(39, 'SHHFK8G7XJU000014', 'Honda', 'CR-V', 2019, 9000, '1.5L I4', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/34058/pexels-photo.jpg'),
(40, 'WDC0J5KB2JF000015', 'Mercedes-Benz', 'GLE', 2019, 18000, '3.0L I6', 'Diesel', 1, 'dobry', 'https://images.pexels.com/photos/1402777/pexels-photo-1402777.jpeg'),
(41, 'WA1ANAFY9K2000001', 'Audi', 'Q3', 2020, 12000, '2.0L TFSI', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/1061710/pexels-photo-1061710.jpeg'),
(42, '5YJXCAE22JF000017', 'Tesla', 'Model X', 2019, 16000, 'elektryk', 'Elektryk', 1, 'znośny', 'https://images.pexels.com/photos/190533/pexels-photo-190533.jpeg'),
(43, 'JN1BJ1CR9JW000018', 'Nissan', 'Qashqai', 2019, 10000, '1.3L I4', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/276517/pexels-photo-276517.jpeg'),
(44, 'ZFA3200000K000019', 'Fiat', '500X', 2020, 12000, '1.0L I3', 'Benzyna', 1, 'znośny', 'https://images.pexels.com/photos/169763/pexels-photo-169763.jpeg'),
(45, 'JMZKF4W10L0000020', 'Mazda', 'CX-5', 2020, 8000, '2.0L I4', 'Benzyna', 1, 'bardzo dobry', 'https://images.pexels.com/photos/276517/pexels-photo-276517.jpeg'),
(46, 'SHSRE6750LU000021', 'Honda', 'HR-V', 2020, 15000, '1.5L I4', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/161572/pexels-photo-161572.jpeg'),
(47, 'WDC2923241A000022', 'Mercedes-Benz', 'GLE Coupe', 2019, 18000, '3.0L V6', 'Diesel', 1, 'znośny', 'https://images.pexels.com/photos/221903/pexels-photo-221903.jpeg'),
(48, 'WAUZZZFY9J2000002', 'Audi', 'Q2', 2019, 17000, '1.5L TFSI', 'Benzyna', 1, 'znośny', 'https://images.pexels.com/photos/1402788/pexels-photo-1402788.jpeg'),
(49, 'TMBJG7NX0L0000024', 'Škoda', 'Kodiaq', 2020, 14000, '2.0L I4', 'Diesel', 1, 'dobry', 'https://images.pexels.com/photos/5380626/pexels-photo-5380626.jpeg'),
(50, 'WF0AXXWPMAKU00025', 'Ford', 'Edge', 2020, 11000, '2.0L I4', 'Diesel', 1, 'dobry', 'https://images.pexels.com/photos/788342/pexels-photo-788342.jpeg'),
(76, '1FTFW1RG6JFA00001', 'Ford', 'F-150', 2021, 4000, '3.5L V6', 'Benzyna', 1, 'znośny', 'https://images.pexels.com/photos/1108107/pexels-photo-1108107.jpeg'),
(77, '1C6SRFFT9LN100002', 'Ram', '1500', 2022, 3500, '5.7L V8', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/2774297/pexels-photo-2774297.jpeg'),
(78, '1GNSKCKD0MR200003', 'Chevrolet', 'Tahoe', 2021, 3000, '5.3L V8', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/1702868/pexels-photo-1702868.jpeg'),
(79, '1HGCV2F38MA300004', 'Honda', 'Accord', 2021, 2500, '2.0L I4', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/235733/pexels-photo-235733.jpeg'),
(80, '1N4AL4CV5LC400005', 'Nissan', 'Altima', 2021, 2000, '2.5L I4', 'Benzyna', 1, 'bardzo dobry', 'https://images.pexels.com/photos/190533/pexels-photo-190533.jpeg'),
(81, '2T3P1RFV2MW500006', 'Toyota', 'RAV4', 2021, 3500, '2.5L I4', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/2693930/pexels-photo-2693930.jpeg'),
(82, '5YJ3E1EA8MF600007', 'Tesla', 'Model 3', 2021, 4500, 'elektryk', 'Elektryk', 1, 'bardzo dobry', 'https://images.pexels.com/photos/3862628/pexels-photo-3862628.jpeg'),
(83, '1FMEE5DH9ML700008', 'Ford', 'Bronco', 2022, 1500, '2.3L I4', 'Benzyna', 1, 'bardzo dobry', 'https://images.pexels.com/photos/787959/pexels-photo-787959.jpeg'),
(84, '5TDYZRAH5MS800009', 'Toyota', 'Highlander', 2021, 3000, '3.5L V6', 'Benzyna', 1, 'bardzo dobry', 'https://images.pexels.com/photos/3861417/pexels-photo-3861417.jpeg'),
(85, '1G1ZE5ST0MF900010', 'Chevrolet', 'Malibu', 2021, 2000, '1.5L I4', 'Benzyna', 1, 'znośny', 'https://images.pexels.com/photos/108113/pexels-photo-108113.jpeg'),
(86, '3GCUDHEL9MG100011', 'Chevrolet', 'Silverado', 2021, 4000, '6.2L V8', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/210019/pexels-photo-210019.jpeg'),
(87, '2FMPK4K96MBA00012', 'Ford', 'Edge', 2021, 2500, '2.0L I4', 'Benzyna', 1, 'znośny', 'https://images.pexels.com/photos/1108005/pexels-photo-1108005.jpeg'),
(88, '1C4PJMDX0KD100013', 'Jeep', 'Cherokee', 2021, 3500, '3.2L V6', 'Benzyna', 1, 'bardzo dobry', 'https://images.pexels.com/photos/210182/pexels-photo-210182.jpeg'),
(89, '1FM5K8D89LGA00014', 'Ford', 'Explorer', 2021, 3000, '2.3L I4', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/1108146/pexels-photo-1108146.jpeg'),
(90, '1N6ED1EK1NN200015', 'Nissan', 'Frontier', 2022, 1500, '3.8L V6', 'Benzyna', 1, 'dobry', 'https://images.pexels.com/photos/1234567/pexels-photo-1234567.jpeg');

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
