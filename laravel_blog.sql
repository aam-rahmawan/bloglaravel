-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 22 Agu 2019 pada 10.14
-- Versi Server: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_04_10_012732_create_table_categoris', 1),
(4, '2019_04_10_013857_create_table_artikels', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_artikels`
--

CREATE TABLE `table_artikels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` text COLLATE utf8mb4_unicode_ci,
  `categoris_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_artikels`
--

INSERT INTO `table_artikels` (`id`, `judul`, `body`, `gambar`, `categoris_id`, `created_at`, `updated_at`) VALUES
(13, 'pemahaman-java-script-bagi-pemula', '<p>\r\n\r\n</p><p>JavaScript dibuat dan didesain selama sepuluh hari oleh Brandan Eich, seorang karyawan Netscape, pada bulan September 1995. Awalnya bahasa pemrograman ini disebut Mocha, kemudian diganti ke Mona, lalu LiveScript sebelum akhirnya resmi menyandang nama JavaScript. Versi pertama dari bahasa ini hanya terbatas di kalangan Netscape saja. Fungsionalitas yang ditawarkan pun terbatas. Namun, JavaScript terus dikembangkan oleh komunitas developer yang tak henti-hentinya mengerjakan bahasa pemrograman ini.</p><p>Pada tahun 1996, JavaScript secara resmi disebut sebagai ECMAScript, di mana ECMAScript 2 diluncurkan pada tahun 1998 dan ECMAScript 3 diperkenalkan pada tahun 1999. ECMAScript tersebut dikembangkan hingga akhirnya menjadi JavaScript sebagaimana yang kita kenal saat ini. Tak hanya lintas browser, JavaScript juga bisa digunakan di berbagai perangkat, termasuk perangkat mobile dan komputer.</p><p>Sejak saat itu, JavaScript terus bertumbuh dan berkembang. Pada akhirnya di tahun 2016, sebanyak 92% website diketahui menggunakan JavaScript. Hanya dala kurun waktu dua puluh tahun, JavaScript telah beralih dari bahasa pemrograman yang serba terbatas dan ‘primitif’ menjadi salah satu tool terpenting bagi web developer. Jika sebagian besar waktu dihabiskan untuk berselancar di internet, maka Anda pastinya sudah sangat familiar dengan JavaScript.</p>\r\n\r\n<br><p></p>', 'artikel/2rG3DBwzBARUyIzjaINRoyRjIyJEgd31BeSQlBXY.jpeg', 21, '2019-04-11 18:01:51', '2019-04-11 18:01:51'),
(14, 'apa-itu-wordpress', '<p>\r\n\r\nWordPress.org atau sering disebut juga self-hosted WordPress adalah program web-platform di mana Anda dapat membuat website, namun Anda harus membeli <a target=\"_blank\" rel=\"nofollow\" href=\"https://makinrajin.com/belajar-hosting/\">web hosting</a>&nbsp;dan domain sendiri. Berbeda dengan WordPress (self-hosted), wordpress.com sudah menyediakan domain dan hosting. \r\n\r\n<br></p>', 'artikel/yt0QZPuvWvi9bIxllRPzDUY9GJkY2WdmGyZRqnZe.jpeg', 22, '2019-04-11 18:04:54', '2019-04-11 18:04:54'),
(15, 'cara-mudah-membuat-halaman-blog', '<p>\r\n\r\n</p><div>Salam untuk semua para pengunjung <a target=\"_blank\" rel=\"nofollow\" href=\"http://ilmuwebsite.com/\"><b>ilmuwebsite.com</b></a>. Alhamdulillah wa syukurillah kesemptan kali ini saya kembali akan berbagi artikel sequel / lanjutan dari artikel sebelumnya masih berkenaan dengan Blogging untuk pemula.</div><div><br></div><div>Menulis diblog sendiri sama seperti kita menulis menggunakan Microsoft World hanya media sahaja yang membedakan. Nah setelah anda bisa membuat blog dan <a target=\"_blank\" rel=\"nofollow\" href=\"http://bisnis.ilmuwebsite.com/2015/09/cara-memposting-artikel-diblog-langkah.html\"><b>memposting artikel</b></a>&nbsp;dengan baik maka selanjutnya anda akan mempelajari bagaimana membuat halaman.</div><div><br></div><div>Untuk awal anda akan menggunakan tamplate standar diblogspot, anda juga bisa mengganti tamplate dengan mendownloadnya secara gratis, bagaimana cara mengganti tamplate? Nanti kita pelajari tapi sekarang kita akan pelajari bagaimana menambah laman diblog</div>\r\n\r\n<br><p></p>', 'artikel/Q2RbM3PiKUTwrVTPLk9ip00RlMZUNJiYssiptZIe.png', 23, '2019-04-11 18:07:23', '2019-04-11 18:07:23'),
(16, 'pemahaman-android-bagi-pemula', '<p>ini android&nbsp;\r\n\r\nini android\r\n\r\n\r\n\r\nini android\r\n\r\n\r\n\r\nini android\r\n\r\n\r\n\r\nini android\r\n\r\n\r\n\r\nini android\r\n\r\n\r\n\r\nini android\r\n\r\n\r\n\r\nini android\r\n\r\n</p>', NULL, 21, '2019-04-14 17:38:29', '2019-04-14 17:38:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_categoris`
--

CREATE TABLE `table_categoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kategori` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_categoris`
--

INSERT INTO `table_categoris` (`id`, `nama_kategori`, `slug`, `created_at`, `updated_at`) VALUES
(21, 'java script', 'java-script', '2019-04-11 18:00:14', '2019-04-11 18:00:14'),
(22, 'wordpress', 'wordpress', '2019-04-11 18:03:50', '2019-04-11 18:03:50'),
(23, 'blog', 'blogger', '2019-04-11 18:05:48', '2019-04-11 18:05:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Aam Rahmawan', 'aamrahmawan@gmail.com', NULL, '$2y$10$WhcxAupP2Yi7tpzTHxurROl5JzTAhnGcDGLiYTR1/.LDyOINi4PnC', NULL, '2019-04-11 18:19:54', '2019-04-11 18:19:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `table_artikels`
--
ALTER TABLE `table_artikels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `table_artikels_categoris_id_foreign` (`categoris_id`);

--
-- Indexes for table `table_categoris`
--
ALTER TABLE `table_categoris`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `table_artikels`
--
ALTER TABLE `table_artikels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `table_categoris`
--
ALTER TABLE `table_categoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `table_artikels`
--
ALTER TABLE `table_artikels`
  ADD CONSTRAINT `table_artikels_categoris_id_foreign` FOREIGN KEY (`categoris_id`) REFERENCES `table_categoris` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
