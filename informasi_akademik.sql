-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2025 at 08:34 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `informasi_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `DOSEN_ID` int(11) NOT NULL,
  `NAMA` varchar(250) DEFAULT NULL,
  `NIDN` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(250) DEFAULT NULL,
  `NO_HP` varchar(20) DEFAULT NULL,
  `ALAMAT` varchar(250) DEFAULT NULL,
  `JABATAN_AKADEMIK` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`DOSEN_ID`, `NAMA`, `NIDN`, `EMAIL`, `NO_HP`, `ALAMAT`, `JABATAN_AKADEMIK`) VALUES
(201, 'Ali rokhip, S.kom.', '2221', 'ali@zall.com', '08001', 'sidoarjo', 'kaprogli'),
(202, 'Arif S.kom', '2222', 'arif@zall.com', '08002', 'surabaya', 'dosen'),
(203, 'Harris miyahara S.kom', '2223', 'harris@zall.com', 'sidoarjo', 'surabaya', 'dosen'),
(204, 'Huda S.kom', '2224', 'huda@zall.com', '08004', 'sidoarjo', 'dosen'),
(205, 'Anies S.kom', '2225', 'anies@zall.com', '08005', 'surabaya', 'dosen');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `KELAS_ID` int(11) NOT NULL,
  `DOSEN_ID` int(11) DEFAULT NULL,
  `NAMA_KELAS` varchar(250) DEFAULT NULL,
  `TAHUN_AJARAN` varchar(4) DEFAULT NULL,
  `SEMESTER` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`KELAS_ID`, `DOSEN_ID`, `NAMA_KELAS`, `TAHUN_AJARAN`, `SEMESTER`) VALUES
(401, 201, 'kelas ASJ', '2025', '1'),
(402, 202, 'kelas Linux', '2025', '2'),
(403, 203, 'kelas Media sosial', '2025', '3'),
(404, 204, 'kelas Pascal', '2025', '4'),
(405, 205, 'kelas Arduino', '2025', '5');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `MAHASISWA_ID` int(11) NOT NULL,
  `NAMA_MHS` varchar(250) DEFAULT NULL,
  `NIM` varchar(10) DEFAULT NULL,
  `TANGGAL_LAHIR_MHS` date DEFAULT NULL,
  `JENIS_KELAMIN` varchar(15) DEFAULT NULL,
  `ALAMAT_MHS` varchar(250) DEFAULT NULL,
  `NO_HP_MHS` varchar(20) DEFAULT NULL,
  `EMAIL_MHS` varchar(250) DEFAULT NULL,
  `PROGRAM_STUDI` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`MAHASISWA_ID`, `NAMA_MHS`, `NIM`, `TANGGAL_LAHIR_MHS`, `JENIS_KELAMIN`, `ALAMAT_MHS`, `NO_HP_MHS`, `EMAIL_MHS`, `PROGRAM_STUDI`) VALUES
(1, 'abrizal', '2401', '2006-04-08', 'laki laki', 'surabaya', '08123456789', 'abr@zall.mail', 'Teknik Komputer'),
(2, 'rakkaa', '2402', '2006-04-08', 'laki laki', 'surabaya', '08123456789', 'kaa@zall.mail', 'Teknik Komputer'),
(3, 'diyanzal', '2403', '2011-06-24', 'laki-laki', 'sidoarjo', '0812345678', 'diyanzall@zall.mail', 'Teknik komputer'),
(4, 'friska', '2404', '2004-08-31', 'perempuan', 'sidoarjo', '0812345678', 'fris@zall.mail', 'Teknik komputer'),
(5, 'bilqis', '2405', '2006-04-08', 'perempuan', 'mojokerto', '0812345678', 'bilqis@zall.mail', 'ekonomi'),
(6, 'kensa', '2406', '2006-04-08', 'laki laki', 'malang', '0892345667', 'kens@zall.mail', 'sastra mesin'),
(7, 'afta', '2407', '2006-04-08', 'perempuan', 'malang', '0892345667', 'bededimmah@zall.mail', 'sastra mesin');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `MATA_KULIAH_ID` int(11) NOT NULL,
  `DOSEN_ID` int(11) DEFAULT NULL,
  `NAMA_MATA_KULIAH` varchar(250) DEFAULT NULL,
  `SKS` varchar(2) DEFAULT NULL,
  `SEMESTER_MK` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`MATA_KULIAH_ID`, `DOSEN_ID`, `NAMA_MATA_KULIAH`, `SKS`, `SEMESTER_MK`) VALUES
(301, 201, 'Administrasi Sistem Jaringan', '1', '1'),
(302, 202, 'Sistem Komputer', '2', '2'),
(303, 203, 'Sistem komunikasi digital ', '3', '3'),
(304, 204, 'Pemrograman dasar', '4', '4'),
(305, 205, 'Internet Of things', '5', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `NILAI_ID` int(11) NOT NULL,
  `MAHASISWA_ID` int(11) DEFAULT NULL,
  `KELAS_ID` int(11) DEFAULT NULL,
  `MATA_KULIAH_ID` int(11) DEFAULT NULL,
  `NILAI_AKHIR` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`NILAI_ID`, `MAHASISWA_ID`, `KELAS_ID`, `MATA_KULIAH_ID`, `NILAI_AKHIR`) VALUES
(501, 1, 401, 301, 100),
(502, 2, 402, 302, 90),
(503, 3, 403, 303, 80),
(504, 4, 404, 304, 70),
(505, 5, 405, 305, 60);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`DOSEN_ID`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`KELAS_ID`),
  ADD KEY `FK_RELATIONSHIP_4` (`DOSEN_ID`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`MAHASISWA_ID`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`MATA_KULIAH_ID`),
  ADD KEY `FK_RELATIONSHIP_3` (`DOSEN_ID`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`NILAI_ID`),
  ADD KEY `FK_RELATIONSHIP_5` (`KELAS_ID`),
  ADD KEY `FK_RELATIONSHIP_6` (`MATA_KULIAH_ID`),
  ADD KEY `FK_RELATIONSHIP_7` (`MAHASISWA_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`DOSEN_ID`) REFERENCES `dosen` (`DOSEN_ID`);

--
-- Constraints for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`DOSEN_ID`) REFERENCES `dosen` (`DOSEN_ID`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`KELAS_ID`) REFERENCES `kelas` (`KELAS_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_6` FOREIGN KEY (`MATA_KULIAH_ID`) REFERENCES `mata_kuliah` (`MATA_KULIAH_ID`),
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`MAHASISWA_ID`) REFERENCES `mahasiswa` (`MAHASISWA_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
