-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2023 pada 18.29
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `updater` varchar(32) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `keywords` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_publish` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori`, `updater`, `slug_berita`, `judul_berita`, `isi`, `status_berita`, `jenis_berita`, `keywords`, `gambar`, `icon`, `hits`, `urutan`, `tanggal_mulai`, `tanggal_selesai`, `tanggal_post`, `tanggal_publish`, `tanggal`) VALUES
(20, 24, 9, '', 'taman-vertikal-garden', 'Taman vertikal garden', '<p>Istilah&nbsp;<em>vertical garden&nbsp;</em>alias taman vertikal mengacu media taman dengan tanaman yang ditata secara vertikal ke atas dalam bidang tegak lurus atau mendekati&nbsp; tegak lurus. Taman vertikal ini dapat memberikan efisiensi dengan cara memanfaatkan dinding sebagai salah satu medianya.</p>', 'Publish', 'Berita', 'vertikal garden', 'breathtaking-living-wall-designs-for-creating-your-own-vertical-garden-5fa56d8f8ede487a24266772-1657998547.jpg', 'Hehshdi', 0, 4, NULL, NULL, '2022-06-03 08:02:51', '2022-06-03 07:59:52', '2022-07-16 19:09:07'),
(21, 24, 9, '', 'postingan-kedua-taman-minimalis', 'postingan kedua taman minimalis', '<p>Desain minimalis adalah trend terkini untuk properti, furniture, atap, pagar dan taman sekalipun. Minimalis adalah sebuah bahasa desain yang&nbsp;<em>simple&nbsp;</em>namun&nbsp;<em>aesthetic.&nbsp;</em>Bahasa desainnya&nbsp;<em>simple,&nbsp;</em>karena tidak banyak ornamen-ornamen berlebihan.</p>\r\n<p>Hanya terdiri dari garis-garis tegas yang menunjukkan kesederhanaan dan kemudahan dalam proses pembuatan dan perawatannya&nbsp; Bahasa desainnya juga&nbsp;<em>aesthetic&nbsp;</em>karena dibalik kesederhanaannya justru memancarkan aura estetika tersendiri. Hal tersebut membuat bahasa desain minimalis itu semakin terlihat elegan, modern dan kekinian.&nbsp;</p>', 'Publish', 'Berita', 'Taman Minimalis', 'alas1-1657998218.png', NULL, 0, 5, NULL, NULL, '2022-06-06 06:28:53', '2022-06-06 06:28:41', '2022-07-16 19:03:39'),
(22, 24, 9, '', 'rumput-sintetis', 'Rumput Sintetis', '<p>Menanam rumput di pekarangan dapat membuat tampilan halaman rumah menjadi lebih hijau, rapi dan sejuk.</p>', 'Publish', 'Berita', 'Rumput Sintetis', 'alas2-1657998196.png', NULL, 0, 6, NULL, NULL, '2022-06-06 06:29:31', '2022-06-06 06:29:06', '2022-07-16 19:03:18'),
(25, 24, 9, '', 'achmadi-landscape-sejahtera', 'Achmadi Landscape Sejahtera', '<p>Cv. Achmadi landscape sejahtera adalah ahli jasa spesialis taman dan maintenance sejak tahun 1974. Kami terus tumbuh dan terus mendapatkan kepercayaan dari pelanggan kami. Klien tersebut meliputi klien individu yang berlokasi di Indonesia, perusahaan swasta, instansi pemerintah dan perusahaan asing. Kami mengerjakan berbagai macam konsep dan model landscape masa kini serta maintenance landscape dan berbagai macam layanan yang sesuai dengan kebutuhan dan keinginan anda.</p>', 'Publish', 'Profil', 'Profile achmadi landscape sejahtera, alas, cv alas, taman sidoarjo, tanaman, jasa taman, minimalis, taman murah, suplier taman, maintenance indor dan outdor.', '2017-10-24-1657998149.jpg', NULL, 0, 1, NULL, NULL, '2022-06-24 18:06:06', '2022-06-24 18:01:24', '2022-07-16 19:02:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `download`
--

CREATE TABLE `download` (
  `id_download` int(11) NOT NULL,
  `id_kategori_download` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_download` varchar(200) DEFAULT NULL,
  `jenis_download` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `galeri`
--

CREATE TABLE `galeri` (
  `id_galeri` int(11) NOT NULL,
  `id_kategori_galeri` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_galeri` varchar(200) DEFAULT NULL,
  `jenis_galeri` varchar(20) NOT NULL,
  `isi` text DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `popup_status` enum('Publish','Draft','','') NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `status_text` enum('Ya','Tidak','','') NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `galeri`
--

INSERT INTO `galeri` (`id_galeri`, `id_kategori_galeri`, `id_user`, `judul_galeri`, `jenis_galeri`, `isi`, `gambar`, `website`, `hits`, `popup_status`, `urutan`, `status_text`, `tanggal`) VALUES
(12, 7, 24, 'Taman', 'Masuk Galeri', NULL, 'alas1-1658002238.png', NULL, NULL, 'Publish', 3, 'Ya', '2022-07-16 20:10:40'),
(13, 7, 24, 'Taman Minimalis', 'Masuk Galeri', '<p>Taman Minimalis merupakan taman yang berguna untuk menghias atau mempercantik lingkungan rumah</p>', 'taman-minimalis-1658002093.jpg', NULL, NULL, 'Publish', 2, 'Ya', '2022-07-16 20:08:13'),
(14, 8, 24, 'Pekerjaan pembuatan kolam rumah', 'Masuk Galeri', '<p>Kolam ikan untuk halaman rumah</p>', 'fb-img-1647345973378-1658002220.jpg', NULL, NULL, 'Publish', 8, 'Ya', '2022-07-16 20:10:20'),
(15, 9, 24, 'Taman untuk rumah', 'Masuk Galeri', '<p>Taman yang indah</p>', 'taman-atas-rumah-1-1658002130.jpg', NULL, NULL, 'Publish', 4, 'Ya', '2022-07-16 20:08:50'),
(16, 11, 24, 'Vertikal Garden', 'Masuk Galeri', '<p><strong>vertical garden</strong>&nbsp;merupakan salah satu cara untuk menanam lebih banyak tanaman di lahan yang lebih kecil. Sesuai dengan namanya,&nbsp;<strong>vertical garden</strong>&nbsp;merupakan rangkaian tanaman yang ditanam di atas media tanam kemudian disusun ke atas</p>', 'vertikal-garden-1658002194.jpg', NULL, NULL, 'Publish', 5, 'Ya', '2022-07-16 20:09:54'),
(17, 12, 24, 'Suplier Tanaman', 'Masuk Galeri', NULL, 'download-3-1658002167.jpg', NULL, NULL, 'Publish', 5, 'Ya', '2022-07-16 20:09:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gambar_produk`
--

CREATE TABLE `gambar_produk` (
  `id_gambar_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_gambar_produk` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gambar_produk`
--

INSERT INTO `gambar_produk` (`id_gambar_produk`, `id_user`, `id_produk`, `nama_gambar_produk`, `gambar`, `keterangan`, `urutan`, `tanggal`) VALUES
(2, 0, 1, '', 'NITRICO_Distributor_Ad_01_b2.jpg', '', 0, '2020-05-29 23:45:38');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `hits` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `id_user`, `slug_kategori`, `nama_kategori`, `urutan`, `hits`, `tanggal`) VALUES
(12, 0, 'herbal', 'Herbal', 4, 0, '2022-07-16 19:00:23'),
(9, 0, 'profile', 'Profile', 1, 0, '2022-06-24 18:00:16'),
(10, 0, 'berita', 'Berita', 2, 0, '2022-06-24 18:00:27'),
(11, 0, 'taman-minimalis', 'Taman Minimalis', 3, 0, '2022-06-24 18:00:39'),
(13, 0, 'healty', 'Healty', 5, 0, '2022-07-16 19:00:38'),
(14, 0, 'kesehatan', 'Kesehatan', 6, 0, '2022-07-16 19:01:07'),
(15, 0, 'lifestyle', 'Lifestyle', 7, 0, '2022-07-16 19:01:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_download`
--

CREATE TABLE `kategori_download` (
  `id_kategori_download` int(11) NOT NULL,
  `slug_kategori_download` varchar(255) NOT NULL,
  `nama_kategori_download` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_download`
--

INSERT INTO `kategori_download` (`id_kategori_download`, `slug_kategori_download`, `nama_kategori_download`, `urutan`) VALUES
(4, 'tanaman', 'Tanaman', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_galeri`
--

CREATE TABLE `kategori_galeri` (
  `id_kategori_galeri` int(11) NOT NULL,
  `slug_kategori_galeri` varchar(255) NOT NULL,
  `nama_kategori_galeri` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_galeri`
--

INSERT INTO `kategori_galeri` (`id_kategori_galeri`, `slug_kategori_galeri`, `nama_kategori_galeri`, `urutan`) VALUES
(7, 'taman-minimalis', 'Taman Minimalis', 1),
(8, 'kolam-koi', 'Kolam Koi', 2),
(9, 'taman-bunga', 'Taman Bunga', 3),
(10, 'rumput-sintetis', 'Rumput Sintetis', 6),
(11, 'vertikcal-garden', 'Vertikcal Garden', 5),
(12, 'suplier-tanaman', 'Suplier Tanaman', 6),
(13, 'mini-garden', 'Mini Garden', 7),
(14, 'pupuk-organik', 'Pupuk Organik', 8),
(15, 'maintenance-taman-indor-outdor', 'Maintenance Taman Indor & Outdor', 9),
(16, 'dekorasi-pernikahan', 'Dekorasi Pernikahan', 10),
(17, 'persewaan-tanaman', 'Persewaan Tanaman', 11);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori_produk` varchar(200) NOT NULL,
  `slug_kategori_produk` varchar(200) NOT NULL,
  `urutan` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori_produk`
--

INSERT INTO `kategori_produk` (`id_kategori_produk`, `nama_kategori_produk`, `slug_kategori_produk`, `urutan`, `keterangan`, `gambar`, `tanggal`) VALUES
(8, 'Taman Minimalis', 'taman-minimalis', 1, '<p>Taman minimalis merupakan taman yang sangat berguna untuk mempercantik hiasan pada rymah</p>', 'alas1-1657219216.png', '2022-07-07 18:40:17'),
(9, 'Suplier Tanaman', 'suplier-tanaman', 2, '<p>Suplier Tanaman</p>', 'taman-minimalis-1657307973.jpg', '2022-07-08 19:19:33'),
(10, 'Rumput Sintetis', 'rumput-sintetis', 3, '<p>Rumput Sintetis</p>', 'alas3-1657308034.png', '2022-07-08 19:20:35'),
(11, 'Pupuk Organik', 'pupuk-organik', 4, '<p>Pupuk Organik</p>', 'taman-minimalis-1657308068.jpg', '2022-07-08 19:21:08'),
(12, 'Kolam Koi', 'kolam-koi', 5, '<p>Kolam Koi</p>', 'fb-img-1647345973378-1657308119.jpg', '2022-07-08 19:21:59'),
(13, 'Mini Garden', 'mini-garden', 6, '<p>Mini Garden</p>', 'download-3-1657308161.jpg', '2022-07-08 19:22:41'),
(14, 'Dekorasi Pernikahan', 'dekorasi-pernikahan', 7, '<p>Dekorasi Pernikahan</p>', '3-1657308194.jpg', '2022-07-08 19:23:15'),
(15, 'Vertical Garden', 'vertical-garden', 8, '<p>Vertical Garden</p>', '3-1657308226.jpg', '2022-07-08 19:26:21'),
(16, 'Persewaan Tanaman', 'persewaan-tanaman', 9, '<p>Persewaan Tanaman</p>', '5-1657308257.jpg', '2022-07-08 19:26:29'),
(17, 'Maintenance Taman Indor & Outdor', 'maintenance-taman-indor-outdor', 10, '<p>Maintenance Taman Indor &amp; Outdor</p>', 'img20211223161653-min-1657308410.jpg', '2022-07-08 19:26:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `nama_singkat` varchar(20) DEFAULT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tagline2` varchar(255) DEFAULT NULL,
  `tentang` text DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_cadangan` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_plus` varchar(255) DEFAULT NULL,
  `nama_facebook` varchar(255) NOT NULL,
  `nama_twitter` varchar(255) NOT NULL,
  `nama_instagram` varchar(255) NOT NULL,
  `nama_google_plus` varchar(255) NOT NULL,
  `singkatan` varchar(255) NOT NULL,
  `google_map` text DEFAULT NULL,
  `judul_1` varchar(200) DEFAULT NULL,
  `pesan_1` varchar(200) DEFAULT NULL,
  `judul_2` varchar(200) DEFAULT NULL,
  `pesan_2` varchar(200) DEFAULT NULL,
  `judul_3` varchar(200) DEFAULT NULL,
  `pesan_3` varchar(200) DEFAULT NULL,
  `judul_4` varchar(200) DEFAULT NULL,
  `pesan_4` varchar(200) DEFAULT NULL,
  `judul_5` varchar(200) DEFAULT NULL,
  `pesan_5` varchar(200) NOT NULL,
  `judul_6` varchar(200) DEFAULT NULL,
  `pesan_6` varchar(200) NOT NULL,
  `isi_1` varchar(500) DEFAULT NULL,
  `isi_2` varchar(500) DEFAULT NULL,
  `isi_3` varchar(500) DEFAULT NULL,
  `isi_4` varchar(500) DEFAULT NULL,
  `isi_5` varchar(500) DEFAULT NULL,
  `isi_6` varchar(500) DEFAULT NULL,
  `link_1` varchar(255) DEFAULT NULL,
  `link_2` varchar(255) DEFAULT NULL,
  `link_3` varchar(255) DEFAULT NULL,
  `link_4` varchar(255) DEFAULT NULL,
  `link_5` varchar(255) DEFAULT NULL,
  `link_6` varchar(255) DEFAULT NULL,
  `javawebmedia` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `rekening` text DEFAULT NULL,
  `prolog_topik` text DEFAULT NULL,
  `prolog_program` text DEFAULT NULL,
  `prolog_sekretariat` text DEFAULT NULL,
  `prolog_aksi` text DEFAULT NULL,
  `prolog_kolaborasi` text DEFAULT NULL,
  `prolog_sebaran` text DEFAULT NULL,
  `gambar_berita` varchar(255) DEFAULT NULL,
  `prolog_agenda` text DEFAULT NULL,
  `prolog_wawasan` text DEFAULT NULL,
  `protocol` varchar(255) DEFAULT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `smtp_timeout` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(255) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `judul_pembayaran` varchar(255) DEFAULT NULL,
  `isi_pembayaran` text DEFAULT NULL,
  `gambar_pembayaran` varchar(255) DEFAULT NULL,
  `link_bawah_peta` varchar(255) DEFAULT NULL,
  `text_bawah_peta` varchar(255) NOT NULL,
  `cara_pesan` enum('Keranjang Belanja','Formulir Pemesanan') NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `nama_singkat`, `tagline`, `tagline2`, `tentang`, `deskripsi`, `website`, `email`, `email_cadangan`, `alamat`, `telepon`, `hp`, `fax`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `google_plus`, `nama_facebook`, `nama_twitter`, `nama_instagram`, `nama_google_plus`, `singkatan`, `google_map`, `judul_1`, `pesan_1`, `judul_2`, `pesan_2`, `judul_3`, `pesan_3`, `judul_4`, `pesan_4`, `judul_5`, `pesan_5`, `judul_6`, `pesan_6`, `isi_1`, `isi_2`, `isi_3`, `isi_4`, `isi_5`, `isi_6`, `link_1`, `link_2`, `link_3`, `link_4`, `link_5`, `link_6`, `javawebmedia`, `gambar`, `video`, `rekening`, `prolog_topik`, `prolog_program`, `prolog_sekretariat`, `prolog_aksi`, `prolog_kolaborasi`, `prolog_sebaran`, `gambar_berita`, `prolog_agenda`, `prolog_wawasan`, `protocol`, `smtp_host`, `smtp_port`, `smtp_timeout`, `smtp_user`, `smtp_pass`, `judul_pembayaran`, `isi_pembayaran`, `gambar_pembayaran`, `link_bawah_peta`, `text_bawah_peta`, `cara_pesan`, `id_user`, `tanggal`) VALUES
(1, 'CV. Achmadi Landscape Sejahtera', 'ALAS', 'Jasa Spesialis Taman & Maintenance', 'Jasa Spesialis Taman & Maintenance', '<p>Cv. Achmadi landscape Merupakan perusahaan jasa Taman, baik Jasa Landscape Taman, Jasa Vertical garden juga Juga Roof Garden serta perawatan taman yang professional dan berpengalaman. Kami melayani perumahan, perkantoran, Hotel, fasilitas umum yang membutuhkan media penghijauan atau aksesoris interior eksterior bangunan. kami melayani wilayah JAWA TIMUR dan seluruh Indonesia, kami selalu siap memenuhi kebutuhan Anda.</p>\r\n<p>Cv. Achmadi landscape sejahtera adalah ahli jasa spesialis taman dan maintenance sejak tahun 1974. Kami terus tumbuh dan terus mendapatkan kepercayaan dari pelanggan kami. Klien tersebut meliputi klien individu yang berlokasi di Indonesia, perusahaan swasta, instansi pemerintah dan perusahaan asing. Kami mengerjakan berbagai macam konsep dan model landscape masa kini serta maintenance landscape dan berbagai macam layanan yang sesuai dengan kebutuhan dan keinginan anda.</p>', 'CV. Achmadi Landscape Sejahtera Adalah ahli jasa spesialis taman dan maintenance sejak tahun 1974. Kami mengerjakan berbagai macam konsep danmodel landscape masa kini serta mainatenance landscape dan berbagai macam layaanan sesuai dengan kebutuhan keinginan anda.', 'https://achmadilandscapsejahtera.co.id/', 'achmadilandscape@gmail.com', 'achmadilandscape@gmail.com', 'Dusun Buaran RT01/RW08\r\nKeboguyang - Jabon - Sidoarjo - 61276\r\nJawaTimur - Indonesia', '0812-3396-7919', '0812-3396-7919', '0812-3396-7919', 'design-logo-alas1-1658002042.png', 'imgonline-com-ua-compresstosize-shcxocluk9gwwedm-1657997091.jpg', 'Jasa Taman, Alas, Taman Minimalis, Minimalis, achmadilandscapesejahtera, achmaditaman, taman achmadi,', 'Encoding, Google,Meta utf-8-set', 'https://www.facebook.com/alaslandscape/', 'https://www.youtube.com/channel/UCwtiYBx3z1TbWgBY_MFiGJw', 'https://www.instagram.com/jasa_tamanjawatimur/', 'https://www.youtube.com/channel/UCmm6mFZXYQ3ZylUMa0Tmc2Q', 'Jasa taman Jawa timur', 'Jasa Taman Malang Sidoarjo Surabaya Gresik', 'jasa_tamanjawatimur', '', 'ALS', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3955.3419825943306!2d112.72746301477646!3d-7.53763079456366!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7ddc47dc08769%3A0x1bc2510fc2510df4!2sSPESIALIS%20LANDSCAPE%20%26%20KOLAM%20KOI%2Ftukang%20taman%20Sidoarjo!5e0!3m2!1sid!2sid!4v1649976385986!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\">\r\n          </iframe>', 'Tempat belajar nyaman', 'fa fa-home', 'Materi Kursus Selalu Update', 'fa fa-laptop', 'Jadwal Flexibel', 'fa fa-thumbs-up', 'Menjaga Amanah', 'fa-check-square-o', 'Tempat belajar nyaman', 'fa-home', 'Online service', 'fa-laptop', 'Kami menyediakan tempat belajar yang nyaman dan menyenangkan serasa di rumah sendiri', 'Materi kursus kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari', 'Bagi Anda siswa yang ingin belajar, kami menerapkan jadwal flexibel', 'Kami senantiasa menjaga amanah yang diberikan kepada donatur agar sampai di tangan yang berhak.', 'Kami menyediakan tempat belajar yang nyaman dan menyenangkan', 'Website kamu selalu uptodate, Anda bisa mengunduh apa yang dipelajari', '', '', '', '', '', '', '<p>Berawal dari keinginan ibunda Hj.Masah Muhari diakhir hidupnya untuk mewakaan sebagian hartanya dijalan Allah, gayungpun bersambut pada bulan Mei 2011 saat kami akan melaksanakan ibadah umrah, Seorang rekan kami sesama Jamaah bernama ustadzah Hj. Zainur Fahmid memberikan informasi Tentang Anggota yang hendak mewakaan sebidang tanahnya di wilayah Beji Timur. Kami pun memanjatkan doa di kota suci dengan penuh rasa harap pertolongan Allah untuk menunjukan jalan terbaik-Nya, maka sepulang umroh kami mengadakan pertemuan di kediaman Ibu Dra Hj Ratna Mardjanah untuk membicarakan visi misi kami dalam wakaf tersebut dan sepakat untuk mendirikan Istana Yatim Riyadhul Jannah ini.</p>\r\n<p>Nama Riyadhul Jannah Sendiri diambil dari nama pengelola wakaf (H. Ahmad Riyadh Muchtar, Lc) dan pemberi wakaf (Dra Hj Ratna Mardjanah). Istana Yatim Riyadhul Jannah hadir untuk melayani dan memfasilitasi segala kebutuhan anak yatim, terutama pendidikan agama, akhlak dan kehidupan yang layak untuk bekal masa depan mereka yang cerah agar bisa memberi manfaat bagi umat. Harapan kami semoga dengan membangunkan istana untuk anak yatim, maka Allah akan berikan istana-Nya di surga kelak dan kita termasuk manusia yang bisa memberika manfaat bagi sesama sebagaimana sabda Rasulullah SAW yang artinya:&nbsp;</p>\r\n<p>&ldquo;Sebaik-baik manusia adalah yang paling bermanfaat bagi manusia lainnya&rdquo;&nbsp;</p>\r\n<p>erimakasih atas segala bentuk bantuan yang dipercayakan kepada kami baik secara materi, tenaga dan kiran serta doa para muhsinin dan muhsinat Istana Yatim Riyadhul Jannah selama ini, mulai dari rencana pendirian hingga berkembang seperti saat ini. Semoga segala amal menjadi shadaqah jariyah disisi-Nya.&nbsp;</p>\r\n<p>&nbsp;</p>', 'wallpaper-v3-ori-01-1592023305.jpg', 'fsH_KhUWfho', '<table id=\"dataTables-example\" class=\"table table-bordered\" width=\"100%\">\r\n<thead>\r\n<tr>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"19%\">Nama Bank</th>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"21%\">Nomor Rekening</th>\r\n<th tabindex=\"0\" colspan=\"1\" rowspan=\"1\" width=\"7%\">Atas nama</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>BCA KCP Margo City</td>\r\n<td>4212548204</td>\r\n<td>Andoyo</td>\r\n</tr>\r\n<tr>\r\n<td>Bank Mandiri KCP Universitas Indonesia</td>\r\n<td>1570001807768</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n<tr>\r\n<td>Bank BNI Syariah Kantor Cabang Jakarta Selatan</td>\r\n<td>0105301001</td>\r\n<td>Eflita Meiyetriani</td>\r\n</tr>\r\n</tbody>\r\n</table>', '<p>Dalam mewujudkan pembangunan berkelanjutan, pemerintah kabupaten anggota LTKL telah mengidentifikasi dan memilih topik yang sesuai dengan kondisi di daerahnya. Ada 5 topik prioritas yang dipilih dengan penerapan yang disesuaikan kembali di masing-masing kabupaten.</p>', NULL, '<p>Setelah Lingkar Temu Kabupaten Lestari (LTKL) diinisiasi, kesekretariatan dibentuk untuk membantu para pemerintah kabupaten anggota bekerja dan berkolaborasi. Walaupun tidak memiliki mandat implementasi, Sekretariat LTKL menjadi vital dalam melancarkan koordinasi, pengumpulan basis data, hingga pelaporan perkembangan. Sekretariat LTKL juga diperkuat dengan kehadiran personil yang telah berpengalaman di bidang management pengetahuan, program pembangunan berkelanjutan hingga kebijakan.</p>', '', '<p>Lingkar Temu Kabupaten Lestari (LTKL) mengedepankan kolaborasi dalam mewududkan pembangunan berkelanjutan. Ada 10 kabupaten yang tersebar di 6 provinsi di Indonesia telah menjadi anggota LTKL.</p>\r\n<p>Hingga kini, berbagai pihak telah ikut berkolaborasi, mulai dari pemerintah kabupaten, sekeretariat LTKL, mitra pembangunan hingga pihak swasta.</p>', '', 'balairung-budiutomo-01.jpg', '<p>Acara yang ditampilkan merupakan kumpulan acara LTKL, mitra, maupun pemerintah kabupaten anggota LTKL, mulai dari acara seminar hingga festival.</p>', '<p>LTKL bukan satu-satunya yang bergerak dalam mewujudkan pembangunan berkelanjutan, serta upaya penanggulangan perubahan iklim. Ikuti terus perkembangan usaha LTKL serta rekan-rekan lain menuju bumi dan Indonesia yang lestari.</p>', 'smtp', 'ssl://mail.achmadilandscapsejahtera.co.id', '465', '12', 'achmadilandscape@gmail.com', 'rahasia123...', 'Metode Pembayaran Produk', '<p>Anda dapat melakukan pembayaran dengan beberapa cara, yaitu:</p>\r\n<ol>\r\n<li><strong>Pembayaran Tunai</strong>, dapat Anda serahkan secara langsung ke salah satu staff Java Web Media</li>\r\n<li><strong>Pembayar Via Transfer Rekening</strong></li>\r\n</ol>\r\n<p>Lakukan transfer biaya atas layanan dan produk&nbsp;<strong>Achmadi Landscape Sejahtera</strong>&nbsp;ke salah satu rekening di bawah ini.</p>\r\n<h3>Konfirmasi Pembayaran</h3>\r\n<p>Anda dapat melakukan konfirmasi pembayaran melalui:</p>\r\n<ul>\r\n<li><strong>Melalui Email</strong>, silakan kirim bukti pembayaran ke:&nbsp;<strong><a href=\"mailto:achmadilandscape@gmail.com?subject=Konfirmasi%20Pembayaran\">achmadilandscape@gmail.com</a></strong></li>\r\n<li><strong>Melalui Whatsapp</strong>, kirimkan bukti pembayaran Anda ke&nbsp;<strong>+62812-3396-7919</strong></li>\r\n<li><strong>Melalui Formulir Konfirmasi Pembayaran</strong>, Anda dapat mengunggah bukti pembayaran Anda melalui form&nbsp;<strong><a title=\"Konfirmasi Pembayaran\" href=\"https://javawebmedia.com/konfirmasi\">&nbsp;Konfirmasi Pembayaran</a></strong></li>\r\n</ul>', 'payment-1658003506.jpg', 'kampungku.id', 'Alamat lokasi perusahaan achmadi landscape sejahtera', 'Formulir Pemesanan', 24, '2022-07-16 20:31:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_rekening` int(11) DEFAULT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `token_transaksi` varchar(255) NOT NULL,
  `tanggal_order` date NOT NULL,
  `nomor_transaksi` int(11) NOT NULL,
  `status_pemesanan` varchar(255) NOT NULL DEFAULT 'Menunggu',
  `nama_pemesan` varchar(255) NOT NULL,
  `telepon_pemesan` varchar(255) NOT NULL,
  `email_pemesan` varchar(255) DEFAULT NULL,
  `alamat` varchar(300) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `harga_produk` bigint(20) NOT NULL,
  `total_harga` bigint(20) NOT NULL,
  `ongkir` bigint(20) DEFAULT NULL,
  `total_biaya` bigint(20) DEFAULT NULL,
  `tanggal_pemesanan` datetime DEFAULT NULL,
  `cara_bayar` varchar(255) DEFAULT NULL,
  `tanggal_bayar` date DEFAULT NULL,
  `bukti` varchar(255) DEFAULT NULL,
  `jumlah` bigint(20) DEFAULT NULL,
  `pengirim` varchar(255) DEFAULT NULL,
  `nama_bank_pengirim` varchar(255) DEFAULT NULL,
  `nomor_rekening_pengirim` varchar(255) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_client` int(11) DEFAULT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `status_produk` varchar(20) NOT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `urutan` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `isi` text NOT NULL,
  `harga_jual` int(11) DEFAULT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `harga_terendah` int(11) DEFAULT NULL,
  `harga_tertinggi` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `keywords` varchar(500) DEFAULT NULL,
  `mulai_diskon` date DEFAULT NULL,
  `selesai_diskon` date DEFAULT NULL,
  `besar_diskon` int(12) DEFAULT NULL,
  `jenis_diskon` enum('Potongan','Persentase') DEFAULT NULL,
  `jumlah_order_min` int(11) DEFAULT NULL,
  `jumlah_order_max` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `ukuran` varchar(255) DEFAULT NULL,
  `hits` bigint(20) DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `id_user`, `id_client`, `id_kategori_produk`, `slug_produk`, `kode_produk`, `nama_produk`, `status_produk`, `satuan`, `urutan`, `deskripsi`, `isi`, `harga_jual`, `harga_beli`, `harga_terendah`, `harga_tertinggi`, `gambar`, `keywords`, `mulai_diskon`, `selesai_diskon`, `besar_diskon`, `jenis_diskon`, `jumlah_order_min`, `jumlah_order_max`, `stok`, `berat`, `ukuran`, `hits`, `tanggal_post`, `tanggal`) VALUES
(8, 24, NULL, 8, 'taman-minimalis', 'DFTR', 'Taman Minimalis', 'Publish', NULL, NULL, 'Taman Minimalis, sidoarjo', '<p>Tanaman minmalis atau taman hias merupakan tanaman yang sangat berguna untuk mempercantik halaman pada setiap rumah, agar lingkungan rumah terlihat catik dan asri untuk dilihat, taman minimalis juga berguna untuk kesehatan mata saat di pandang</p>', NULL, NULL, NULL, NULL, 'alas1-1657998603.png', 'Taman minimalis, sidoarjo, taman murah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-07 18:48:44', '2022-07-16 19:10:04'),
(10, 24, NULL, 15, 'vertikal-garden', 'WDEV', 'Vertikal Garden', 'Publish', NULL, NULL, 'vertikal garden alas achmadi landscape sejahtera taman murah sidoarjo gresik malang mojokerto', '<p>Keterbatasan lahan membuat sebagian besar masyarakat kota mengurungkan niatnya untuk menyalurkan hobi berkebun. Namun tidak perlu berkecil hati. Meskipun berlahan terbatas, Anda tetap bisa berkebun di rumah. Salah satu solusinya adalah membuat taman vertikal, sehingga penghuni rumah bisa bercocok tanam secara vertikal.</p>\r\n<p>Yuk, cari tahu tentang&nbsp;<em>vertical garden</em>, kelebihan, manfaat, jenis tanaman yang cocok, jenis-jenis&nbsp;<em>vertical garden</em>, cara membuat, serta&nbsp;<em>tips</em>&nbsp;merawat&nbsp;<em>vertical garden</em>&nbsp;berikut ini.</p>\r\n<p><strong>Apa itu Vertikal Garden?</strong></p>\r\n<p>Dilansir dari&nbsp;<a href=\"https://www.theguardian.com/science/2014/feb/06/vertical-farming-explained-erik-murchie\" target=\"_blank\" rel=\"noopener noreferrer\">The Guardian</a>,&nbsp;<em>vertical garden</em>&nbsp;merupakan salah satu cara untuk menanam lebih banyak tanaman di lahan yang lebih kecil. Sesuai dengan namanya,&nbsp;<em>vertical garden</em>&nbsp;merupakan rangkaian tanaman yang ditanam di atas media tanam kemudian disusun ke atas.&nbsp;<em>Vertical garden</em>&nbsp;terlihat indah dan menarik perhatian karena Anda dapat menciptakan taman setinggi yang Anda inginkan.</p>\r\n<h2>Kelebihan vertikal garden</h2>\r\n<p>Berbeda dengan kebun atau taman konvensional yang dibangun secara mendatar, bercocok tanam dengan konsep&nbsp;<em>vertical garden</em>&nbsp;memiliki banyak kelebihan yang menguntungkan. Tak hanya membuat elemen dekorasi dinding menjadi semakin hidup,&nbsp;<em>vertical garden</em>&nbsp;juga menambah estetika sebuah bangunan atau ruangan.</p>\r\n<p>Konsep taman yang dibangun tegak lurus ini juga lebih menghemat penggunaan lahan, mudah dipasang, dan bisa dipindah-pindah karena umumnya dibangun dengan cara terpisah dalam beberapa komponen. Anda bisa menyontek&nbsp;<em>tips</em>&nbsp;untuk membuat&nbsp;<em>vertical garden</em>&nbsp;sejuk dipandang mata.</p>\r\n<h2>Manfaat vertikal garden</h2>\r\n<p>Penasaran apa manfaat&nbsp;<em>vertical garden&nbsp;</em>bagi kesehatan Anda? Dikutip dari&nbsp;<a href=\"https://greenbusinessbureau.com/blog/the-health-and-aesthetic-benefits-of-a-vertical-garden/\" target=\"_blank\" rel=\"noopener noreferrer\">Green Business Bureau</a>,&nbsp;<em>Vertical garden</em>&nbsp;di dalam ruangan akan membantu mendetoksifikasi udara, mengurangi polusi udara, dan menghilangkan zat yang tidak baik bagi tubuh seperti&nbsp;<em>formaldehyde</em>&nbsp;dan&nbsp;<em>benzene</em>. Dengan adanya&nbsp;<em>vertical garden</em>, kualitas udara di dalam ruangan dapat menjadi lebih baik.</p>\r\n<p>Untuk rumah dengan langit-langit tinggi dan ruang terbuka, taman vertikal yang ditempatkan dengan baik akan membantu menyerap kebisingan sehingga Anda bisa mendapatkan lingkungan yang lebih tenang.</p>\r\n<p>Sementara itu, berbagai penelitian menunjukkan bahwa&nbsp;<em>vertical garden&nbsp;</em>di kantor dapat membuat para pekerja menjadi lebih produktif. Kehadiran&nbsp;<em>vertical garden&nbsp;</em>di tempat kerja juga membantu mengurangi stres. Dinding hijau ini juga membuat suasana di dalam ruangan menjadi lebih sejuk dan segar.</p>\r\n<p><strong>Contoh gambar tanaman vertikal garden:&nbsp;</strong></p>', NULL, NULL, NULL, NULL, 'vertikal-garden-1657999011.jpg', 'Jasa taman, vertikal garden, taman murah, sidoajo, malang, gresik, mojokerto, alas, achmadi landscape sejahtera, jasa, taman, murah', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 17:55:37', '2022-07-16 19:16:51'),
(9, 24, NULL, 9, 'suplier-tanaman', 'DSFDS', 'suplier tanaman', 'Publish', NULL, NULL, NULL, '<p>Maintenance Taman Indor &amp; Outdor</p>', NULL, NULL, NULL, NULL, 'images-3-1657998787.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-08 19:30:28', '2022-07-16 19:13:07'),
(11, 24, NULL, 15, 'apa-itu-vertikal-garden', 'VG', 'Apa itu vertikal garden', 'Publish', NULL, NULL, 'Vertikal garden, rumput, jasa taman, alas, achmadi landscape sejahtera, cv alas, jasa taman murah', '<p><em>vertical garden</em>&nbsp;merupakan rangkaian tanaman yang ditanam di atas media tanam kemudian disusun ke atas.&nbsp;<em>Vertical garden</em>&nbsp;terlihat indah dan menarik perhatian karena Anda dapat menciptakan taman setinggi yang Anda inginkan</p>', NULL, NULL, NULL, NULL, 'breathtaking-living-wall-designs-for-creating-your-own-vertical-garden-5fa56d8f8ede487a24266772-1657999178.jpg', 'alas, jasa taman, sidoarjo, mojokerto, malang, surabaya, vertikal garden', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 18:04:32', '2022-07-16 19:19:38'),
(12, 24, NULL, 10, 'rumput-sintetis', 'RS', 'Rumput Sintetis', 'Publish', NULL, NULL, 'rumput sintetis merupakan rumput yg khusus di gunakan untuk mempercantik halaman rumah atau untuk lapangan sepak bola', '<p>Rumput sintetis memang cocok untuk dipilih untuk melengkapi kebutuhan akan rumput. Baik digunakan untuk indoor ataupun outdoor sekalipun, rumput sintesis tetap menjadi pilihan terbaik untuk Anda gunakan. Rumput sintesis menjadi salah satu alternatif bagi Anda yang menginginkan taman, lapangan ataupun hiasan rumput namun tidak ingin repot merawatnya. Berikut kelebihan dan kekurangan rumput sintetis.</p>', NULL, NULL, NULL, NULL, 'rumput-sintetis-1657999196.jpg', 'rumput sintetis, jasa taman rumput, jasa murah, taman murah, sidoarjo, malang, surabaya, achmadi landscape sejahtera jasa taman murah, team profesional, alas, landscape', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 20:34:35', '2022-07-16 19:19:57'),
(13, 24, NULL, 12, 'jasa-pembuatan-kolam', 'JPS', 'Jasa Pembuatan Kolam', 'Publish', NULL, NULL, 'jasa pembuatan kolam koi oleh cv alas (achmadilandscapesejatera, jasa taman murah, sidoarjo,malang,surabaya,mojokerto, jasa pembuatan kolam koi.', '<p>x</p>', NULL, NULL, NULL, NULL, 'kolam-koi-1657999343.jpg', 'jasa pembuatan kolam koi oleh cv alas (achmadilandscapesejatera, jasa taman murah, sidoarjo,malang,surabaya,mojokerto, jasa pembuatan kolam koi.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 20:42:10', '2022-07-16 19:22:23'),
(14, 24, NULL, 13, 'mini-garden', 'MG', 'Mini Garden', 'Publish', NULL, NULL, 'Mini Garden atau dapat diterjemahkan sebagai Miniatur Taman dimaksudkan adalah sebuah taman berukuran mini, biasa dibuat dalam sebuah wadah, dengan penataan sedemikian rupa sehingga menyerupai taman pada umumnya, dalam ukuran mini.', '<p>Mini Garden atau dapat diterjemahkan sebagai Miniatur Taman dimaksudkan adalah sebuah taman berukuran mini, biasa dibuat dalam sebuah wadah, dengan penataan sedemikian rupa sehingga menyerupai taman pada umumnya, dalam ukuran mini.</p>', NULL, NULL, NULL, NULL, 'mini-garden-1657999916.jpg', 'Mini, garden, jasa taman, mini garden, taman murah, sidoarjo,malang,mojokerto,surabaya, achmadi landscape sejahtera, taman sidoarjo, mini garden.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-13 20:47:01', '2022-07-16 19:31:56'),
(15, 24, NULL, 11, 'pupuk-organik', 'PO', 'Pupuk Organik', 'Publish', NULL, NULL, 'Pupuk organik adalah pupuk yang tersusun dari materi makhluk hidup, seperti pelapukan sisa -sisa tanaman, hewan, dan manusia. Dalam Kamus Besar Bahasa Indonesia, pupuk organik diartikan sebagai zat hara tanaman yang berasal dari bahan organik', '<p>Pupuk organik adalah pupuk yang tersusun dari materi makhluk hidup, seperti pelapukan sisa -sisa tanaman, hewan, dan manusia. Dalam Kamus Besar Bahasa Indonesia, pupuk organik diartikan sebagai zat hara tanaman yang berasal dari bahan organik</p>', NULL, NULL, NULL, NULL, 'pupuk-organik-1658000176.jpg', 'pupuk organik, jasa taman, alas, cv alas, cv alas jasa taman murah sisdoarjo,surabaya,malang,mojokerto , jawatimur, ahli taman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 19:09:11', '2022-07-16 19:36:16'),
(16, 24, NULL, 14, 'dekorasi-pernikahan', 'DP', 'Dekorasi Pernikahan', 'Publish', NULL, NULL, 'Dekorasi pernikahan adalah salah satu bagian yang tidak boleh terlewatkan dari resepsi. Dekorasi menjadi hal penting, karena akan menjadi pusat perhatian. Bukan hanya keindahan ketika dipandang mata. Jika dekorasi bagus, otomatis foto pernikahan juga bagus', '<p>sdfDekorasi pernikahan adalah&nbsp;<strong>salah satu bagian yang tidak boleh terlewatkan dari resepsi</strong>. Dekorasi menjadi hal penting, karena akan menjadi pusat perhatian. Bukan hanya keindahan ketika dipandang mata. Jika dekorasi bagus, otomatis foto pernikahan juga bagus</p>', NULL, NULL, NULL, NULL, 'dekorasi-pernikahan-1658000355.jpg', 'dekorasi pernikahan, jasa dekorasi,pernikahan,cvalas, achmadilandscapesejahtera,ahlitaman,sidoarjo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-15 19:12:02', '2022-07-16 19:39:15'),
(19, 24, NULL, 17, 'jasa-maintenance-taman-indor-outdor', 'MTIO', 'Jasa Maintenance Taman Indor & Outdor', 'Publish', NULL, NULL, 'Menerima jasa perawatan taman indoor maupun outdoor\r\n\r\nPerawatan tanaman\r\n\r\nPemupukan\r\n\r\nPenyiraman\r\n\r\nPergantian media\r\n\r\nAnti hama\r\nDll', '<p>Tanaman hias outdoor umumnya bukan untuk dikonsumsi maupun obat-obatan, melainkan sebagai dekorasi dan penyeimbang ekosistem. Selain itu, manfaat lainnya bisa menahan erosi, membersihkan air dan udara dari polutan, hingga meredam suara bising.</p>', NULL, NULL, NULL, NULL, 'maintenance-taman-1658000704.jpg', 'Maintenance taman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-16 19:45:04', '2022-07-16 19:45:04'),
(20, 24, NULL, 16, 'jasa-persewaan-taman', 'PT', 'Jasa Persewaan Taman', 'Publish', NULL, NULL, 'CV.Achmadi Landscape Sejahtera memiliki jasa pelayanan sewa tanaman dan tanaman hias serta pembuatan taman yang memberikan hasil kerja yang baik dan hasil yang sangat bagus dalam menata tanaman,', '<p>CV.Achmadi Landscape Sejahtera memiliki jasa pelayanan sewa tanaman dan tanaman hias serta pembuatan taman yang memberikan hasil kerja yang baik dan hasil yang sangat bagus dalam menata tanaman,</p>\r\n<h5 class=\"sub-title\">&nbsp;</h5>', NULL, NULL, NULL, NULL, 'persewaan-taman-1658001029.jpg', 'CV.Achmadi Landscape Sejahtera memiliki jasa pelayanan sewa tanaman dan tanaman hias serta pembuatan taman yang memberikan hasil kerja yang baik dan hasil yang sangat bagus dalam menata tanaman,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-07-16 19:50:29', '2022-07-16 19:50:29'),
(22, 24, NULL, 8, 'sadfsdafdsf', '324', 'sadfsdafdsf', 'Draft', NULL, NULL, 'dasfasd', '<p>asdfsdaf</p>', NULL, NULL, NULL, NULL, '2-1675018581.PNG', 'sdafsdaf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-29 18:56:22', '2023-01-29 18:57:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `rekening`
--

CREATE TABLE `rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(255) NOT NULL,
  `nomor_rekening` varchar(255) NOT NULL,
  `atas_nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rekening`
--

INSERT INTO `rekening` (`id_rekening`, `nama_bank`, `nomor_rekening`, `atas_nama`, `gambar`, `urutan`, `tanggal`) VALUES
(1, 'Bank Central Asia', '4212-5482-04', 'anas firmansyah', 'bca.jpg', 1, '2022-05-23 19:43:28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL,
  `kode_rahasia` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `kode_rahasia`, `gambar`, `tanggal`) VALUES
(24, 'Dafid Alfian A', 'sdwi02467@gmail.com', 'masraffy', 'c20ad4d76fe97759aa27a0c99bff6710', 'Admin', NULL, 'images-4-1658003126.jpg', '2023-03-06 17:24:52'),
(26, 'Cici Fauziah Agustin', 'cicifauziahagustin@gmail.com', 'cicifau', '411bce63d0f3276859fae8319135f6a8', 'User', NULL, NULL, '2022-05-25 07:49:39'),
(27, 'Anas Firmansyah', 'achmadilandscape@gmail.com', 'Shasha19', '298f4901a2c7ca8493a3ad4bc0afacde', 'Admin', NULL, NULL, '2022-06-20 09:35:20'),
(29, 'Manda Ayu Lailiyah', 'lailiyah2903@gmail.com', 'Manda ayu', 'f5ff05b81e30be7be40792a6ccc30918', 'User', NULL, NULL, '2022-06-03 08:31:59'),
(30, 'Fitri', 'fitrilaila0203@gmail.com', 'fitri', '25d55ad283aa400af464c76d713c07ad', 'User', NULL, NULL, '2022-05-27 09:39:28'),
(33, 'ryan', 'ryanhukum8@gmail.com', 'masryan', '25d55ad283aa400af464c76d713c07ad', 'User', NULL, NULL, '2022-05-27 09:38:12'),
(32, 'Achmad Rifa\'i', 'achmadrifai0972637@gmail.com', 'masrifai', '25d55ad283aa400af464c76d713c07ad', 'User', NULL, NULL, '2022-05-27 09:37:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `posisi` varchar(20) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `video` text NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `bahasa` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `video`
--

INSERT INTO `video` (`id_video`, `judul`, `posisi`, `keterangan`, `video`, `urutan`, `bahasa`, `id_user`, `tanggal`) VALUES
(66, 'Proses Pekerjaan Taman oleh CV. Achmadi Landscape Sejahtera', 'Homepage', 'Proses Pekerjaan Taman oleh CV. Achmadi Landscape Sejahtera', 'M7Pd82EbEDY', 1, 'Indonesia', 15, '2022-05-24 07:37:56'),
(67, 'pekerjaan taman villanya om warok', 'Homepage', 'pekerjaan taman villanya om warok', 'TVtgkXZFvP8', 55, 'Indonesia', 34, '2022-06-22 08:54:38'),
(68, 'Aktivitas karyawan cv achmadi landscape sejahtera sehari hari', 'Galeri YT', 'Aktivitas karyawan cv achmadi landscape sejahtera sehari hari', 'QSjEJVyLYs8', 4, 'Indonesia', 24, '2022-06-24 18:19:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indeks untuk tabel `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indeks untuk tabel `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id_galeri`);

--
-- Indeks untuk tabel `gambar_produk`
--
ALTER TABLE `gambar_produk`
  ADD PRIMARY KEY (`id_gambar_produk`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `nama_kategori` (`nama_kategori`);

--
-- Indeks untuk tabel `kategori_download`
--
ALTER TABLE `kategori_download`
  ADD PRIMARY KEY (`id_kategori_download`);

--
-- Indeks untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  ADD PRIMARY KEY (`id_kategori_galeri`);

--
-- Indeks untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id_kategori_produk`),
  ADD UNIQUE KEY `nama_kategori` (`nama_kategori_produk`);

--
-- Indeks untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`),
  ADD UNIQUE KEY `token_transaksi` (`token_transaksi`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id_rekening`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `gambar_produk`
--
ALTER TABLE `gambar_produk`
  MODIFY `id_gambar_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `kategori_download`
--
ALTER TABLE `kategori_download`
  MODIFY `id_kategori_download` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kategori_galeri`
--
ALTER TABLE `kategori_galeri`
  MODIFY `id_kategori_galeri` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
