-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 01:29 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(200) NOT NULL,
  `cookie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `cookie`) VALUES
(1, 'admin', '$2y$10$pKGfQG2etJ5lDW06PZncIOqY94RJTioYG4oM4n0/Up.cUpnX5HkRO', 'jVVei3128F6bfusLMDAJrdm2gHFoNlkOP4Mr5OvYWsmBjq6Wh8tGcQyaZSUpEBQT');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `img`, `url`) VALUES
(14, '1621434436735.jpg', ''),
(15, '1621434447920.png', ''),
(18, '1621435149605.jpg', ''),
(19, '1621435158507.jpg', ''),
(20, '1641115025521.jpg', '#');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `product_name` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `img` varchar(30) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `weight` int(11) NOT NULL,
  `ket` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `icon` varchar(30) NOT NULL,
  `slug` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `icon`, `slug`) VALUES
(2, 'Komputer', '1621436631813.png', 'komputer'),
(3, 'Laptop', '1621436640667.jpg', 'laptop'),
(4, 'Gadget', '1621436649130.png', 'gadget'),
(6, 'Pakaian Pria', '1586527494296.png', 'pakaian-pria'),
(7, 'Pakaian Wanita', '1586527510434.png', 'pakaian-wanita'),
(9, 'Bayar Tagihan', '1641055555820.png', 'bayar-tagihan'),
(10, 'Elektronik', '1641055797600.png', 'elektronik');

-- --------------------------------------------------------

--
-- Table structure for table `cod`
--

CREATE TABLE `cod` (
  `id` int(11) NOT NULL,
  `regency_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cod`
--

INSERT INTO `cod` (`id`, `regency_id`) VALUES
(5, 1),
(6, 152);

-- --------------------------------------------------------

--
-- Table structure for table `cost_delivery`
--

CREATE TABLE `cost_delivery` (
  `id` int(11) NOT NULL,
  `destination` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost_delivery`
--

