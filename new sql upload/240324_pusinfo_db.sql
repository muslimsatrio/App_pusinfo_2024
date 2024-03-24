-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2024 pada 07.53
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pusinfo_db`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporans`
--

CREATE TABLE `laporans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bidang` varchar(255) NOT NULL,
  `wilayah` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` varchar(5000) NOT NULL,
  `catatan` varchar(5000) NOT NULL,
  `tempat` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `laporans`
--

INSERT INTO `laporans` (`id`, `bidang`, `wilayah`, `tanggal`, `judul`, `isi`, `catatan`, `tempat`, `user`, `filename`, `url`, `created_at`, `updated_at`) VALUES
(1, 'France', 'DGSE', '2023-11-27', 'Isu di Ukraina', '-Campur Tangan Moskow Dalam Kampanye Pemilihan Umum Lokal Di Moldova\r\n-Penggunaan Kehadiran Online Jihadis Berbahasa Rusia Sebagai Pendorong\r\nRadikalisasi', 'Karena pemilihan presiden berikutnya di Moldova direncanakan pada musim gugur 2024, Moskow menunjukkan kapasitasnya untuk memobilisasi jaringannya untuk menimbang kehidupan politik negara yang sekarang secara resmi menjadi kandidat untuk bergabung dengan Uni Eropa.\r\n\r\nJaringan \"Negara Islam\" Kaukasia dan Asia Tengah di Eropa telah semakin mengintegrasikan anggota gerakan endogen, serta profil jihadis yang datang dari luar negeri, termasuk sekitar seratus orang yang datang dari Ukraina setelah invasi Rusia pada Februari 2022.', '-', 'Admin_01', '20240324_01_ND_DGSE Prancis 27 Nov 2023.pdf', 'uploads/20240324_01_ND_DGSE Prancis 27 Nov 2023.pdf', '2024-03-23 22:58:22', '2024-03-23 22:58:22'),
(2, 'Japan', 'DIH', '2023-11-13', 'Proyek Megakonstelasi Komunikasi Orbit Bumi Rendah Nasional Tiongkok \"Guowang (GW)\"', 'Cina meluncurkan \"Longjiang-3\", satelit komunikasi eksperimental panel datar dan dapat ditumpuk, untuk membantu membangun konstelasi satelit berskala besar.', 'Satelit yang digunakan dalam \"GW\" kemungkinan besar akan mendekati \"Starlink\" dalam hal berat dan bentuk mengingat banyaknya satelit yang dibutuhkan dan tren pengembangan satelit konstelasi komunikasi berskala besar di Cina. Selain itu, untuk membangun \"GW\", dapat diasumsikan bahwa peluncuran multi-satelit pada frekuensi tinggi dengan menggunakan roket berskala menengah hingga besar akan diperlukan.\r\n\r\nMeskipun akuisisi klien dan pendapatan diperlukan untuk mengembalikan biaya konstruksi dan mempertahankan \"GW\", permintaan dari individu tanpa akses Internet domestik, negara-negara sahabat, dan wilayah One Belt, One Road, yang semuanya merupakan klien potensial, masih rendah. Selain itu, ada juga kemungkinan bahwa biaya tidak akan pulih secara memadai setelah selesai. Oleh karena itu, untuk mempertahankan \"GW\", sejumlah besar modal mungkin akan terus dibutuhkan.', '-', 'Admin_01', '20240324_03_ND_DIH Jepang 13 Nov 2023.pdf', 'uploads/20240324_03_ND_DIH Jepang 13 Nov 2023.pdf', '2024-03-23 23:05:28', '2024-03-23 23:05:28'),
(3, 'France', 'DGSE', '2023-11-24', 'Terorisme dan Proliferasi', '- Komando Pusat Al-Qaeda Telah Menerbitkan Sebuah Komunike Yang Mengancam Untuk Mendukung Hamas Dan Melegitimasi Jihad\r\n- Serangan Terhadap Turis Di Taman Nasional Ratu Elizabeth Uganda', 'Komando pusat Al Qaeda, yang berbasis di Perancis, menyampaikan sebuah pernyataan pada tanggal 13 Oktober, yang berjudul \"kemenangan Alah sudah dekat,\" melalui saluran propaganda resmi As Sahab, yang menyerukan kepada komunitas Muslim dunia untuk mendukung kelompok-kelompok Palestina melawan Israel.\r\n\r\nPada tanggal 17 Oktober 2023, dua turis asal Inggris dan Afrika Selatan Afrika Selatan, ditemani oleh pemandu Uganda mereka, dibunuh di Taman Nasional Queen Elizabeth di barat Uganda, dekat perbatasan dengan Republik Demokratik Kongo (DRC).', '-', 'Admin_01', '20240324_02_ND_DGSE Prancis 24 Nov 2023.pdf', 'uploads/20240324_02_ND_DGSE Prancis 24 Nov 2023.pdf', '2024-03-23 23:08:08', '2024-03-23 23:08:08'),
(4, 'Japan', 'DIH', '2023-11-10', 'Armada Tiongkok Mengitari Jepang, Melewati Pulau Senkaku dan Sakishima untuk Pertama Kalinya', 'Kemungkinan operasi militer terpadu yang terkait dengan politik dan diplomasi terhadap Jepang, negara tuan rumah KTT G7', 'Tidak ada pengumuman resmi dari pihak Tiongkok mengenai aktivitas kapal angkatan laut Tiongkok kali ini. Kapal perusak berpeluru kendali kelas Renhai mengacu pada satu kapal dengan nomor lambung 102, sedangkan kapal perusak berpeluru kendali kelas Luyang III mencakup dua kapal dengan nomor lambung 119 dan 121. Selain itu, ada satu kapal fregat kelas Jiangkai dengan nomor lambung 542 dan satu kapal pengisian ulang kelas Fuchi dengan nomor lambung 889, sehingga totalnya ada lima kapal.', '-', 'Admin_01', '20240324_04_ND_DIH Jepang 10 Nov 2023.pdf', 'uploads/20240324_04_ND_DIH Jepang 10 Nov 2023.pdf', '2024-03-23 23:09:33', '2024-03-23 23:09:33'),
(5, 'France', 'DGSE', '2023-11-22', 'Isu di Afrika Update', '- Mali: Angkatan Bersenjata Mali Memasuki Kota Kidal\r\n- Republik Demokratik Kongo: Situasi Sebelum Pemilihan Presiden 20 Desember\r\n- Mozambik: Kemampuan Negara Islam Untuk Bertindak\r\n- Ethiopia: Penilaian Terhadap Pelaksanaan Perjanjian Pretoria\r\n- Nigeria: Jenderal Salifou Mody, Menteri Pertahanan', 'Pengambilalihan Kidal oleh tentara Mali merupakan kemenangan simbolis dalam beberapa hal. \r\n\r\nRekan dekat Presiden Felix Tshisekedi telah\r\ntelah berusaha untuk meyakinkan Kepala Negara agar membatalkan pencalonan lawannya dari Katanga, Moise Katumbi, untuk pemilihan 20 Desember 2023', '-', 'Admin_01', '20240324_05_ND_DGSE Prancis 22 Nov 2023.pdf', 'uploads/20240324_05_ND_DGSE Prancis 22 Nov 2023.pdf', '2024-03-23 23:47:22', '2024-03-23 23:48:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
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
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `role_id` int(10) NOT NULL,
  `password` varchar(255) NOT NULL,
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
(4, 'Admin TU', 'Admin_TU', 4, '$2y$10$q3YXwbF07c1NQRUzXD/RgOnYVL62EW9kXvw9Cn9EU7rl6ScjT1Fc.', '2022-08-31 08:16:09', '2022-08-31 08:16:09'),
(5, 'Kabadan', 'Kabadan', 4, '$2y$10$q3YXwbF07c1NQRUzXD/RgOnYVL62EW9kXvw9Cn9EU7rl6ScjT1Fc.', '2024-03-23 03:53:11', '2024-03-23 03:53:11'),
(6, 'Admin_01', 'Admin_01', 4, '$2y$10$q3YXwbF07c1NQRUzXD/RgOnYVL62EW9kXvw9Cn9EU7rl6ScjT1Fc.', '2024-03-23 03:53:11', '2024-03-23 03:53:11'),
(7, 'Admin_02', 'Admin_02', 4, '$2y$10$q3YXwbF07c1NQRUzXD/RgOnYVL62EW9kXvw9Cn9EU7rl6ScjT1Fc.', '2024-03-23 03:53:11', '2024-03-23 03:53:11'),
(8, 'Admin_03', 'Admin_03', 4, '$2y$10$q3YXwbF07c1NQRUzXD/RgOnYVL62EW9kXvw9Cn9EU7rl6ScjT1Fc.', '2024-03-23 03:53:11', '2024-03-23 03:53:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
