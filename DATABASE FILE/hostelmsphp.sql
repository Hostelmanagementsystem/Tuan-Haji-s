-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2024 at 11:56 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelmsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@mail.com', 'D00F5D5217896FB7FD601412CB890830', '2024-06-30 20:00:00', '2024-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int NOT NULL,
  `adminid` int NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'AC110', 'D. Account', 'Diploma in Accountancy', '2024-06-20 00:00:00'),
(2, 'CS112', 'D. Actuarial Science', 'Diploma in Actuarial Science', '2024-06-20 00:00:00'),
(3, 'AD113', 'AD. Fine Metal', 'Diploma in Art and Design (Fine Metal Design)', '2024-06-20 00:00:00'),
(4, 'AD111', 'AD. Graphic & Digital', 'Diploma in Art and Design (Graphic Design and Digital Media)', '2024-06-20 00:00:00'),
(5, 'AD112', 'AD. Textile', 'Diploma in Art and Design (Textile Design)', '2024-06-20 00:15:00'),
(6, 'BA119', 'D. Banking', 'Diploma in Banking Studies', '2024-06-20 00:15:00'),
(7, 'BA111', 'D. Business', 'Diploma in Business Studies', '2024-06-20 00:15:00'),
(8, 'CS110', 'D. Computer Science', 'Diploma in Computer Science', '2024-06-20 00:15:00'),
(9, 'AD118', 'D. Fine Art', 'Diploma in Fine Art', '2024-06-20 00:15:00'),
(10, 'IM110', 'D. Information Management', 'Diploma in Information Management', '2024-06-25 07:15:25'),
(11, 'CS143', 'D. Mathematical Science', 'Diploma in Mathematical Science', '2024-06-25 07:15:25'),
(12, 'BA118', 'D. Office Tech Management', 'Diploma in Office Technology Management', '2024-06-25 07:15:25'),
(13, 'AM110', 'D. Public Administration', 'Diploma in Public Administration', '2024-06-25 07:15:25'),
(14, 'CS111', 'D. Statistic', 'Diploma in Statistic', '2024-06-25 07:15:25'),
(15, 'BA232', 'B. Office System Management', 'Bachelor in Office System Management', '2024-06-25 07:15:25'),
(16, 'AC220', 'B. Account', 'Bachelor of Accountancy', '2024-06-25 15:25:00'),
(17, 'BA250', 'BA. Business Economy', 'Bachelor of Business Administration (Hons.) Business Economy', '2024-06-25 15:25:00'),
(18, 'BA242', 'BA. Finance', 'Bachelor of Business Administration (Hons.) Finance', '2024-06-25 15:25:00'),
(19, 'BA240', 'BA. Marketing', 'Bachelor of Business Administration (Hons.) Marketing', '2024-06-25 15:25:00'),
(20, 'IM245', 'IM. System Management', 'Bachelor of Information Science (Hons.) Information System Management', '2024-06-25 15:25:00'),
(21, 'CS240', 'B. Information Tech', 'Bachelor of Information Technology (Hons.)', '2024-07-02 12:28:15'),
(22, 'CS241', 'B. Statistics', 'Bachelor of Science (Hons.) Statistics', '2024-07-02 12:28:15'),
(23, 'CS249', 'B. Mathematics', 'Bachelor of Science (Hons.) Mathematics', '2024-07-02 12:28:15'),
(24, 'AS290', 'B. Science Textile', 'Bachelor of Science Textile Design (Hons.)', '2024-07-02 12:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int NOT NULL,
  `roomno` int NOT NULL,
  `seater` int NOT NULL,
  `feespm` int NOT NULL,
  `foodstatus` int NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(1, 1, 3, 650, 1, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB001', 'Fasihah Hazirah', 'BT.', 'Abdul Halim', 'Female', 197182092, 'fasihahazirah@gmail.com', 174743001, 'Abdul Halim', 'Father', 139937001, 'Lot 1966, Kampung Pohon Kandis, Cabang Tiga', 'Kota Bharu', 'Kelantan', 15000, 'Lot 1966, Kampung Pohon Kandis, Cabang Tiga', 'Kota Bharu', 'Kelantan', 15000, '2024-07-11 17:06:43', ''),
(2, 1, 3, 650, 1, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB002', 'Nur Afiqah Syahira', 'BT.', 'Md Usoff', 'Female', 145153046, 'afiqahsyahira22@gmail.com', 174743002, 'Md Usoff', 'Father', 139937002, 'Lot 2639, Jalan Belakang Klinik, Kampung Gong Beting', 'Paka', 'Terengganu', 23100, 'Lot 2639, Jalan Belakang Klinik, Kampung Gong Beting', 'Paka', 'Terengganu', 23100, '2024-07-11 17:06:43', ''),
(3, 1, 3, 650, 1, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB003', 'Nursyafinaz', 'BT.', 'Mohd Fua\'at', 'Female', 144852652, 'finazfuaat@gmail.com', 174743003, 'Mohd Fua\'at', 'Father', 139937003, 'No.133, Kg Empa, Mukim Derang', 'Pokok Sena', 'Kedah', 6400, 'No.133, Kg Empa, Mukim Derang', 'Pokok Sena', 'Kedah', 6400, '2024-07-11 17:06:43', ''),
(4, 2, 2, 850, 1, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB004', 'Fatin Najihah', 'BT.', 'Zulkifli', 'Female', 143896343, 'fatinzul@gmail.com', 17443004, 'Zulkifli', 'Father', 139937004, 'No 3 Taman Camelia, Lorong Camelia 4', 'Jitra', 'Kedah', 6200, 'No 3 Taman Camelia, Lorong Camelia 4', 'Jitra', 'Kedah', 6200, '2024-07-11 17:06:43', ''),
(5, 2, 2, 850, 1, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB005', 'Nur Amalin Izzati', 'BT.', 'Muhammad Harisi', 'Female', 1117892142, 'amalinharisi@gmail.com', 174743005, 'Muhammad Harisi', 'Father', 139937005, 'No 45 Kampung Penyu, Manek Urai', 'Tanah Merah', 'Kelantan', 17500, 'No 45 Kampung Penyu, Manek Urai', 'Tanah Merah', 'Kelantan', 17500, '2024-07-11 17:06:43', ''),
(6, 3, 4, 550, 0, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB006', 'Marizzati', 'BT.', 'Mahadhir', 'Female', 142002489, 'marizzati00@gmail.com', 174743006, 'Mahadhir', 'Father', 139337006, 'Lot 10, Jalan Pusat Bandar', 'Bentong', 'Pahang', 28700, 'Lot 10, Jalan Pusat Bandar', 'Bentong', 'Pahang', 28700, '2024-07-14 17:06:43', ''),
(7, 3, 4, 550, 0, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB007', 'Nur Ain Najihah', 'BT.', 'Mohd Najib', 'Female', 11172432521, 'ainajihahmohdnajib@gmail.com', 174743007, 'Mohd Najib', 'Father', 139937007, 'Lot 22, Taman Kubang Kerian', 'Kubang Kerian', 'Kelantan', 16150, 'Lot 22, Taman Kubang Kerian', 'Kubang Kerian', 'Kelantan', 16150, '2024-07-14 17:06:43', ''),
(8, 3, 4, 550, 0, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB008', 'Nor Sazwani', 'BT.', 'Mustaffa', 'Female', 1122356142, 'sazwani01@gmail.com', 174743008, 'Mustaffa', 'Father', 139937008, 'No 96, Jalan Jerteh', 'Besut', 'Terengganu', 22200, 'No 96, Jalan Jerteh', 'Besut', 'Terengganu', 22200, '2024-07-14 17:06:43', ''),
(9, 3, 4, 550, 0, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB009', 'Noor Ellyana Fazlin', 'BT.', 'Abdul Rahman', 'Female', 1124429123, 'ellyanafazlin@gmail.com', 174743009, 'Abdul Rahman', 'Father', 139937009, 'No. 15, Jalan Chukai', 'Kemaman', 'Terengganu', 24000, 'No. 15, Jalan Chukai', 'Kemaman', 'Terengganu', 24000, '2024-07-14 17:06:43', ''),
(10, 4, 6, 700, 0, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB010', 'Fairuz Syairah', 'BT.', 'Abdul Karim', 'Female', 149846215, 'fairuzsyairah@gmail.com', 174743010, 'Abdul Karim', 'Father', 139937010, 'Jalan IM12/8, Taman Mahkota', 'Kuantan', 'Pahang', 25300, 'Jalan IM12/8, Taman Mahkota', 'Kuantan', 'Pahang', 25300, '2024-07-14 17:06:43', ''),
(11, 4, 6, 700, 1, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB011', 'Nuzul Hudda Najihah', 'BT.', 'Mesman', 'Female', 182492046, 'nuzulhuddamesman1@gmail.com', 174743011, 'Mesman', 'Father', 139937011, 'No 18A, Blok 12, Felda Bukit Damar', 'Lanchang, Temerloh', 'Pahang', 12400, 'No 18A, Blok 12, Felda Bukit Damar', 'Lanchang, Temerloh', 'Pahang', 12400, '2024-07-18 13:19:12', ''),
(12, 4, 6, 700, 1, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB012', 'Nur Fatihah', 'BT.', 'Johari', 'Female', 144120552, 'fatihahj@gmail.com', 174743012, 'Johari', 'Father', 139937012, 'No 34, Apartment Permata Bandar Perda', 'Bukit Mertajam', 'Penang', 14000, 'No 34, Apartment Permata Bandar Perda', 'Bukit Mertajam', 'Penang', 14000, '2024-07-18 13:24:21', ''),
(13, 4, 6, 700, 1, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB013', 'Nur Nasr Athirah', 'BT.', 'Mohd Nasron', 'Female', 177741122, 'nasrnasron@gmail.com', 174743013, 'Mohd Nasron', 'Father', 139937013, 'No 124, Lorong 4, Taman Kulim Square', 'Kulim', 'Kedah', 9600, 'No 124, Lorong 4, Taman Kulim Square', 'Kulim', 'Kedah', 9600, '2024-07-18 13:24:21', ''),
(14, 4, 6, 700, 1, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB014', 'Nur Ismahani Amira', 'BT.', 'Ismail', 'Female', 144886122, 'ismahanismail@gmail.com', 174743014, 'Ismail', 'Father', 139937014, 'No 8 Jalan Datuk Kumbar, Taman Sri Kumbar', 'Alor Setar', 'Kedah', 15300, 'No 8 Jalan Datuk Kumbar, Taman Sri Kumbar', 'Alor Setar', 'Kedah', 15300, '2024-07-18 13:35:04', ''),
(15, 4, 6, 700, 1, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB015', 'Nur Afiqah Najihah', 'BT.', 'Ibrahim', 'Female', 125772124, 'afiqahibrahim@gmail.com', 174743015, 'Ibrahim', 'Father', 139937015, 'No 14 Kampung Sura Tengah', 'Dungun', 'Terengganu', 23000, 'No 14 Kampung Sura Tengah', 'Dungun', 'Terengganu', 23000, '2024-07-18 13:39:35', ''),
(16, 3, 4, 550, 0, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB016', 'Ain', 'BT.', 'Asri', 'Female', 1125701338, 'ainasri@gmail.com', 174743015, 'Asri', 'Father', 139937015, 'No. 99, Taman Bukit Pelindung', 'Kuantan', 'Pahang', 25250, 'No. 99, Taman Bukit Pelindung', 'Kuantan', 'Pahang', 25250, '2024-07-21 13:39:35', ''),
(17, 3, 4, 550, 1, '2024-09-15', 6, 'Bachelor of Information Science (Hons.) Information System Management', 'HB017', 'Nur Alia', 'BT.', 'Budiman', 'Female', 144886126, 'aliabud1@gmail.com', 174743016, 'Budiman', 'Father', 139937016, 'Lot. 75, Jalan Tengku Mahkota', 'Temerloh', 'Pahang', 28000, 'Lot. 75, Jalan Tengku Mahkota', 'Temerloh', 'Pahang', 28000, '2024-07-21 13:48:01', ''),
(18, 1, 3, 650, 0, '2024-09-15', 6, 'Diploma in Banking Studies', 'HB018', 'Nurul Athirah', 'BT.', 'Ayub', 'Female', 105727673, 'athirahnurul@gmail.com', 174743018, 'Ayub', 'Father', 139937018, 'Lot. 76, Jalan Sultan Zainal Abidin', 'Kuala Terengganu', 'Terengganu', 20000, 'Lot. 76, Jalan Sultan Zainal Abidin', 'Kuala Terengganu', 'Terengganu', 20000, '2024-07-21 10:40:40', ''),
(19, 1, 3, 650, 0, '2024-09-15', 6, 'Diploma in Banking Studies', 'HB019', 'Nur Husnina', 'BT.', 'Zuraidee', 'Female', 132202943, 'husnina00@gmail.com', 174743019, 'Zuraidee', 'Father', 139937019, 'No. 7, Jalan Meranti', 'Pasir Mas', 'Kelantan', 17000, 'No. 7, Jalan Meranti', 'Pasir Mas', 'Kelantan', 17000, '2024-07-21 10:47:14', ''),
(20, 1, 3, 650, 0, '2024-09-15', 6, 'Diploma in Banking Studies', 'HB020', 'Siti Solehah ', 'BT.', 'Salleh', 'Female', 102467107, 'solehahsalleh@gmail.com', 174743020, 'Salleh', 'Father', 139937020, 'No. 19, Jalan Datuk Chong Thien Vun', 'Sandakan', 'Sabah', 9000, 'No. 19, Jalan Datuk Chong Thien Vun', 'Sandakan', 'Sabah', 9000, '2024-07-21 10:51:21', ''),
(21, 2, 2, 850, 1, '2024-09-15', 6, 'Diploma in Actuarial Science', 'HB021', 'Rabiatul Adawiyah', 'BT.', 'Muhammad Ali', 'Female', 179803010, 'adawiyahrabiatul@gmail.com', 174743021, 'Muhammad Ali', 'Father', 139937021, 'No. 12, Jalan Teluk Sisek', 'Kuantan', 'Pahang', 25050, 'No. 12, Jalan Teluk Sisek', 'Kuantan', 'Pahang', 25050, '2024-07-23 10:54:01', ''),
(22, 2, 2, 850, 1, '2024-09-15', 6, 'Diploma in Actuarial Science', 'HB022', 'Nurul Fatihah', 'BT.', 'Salim', 'Female', 123050221, 'fatihahsalim@gmail.com', 174743022, 'Salim', 'Father', 139937022, 'No. 34, Jalan Mentakab', 'Jerantut', 'Pahang', 27000, 'No. 34, Jalan Mentakab', 'Jerantut', 'Pahang', 27000, '2024-07-23 10:57:15', ''),
(23, 3, 4, 550, 1, '2024-09-15', 6, 'Bachelor of Accountancy', 'HB023', 'Nadiasyazwani', 'BT.', 'Muhammad Even', 'Female', 148352526, 'nadiasyazwanieven@gmail.com', 174743023, 'Muhammad Even', 'Father', 139937023, 'No. 60, Jalan Pasir Pekan', 'Pasir Mas', 'Kelantan', 17000, 'No. 60, Jalan Pasir Pekan', 'Pasir Mas', 'Kelantan', 17000, '2024-07-23 11:00:55', ''),
(24, 3, 4, 550, 1, '2024-09-15', 6, 'Bachelor of Accountancy', 'HB024', 'Intan Nur Nabila', 'BT.', 'Zainol', 'Female', 1123083498, 'bella98@gmail.com', 174743024, 'Zainol', 'Father', 139937023, 'No. 39, Jalan Kuala Tahan', 'Jerantut', 'Pahang', 27000, 'No. 39, Jalan Kuala Tahan', 'Jerantut', 'Pahang', 27000, '2024-07-23 11:03:49', ''),
(25, 3, 4, 550, 1, '2024-09-15', 6, 'Bachelor of Accountancy', 'HB025', 'Nur Naqiyah', 'BT.', 'Matsom', 'Female', 1121940208, 'naqiyahmatsom@gmail.com', 174743025, 'Matsom', 'Father', 139937025, 'No.91, Taman Segar', 'Segamat', 'Johor', 85000, 'No.91, Taman Segar', 'Segamat', 'Johor', 85000, '2024-07-23 11:06:50', ''),
(26, 3, 4, 550, 1, '2024-09-15', 6, 'Bachelor of Accountancy', 'HB026', 'Nur Ain', 'BT.', 'Zaki', 'Female', 1119426885, 'nurain@gmail.com', 174743026, 'Zaki', 'Father', 139937026, 'No.44, Jalan Sultan Ismail', 'Kuala Terengganu', 'Terengganu', 20300, 'No.44, Jalan Sultan Ismail', 'Kuala Terengganu', 'Terengganu', 20300, '2024-07-23 11:09:45', ''),
(27, 4, 6, 700, 0, '2024-09-15', 6, 'Bachelor of Business Administration (Hons.) Business Economy', 'HB027', 'Sharifah Nurul Nadiah', 'BT.', 'Syed Salim', 'Female', 193189665, 'shnadiah@gmail.com', 174743027, 'Syed Salim', 'Father', 139937027, '1/655, Lorong Alor Akar 67, Jalan Tengku Muhammad Off, Jalan Beserah', 'Kuantan', 'Pahang', 25300, '1/655, Lorong Alor Akar 67, Jalan Tengku Muhammad Off, Jalan Beserah', 'Kuantan', 'Pahang', 25300, '2024-07-25 11:12:29', ''),
(28, 4, 6, 700, 0, '2024-09-15', 6, 'Bachelor of Business Administration (Hons.) Finance', 'HB028', 'Sharifah Nurul Ain', 'BT.', 'Syed Salim', 'Female', 145190693, 'shain89@gmail.com', 174743028, 'Syed Salim', 'Father', 139937028, '1/655, Lorong Alor Akar 67, Jalan Tengku Muhammad Off, Jalan Beserah', 'Kuantan', 'Pahang', 25300, '1/655, Lorong Alor Akar 67, Jalan Tengku Muhammad Off, Jalan Beserah', 'Kuantan', 'Pahang', 25300, '2024-07-25 11:16:03', ''),
(29, 4, 6, 700, 1, '2024-09-15', 6, 'Bachelor of Business Administration (Hons.) Marketing', 'HB029', 'Sharifah Badariah', 'BT.', 'Syed Abdul Hamid', 'Female', 189864655, 'shbadariah@gmail.com', 174743029, 'Syed Abdul Hamid', 'Father', 139937029, '1/655, Lorong Alor Akar 67, Jalan Tengku Muhammad Off, Jalan Beserah', 'Kuantan', 'Pahang', 25300, '1/655, Lorong Alor Akar 67, Jalan Tengku Muhammad Off, Jalan Beserah', 'Kuantan', 'Pahang', 25300, '2024-07-25 11:18:36', ''),
(30, 4, 6, 700, 1, '2024-09-15', 6, 'Bachelor of Information Technology (Hons.)', 'HB030', 'Sharifah Hana Maisarah', 'BT.', 'Syed', 'Abdullah', 126127894, 'sharifahanamaisarah@gmail.com', 174743030, 'Syed Abdullah', 'Father', 139937030, '1/655, Lorong Alor Akar 67, Jalan Tengku Muhammad Off, Jalan Beserah', 'Kuantan', 'Pahang', 25300, '1/655, Lorong Alor Akar 67, Jalan Tengku Muhammad Off, Jalan Beserah', 'Kuantan', 'Pahang', 25300, '2024-07-25 11:23:39', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int NOT NULL,
  `seater` int NOT NULL,
  `room_no` int NOT NULL,
  `fees` int NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `seater`, `room_no`, `fees`, `posting_date`) VALUES
(1, 3, 1, 650, '2024-05-02 04:24:06'),
(2, 2, 2, 850, '2024-05-02 04:24:06'),
(3, 4, 3, 550, '2024-05-02 04:33:06'),
(4, 6, 4, 700, '2024-05-02 04:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Sabah'),
(2, 'Negeri Sembilan'),
(3, 'Sarawak'),
(4, 'Kelantan'),
(5, 'Kedah'),
(6, 'Terengganu'),
(7, 'Pahang'),
(8, 'Johor'),
(9, 'Perak'),
(10, 'Selangor'),
(11, 'Melaka'),
(12, 'Penang'),
(13, 'Perlis');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int NOT NULL,
  `userId` int NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(1, 1, 'fasihahazirah@gmail.com', 0x3a3a31, '', '', '2024-07-12 04:12:00'),
(2, 2, 'afiqahsyahira22@gmail.com', 0x3a3a31, '', '', '2024-07-12 04:12:00'),
(3, 3, 'finazfuaat@gmail.com', 0x3a3a31, '', '', '2024-07-12 04:12:00'),
(4, 4, 'fatinzul@gmail.com', 0x3a3a31, '', '', '2024-07-12 04:12:00'),
(5, 5, 'amalinharisi@gmail.com', 0x3a3a31, '', '', '2024-07-12 04:12:00'),
(6, 6, 'marizzati00@gmail.com', 0x3a3a31, '', '', '2024-07-15 02:43:01'),
(7, 7, 'ainajihahmohdnajib@gmail.com', 0x3a3a31, '', '', '2024-07-15 02:43:01'),
(8, 8, 'sazwani01@gmail.com', 0x3a3a31, '', '', '2024-07-15 02:43:01'),
(9, 9, 'ellyanafazlin@gmail.com', 0x3a3a31, '', '', '2024-07-15 02:43:01'),
(10, 10, 'fairuzsyairah@gmail.com', 0x3a3a31, '', '', '2024-07-15 02:43:01'),
(11, 11, 'nuzulhuddamesman1@gmail.com', 0x3a3a31, '', '', '2024-07-18 15:31:50'),
(12, 12, 'fatihahj@gmail.com', 0x3a3a31, '', '', '2024-07-18 15:31:50'),
(13, 13, 'nasrnasron@gmail.com', 0x3a3a31, '', '', '2024-07-18 15:31:50'),
(14, 14, 'ismahanismail@gmail.com', 0x3a3a31, '', '', '2024-07-18 15:31:50'),
(15, 15, 'afiqahibrahim@gmail.com', 0x3a3a31, '', '', '2024-07-18 15:31:50'),
(16, 16, 'ainasri@gmail.com', 0x3a3a31, '', '', '2024-07-21 14:34:17'),
(17, 17, 'aliabud1@gmail.com', 0x3a3a31, '', '', '2024-07-21 14:34:17'),
(18, 18, 'athirahnurul@gmail.com', 0x3a3a31, '', '', '2024-07-21 14:34:17'),
(19, 19, 'husnina00@gmail.com', 0x3a3a31, '', '', '2024-07-21 14:34:17'),
(20, 20, 'solehahsalleh@gmail.com', 0x3a3a31, '', '', '2024-07-21 14:34:17'),
(21, 21, 'adawiyahrabiatul@gmail.com', 0x3a3a31, '', '', '2024-07-23 09:57:50'),
(22, 22, 'fatihahsalim@gmail.com', 0x3a3a31, '', '', '2024-07-23 09:57:50'),
(23, 23, 'nadiasyazwanieven@gmail.com', 0x3a3a31, '', '', '2024-07-23 09:57:50'),
(24, 24, 'bella98@gmail.com', 0x3a3a31, '', '', '2024-07-23 09:57:50'),
(25, 25, 'naqiyahmatsom@gmail.com', 0x3a3a31, '', '', '2024-07-23 09:57:50'),
(26, 26, 'nurain@gmail.com', 0x3a3a31, '', '', '2024-07-25 09:57:50'),
(27, 27, 'shnadiah@gmail.com', 0x3a3a31, '', '', '2024-07-25 09:57:50'),
(28, 28, 'shain89@gmail.com', 0x3a3a31, '', '', '2024-07-25 09:57:50'),
(29, 29, 'shbadariah@gmail.com', 0x3a3a31, '', '', '2024-07-25 09:57:50'),
(30, 30, 'sharifahanamaisarah@gmail.com', 0x3a3a31, '', '', '2024-07-25 09:57:50');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(1, 'HB001', 'Fasihah Hazirah', 'BT.', 'Abdul Halim', 'Female', 197182092, 'fasihahazirah@gmail.com', 'ABHB001', '2024-07-12 04:21:33', '', ''),
(2, 'HB002', 'Nur Afiqah Syahira', 'BT.', 'Md Usoff', 'Female', 145153046, 'afiqahsyahira22@gmail.com', 'ABHB002', '2024-07-12 04:21:33', '', ''),
(3, 'HB003', 'Nursyafinaz', 'BT.', 'Mohd Fua\'at', 'Female', 144852652, 'finazfuaat@gmail.com', 'ABHB003', '2024-07-12 04:21:33', '', ''),
(4, 'HB004', 'Fatin Najihah', 'BT.', 'Zulkifli', 'Female', 143896343, 'fatinzul@gmail.com', 'ABHB004', '2024-07-12 04:21:33', '', ''),
(5, 'HB005', 'Nur Amalin Izzati', 'BT.', 'Muhammad Harisi', 'Female', 1117892142, 'amalinharisi@gmail.com', 'ABHB005', '2024-07-12 04:21:33', '', ''),
(6, 'HB006', 'Marizzati', 'BT.', 'Mahadhir', 'Female', 142002489, 'marizzati00@gmail.com', 'CDHB006', '2024-07-15 14:31:50', '', ''),
(7, 'HB007', 'Nur Ain Najihah', 'BT.', 'Mohd Najib', 'Female', 11172432521, 'ainajihahmohdnajib@gmail.com', 'CDHB007', '2024-07-15 14:31:50', '', ''),
(8, 'HB008', 'Nor Sazwani', 'BT.', 'Mustaffa', 'Female', 1122356142, 'sazwani01@gmail.com', 'CDHB008', '2024-07-15 14:31:50', '', ''),
(9, 'HB009', 'Noor Ellyana Fazlin', 'BT.', 'Abdul Rahman', 'Female', 1124429123, 'ellyanafazlin@gmail.com', 'CDHB009', '2024-07-15 14:31:50', '', ''),
(10, 'HB010', 'Fairuz Syairah', 'BT.', 'Abdul Karim', 'Female', 149846215, 'fairuzsyairah@gmail.com', 'CDHB010', '2024-07-15 14:31:50', '', ''),
(11, 'HB011', 'Nuzul Hudda Najihah', 'BT.', 'Mesman', 'Female', 182492046, 'nuzulhuddamesman1@gmail.com', 'EFHB011', '2024-07-18 14:54:44', '', ''),
(12, 'HB012', 'Nur Fatihah', 'BT.', 'Johari', 'Female', 144120552, 'fatihahj@gmail.com', 'EFHB012', '2024-07-18 14:54:44', '', ''),
(13, 'HB013', 'Nur Nasr Athirah', 'BT.', 'Mohd Nasron', 'Female', 177741122, 'nasrnasron@gmail.com', 'EFHB013', '2024-07-18 14:54:44', '', ''),
(14, 'HB014', 'Nur Ismahani Amira', 'BT.', 'Ismail', 'Female', 144886122, 'ismahanismail@gmail.com', 'EFHB014', '2024-07-18 14:54:44', '', ''),
(15, 'HB015', 'Nur Afiqah Najihah', 'BT.', 'Ibrahim', 'Female', 125772124, 'afiqahibrahim@gmail.com', 'EFHB015', '2024-07-18 14:54:44', '', ''),
(16, 'HB016', 'Ain', 'BT.', 'Asri', 'Female', 1125701338, 'ainasri@gmail.com', 'GHHB016', '2024-07-21 09:04:03', '', ''),
(17, 'HB017', 'Nur Alia', 'BT.', 'Budiman', 'Female', 1153514707, 'aliabud1@gmail.com', 'GHHB017', '2024-07-21 09:11:28', '', ''),
(18, 'HB018', 'Nurul Athirah', 'BT.', 'Ayub', 'Female', 105727673, 'athirahnurul@gmail.com', 'GHHB018', '2024-07-21 09:11:28', '', ''),
(19, 'HB019', 'Nur Husnina', 'BT.', 'Zuraidee', 'Female', 132202943, 'husnina00@gmail.com', 'GHHB019', '2024-07-21 09:11:28', '', ''),
(20, 'HB020', 'Siti Solehah', 'BT.', 'Salleh', 'Female', 102467107, 'solehahsalleh@gmail.com', 'GHHB020', '2024-07-21 09:11:28', '', ''),
(21, 'HB021', 'Rabiatul Adawiyah', 'BT.', 'Muhammad Ali', 'Female', 179803010, 'adawiyahrabiatul@gmail.com', 'IJHB021', '2024-07-23 09:11:28', '', ''),
(22, 'HB022', 'Nurul Fatihah', 'BT.', 'Salim', 'Female', 123050221, 'fatihahsalim@gmail.com', 'IJHB022', '2024-07-23 09:11:28', '', ''),
(23, 'HB023', 'Nadiasyazwani', 'BT.', 'Muhammad Even', 'Female', 148352526, 'nadiasyazwanieven@gmail.com', 'IJHB023', '2024-07-23 09:11:28', '', ''),
(24, 'HB024', 'Intan Nur Nabila', 'BT.', 'Zainol', 'Female', 1123083498, 'bella98@gmail.com', 'IJHB024', '2024-07-23 09:11:28', '', ''),
(25, 'HB025', 'Nur Naqiyah', 'BT.', 'Matsom', 'Female', 1121940208, 'naqiyahmatsom@gmail.com', 'IJHB025', '2024-07-23 09:11:28', '', ''),
(26, 'HB026', 'Nur Ain', 'BT.', 'Zaki', 'Female', 1119426885, 'nurain@gmail.com', 'KLHB026', '2024-07-25 09:11:28', '', ''),
(27, 'HB027', 'Sharifah Nurul Nadiah', 'BT.', 'Syed Salim', 'Female', 193189665, 'shnadiah@gmail.com', 'KLHB027', '2024-07-25 09:11:28', '', ''),
(28, 'HB028', 'Sharifah Nurul Ain', 'BT.', 'Syed Salim', 'Female', 145190693, 'shain89@gmail.com', 'KLHB028', '2024-07-25 09:11:28', '', ''),
(29, 'HB029', 'Sharifah Badariah', 'BT.', 'Syed Abdul Hamid', 'Female', 189864655, 'shbadariah@gmail.com', 'KLHB029', '2024-07-25 09:11:28', '', ''),
(30, 'HB030', 'Sharifah Hana Maisarah', 'BT.', 'Syed Abdullah', 'Female', 126127894, 'sharifahanamaisarah@gmail.com', 'KLHB030', '2024-07-25 09:11:28', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
