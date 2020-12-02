-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2020 at 07:53 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neotesis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `Password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `Password`) VALUES
(0, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `idetesis`
--

CREATE TABLE `ideskripsi` (
  `IDIde` bigint(20) NOT NULL,
  `IDIdeMahasiswa` bigint(20) NOT NULL,
  `JudulIde` varchar(100) NOT NULL,
  `DeskripsiIde` text NOT NULL,
  `TanggalIde` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `IDJurusan` bigint(20) NOT NULL,
  `Jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`IDJurusan`, `Jurusan`) VALUES
(1, 'Teknik Informatika'),
(2, 'Teknik Sipil'),
(3, 'Kimia'),
(4, 'Rally');

-- --------------------------------------------------------

--
-- Table structure for table `kartubimbingan`
--

CREATE TABLE `kartubimbingan` (
  `IDKartu` int(11) NOT NULL,
  `IDKartuMahasiswa` bigint(30) NOT NULL,
  `IDDosenPembimbing` varchar(30) NOT NULL,
  `Catatan` text NOT NULL,
  `TanggalBimbingan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kartubimbingan`
--

INSERT INTO `kartubimbingan` (`IDKartu`, `IDKartuMahasiswa`, `IDDosenPembimbing`, `Catatan`, `TanggalBimbingan`) VALUES
(1, 50000, '251', 'Waduh ini salah. Perbaiki lagi. Nanti revisi 2 nya di dosen pembimbing 2 ya', '2020-11-30'),
(2, 50000, '252', 'Ini untuk revisi proposal 2 nya. Segera diperbaiki ya', '2020-11-30'),
(3, 50000, '251', 'Salah ya. Ini perbaiki lagi skripsi nya. Revisi Skripsi 1 nya saya kasih. Nanti aku jadwalkan ke pembimbing nya untuk revisi 2 nya', '2020-11-30'),
(4, 50000, '252', 'Oke. Saya kasih revisi 2 nya ya. Langsung diperbaiki', '2020-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `IDKegiatan` int(11) NOT NULL,
  `IDUsers` bigint(20) NOT NULL,
  `Kegiatan` varchar(100) NOT NULL,
  `Tempat` varchar(100) NOT NULL,
  `JamKegiatan` time NOT NULL,
  `TanggalKegiatan` date NOT NULL,
  `Finish` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `konsentrasi`
--

CREATE TABLE `konsentrasi` (
  `IDKonsentrasi` int(11) NOT NULL,
  `IDJurusanKsn` int(11) NOT NULL,
  `IDDosen` bigint(20) NOT NULL,
  `Konsentrasi` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsentrasi`
--

INSERT INTO `konsentrasi` (`IDKonsentrasi`, `IDJurusanKsn`, `IDDosen`, `Konsentrasi`) VALUES
(1, 1, 100, 'Kecerdasan  Buatan'),
(2, 1, 0, 'Robotic'),
(3, 4, 250, 'Dirt 5');

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `IDNotifikasi` int(11) NOT NULL,
  `Notifikasi` varchar(300) NOT NULL,
  `Catatan` text NOT NULL,
  `TanggalNotifikasi` varchar(40) NOT NULL,
  `IDPenerima` bigint(20) NOT NULL,
  `IDPengirim` bigint(20) NOT NULL,
  `StatusNotifikasi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`IDNotifikasi`, `Notifikasi`, `Catatan`, `TanggalNotifikasi`, `IDPenerima`, `IDPengirim`, `StatusNotifikasi`) VALUES
(1, 'Deteksi Objek', 'Anda Di Tetapkan Sebagai Dosen Pembimbing Yoga Anda sekarang bisa mengacc proposal maupun skripsi Yogadan juga menambah kartu bimbingan untuk mahasiswa tersebut Anda ditetapkan sebagai pembimbing ke 1', '2020-07-29', 103, 100, 'Informasi'),
(2, 'Deteksi Objek', 'Anda Di Tetapkan Sebagai Dosen Pembimbing Yoga Anda sekarang bisa mengacc proposal maupun skripsi Yogadan juga menambah kartu bimbingan untuk mahasiswa tersebut Anda ditetapkan sebagai pembimbing ke 2', '2020-07-29', 100, 100, 'Informasi'),
(3, 'Deteksi Objek', 'Tambahkan rancangan metode dan spek raspberry nya', '2020-07-29', 12345, 100, 'Diterima'),
(4, 'Proposal Deteksi Objek Telah Di ACC', 'Proposal Telah Di ACC Oleh : <br>Hartono Sebagai Pembimbing 2', '2020-07-29', 12345, 100, 'Proposal'),
(5, 'Tesis Wali yang sedang Cari Jodoh', 'Anda Di Tetapkan Sebagai Dosen Pembimbing Riksa Anda sekarang bisa mengacc proposal maupun skripsi Riksadan juga menambah kartu bimbingan untuk mahasiswa tersebut Anda ditetapkan sebagai pembimbing ke 1', '2020-11-30', 251, 250, 'Informasi'),
(6, 'Tesis Wali yang sedang Cari Jodoh', 'Anda Di Tetapkan Sebagai Dosen Pembimbing Riksa Anda sekarang bisa mengacc proposal maupun skripsi Riksadan juga menambah kartu bimbingan untuk mahasiswa tersebut Anda ditetapkan sebagai pembimbing ke 2', '2020-11-30', 252, 250, 'Informasi'),
(7, 'Tesis Wali yang sedang Cari Jodoh', 'Oke saya terima tesis ini. Nanti kamu diajarin sama AQ dan Ran ya', '2020-11-30', 50000, 250, 'Diterima'),
(8, 'Proposal Tesis Wali yang sedang Cari Jodoh Telah Di ACC', 'Proposal Telah Di ACC Oleh : <br>AQ Sebagai Pembimbing 1', '2020-11-30', 50000, 251, 'Proposal'),
(9, 'Proposal Tesis Wali yang sedang Cari Jodoh Telah Di ACC', 'Proposal Telah Di ACC Oleh : <br>Ran Sebagai Pembimbing 2', '2020-11-30', 50000, 252, 'Proposal'),
(10, 'Skripsi Tesis Wali yang sedang Cari Jodoh Telah Di ACC', 'Skripsi Telah Di ACC Oleh : <br>AQ Sebagai Pembimbing 1', '2020-11-30', 50000, 251, 'Skripsi'),
(11, 'Skripsi Tesis Wali yang sedang Cari Jodoh Telah Di ACC', 'Skripsi Telah Di ACC Oleh : <br>Ran Sebagai Pembimbing 2', '2020-11-30', 50000, 252, 'Skripsi'),
(12, 'Kegiatan Seminar Proposal Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  09:00<br> <i class=\"fas fa-map-marker mr-auto\"></i>  Politeknik Negeri Malang Seminar Persiapan Sidang Tesis<br> <i class=\"fas fa-calendar-alt\"></i> Minggu, 13 Desember 2020', '2020-11-30', 50000, 250, 'Seminar Proposal'),
(13, 'Kegiatan Sidang Skripsi Telah Ditetapkan', 'Dimohon Persiapkan diri Pada : <br> <i class=\"fas fa-clock mr-auto\"></i>  10:20<br> <i class=\"fas fa-map-marker mr-auto\"></i>  Politeknik Negeri Malang, Sidang Tesis Terbuka khusus Riksa<br> <i class=\"fas fa-calendar-alt\"></i> Sabtu, 26 Desember 2020', '2020-11-30', 50000, 250, 'Sidang Skripsi');

-- --------------------------------------------------------

--
-- Table structure for table `pembimbing`
--

CREATE TABLE `pembimbing` (
  `IDPembimbing` int(11) NOT NULL,
  `IDDosenPmb` bigint(20) NOT NULL,
  `IDSkripsiPmb` int(11) NOT NULL,
  `StatusProposal` tinyint(1) NOT NULL,
  `StatusSkripsi` tinyint(1) NOT NULL,
  `StatusPembimbing` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembimbing`
--

INSERT INTO `pembimbing` (`IDPembimbing`, `IDDosenPmb`, `IDSkripsiPmb`, `StatusProposal`, `StatusSkripsi`, `StatusPembimbing`) VALUES
(1, 103, 1596017627, 0, 0, 1),
(2, 100, 1596017627, 1, 0, 2),
(3, 251, 1606753969, 1, 1, 1),
(4, 252, 1606753969, 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `skripsi`
--

CREATE TABLE `skripsi` (
  `IDSkripsi` int(20) NOT NULL,
  `IDMahasiswaSkripsi` bigint(20) NOT NULL,
  `JudulSkripsi` varchar(200) NOT NULL,
  `QRCode` varchar(100) NOT NULL,
  `FileProposal` varchar(100) NOT NULL,
  `FileSkripsi` varchar(100) NOT NULL,
  `Uploader` bigint(20) DEFAULT NULL,
  `Deskripsi` text NOT NULL,
  `Tanggal` date NOT NULL,
  `Nilai` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skripsi`
--

INSERT INTO `skripsi` (`IDSkripsi`, `IDMahasiswaSkripsi`, `JudulSkripsi`, `QRCode`, `FileProposal`, `FileSkripsi`, `Uploader`, `Deskripsi`, `Tanggal`, `Nilai`) VALUES
(1596017627, 12345, 'Deteksi Objek', '12345.png', '1596017627.pdf', '', 12345, 'Perancangan pendeteksi objek manusia ketika menyebrang di jalan raya sehingga rambu-rambu lalu lintas menyalakan lampu bahwa akan ada orang yang sedang menyebrang di tikungan.\r\nPerancangan pendeteksi objek manusia ketika menyebrang di jalan raya sehingga rambu-rambu lalu lintas menyalakan lampu bahwa akan ada orang yang sedang menyebrang di tikungan.\r\nPerancangan pendeteksi objek manusia ketika menyebrang di jalan raya sehingga rambu-rambu lalu lintas menyalakan lampu bahwa akan ada orang yang sedang menyebrang di tikungan.\r\nPerancangan pendeteksi objek manusia ketika menyebrang di jalan raya sehingga rambu-rambu lalu lintas menyalakan lampu bahwa akan ada orang yang sedang menyebrang di tikungan.\r\nPerancangan pendeteksi objek manusia ketika menyebrang di jalan raya sehingga rambu-rambu lalu lintas menyalakan lampu bahwa akan ada orang yang sedang menyebrang di tikungan.', '2020-07-29', 0),
(1606753969, 50000, 'Tesis Wali yang sedang Cari Jodoh', '50000.png', '1606753969.pdf', '1606753969.pdf', 50000, 'Apa salahku? Apa salah ibuku?\r\nHidupku dirundung pilu\r\nTak ada yang mau dan menginginkan aku\r\n\'Tuk jadi pengobat pilu\r\n\'Tuk jadi penawar rindu\r\n\'Tuk jadi kekasih hatiku\r\nTimur ke barat, selatan ke utara\r\nTak juga aku berjumpa\r\nDari musim duren hingga musim rambutan\r\nTak kunjung aku dapatkan\r\nTak jua aku temukan\r\nOh, Tuhan, inikah cobaan?\r\nIbu-ibu, bapak-bapak, siapa yang punya anak bilang aku\r\nAku yang tengah malu sama teman-temanku\r\nKarena cuma diriku yang tak laku-laku\r\nPengumuman-pengumuman, siapa yang mau bantu tolong aku\r\nKasihani aku, tolong carikan diriku kekasih hatiku, siapa yang mau?\r\nTimur ke barat, selatan ke utara\r\nTak juga aku berjumpa\r\nDari musim duren hingga musim rambutan\r\nTak kunjung aku dapatkan\r\nTak jua aku temukan\r\nOh, Tuhan, inikah cobaan?\r\nIbu-ibu, bapak-bapak, siapa yang punya anak bilang aku\r\nAku yang tengah malu sama teman-temanku\r\nKarena cuma diriku yang tak laku-laku\r\nPengumuman-pengumuman, siapa yang mau bantu tolong aku\r\nKasihani aku, tolong carikan diriku kekasih hatiku, siapa yang mau?\r\nIbu, bapak, punya anak bilang-bilang aku\r\nAku yang tengah malu sama teman-temanku\r\nKarena cuma diriku yang tak laku-laku, woo-oh-oh-oh\r\nPengumuman-pengumuman, siapa yang mau bantu tolong aku\r\nKasihani aku, tolong carikan diriku kekasih hatiku, siapa yang mau?, woo-oh-oh-oh\r\n\'Ku tak laku-laku, woo-oh-oh-oh\r\n\'Ku tak laku-laku, woo-oh-oh-oh\r\n\'Ku tak laku-laku', '2020-11-30', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` bigint(20) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `IDJurusanUser` bigint(20) NOT NULL,
  `IDKonsentrasiUser` bigint(20) NOT NULL,
  `NoHP` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Foto` varchar(30) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Nama`, `Password`, `IDJurusanUser`, `IDKonsentrasiUser`, `NoHP`, `Email`, `Foto`, `Status`) VALUES
(100, 'Hartono', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '', 'hartono@gmail.com', '', 'Dosen'),
(101, 'Ridwan', '827ccb0eea8a706c4c34a16891f84e7b', 1, 2, '', 'ridwan101@yahoo.com', '', 'Dosen'),
(102, 'Permana', '827ccb0eea8a706c4c34a16891f84e7b', 1, 2, '', 'permana102@gmail.com', '', 'Dosen'),
(103, 'Lisnawati', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '', 'lisna@outlook.com', '', 'Dosen'),
(250, 'Tony', '827ccb0eea8a706c4c34a16891f84e7b', 4, 3, '', 'tony@wax.com', '', 'Dosen'),
(251, 'AQ', '827ccb0eea8a706c4c34a16891f84e7b', 4, 3, '', 'aq@seed.com', '', 'Dosen'),
(252, 'Ran', '827ccb0eea8a706c4c34a16891f84e7b', 4, 3, '', 'ran@kyles.com', '', 'Dosen'),
(12345, 'Yoga', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '089707865', 'nama@gmail.com', '12345.jpg', 'Skripsi'),
(12346, 'Udin', '827ccb0eea8a706c4c34a16891f84e7b', 1, 1, '', 'udin@gmail.com', '', 'Skripsi'),
(13451, 'Siti', '827ccb0eea8a706c4c34a16891f84e7b', 1, 2, '', 'siti@kampus.ac.id', '', 'Skripsi'),
(50000, 'Riksa', '827ccb0eea8a706c4c34a16891f84e7b', 4, 3, '', 'riksa@frisk.com', '', 'Skripsi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ideskripsi`
--
ALTER TABLE `ideskripsi`
  ADD PRIMARY KEY (`IDIde`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`IDJurusan`);

--
-- Indexes for table `kartubimbingan`
--
ALTER TABLE `kartubimbingan`
  ADD PRIMARY KEY (`IDKartu`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`IDKegiatan`);

--
-- Indexes for table `konsentrasi`
--
ALTER TABLE `konsentrasi`
  ADD PRIMARY KEY (`IDKonsentrasi`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`IDNotifikasi`);

--
-- Indexes for table `pembimbing`
--
ALTER TABLE `pembimbing`
  ADD PRIMARY KEY (`IDPembimbing`);

--
-- Indexes for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD PRIMARY KEY (`IDSkripsi`),
  ADD KEY `nim_mhs_skripsi` (`IDMahasiswaSkripsi`),
  ADD KEY `uploader` (`Uploader`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `id_jurusan_mhs` (`IDJurusanUser`),
  ADD KEY `id_konsentrasi_mhs` (`IDKonsentrasiUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kartubimbingan`
--
ALTER TABLE `kartubimbingan`
  MODIFY `IDKartu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `IDKegiatan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `konsentrasi`
--
ALTER TABLE `konsentrasi`
  MODIFY `IDKonsentrasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `IDNotifikasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pembimbing`
--
ALTER TABLE `pembimbing`
  MODIFY `IDPembimbing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `skripsi`
--
ALTER TABLE `skripsi`
  ADD CONSTRAINT `uploader` FOREIGN KEY (`Uploader`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
