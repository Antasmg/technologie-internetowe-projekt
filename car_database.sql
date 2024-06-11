-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Cze 11, 2024 at 11:09 PM
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
  `photo_path` varchar(255) DEFAULT NULL,
  `cena` decimal(10,2) NOT NULL,
  `numer_telefonu` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `vin`, `brand`, `model`, `year`, `mileage`, `engine`, `fuel_type`, `owner_count`, `damage_state`, `photo_path`, `cena`, `numer_telefonu`) VALUES
(1, 'WAUZZZ8P1AA000001', 'Audi', 'A3', 2010, 120000, '1.6L I4', 'Benzyna', 2, 'dobry', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmYaUIR7IrUGHQJapduwaXVZ5BVpItg6VoaQQqC7nPefYTr70sAnYYI4ebTvyMoib9s7M&usqp=CAU', 23000.00, '789-123-456'),
(2, 'WVWZZZ1KZAW000002', 'Volkswagen', 'Golf', 2010, 130000, '1.4L TSI', 'Benzyna', 1, 'dobry', 'https://a.allegroimg.com/s1024/0ced74/154b06d44d299af19b6a9b270e2e', 25000.00, '890-234-567'),
(3, 'WBA3A31000K000003', 'BMW', '3 Series', 2012, 100000, '2.0L I4', 'Diesel', 1, 'dobry', 'https://a.allegroimg.com/s1024/0c8a59/51e7b0624c23bbe1833fb4c35b06', 42000.00, '901-345-678'),
(4, 'VF1KZ170640000004', 'Renault', 'Clio', 2015, 80000, '1.2L I4', 'Benzyna', 1, 'dobry', 'https://interauto.krakow.pl/wp-content/uploads/2023/03/Renault-Clio-1-1024x678.jpg', 34000.00, '012-456-789'),
(5, 'VF7SBRFVB72000005', 'Citroën', 'C4', 2014, 75000, '1.6L I4', 'Diesel', 2, 'bardzo dobry', 'https://upload.wikimedia.org/wikipedia/commons/d/dd/2015_Citro%C3%ABn_C4_Picasso_%28B7_MY15%29_Exclusive_e-THP_wagon_%282015-06-15%29_01.jpg', 30000.00, '123-567-890'),
(6, 'W0L0XCE759T000006', 'Opel', 'Astra', 2009, 110000, '1.6L I4', 'Benzyna', 3, 'dobry', 'https://images.autouncle.com/pl/car_images/4464f798-b34d-4838-86f0-0064c22f1608_opel-astra-2009-rok-1-6-ben.jpg', 32000.00, '234-678-901'),
(7, 'WAUZZZ8P2BA000007', 'Audi', 'A3', 2011, 90000, '2.0L TDI', 'Diesel', 1, 'bardzo dobry', 'https://www.njuskalo.hr/image-w920x690/auti/audi-a3-1.6-tdi-tronic-sportback-slika-124455884.jpg', 35000.00, '345-789-013'),
(8, 'WVWZZZ1KZCW000008', 'Volkswagen', 'Golf', 2012, 95000, '1.6L TDI', 'Diesel', 2, 'dobry', 'https://www.cnet.com/a/img/resize/9a7532b0126949961c2f72f9bfe612b8e4af914f/hub/2012/11/12/18273f4c-bb76-11e2-8a8e-0291187978f3/35165474_OVR.jpg?auto=webp&fit=crop&height=675&width=1200', 42000.00, '456-890-153'),
(9, 'WBA3A31000K000009', 'BMW', '3 Series', 2013, 85000, '2.0L I4', 'Diesel', 1, 'znośny', 'https://www.autocentrum.pl/dXp5bmEuSzkRVxReag5GLVIPQEIkFkk-GVkHQiIUCDQVRxtANR0LLB8aVwkhRlFhRgVXVXYUVD5AU1AOcEIHOkcFTQ8oAkkrFUcLDGhGST5DBU8LdkRJPkMBTwEsGBEiCVsDQy8FA3oN', 27000.00, '367-911-234'),
(10, 'VF1KZ170640000010', 'Renault', 'Clio', 2016, 60000, '1.5L dCi', 'Diesel', 1, 'bardzo dobry', 'https://www.njuskalo.hr/image-w920x690/auti/renault-clio-1.5-dci-2016-godina-navigacija-slika-105965988.jpg', 31000.00, '478-112-345'),
(11, 'VF7SBRFVB72000011', 'Citroën', 'C4', 2015, 70000, '1.6L I4', 'Diesel', 2, 'znośny', 'https://landinginteligente.com/fotos/CatalogoUsados/deconcesionarias--2023-6-15--13-15-15/8729cf1f-7355-4679-b9b1-e03fcf250db7.jpg', 46000.00, '634-778-910'),
(12, 'W0L0XCE759T000012', 'Opel', 'Astra', 2010, 105000, '1.4L I4', 'Benzyna', 2, 'znośny', 'https://image.ceneostatic.pl/data/products/66663499/p-opel-astra-j-2010-115km-hatchback-czerwony.jpg', 35000.00, '945-889-012'),
(13, 'WAUZZZ8P1BA000013', 'Audi', 'A3', 2012, 85000, '1.8L TFSI', 'Benzyna', 1, 'dobry', 'https://a.allegroimg.com/original/12e502/ba575572485aa0c85fc392a5f5f8', 42000.00, '156-990-123'),
(14, 'WVWZZZ1KZDW000014', 'Volkswagen', 'Golf', 2013, 80000, '2.0L TDI', 'Diesel', 1, 'bardzo dobry', 'https://a.allegroimg.com/s1024/0c5fad/0a97105248aab207d28bdf225376', 27000.00, '367-001-234'),
(15, 'WBA3A31000K000015', 'BMW', '3 Series', 2014, 70000, '2.0L I4', 'Diesel', 1, 'dobry', 'https://s2.auto.drom.ru/photo/w4N-0VToNDX9KZBYyv0PP4NVQ9ff7vka9iu6ME3yN4FdKkkgy973pKBZkGRpujScsMRb6b92KGmP6XF-KLYDB4-fpNuNYjTs.jpg', 72000.00, '478-112-345'),
(16, 'VF1KZ170640000016', 'Renault', 'Clio', 2017, 55000, '0.9L TCe', 'Benzyna', 1, 'dobry', 'https://img.chceauto.pl/renault/clio/renault-clio-kombi-3415-31155_v2.jpg', 56000.00, '534-788-910'),
(17, 'VF7SBRFVB72000017', 'Citroën', 'C4', 2016, 65000, '1.2L PureTech', 'Benzyna', 2, 'bardzo dobry', 'https://ireland.apollo.olxcdn.com/v1/files/hhl2879iq51m-PL/image;s=4032x3024', 35000.00, '345-799-012'),
(18, 'W0L0XCE759T000018', 'Opel', 'Astra', 2011, 95000, '1.7L CDTI', 'Diesel', 2, 'bardzo dobry', 'https://image.ceneostatic.pl/data/products/150148361/p-opel-astra-2011-r-1-6-pb-115-km-bezwypadkow.jpg', 42000.00, '356-800-123'),
(19, 'WAUZZZ8P1CA000019', 'Audi', 'A3', 2013, 75000, '2.0L TDI', 'Diesel', 1, 'dobry', 'https://www.3wauto.fr/composants/uploads/2023/04/audi-a3-sline-stronic-cockpit-avant.jpg', 52000.00, '434-678-910'),
(20, 'WVWZZZ1KZFW000020', 'Volkswagen', 'Golf', 2015, 70000, '1.6L TDI', 'Diesel', 1, 'dobry', 'https://uzywane.renault.pl/CarExportImageManager.axd?ImageId=83686_0', 65000.00, '745-789-012'),
(21, 'WBA3A31000K000021', 'BMW', '3 Series', 2015, 60000, '2.0L I4', 'Diesel', 1, 'bardzo dobry', 'https://www.autocentrum.pl/dXp5bmEuSzkRVxReag5GLVIPQEIkFkk-GVkHQiIUCDQVRxtANR0LLB8aVwkhRlFhRgVXVXYUVD5AU1AOcEIHOkcFTQ8oAkkrFUcLDGhGST5DBU8LdkRJPkMBTwEsGBEiCVsDQy8FA3oN', 62000.00, '456-890-123'),
(22, 'VF1KZ170640000022', 'Renault', 'Clio', 2018, 40000, '1.0L TCe', 'Benzyna', 1, 'dobry', 'https://a.allegroimg.com/original/111532/6caf085341a9886a8053abaa7d11/Renault-Clio-Renault-Clio-Salon-Polska-2018-1', 57000.00, '237-901-234'),
(23, 'VF7SBRFVB72000023', 'Citroën', 'C4', 2017, 50000, '1.6L I4', 'Diesel', 2, 'dobry', 'https://upload.wikimedia.org/wikipedia/commons/f/fc/Citroen_C4_BlueHDi_120_Feel_2017_%2835385622361%29.jpg', 67000.00, '588-012-345'),
(24, 'W0L0XCE759T000024', 'Opel', 'Astra', 2012, 85000, '1.4L I4', 'Benzyna', 2, 'dobry', 'https://www.auto-data.net/images/f107/Opel-Astra-J-facelift-2012.jpg', 48000.00, '743-890-123'),
(25, 'WAUZZZ8P1DA000025', 'Audi', 'A3', 2014, 60000, '1.6L TDI', 'Diesel', 1, 'dobry', 'https://i.ytimg.com/vi/QutXoUpbzRs/maxresdefault.jpg', 90000.00, '232-789-012'),
(26, 'WAUZZZ4L9HD000001', 'Audi', 'Q5', 2019, 15000, '2.0L TFSI', 'Benzyna', 1, 'dobry', 'https://a.allegroimg.com/s1024/0c0bcc/8444b5dc4f38872d1f1b3cbead66', 100000.00, '444-890-123'),
(27, 'WDCGG5HB9FG000002', 'Mercedes-Benz', 'GLK', 2018, 18000, '2.1L I4', 'Diesel', 1, 'dobry', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/Mercedes-Benz_GLK_220_CDI_4MATIC_Sport-Paket_AMG_%28X_204%2C_Facelift%29_%E2%80%93_Frontansicht%2C_24._August_2014%2C_D%C3%BCsseldorf.jpg/1200px-Mercedes-Benz_GLK_220_CDI_4MATIC_Sport-Paket_AMG_%28', 134000.00, '764-901-234'),
(28, 'WVGZZZ5NZKW000003', 'Volkswagen', 'Tiguan', 2020, 12000, '1.5L TSI', 'Benzyna', 1, 'dobry', 'https://toptun.pl/userdata/public/gfx/461043/VOLKSWAGEN-TIGUAN-II-AD1-R-LINE-2020--PO-FACELIFTINGU-CHLAPACZE.jpg', 190000.00, '123-012-345'),
(29, 'WBAWZ710200000004', 'BMW', 'X3', 2019, 10000, '2.0L I4', 'Diesel', 1, 'znośny', 'https://bmw-uzywane.com.pl/assets/photo/upload/cars/33155/vehicle_85ac0-crop-1200-800.jpg', 300000.00, '312-678-910'),
(30, 'WA1VAAF79KD000005', 'Audi', 'Q7', 2019, 17000, '3.0L V6', 'Diesel', 1, 'dobry', 'https://getrentacar.com/storage/cache/images/960-640-100-fit-191403.jpeg', 350000.00, '345-789-012'),
(31, 'SALYA2BN4KA000006', 'Land Rover', 'Discovery', 2020, 16000, '2.0L I4', 'Diesel', 1, 'bardzo dobry', 'https://www.cnet.com/a/img/resize/c238ee418e4a57b7a02a5d05f4d64d8b96fe05c0/hub/2020/04/24/0e8ec652-19af-4f49-930c-8f0208ec94fb/2020-discovery-30.jpg?auto=webp&width=768', 410000.00, '743-890-123'),
(32, '5XYKTDA27FG000007', 'Kia', 'Sorento', 2019, 14000, '2.2L I4', 'Diesel', 1, 'bardzo dobry', 'https://smartcdn.gprod.postmedia.digital/driving/wp-content/uploads/2019/02/2019-kia-sorento-sxl-17.jpg', 98000.00, '900-901-234'),
(33, 'WDC0G4KB2KF000008', 'Mercedes-Benz', 'GLC', 2019, 13000, '2.0L I4', 'Diesel', 1, 'bardzo dobry', 'https://ocdn.eu/pulscms-transforms/1/V7tk9kpTURBXy8zYmJlNDliYjA1NzJiYmE4ZTJiYmYxZDEyNjY1ZTViNy5qcGeSlQMAzKHNCcDNBXyTBc0EsM0Cnt4AAaEwAQ', 240000.00, '091-012-345'),
(34, 'WVGZZZ5NZLV000009', 'Volkswagen', 'Tiguan', 2021, 8000, '2.0L TSI', 'Benzyna', 1, 'bardzo dobry', 'https://avatars.mds.yandex.net/get-autoru-vos/2158063/60725884e9c8d95e7dd1c7f73ee83189/456x342', 180000.00, '921-678-910'),
(35, '5UXWZ7C54K0D00010', 'BMW', 'X5', 2019, 19000, '3.0L I6', 'Diesel', 1, 'dobry', 'https://bmw-uzywane.com.pl/assets/photo/upload/cars/34763/vehicle_84909-scale-1200-0.jpg', 380000.00, '532-789-012'),
(36, 'SALWR2RV6KA000011', 'Land Rover', 'Range Rover Sport', 2019, 17000, '3.0L V6', 'Diesel', 1, 'znośny', 'https://lh3.googleusercontent.com/proxy/0PkkJug2sDf5McYJJr6d7JsS85ExTRfcB9XZDVngtDakbBJfcuU39UdzMhigkmfEmbJ7tIaeEA47jdLfnh3N2kRraTJAhMYfNLfQKGdk8nhdS_gIkYHmw5cmFC4', 540000.00, '456-111-123'),
(37, 'JTMYFREV9JD000012', 'Toyota', 'RAV4', 2019, 11000, '2.5L I4', 'Benzyna', 1, 'dobry', 'https://cdn.galleries.smcloud.net/t/galleries/gf-6bxp-rsbN-2Aoe_toyota-rav4-hybrid-selection-1920x1080-nocrop.jpg', 158000.00, '567-333-234'),
(38, 'KNAPC81BXK5000001', 'Kia', 'Sportage', 2020, 10000, '1.6L I4', 'Benzyna', 1, 'bardzo dobry', 'https://uzywane.renault.pl/CarExportImageManager.axd?ImageId=84522_0', 30000.00, '678-123-345'),
(39, 'SHHFK8G7XJU000014', 'Honda', 'CR-V', 2019, 9000, '1.5L I4', 'Benzyna', 1, 'dobry', 'https://cdn.autobild.es/sites/navi.axelspringer.es/public/media/image/2019/03/prueba-honda-cr-v-2019-1.5-vtec-4x4-173-cv.jpg?tf=3840x', 102000.00, '234-321-910'),
(40, 'WDC0J5KB2JF000015', 'Mercedes-Benz', 'GLE', 2019, 18000, '3.0L I6', 'Diesel', 1, 'dobry', 'https://ireland.apollo.olxcdn.com/v1/files/eyJmbiI6Im9iamc5dmwwNHJkNzMtT1RPTU9UT1BMIiwidyI6W3siZm4iOiJ3ZzRnbnFwNnkxZi1PVE9NT1RPUEwiLCJzIjoiMTYiLCJwIjoiMTAsLTEwIiwiYSI6IjAifV19.EILC8vkiWXHVh0LCl6F18lGbU5tCkQNW8pN0SchJvXY/image;s=5120x0;q=80', 380000.00, '345-345-012'),
(41, 'WA1ANAFY9K2000001', 'Audi', 'Q3', 2020, 12000, '2.0L TFSI', 'Benzyna', 1, 'dobry', 'https://imgservprod.bymycar.fr/image/?apikey=437fe90bfc2e7879f0953434890aa246&url=https://feassets.bymycar.fr/vo/65/250656/0/audi-q3-35-tfsi-150-ch-s-tronic-7-occasion-2020-saint-priest-en-jarez.jpg&w=321&h=226&output=webp&q=50&bg=FFFFFF&t=square&a=center', 154000.00, '456-932-123'),
(42, '5YJXCAE22JF000017', 'Tesla', 'Model X', 2019, 16000, 'elektryk', 'Elektryk', 1, 'znośny', 'https://media-r2.carsandbids.com/cdn-cgi/image/width=2080,quality=70/ea93686cb7f6bba23b9693c4dac92c0715d7c4cd/photos/KDnZEGWo-HScqzFEI40-(edit).jpg?t=169910424810', 270000.00, '567-021-234'),
(43, 'JN1BJ1CR9JW000018', 'Nissan', 'Qashqai', 2019, 10000, '1.3L I4', 'Benzyna', 1, 'dobry', 'https://webapi.plichta.carsalesflow.pl/car-photo/72674/IfbZECV86f279AST.jpg', 90000.00, '678-824-345'),
(44, 'ZFA3200000K000019', 'Fiat', '500X', 2020, 12000, '1.0L I3', 'Benzyna', 1, 'znośny', 'https://assets.newatlas.com/dims4/default/63ec152/2147483647/strip/true/crop/2880x1920+576+0/resize/1200x800!/quality/90/?url=http%3A%2F%2Fnewatlas-brightspot.s3.amazonaws.com%2F56%2F3d%2F635cf27c4bdb888630affce7b54e%2F2020-fiat-500x-4.jpg', 76000.00, '234-234-910'),
(45, 'JMZKF4W10L0000020', 'Mazda', 'CX-5', 2020, 8000, '2.0L I4', 'Benzyna', 1, 'bardzo dobry', 'https://www.cnet.com/a/img/resize/ffcb4c60163b18073c0b7cb5bbfa6551f07d56d8/hub/2020/04/14/3bd7868f-01fb-4aa4-9624-5815a7e9d909/2020-mazda-cx-5-signature-02.jpg?auto=webp&fit=crop&height=675&width=1200', 123000.00, '345-193-012'),
(46, 'SHSRE6750LU000021', 'Honda', 'HR-V', 2020, 15000, '1.5L I4', 'Benzyna', 1, 'dobry', 'https://ireland.apollo.olxcdn.com/v1/files/maj2uln9fj84-PL/image;s=800x800', 121000.00, '456-014-123'),
(47, 'WDC2923241A000022', 'Mercedes-Benz', 'GLE Coupe', 2019, 18000, '3.0L V6', 'Diesel', 1, 'znośny', 'https://cloud.leparking.fr/2021/02/14/13/15/mercedes-gle-coupe-2019-mercedes-benz-gle-43-amg-coupe-4matic-black_7981214555.jpg', 207000.00, '567-813-234'),
(48, 'WAUZZZFY9J2000002', 'Audi', 'Q2', 2019, 17000, '1.5L TFSI', 'Benzyna', 1, 'znośny', 'https://img.longo.group/drz5zvoaf/image/upload/c_fill,h_480,w_640/kvopr5yypas6nfsq4soi.webp', 105000.00, '478-834-345'),
(49, 'TMBJG7NX0L0000024', 'Škoda', 'Kodiaq', 2020, 14000, '2.0L I4', 'Diesel', 1, 'dobry', 'https://assets.autoweek.nl/m/ygqyjihbb5d0_800.jpg', 154000.00, '234-235-910'),
(50, 'WF0AXXWPMAKU00025', 'Ford', 'Edge', 2020, 11000, '2.0L I4', 'Diesel', 1, 'dobry', 'https://lh3.googleusercontent.com/proxy/XG3P1aLTcH3sA_Fcpv7MPmGlEJyrdOZraQ2V7SU48g54IrKWol6TskJEkKYpgqTQRPT7rI7ksb7C4cVzhqZFYonhvFu1FzQmwA1_eqw3inHzAhfidfum57IiQKdhck7E0kLiQnT_HFU', 148000.00, '145-734-012'),
(76, '1FTFW1RG6JFA00001', 'Ford', 'F-150', 2021, 4000, '3.5L V6', 'Benzyna', 1, 'znośny', 'https://cdn.motor1.com/images/mgl/nAmAgo/s3/2024-ford-f-150-stx-exterior.jpg', 299000.00, '456-015-123'),
(77, '1C6SRFFT9LN100002', 'Ram', '1500', 2022, 3500, '5.7L V8', 'Benzyna', 1, 'dobry', 'https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg_hero_large/v1/editorial/segment_review/hero_image/2021-RAM-1500-Limited-ute-black-mark-oastler-1001x565-%281%29.jpg', 420000.00, '567-714-234'),
(78, '1GNSKCKD0MR200003', 'Chevrolet', 'Tahoe', 2021, 3000, '5.3L V8', 'Benzyna', 1, 'dobry', 'https://www.freep.com/gcdn/presto/2020/07/31/PDTF/f7925798-ce6a-4faf-8325-9a932f6d5cff-IMG_2877.JPG?crop=3505,1972,x7,y0&width=3200&height=1801&format=pjpg&auto=webp', 560000.00, '678-045-345'),
(79, '1HGCV2F38MA300004', 'Honda', 'Accord', 2021, 2500, '2.0L I4', 'Benzyna', 1, 'dobry', 'https://autoimage.capitalone.com/cms/Auto/assets/images/1123-hero-2021-Honda-Accord-Sport-Gray-Front-Quarter-Right.jpg', 140000.00, '834-665-910'),
(80, '1N4AL4CV5LC400005', 'Nissan', 'Altima', 2021, 2000, '2.5L I4', 'Benzyna', 1, 'bardzo dobry', 'https://images.cars.com/cldstatic/wp-content/uploads/2021-Altima-Blue_8-source.jpg', 155000.00, '745-777-012'),
(81, '2T3P1RFV2MW500006', 'Toyota', 'RAV4', 2021, 3500, '2.5L I4', 'Benzyna', 1, 'dobry', 'https://cdn.jdpower.com/JDPA_2021%20Toyota%20RAV4%20Hybrid%20Limited%20Blueprint%20Front%20View.jpg', 189000.00, '756-823-123'),
(82, '5YJ3E1EA8MF600007', 'Tesla', 'Model 3', 2021, 4500, 'elektryk', 'Elektryk', 1, 'bardzo dobry', 'https://imageio.forbes.com/specials-images/imageserve/5fca67d3d350d8fde511e719/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds', 27000.00, '567-909-234'),
(83, '1FMEE5DH9ML700008', 'Ford', 'Bronco', 2022, 1500, '2.3L I4', 'Benzyna', 1, 'bardzo dobry', 'https://ocdn.eu/pulscms-transforms/1/gfcktkuTURBXy9mODMxNWE0Yi01YTQzLTQ2NDktOGNhMy01ZjcwMjQzN2FjZTYuanBlZ5GVAs0B4ADCww', 199000.00, '578-009-345'),
(84, '5TDYZRAH5MS800009', 'Toyota', 'Highlander', 2021, 3000, '3.5L V6', 'Benzyna', 1, 'bardzo dobry', 'https://pewneauto.pl/media/thumbnails/5c/5cc1b8b5939a3cd8e1a8df604768eb32__3932040.jpg', 196000.00, '934-700-910'),
(85, '1G1ZE5ST0MF900010', 'Chevrolet', 'Malibu', 2021, 2000, '1.5L I4', 'Benzyna', 1, 'znośny', 'https://vehicle-images.dealerinspire.com/6d16-110006790/1G1ZD5STXMF074473/7709bac1cde83b32f55966bb4acb329d.jpg', 210000.00, '945-820-012'),
(86, '3GCUDHEL9MG100011', 'Chevrolet', 'Silverado', 2021, 4000, '6.2L V8', 'Benzyna', 1, 'dobry', 'https://images.arkonoffroad.com/web-compressed/1886656-14-2021-silverado-1500-chevrolet-cognito-suspension-lift-9in-arkon-off-road-roosevelt-custom.jpg', 320000.00, '156-800-123'),
(87, '2FMPK4K96MBA00012', 'Ford', 'Edge', 2021, 2500, '2.0L I4', 'Benzyna', 1, 'znośny', 'https://autogaleria.pl/img/1080/607/fit/content/uploads/2016/08/Ford_Edge_Titanium_01.jpg', 165000.00, '367-000-234'),
(88, '1C4PJMDX0KD100013', 'Jeep', 'Cherokee', 2021, 3500, '3.2L V6', 'Benzyna', 1, 'bardzo dobry', 'https://di-uploads-pod11.dealerinspire.com/stevelanderschryslerdodgejeepram/uploads/2020/11/ac2f8618aaf097ee3bb27f3aeac4fb3a-1024x768.jpg', 136000.00, '778-011-345'),
(89, '1FM5K8D89LGA00014', 'Ford', 'Explorer', 2021, 3000, '2.3L I4', 'Benzyna', 1, 'dobry', 'https://ireland.apollo.olxcdn.com/v1/files/eyJmbiI6IjNydHlzNnE3ZTc5MTEtT1RPTU9UT1BMIiwidyI6W3siZm4iOiJ3ZzRnbnFwNnkxZi1PVE9NT1RPUEwiLCJzIjoiMTYiLCJwIjoiMTAsLTEwIiwiYSI6IjAifV19.Fe_BQbkRdEgQEFRQ1ZHdDWIGltz-Jjfl7K4mBlr_EdU/image;s=5120x0;q=80', 230000.00, '634-677-910'),
(90, '1N6ED1EK1NN200015', 'Nissan', 'Frontier', 2022, 1500, '3.8L V6', 'Benzyna', 1, 'dobry', 'https://www.cnet.com/a/img/resize/3f48cdb55d14a7e0d8de2625528a44de3e51c158/hub/2021/08/05/0990b774-4d8d-4b53-b1ef-d1566f97b6ed/ogi1-2022-nissan-frontier-first-drive-007.jpg?auto=webp&fit=crop&height=900&width=1200', 260000.00, '445-790-012');

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
