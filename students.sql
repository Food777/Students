-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 03, 2026 at 03:10 AM
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
  `alamat` varchar(50) DEFAULT NULL,
  `active` tinyint(1) DEFAULT 0,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `id_siswa`, `kelas`, `nama`, `tanggal_lahir`, `alamat`, `active`, `tanggal_mulai`, `tanggal_selesai`) VALUES
(1, 'SWS001', '7A', 'Andi Pratama', '2010-04-12', 'Jl. Melati No. 14, RT 02/05', 1, '2024-01-01', '2024-01-31'),
(2, 'SWS002', '7B', 'Budi Santoso', '2010-06-22', 'Jl. Kenanga No. 88, RT 04/06', 1, '2024-01-02', '2024-02-01'),
(3, 'SWS003', '8A', 'Citra Lestari', '2009-02-14', 'Jl. Mawar No. 7, RT 01/04', 1, '2024-01-03', '2024-02-02'),
(4, 'SWS004', '8B', 'Dewi Anggraini', '2009-09-21', 'Jl. Anggrek No. 20, RT 03/02', 1, '2024-01-04', '2024-02-03'),
(5, 'SWS005', '9A', 'Eko Yulianto', '2008-07-19', 'Jl. Dahlia No. 5, RT 05/09', 1, '2024-01-05', '2024-02-04'),
(6, 'SWS006', '7A', 'Fajar Nugroho', '2010-05-05', 'Jl. Cempaka No. 31, RT 02/07', 1, '2024-01-06', '2024-02-05'),
(7, 'SWS007', '7B', 'Gita Melani', '2010-03-03', 'Jl. Teratai No. 9, RT 03/03', 1, '2024-01-07', '2024-02-06'),
(8, 'SWS008', '8A', 'Hendra Wijaya', '2009-07-11', 'Jl. Anyelir No. 42, RT 01/02', 1, '2024-01-08', '2024-02-07'),
(9, 'SWS009', '8B', 'Indah Permata', '2009-01-29', 'Jl. Flamboyan No. 2, RT 04/08', 1, '2024-01-09', '2024-02-08'),
(10, 'SWS010', '9A', 'Joko Susilo', '2008-11-30', 'Jl. Kemuning No. 10, RT 06/01', 1, '2024-01-10', '2024-02-09'),
(11, 'SWS011', '7A', 'Kiki Ramadhani', '2010-12-02', 'Jl. Kenari No. 13, RT 02/04', 1, '2024-01-11', '2024-02-10'),
(12, 'SWS012', '7B', 'Lutfi Hakim', '2010-10-15', 'Jl. Cemara No. 6, RT 01/06', 1, '2024-01-12', '2024-02-11'),
(13, 'SWS013', '8A', 'Maya Pratiwi', '2009-02-18', 'Jl. Beringin No. 90, RT 05/05', 1, '2024-01-13', '2024-02-12'),
(14, 'SWS014', '8B', 'Niko Prabowo', '2009-09-10', 'Jl. Pinus No. 77, RT 03/04', 1, '2024-01-14', '2024-02-13'),
(15, 'SWS015', '9A', 'Oki Saputra', '2008-08-08', 'Jl. Rambutan No. 15, RT 04/03', 1, '2024-01-15', '2024-02-14'),
(16, 'SWS016', '7A', 'Putri Amelia', '2010-01-17', 'Jl. Durian No. 55, RT 02/09', 1, '2024-01-16', '2024-02-15'),
(17, 'SWS017', '7B', 'Qori Hasanah', '2010-06-14', 'Jl. Mangga No. 8, RT 03/01', 1, '2024-01-17', '2024-02-16'),
(18, 'SWS018', '8A', 'Rama Dirgantara', '2009-03-07', 'Jl. Nangka No. 4, RT 05/07', 1, '2024-01-18', '2024-02-17'),
(19, 'SWS019', '8B', 'Sari Puspita', '2009-08-29', 'Jl. Sawo No. 19, RT 01/03', 1, '2024-01-19', '2024-02-18'),
(20, 'SWS020', '9A', 'Tono Hermawan', '2008-04-25', 'Jl. Kelapa No. 22, RT 04/05', 1, '2024-01-20', '2024-02-19'),
(21, 'SWS021', '7A', 'Umi Kurnia', '2010-09-09', 'Jl. Jambu No. 11, RT 02/06', 1, '2024-01-21', '2024-02-20'),
(22, 'SWS022', '7B', 'Vino Mahendra', '2010-11-12', 'Jl. Belimbing No. 27, RT 03/08', 1, '2024-01-22', '2024-02-21'),
(23, 'SWS023', '8A', 'Wani Laras', '2009-12-30', 'Jl. Kedondong No. 44, RT 01/05', 1, '2024-01-23', '2024-02-22'),
(24, 'SWS024', '8B', 'Xavier Putra', '2009-05-05', 'Jl. Srikaya No. 33, RT 06/02', 1, '2024-01-24', '2024-02-23'),
(25, 'SWS025', '9A', 'Yuni Melinda', '2008-02-01', 'Jl. Pepaya No. 18, RT 05/06', 1, '2024-01-25', '2024-02-24'),
(26, 'SWS026', '7A', 'Zaki Firmansyah', '2010-07-27', 'Jl. Jeruk No. 12, RT 04/07', 1, '2024-01-26', '2024-02-25'),
(27, 'SWS027', '7B', 'Alya Nurul', '2010-03-07', 'Jl. Apel No. 29, RT 02/08', 1, '2024-01-27', '2024-02-26'),
(28, 'SWS028', '8A', 'Bagas Nugraha', '2009-10-16', 'Jl. Duku No. 9, RT 01/03', 1, '2024-01-28', '2024-02-27'),
(29, 'SWS029', '8B', 'Cindy Maharani', '2009-06-06', 'Jl. Melon No. 3, RT 03/04', 1, '2024-01-29', '2024-02-28'),
(30, 'SWS030', '9A', 'Dimas Kurniawan', '2008-09-19', 'Jl. Anggur No. 25, RT 05/09', 1, '2024-01-30', '2024-02-29'),
(31, 'SWS031', '9B', 'James', '2012-07-11', 'Jl Tunjungan', 0, '2024-08-11', '2025-08-11'),
(32, 'SWS032', '9B', 'Anton', '2010-03-04', 'Jl Patokan 29', 0, '2024-08-01', '2025-07-07'),
(33, 'SWS033', '7A', 'Andi Pratama', '2010-04-12', 'Jl. Melati No. 14, RT 02/05', 1, '2024-01-01', '2024-01-31'),
(34, 'SWS034', '7A', 'Budi Santoso', '2010-06-21', 'Jl. Mawar No. 8, RT 01/03', 1, '2024-01-01', '2024-01-31'),
(35, 'SWS035', '7A', 'Citra Lestari', '2010-02-10', 'Jl. Kenanga No. 5, RT 04/02', 1, '2024-01-01', '2024-01-31'),
(36, 'SWS036', '7B', 'Deni Saputra', '2009-11-30', 'Jl. Anggrek No. 22, RT 03/06', 1, '2024-01-01', '2024-01-31'),
(37, 'SWS037', '7B', 'Eka Putri', '2010-08-14', 'Jl. Flamboyan No. 3, RT 02/01', 1, '2024-01-01', '2024-01-31'),
(38, 'SWS038', '7B', 'Fajar Nugroho', '2010-01-19', 'Jl. Dahlia No. 17, RT 05/04', 1, '2024-01-01', '2024-01-31'),
(39, 'SWS039', '7C', 'Gina Aprilia', '2010-03-25', 'Jl. Teratai No. 9, RT 01/07', 1, '2024-01-01', '2024-01-31'),
(40, 'SWS040', '7C', 'Hadi Kurniawan', '2009-12-05', 'Jl. Cempaka No. 11, RT 03/03', 1, '2024-01-01', '2024-01-31'),
(41, 'SWS041', '7C', 'Intan Permata', '2010-07-07', 'Jl. Sakura No. 6, RT 02/04', 1, '2024-01-01', '2024-01-31'),
(42, 'SWS042', '7A', 'Joko Prabowo', '2010-05-18', 'Jl. Cemara No. 20, RT 04/06', 1, '2024-01-01', '2024-01-31'),
(43, 'SWS043', '7A', 'Kiki Ramadhan', '2010-09-09', 'Jl. Pinus No. 2, RT 01/02', 1, '2024-01-01', '2024-01-31'),
(44, 'SWS044', '7B', 'Lia Amelia', '2010-10-27', 'Jl. Akasia No. 15, RT 03/05', 1, '2024-01-01', '2024-01-31'),
(45, 'SWS045', '7B', 'Miko Alvaro', '2009-08-16', 'Jl. Palem No. 19, RT 02/06', 1, '2024-01-01', '2024-01-31'),
(46, 'SWS046', '7C', 'Nadia Safitri', '2010-11-11', 'Jl. Nangka No. 7, RT 04/01', 1, '2024-01-01', '2024-01-31'),
(47, 'SWS047', '7C', 'Oscar Wijaya', '2010-01-03', 'Jl. Mangga No. 10, RT 05/02', 1, '2024-01-01', '2024-01-31'),
(48, 'SWS048', '7A', 'Putri Ananda', '2010-06-02', 'Jl. Rambutan No. 12, RT 03/04', 1, '2024-01-01', '2024-01-31'),
(49, 'SWS049', '7B', 'Rizki Maulana', '2009-07-29', 'Jl. Durian No. 18, RT 01/05', 1, '2024-01-01', '2024-01-31'),
(50, 'SWS050', '7C', 'Salsa Nuraini', '2010-12-20', 'Jl. Salak No. 4, RT 02/03', 1, '2024-01-01', '2024-01-31');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
