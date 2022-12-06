-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2022 pada 07.15
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posyandu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bayi`
--

CREATE TABLE `bayi` (
  `id_bayi` int(11) NOT NULL,
  `nik_bayi` varchar(16) NOT NULL,
  `nama_bayi` varchar(50) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `jk_bayi` enum('L','P') NOT NULL,
  `umur_bayi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bayi`
--

INSERT INTO `bayi` (`id_bayi`, `nik_bayi`, `nama_bayi`, `ttl`, `agama`, `jk_bayi`, `umur_bayi`) VALUES
(1, '8937424837840983', 'Ilham Pramana Putra', 'Depok, 20 Jun 2020', 'Islam', 'L', 2),
(2, '8293498473920387', 'Cynthia Maulida', 'Jakarta, 30 Des 2020', 'Kristen', 'P', 2),
(11, '8364827436810276', 'Rina Nurmayanti', 'Depok, 17 Jul 2019', 'Islam', 'P', 3),
(16, '8732845301937483', 'Denisa Aprilia', 'Depok, 12 Jan 2019', 'Islam', 'P', 3),
(19, '8394029465930573', 'Indri Darmayanti', 'Jakarta, 19 Jul 2019', 'Islam', 'P', 3),
(21, '8937274635276549', 'Almira Renata', 'Depok, 19 Des 2018', 'Katholik', 'P', 4),
(22, '8932742104827436', 'Nurmaida', 'Bogor, 13 maret 2019', 'Islam', 'P', 3),
(23, '8930475648201937', 'Rendy Dharmayanto', 'Jakarta, 16 Jun 2020', 'Islam', 'L', 2),
(24, '8320947389475127', 'dani adha', 'Jakarta, 12 Des 2020', 'Islam', 'L', 2),
(25, '8974365478320987', 'Rizky Januar', 'Jakarta, 24 Januari 2020', 'Kristen', 'L', 2),
(27, '8657384023910283', 'Putri Mariska', 'Bandung, 24 Sep 2019', 'Islam', 'P', 3),
(28, '842904726389201', 'Dewi Rasmita', 'Jakarta, 15 Sep 2019', 'Islam', 'P', 3),
(30, '8920387539265301', 'Adinda Tasya', 'Depok, 16 Agus 2020', 'Islam', 'P', 2),
(31, '8927356253672892', 'I Gede Bayu', 'Bali, 26 Mei 2017', 'Hindu', 'L', 5),
(32, '8038293652810928', 'Lina Apriyanti', 'Depok, 28 Okt 2020', 'Islam', 'P', 2),
(33, '8938827378308729', 'arif rahman', 'jakarta, 24 oktober 2020', 'Islam', 'L', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `berobat`
--

CREATE TABLE `berobat` (
  `id_berobat` int(11) NOT NULL,
  `id_bayi` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `id_ibu` int(11) NOT NULL,
  `tgl_berobat` date NOT NULL,
  `tindakan` text NOT NULL,
  `diagnosa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `berobat`
--

