-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2016 at 05:10 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smkinfonusa`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita_diskusi`
--

CREATE TABLE IF NOT EXISTS `berita_diskusi` (
  `id_berita` int(11) NOT NULL,
  `judul_berita` varchar(100) NOT NULL,
  `foto_berita` varchar(100) NOT NULL,
  `isi_berita` text NOT NULL,
  `tgl_berita` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita_diskusi`
--

INSERT INTO `berita_diskusi` (`id_berita`, `judul_berita`, `foto_berita`, `isi_berita`, `tgl_berita`) VALUES
(3, 'Tewas Usai Meminum Kopi', 'img/diskusi/ddabc934-7ba3-4660-8009-368de1d035b3_169.jpg', '\r\nJakarta - Polsek Tanah Abang, Jakpus melakukan pemeriksaan sampel kopi dari cafe di Grand Indonesia (GI), terkait tewasnya korban perempuan M (27). Polisi menegaskan penyebab kematian belum bisa dipastikan karena kopi. Polisi juga memeriksa riwayat penyakit korban.\r\n\r\nAnggota juga pada saat itu sudah ke TKP dan ambil sampel kopi. Kami sudah kirim sampelnya ke Labfor untuk diteliti, jelas Kapolsek Tanah Abang AKBP Jefri Ronal, Jumat (8/1/2016).\r\n\r\nBaca juga: Usai Seruput Kopi di Cafe di GI, Perempuan ini Kejang-kejang dan Meninggal\r\n\r\nMenurut Jefri, peristiwa ini terjadi pada Rabu (6/1) sore. Korban dan rekannya memesan minuman. Korban es kopi Vietnam sedang dua rekannya cocktail.\r\n\r\nBaru satu seruput korban terus kejang-kejang, imbuh Jefri.\r\n\r\nKorban kemudian ditolong pelayan cafe dan rekannya dan sempat dirawat ke klinik di GI, sebelum kemudian dilarikan ke RS Abdi Waluyo. Namun nyawa almarhumah tidak tertolong. Hingga berita ini diturunkan belum ada keterangan dari pihak cafe dan juga pihak GI.', '2015-12-14 14:32:13');

-- --------------------------------------------------------

--
-- Table structure for table `diskusi`
--

CREATE TABLE IF NOT EXISTS `diskusi` (
  `id_diskusi` int(11) NOT NULL,
  `nama_komentar` varchar(100) NOT NULL,
  `isi_komentar` text NOT NULL,
  `jam_komentar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kartu_perpus`
--

CREATE TABLE IF NOT EXISTS `kartu_perpus` (
  `id_kartu_perpus` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `kelas` varchar(100) NOT NULL,
  `nis` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kartu_perpus`
--

INSERT INTO `kartu_perpus` (`id_kartu_perpus`, `nama_lengkap`, `kelas`, `nis`, `foto`) VALUES
(7, 'Frans Chaniago', '120103', '12132171', 'img/kartu_perpus/frans.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `karya`
--

CREATE TABLE IF NOT EXISTS `karya` (
  `id_karya` int(11) NOT NULL,
  `nama_pengirim` varchar(100) NOT NULL,
  `kelas_pengirim` varchar(100) NOT NULL,
  `email_pengirim` varchar(100) NOT NULL,
  `karya_pengirim` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karya`
--

INSERT INTO `karya` (`id_karya`, `nama_pengirim`, `kelas_pengirim`, `email_pengirim`, `karya_pengirim`, `keterangan`, `waktu`) VALUES
(1, 'Frans Chaniago', '120103', 'franschaniago5@gmail.com', 'karya/PanduanMahasiswaBSI_September2013.pdf', 'tes', '2015-12-21 01:48:36');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` int(11) NOT NULL,
  `kelas` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=120304 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `kelas`) VALUES
(100201, '10 MM I'),
(100202, '10 MM II'),
(100203, '10 MM III'),
(100301, '10 TE I'),
(100302, '10 TE II'),
(100303, '10 TE III'),
(100101, '10 TKJ I'),
(100102, '10 TKJ II'),
(100103, '10 TKJ III'),
(110201, '11 MM I'),
(110202, '11 MM II'),
(110203, '11 MM III'),
(110301, '11 TE I'),
(110302, '11 TE II'),
(110303, '11 TE III'),
(110101, '11 TKJ I'),
(110102, '11 TKJ II'),
(110103, '11 TKJ III'),
(120201, '12 MM I'),
(120202, '12 MM II'),
(120203, '12 MM III'),
(120301, '12 TE I'),
(120302, '12 TE II'),
(120303, '12 TE III'),
(120101, '12 TKJ I'),
(120102, '12 TKJ II'),
(120103, '12 TKJ III');

-- --------------------------------------------------------

--
-- Table structure for table `kritiksaran`
--

CREATE TABLE IF NOT EXISTS `kritiksaran` (
  `id_ks` int(11) NOT NULL,
  `nama_pengirim_ks` varchar(100) NOT NULL,
  `kelas_pengirim_ks` varchar(100) NOT NULL,
  `email_pengirim_ks` varchar(100) NOT NULL,
  `kritik_saran` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login_hal_admin`
--

CREATE TABLE IF NOT EXISTS `login_hal_admin` (
  `id_user_hal_admin` int(11) NOT NULL,
  `username_hal_admin` varchar(100) NOT NULL,
  `pass_hal_admin` varchar(100) NOT NULL,
  `nama_lengkap_user` varchar(100) NOT NULL,
  `level_hal_admin` enum('admin','perpus','kantin') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_hal_admin`
--

INSERT INTO `login_hal_admin` (`id_user_hal_admin`, `username_hal_admin`, `pass_hal_admin`, `nama_lengkap_user`, `level_hal_admin`) VALUES
(2, 'f124n5', '110495', 'Frans Chaniago', 'admin'),
(4, 'n14', '121314', 'Nia Utama Julianti', 'perpus');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE IF NOT EXISTS `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `isi_pengumuman` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `isi_pengumuman`, `waktu`) VALUES
(2, 'Sehubungan dengan di agendakannya kunjungan industri ke Perusahaan Google Indonesia Serta Kaskus Indonesia pada 10 Februari 2016, diharapkan siswa/i segera melunasi pembayaran melalui bagian Tata Usaha. adapun biayanya adalah Rp.100.000/Siswa sudah termasuk bis dan makan siang serta snack. bagi yang memerlukan surat ijin orang tua harap mengajukannya ke wali kelas masing-masing untuk di buatkan suratnya. Terimakasih', '2015-12-08 15:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `perpus_online`
--

CREATE TABLE IF NOT EXISTS `perpus_online` (
  `id_po` int(11) NOT NULL,
  `judul_buku` varchar(100) NOT NULL,
  `cover_buku` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perpus_online`
--

INSERT INTO `perpus_online` (`id_po`, `judul_buku`, `cover_buku`, `link`) VALUES
(1, 'Pemrograman java tingkat lanjut', 'img/perpusonline/6e04eb26715671f44e835393ea603c86.jpg', 'mediafire.com'),
(6, 'Dasar Pemrograman Internet', 'img/perpusonline/15.01.095.jpg', 'mediafire.com'),
(7, 'Android & Mongo DB', 'img/perpusonline/309805_7b4775c8-a460-11e4-8af8-867f2523fab8.jpg', 'mediafire.com'),
(8, 'Pemrograman PHP & MySQL', 'img/perpusonline/5989998.jpg', 'mediafire.com'),
(9, 'Pemrograman C ++', 'img/perpusonline/8185607.jpg', 'mediafire.com'),
(10, 'Cara Cepat Belaja VB.Net', 'img/perpusonline/19307161.jpg', 'mediafire.com'),
(11, 'Computer Security', 'img/perpusonline/979763163X.jpg', 'mediafire.com'),
(12, 'Java 7', 'img/perpusonline/6464293941_92aa9ac176.jpg', 'mediafire.com'),
(15, 'Mastering Java', 'img/perpusonline/cermin_java.jpg', 'mediafire.com'),
(16, 'Chip Networking', 'img/perpusonline/chip-networking.jpg', 'mediafire.com'),
(17, 'Visual Basic 6.0', 'img/perpusonline/coverbuku1.jpg', 'mediafire.com'),
(18, 'Codeigniter', 'img/perpusonline/cover-codeigniter2.jpg', 'mediafire.com'),
(19, 'Pemrograman Web Full', 'img/perpusonline/cover-pemrograman-web-full.jpg', 'mediafire.com'),
(20, 'Pascal', 'img/perpusonline/Screen Shot 2013-05-27 at 12.16.15 AM.png', 'mediafire.com');

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE IF NOT EXISTS `prestasi` (
  `id_berita` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `berita` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id_berita`, `judul`, `gambar`, `berita`) VALUES
(4, 'Juara Robotic Internasional', 'img/prestasi/2191-tim-robot-ugm-juara-di-dua-kompetisi-internasional.jpg', 'Rabu 2 Desember 2015, Tim Robotic indonesia yang salah satunya di wakili oleh Muhammad Rezki dari kelas 11 Teknik Elektro 1 berhasil mendapatkan Medali Perak dalam kategori Robot Drone di tingkat internasional dalam ajang Robotic Festival 2015 yang di adakan di Berlin Germany. prestasi ini sangat membanggakan bukan hanya bagi sekolah tapi juga bagi bangsa indonesia yang berhasil menunjukan kemampuannya di tingkat dunia'),
(6, 'Paskibraka 2015', 'img/PASKIB.jpg', 'Muhammad Yusuf siswa kelas 10 Multimedia 3 yang aktif dalam ekstrakulikuler paskibraka berhasil terpilih menjadi wakil paskibraka dalam pengibaran bendera HUT RI di Istiana Negara tahun 2015 untuk mewakili Provinsi Jawa Barat. <i>sungguh tak disangka dari banyaknya peserta saya bisa terpilih sebagai wakil jawabarat dalam pengibaran bendera di istana negara tahun ini</i> Kata Yusuf dalam wawancaranya bersama ekskul jurnalis SMK Informatika Nusantara. sekali lagi kami membuktikan bahwa SMK INFONUSA tidak hanya ahli dalam bidang IT tapi juga dalam keterampilan yang lain.'),
(7, 'Juara 1 Festival Basket Jawabarat', 'img/prestasi/BASKET.jpg', 'Tim motherboard dari ekstrakulikuler basket berhasil mendapatkan medali emas dalam ajang festival basket tingakat provinsi jawabarat kategori SMA/SMK, prestasi ini bukanlah prestasi yang pertama bagi tim basket motherboard, ekstrakulikuler basket merupakan ekskul yang sering menyumbangkan medali dalam berbagai kejuaran baik tingkat kota, provinsi maupun nasional. ini merupakan suatu kebanggan bagi sekolah.'),
(8, 'Robot Andro 1 yang memikat', 'img/prestasi/robotikk.jpg', 'Andro 1 merupakan proyek robot buatan ekskul robotic dengan bantuan beberapa guru ahli dalam bidang robot, kelebihan robot ini adalah bisa dikendalikan dengan gadget berbasis android. suatu inovasi yang bagus dimana android dan robot bisa digabungkan  dan dikendalikan lewat smartphone. proyek robot ini akan terus dikembangkan agar compatible untuk semua versi android'),
(9, 'Juara I Futsal Kompetisi Walikota Cup', 'img/juarafutsal.jpg', 'Dalam kejuaraan futsal pada kompetisi walikota cup tim futsal smk infonusa berhasil meraih peringkat pertama setelah melewati beberapa pertandingan yang sangat sengit sekali. kejuaraan ini di gelar setahun sekali yang langsung dipimpin oleh walikota bandung, prestasi ini tentunya menambah rentetan piala piala kejuaran yang di raih Smk Infonusa pada tahun ini'),
(10, 'Medali Emas Tim Pencak Silat Infonusa', 'img/juarasilat.jpg', 'Tak mau kalah dengan tim futsal, tim pencak silat pun berhasil menorehkan medali emas di ajang pencak silat tingkat kabupaten dan kota. tim pencak silat smk infonusa hampir setiap tahunnya menyumbangkan prestasi di berbagai kejuaran. selain membanggakan pencak silat adalah olah raga bela diri asli indonesia yang harus terus dilestarikan oleh generasi-generasi muda indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `psb`
--

CREATE TABLE IF NOT EXISTS `psb` (
  `id_psb` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `nisn` varchar(100) NOT NULL,
  `asal_sekolah` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ijazah` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `psb`
--

INSERT INTO `psb` (`id_psb`, `nama_lengkap`, `nisn`, `asal_sekolah`, `email`, `ijazah`) VALUES
(1, 'Frans Chaniago', '1213456478', 'SMP 2  Tangerang', 'franschaniago5@gmail.com', 'img/ijazah/IMG-20151018-WA0001.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `kelas_siswa` varchar(100) NOT NULL,
  `tgl_lahir` varchar(100) NOT NULL,
  `foto_siswa` varchar(100) NOT NULL,
  `ekskul` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `level` enum('siswa') NOT NULL DEFAULT 'siswa'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nis`, `nama_siswa`, `kelas_siswa`, `tgl_lahir`, `foto_siswa`, `ekskul`, `alamat`, `level`) VALUES
(12130480, 'Nur Fadilah', '120103', '2015-12-02', 'img/siswa/Desert.jpg', 'basket', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'siswa'),
(12130596, 'Nur Chikmatunnisa', '120103', '2015-12-11', 'img/siswa/Hydrangeas.jpg', 'volly', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'siswa'),
(12131566, 'Hilda Nurmalasari', '120103', '2015-12-21', 'img/siswa/Chrysanthemum.jpg', 'robotic', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'siswa'),
(12132171, 'Frans Chaniago', '120103', '1995-04-11', 'img/siswa/2x3.jpg', 'basket', 'Perumahan purijaya blok ac 24 no 17 kecamatan pasarkemis kabupaten tangerang', 'siswa'),
(12132503, 'Nia Utama Julianti', '120103', '2015-12-14', 'img/siswa/Jellyfish.jpg', 'music', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'siswa'),
(12133035, 'Raden Defi Megantari', '120103', '1995-07-12', 'img/siswa/Penguins.jpg', 'basket', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE IF NOT EXISTS `slide` (
  `id_slide` int(11) NOT NULL,
  `foto_slide` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`id_slide`, `foto_slide`) VALUES
(2, 'img/slide/umm3.jpg'),
(4, 'img/slide/jahit-bendera.jpg'),
(6, 'img/slide/paskibra-smu.jpg'),
(7, 'img/slide/DSCF9853.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita_diskusi`
--
ALTER TABLE `berita_diskusi`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `diskusi`
--
ALTER TABLE `diskusi`
  ADD PRIMARY KEY (`id_diskusi`);

--
-- Indexes for table `kartu_perpus`
--
ALTER TABLE `kartu_perpus`
  ADD PRIMARY KEY (`id_kartu_perpus`);

--
-- Indexes for table `karya`
--
ALTER TABLE `karya`
  ADD PRIMARY KEY (`id_karya`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `kelas` (`kelas`),
  ADD KEY `kelas_2` (`kelas`);

--
-- Indexes for table `kritiksaran`
--
ALTER TABLE `kritiksaran`
  ADD PRIMARY KEY (`id_ks`);

--
-- Indexes for table `login_hal_admin`
--
ALTER TABLE `login_hal_admin`
  ADD PRIMARY KEY (`id_user_hal_admin`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `perpus_online`
--
ALTER TABLE `perpus_online`
  ADD PRIMARY KEY (`id_po`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `psb`
--
ALTER TABLE `psb`
  ADD PRIMARY KEY (`id_psb`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `nama_siswa` (`nama_siswa`),
  ADD KEY `kelas_siswa` (`kelas_siswa`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id_slide`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita_diskusi`
--
ALTER TABLE `berita_diskusi`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `diskusi`
--
ALTER TABLE `diskusi`
  MODIFY `id_diskusi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `kartu_perpus`
--
ALTER TABLE `kartu_perpus`
  MODIFY `id_kartu_perpus` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `karya`
--
ALTER TABLE `karya`
  MODIFY `id_karya` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=120304;
--
-- AUTO_INCREMENT for table `kritiksaran`
--
ALTER TABLE `kritiksaran`
  MODIFY `id_ks` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `login_hal_admin`
--
ALTER TABLE `login_hal_admin`
  MODIFY `id_user_hal_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `perpus_online`
--
ALTER TABLE `perpus_online`
  MODIFY `id_po` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `prestasi`
--
ALTER TABLE `prestasi`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `psb`
--
ALTER TABLE `psb`
  MODIFY `id_psb` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `id_slide` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
