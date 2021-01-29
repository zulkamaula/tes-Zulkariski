-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Jan 2021 pada 05.26
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tes_zulkariski`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `id_fakultas` int(11) NOT NULL,
  `nama_fakultas` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`id_fakultas`, `nama_fakultas`) VALUES
(1, 'FTIK - (Fakultas Teknik Ilmu Komputer)'),
(2, 'FH - (Fakultas Hukum)'),
(3, 'FEB - (Fakultas Ekonomi dan Bisnis)'),
(4, 'FK - (Fakultas Kedokteran)'),
(5, 'FMIPA - (Fakultas Matematika dan Ilmu Pengetahuan Alam)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(12) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `tmp_lahir` varchar(128) NOT NULL,
  `tgl_lahir` varchar(128) NOT NULL,
  `tahun_masuk` varchar(128) NOT NULL,
  `alamat` varchar(128) NOT NULL,
  `telepon` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `id_prodi`, `nama`, `tmp_lahir`, `tgl_lahir`, `tahun_masuk`, `alamat`, `telepon`) VALUES
(1, '201643501117', 1, 'Zulkariski Mauladi', 'Jakarta', '09 Juli 1998', '2016', 'Jl. Pasir Angin, Kec. Tajurhalang', '085852498883'),
(2, '201643501116', 1, 'Hilmi Fakhrudin', 'Jakarta', '20 Agustus 1996', '2016', 'Jl. Klender Baru, Bekasi, Jawa Barat', '08181245622'),
(3, '201643501105', 4, 'Muhammad Hudzaifah', 'Jakarta', '09 Juni 1998', '2017', 'Jl. Masjid Ghazali, Kp. Rawa Panjang', '089608749449'),
(4, '201643501107', 7, 'Aziz Nurul Hakim', 'Grobogan', '27 September 1999', '2018', 'Jln. Mangga 5 blok D 62 RT 001 RW 003 Perumahan Klodran Indah, Klodran, Colomadu, Karanganyar', '08212121888'),
(5, '201643501919', 3, 'Suryadinata', 'Depok', '2 Feruari 1998', '2014', 'Jl. Meran No.88 Cilodong', '089198198989'),
(6, '20162782780', 5, 'Muhammad Fuad Yassir', 'Jepara', '7 September 1996', '2015', 'Desa Kelet Rt 23 Rw 4 Kecamatan Keling Kabupaten Jepara Provinsi Jawa Tengah', '081861676'),
(7, '201422787987', 9, 'Harry noviady ', 'Jakarta', '16 Januari 1997', '2016', 'Jl.wijaya kusuma 3 no.139 jakarta timur,prumnas klender, kec:Duren sawit.kel:Malaka sari', '0898980198'),
(8, '201918726276', 6, 'Agung Nugroho', 'Cianjur', '8 Oktober 1998', '2016', 'Kp. Padakati Peuntas RT/RW 01/05 Desa Tegallega Kec. Warungkondang Kab. Cianjur', '029297798'),
(9, '2018176165', 8, 'Adi Mahdianoor', 'Barito Timur', '4 April 1997', '2016', 'Magantis, Kec.Dusun Timur Kab. Barito Timur, Kalimantan Tengah', '0891891891898'),
(10, '209101897897', 8, 'Novan Nugroho', 'Surakarta', '18 Mei 1999', '2018', 'Jajar RT 02/04 Laweyan, Surakarta', '0819819898198');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` int(11) NOT NULL,
  `id_fakultas` int(11) NOT NULL,
  `nama_prodi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `id_fakultas`, `nama_prodi`) VALUES
(1, 1, 'Teknik Informatika'),
(2, 2, 'Ilmu Hukum'),
(3, 3, 'Ilmu Ekonomi'),
(4, 3, 'Manajemen'),
(5, 3, 'Akutansi'),
(6, 3, 'Ekonomi Islam dan Bisnis Islam'),
(7, 4, 'Ilmu Kedokteran'),
(8, 5, 'Biologi'),
(9, 5, 'Geografi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`id_fakultas`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  MODIFY `id_fakultas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
