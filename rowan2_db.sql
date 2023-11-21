-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 10:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rowan2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
('BcjKNX58e4x7bIqIvxG7', 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `log_message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `log_date`, `log_message`) VALUES
(1, '2023-11-16 08:05:29', 'Property status updated: Property ID 9nBy63Qye5kmeVObFxFc status changed from sold out to under construction'),
(2, '2023-11-16 08:05:29', 'Property status updated: Property ID wMKd6e3i8jS8UvjUE1N8 status changed from sold out to under construction'),
(3, '2023-11-16 08:05:29', 'Property status updated: Property ID i26OVbwAUZ5i1lBUjlVq status changed from sold out to under construction'),
(4, '2023-11-16 08:05:29', 'Property status updated: Property ID 1Ph8fG15vqfkVU4U9rjA status changed from sold out to under construction');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `property`
--

CREATE TABLE `property` (
  `id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `property_name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `price` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `offer` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL,
  `furnished` varchar(50) NOT NULL,
  `bhk` varchar(10) NOT NULL,
  `deposite` varchar(10) NOT NULL,
  `bedroom` varchar(10) NOT NULL,
  `bathroom` varchar(10) NOT NULL,
  `balcony` varchar(10) NOT NULL,
  `carpet` varchar(10) NOT NULL,
  `age` varchar(2) NOT NULL,
  `total_floors` varchar(2) NOT NULL,
  `room_floor` varchar(2) NOT NULL,
  `loan` varchar(50) NOT NULL,
  `lift` varchar(3) NOT NULL DEFAULT 'no',
  `security_guard` varchar(3) NOT NULL DEFAULT 'no',
  `play_ground` varchar(3) NOT NULL DEFAULT 'no',
  `garden` varchar(3) NOT NULL DEFAULT 'no',
  `water_supply` varchar(3) NOT NULL DEFAULT 'no',
  `power_backup` varchar(3) NOT NULL DEFAULT 'no',
  `parking_area` varchar(3) NOT NULL DEFAULT 'no',
  `gym` varchar(3) NOT NULL DEFAULT 'no',
  `shopping_mall` varchar(3) NOT NULL DEFAULT 'no',
  `hospital` varchar(3) NOT NULL DEFAULT 'no',
  `school` varchar(3) NOT NULL DEFAULT 'no',
  `market_area` varchar(3) NOT NULL DEFAULT 'no',
  `image_01` varchar(50) NOT NULL,
  `image_02` varchar(50) NOT NULL,
  `image_03` varchar(50) NOT NULL,
  `image_04` varchar(50) NOT NULL,
  `image_05` varchar(50) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `property_type` varchar(50) DEFAULT NULL,
  `community` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `property`
--

INSERT INTO `property` (`id`, `user_id`, `property_name`, `address`, `price`, `type`, `offer`, `status`, `furnished`, `bhk`, `deposite`, `bedroom`, `bathroom`, `balcony`, `carpet`, `age`, `total_floors`, `room_floor`, `loan`, `lift`, `security_guard`, `play_ground`, `garden`, `water_supply`, `power_backup`, `parking_area`, `gym`, `shopping_mall`, `hospital`, `school`, `market_area`, `image_01`, `image_02`, `image_03`, `image_04`, `image_05`, `description`, `date`, `property_type`, `community`) VALUES
('mQVKEe2RyY5bsZ6kEjJJ', 'u5Anvv4oJlz1nlD7SiMX', 'SRM University ', 'chennai', '500000', 'shop', 'resale', 'ready to move', 'furnished', '9', '1000', '9', '1', '9', '1435678908', '50', '15', '15', 'available', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'RMQho27TucXju9HkZwxX.jpeg', 'MwnM1rSl8zWCNNIJ6K4r.jpeg', 'EvdRGq2hGKt9iv685I5o.jpeg', '', '', 'SRM Institute of Science and Technology (SRMIST), formerly SRM University, is a private deemed university, located in Kattankulathur, Chengalpattu (near Chennai), Tamil Nadu, India. Founded in 1985 as SRM Engineering College in Kattankulathur, it gained the deemed status in 2002. SRM Institute of Science and Technology includes six campuses, four in Tamil Nadu — Kattankulathur, Ramapuram and Vadapalani, and Tiruchirappalli, one in Amaravati, Andhra Pradesh and one in NCR Delhi.', '2023-11-16', 'Duplex', 'yes'),
('9nBy63Qye5kmeVObFxFc', 'u5Anvv4oJlz1nlD7SiMX', 'villa', 'villa 74-75, avigna celeste, Mahindra World City, Chennai - Outer South, Tamil Nadu', '8000000', 'flat', 'sale', 'under construction', 'furnished', '4', '1000000', '4', '5', '2', '1655', '1', '3', '1', 'available', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'TPtf0K7Stoyy7k9l8bqN.jpeg', 'EXbkhTyEi1RzywYJEfpp.jpeg', 'yJ7fS6BXOc42FA4ADC9b.jpeg', '', '', 'Villa is available for sale. It covered area of 1665 sq-ft, it is a good location property. Please contact for more details.', '2023-11-16', 'Storey Building', 'yes'),
('pMPCyCTM2TFa1CX3FLwk', 'u5Anvv4oJlz1nlD7SiMX', 'Ocean Blue villa ', '1st Balaji Nagar alwarthirunagar, Alwartirunagar, Chennai - West, Tamil Nadu', '42000000', 'house', 'sale', 'ready to move', 'furnished', '3', '1000000', '2', '3', '1', '2250', '1', '2', '1', 'available', 'no', 'yes', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'zkPjMlwgRnb5I17crP6r.jpeg', '7GA40blYlh4rKwKkczyk.jpeg', 'mHwkOvohNsh4nslhxj0q.jpeg', '', '', 'Alwarthirunagar is an urban locality in the western part of Chennai. Ramakrishna Nagar, Velan Nagar, Palaniappa Nagar and Meenakshi Amman Nagar are some of the prominent residential neighborhoods of Alwarthirunagar. The locality majorly has low to mid rise apartments with some multi-storey apartment residential development. Alwarthirunagar is home to a number of residential properties, and some of them are Smart Homes Sri Sarvana, Jasmine Hariharan Flats, SPS Sri Sai Ram, Sri Lakshmi ram Sri Narayan and Lancor Kiruba Cirrus. Proximity to Grand Southern Trunk Road and IT hubs like Bascon IT Park are the key factors boosting the residential sector in Alwarthirunagar', '2023-11-16', 'Duplex', 'yes'),
('wiLbcAQjlafhUIYwmlgD', 'u5Anvv4oJlz1nlD7SiMX', 'Sunset View villa', 'Plot no 150, 6th street kuberan nagat extension madipakkam chennai., Madipakkam, Chennai - South, Ta', '12300000', 'flat', 'sale', 'ready to move', 'furnished', '3', '10000', '3', '3', '1', '1650', '1', '3', '2', 'available', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'aXX6kxAidgAdE9tdRzCK.jpeg', '9ILKXO0vWAJ1vF0F73k1.jpeg', 'gvi1D0gQo7LZs2oJ1oZI.jpeg', '', '', 'Experience the epitome of modern living in this 3 BHK villa nestled within the heart of Madipakkam, Chennai. With an enticing blend of contemporary design and convenient amenities, this under-construction property promises a lifestyle of comfort and elegance, and it&#39;s only two months away from possession and becoming your dream home.\r\n\r\nProperty Specifications\r\n\r\nSpread across a super built-up area of 1650 sqft and sitting on a spacious plot area of 1183 sqft, this unfurnished villa offers a canvas for you to paint your personal style upon. As you step inside, the ground floor greets you with a harmonious layout encompassing a cozy bedroom with an attached bathroom, an inviting dining room, a spacious hall, and a functional kitchen adorned with a granite platform, sink, and a piped gas connection.\r\n\r\nOn the first floor, you&#39;ll discover two more elegantly designed bedrooms, each boasting its attached bathroom for added privacy. The thoughtful inclusion of two dressing units adds', '2023-11-16', 'Duplex', 'no'),
('wMKd6e3i8jS8UvjUE1N8', 'u5Anvv4oJlz1nlD7SiMX', 'RAM villa ', 'Kachiguda, Hyderabad - Central, Andhra Pradesh', '18000', 'flat', 'sale', 'under construction', 'semi-furnished', '1', '120000', '3', '2', '1', '900', '4', '1', '4', 'available', 'yes', 'yes', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'no', 'lZEzMjh5cxnUkCuhn3pR.jpeg', '', '', '', '', 'Kachiguda is one of the oldest and prime residential neighborhoods in Hyderabad. Bhagyashree BN Joshi Apartments, Pulla Reddy Royal Apartments, Sri Rama Enclave are some of the apartment complexes in the locality. The locality is ... ', '2023-11-16', 'Duplex', 'yes'),
('iGm3EKjHGtCuMnXriivx', 'u5Anvv4oJlz1nlD7SiMX', 'Sea Breeze', ' Kachiguda, Hyderabad - Central, Andhra Pradesh', '18000', 'flat', 'rent', 'ready to move', 'furnished', '2', '120000', '1', '1', '1', '900', '6', '3', '2', 'not available', 'yes', 'yes', 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'IFT9QnelAyBNRMxuiG3I.jpeg', 'T6klzDAkkjSyx05JXirx.jpeg', 'nzZaegHE1gKe45eGZadM.jpeg', '', '', 'Kachiguda is one of the oldest and prime residential neighborhoods in Hyderabad. Bhagyashree BN Joshi Apartments, Pulla Reddy Royal Apartments, Sri Rama Enclave are some of the apartment complexes in the locali', '2023-11-16', 'Duplex', 'yes'),
('Ej4RSHgwJRMzedSkP97y', 'u5Anvv4oJlz1nlD7SiMX', 'Elm Villa', ' Flat no 101 1st floor residential apartment stand alone building Sujatha pride Rock Town colony Hyd', '13100000', 'flat', 'sale', 'ready to move', 'unfurnished', '3', '100000', '3', '4', '1', '1600', '1', '15', '2', 'available', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'no', 'omaYaTs5blziO8xriTMA.jpeg', 'dly1mvZG6U362GJx6WuZ.jpeg', 'GgGaVAMQethbOVAlMOG2.jpeg', '', '', 'Flat no 101 1st floor residential apartment stand alone building Sujatha pride Rock Town colony Hyderabad, Rock Town Colony, Hyderabad - East, Andhra Pradesh', '2023-11-16', 'Storey Building', 'no'),
('zefWerS0BVLPu1iZFPW6', 'u5Anvv4oJlz1nlD7SiMX', 'Lakeshore', 'F 301 Fortune Enclave, Banjara Hills, Hyderabad - North, Andhra Pradesh', '1300000', 'flat', 'sale', 'ready to move', 'unfurnished', '1', '100000', '3', '4', '2', '1600', '2', '2', '2', 'available', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'WcMaEECToJ8KIJ8Y4wIQ.jpeg', 'kit2rk6sh9Bk6wCJ2Al9.jpeg', 'tgmAD7kf96n9Gc3AYtMN.jpeg', '', '', 'Flat no 101 1st floor residential apartment stand alone building Sujatha pride Rock Town colony Hyderabad, Rock Town Colony, Hyderabad - East, Andhra Pradesh', '2023-11-16', 'Duplex', 'yes'),
('i26OVbwAUZ5i1lBUjlVq', 'u5Anvv4oJlz1nlD7SiMX', 'Office Space for Rent in Madhapur Hyderabad', 'ASR Colony, Bhimavaram, Andhra Pradesh', '16000', 'shop', 'rent', 'under construction', 'furnished', '1', '100000', '1', '1', '0', '11500', '10', '2', '2', 'available', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'yes', 'K2jGowaqUchu2qoLRBTn.jpeg', 'QhLaCkxZxBLHROW8lD8F.jpeg', '', '', '', 'Full building available for lease . Total available leasing space with 16000 sft', '2023-11-16', 'Storey Building', 'yes'),
('1Ph8fG15vqfkVU4U9rjA', 'u5Anvv4oJlz1nlD7SiMX', 'Sahara residency', 'H.no 5-78/6/1,sunitha villa,sri laxmi nagar colony ,jadcherala ,mahabubnagar', '87000', 'house', 'sale', 'under construction', 'furnished', '6', '10000', '6', '7', '2', '2600', '2', '2', '2', 'available', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '1hwzVbUbQ3uHBAfbWbsS.jpeg', 'tVl9ySVH02FnOV9FI2Cy.jpeg', 'FysNFjvG3fNcC3S4r4T0.jpeg', 'q9ZDkSGbLB26mO2r6hxR.jpeg', '', 'H.no 5-78/6/1,sunitha villa,sri laxmi nagar colony ,jadcherala ,mahabubnagar', '2023-11-16', 'Duplex', 'yes'),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '2023-11-16', NULL, NULL),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '2023-11-16', NULL, NULL),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '2023-11-16', NULL, NULL),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '2023-11-16', NULL, NULL),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '2023-11-16', NULL, NULL),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '2023-11-16', NULL, NULL),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '2023-11-16', NULL, NULL),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '2023-11-16', NULL, NULL),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '2023-11-16', NULL, NULL),
('', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', '', '', '', '', '', '', '2023-11-16', NULL, NULL);

--
-- Triggers `property`
--
DELIMITER $$
CREATE TRIGGER `property_sold_out_trigger` AFTER UPDATE ON `property` FOR EACH ROW BEGIN
    IF OLD.status = 'under construction' AND NEW.status = 'sold out' THEN
        -- Perform actions when a property is changed from 'under construction' to 'sold out'
        -- For example, you can insert details into a sold_properties table
        INSERT INTO sold_properties (property_id, sold_date, selling_price)
        VALUES (NEW.id, CURRENT_TIMESTAMP, NEW.price);
        -- Additional actions can be added here if needed
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `property_sold_trigger` AFTER UPDATE ON `property` FOR EACH ROW BEGIN
    IF OLD.status != 'under construction' AND NEW.status = 'sold out' THEN
        -- Perform actions when a property is sold
        -- For example, you can insert sold property details into a sold_properties table
        INSERT INTO sold_properties (property_id, sold_date, selling_price)
        VALUES (NEW.id, CURRENT_TIMESTAMP, NEW.price);
    END IF;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `property_status_update_trigger` AFTER UPDATE ON `property` FOR EACH ROW BEGIN
    IF OLD.status != NEW.status THEN
        INSERT INTO logs (log_date, log_message)
        VALUES (CURRENT_TIMESTAMP, CONCAT('Property status updated: Property ID ', NEW.id, ' status changed from ', OLD.status, ' to ', NEW.status));
    END IF;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `id` varchar(20) NOT NULL,
  `property_id` varchar(20) NOT NULL,
  `user_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `email`, `password`) VALUES
('u5Anvv4oJlz1nlD7SiMX', 'Undekoti Rowan Ronald', '9154365953', 'rowan2003urr@gmail.com', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
