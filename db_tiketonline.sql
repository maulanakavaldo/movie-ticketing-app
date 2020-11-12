-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Des 2019 pada 14.18
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tiketonline`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(11) NOT NULL,
  `film` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `waktu` varchar(30) NOT NULL,
  `tik_dewasa` int(11) NOT NULL,
  `tik_anak` int(11) NOT NULL,
  `total_bayar` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id`, `film`, `tanggal`, `waktu`, `tik_dewasa`, `tik_anak`, `total_bayar`) VALUES
(1, 'Avengers', 'Kamis, 26 Desember 2019', '12:00', 1, 2, 'Rp 96900'),
(2, 'Avengers', 'Selasa, 24 Desember 2019', '12:00', 1, 2, 'Rp 96900'),
(3, 'Avengers', 'Jumat, 27 Desember 2019', '22:00', 2, 2, 'Rp 112200'),
(4, 'Avengers', 'Jumat, 27 Desember 2019', '16:00', 2, 2, 'Rp 112200'),
(5, 'Parasite', 'Jumat, 20 Desember 2019', '10:00', 1, 2, 'Rp 71400'),
(6, 'Avengers End Game', 'Jumat, 20 Desember 2019', '08.00', 1, 1, '0'),
(7, 'Parasite', 'Jumat, 27 Desember 2019', '10:00', 2, 1, 'Rp 96900'),
(8, 'Parasite', 'Rabu, 25 Desember 2019', '00:00', 2, 1, 'Rp 96900'),
(9, 'Parasite', 'Jumat, 27 Desember 2019', '16:00', 2, 1, 'Rp 96900'),
(10, 'Spiderman Far From Home', 'Selasa, 24 Desember 2019', '12:00', 2, 1, 'Rp 96900'),
(11, 'Avengers', 'Jumat, 27 Desember 2019', '12:00', 2, 1, 'Rp 96900');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nm_depan` varchar(20) NOT NULL,
  `nm_belakang` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `alamat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nm_depan`, `nm_belakang`, `username`, `password`, `alamat`) VALUES
(1, 'Maulana', 'Kavaldo', 'maulana', 'ald123#', 'Purworejo'),
(2, 'Abel', 'Situmorang', 'abel', 'abel', 'Palembang'),
(3, 'Funny', 'Puspita', 'funny', 'funnysa', 'Surabaya'),
(4, 'Nando', 'Berlio', 'nando', 'nandober', 'Sulawesi'),
(5, 'adlan', 'syafaat', 'mochsyaf', '12345', 'tes');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
