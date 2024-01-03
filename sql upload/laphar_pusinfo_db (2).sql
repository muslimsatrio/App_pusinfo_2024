-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Okt 2022 pada 14.16
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laphar_pusinfo_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `budget`
--

CREATE TABLE `budget` (
  `id` int(11) NOT NULL,
  `budget` varchar(2555) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `budget`
--

INSERT INTO `budget` (`id`, `budget`, `nama`, `kota`) VALUES
(1, '500000000', 'awal', 'jakarta\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporans`
--

CREATE TABLE `laporans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bidang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wilayah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `laporans`
--

INSERT INTO `laporans` (`id`, `bidang`, `wilayah`, `tanggal`, `judul`, `isi`, `catatan`, `tempat`, `user`, `created_at`, `updated_at`) VALUES
(2, 'Dagri', 'Wilayah1', '2022-09-01', 'Pemerintah  Indonesia Siapkan Dua Ribu Dosis Vaksin Cacar Monyet dari Denmark', 'Pada tanggal 30 Agustus 2022, Menteri Kesehatan Budi Gunadi Sadikin mengatakan, sesuai perintah Presiden Joko Widodo untuk menyiapkan vaksin cacar monyet atau Monkeypox, Kemenkes telah memesan sebanyak dua ribu dosis vaksin cacar monyet dari perusahaan Bavarian Nordic Denmark dari target alokasi pengadaan sekitar 10 ribu dosis vaksin. Menkes juga menjelaskan merujuk pada tingkat penularan cacar monyet saat ini tidak seperti penyakit dengan tingkat penularan tinggi seperti virus corona (Covid-19), karena itu, pengadaan vaksin cacar monyet tersebut terbatas hanya diperuntukkan bagi penyintas, kontak erat pasien, dan warga yang memiliki resiko tinggi terpapar cacar monyet. Selain itu juga, ada dua tahapan yang harus dipenuhi dalam menyiapkan pengadaan vaksin tersebut yaitu, tahap pertama harus melalui kajian Indonesia Technical Advisory Group on Imun (ITAGI) dan yang kedua rekomendasi dari Badan Pengawas Obat dan Makanan (BPOM), dan alasan pengadaan vaksin masih terbatas juga karena Badan Kesehatan Dunia (WHO) hingga saat ini belum mengeluarkan rekomendasi kepada seluruh negara untuk melakukan vaksinasi massal warganya.', 'Berdasarkan data per tanggal 28 Agustus 2022, dari 38 suspek cacar monyet di Indonesia secara keseluruhan sudah dinyatakan negatif atau discarded, sementara dari 48.227 ribu kasus konfirmasi cacar monyet di dunia, setidaknya 13 orang yang tercatat meninggal dunia pasca terinfeksi.', 'Jakarta', 'Admin Dagri', '2022-08-31 07:51:17', '2022-08-31 07:51:17'),
(4, 'Ameroaf', 'Amerika', '2022-09-07', 'Kesepakatan AS Dan Indonesia Dalam Meningkatkan Energi', 'Pada tanggal 5 September 2022, Utusan Khusus Presiden AS untuk Iklim, John Kerry, mengadakan pertemuan dengan Menteri Koordinator Bidang Kemaritiman dan Investasi Indonesia, Luhut Pandjaitan, untuk membahas kerangka kerja untuk mempercepat penyebaran energi terbarukan, dengan mempercepat peralihan dari pembangkit listrik batu bara ke energi terbarukan sambil memperkuat upaya untuk mencapai akses energi yang universal, terjangkau, dan andal.\r\n\r\nKerry dan Luhut telah mengadakan pembicaraan dengan lembaga keuangan besar, termasuk anggota Glasgow Financial Alliance for Net Zero (GFANZ). Mereka juga telah sepakat untuk bertemu dalam dua minggu ke depan untuk bekerja menuju penyelesaian kesepakatan.', 'John Kerry telah melakukan perjalanan ke Bali pada 30 Agustus untuk menghadiri Pertemuan Tingkat Menteri Iklim dan Lingkungan G20, dan telah menyatakan komitmen AS untuk memobilisasi keuangan guna mendukung transisi energi di Indonesia.', 'Amerika', 'Admin Ameroaf', '2022-09-06 23:22:59', '2022-09-06 23:22:59'),
(5, 'Aspas', 'Asgara_Auceania', '2022-06-15', 'Australia menginginkan kerja sama yang luas dan mendalam dengan Jepang', 'Pada tanggal 15 Juni 2022 melalui channelnewsasia, mempublikasikan bahwa Australia menginginkan kerja sama yang \"luas dan mendalam\" dengan Jepang ketika kedua sekutu AS itu menghadapi situasi keamanan yang kompleks di Asia. Situasi itu terjadi sebagai akibat dari invasi Rusia ke Ukraina, meningkatnya inflasi, dan gangguan Covid-19, kata Menteri Pertahanan Australia Richard Marles, Rabu (15/6/2022). Kawasan kami menghadapi situasi strategis paling kompleks yang kami ketahui sejak akhir Perang Dunia Kedua. Kedua negara itu telah meningkatkan kerja sama pertahanan sebagai penyeimbang kekuatan dan pengaruh militer China yang tumbuh di Asia. Invasi Rusia ke Ukraina memacu pendalaman hubungan itu karena kekhawatiran bahwa invasi itu dapat mendorong China untuk menggunakan kekuatannya untuk melawan Taiwan yang memiliki pemerintahan sendiri.', 'Australia dan Jepang akan menggunakan perjanjian akses timbal balik yang ditandatangani pada Januari. Lewat perjanjian itu kedua negara bersepakat untuk terlibat dalam kerja sama yang lebih dalam dan lebih canggih yang akan saling memperkuat operabilitas (kemampuan mengoperasikan sistem) kemiliteran mereka.', 'Australia', 'Admin Aspas', '2022-09-29 21:05:46', '2022-09-29 21:05:46'),
(6, 'Aspas', 'Astimteng', '2022-06-15', 'Jepang dan Australia Perkuat Kerjasama Pertahanan', 'Pada tanggal 15 Juni 2022, Menhan Jepang Nubuo Kishi dan Menhan Australia Richard Marles mengadakan pertemuan di Tokyo Jepang. Kedua Menhan berkomitmen memperdalam dan memperluas hubungan kerjasama pertahanan kedua negara di Indo-Pasifik untuk menghadapi situasi keamanan yang kompleks di Asia sebagai akibat dari invasi Rusia ke Ukraina, meningkatnya inflasi, dan gangguan COVID-19. Secara khusus, Jepang dan Australia khawatir bahwa invasi Rusia ke Ukraina akan mendorong China untuk menggunakan kekuatan terhadap Taiwan. Australia dan Jepang akan menggunakan perjanjian akses timbal balik yang ditandatangani pada Januari 2022 untuk melakukan kerja sama yang lebih maju yang akan memperkuat interoperabilitas militer kedua negara.', '-', 'Jepang', 'Admin Aspas', '2022-09-29 21:06:51', '2022-09-29 21:06:51'),
(7, 'Ameroaf', 'Amerika', '2022-09-20', 'AS Diadukan Iran ke Mahkamah Internasional', 'Pada tanggal 20 September 2022, Iran mengadukan AS ke Mahkamah Internasional (ICJ) dan menuntut pembebasan asetnya yang dibekukan. Kunjungan Presiden Sayid Ebrahim Raisi ke New York memiliki tujuan untuk mencairkan aset sebesar $2 miliar yang berada di AS. Iran meyakini bahwa AS telah melanggar Treaty of Amity antara kedua negara. AS mengklaim bahwa mereka berencana untuk menggunakan aset beku Iran untuk membayar kompensasi kepada para korban tindakan dan tanpa dokumen valid yang dikaitkan dengan Tehran.', '-', 'Amerika', 'Admin Ameroaf', '2022-09-29 21:09:52', '2022-09-29 21:09:52'),
(8, 'Ameroaf', 'Afrika', '2022-09-21', 'AAD 2022 Diadakan di Afrika Selatan', 'Africa Aerospace and Defense (AAD) 2022, digelar di Pangkalan AU Waterkloof Pretoria, Afrika Selatan dari 21-25 September 2022. Diikuti Italia, Turki, Inggris, India, dan Pakistan  termasuk  AS, Belgia, dan China. Event tersebut untuk memberikan kontribusi dalam memajukan industri pertahanan di seluruh dunia dan untuk pertama kalinya pesawat tak berawak/drone akan diizinkan terbang selama dalam pameran. Africa Aerospace and Defense (AAD) 2022, dibagi dalam dua sesi, tiga hari untuk perdagangan dan dua hari  untuk pertunjukan udara.', '-', 'Afrika', 'Admin Ameroaf', '2022-09-29 21:11:09', '2022-09-29 21:11:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_13_080704_create_companies_table', 2),
(6, '2022_07_14_070659_create_tb_user_table', 3),
(7, '2022_07_18_070115_create_laporans_table', 4),
(8, '2022_07_18_071747_create_laporans_table', 5),
(9, '2022_07_24_155648_create_files_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(10) NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `name`, `username`, `role_id`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Admin Dagri', 'Admin_Dagri', 1, '$2y$10$cqMl647QsZ8yjYHu4FJH5uH6laU.N/ZEOoWtHhQbtds7/yd49e96K', '2022-08-31 05:08:48', '2022-08-31 05:08:48'),
(2, 'Admin Ameroaf', 'Admin_Ameroaf', 2, '$2y$10$W/pXAZB1HRc0u2oNnhThmuQdYCJr9mTnS9VWWDVqFjIQ12sXkD8uS', '2022-08-31 08:15:20', '2022-08-31 08:15:20'),
(3, 'Admin Aspas', 'Admin_Aspas', 3, '$2y$10$mQGpvZj4RpMEyLly43I6Le5MWNP2WtuVOzviYD3oz.eKDFaiX0lj6', '2022-08-31 08:15:46', '2022-08-31 08:15:46'),
(4, 'Admin TU', 'Admin_TU', 4, '$2y$10$q3YXwbF07c1NQRUzXD/RgOnYVL62EW9kXvw9Cn9EU7rl6ScjT1Fc.', '2022-08-31 08:16:09', '2022-08-31 08:16:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `tb_user_username_unique` (`username`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `budget`
--
ALTER TABLE `budget`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `laporans`
--
ALTER TABLE `laporans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