INSERT INTO `cost_delivery` (`id`, `destination`, `price`) VALUES
(1, 177, 40000),
(2, 105, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `email_send`
--

CREATE TABLE `email_send` (
  `id` int(11) NOT NULL,
  `mail_to` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `page` int(11) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `footer`
--

INSERT INTO `footer` (`id`, `page`, `type`) VALUES
(1, 1, 1),
(2, 3, 1),
(3, 2, 2),
(4, 1, 1),
(5, 4, 1),
(6, 5, 1),
(7, 6, 2),
(8, 7, 2),
(9, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `general`
--

CREATE TABLE `general` (
  `id` int(11) NOT NULL,
  `app_name` varchar(50) NOT NULL,
  `slogan` varchar(150) NOT NULL,
  `navbar_color` varchar(10) NOT NULL,
  `api_rajaongkir` varchar(70) NOT NULL,
  `host_mail` varchar(50) NOT NULL,
  `port_mail` varchar(10) NOT NULL,
  `crypto_smtp` varchar(20) NOT NULL,
  `account_gmail` varchar(50) NOT NULL,
  `pass_gmail` varchar(50) NOT NULL,
  `whatsapp` varchar(20) NOT NULL,
  `whatsappv2` varchar(20) NOT NULL,
  `email_contact` varchar(50) NOT NULL,
  `server_api_midtrans` varchar(150) NOT NULL,
  `client_api_midtrans` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `general`
--

INSERT INTO `general` (`id`, `app_name`, `slogan`, `navbar_color`, `api_rajaongkir`, `host_mail`, `port_mail`, `crypto_smtp`, `account_gmail`, `pass_gmail`, `whatsapp`, `whatsappv2`, `email_contact`, `server_api_midtrans`, `client_api_midtrans`) VALUES
(1, 'Toko-Qu', 'Toko-Qu Best Quality, Low Price..', '#A3DA8D', 'c4cf2c3b8e17f33227236df449883653', 'mail.tokoqu.com', '465', '', 'contact@tokoqu.com', '123456', '081888888', '081888888', 'contact@tokoqu.com', 'SB-Mid-server-cvbrbUqZjXC8OVY65BeW2XdJ', 'SB-Mid-client-B41Enh_9rGCwRnHr');

-- --------------------------------------------------------

--
-- Table structure for table `grosir`
--

CREATE TABLE `grosir` (
  `id` int(11) NOT NULL,
  `min` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `img_product`
--

CREATE TABLE `img_product` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `img_product`
--

INSERT INTO `img_product` (`id`, `id_product`, `img`) VALUES
(1, 22, '1589840767903.jpg'),
(2, 22, '1589840786550.jpg'),
(5, 22, '1589840836102.jpg'),
(7, 29, '1621436002940.jpg'),
(8, 8, '1621436022420.jpg'),
(9, 8, '1621436027602.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `invoice_code` varchar(10) NOT NULL,
  `label` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `province` int(11) NOT NULL,
  `regency` int(11) NOT NULL,
  `district` varchar(50) NOT NULL,
  `village` varchar(50) NOT NULL,
  `zipcode` int(11) NOT NULL,
  `address` text NOT NULL,
  `courier` varchar(5) NOT NULL,
  `courier_service` varchar(70) NOT NULL,
  `ongkir` varchar(10) NOT NULL,
  `total_price` int(11) NOT NULL,
  `total_all` int(11) NOT NULL,
  `date_input` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL,
  `resi` varchar(30) NOT NULL,
  `pay_status` varchar(30) NOT NULL,
  `link_pay` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `user`, `invoice_code`, `label`, `name`, `email`, `telp`, `province`, `regency`, `district`, `village`, `zipcode`, `address`, `courier`, `courier_service`, `ongkir`, `total_price`, `total_all`, `date_input`, `status`, `resi`, `pay_status`, `link_pay`) VALUES
(69, 12, '1214146512', 'Rumah', 'Member1', 'member@gmail.com', '08199999', 6, 152, 'jaya', 'jaya', 10000, 'Jl. gang ramai 3', 'jne', 'YES', '15000', 1260000, 1275000, '2022-01-01 23:11:52', 4, '122333435', 'settlement', 'https://app.sandbox.midtrans.com/snap/v1/transactions/bcb34853-4f9e-44b4-8945-c7ce95c20d97/pdf'),
(70, 12, '1211707661', 'Rumah', 'Member1', 'member@gmail.com', '0819999', 9, 23, 'bagus', 'sekali', 40000, 'Jl. Bagus Rapih 10', 'jne', 'CTCYES', '10000', 1260000, 1270000, '2022-01-02 00:54:21', 0, '0', 'pending', 'https://app.sandbox.midtrans.com/snap/v1/transactions/b2e9fdc9-d0a1-4f80-aa82-3360e0b13025/pdf'),
(71, 12, '1245043672', 'Rumah', 'Saya saja', 'member@gmail.com', '0811999999', 6, 152, 'bunga wangi', 'angrek putih', 10000, 'Jl.Lebar dan Ramai No.15', 'jne', 'OKE', '10000', 3699000, 3709000, '2022-01-02 16:27:52', 0, '0', 'pending', 'https://app.sandbox.midtrans.com/snap/v1/transactions/f74f797c-cfe3-4e13-9b3b-2b368277f654/pdf');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `title`, `link`) VALUES
(1, 'Home', ''),
(2, 'Produk', ''),
(3, 'Testimoni', 'testimoni'),
(4, 'Kontak', 'contact'),
(7, 'Pembayaran', 'payment/confirmation');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `slug` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`) VALUES
(1, 'Tentang Kami', '<h2>Visi dan Misi</h2><p>&nbsp;</p><h3>Visi</h3><p>\"<i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i>.\"</p><h3>Misi</h3><p>\"<i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i>.\"</p><p>&nbsp;</p><h2>&nbsp;</h2>', 'about'),
(2, 'Kontak Kami', '<p>Hubungi Tim Penjualan Kami</p><p>&nbsp;</p><p><strong>Konsultan Penjualan</strong></p><p>Melayani kebutuhan Anda untuk seluruh kategori produk. Silakan hubungi (021) 100-1000 atau &nbsp;email support@toko-qu.com.</p><p>&nbsp;</p><p>&nbsp;</p><p><strong>Kantor Pusat</strong><br>Jl. Raya Ramai 100<br>Jakarta 1000, Indonesia</p><p>Hubungi Tim Pendukung Kami</p><p><strong>Layanan Klaim Garansi</strong></p><p>Untuk bantuan teknisi dan klaim garansi produk, silakan telepon ke (021) 100-1000 atau email support@toko-qu.com.</p><p><strong>Layanan Pengembalian Barang &amp; Refund</strong></p><p>Jika produk yang diterima salah/cacat/rusak &amp; ingin mengurus pengembalian dana, untuk laporan dan bantuan dapat menghubungi kami email support@toko-qu.com.</p><p><strong>Layanan Pelanggan</strong></p><p>Silakan berikan feedback atas pelayanan yang kurang berkenan dari tim kami. Tuliskan masukan Anda email support@toko-qu.com.</p><p><strong>Status Pengiriman</strong></p><p>Untuk bantuan tracking status pesanan &amp; status pengiriman, silakan telepon ke (021) 100-1000 atau email support@toko-qu.com.</p><p>&nbsp;</p><p><strong>Merchant&nbsp;</strong></p><p>Ingin memulai jualan di <a href=\"https://toko-qu\">Toko-qu</a>? Anda bisa mendaftar menjadi merchant &amp; bertanya seputar <a href=\"https://toko-qu\">Toko-qu</a> Marketplace email support@toko-qu.com.</p><p><strong>Tidak Dapat Menemukan Tim yang Anda Cari?</strong></p><p>Anda dapat menghubungi kami email support@toko-qu.com.</p>', 'contact'),
(3, 'Testimoni', '<p>redirect page</p>', 'testimoni'),
(4, 'Kebijakan Privasi', '<h2><strong>KEBIJAKAN PRIVASI SITUS DAN APLIKASI</strong></h2><p><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></p><p>&nbsp;</p><h2><strong>Informasi yang kami kumpulkan</strong></h2><p><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></p><p><br><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></p><p><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</p><p>&nbsp;</p><h2><strong>DATA INFORMASI</strong></h2><p><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></p><p><br><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></p><p>&nbsp;</p><h2><strong>UPDATE KEBIJAKAN PRIVASI INI</strong></h2><p><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></p>', 'privacy-policy'),
(5, 'Syarat dan Ketentuan', '<h2><strong>SYARAT DAN KETENTUAN SITUS DAN APLIKASI</strong></h2><p><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></p><p><br><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></p>', 'terms'),
(6, 'Cara Berbelanja', '<p>Anda bisa mengklik Blanja sekarang di toko-qu.com untuk membeli produk, atau Anda bisa menambahkan produk ke Favorit dahulu lalu menempatkan pesanan.</p><p><strong>1. Belanja sekarang</strong></p><p>1.1 Jika Anda ingin membeli produk langsung ketika Anda melihatnya di Product Detail Page (gambar di bawah), Anda bisa mengklik pesan sekarang setelah Anda memilih atribut, jumlah, dll. dari produk tersebut.</p><p>&nbsp;</p><p>1.2 Setelah Anda mengkonfirmasi alamat pengiriman, informasi pesanan dan informasi lainnya, klik â€œSelanjutnyaâ€.</p><p>&nbsp;</p><p>1.3 Anda bisa masuk ke â€œMy blanjaâ€-â€œPesanan Sayaâ€ dan melihat pesanan yang telah ditempatkan. Jika Anda sudah mengkonfirmasi jumlah dari pesanan tersebut, klik â€œBayarâ€.</p><p>&nbsp;</p><p>1.4 Masuk ke halaman pembayaran dan bayarkan pesanan. Status pemesanan akan berubah menjadi â€œTelah dibayarâ€, yang artinya barang sedang menunggu dikirim oleh penjual.</p><p>&nbsp;</p><p>1.5 Setelah penjual berhasil mengirimkan barang, status pemesanan akan berubah menjadi â€œTelah dikirimâ€. Ketika anda menerima barang dan mengkonfirmasi, mohon klik â€œKonfirmasiâ€.</p><p>&nbsp;</p><p>Anda harus memasukkan password Dompet Blanja sebelum mengklik â€œKonfirmasiâ€.</p><p>&nbsp;</p><p>1.6 Ketika status berubah ke \"Selesai\", maka berarti transaksi telah selesai</p><p>&nbsp;</p><p><strong>Checkout beberapa produk yang telah ditambahkan ke Troli blanja secara bersamaan</strong></p><p>Anda bisa menambahkan beberapa produk ke Troli blanja dan membelinya secara bersamaan, lalu menempatkan pesanan dan membayar sekali sekaligus. Prosesnya sama seperti proses â€œBlanja sekarangâ€.</p>', 'shopping-help'),
(7, 'Pengiriman Barang', '<ol><li><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></li><li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</li><li><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&nbsp;</i></li><li><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></li><li><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></li><li><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.&nbsp;</i></li><li><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></li><li><i>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid</i></li></ol>', 'pengiriman-barang');

-- --------------------------------------------------------

--
-- Table structure for table `payment_proof`
--

CREATE TABLE `payment_proof` (
  `id` int(11) NOT NULL,
  `invoice` varchar(30) NOT NULL,
  `file` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `condit` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `img` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date_submit` datetime NOT NULL,
  `publish` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `transaction` int(11) NOT NULL,
  `promo_price` int(11) NOT NULL,
  `viewer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `stock`, `category`, `condit`, `weight`, `img`, `description`, `date_submit`, `publish`, `slug`, `transaction`, `promo_price`, `viewer`) VALUES
(1, 'OPPO A91 8/128GB Special Online Edition', 3699000, 15, 4, 1, 300, '1586699074281.jpg', 'Dimensions/Weight\r\nHeight: 160.2mm\r\nWidth: 73.3mm\r\nThickness: 7.9mm\r\nWeight: Approx. 172g\r\n\r\nBasic Parameters\r\nColor: Lightening Black, Unicorn White\r\nOperating System: ColorOS 6.1.2, based on Android 9\r\nCPU: Helio P70\r\nGPU: ARM Mali G72 MP3 900MHz\r\nBattery Capacity: 4000mAh (Standard Value)\r\nRAM:8GB\r\nStorage: 128GB\r\nVOOC Flash Charge: 3.0\r\n\r\nDisplay\r\nSize: 16.2cm(6.4\'\')\r\nTouchscreen: Multi-touch, Capacitive Screen\r\nResolution: 2400 by 1080 pixels at 408 ppi\r\nColors: 16 million colors\r\nScreen Ratio: 90.7%\r\nContrast: 1000000:1\r\nType: AMOLED\r\nBrightness: Typical Value 430nit\r\n\r\nCamera\r\nRear Sensor: 48MP & 8MP & 2MP & 2MP\r\nFront Sensor: 16MP\r\nFlash: LED Flash\r\nAperture :\r\nFront: f/2.0;\r\nRear: Main f/1.79, Wide Angle f/2.25, Portrait & Mono f/2.4\r\nSensor Size:\r\nMain 1/2.25\', 0.8um\r\nSecondary Wide Angle 1/4\', 1.12um 2M 1/5\', 1.75um\r\nPixel Size: 1/3.1\', 1.0um\r\nCamera Mode: Photo, video, professional mode, panorama, portrait, night scene, time-lapse photography, slow motion, etc.\r\nVideo: Rear Camera Defualt: 1080P@30fps; Front Camera Default: 720P@30fps\r\nConnectivity\r\n\r\nFrequencies:\r\n[Frequency 1]\r\nGSM: 850/900/1800/1900MHz\r\nWCDMA: Bands 1/5/8\r\nFDD-LTE: Bands 1/3/5/8\r\nTD-LTE: Bands 38/40/41\r\n[Frequency 2]\r\nGSM: 850/900/1800/1900MHz\r\nWCDMA: Bands 1/5/8\r\nFDD-LTE: Bands 1/3/5/7/8\r\nTD-LTE: Bands 38/40/41\r\n[Frequency 3]\r\nGSM: 850/900/1800/1900MHz\r\nWCDMA: 850/900/1700/1900/2100MHz\r\nFDD-LTE: 700/800/850/900/1700/1800/1900/2100/2600MHz\r\nTD-LTE: 1900/2000/2300/2496-2690/2570-2620MHz\r\nSIM Card Type: Nano-SIM / Nano-USIM\r\nGPS: Built-in GPS; supports A-GPS, Beidou, Glonass\r\nBluetooth: 4.2\r\nWLAN Function: 2.4/5GHz 802.11 a/b/g/n/ac\r\nOTG: Supported\r\n\r\nIn the Box\r\nHandset *1    \r\nHeadset *1    \r\nUSB Cable *1    \r\nAdapter *1    \r\nSIM Card Pin *1    \r\nProtective Case *1    \r\nProtective Film, pre-applied *1\r\nQuick Guide *1    \r\nWarranty Card *1 ', '2020-04-12 20:43:52', 1, 'oppo-a91-8128gb-special-online-edition', 2, 3200000, 50),
(2, 'Black Shark 2 Pro 8GB/128GB Include Rookie Kit', 7499000, 6, 4, 1, 450, '1586623271686.jpg', 'Processor & GPU\r\nQualcommÂ® Snapdragonâ„¢ 855+, 2.96GHz (QualcommÂ® Snapdragonâ„¢ premium-tier processor)\r\nQualcommÂ® Adrenoâ„¢ 640\r\n\r\nRAM & ROM\r\n8GB RAM 128GB ROM\r\n\r\nDimension\r\nHeight: 163.61mm\r\nDepth: 8.77mm (10.07mm at the thickest point)\r\nWidth: 75.01 mm\r\nWeight: 205g\r\n\r\nBattery & Charging\r\n4000mAh(typ)/3900mAh(min)\r\nNon-removable\r\nHandset supports QC4+, 27W/18W. Charger supports QC3.0 (QualcommÂ® Quick Chargeâ„¢ )\r\nStandard USB Type-C\r\n\r\nCamera & Video\r\nRear Cameras\r\nMain?48M 0.8Âµm (48MP 4in1 PDAF f1.75)\r\nAperture: f/1.75\r\n6p lens\r\nLED flash\r\nSecondary: 12M 1.0Âµm (12MP PDAF f2.2 ?1.0Âµm)\r\nAperture: f/2.2\r\n6p lens (2x optical zoom lens)\r\nSupport PDAF / low-light enhancement technology / HDR / portrait photography / panorama / AI camera / super night mode\r\nFront Camera, FF 20M 0.9Âµm 4in1 Aperture: f/2.0 5p lens\r\n\r\nDisplay\r\n6.39 inch AMOLED\r\n19.5:9 Full screen display\r\n430nit(typ) High brightness (10% lower brightness with DC Dimming)\r\nResolution:1080 Ã— 2340, 403PPI, Contrast Ratio ?60000:1\r\nSupports DCI?P3 108.9%(typ)\r\n\r\nConnectivity\r\nDual nano SIM\r\nTD LTE?FDD LTE?TD?SCDMA?WCDMA?CDMA?GSM\r\nSupports wifi: 802.11a/b/g/n/ac; 2.4G&5.0G\r\nSupports 2*2 mimo, MU MIMO\r\nSupports WIFI Display, WFI Direct, WIFI hotspot\r\nSupports Bluetooth 5.0 wireless, supports aptX & aptX HD & aptX Adaptive & LDAC\r\n\r\nFingerprint & Recognization\r\nVirtual Keys: Recent, HOME, Back\r\nSupports full-screen operation; Supports intelligent dock & game Dock\r\nShark Key to enter Sharkspace\r\n\r\nSensors\r\nGravity sensor, Ambient light sensor, Proximity sensor, Gyroscope, Compass, fingerprint sensor, display touch sensitivity sensor\r\n\r\nKelengkapan dalam paket:\r\n1x Smartphone\r\n1x Rookie Kit (Gamepad Left + Holder 2.0 Left)\r\n1x Power Adapter\r\n1x USB Cable\r\n1x Transparent Protective Case\r\n1x Manual Book\r\n1x Warranty Card\r\n1x Black Shark Sticker\r\n1x SIM Tray Ejector\r\n1x Type-C to 3.5mm Audio Jack Adapter\r\n1x Free Perdana Smartfren', '2020-04-11 18:41:11', 1, 'black-shark-2-pro-8gb128gb-include-rookie-kit-iceberg-grey', 4, 7000000, 80),
(3, 'AMD Paket PC Desktop Gaming Rakitan', 4050000, 1, 2, 2, 12000, '1586699592182.jpg', 'Komputer rakitan\r\nDilengkapi dengan aplikasi game menarik\r\nHdd 500\r\nSSD 240GB\r\nRam 8GB DDR 4', '2020-04-12 15:53:12', 1, 'amd-paket-pc-desktop-gaming-rakitan-terbatas', 1, 3500000, 68),
(4, 'Laptop Termurah Terlaris Dell Latitude E6410 Core i5', 1950000, 8, 3, 2, 1000, '1641059433005.png', '<p>Ready Laptop Dell Latitude E6410 Laptop ini sangat cocok untuk agan yang sedang mencari Laptop dengan Budget Minimal namun mendapatkan Laptop yang Maksimal Tidak perlu diragukan lagi Laptop Dell ini mempunyai daya tahan Material Terbaik Spesifikasi : - Core i5 2.5GHz - Ram DDR3 4GB - Hdd 250GB - Layar 14â€ inchi - Webcam - DVD RW - Lan Port - Wifi - VGA Port - USB Port - Windows 7 Pro 64bit - Office 2013, Winrar, UltraISO, Dll -------------------- Garansi 1 Bulan -------------------- Kelengkapan : - Laptop Dell Latitude E6410 Second 93% sd 95% - Baterai - Adaptor - Tas New Slempang -------------------- Harga : Rp. 1.950.000 -------------------- Kondisi : - Mesin OK 100% Siap Bekerja Keras - Body Laptop Overall 95% Second Mulus - Layar Jernih OK 100% - Keyboard OK 100% - Sound OK 100% - Webcam OK 100% - VGA OK 100% - USB OK 100% - LAN Card OK 100% - SD Card Reader OK 100% Lulus QC khas betet89 100% Maknyus Istimiwir barangnya -------------------- betet89 Spesialis Laptop Second Built Up Original Bergaransi, Jujur, dan Amanah sejak 2009 Reseller Welcome, harga pasti masuk</p>', '2020-04-12 16:00:41', 1, 'laptop-termurah-terlaris-dell-latitude-e6410-core-i5', 2, 1500000, 70),
(6, 'LAPTOP ASUS X541S X0632T N3000| RAM 4GB HDD 500GB|15.6\"|DVDRW|WINDOWS 10 ORIGINAL', 4300000, 12, 3, 1, 3000, '1586700419708.jpg', 'SPESIFIKASI : \r\nNotebook : Asus X541SA-X0632T \r\nProcessor : IntelÂ®  CeleronÂ® N3000 CPU  @ 1.04 GHz ( 2C,2T) \r\nRAM : 1X4096 MB DDR3 (4 GB PC3L 12800) ONBOARD \r\nHarddisk : 500 GB \r\nKamera : HD Web Camera \r\nVGA : IntelÂ® UHD Graphics 600, Dedicated 128 MB, Shared 1993 MB, Up to 2121 MB \r\nBaterai : 3 Cell LI-ion 3350 mAh \r\nFitur : BT, WiFi, DVD Super Multi, Web Cam,Card Reader,1 Port USB 2.0 ,1 Port USB 3.0 ,1 Port USB 3.1 Type C,HDMI,Realtek PCIe FE Family Controller (RJ45) \r\nLayar : 15.6 HD SLIM (1366X768) \r\nWarna : Black \r\nOperation System (OS) : Windows 10 Home Single Language 64-Bit \r\nGaransi : 1 Tahun \r\n\r\n\r\n\r\nFITUR :\r\n- DVD Super Multi DL Drive ( DVDRW )\r\n- Card Reader 3 in 1\r\n- Bluetooth\r\n- HD Web Camera\r\n- 3 Cell LI-ion 19V 100-240-50-60 Hz\r\n- Webcam, Cardreader,1 port USB 3.0,1 port USB 2.0,1 port usb 3.1 type C, HDMI, Vga Out\r\n- Warna Hitam\r\n\r\n** BONUS :\r\nTas Laptop\r\n\r\n** KELENGKAPAN :\r\n- Unit + Dus Lengkap\r\n- Charger\r\n- Buku Manual\r\n- Buku Garansi', '2020-04-12 16:06:59', 1, 'laptop-asus-x541s-x0632t-n3000-ram-4gb-hdd-500gb156dvdrwwindows-10-original', 0, 4000000, 45),
(10, 'Asus Zenfone MAX M1 ZB555KL Smartphone [32GB/ 3GB/ L]', 1260000, 11, 4, 1, 430, '1586960622849.jpg', '<h2>Asus Zenfone MAX M1 ZB555KL Smartphone [32GB/ 3GB/ L]</h2><p>&nbsp;</p><h2>Merasakan Pengalaman Layar Full View 5.5 Inch</h2><p>Asus Zenfone Max M1 merupakan smartphone yang sengaja dirancang untuk memenuhi lifestyle&nbsp;pengguna. Dibuktikan dengan desain smartphone yang kelihatan apik berikut dengan tampilan full view display 5.5 inch. Bahkan dengan jenis layar yang sekarang Asus mengklaim nantinya Anda dapat menikmati peningkatan level gambar saat menikmati berbagai konten foto dan video. Apalagi layar HD Asus Max M1 kabarnya sudah menggunakan jenis kaca 2.5D beresolusi HD Plus. Selain itu, tersedianya Triple Slot yang mana nantinya Anda bisa menumpangi dua kartu SIM yang mendukung di jaringan 4G LTE. Ada lagi satu slot untuk MicroSD untuk penyimpanan hingga 256GB.&nbsp;</p><figure class=\"image\"><img src=\"https://i.imgur.com/JzH6nV4.jpg\" alt=\"\"></figure><h2>Video Unboxing Asus Zenfone Max M1 Indonesia</h2><p><a href=\"https://youtu.be/YQ7MZxRTCVY\">https://youtu.be/YQ7MZxRTCVY</a></p><h2>Asus Hadirkan Desain Smartphone Ultra Slim&nbsp;</h2><p>Meski tidak terlalu besar hanya seukuran 5.5â€ Asus merancang bingkai ultraslim sehingga membuatnya lebih ergonomis saat digenggam. Ditambah lagi dengan sentuhan akhir berbalut warna metalik yang menjadikan Zenfone Max M1 terkesan lebih Premium. Bahkan pilihan warna yang disediakan oleh sang produsen juga cukup beragam diantaranya Deepsea Black, Sunlight Gold, Ruby Red. Kesempurnaan Asus ZB555KL semakin lengkap berkat hadirnya Fingerprint Sensor yang diterapkan pada bagian belakang handphone. Hebatnya lagi, kecepatan pemindai sidik jarinya terbilang cukup intuitif saat digunakan untuk membuka kunci layar.&nbsp;</p><figure class=\"image\"><img src=\"https://i.imgur.com/MMrwiKC.jpg\" alt=\"\"></figure><h2>Interface yang Baru ZenUI 5.0 &amp; Android 8.0</h2><p>Untuk melengkapi debut smartphone terbarunya, Asus Zenfone Max M1 dibekali dengan Android Oreo beserta dengan antarmuka terbaru ZenUI 5.0. Hasilnya Anda dapat merasakan pengalaman baru yang lebih menarik, mudah dan intuitif. Tidak cukup dengan itu, dibagian dalam Asus Zenfone Max M1 ditenagai dengan platform Qualcomm Snapdragon yang lebih cepat dan responsif. Bahkan untuk mengimbanginya, Asus menyandingkan GPU Adreno dan RAM yang cukup untuk hasilkan kualitas grafis bebas<i>&nbsp;â€˜lagâ€™</i> kala bermain game atau memuat konten multimedia lainnya. &nbsp;</p><figure class=\"image\"><img src=\"https://i.imgur.com/thjKsuy.jpg\" alt=\"\"></figure><p>&nbsp;</p><h2>Kamera 13MP Asus Zenfone Max M1: Lebar dan Jernih</h2><p>Dengan iming-iming sistem dual kamera yang baru maka hasil fotonya tentu semakin menawan. Berbekal kamera utama 13 MP dengan kelengkapan aperture lensa F2.0 memungkinkan Anda motret dengan sudut pandang selebar 120 derajat. Begitupun dengan kemampuan rekam videonya yang memungkinkan menangkap lebih banyak objek / pemandangan yang memukau. Kemampuan lain yang dimiliki kamera smartphone Asus Zenfone Max M1 yakni fase autofukos yang hampir mirip dengan pendeteksian kamera DSLR. Akurasi fokusnya mencapai 0.03 detik untuk mendapatkan foto yang detail dan tajam. Begitupun dengan kamera depan Zenfone Max M1 yang disokong dengan teknologi Camera PixelMaster guna mendapatkan hasil yang lebih bening dan jernih saat selfie atau video call. &nbsp;</p><figure class=\"image\"><img src=\"https://i.imgur.com/Qpk1Fem.jpg\" alt=\"\"></figure><h2>Manajemen Baterai Cerdas Asus PowerMaster</h2><p>Kali ini Asus sekaligus memperkenalkan teknologi Asus PowerMaster sebagai dukungan manajemen daya yang cerdas. Teknologi ini diupayakan untuk mengoptimalkan masa pakai baterai tanpa harus mengesampingkan keamanan dan kinerja smartphone Asus Max M1. Sehubung dengan kapasitas baterainya sebesar 4000 mAh, maka sepantasnya Asus menawarkan fitur pengisian daya cepat / fast charging. Pengguna hanya membutuhkan waktu kurang lebih 3 jam untuk mendapatkan baterai smartphone yang terisi penuh. Dengan catatan sebaiknya Anda melakukan charging menggunakan adaptor yang bersertifikat (original), sehingga keamanan arus tetap stabil dan menghindari tegangan berlebih.&nbsp;</p><figure class=\"image\"><img src=\"https://i.imgur.com/a2nXsuc.jpg\" alt=\"\"></figure><p>&nbsp;</p>', '2020-04-15 16:23:43', 1, 'asus-zenfone-max-m1-zb555kl-smartphone-32gb-3gb-l', 1, 0, 53);

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` int(11) NOT NULL,
  `rekening` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `rekening`, `name`, `number`) VALUES
(1, 'DANA', 'Toni Suwendi', '088215005600'),
(3, 'GOPAY', 'Toni Suwendi', '088215005600'),
(7, 'OVO', 'Toni Suwendi', '088215005600');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `promo` int(11) NOT NULL,
  `promo_time` varchar(40) NOT NULL,
  `short_desc` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `regency_id` int(11) NOT NULL,
  `verify` int(11) NOT NULL,
  `logo` varchar(30) NOT NULL,
  `favicon` varchar(30) NOT NULL,
  `default_ongkir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `promo`, `promo_time`, `short_desc`, `address`, `regency_id`, `verify`, `logo`, `favicon`, `default_ongkir`) VALUES
(1, 0, '2022-01-02T00:14', 'Toko online terlengkap dan terpercaya. Dapatkan penawaran dengan kualitas terbaik.', 'Jl. Raya Ramai 100', 23, 1, '1641053337336.png', '1641052068514.png', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `sosmed`
--

CREATE TABLE `sosmed` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `icon` varchar(20) NOT NULL,
  `link` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sosmed`
--

INSERT INTO `sosmed` (`id`, `name`, `icon`, `link`) VALUES
(1, 'Facebook', 'facebook-f', 'https://facebook.com/'),
(3, 'Twitter', 'twitter', 'https://twitter.com/'),
(5, 'Instagram', 'instagram', 'https://instagram.com/'),
(6, 'Youtube', 'youtube', 'https://youtube.com/c/');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `submenu` int(11) NOT NULL,
  `link` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`id`, `name`, `submenu`, `link`) VALUES
(1, 'Komputer', 2, 'c/komputer'),
(2, 'Laptop', 2, 'c/laptop'),
(7, 'Gadget', 2, 'c/gadget'),
(8, 'Pakaian Pria', 2, 'c/pakaian-pria'),
(9, 'Pakaian Wanita', 2, 'c/pakaian-wanita'),
(10, 'Bayar Tagihan', 2, 'c/bayar-tagihan'),
(11, 'Elektronik', 2, 'c/elektronik');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date_subs` datetime NOT NULL,
  `code` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`, `date_subs`, `code`) VALUES
(0, 'Semua Email', '2020-04-21 13:59:23', ''),
(21, 'member@gmail.com', '2021-05-19 22:20:52', '1621437652141395667');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `photo` varchar(30) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `name`, `photo`, `content`) VALUES
(1, 'Dinda - Jakarta', '', 'Barang Bagus sesuai etalase, kualitas baik.'),
(2, 'Agustiono - Surabaya', '', 'Layanan Memuaskan dan respon cepat.'),
(3, 'Andina - Jakarta', '', 'OK, Rekomended seller.'),
(4, 'David - Bandung', '', 'Sampai cepat,\r\nSesuai pesanan,\r\noriginal.'),
(5, 'Ridwan- Bali', '', 'Layanan cepat, rekomended lah.'),
(6, 'Karin - Jakarta', '', 'Respon dan pengirimannya cepat..mantapp..');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `ket` varchar(100) NOT NULL,
  `img` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `id_invoice`, `user`, `product_name`, `price`, `qty`, `slug`, `ket`, `img`) VALUES