INSERT INTO `berobat` (`id_berobat`, `id_bayi`, `id_petugas`, `id_ibu`, `tgl_berobat`, `tindakan`, `diagnosa`) VALUES
(4, 2, 1, 0, '2022-05-21', 'Melakukan Imunisasi Campak ', 'Suntik'),
(15, 13, 8, 10, '2022-10-11', 'Melakukan Vaksinasi polio', 'Suntik'),
(16, 19, 11, 11, '2022-11-15', 'Melakukan Vaksinasi campak', 'Suntik'),
(18, 2, 3, 5, '2022-11-16', 'Melakukan Vaksinasi BCG', 'Tahap Pertama'),
(19, 23, 12, 12, '2022-09-12', 'Melakukan Vaksinasi Polio', 'Tahap Pertama'),
(20, 25, 3, 1, '2022-11-12', 'Vaksinasi BCG', 'Suntik'),
(21, 28, 8, 10, '2022-11-12', 'Vaksinasi Campak', 'Tahap Pertama'),
(22, 31, 8, 13, '2022-11-12', 'Vaksinasi Polio', 'Tahap pertama'),
(23, 22, 10, 7, '2022-12-04', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ibu`
--

CREATE TABLE `ibu` (
  `id_ibu` int(15) NOT NULL,
  `nik_ibu` varchar(16) NOT NULL,
  `nama_ibu` varchar(50) NOT NULL,
  `tempat_lahir` varchar(50) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gol_dar` varchar(20) NOT NULL,
  `nama_suami` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `kota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ibu`
--

INSERT INTO `ibu` (`id_ibu`, `nik_ibu`, `nama_ibu`, `tempat_lahir`, `tgl_lahir`, `gol_dar`, `nama_suami`, `alamat`, `kecamatan`, `kota`) VALUES
(1, '8900001345649312', 'Dini Megawati', 'Jakarta', '1987-03-12', 'o', 'Herman', 'Jl. pesona Laguna 2 blok k2 no 12', 'Tapos', 'Depok'),
(7, '8700001245231890', 'Mirnayanti rahma', 'Bogor', '1990-08-19', 'o', 'Ramdhan Adi Sucipto', 'Jl. Kenangan No.12 Rt.004/Rw.022', 'Sukamaju', 'Depok'),
(9, '8772000345300134', 'Maharani Dewi', 'Depok', '1990-07-19', 'o', 'Rahman Hakim', 'Jl. Sidakarya 04 Rt.005/010', 'Tapos', 'Depok'),
(10, '8690276210987200', 'Astri Wulaningsih', 'Jakarta', '1991-10-19', 'o', 'Aditya Rahman', 'Jl. Kapten Yos sudarso no 12 Rt.007/005', 'Cilangkap', 'Depok'),
(11, '8947237482930192', 'Adinda Rahma', 'Jakarta', '1990-09-19', 'o', 'Beni Saputra Aji', 'Jl. Sukmajaya No 12 Rt.005/014', 'Jatijajar', 'Depok'),
(12, '8000720333025003', 'Gita Saputri', 'Bogor', '1990-09-14', 'o', 'Ahmad Dwi Saputra', 'Jl. Karya no 14 Rt.006/009', 'Sukamaju', 'Depok'),
(13, '8265647689532190', 'Rani Dwi Arsyi', '', '0000-00-00', '', 'Muhammad Jalaludin', 'Jl. Pesona laguna 2', '', ''),
(14, '8762019827618920', 'Fera Jelita', '', '0000-00-00', '', 'Mulyadi', 'Jl. Raya Tapos Rt.004/022', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `imunisasi`
--

CREATE TABLE `imunisasi` (
  `id_imunisasi` int(11) NOT NULL,
  `nama_imunisasi` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `imunisasi`
--

INSERT INTO `imunisasi` (`id_imunisasi`, `nama_imunisasi`) VALUES
(11, 'HB-0 (0-7 hari)'),
(12, 'BCG 1'),
(13, 'Polio 1'),
(14, 'DPT-HB-Hib 1'),
(16, 'DPT-HB-Hib 2'),
(17, 'Polio 3'),
(18, 'DPT-HB-Hib 3'),
(19, 'Polio 2'),
(20, 'IPV'),
(21, 'Campak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama_obat` varchar(80) NOT NULL,
  `harga_obat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `obat`
--

INSERT INTO `obat` (`id_obat`, `nama_obat`, `harga_obat`) VALUES
(2, 'Panadol Anak', 20000),
(3, 'Sumang', 5000),
(4, 'Sanmol', 18000),
(5, 'Tolak Angin Anak', 4000),
(6, 'Antimo', 2000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`) VALUES
(1, 'Aldian Putra'),
(3, 'Rafi Nur Rahman'),
(8, 'Beni Zulkarnaen'),
(10, 'Rendi Nurmayanto'),
(11, 'Muhammad Irham saputra'),
(12, 'Irnawati Romadhoni'),
(14, 'Denisa maharani');

-- --------------------------------------------------------

--
-- Struktur dari tabel `resep_imunisasi`
--

CREATE TABLE `resep_imunisasi` (
  `id_resep` int(11) NOT NULL,
  `id_berobat` int(11) NOT NULL,
  `id_imunisasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `resep_imunisasi`
--

INSERT INTO `resep_imunisasi` (`id_resep`, `id_berobat`, `id_imunisasi`) VALUES
(15, 4, 21),
(23, 16, 21),
(25, 18, 12),
(26, 19, 13),
(29, 22, 13),
(30, 21, 21),
(31, 20, 12);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(256) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `nama_lengkap`) VALUES
(10, 'mail', '8cb2237d0679ca88db6464eac60da96345513964', 'mail abdul'),
(11, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Arief'),
(12, 'sulthon', '1b6394a3df39327212815d4a3410ea31d61cf511', 'sulthon hadi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bayi`
--
ALTER TABLE `bayi`
  ADD PRIMARY KEY (`id_bayi`);

--
-- Indeks untuk tabel `berobat`
--
ALTER TABLE `berobat`
  ADD PRIMARY KEY (`id_berobat`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `id_bayi` (`id_bayi`),
  ADD KEY `id_ibu` (`id_ibu`);

--
-- Indeks untuk tabel `ibu`
--
ALTER TABLE `ibu`
  ADD PRIMARY KEY (`id_ibu`);

--
-- Indeks untuk tabel `imunisasi`
--
ALTER TABLE `imunisasi`
  ADD PRIMARY KEY (`id_imunisasi`);

--
-- Indeks untuk tabel `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `resep_imunisasi`
--
ALTER TABLE `resep_imunisasi`
  ADD PRIMARY KEY (`id_resep`),
  ADD KEY `id_obat` (`id_imunisasi`),
  ADD KEY `id_berobat` (`id_berobat`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bayi`
--
ALTER TABLE `bayi`
  MODIFY `id_bayi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `berobat`
--
ALTER TABLE `berobat`
  MODIFY `id_berobat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `ibu`
--
ALTER TABLE `ibu`
  MODIFY `id_ibu` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `imunisasi`
--
ALTER TABLE `imunisasi`
  MODIFY `id_imunisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `resep_imunisasi`
--
ALTER TABLE `resep_imunisasi`
  MODIFY `id_resep` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `berobat`
--
ALTER TABLE `berobat`
  ADD CONSTRAINT `berobat_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `resep_imunisasi`
--
ALTER TABLE `resep_imunisasi`
  ADD CONSTRAINT `resep_imunisasi_ibfk_1` FOREIGN KEY (`id_imunisasi`) REFERENCES `imunisasi` (`id_imunisasi`) ON DELETE CASCADE,
  ADD CONSTRAINT `resep_imunisasi_ibfk_2` FOREIGN KEY (`id_berobat`) REFERENCES `berobat` (`id_berobat`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
