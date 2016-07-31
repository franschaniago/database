-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2016 at 05:11 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aql`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang_baru`
--

CREATE TABLE IF NOT EXISTS `barang_baru` (
  `no_trans` int(11) NOT NULL,
  `tgl` varchar(100) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `harga_satuan` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=132611005 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_baru`
--

INSERT INTO `barang_baru` (`no_trans`, `tgl`, `id_barang`, `id_supplier`, `nama_barang`, `harga_satuan`) VALUES
(25111501, '2015-11-25', 122511001, 52012311, 'Palazor', '250000'),
(26111003, '2015-11-26', 122611003, 52022611, 'Donati', '500000'),
(26111502, '2015-11-26', 132611001, 52032311, 'Olympus', '2000000'),
(26111504, '2015-11-26', 132611004, 52052411, 'MEJA A', '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `barang_keluar`
--

CREATE TABLE IF NOT EXISTS `barang_keluar` (
  `no_trans` int(11) NOT NULL,
  `tgl` varchar(100) NOT NULL,
  `jam` varchar(100) NOT NULL,
  `id_barang` varchar(100) NOT NULL,
  `jumlah_barang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_keluar`
--

INSERT INTO `barang_keluar` (`no_trans`, `tgl`, `jam`, `id_barang`, `jumlah_barang`) VALUES
(26111502, '2015-11-26', '03:00', '122511001', '10'),
(26111503, '2015-11-26', '22:00', '122611003', '10'),
(27111502, '2015-11-27', '01:00', '132611001', '10'),
(30121501, '2015-11-30', '14:01', '132611004', '20');

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE IF NOT EXISTS `barang_masuk` (
  `no_trans` int(11) NOT NULL,
  `tgl` varchar(100) NOT NULL,
  `jam` varchar(100) NOT NULL,
  `id_barang` varchar(100) NOT NULL,
  `id_supplier` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_masuk`
--

INSERT INTO `barang_masuk` (`no_trans`, `tgl`, `jam`, `id_barang`, `id_supplier`, `jumlah`) VALUES
(25111501, '2015-11-25', '02:00', '122511001', '52012311', '20'),
(26111502, '2015-11-26', '01:00', '132611001', '52032311', '40'),
(26111503, '2015-11-26', '22:00', '122611003', '52022611', '30'),
(26111504, '2015-11-26', '03:00', '132611004', '52052411', '50');

-- --------------------------------------------------------

--
-- Table structure for table `data_supplier`
--

CREATE TABLE IF NOT EXISTS `data_supplier` (
  `id_supplier` int(11) NOT NULL,
  `tgl_gabung` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `tlp` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52102513 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_supplier`
--

INSERT INTO `data_supplier` (`id_supplier`, `tgl_gabung`, `nama`, `alamat`, `tlp`) VALUES
(52012311, '2015-11-23', 'CV Mabel Putra', 'Jl raya no 3 Jakarta Pusat', '02155890127'),
(52012615, '2015-11-26', 'Hilda', 'hilda@yahoo.com', ''),
(52022311, '2015-11-23', 'Cv Kursi Kita', 'Jl raya kotabumi no 7', '08765432178'),
(52022611, '2015-11-26', 'CV MAKMUR ABADI', 'JL jatiuwung', '09777777'),
(52032311, '2015-11-23', 'CV Cahaya Table', 'Jl raya pluit Jakbar', '0219002992'),
(52042411, '2015-11-24', 'CV Mebel Kantor', 'Jl majapahit no 11 Jogyakarta', '56782233'),
(52052411, '2015-11-24', 'Toko Pengrajin Kayu', 'Jl majasari serang', '08991112222'),
(52072511, '2015-11-25', 'Pengrajin Meja Kayu', 'Jl soedirman no 12 Semarang', '0812337766'),
(52082511, '2015-11-25', 'Pengrajin Kursi Kantor', 'Jl Tarumanegara Bogor', '54667788'),
(52092412, '2015-12-24', 'CV Sahabat Kantor', 'Jl Bung Tomo no 9 Bandung', '567919191'),
(52102512, '2015-12-25', 'Cv Mebel Kami', 'Jl Daan Mogot Jakbar', '0855667788');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id_login` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `level` enum('user','admin','manajer') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `nama`, `password`, `nama_lengkap`, `level`) VALUES
(1, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'nia utama', 'user'),
(2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'frans chaniago', 'admin'),
(3, 'manajer', '69b731ea8f289cf16a192ce78a37b4f0', 'nur chikmatunnisa', 'manajer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang_baru`
--
ALTER TABLE `barang_baru`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `nama_barang` (`nama_barang`),
  ADD KEY `harga_satuan` (`harga_satuan`);

--
-- Indexes for table `barang_keluar`
--
ALTER TABLE `barang_keluar`
  ADD PRIMARY KEY (`no_trans`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`no_trans`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `jumlah` (`jumlah`);

--
-- Indexes for table `data_supplier`
--
ALTER TABLE `data_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang_baru`
--
ALTER TABLE `barang_baru`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=132611005;
--
-- AUTO_INCREMENT for table `data_supplier`
--
ALTER TABLE `data_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52102513;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
