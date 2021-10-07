-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 07 Eki 2021, 21:38:05
-- Sunucu sürümü: 10.4.20-MariaDB
-- PHP Sürümü: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `pet_clinic`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `bill`
--

CREATE TABLE `bill` (
  `bill_id` varchar(255) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `cus_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `opestatus` bit(1) DEFAULT NULL,
  `paymenttype` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `bill`
--

INSERT INTO `bill` (`bill_id`, `amount`, `cus_id`, `date`, `note`, `opestatus`, `paymenttype`) VALUES
('12345', 4, 7, '2021-09-23 20:23:54', 'postman gönderdi', b'1', 1),
('421594215', 18, 7, '2021-09-23 21:26:58', 'not', b'0', 2),
('422761119', 4, 8, '2021-09-23 21:46:21', 'turan not', b'0', 1),
('423029631', 180, 9, '2021-09-23 21:50:44', '180TL Alış Yapıldı.', b'1', 1),
('438937156', 200, 8, '2021-09-24 02:16:01', 'Turan Not', b'0', 3),
('473719612', 30, 11, '2021-09-24 11:56:00', '30TL Alış Yapıldı.', b'1', 1),
('473903714', 120, 9, '2021-09-24 11:58:39', '120TL Alış Yapıldı.', b'1', 2),
('474205289', 18, 8, '2021-09-24 12:03:37', 'turana satıldı', b'0', 1),
('474298313', 120, 6, '2021-09-24 12:05:14', 'umuta satıldı', b'0', 3),
('474434626', 200, 9, '2021-09-24 12:07:29', 'Ali satıldı', b'0', 2),
('474737848', 120, 10, '2021-09-24 12:12:30', 'Deneme satıs', b'0', 2),
('475790743', 4, 9, '2021-09-24 12:30:01', 'ali veli', b'0', 2),
('477489344', 18, 6, '2021-09-24 12:58:27', 'kayıtlı satıs', b'0', 2),
('477829113', 120, 8, '2021-09-24 13:04:10', 'Turana kuduz aşısı', b'0', 1),
('488051337', 120, 11, '2021-09-24 15:54:30', 'Hakan hoca aldı', b'0', 2),
('491465321', 120, 6, '2021-09-24 16:51:24', 'Umut kuduz asısı aldı', b'0', 1),
('517870146', 200, 8, '2021-10-06 13:58:13', 'service', b'0', 1),
('517894621', 120, 7, '2021-10-06 13:58:49', 'notumuz', b'0', 2),
('517942201', 2250, 13, '2021-10-06 13:59:27', '2250TL Alış Yapıldı.', b'1', 2),
('666083511', 200, 14, '2021-09-26 17:23:38', 'Sunum Notu', b'0', 3);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `box_action`
--

CREATE TABLE `box_action` (
  `boid` int(11) NOT NULL,
  `bid` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `prodid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `suid` int(11) DEFAULT NULL,
  `warid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `box_action`
--

INSERT INTO `box_action` (`boid`, `bid`, `price`, `prodid`, `quantity`, `suid`, `warid`) VALUES
(10, '1', 400, 2, 15, 3, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `calendar_info`
--

CREATE TABLE `calendar_info` (
  `cid` int(11) NOT NULL,
  `cbg_color` varchar(255) DEFAULT NULL,
  `cborder_color` varchar(255) DEFAULT NULL,
  `ccolor` varchar(255) DEFAULT NULL,
  `cdrag_bg_color` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `calendar_info`
--

INSERT INTO `calendar_info` (`cid`, `cbg_color`, `cborder_color`, `ccolor`, `cdrag_bg_color`, `cname`) VALUES
(1, '#9e5fff', '#9e5fff', '#ffffff', '#9e5fff', 'Hasta'),
(2, '#ff3333', '#ff3333', '#ffffff', '#ff3333', 'Randevu'),
(3, '#9e5fff', '#9e5fff', '#ffffff', '#9e5fff', 'Service Hatırası');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `category`
--

CREATE TABLE `category` (
  `caid` int(11) NOT NULL,
  `categoryname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `category`
--

INSERT INTO `category` (`caid`, `categoryname`) VALUES
(6, 'Araba'),
(1, 'Kategori'),
(2, 'Telefon-update');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer`
--

CREATE TABLE `customer` (
  `cid` int(11) NOT NULL,
  `caddress` varchar(255) DEFAULT NULL,
  `cdiscount` int(11) NOT NULL,
  `cdistrict` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `cnote` varchar(255) DEFAULT NULL,
  `cprovince` varchar(255) DEFAULT NULL,
  `csurname` varchar(255) DEFAULT NULL,
  `ctype` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `tax` int(11) NOT NULL,
  `tax_administration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `customer`
--

INSERT INTO `customer` (`cid`, `caddress`, `cdiscount`, `cdistrict`, `cname`, `cnote`, `cprovince`, `csurname`, `ctype`, `email`, `mobile_phone`, `tax`, `tax_administration`) VALUES
(6, 'Bozkurt mah. Çiğdem Apt', 0, 'ŞİŞLİ', 'Umut-update', 'Not', 'İSTANBUL', 'Altın', 0, 'umutaltin60@gmail.com', '564654', 2153242, '343'),
(7, 'Cihannuma Mah.', 25, 'Beşiktaş', 'Erkan', '', 'İstanbul', 'Bilir', 0, 'erkan@mail.com', '4564564', 2134124, ''),
(8, 'Vatan cd.', 25, 'Merkez', 'Turan', 'Turan Not', 'Madrid', 'Çaymaz', 0, 'turan@mail.com', '24654', 5546, ''),
(9, 'Adres', 5, 'İlçe', 'Ali', 'ali not', 'İl', 'Veli', 2, 'ali@mail.com', '555', 222, '-'),
(10, 'Adres', 25, 'İlçe', 'Deneme', 'not', 'İl', 'Bilki', 1, 'deneme@mail.com', '232', 2323, '-'),
(11, 'Adres', 15, 'İlçe', 'Hakan', 'Not', 'İl', 'Özer', 2, 'hakan@mail.com', '123', 123, '-'),
(14, '-', 25, 'İlçe', 'Sunum', 'Sunum Not', 'İl', 'Sunum', 1, 'sunum@mail.com', '5553332211', 22211, '-'),
(27, 'SErvis adres', 15, 'Servis İlçe', 'turan-service', 'Servis Not', 'Servis İl', 'Service', 1, 'turanservice@mail.com', '55534144', 12345, '-');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer_pets`
--

CREATE TABLE `customer_pets` (
  `customer_cid` int(11) NOT NULL,
  `pets_pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `customer_pets`
--

INSERT INTO `customer_pets` (`customer_cid`, `pets_pid`) VALUES
(6, 5),
(7, 6),
(7, 7),
(8, 8),
(8, 9),
(8, 10),
(9, 11),
(10, 12),
(11, 13),
(11, 14),
(14, 18),
(14, 19),
(27, 23);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `diary`
--

CREATE TABLE `diary` (
  `did` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `dtime` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `diary`
--

INSERT INTO `diary` (`did`, `date`, `detail`, `dtime`, `title`) VALUES
(1, '2021-09-23 03:00:00', 'Sayfaları birleştirmede sorun çıktı.', '20:07', 'Proje Son Gün'),
(2, '2021-09-26 03:00:00', 'Ekran görüntüleri alınıyor.', '17:40', 'Sunum'),
(6, '2021-10-01 03:00:00', 'Service perfect.', '03:46', 'Service-update'),
(8, '2021-10-01 03:00:00', 'Service perfect.', '03:46', 'Service'),
(10, '2021-10-01 03:00:00', 'Service perfect.', '03:46', 'Servicex1'),
(12, '2021-10-01 03:00:00', 'Service perfect.', '03:46', 'Servicex2'),
(13, '2021-10-01 03:00:00', 'Service perfect.', '03:46', 'Servicex3'),
(14, '2021-10-01 03:00:00', 'Service perfect.', '03:46', 'Servicex4'),
(15, '2021-10-01 03:00:00', 'Service perfect.', '03:46', 'Servicex5'),
(16, '2021-10-01 03:00:00', 'Service perfect redis.', '03:46', 'Servicex2-redis'),
(17, '2021-10-01 03:00:00', 'Service harika', '03:46', 'Servicex3-redis'),
(18, '2021-10-01 03:00:00', 'Service harika', '03:46', 'Servicexp3-redis'),
(19, '2021-10-01 03:00:00', 'Service harika', '03:46', 'Servicex4-redis');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `image`
--

CREATE TABLE `image` (
  `iid` int(11) NOT NULL,
  `imagename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `image`
--

INSERT INTO `image` (`iid`, `imagename`) VALUES
(1, 'a67bd269-6e18-4f3f-a02c-9fd9c98fdf43.jpg'),
(2, '1b3e700e-5b98-417a-acea-20fc1a0aac61.jpg'),
(8, '7d98d16c-a38b-4ef6-84bb-d211b93e48d7.jpg'),
(9, 'ac3f5b4d-315f-4081-868e-f0a3bbd287f2.jpg'),
(10, '2b87669b-7198-4584-b117-083aa376801fjpeg'),
(11, '1b95472a-b5b3-4d60-b6e8-6082c43d04ee.jpg'),
(12, '46f38ead-8abc-474f-802c-8a6d7f5410ce.jpg'),
(13, 'a6e43d4d-1f30-434e-94f0-de9371e87d5c.jpg'),
(14, 'd2aefc0a-2e53-4273-a73f-817d3056dcf5.jpg'),
(16, '6b2cbdf0-6454-4be8-9031-c47f536ef79d.jpg'),
(17, '44697e12-7ff6-4925-aa3a-457cb2d9d273.jpg'),
(18, '055065c5-644f-468f-9880-9e7ec7cce86a.jpg'),
(20, 'a2a7f232-07ec-4439-af1d-372d7438c1d5.jpg'),
(21, '812c6b98-08e7-4ca8-9edd-affa8bb80e4ajpeg'),
(22, 'fa1243b5-5c11-4186-8c9c-c618c75aeed6.jpg'),
(24, '5a514979-b42a-4863-96a8-f5735324a224.jpg'),
(25, '280cef76-7610-45d6-83b4-ea9c9e5d4e70.jpg'),
(26, 'f3caeced-81f1-44e9-8c2c-66fd00259adb.jpg'),
(27, '4a20bf2c-547b-48be-b132-7cff9aa3821d.jpg'),
(28, '2047ad94-8896-42c4-9963-3debf0ee2fce.jpg'),
(29, 'd34-de.jpg'),
(30, '545545-yg.jpg'),
(31, '959f5a17-0ba7-4cd1-b252-6652609a8a28.jpg'),
(32, '38ea2c51-9d60-4388-93f6-f7f2588ffefb4.jpg'),
(33, '8f608832-b2bb-47b4-b3f6-79a93b69795f.jpg'),
(34, '083cb4c5-48c7-4460-9c07-b668f2bc9e364.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `lab`
--

CREATE TABLE `lab` (
  `lid` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `labimage_iid` int(11) DEFAULT NULL,
  `pet_pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `lab`
--

INSERT INTO `lab` (`lid`, `date`, `result`, `type`, `labimage_iid`, `pet_pid`) VALUES
(12, '2021-09-22 22:39:23', 'dsadsad', 3, 20, 5),
(13, '2021-09-22 22:40:16', 'dsds', 3, 21, 5),
(14, '2021-09-24 01:10:11', 'erkan', 2, 22, 6),
(15, '2021-09-24 11:50:06', 'Röntgen filmi çekildi.', 2, 24, 5),
(16, '2021-09-24 15:55:34', 'Röntgen cekildi', 2, 25, 14),
(18, '2021-09-26 17:36:13', 'Yabancı cisim tespit edildi.', 2, 27, 18),
(19, '2021-10-03 02:03:26', 'maymun röntgen servisce de çekildi', 1, 18, 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `logger`
--

CREATE TABLE `logger` (
  `lid` int(11) NOT NULL,
  `l_date` datetime DEFAULT NULL,
  `l_ip` varchar(255) DEFAULT NULL,
  `l_url` varchar(255) DEFAULT NULL,
  `lemail` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `lroles` varchar(255) DEFAULT NULL,
  `lsession_id` varchar(255) DEFAULT NULL,
  `lsurname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `logger`
--

INSERT INTO `logger` (`lid`, `l_date`, `l_ip`, `l_url`, `lemail`, `lname`, `lroles`, `lsession_id`, `lsurname`) VALUES
(1, '2021-10-04 23:36:53', '0:0:0:0:0:0:0:1', '/diary/add', 'anonymousUser', NULL, NULL, 'D81434D25EC52D75BCA9D4CD2453E981', NULL),
(2, '2021-10-04 23:37:52', '0:0:0:0:0:0:0:1', '/diary/add', 'anonymousUser', NULL, NULL, 'D81434D25EC52D75BCA9D4CD2453E981', NULL),
(3, '2021-10-04 23:38:03', '0:0:0:0:0:0:0:1', '/diary/add', 'anonymousUser', NULL, NULL, 'D81434D25EC52D75BCA9D4CD2453E981', NULL),
(4, '2021-10-05 00:28:56', '0:0:0:0:0:0:0:1', '/password/change', 'anonymousUser', NULL, NULL, '862EFF27858E7664A5B329BC9EABE812', NULL),
(5, '2021-10-05 00:32:00', '0:0:0:0:0:0:0:1', '/password/change', 'anonymousUser', NULL, NULL, '862EFF27858E7664A5B329BC9EABE812', NULL),
(6, '2021-10-05 00:33:32', '0:0:0:0:0:0:0:1', '/password/change', 'anonymousUser', NULL, NULL, '723DD5DF8C67F24AA45D6E6D94F06F5C', NULL),
(7, '2021-10-05 00:34:02', '0:0:0:0:0:0:0:1', '/password/change', 'anonymousUser', NULL, NULL, '723DD5DF8C67F24AA45D6E6D94F06F5C', NULL),
(8, '2021-10-05 14:13:24', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, '2DF64002F418EF36F2D1FC1269CA438B', NULL),
(9, '2021-10-05 14:13:24', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'EEF29C12BF8D7414B70FEC24643401BB', NULL),
(10, '2021-10-05 14:13:24', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, '9C09CA87601805A2711C50B9D2F057CF', NULL),
(11, '2021-10-05 14:13:24', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, '412123A82BF541E4D1CC21137AC94384', NULL),
(12, '2021-10-05 14:13:24', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'CFDCB6908AB8D886B78B66623E1D2F28', NULL),
(13, '2021-10-05 14:13:24', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '412123A82BF541E4D1CC21137AC94384', NULL),
(14, '2021-10-05 14:13:24', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '412123A82BF541E4D1CC21137AC94384', NULL),
(15, '2021-10-05 14:13:24', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '412123A82BF541E4D1CC21137AC94384', NULL),
(16, '2021-10-05 14:13:25', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '412123A82BF541E4D1CC21137AC94384', NULL),
(17, '2021-10-05 15:41:47', '0:0:0:0:0:0:0:1', '/diary/add', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', '0A053A6A4845D3ABCA17B0441AA24CAF', 'Bilir'),
(18, '2021-10-05 15:41:55', '0:0:0:0:0:0:0:1', '/diary/add', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', '0A053A6A4845D3ABCA17B0441AA24CAF', 'Bilir'),
(19, '2021-10-05 15:42:59', '0:0:0:0:0:0:0:1', '/customer/search/0/umut%20turan%20gitti', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', '0A053A6A4845D3ABCA17B0441AA24CAF', 'Bilir'),
(20, '2021-10-05 15:44:16', '0:0:0:0:0:0:0:1', '/customer/search/0/umut%20turan%20gitti', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'D4024CBBF22E437391F7DAAD50ED8377', 'Bilir'),
(21, '2021-10-05 15:47:35', '0:0:0:0:0:0:0:1', '/password/change', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'A892261BC528481CC3D324269A14241D', 'Bilir'),
(22, '2021-10-05 15:52:08', '0:0:0:0:0:0:0:1', '/suppliers/list/0', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'A892261BC528481CC3D324269A14241D', 'Bilir'),
(23, '2021-10-05 15:52:41', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '89BC1C953DB0843B0E5A335DD7695ECF', NULL),
(24, '2021-10-05 15:52:42', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '89BC1C953DB0843B0E5A335DD7695ECF', NULL),
(25, '2021-10-05 15:52:42', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '89BC1C953DB0843B0E5A335DD7695ECF', NULL),
(35, '2021-10-05 16:22:42', '0:0:0:0:0:0:0:1', '/image/list/1', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '94F6CB4541A6F1E3B4C3DBC2C7B124D4', 'Caymaz'),
(36, '2021-10-05 16:22:54', '0:0:0:0:0:0:0:1', '/image/list/2', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '94F6CB4541A6F1E3B4C3DBC2C7B124D4', 'Caymaz'),
(37, '2021-10-05 16:27:37', '0:0:0:0:0:0:0:1', '/bill/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '94F6CB4541A6F1E3B4C3DBC2C7B124D4', 'Caymaz'),
(38, '2021-10-05 16:30:33', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'EDBD9463C2FF078D4CC1665E5AC0EB75', NULL),
(39, '2021-10-05 16:30:34', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'EDBD9463C2FF078D4CC1665E5AC0EB75', NULL),
(40, '2021-10-05 16:30:34', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'EDBD9463C2FF078D4CC1665E5AC0EB75', NULL),
(41, '2021-10-05 16:30:34', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'EDBD9463C2FF078D4CC1665E5AC0EB75', NULL),
(42, '2021-10-05 16:30:34', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'EDBD9463C2FF078D4CC1665E5AC0EB75', NULL),
(43, '2021-10-05 16:30:34', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'EDBD9463C2FF078D4CC1665E5AC0EB75', NULL),
(44, '2021-10-06 00:21:12', '0:0:0:0:0:0:0:1', '/customer/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D951EB5FE08C66384AF76AB4A88D592C', 'Caymaz'),
(45, '2021-10-06 00:24:46', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '9C22E06A24592FEF83350A000E7DA16B', NULL),
(46, '2021-10-06 00:24:46', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '9C22E06A24592FEF83350A000E7DA16B', NULL),
(47, '2021-10-06 00:24:46', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '9C22E06A24592FEF83350A000E7DA16B', NULL),
(48, '2021-10-06 00:24:46', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '9C22E06A24592FEF83350A000E7DA16B', NULL),
(49, '2021-10-06 00:24:46', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '9C22E06A24592FEF83350A000E7DA16B', NULL),
(50, '2021-10-06 00:24:46', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '9C22E06A24592FEF83350A000E7DA16B', NULL),
(51, '2021-10-06 00:25:05', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '9C22E06A24592FEF83350A000E7DA16B', NULL),
(52, '2021-10-06 00:25:05', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '9C22E06A24592FEF83350A000E7DA16B', NULL),
(53, '2021-10-06 00:25:05', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '9C22E06A24592FEF83350A000E7DA16B', NULL),
(54, '2021-10-06 00:25:05', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '9C22E06A24592FEF83350A000E7DA16B', NULL),
(55, '2021-10-06 00:25:05', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '9C22E06A24592FEF83350A000E7DA16B', NULL),
(56, '2021-10-06 00:25:05', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '9C22E06A24592FEF83350A000E7DA16B', NULL),
(57, '2021-10-06 00:29:49', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'EE139A9E27744FB07E16A928BE774B80', NULL),
(58, '2021-10-06 00:29:50', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'EE139A9E27744FB07E16A928BE774B80', NULL),
(59, '2021-10-06 00:29:50', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'EE139A9E27744FB07E16A928BE774B80', NULL),
(60, '2021-10-06 00:29:50', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'EE139A9E27744FB07E16A928BE774B80', NULL),
(61, '2021-10-06 00:29:50', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'EE139A9E27744FB07E16A928BE774B80', NULL),
(62, '2021-10-06 00:29:50', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'EE139A9E27744FB07E16A928BE774B80', NULL),
(63, '2021-10-06 00:32:14', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '6238DEA4692B7D30F9C8F8F81605D792', NULL),
(64, '2021-10-06 00:32:15', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '6238DEA4692B7D30F9C8F8F81605D792', NULL),
(65, '2021-10-06 00:32:15', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '6238DEA4692B7D30F9C8F8F81605D792', NULL),
(66, '2021-10-06 00:32:15', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '6238DEA4692B7D30F9C8F8F81605D792', NULL),
(67, '2021-10-06 00:32:15', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '6238DEA4692B7D30F9C8F8F81605D792', NULL),
(68, '2021-10-06 00:32:15', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '6238DEA4692B7D30F9C8F8F81605D792', NULL),
(69, '2021-10-06 00:33:12', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '2398E230AC50CDF5B71A74006F8EA962', NULL),
(70, '2021-10-06 00:33:12', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '2398E230AC50CDF5B71A74006F8EA962', NULL),
(71, '2021-10-06 00:33:12', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '2398E230AC50CDF5B71A74006F8EA962', NULL),
(72, '2021-10-06 00:33:12', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '2398E230AC50CDF5B71A74006F8EA962', NULL),
(73, '2021-10-06 00:33:13', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '2398E230AC50CDF5B71A74006F8EA962', NULL),
(74, '2021-10-06 00:33:13', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '2398E230AC50CDF5B71A74006F8EA962', NULL),
(75, '2021-10-06 00:33:56', '0:0:0:0:0:0:0:1', '/bill/sale/bankcardlist/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '55BEE1B3B9D11395A5614DD75CF97B37', 'Caymaz'),
(76, '2021-10-06 00:33:59', '0:0:0:0:0:0:0:1', '/bill/sale/bankcardlist/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '55BEE1B3B9D11395A5614DD75CF97B37', 'Caymaz'),
(77, '2021-10-06 00:34:20', '0:0:0:0:0:0:0:1', '/bill/sale/cashlist/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '55BEE1B3B9D11395A5614DD75CF97B37', 'Caymaz'),
(78, '2021-10-06 00:36:02', '0:0:0:0:0:0:0:1', '/bill/sale/expense/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '55BEE1B3B9D11395A5614DD75CF97B37', 'Caymaz'),
(79, '2021-10-06 00:38:41', '0:0:0:0:0:0:0:1', '/box/list/9/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '55BEE1B3B9D11395A5614DD75CF97B37', 'Caymaz'),
(80, '2021-10-06 00:39:15', '0:0:0:0:0:0:0:1', '/box/list/12/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '55BEE1B3B9D11395A5614DD75CF97B37', 'Caymaz'),
(81, '2021-10-06 00:41:55', '0:0:0:0:0:0:0:1', '/box/list/3/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'F61FCD5149A8564ECFD64412150A71B0', 'Caymaz'),
(82, '2021-10-06 00:42:09', '0:0:0:0:0:0:0:1', '/box/list/3/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '55BEE1B3B9D11395A5614DD75CF97B37', 'Caymaz'),
(83, '2021-10-06 00:51:22', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'F61FCD5149A8564ECFD64412150A71B0', 'Caymaz'),
(84, '2021-10-06 00:51:33', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'F61FCD5149A8564ECFD64412150A71B0', 'Caymaz'),
(85, '2021-10-06 00:51:40', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'F61FCD5149A8564ECFD64412150A71B0', 'Caymaz'),
(86, '2021-10-06 00:53:29', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(87, '2021-10-06 00:54:06', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(88, '2021-10-06 00:54:31', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(89, '2021-10-06 00:55:14', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(90, '2021-10-06 00:55:50', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(91, '2021-10-06 00:57:02', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(92, '2021-10-06 00:57:53', '0:0:0:0:0:0:0:1', '/customer/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(93, '2021-10-06 00:59:21', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(94, '2021-10-06 00:59:58', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(95, '2021-10-06 01:00:09', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(96, '2021-10-06 01:02:46', '0:0:0:0:0:0:0:1', '/category/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(97, '2021-10-06 01:03:08', '0:0:0:0:0:0:0:1', '/warehouse/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(98, '2021-10-06 01:04:56', '0:0:0:0:0:0:0:1', '/pet/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(99, '2021-10-06 01:06:17', '0:0:0:0:0:0:0:1', '/customer/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(100, '2021-10-06 01:14:24', '0:0:0:0:0:0:0:1', '/pet/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(101, '2021-10-06 01:17:04', '0:0:0:0:0:0:0:1', '/pet/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(102, '2021-10-06 01:18:57', '0:0:0:0:0:0:0:1', '/customer/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(103, '2021-10-06 01:19:42', '0:0:0:0:0:0:0:1', '/customer/update', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(104, '2021-10-06 01:20:05', '0:0:0:0:0:0:0:1', '/customer/update', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(105, '2021-10-06 01:21:23', '0:0:0:0:0:0:0:1', '/customer/delete/12', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(106, '2021-10-06 01:21:33', '0:0:0:0:0:0:0:1', '/customer/delete/12', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(107, '2021-10-06 01:23:47', '0:0:0:0:0:0:0:1', '/petRace/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(108, '2021-10-06 01:24:37', '0:0:0:0:0:0:0:1', '/petRace/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(109, '2021-10-06 01:25:48', '0:0:0:0:0:0:0:1', '/petColor/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(110, '2021-10-06 01:26:17', '0:0:0:0:0:0:0:1', '/petColor/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(111, '2021-10-06 01:27:38', '0:0:0:0:0:0:0:1', '/customer/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(112, '2021-10-06 01:29:20', '0:0:0:0:0:0:0:1', '/pet/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(113, '2021-10-06 01:29:49', '0:0:0:0:0:0:0:1', '/pet/update', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(114, '2021-10-06 01:31:57', '0:0:0:0:0:0:0:1', '/image/list/1', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'D4073E0DFB622E9FD6F56292D771280F', 'Caymaz'),
(115, '2021-10-06 01:32:39', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '7CA8C6401AC8663ABE00BEA65A87DB0C', NULL),
(116, '2021-10-06 01:32:40', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '7CA8C6401AC8663ABE00BEA65A87DB0C', NULL),
(117, '2021-10-06 01:32:40', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '7CA8C6401AC8663ABE00BEA65A87DB0C', NULL),
(118, '2021-10-06 01:32:40', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '7CA8C6401AC8663ABE00BEA65A87DB0C', NULL),
(119, '2021-10-06 01:32:40', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '7CA8C6401AC8663ABE00BEA65A87DB0C', NULL),
(120, '2021-10-06 01:32:40', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '7CA8C6401AC8663ABE00BEA65A87DB0C', NULL),
(121, '2021-10-06 02:06:44', '0:0:0:0:0:0:0:1', '/customer/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '4A95150DEA0480E3E775DC2CE8E96BF2', 'Caymaz'),
(122, '2021-10-06 02:10:15', '0:0:0:0:0:0:0:1', '/customer/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '4A95150DEA0480E3E775DC2CE8E96BF2', 'Caymaz'),
(123, '2021-10-06 02:20:15', '0:0:0:0:0:0:0:1', '/customer/search/0/ali%20bug%C3%BCn%20umutla%20okula%20gitti', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '4A95150DEA0480E3E775DC2CE8E96BF2', 'Caymaz'),
(124, '2021-10-06 02:21:19', '0:0:0:0:0:0:0:1', '/customer/search/0/turan%20bug%C3%BCn%20ali%20ile%20gitti', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'BB0FDB39FD4B90C95396B0AC6AAB5117', 'Bilir'),
(125, '2021-10-06 02:21:34', '0:0:0:0:0:0:0:1', '/customer/search/0/turan%20bug%C3%BCn%20ali%20ile%20gitti', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'BB0FDB39FD4B90C95396B0AC6AAB5117', 'Bilir'),
(126, '2021-10-06 02:21:55', '0:0:0:0:0:0:0:1', '/customer/search/0/ali%20bug%C3%BCn%20umutla%20okula%20gitti', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '4A95150DEA0480E3E775DC2CE8E96BF2', 'Caymaz'),
(127, '2021-10-06 02:21:57', '0:0:0:0:0:0:0:1', '/customer/search/0/ali%20bug%C3%BCn%20umutla%20okula%20gitti', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '4A95150DEA0480E3E775DC2CE8E96BF2', 'Caymaz'),
(128, '2021-10-06 02:22:00', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '4A95150DEA0480E3E775DC2CE8E96BF2', 'Caymaz'),
(129, '2021-10-06 02:22:01', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '4A95150DEA0480E3E775DC2CE8E96BF2', NULL),
(130, '2021-10-06 02:22:01', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '4A95150DEA0480E3E775DC2CE8E96BF2', 'Caymaz'),
(131, '2021-10-06 02:22:01', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '4A95150DEA0480E3E775DC2CE8E96BF2', NULL),
(132, '2021-10-06 02:22:01', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '4A95150DEA0480E3E775DC2CE8E96BF2', NULL),
(133, '2021-10-06 02:22:01', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '4A95150DEA0480E3E775DC2CE8E96BF2', NULL),
(134, '2021-10-06 02:22:56', '0:0:0:0:0:0:0:1', '/customer/search/0/turan%20bug%C3%BCn%20ali%20ile%20gitti', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '4A95150DEA0480E3E775DC2CE8E96BF2', 'Caymaz'),
(135, '2021-10-06 02:23:19', '0:0:0:0:0:0:0:1', '/customer/search/0/turan%20bug%C3%BCn%20ali%20ile%20gitti', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'BB0FDB39FD4B90C95396B0AC6AAB5117', 'Bilir'),
(136, '2021-10-06 02:30:45', '0:0:0:0:0:0:0:1', '/diary/add', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'BB0FDB39FD4B90C95396B0AC6AAB5117', 'Bilir'),
(137, '2021-10-06 02:31:19', '0:0:0:0:0:0:0:1', '/diary/add', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'BB0FDB39FD4B90C95396B0AC6AAB5117', 'Bilir'),
(138, '2021-10-06 02:31:29', '0:0:0:0:0:0:0:1', '/diary/add', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'BB0FDB39FD4B90C95396B0AC6AAB5117', 'Bilir'),
(139, '2021-10-06 02:41:29', '0:0:0:0:0:0:0:1', '/password/change', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '4A95150DEA0480E3E775DC2CE8E96BF2', 'Caymaz'),
(140, '2021-10-06 13:29:41', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '3970DB8B21DA46B05568191642B4FFCA', NULL),
(141, '2021-10-06 13:29:41', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '3970DB8B21DA46B05568191642B4FFCA', NULL),
(142, '2021-10-06 13:29:41', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '3970DB8B21DA46B05568191642B4FFCA', NULL),
(143, '2021-10-06 13:29:41', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '3970DB8B21DA46B05568191642B4FFCA', NULL),
(144, '2021-10-06 13:35:01', '0:0:0:0:0:0:0:1', '/user/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(145, '2021-10-06 13:36:08', '0:0:0:0:0:0:0:1', '/user/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(146, '2021-10-06 13:37:22', '0:0:0:0:0:0:0:1', '/user/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(147, '2021-10-06 13:39:05', '0:0:0:0:0:0:0:1', '/user/update', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(148, '2021-10-06 13:40:07', '0:0:0:0:0:0:0:1', '/user/delete/7', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(149, '2021-10-06 13:40:12', '0:0:0:0:0:0:0:1', '/user/delete/7', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(150, '2021-10-06 13:40:32', '0:0:0:0:0:0:0:1', '/user/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(151, '2021-10-06 13:43:36', '0:0:0:0:0:0:0:1', '/bill/sale/cashlist/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(152, '2021-10-06 13:44:15', '0:0:0:0:0:0:0:1', '/bill/sale/bankcardlist/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(153, '2021-10-06 13:44:52', '0:0:0:0:0:0:0:1', '/bill/sale/banktransferlist/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(154, '2021-10-06 13:45:33', '0:0:0:0:0:0:0:1', '/bill/sale/income/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(155, '2021-10-06 13:46:41', '0:0:0:0:0:0:0:1', '/bill/sale/expense/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(156, '2021-10-06 13:47:20', '0:0:0:0:0:0:0:1', '/statistic/mostvalcus/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(157, '2021-10-06 13:47:58', '0:0:0:0:0:0:0:1', '/statistic/paymenttype/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(158, '2021-10-06 13:48:50', '0:0:0:0:0:0:0:1', '/statistic/paymenttype/1', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(159, '2021-10-06 13:48:55', '0:0:0:0:0:0:0:1', '/statistic/paymenttype/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(160, '2021-10-06 13:49:16', '0:0:0:0:0:0:0:1', '/statistic/visitcount', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(161, '2021-10-06 13:49:37', '0:0:0:0:0:0:0:1', '/statistic/visitcount', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(162, '2021-10-06 13:50:10', '0:0:0:0:0:0:0:1', '/statistic/mostvisitedcustomer', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(163, '2021-10-06 13:52:18', '0:0:0:0:0:0:0:1', '/statistic/mostvisitedcustomer', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(164, '2021-10-06 13:52:28', '0:0:0:0:0:0:0:1', '/statistic/visitcount', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(165, '2021-10-06 13:52:37', '0:0:0:0:0:0:0:1', '/statistic/paymenttype/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(166, '2021-10-06 13:52:55', '0:0:0:0:0:0:0:1', '/statistic/mostvalcus/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(167, '2021-10-06 13:59:43', '0:0:0:0:0:0:0:1', '/statistic/mostvisitedcustomer', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(168, '2021-10-06 14:00:15', '0:0:0:0:0:0:0:1', '/statistic/visitcount', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(169, '2021-10-06 14:00:43', '0:0:0:0:0:0:0:1', '/statistic/mostvalcus/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Caymaz'),
(170, '2021-10-06 14:01:42', '0:0:0:0:0:0:0:1', '/diary/add', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'DA8BEAC658BF89CC5076CBD23940231A', 'Bilir'),
(171, '2021-10-06 14:41:24', '0:0:0:0:0:0:0:1', '/pet/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '9047E27AEDC59111FDD8D7E3B633A543', 'Caymaz'),
(172, '2021-10-06 16:36:49', '0:0:0:0:0:0:0:1', '/warehouse/add', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '068F28598A718FFD63C2CEC877340197', 'Caymaz'),
(173, '2021-10-06 16:37:06', '0:0:0:0:0:0:0:1', '/warehouse/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '068F28598A718FFD63C2CEC877340197', 'Caymaz'),
(174, '2021-10-06 16:44:10', '0:0:0:0:0:0:0:1', '/customer/search/0/turan%20ali%20okula%20gitti', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '068F28598A718FFD63C2CEC877340197', 'Caymaz'),
(175, '2021-10-06 16:44:43', '0:0:0:0:0:0:0:1', '/customer/search/0/umut%20turan%20gitti', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'D27EE2F3CA48260894E260D555FF8DFD', 'Bilir'),
(176, '2021-10-06 16:48:40', '0:0:0:0:0:0:0:1', '/customer/search/0/umut%20turan%20gitti', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'B21AB78F5B254594A11A636D6444FAD2', 'Bilir'),
(177, '2021-10-06 16:52:48', '0:0:0:0:0:0:0:1', '/customer/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'B21AB78F5B254594A11A636D6444FAD2', 'Caymaz'),
(178, '2021-10-06 16:52:57', '0:0:0:0:0:0:0:1', '/customer/search/0/umut%20turan%20gitti', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'B21AB78F5B254594A11A636D6444FAD2', 'Bilir'),
(179, '2021-10-06 17:01:46', '0:0:0:0:0:0:0:1', '/diary/redislist/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '9D8FDA083C37205C297CEF96EDF421F6', 'Caymaz'),
(180, '2021-10-06 17:02:21', '0:0:0:0:0:0:0:1', '/diary/add', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', '9D8FDA083C37205C297CEF96EDF421F6', 'Bilir'),
(181, '2021-10-06 17:02:25', '0:0:0:0:0:0:0:1', '/diary/redislist/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '9D8FDA083C37205C297CEF96EDF421F6', 'Caymaz'),
(182, '2021-10-06 17:35:13', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, '79C428DDCED0639CB9C38F9B6F06368A', NULL),
(183, '2021-10-06 17:35:14', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, '79C428DDCED0639CB9C38F9B6F06368A', NULL),
(184, '2021-10-06 17:35:14', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, '79C428DDCED0639CB9C38F9B6F06368A', NULL),
(185, '2021-10-06 17:35:14', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, '79C428DDCED0639CB9C38F9B6F06368A', NULL),
(186, '2021-10-06 17:35:15', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, '79C428DDCED0639CB9C38F9B6F06368A', NULL),
(187, '2021-10-06 17:35:15', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, '79C428DDCED0639CB9C38F9B6F06368A', NULL),
(188, '2021-10-06 17:35:26', '0:0:0:0:0:0:0:1', '/diary/redislist/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'B7084483A7B16F0A417FBD8D76FF9BA6', 'Caymaz'),
(189, '2021-10-06 17:40:34', '0:0:0:0:0:0:0:1', '/image/upload', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'AE807933A03A12670B9D5A6F105F0E28', 'Caymaz'),
(190, '2021-10-06 17:46:08', '0:0:0:0:0:0:0:1', '/user/logout%22', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'AE807933A03A12670B9D5A6F105F0E28', 'Caymaz'),
(191, '2021-10-06 17:46:55', '0:0:0:0:0:0:0:1', '/customer/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '9DD8B3A80D51CB96D4C2A453271AA6DD', 'Caymaz'),
(192, '2021-10-06 17:47:55', '0:0:0:0:0:0:0:1', '/customer/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '1FC0E13E80DA0D13EED58E39FE3041D3', 'Caymaz'),
(193, '2021-10-06 17:48:00', '0:0:0:0:0:0:0:1', '/customer/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '1FC0E13E80DA0D13EED58E39FE3041D3', 'Caymaz'),
(194, '2021-10-07 10:12:11', '0:0:0:0:0:0:0:1', '/swagger-ui/', 'anonymousUser', NULL, NULL, 'CD7A59E69D1A6DA0EBF80A1D8193F118', NULL),
(195, '2021-10-07 10:12:12', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui.css', 'anonymousUser', NULL, NULL, 'CD7A59E69D1A6DA0EBF80A1D8193F118', NULL),
(196, '2021-10-07 10:12:12', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-bundle.js', 'anonymousUser', NULL, NULL, 'CD7A59E69D1A6DA0EBF80A1D8193F118', NULL),
(197, '2021-10-07 10:12:12', '0:0:0:0:0:0:0:1', '/swagger-ui/swagger-ui-standalone-preset.js', 'anonymousUser', NULL, NULL, 'CD7A59E69D1A6DA0EBF80A1D8193F118', NULL),
(198, '2021-10-07 10:12:12', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.js', 'anonymousUser', NULL, NULL, 'CD7A59E69D1A6DA0EBF80A1D8193F118', NULL),
(199, '2021-10-07 10:12:12', '0:0:0:0:0:0:0:1', '/swagger-ui/springfox.css', 'anonymousUser', NULL, NULL, 'CD7A59E69D1A6DA0EBF80A1D8193F118', NULL),
(200, '2021-10-07 10:12:12', '0:0:0:0:0:0:0:1', '/swagger-ui/favicon-32x32.png', 'anonymousUser', NULL, NULL, 'CD7A59E69D1A6DA0EBF80A1D8193F118', NULL),
(201, '2021-10-07 10:12:12', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/ui', '', NULL, NULL, 'CD7A59E69D1A6DA0EBF80A1D8193F118', NULL),
(202, '2021-10-07 10:12:12', '0:0:0:0:0:0:0:1', '/swagger-resources/configuration/security', '', NULL, NULL, 'CD7A59E69D1A6DA0EBF80A1D8193F118', NULL),
(203, '2021-10-07 10:12:12', '0:0:0:0:0:0:0:1', '/swagger-resources', '', NULL, NULL, 'CD7A59E69D1A6DA0EBF80A1D8193F118', NULL),
(204, '2021-10-07 10:12:13', '0:0:0:0:0:0:0:1', '/v2/api-docs', '', NULL, NULL, 'CD7A59E69D1A6DA0EBF80A1D8193F118', NULL),
(205, '2021-10-07 10:29:27', '0:0:0:0:0:0:0:1', '/customer/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', 'B46CE2E776F60A327C9FB029A3599FAD', 'Caymaz'),
(206, '2021-10-07 10:52:16', '0:0:0:0:0:0:0:1', '/diary/add', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', 'DA1AA538D212547C2FA96A738CC58FB4', 'Bilir'),
(207, '2021-10-07 10:55:08', '0:0:0:0:0:0:0:1', '/customer/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '0D34E51ECDA13698F87E3C3E16491EA5', 'Caymaz'),
(208, '2021-10-07 10:55:31', '0:0:0:0:0:0:0:1', '/customer/search/0/umut%20turan%20gitti', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', '0D34E51ECDA13698F87E3C3E16491EA5', 'Bilir'),
(209, '2021-10-07 10:56:38', '0:0:0:0:0:0:0:1', '/diary/add', 'serkan@mail.com', 'Serkan', 'ROLE_ADMIN', '0D34E51ECDA13698F87E3C3E16491EA5', 'Bilir'),
(210, '2021-10-07 10:56:54', '0:0:0:0:0:0:0:1', '/diary/redislist/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '0D34E51ECDA13698F87E3C3E16491EA5', 'Caymaz'),
(211, '2021-10-07 10:58:28', '0:0:0:0:0:0:0:1', '/suppliers/list/0', 'turan@mail.com', 'Turan', 'ROLE_ADMIN', '3964F818B887BD9099AFEF10C4585DE7', 'Caymaz');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pet`
--

CREATE TABLE `pet` (
  `pid` int(11) NOT NULL,
  `cbarren` varchar(255) DEFAULT NULL,
  `cbirth` varchar(255) DEFAULT NULL,
  `cchip` int(11) NOT NULL,
  `cgender` varchar(255) DEFAULT NULL,
  `ckind` int(11) NOT NULL,
  `cpatient` varchar(255) DEFAULT NULL,
  `creport` int(11) NOT NULL,
  `p_color_pcid` int(11) DEFAULT NULL,
  `p_race_rid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pet`
--

INSERT INTO `pet` (`pid`, `cbarren`, `cbirth`, `cchip`, `cgender`, `ckind`, `cpatient`, `creport`, `p_color_pcid`, `p_race_rid`) VALUES
(5, 'Kısır', '1', 1, 'Erkek', 2, 'update edilmiş hayvan', 1, 8, 4),
(6, 'Kısır Değil', '5', 5, 'Dişi', 3, 'ewqe', 5, 7, 22),
(7, 'Kısır Değil', '6', 6, 'Dişi', 2, 'weq', 6, 6, 22),
(8, 'Kısır Değil', '2000', 12, 'Dişi', 1, 'Hayvan1', 12, 1, 24),
(9, 'Kısır', '2001', 13, 'Erkek', 3, 'Hayvan2', 13, 8, 25),
(10, 'Kısır', '2013', 14, 'Erkek', 6, 'Hayvan3', 14, 3, 26),
(11, 'Kısır', '2000', 35, 'Erkek', 1, 'Kedicik', 35, 4, 24),
(12, 'Kısır', '2001', 57, 'Erkek', 2, 'Köpekcik', 57, 3, 4),
(13, 'Kısır', '2000', 123, 'Erkek', 1, 'Kedicik', 123, 9, 24),
(14, 'Kısır Değil', '2001', 124, 'Dişi', 2, 'Köpekcik', 124, 3, 4),
(18, 'Kısır', '2021', 89, 'Erkek', 1, 'Sunum Kedi', 89, 10, 28),
(19, 'Kısır Değil', '2021', 90, 'Dişi', 2, 'Sunum Köpek', 90, 10, 3),
(23, 'Kısır', '2015', 400, 'Erkek', 2, 'xxx', 401, 8, 4),
(24, 'Kısır', '2015', 130, 'Erkek', 2, 'raki', 999, 8, 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pet_color`
--

CREATE TABLE `pet_color` (
  `pcid` int(11) NOT NULL,
  `pcolor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pet_color`
--

INSERT INTO `pet_color` (`pcid`, `pcolor`) VALUES
(4, 'Beyaz'),
(9, 'Eflatun'),
(7, 'İki Renkli'),
(3, 'Kahve'),
(5, 'Kırmızı'),
(6, 'Lacivert'),
(1, 'Sarı'),
(13, 'Service Rengi'),
(2, 'Siyah'),
(10, 'Sunum Renk'),
(8, 'Üç Renkli'),
(11, 'Yeşil');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pet_race`
--

CREATE TABLE `pet_race` (
  `rid` int(11) NOT NULL,
  `prace` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `pet_race`
--

INSERT INTO `pet_race` (`rid`, `prace`) VALUES
(22, 'Dana'),
(33, 'Kaplan'),
(3, 'Karabaş'),
(4, 'Köpek'),
(31, 'Kuzu'),
(26, 'Maymun'),
(23, 'Muhabbet Kuşu'),
(25, 'Papağan'),
(40, 'Service Aslanı'),
(24, 'Tekir'),
(28, 'Van Kedisi');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `proid` int(11) NOT NULL,
  `buyprice` int(11) DEFAULT NULL,
  `criticalquantity` int(11) DEFAULT NULL,
  `pbpki` varchar(255) DEFAULT NULL,
  `productbarcode` varchar(255) DEFAULT NULL,
  `productcode` varchar(255) DEFAULT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `productstatus` varchar(255) DEFAULT NULL,
  `producttax` int(11) DEFAULT NULL,
  `producttype` int(11) DEFAULT NULL,
  `productunit` int(11) DEFAULT NULL,
  `pspki` varchar(255) DEFAULT NULL,
  `sellprice` int(11) DEFAULT NULL,
  `productcategory_caid` int(11) DEFAULT NULL,
  `productsuppliers_sid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`proid`, `buyprice`, `criticalquantity`, `pbpki`, `productbarcode`, `productcode`, `productname`, `productstatus`, `producttax`, `producttype`, `productunit`, `pspki`, `sellprice`, `productcategory_caid`, `productsuppliers_sid`) VALUES
(3, 2, 10, 'Dahil', '1', '065879591', 'Ürün1', 'Aktif', 2, 1, 3, 'Dahil', 18, 1, 9),
(5, 1, 10, 'Dahil', '15', '066950253', 'Deneme', 'Aktif', 1, 3, 2, 'Dahil', 4, 1, 9),
(6, 20, 30, 'Dahil', '16', '415929096', 'ÜrünD', 'Aktif', 0, 2, 1, 'Dahil', 25, 1, 9),
(7, 10, 10, 'Dahil', '87', '438895643', 'Pahalı Ürün', 'Aktif', 0, 2, 1, 'Dahil', 200, 1, 9),
(8, 100, 30, 'Dahil', '123', '473660874', 'Kuduz Aşısı', 'Aktif', 0, 5, 3, 'Dahil', 120, 1, 11),
(12, 10, 30, 'Dahil Degil', '4564', '490276490', 'a', 'Pasif', 0, 1, 2, 'Dahil Degil', 15, 1, 12),
(14, 150, 30, 'Dahil', '13', '665385602', 'Sunum Ürün', 'Aktif', 0, 0, 1, 'Dahil', 200, 1, 13),
(16, 2, 10, 'Dahil', '111', '111111', 'Ürün Postman', 'Aktif', 2, 1, 3, 'Dahil', 18, 1, 9),
(22, 2, 10, 'Dahil', '111102', '1111102', 'Ürün Postmanx-Update', 'Aktif', 2, 1, 3, 'Dahil', 18, 1, 9);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_stock`
--

CREATE TABLE `product_stock` (
  `psid` int(11) NOT NULL,
  `opstatus` bit(1) DEFAULT NULL,
  `prodid` int(11) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `waid` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `product_stock`
--

INSERT INTO `product_stock` (`psid`, `opstatus`, `prodid`, `stock`, `waid`, `date`) VALUES
(1, b'1', 3, 15, 1, '2021-10-03 15:48:34'),
(2, b'1', 3, 20, 1, '2021-09-23 19:45:44'),
(3, b'1', 6, 50, 1, '2021-09-23 19:53:18'),
(4, b'0', 6, 49, 1, '2021-09-23 20:23:27'),
(5, b'0', 5, -1, 1, '2021-09-23 20:23:54'),
(6, b'0', 3, 19, 1, '2021-09-23 21:26:58'),
(7, b'1', 5, 11, 1, '2021-09-23 21:32:21'),
(8, b'0', 5, 10, 1, '2021-09-23 21:46:21'),
(9, b'1', 3, 31, 1, '2021-09-23 21:50:44'),
(10, b'1', 7, 5, 1, '2021-09-24 02:15:33'),
(11, b'0', 7, 4, 1, '2021-09-24 02:16:01'),
(12, b'1', 8, 10, 4, '2021-09-24 11:55:00'),
(13, b'1', 8, 12, 4, '2021-09-24 11:56:00'),
(14, b'1', 5, 20, 1, '2021-09-24 11:58:39'),
(15, b'0', 8, 11, 4, '2021-09-24 11:59:57'),
(16, b'0', 3, 30, 1, '2021-09-24 12:03:37'),
(17, b'0', 8, -1, 1, '2021-09-24 12:05:14'),
(18, b'0', 7, 3, 1, '2021-09-24 12:07:29'),
(19, b'0', 8, -2, 1, '2021-09-24 12:12:30'),
(21, b'0', 3, 29, 1, '2021-09-24 12:58:27'),
(22, b'0', 8, -3, 1, '2021-09-24 13:04:10'),
(23, b'1', 8, 45, 1, '2021-09-24 15:54:05'),
(24, b'0', 8, 44, 1, '2021-09-24 15:54:30'),
(25, b'1', 3, 25, 5, '2021-09-24 16:50:11'),
(26, b'1', 8, 15, 5, '2021-09-24 16:50:58'),
(27, b'0', 8, 14, 5, '2021-09-24 16:51:24'),
(28, b'1', 14, 50, 5, '2021-09-26 17:17:22'),
(29, b'1', 14, 85, 5, '2021-09-26 17:20:18'),
(30, b'0', 14, 84, 5, '2021-09-26 17:23:38'),
(31, NULL, 4, 10, 1, '2021-10-03 15:46:28'),
(32, b'0', 7, -1, 7, '2021-10-06 13:58:13'),
(33, b'0', 8, 43, 1, '2021-10-06 13:58:49'),
(34, b'1', 8, 58, 1, '2021-10-06 13:59:27');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `role`
--

CREATE TABLE `role` (
  `rid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `role`
--

INSERT INTO `role` (`rid`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_DOKTOR'),
(3, 'ROLE_SEKRETER');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `schedule_calendar`
--

CREATE TABLE `schedule_calendar` (
  `sid` int(11) NOT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `border_color` varchar(255) DEFAULT NULL,
  `calendar_id` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `drag_bg_color` varchar(255) DEFAULT NULL,
  `due_date_class` varchar(255) DEFAULT NULL,
  `end` varchar(255) DEFAULT NULL,
  `id` varchar(255) DEFAULT NULL,
  `is_all_day` bit(1) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `raw` varchar(255) DEFAULT NULL,
  `start` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `schedule_calendar`
--

INSERT INTO `schedule_calendar` (`sid`, `bg_color`, `border_color`, `calendar_id`, `category`, `color`, `drag_bg_color`, `due_date_class`, `end`, `id`, `is_all_day`, `location`, `raw`, `start`, `state`, `title`) VALUES
(5, '#ff3333', '#ff3333', '2', 'time', '#ffffff', '#ff3333', '', 'Fri Sep 24 2021 11:00:00 GMT+0300 (GMT+03:00)', '8cfcde74-cbb9-530a-8481-f6a1b3435bd8', b'0', 'İstanbul', 'public', 'Fri Sep 24 2021 08:30:00 GMT+0300 (GMT+03:00)', 'Açık', 'Köpek'),
(6, '#9e5fff', '#9e5fff', '1', 'time', '#ffffff', '#9e5fff', '', 'Thu Sep 23 2021 05:00:00 GMT+0300 (GMT+03:00)', 'c6175343-24dc-52b0-87d0-2b8fb1cffff1', b'0', 'İstanbul', 'public', 'Thu Sep 23 2021 01:00:00 GMT+0300 (GMT+03:00)', 'Meşkul', 'Kedi'),
(8, '#ff3333', '#ff3333', '2', 'time', '#ffffff', '#ff3333', '', 'Fri Sep 24 2021 11:00:00 GMT+0300 (GMT+03:00)', '8cfcde74-cbb9-530a-8481-f6a1b3435bd8', b'0', 'İstanbul', 'public', 'Fri Sep 24 2021 08:30:00 GMT+0300 (GMT+03:00)', 'Açık', 'Köpek-update');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `suppliers`
--

CREATE TABLE `suppliers` (
  `sid` int(11) NOT NULL,
  `semail` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `sphone` varchar(255) DEFAULT NULL,
  `sstatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `suppliers`
--

INSERT INTO `suppliers` (`sid`, `semail`, `sname`, `sphone`, `sstatus`) VALUES
(9, 'tedarikci@mail.com', 'Tedarikçi', '213', 'Aktif'),
(11, 'tedarikci2@mail.com', 'Tedarikçi2', '123', 'Aktif'),
(12, 'sunum@mail.com', 'SunumTedarikci', '123', 'Aktif'),
(13, 'sunumtedarikci@mail.com', 'Sunum Tedarikçi', '555', 'Aktif'),
(14, 'postman@mail.com', 'postman tedarikçi-update', '965874', 'Aktif');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token_expired` bit(1) NOT NULL,
  `useremail` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userphone` varchar(255) DEFAULT NULL,
  `userstatus` varchar(255) DEFAULT NULL,
  `usersurname` varchar(255) DEFAULT NULL,
  `userimage_iid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`uid`, `enabled`, `password`, `token_expired`, `useremail`, `username`, `userphone`, `userstatus`, `usersurname`, `userimage_iid`) VALUES
(6, b'1', '$2a$10$OO9T8DZF.sLsaton9YClPOLq8RQ/pNApsaH3alMnE7eXuH3T95lJ.', b'1', 'serkan@mail.com', 'Serkan', '4564564', 'Aktif', 'Bilir', 9),
(8, b'1', '$2a$10$YuUUTBJuFfERFoLRxE4c1eume2RGc5tVUI1V1BIsb4vuDn3RD4pPC', b'1', 'sunumedit@mail.com', 'Sunum', '424242', 'Aktif', 'Sunum', 28),
(9, b'1', '$2a$10$rSXXUh0PZpTXqwlMEYwFy.iq868q.uycYKZc.LdQAibaFbuL/KswW', b'1', 'turan@mail.com', 'Turan', '34565544', 'Pasif', 'Caymaz', 31),
(10, b'1', '$2a$10$5gNuRN6NUefpQAMHFq/A2OP//zPSXR1YUY3SxjcmCnRBilGPcXcR6', b'1', 'sekreter@mail.com', 'sekreter', '4567', 'Pasif', 'sekreters', 33),
(11, b'1', '$2a$10$JlIrXBE.7ZZdx8taXBhLceanKRtUGmXLjGWBQ9OKAMfNCmMDhiEnu', b'1', 'serviceuser@mail.com', 'serviceuser-UPDATE', '4564564458', 'Aktif', 'bilir', 31);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users_roles`
--

CREATE TABLE `users_roles` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users_roles`
--

INSERT INTO `users_roles` (`user_id`, `role_id`) VALUES
(6, 1),
(8, 1),
(9, 1),
(10, 3),
(11, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ware_house`
--

CREATE TABLE `ware_house` (
  `wid` int(11) NOT NULL,
  `wname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ware_house`
--

INSERT INTO `ware_house` (`wid`, `wname`) VALUES
(1, 'AnaDepo'),
(6, 'Depo-update'),
(7, 'Serivice Depo'),
(9, 'Serivice Depo2'),
(5, 'SunumDepo'),
(10, 'swagger');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`);

--
-- Tablo için indeksler `box_action`
--
ALTER TABLE `box_action`
  ADD PRIMARY KEY (`boid`);

--
-- Tablo için indeksler `calendar_info`
--
ALTER TABLE `calendar_info`
  ADD PRIMARY KEY (`cid`);

--
-- Tablo için indeksler `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`caid`),
  ADD UNIQUE KEY `categoryname` (`categoryname`);

--
-- Tablo için indeksler `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Tablo için indeksler `customer_pets`
--
ALTER TABLE `customer_pets`
  ADD UNIQUE KEY `UK_r6qf8vn2anug1l2qhbhbve51u` (`pets_pid`),
  ADD KEY `FKllnl1jf0gi9vm4lmrbadd9xqk` (`customer_cid`);

--
-- Tablo için indeksler `diary`
--
ALTER TABLE `diary`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Tablo için indeksler `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`iid`);

--
-- Tablo için indeksler `lab`
--
ALTER TABLE `lab`
  ADD PRIMARY KEY (`lid`),
  ADD KEY `FKk15b8amlpqkxa187gltm2u8md` (`labimage_iid`),
  ADD KEY `FKs8u0173ye4ar380cieo4rjnwv` (`pet_pid`);

--
-- Tablo için indeksler `logger`
--
ALTER TABLE `logger`
  ADD PRIMARY KEY (`lid`);

--
-- Tablo için indeksler `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `cchip` (`cchip`),
  ADD KEY `FK9rkr0hhvm3b9lhimt3soqk8bx` (`p_color_pcid`),
  ADD KEY `FKqg4g9tv24c23vq7gvmvywvy2g` (`p_race_rid`);

--
-- Tablo için indeksler `pet_color`
--
ALTER TABLE `pet_color`
  ADD PRIMARY KEY (`pcid`),
  ADD UNIQUE KEY `pcolor` (`pcolor`);

--
-- Tablo için indeksler `pet_race`
--
ALTER TABLE `pet_race`
  ADD PRIMARY KEY (`rid`),
  ADD UNIQUE KEY `prace` (`prace`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`proid`),
  ADD UNIQUE KEY `UK_pq7dm8s88s7isryltijs6mxg3` (`productbarcode`),
  ADD UNIQUE KEY `UK_94qeefjolf5hhsm94gcuxnbdk` (`productcode`),
  ADD UNIQUE KEY `UK_6aqixgrjm2rrw2is6ol1nxq1b` (`productname`),
  ADD KEY `FKr2xvlbndysgnxvx4mo2kt413f` (`productcategory_caid`),
  ADD KEY `FK3b7ylbrvhwgqfou0moxc2stka` (`productsuppliers_sid`);

--
-- Tablo için indeksler `product_stock`
--
ALTER TABLE `product_stock`
  ADD PRIMARY KEY (`psid`);

--
-- Tablo için indeksler `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`rid`);

--
-- Tablo için indeksler `schedule_calendar`
--
ALTER TABLE `schedule_calendar`
  ADD PRIMARY KEY (`sid`);

--
-- Tablo için indeksler `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `semail` (`semail`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD KEY `FK9orlfdcis7tc3ola7trpvit5t` (`userimage_iid`);

--
-- Tablo için indeksler `users_roles`
--
ALTER TABLE `users_roles`
  ADD KEY `FKt4v0rrweyk393bdgt107vdx0x` (`role_id`),
  ADD KEY `FK2o0jvgh89lemvvo17cbqvdxaa` (`user_id`);

--
-- Tablo için indeksler `ware_house`
--
ALTER TABLE `ware_house`
  ADD PRIMARY KEY (`wid`),
  ADD UNIQUE KEY `UK_o6b4n3xishp8n0wx6awao3vl5` (`wname`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `box_action`
--
ALTER TABLE `box_action`
  MODIFY `boid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `calendar_info`
--
ALTER TABLE `calendar_info`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `category`
--
ALTER TABLE `category`
  MODIFY `caid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `customer`
--
ALTER TABLE `customer`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Tablo için AUTO_INCREMENT değeri `diary`
--
ALTER TABLE `diary`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `image`
--
ALTER TABLE `image`
  MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `lab`
--
ALTER TABLE `lab`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Tablo için AUTO_INCREMENT değeri `logger`
--
ALTER TABLE `logger`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- Tablo için AUTO_INCREMENT değeri `pet`
--
ALTER TABLE `pet`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Tablo için AUTO_INCREMENT değeri `pet_color`
--
ALTER TABLE `pet_color`
  MODIFY `pcid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `pet_race`
--
ALTER TABLE `pet_race`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Tablo için AUTO_INCREMENT değeri `product`
--
ALTER TABLE `product`
  MODIFY `proid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Tablo için AUTO_INCREMENT değeri `product_stock`
--
ALTER TABLE `product_stock`
  MODIFY `psid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Tablo için AUTO_INCREMENT değeri `role`
--
ALTER TABLE `role`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `schedule_calendar`
--
ALTER TABLE `schedule_calendar`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Tablo için AUTO_INCREMENT değeri `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Tablo için AUTO_INCREMENT değeri `ware_house`
--
ALTER TABLE `ware_house`
  MODIFY `wid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `customer_pets`
--
ALTER TABLE `customer_pets`
  ADD CONSTRAINT `FK52sudwlkiavtpmardj9dxqq7t` FOREIGN KEY (`pets_pid`) REFERENCES `pet` (`pid`),
  ADD CONSTRAINT `FKllnl1jf0gi9vm4lmrbadd9xqk` FOREIGN KEY (`customer_cid`) REFERENCES `customer` (`cid`);

--
-- Tablo kısıtlamaları `lab`
--
ALTER TABLE `lab`
  ADD CONSTRAINT `FKk15b8amlpqkxa187gltm2u8md` FOREIGN KEY (`labimage_iid`) REFERENCES `image` (`iid`),
  ADD CONSTRAINT `FKs8u0173ye4ar380cieo4rjnwv` FOREIGN KEY (`pet_pid`) REFERENCES `pet` (`pid`);

--
-- Tablo kısıtlamaları `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `FK9rkr0hhvm3b9lhimt3soqk8bx` FOREIGN KEY (`p_color_pcid`) REFERENCES `pet_color` (`pcid`),
  ADD CONSTRAINT `FKqg4g9tv24c23vq7gvmvywvy2g` FOREIGN KEY (`p_race_rid`) REFERENCES `pet_race` (`rid`);

--
-- Tablo kısıtlamaları `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK3b7ylbrvhwgqfou0moxc2stka` FOREIGN KEY (`productsuppliers_sid`) REFERENCES `suppliers` (`sid`),
  ADD CONSTRAINT `FKr2xvlbndysgnxvx4mo2kt413f` FOREIGN KEY (`productcategory_caid`) REFERENCES `category` (`caid`);

--
-- Tablo kısıtlamaları `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK9orlfdcis7tc3ola7trpvit5t` FOREIGN KEY (`userimage_iid`) REFERENCES `image` (`iid`);

--
-- Tablo kısıtlamaları `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `FK2o0jvgh89lemvvo17cbqvdxaa` FOREIGN KEY (`user_id`) REFERENCES `users` (`uid`),
  ADD CONSTRAINT `FKt4v0rrweyk393bdgt107vdx0x` FOREIGN KEY (`role_id`) REFERENCES `role` (`rid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
