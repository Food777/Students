-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 06, 2026 at 03:15 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `id_siswa` varchar(20) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `id_siswa`, `kelas`, `nama`, `tanggal_lahir`, `alamat`, `active`, `tanggal_mulai`, `tanggal_selesai`) VALUES
(1, 'SWS001', '11A', 'Najam Jaya Saragih', '1996-11-08', 'Jr. Imam No. 921', 1, '2025-08-10', '2025-09-18'),
(2, 'SWS002', '12B', 'Ismail Samosir', '1999-09-12', 'Psr. Suharso No. 903', 0, '2023-02-09', '2023-05-17'),
(3, 'SWS003', '7A', 'Sakti Tedi Hutasoit', '1984-08-12', 'Psr. Madiun No. 147', 0, '2023-10-13', '2026-11-15'),
(4, 'SWS004', '8B', 'Ayu Winarsih', '1979-06-21', 'Jr. Hang No. 259', 1, '2023-08-03', '2025-08-10'),
(5, 'SWS005', '12A', 'Darmana Purwadi Prabowo S.Ked', '1991-04-22', 'Ki. Ki Hajar Dewantara No. 454', 0, '2024-10-13', '2024-11-11'),
(6, 'SWS006', '7B', 'Gaman Irawan', '2005-06-26', 'Jr. Industri No. 254', 1, '2023-12-02', '2026-06-01'),
(7, 'SWS007', '11A', 'Ridwan Jarwadi Utama S.Kom', '1990-05-20', 'Ki. Jaksa No. 910', 1, '2024-07-26', '2026-03-24'),
(8, 'SWS008', '11B', 'Kala Embuh Winarno', '2004-11-27', 'Psr. Adisumarmo No. 553', 0, '2023-04-28', '2025-07-12'),
(9, 'SWS009', '9B', 'Gaman Hutasoit', '1982-04-18', 'Ds. Bass No. 660', 1, '2023-01-26', '2024-10-27'),
(10, 'SWS010', '11A', 'Laksana Raden Hardiansyah', '2006-06-27', 'Kpg. Yap Tjwan Bing No. 361', 1, '2025-12-02', '2026-08-26'),
(11, 'SWS011', '9B', 'Daru Warsa Hakim S.H.', '1971-03-30', 'Kpg. Barasak No. 398', 1, '2025-08-01', '2026-08-25'),
(12, 'SWS012', '11B', 'Ghaliyati Gabriella Puspita S.H.', '1971-02-05', 'Gg. Baabur Royan No. 380', 1, '2025-05-28', '2025-12-31'),
(13, 'SWS013', '9A', 'Puspa Padma Suryatmi S.Gz', '1988-08-04', 'Gg. Lembong No. 789', 0, '2025-06-09', '2026-09-04'),
(14, 'SWS014', '7B', 'Qori Handayani', '1973-08-30', 'Ki. Pasir Koja No. 196', 0, '2024-10-25', '2025-12-16'),
(15, 'SWS015', '7B', 'Diah Hasanah', '1985-05-18', 'Jln. Babadak No. 795', 1, '2024-12-13', '2025-02-22'),
(16, 'SWS016', '11B', 'Salwa Yolanda', '1992-05-28', 'Gg. Kusmanto No. 582', 0, '2024-04-19', '2024-05-19'),
(17, 'SWS017', '11A', 'Gada Ganjaran Permadi M.M.', '1986-03-27', 'Gg. Pasir Koja No. 677', 0, '2023-03-05', '2025-06-11'),
(18, 'SWS018', '11A', 'Syahrini Wijayanti', '1986-12-31', 'Dk. Ketandan No. 572', 0, '2024-02-11', '2024-09-02'),
(19, 'SWS019', '11A', 'Putri Maria Nurdiyanti M.Farm', '1975-04-01', 'Ki. Sentot Alibasa No. 677', 1, '2023-03-22', '2024-10-03'),
(20, 'SWS020', '12B', 'Zaenab Diana Handayani', '2004-07-04', 'Dk. Cemara No. 364', 1, '2024-07-09', '2026-08-16'),
(21, 'SWS021', '12B', 'Parman Prakasa', '2002-12-21', 'Ds. Diponegoro No. 865', 1, '2024-08-05', '2025-03-21'),
(22, 'SWS022', '9B', 'Warsita Pradipta S.Sos', '1972-05-20', 'Ki. Abdul Rahmat No. 550', 1, '2024-07-01', '2026-06-27'),
(23, 'SWS023', '8B', 'Ulva Rika Laksmiwati S.E.', '2003-10-15', 'Ki. Bakin No. 262', 1, '2023-04-11', '2024-07-29'),
(24, 'SWS024', '8A', 'Harimurti Nasim Winarno S.T.', '1985-11-02', 'Jln. BKR No. 184', 0, '2025-09-04', '2026-06-07'),
(25, 'SWS025', '8A', 'Titi Yulianti', '1994-11-07', 'Gg. Sentot Alibasa No. 596', 1, '2024-05-11', '2026-10-30'),
(26, 'SWS026', '7A', 'Margana Januar', '1980-07-01', 'Ds. Nakula No. 541', 0, '2023-03-26', '2026-07-09'),
(27, 'SWS027', '7A', 'Salimah Andriani M.M.', '1982-09-03', 'Jr. Salam No. 182', 0, '2025-06-30', '2026-09-19'),
(28, 'SWS028', '7B', 'Ella Agustina S.Sos', '1973-02-15', 'Ki. Badak No. 726', 0, '2024-03-01', '2024-10-05'),
(29, 'SWS029', '8A', 'Yulia Vivi Yuniar M.M.', '1987-12-31', 'Jln. Thamrin No. 128', 0, '2023-12-21', '2025-08-11'),
(30, 'SWS030', '11A', 'Ajiono Kunthara Tamba S.Psi', '1997-06-01', 'Ki. Antapani Lama No. 822', 1, '2025-05-12', '2025-11-14'),
(31, 'SWS031', '11A', 'Tania Pratiwi', '1972-06-07', 'Kpg. Balikpapan No. 989', 0, '2024-11-24', '2025-12-08'),
(32, 'SWS032', '7A', 'Puspa Zamira Hasanah M.Pd', '1987-12-31', 'Ki. Abdul No. 286', 0, '2024-12-14', '2025-12-20'),
(33, 'SWS033', '10A', 'Rosman Tugiman Lazuardi S.Sos', '1979-03-02', 'Gg. Ters. Kiaracondong No. 74', 1, '2025-08-14', '2026-08-11'),
(34, 'SWS034', '10A', 'Ian Salahudin', '2001-06-25', 'Jr. Basoka Raya No. 969', 1, '2023-11-17', '2025-04-10'),
(35, 'SWS035', '8A', 'Gamani Hardiansyah S.T.', '1989-10-26', 'Gg. Elang No. 766', 0, '2025-12-30', '2026-08-09'),
(36, 'SWS036', '12A', 'Hendri Tamba', '1977-02-21', 'Kpg. Setia Budi No. 865', 0, '2025-06-06', '2025-10-07'),
(37, 'SWS037', '12B', 'Uli Uyainah', '1976-10-29', 'Ki. Nakula No. 597', 1, '2024-08-22', '2025-07-05'),
(38, 'SWS038', '8A', 'Shania Nabila Mandasari S.Farm', '1972-04-16', 'Psr. W.R. Supratman No. 936', 1, '2025-04-07', '2026-09-06'),
(39, 'SWS039', '8A', 'Zaenab Lestari', '2004-07-02', 'Ds. Badak No. 751', 0, '2024-01-12', '2025-01-01'),
(40, 'SWS040', '7A', 'Mala Winarsih', '1971-01-26', 'Kpg. Babadak No. 201', 0, '2024-12-21', '2026-05-12'),
(41, 'SWS041', '10A', 'Bagas Simanjuntak', '1997-04-04', 'Ds. Gading No. 937', 0, '2024-02-17', '2026-01-14'),
(42, 'SWS042', '8B', 'Luwes Suwarno', '1994-04-13', 'Kpg. Monginsidi No. 300', 1, '2023-01-11', '2025-04-11'),
(43, 'SWS043', '12A', 'Karma Kurniawan', '1984-11-23', 'Jln. Pasirkoja No. 894', 0, '2024-07-14', '2025-05-11'),
(44, 'SWS044', '10A', 'Vera Halimah S.T.', '1991-06-08', 'Gg. Bata Putih No. 902', 0, '2025-01-11', '2025-08-31'),
(45, 'SWS045', '9B', 'Sadina Mardhiyah', '1993-05-04', 'Jr. Pattimura No. 711', 1, '2023-10-05', '2025-10-27'),
(46, 'SWS046', '10B', 'Cemeti Adriansyah', '1986-10-23', 'Ds. Sunaryo No. 197', 1, '2024-07-31', '2025-05-09'),
(47, 'SWS047', '12A', 'Rachel Hastuti S.Kom', '1985-03-13', 'Jr. Hasanuddin No. 648', 1, '2023-06-29', '2026-05-08'),
(48, 'SWS048', '8B', 'Agnes Mayasari', '1978-07-23', 'Ki. Barasak No. 502', 0, '2024-06-19', '2026-08-01'),
(49, 'SWS049', '11A', 'Zelda Suryatmi M.M.', '1996-11-11', 'Ki. HOS. Cjokroaminoto (Pasirkaliki) No. 414', 1, '2023-04-09', '2023-11-16'),
(50, 'SWS050', '8B', 'Daliman Wawan Sihombing S.Gz', '1990-06-12', 'Gg. Basoka Raya No. 803', 0, '2024-11-24', '2025-06-25'),
(51, 'SWS051', '9A', 'Catur Wibowo', '1984-09-11', 'Kpg. Setiabudhi No. 194', 1, '2024-03-21', '2025-03-08'),
(52, 'SWS052', '8A', 'Farhunnisa Sudiati', '2001-12-12', 'Gg. Warga No. 901', 0, '2024-02-06', '2024-10-10'),
(53, 'SWS053', '11A', 'Dalima Permata S.Pd', '2001-09-09', 'Gg. Sentot Alibasa No. 317', 1, '2024-01-29', '2025-11-04'),
(54, 'SWS054', '7A', 'Hasna Oktaviani', '1995-08-17', 'Kpg. Bagis Utama No. 115', 1, '2023-05-15', '2026-05-29'),
(55, 'SWS055', '12B', 'Elvina Halimah', '1970-04-01', 'Ds. Suryo No. 960', 0, '2024-11-08', '2025-09-06'),
(56, 'SWS056', '11A', 'Kunthara Latupono', '2006-03-09', 'Dk. Peta No. 220', 0, '2025-03-28', '2025-05-28'),
(57, 'SWS057', '10A', 'Vinsen Kasusra Jailani', '1978-12-15', 'Gg. Kali No. 808', 0, '2024-01-12', '2024-11-20'),
(58, 'SWS058', '10B', 'Praba Pradipta', '1998-04-20', 'Ki. Flora No. 40', 1, '2023-05-03', '2025-12-20'),
(59, 'SWS059', '7A', 'Wira Manullang S.Sos', '1973-04-23', 'Ds. Babakan No. 775', 1, '2023-03-04', '2023-08-20'),
(60, 'SWS060', '12A', 'Gasti Astuti', '2003-11-27', 'Kpg. Bawal No. 117', 1, '2023-05-07', '2023-07-24'),
(61, 'SWS061', '10B', 'Zaenab Jane Nasyidah', '1970-09-20', 'Psr. Baan No. 175', 1, '2025-06-14', '2026-11-11'),
(62, 'SWS062', '12B', 'Ivan Lantar Dabukke', '1999-07-08', 'Ds. Sugiyopranoto No. 247', 1, '2023-05-25', '2025-02-27'),
(63, 'SWS063', '9A', 'Bakidin Hutapea', '1977-12-23', 'Ki. Sutoyo No. 305', 0, '2023-03-05', '2023-09-26'),
(64, 'SWS064', '10A', 'Yono Hutagalung', '1971-06-25', 'Ki. Setia Budi No. 78', 1, '2025-09-11', '2026-07-11'),
(65, 'SWS065', '9B', 'Halim Sihombing', '1991-09-12', 'Gg. Pelajar Pejuang 45 No. 671', 0, '2025-02-20', '2025-09-27'),
(66, 'SWS066', '10A', 'Halima Rahayu Melani', '1988-08-10', 'Gg. Achmad Yani No. 528', 1, '2025-03-17', '2026-03-23'),
(67, 'SWS067', '11A', 'Irma Safitri', '2004-02-12', 'Jr. Salak No. 157', 0, '2024-02-12', '2026-05-14'),
(68, 'SWS068', '10A', 'Jayeng Saragih M.Farm', '2004-11-28', 'Kpg. Batako No. 36', 0, '2023-02-12', '2023-07-31'),
(69, 'SWS069', '11B', 'Yuliana Genta Safitri', '1987-09-09', 'Kpg. Kali No. 390', 0, '2024-09-04', '2025-11-05'),
(70, 'SWS070', '10A', 'Ellis Yessi Fujiati', '1980-08-13', 'Ki. Pattimura No. 997', 1, '2025-06-28', '2026-09-17'),
(71, 'SWS071', '9B', 'Puti Yance Laksmiwati', '1982-12-08', 'Ki. Jagakarsa No. 787', 0, '2024-03-21', '2025-10-28'),
(72, 'SWS072', '8B', 'Dodo Maheswara', '1998-06-08', 'Jln. Abdul Muis No. 8', 0, '2024-01-20', '2025-12-08'),
(73, 'SWS073', '9A', 'Kenari Tomi Mahendra S.H.', '2007-07-07', 'Psr. Gading No. 661', 0, '2023-12-29', '2025-05-22'),
(74, 'SWS074', '8A', 'Rafi Setya Sihombing S.Farm', '1980-06-17', 'Jln. Raya Ujungberung No. 732', 0, '2025-12-11', '2026-10-15'),
(75, 'SWS075', '9A', 'Harsanto Firmansyah', '1984-03-25', 'Dk. Baung No. 352', 1, '2024-11-16', '2027-01-01'),
(76, 'SWS076', '12A', 'Elma Hartati', '1998-09-04', 'Jr. Krakatau No. 150', 1, '2025-04-08', '2025-05-03'),
(77, 'SWS077', '12A', 'Shakila Hariyah', '1988-10-31', 'Jln. Jamika No. 948', 1, '2024-12-08', '2025-07-13'),
(78, 'SWS078', '7B', 'Uda Pradipta', '1983-01-25', 'Ds. K.H. Maskur No. 983', 0, '2023-08-11', '2026-04-10'),
(79, 'SWS079', '8B', 'Rahman Setiawan', '1976-01-24', 'Ds. Bank Dagang Negara No. 425', 1, '2024-01-22', '2025-01-07'),
(80, 'SWS080', '11A', 'Tri Kurniawan', '1997-04-09', 'Ds. Basoka No. 202', 0, '2023-08-15', '2024-08-07'),
(81, 'SWS081', '8A', 'Raden Maulana S.T.', '1999-09-11', 'Jr. Baan No. 56', 0, '2023-03-01', '2023-05-22'),
(82, 'SWS082', '8A', 'Ratih Wulan Kuswandari', '2004-04-23', 'Jr. Yohanes No. 748', 0, '2023-12-14', '2026-11-13'),
(83, 'SWS083', '11A', 'Ani Mulyani', '1993-05-03', 'Jln. Orang No. 862', 1, '2024-07-05', '2025-03-28'),
(84, 'SWS084', '10B', 'Adinata Prayoga', '1989-04-01', 'Ki. Bacang No. 142', 1, '2025-10-05', '2025-11-25'),
(85, 'SWS085', '10A', 'Soleh Zulkarnain', '1970-01-15', 'Gg. Nanas No. 212', 1, '2024-07-09', '2026-12-25'),
(86, 'SWS086', '8A', 'Jaya Jarwa Sihotang S.Sos', '2007-05-14', 'Dk. Bata Putih No. 964', 1, '2023-09-09', '2026-09-26'),
(87, 'SWS087', '11B', 'Diah Usamah', '2002-06-19', 'Psr. Baing No. 268', 0, '2023-01-24', '2023-08-16'),
(88, 'SWS088', '9B', 'Cakrabuana Saptono', '1979-07-13', 'Gg. Suryo Pranoto No. 748', 1, '2023-08-05', '2024-03-17'),
(89, 'SWS089', '9A', 'Prabawa Prakasa', '1984-12-14', 'Jr. Industri No. 815', 1, '2023-05-27', '2024-09-15'),
(90, 'SWS090', '8A', 'Najib Tampubolon', '1987-07-03', 'Kpg. Casablanca No. 449', 1, '2025-10-15', '2026-05-06'),
(91, 'SWS091', '7A', 'Rachel Suryatmi', '1970-07-09', 'Kpg. Juanda No. 603', 1, '2024-05-12', '2025-08-16'),
(92, 'SWS092', '9A', 'Maya Utami', '1990-09-14', 'Ki. Elang No. 129', 0, '2026-01-05', '2026-04-21'),
(93, 'SWS093', '8A', 'Ciaobella Aurora Agustina S.E.I', '1983-10-17', 'Ki. Dahlia No. 921', 0, '2023-12-29', '2024-02-28'),
(94, 'SWS094', '10B', 'Gambira Daliman Prayoga', '2001-04-29', 'Dk. Sunaryo No. 801', 1, '2024-01-13', '2025-01-19'),
(95, 'SWS095', '10B', 'Natalia Sudiati', '2000-03-10', 'Dk. Nanas No. 561', 1, '2024-08-26', '2025-11-11'),
(96, 'SWS096', '10B', 'Irwan Kuswoyo', '2000-09-07', 'Jln. Reksoninten No. 156', 1, '2024-08-13', '2025-04-21'),
(97, 'SWS097', '12B', 'Maria Mardhiyah', '1970-03-05', 'Ki. Wahidin Sudirohusodo No. 255', 1, '2023-03-16', '2024-11-06'),
(98, 'SWS098', '8B', 'Farah Siska Suryatmi', '1978-07-16', 'Ds. Antapani Lama No. 563', 1, '2023-05-17', '2026-09-13'),
(99, 'SWS099', '12A', 'Banawa Maheswara', '2007-06-30', 'Ki. Bayam No. 960', 0, '2024-06-17', '2026-03-03'),
(100, 'SWS100', '7B', 'Kacung Winarno', '1982-09-20', 'Psr. Jayawijaya No. 845', 0, '2025-10-25', '2026-05-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