(66, 1214146512, 12, 'Asus Zenfone MAX M1 ZB555KL Smartphone [32GB/ 3GB/ L]', 1260000, 1, 'asus-zenfone-max-m1-zb555kl-smartphone-32gb-3gb-l', '', '1586960622849.jpg'),
(67, 1211707661, 12, 'Asus Zenfone MAX M1 ZB555KL Smartphone [32GB/ 3GB/ L]', 1260000, 1, 'asus-zenfone-max-m1-zb555kl-smartphone-32gb-3gb-l', '', '1586960622849.jpg'),
(68, 1245043672, 12, 'OPPO A91 8/128GB Special Online Edition', 3699000, 1, 'oppo-a91-8128gb-special-online-edition', '', '1586699074281.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `date_register` datetime NOT NULL,
  `is_activate` int(1) NOT NULL,
  `token` varchar(100) NOT NULL,
  `token_reset` varchar(100) NOT NULL,
  `cookie` varchar(100) NOT NULL,
  `photo_profile` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `email`, `password`, `date_register`, `is_activate`, `token`, `token_reset`, `cookie`, `photo_profile`) VALUES
(12, 'Member1', 'admin', 'member@gmail.com', '$2y$10$cIJ4gL/TvfCzvhlFIlS96uCB8.1erZ.4m0PCuqgthorGXqex37iNm', '2021-05-19 22:20:52', 1, 'ef68bc405b7e534fb2010ef57ca1f020cb29653f', '', 'SfhZSWn56LyY2qDH6nMocwj38JKbNcltGsQhIv9duUXBROzTG4f77xLgHAlvFWm0', '1641050567165.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cod`
--
ALTER TABLE `cod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cost_delivery`
--
ALTER TABLE `cost_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_send`
--
ALTER TABLE `email_send`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general`
--
ALTER TABLE `general`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grosir`
--
ALTER TABLE `grosir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `img_product`
--
ALTER TABLE `img_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_proof`
--
ALTER TABLE `payment_proof`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosmed`
--
ALTER TABLE `sosmed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cod`
--
ALTER TABLE `cod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cost_delivery`
--
ALTER TABLE `cost_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `email_send`
--
ALTER TABLE `email_send`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `general`
--
ALTER TABLE `general`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `grosir`
--
ALTER TABLE `grosir`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `img_product`
--
ALTER TABLE `img_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment_proof`
--
ALTER TABLE `payment_proof`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sosmed`
--
ALTER TABLE `sosmed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
