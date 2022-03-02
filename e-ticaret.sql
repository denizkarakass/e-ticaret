-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 02 Mar 2022, 22:39:07
-- Sunucu sürümü: 10.3.32-MariaDB-cll-lve
-- PHP Sürümü: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `u0529810_veri`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adresler`
--

CREATE TABLE `adresler` (
  `id` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL,
  `AdiSoyadi` varchar(100) NOT NULL,
  `Adres` varchar(255) NOT NULL,
  `Ilce` varchar(100) NOT NULL,
  `Sehir` varchar(100) NOT NULL,
  `TelefonNumarasi` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `adresler`
--

INSERT INTO `adresler` (`id`, `UyeId`, `AdiSoyadi`, `Adres`, `Ilce`, `Sehir`, `TelefonNumarasi`) VALUES
(1, 1, 'Deniz Karakaş', 'Gökova Mahallesi', 'Ulam', 'Muğla', '5534083450'),
(2, 1, 'Mustafa Usta', '41 Evler Sokaka No:2', 'Yunusemre', 'Manisa', '5555555555'),
(3, 9, 'mimagaza', 'deneme', 'denemeilce', 'denemesehir', '5555555555'),
(4, 9, 'mimagaza-2', 'denemedeneme', 'denemeilce2', 'denemesehir2', '5555555555'),
(6, 1, 'deniz', 'sitedenem', 'sitedeneme', 'sitedeneme', '5534083450');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` tinyint(1) UNSIGNED NOT NULL,
  `SiteAdi` varchar(100) NOT NULL,
  `SiteTitle` varchar(100) NOT NULL,
  `SiteDescription` varchar(150) NOT NULL,
  `SiteKeywords` varchar(255) NOT NULL,
  `SiteCopyrigtMetni` varchar(255) NOT NULL,
  `SiteLogosu` varchar(50) NOT NULL,
  `SiteLinki` varchar(200) NOT NULL,
  `SiteEmailAdresi` varchar(50) NOT NULL,
  `SiteEmailSifresi` varchar(50) NOT NULL,
  `instagram1` varchar(255) NOT NULL,
  `facebook1` varchar(255) NOT NULL,
  `instagram2` varchar(255) NOT NULL,
  `facebook2` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `SiteAdi`, `SiteTitle`, `SiteDescription`, `SiteKeywords`, `SiteCopyrigtMetni`, `SiteLogosu`, `SiteLinki`, `SiteEmailAdresi`, `SiteEmailSifresi`, `instagram1`, `facebook1`, `instagram2`, `facebook2`) VALUES
(0, 'Mi Mağaza', 'Mi Mağaza', 'Türkiye\'nin Xiaomi ürünleri mağazası Mi Mağaza', 'mimagaza', '2022- Mi Mağaza - Tüm Hakları Saklıdır.', 'mimagaza-logo.png', 'https://www.work.deniz-karakas.com', '', '', 'https://www.instagram.com/mi.magaza/', 'https://www.facebook.com/mi.magaza', '', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `zaman` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `event` text COLLATE utf8_german2_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Tablo döküm verisi `logs`
--

INSERT INTO `logs` (`id`, `event`, `time`) VALUES
(259, 'furkan(94.123.25.2) Tarafından Giriş Yapıldı.', '2022-02-22 01:44:13'),
(260, 'furkan(195.174.142.72) Tarafından Giriş Yapıldı.', '2022-02-22 05:18:54'),
(261, 'furkan(195.174.142.72) Tarafından Yeni Kullanıcı Eklendi.', '2022-02-22 05:19:50'),
(262, 'furkan(195.174.142.146) Tarafından Giriş Yapıldı.', '2022-02-22 11:02:17'),
(263, 'furkan(195.174.142.146) Tarafından Giriş Yapıldı.', '2022-02-22 11:04:35'),
(264, 'furkan(78.173.28.204) Tarafından Giriş Yapıldı.', '2022-02-22 11:05:10'),
(265, 'furkan(78.173.28.204) Tarafından Yeni Kullanıcı Eklendi.', '2022-02-22 11:07:24'),
(266, 'feridun(37.155.23.49) Tarafından Giriş Yapıldı.', '2022-02-22 11:12:40'),
(267, 'feridun(78.173.28.204) Tarafından Giriş Yapıldı.', '2022-02-22 11:32:48'),
(268, 'furkan(195.174.142.72) Tarafından Giriş Yapıldı.', '2022-02-23 02:51:24'),
(269, 'furkan(94.123.25.2) Tarafından Giriş Yapıldı.', '2022-02-23 05:33:41'),
(270, 'furkan(195.174.142.72) Tarafından Giriş Yapıldı.', '2022-02-23 13:35:03'),
(271, 'furkan(195.174.142.72) Tarafından Giriş Yapıldı.', '2022-02-23 13:35:03'),
(272, 'furkan(195.174.142.72) Tarafından Giriş Yapıldı.', '2022-02-23 21:50:30'),
(273, 'furkan(195.174.142.72) Tarafından Giriş Yapıldı.', '2022-02-23 23:03:33'),
(274, 'furkan(195.174.142.146) Tarafından Giriş Yapıldı.', '2022-02-24 03:01:57'),
(275, 'deniz(195.174.142.72) Tarafından Giriş Yapıldı.', '2022-02-24 21:24:18'),
(276, 'Furkan(178.240.151.68) Tarafından Giriş Yapıldı.', '2022-02-26 22:30:20'),
(277, 'feridun(5.176.45.125) Tarafından Giriş Yapıldı.', '2022-02-28 19:12:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `panel_setting`
--

CREATE TABLE `panel_setting` (
  `id` int(11) NOT NULL,
  `panel_title` text COLLATE utf8_german2_ci NOT NULL,
  `panel_head` varchar(100) COLLATE utf8_german2_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_german2_ci;

--
-- Tablo döküm verisi `panel_setting`
--

INSERT INTO `panel_setting` (`id`, `panel_title`, `panel_head`) VALUES
(1, 'Vera Panel', 'VeraPanel');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sepet`
--

CREATE TABLE `sepet` (
  `sepet_id` int(11) NOT NULL,
  `uye_id` int(11) NOT NULL,
  `urun_id` int(11) NOT NULL,
  `adet` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sepet`
--

INSERT INTO `sepet` (`sepet_id`, `uye_id`, `urun_id`, `adet`) VALUES
(39, 11, 25, 1),
(40, 11, 24, 1),
(43, 1, 26, 1),
(22, 1, 26, 1),
(42, 1, 15, 1),
(44, 11, 31, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

CREATE TABLE `siparisler` (
  `id` int(10) UNSIGNED NOT NULL,
  `UyeId` int(10) UNSIGNED NOT NULL,
  `SiparisNumarasi` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `UrunTuru` varchar(50) NOT NULL,
  `UrunAdi` varchar(255) NOT NULL,
  `UrunFiyati` double UNSIGNED NOT NULL,
  `KdvOrani` int(2) UNSIGNED NOT NULL,
  `UrunAdedi` int(3) UNSIGNED NOT NULL,
  `ToplamUrunFiyati` double UNSIGNED NOT NULL,
  `KargoFirmasiSecimi` varchar(100) NOT NULL,
  `KargoUcreti` double UNSIGNED NOT NULL,
  `UrunResmiBir` varchar(30) NOT NULL,
  `VaryantBasligi` varchar(100) NOT NULL,
  `VaryantSecimi` varchar(100) NOT NULL,
  `AdresAdiSoyadi` varchar(100) NOT NULL,
  `AdresDetay` varchar(255) NOT NULL,
  `AdresTelefon` varchar(11) NOT NULL,
  `OdemeSecimi` varchar(25) NOT NULL,
  `TaksitSecimi` int(2) UNSIGNED NOT NULL,
  `SiparisTarihi` int(10) NOT NULL,
  `SiparisIpAdresi` varchar(20) NOT NULL,
  `OnayDurumu` tinyint(1) UNSIGNED NOT NULL,
  `KargoDurumu` tinyint(1) UNSIGNED NOT NULL,
  `KargoGonderiKodu` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sozlesmelervemetinler`
--

CREATE TABLE `sozlesmelervemetinler` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `HakkimizdaMetni` text NOT NULL,
  `VizyonVeMisyonMetni` text NOT NULL,
  `CalisanlarimizMetni` text NOT NULL,
  `TeslimatKosullariMetni` text NOT NULL,
  `UyelikSozlesmesiMetni` text NOT NULL,
  `SatisSozlesmesiMetni` text NOT NULL,
  `GarantiKosullariMetni` text NOT NULL,
  `GizlilikMetni` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `sozlesmelervemetinler`
--

INSERT INTO `sozlesmelervemetinler` (`id`, `HakkimizdaMetni`, `VizyonVeMisyonMetni`, `CalisanlarimizMetni`, `TeslimatKosullariMetni`, `UyelikSozlesmesiMetni`, `SatisSozlesmesiMetni`, `GarantiKosullariMetni`, `GizlilikMetni`) VALUES
(0, 'Bölgenin açık ara 1 numaralı elektronik perakendecisi TEKNOVİZYON olarak Cep telefonlarından Tabletlere, görüntü sistemlerinden Ses Sistemlerine, sinema sistemlerinden Kameralara, Aydınlatma sistemlerinden Ekosistem ve küçük ev aletlerine kadar Yüksek ürün yelpazesine Sahip  mağazacılık ve online perakendeciliğin sayısız avantajlarını müşterilerimize entegre olarak sunuyoruz. <br>\r\nTEKNOVİZYON’ olarak  bünyemizde yer alan XİAOMİ Store Mağazalarımız çatısı altında, 2 yılı aşkın birikimimiz ile 3 İlde 5  mağazamız ve 26 yı aşan çalışanımız ile hizmet veriyoruz.<br>\r\n\r\nBölge’deki ilk mağazamız 2013 yılında Türkcell İletişim Merkezi TİM  Afyon Çarşı Merkez de , 2020 yılında Afium AVM Mi Store Mağazamızı, 2021 yılında  Park Afyon AVM de 1 Mi Store Mağaza 1 Mi Store  Kiosk Mağaza, Eskişehir’de 1 Mi Shop Cadde Mağaza İle Hizmet ağımızı genişletmiş bulunmaktayız.<br>\r\n Bugün 5 Mağazamız ile 25 den fazla çalışanımız sayesinde müşterilerimizle buluşuyor, kaliteli satış öncesi ve sonrası hizmet anlayışıyla çok kanallı stratejimizi her geçen gün geliştirmeye devam ediyoruz.\r\n\r\n', ' Canlıyı ve Çevresini koruyan,<br>  Müşteri memnuniyetini ve yenilikçi çözümleri benimsemiş,<br>  Yaratıcı, değişime açık ve hızlı hareket edebilen,<br>  Hedeflerini her daim büyüten, Fark yaratan,<br>  Gelişen Teknoloji çağında Bölgenin Öncülerinden biri olan,<br>  İnsan kaynağının en önemli kaynak olduğunun bilincinde olan,<br>  Çalışanlarımıza ve Müşterilerimize karşı daima sorumlu bir firmayız,', 'Doğru işe doğru eleman prensibi ile seçilir, kişisel ve kariyer gelişimlerini destekleyecek eğitimlere katılma imkanı sağlanır.<br>\r\nMüşteri memnuniyet ilkelerine bağlı kalmalarını ve geliştirmelerini sağlayacak otokontrol ve eğitim sistemleri ile sürekli desteklenirler.<br>\r\nAylık ve dönemsel performans ölçme değerlendirme sistemleri ile kariyer gelişimleri objektif değerlendirilir ve desteklenir.<br>\r\nÜst pozisyonun gerektirdiği özellikleri taşıyıp taşımadıkları belirlenir. - Organizasyonumuz içinde yükselebilmeleri için ölçme değerlendirme sistemlerine katılımları sağlanıp öncelik çalışanlara verilir.<br>\r\n.2022 yılı itibari ile toplam çalışan sayımız 26\'dır.\r\n', 'Teslimat Koşulları Buraya Yazılacak', 'Üyelik Sözleşmesi Buraya Yazılacak', 'Satış Sözleşmesi Metni Buraya Yazılacak', 'Garanti Ve İade Koşulları Metni Buraya Yazılacak', 'Gizlilik Metni Buraya Yazılacak');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

CREATE TABLE `urunler` (
  `id` int(10) UNSIGNED NOT NULL,
  `urun_alt_kategori_id` int(11) DEFAULT NULL,
  `UrunTuru` varchar(200) DEFAULT NULL,
  `UrunAdi` varchar(255) DEFAULT NULL,
  `UrunFiyati` double UNSIGNED DEFAULT NULL,
  `UrunAciklamasi` text DEFAULT NULL,
  `UrunOzellikleri` text DEFAULT NULL,
  `UrunResimBir` varchar(100) DEFAULT NULL,
  `UrunResimIki` varchar(100) DEFAULT NULL,
  `UrunResimUc` varchar(100) DEFAULT NULL,
  `UrunResimDort` varchar(100) DEFAULT NULL,
  `UrunDurumu` tinyint(1) UNSIGNED DEFAULT NULL,
  `ToplamSatisSayisi` int(10) UNSIGNED DEFAULT NULL,
  `ToplamSatisTutari` double UNSIGNED DEFAULT NULL,
  `GoruntulenmeSayisi` int(10) UNSIGNED DEFAULT NULL,
  `VaryantBasligi` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`id`, `urun_alt_kategori_id`, `UrunTuru`, `UrunAdi`, `UrunFiyati`, `UrunAciklamasi`, `UrunOzellikleri`, `UrunResimBir`, `UrunResimIki`, `UrunResimUc`, `UrunResimDort`, `UrunDurumu`, `ToplamSatisSayisi`, `ToplamSatisTutari`, `GoruntulenmeSayisi`, `VaryantBasligi`) VALUES
(31, 1, 'POCO ', 'XİAOMİ POCO X3 PRO 6/128 GB FROST BLUE', 5.499, '', 'Snapdragon 732G\'den güç alan standart POCO X3 modelinin aksine iki yıl öncesinin amiral gemisi işlemcisi olan Snapdragon 855+’ın güçlendirilmiş bir versiyonu olan Snapdragon 860’tan güç alan POCO X3 Pro, bu sayede daha yüksek bir performans sunabiliyor. Ayrıca cihazın 8 GB’a kadar RAM, 256 GB’a kadar dahili depolama sunduğunu da belirtelim.\r\n<br>\r\nPOCO X3 Pro özellikleri\r\n<br>\r\nİşlemci: <br>\r\nCPU: Qualcomm Snapdragon 860<br>\r\nGPU: Adreno 640<br>\r\nRAM: 6/8 GB<br>\r\nDepolama: 128/256 GB<br>\r\nEkran:<br>\r\nBoyut: 6,67 inç<br>\r\nÇözünürlük: Full HD+<br>\r\nYenileme Hızı: 120 Hz<br>\r\nPanel: IPS LCD<br>\r\nArka Kamera:<br>\r\nAna Kamera: 48 MP, f/1.79<br>\r\nUltra Geniş Açı Kamera: 8 MP, f/2.2<br>\r\nMakro Kamera: 2 MP, f/2.4<br>\r\nDerinlik Sensörü: 2MP, f/2.4<br>\r\nÖn Kamera: 20 MP, f/2,45<br>\r\nBatarya:<br>\r\nKapasite: 5160 mAh<br>\r\nHızlı Şarj: 33W<br>\r\nİşletim Sistemi:<br>\r\nOS: Android 11<br>\r\nArayüz: MIUI 12<br>\r\nBağlantı: 4G LTE, Bluetooth 5, Wi-Fi 5', 'poco-x3-pro-8-gb-ram-256-gb-bronze-poco-turkiye-garantili-pocophone-x3-pro-2247-88-O-418x418 (1).jpg', 'aciklama1 (2).jpg', 'aciklama5.jpg', 'aciklama10.jpg', 0, 0, 0, 0, ''),
(32, 1, 'POCO', 'XİAOMİ POCO X3 PRO 8/256 GB FROST BLUE', 5.499, '', 'Snapdragon 732G\'den güç alan standart POCO X3 modelinin aksine iki yıl öncesinin amiral gemisi işlemcisi olan Snapdragon 855+’ın güçlendirilmiş bir versiyonu olan Snapdragon 860’tan güç alan POCO X3 Pro, bu sayede daha yüksek bir performans sunabiliyor. Ayrıca cihazın 8 GB’a kadar RAM, 256 GB’a kadar dahili depolama sunduğunu da belirtelim. <br> POCO X3 Pro özellikleri <br> İşlemci: <br> CPU: Qualcomm Snapdragon 860<br> GPU: Adreno 640<br> RAM: 6/8 GB<br> Depolama: 128/256 GB<br> Ekran:<br> Boyut: 6,67 inç<br> Çözünürlük: Full HD+<br> Yenileme Hızı: 120 Hz<br> Panel: IPS LCD<br> Arka Kamera:<br> Ana Kamera: 48 MP, f/1.79<br> Ultra Geniş Açı Kamera: 8 MP, f/2.2<br> Makro Kamera: 2 MP, f/2.4<br> Derinlik Sensörü: 2MP, f/2.4<br> Ön Kamera: 20 MP, f/2,45<br> Batarya:<br> Kapasite: 5160 mAh<br> Hızlı Şarj: 33W<br> İşletim Sistemi:<br> OS: Android 11<br> Arayüz: MIUI 12<br> Bağlantı: 4G LTE, Bluetooth 5, Wi-Fi 5', 'poco-x3-pro-8-gb-ram-256-gb-bronze-poco-turkiye-garantili-pocophone-x3-pro-2247-88-O-418x418 (1).jpg', 'aciklama1 (2).jpg', 'aciklama5.jpg', 'aciklama10.jpg', 0, 0, 0, 0, ''),
(33, 1, 'POCO', 'XİAOMİ POCOPHONE F2 PRO 128 GB MOR', 6.699, '', '', '62160e16ed70f.jpg', '', '', '', 1, 0, 0, 0, ''),
(34, 2, 'Redmi', 'XİAOMİ REDMİ 9C 3/64 GB SUNRİSE ORANGE', 2.699, '', '', '10807010983986-418x418 (1).jpg', 'aciklama4 (5).jpg', 'aciklama13.jpg', 'aciklama15 (1).jpg', 0, 0, 0, 0, ''),
(35, 2, 'redmi', 'XİAOMİ REDMİ 9C 32 GB GREY', 2.341, '', '', '10807010983986-228x228.jpg', 'aciklama3.jpg', 'aciklama14.jpg', 'aciklama151.jpg', 1, 0, 0, 0, ''),
(16, 4, 'Xiaomi', 'Xiaomi Trouver Finder LDS Sensörlü Vacuum Mop ', 5.023, '', '<p>Xiaomi Trouver Finder Lds Sens&ouml;rl&uuml; Vakum Mop Robot S&uuml;p&uuml;rge Xiaomi Trouver Finder LDS Sens&ouml;rl&uuml; Vakum Mop Robot S&uuml;p&uuml;rge Xiaomi Trouver Finder LDS Sens&ouml;rl&uuml; Vakum Mop Robot S&uuml;p&uuml;rge &Uuml;r&uuml;n &Ouml;zellikleri : Marka: Xiaomi Modeli: Trouver Finder Model Numarası : RLS3 Anma G&uuml;c&uuml; : 33 W Pil Kapasitesi: 2600 mAh Ağırlık: 3,6 kg Su Tankı Kapasitesi: 270mL Toz Kabı Kapasitesi: 570mL Emme Modu : 4 Mod Su Hacmi Ayarı : 3 Mod APP Kontrol&uuml; : Evet Ses Kontrol&uuml; : Evet ( Yalnızca &Ccedil;ince S&uuml;r&uuml;m&uuml; Destekler ) &Ccedil;alışma Süresi: 60 dakika Maksimum Vakum: 2000Pa &Uuml;rün Boyutu: 350mmx350mmx94,5mm Kablosuz Bağlantı: Wi-Fi IEEE 802.11b/g/n2.4 GHz Şarj Yuvası Tür: RCST Anma Girişi: 20.0V - 0.6A Anma &Ccedil;ıkışı: 20.0V - 0.6A Adapt&ouml;r Tür: ZDO12M200060CN Anma Girişi: 100-240V-50/60Hz 0,5A Anma &Ccedil;ıkışı: 20.0V - 0.6A Xiaomi Trouver Finder LDS Sens&ouml;rl&uuml; Vakum Mop Robot S&uuml;p&uuml;rge Kısa S&uuml;rede Şarj Olup Daha Uzun S&uuml;re &Ccedil;alışır Kendisini &ccedil;ok kısa bir s&uuml;re i&ccedil;erisinde şarj edebilen robot s&uuml;p&uuml;rge, her an kullanıma hazır bir şekilde yerinde bekler.Aralıksız 60 dakika boyunca, şarj s&uuml;resinin iki katı &ccedil;alışabilir. Evinizin Haritasını &Ccedil;ıkarır Evinizin her yerini temizlemek i&ccedil;in &ouml;ncelikle evinizi tanır ve evin bir haritasını &ccedil;ıkararak hafızasına kaydeder. Bir daha ki temizlikte odayı ve diğer alanları tanıdığı i&ccedil;in, zorlanmadan temizliğini yapabilir. Engelleri Kendi Başına Aşabilir O evi s&uuml;p&uuml;r&uuml;rken siz başka işlerinizle uğraşabilir ya da kendinize vakit ayırabilirsiniz. Robot s&uuml;p&uuml;rgenin peşinde gezmenize gerek kalmayacak &ccedil;&uuml;nk&uuml; engelleri kendisi aşabiliyor. 2 cm y&uuml;kseklikleri dışarıdan m&uuml;dahale olmadan kendisi ge&ccedil;ebiliyor. Ana &Ouml;zellikler: ● LDS Lazer Navigasyonu: Lazer sens&ouml;rler sayesinde uzun mesafe tarama daha hızlı ve doğru rota &ccedil;ıkarma ile etkili bir temizlik gezintisi ● Lazer Aralığı: Kendi geliştirdiği yeni SLAM algoritması, 50 Hz dinamik yol tanıma ve planlama, verimli kapsama, tam tarama desteği ● Yerleşik &Ccedil;ift &ccedil;ekirdekli CPU: G&uuml;&ccedil;l&uuml; &ccedil;ift &ccedil;ekirdekli işlemci, daha g&uuml;&ccedil;l&uuml; bilgi işlem g&uuml;c&uuml;, kendi geliştirdiği SLAM algoritması, planlama stratejisinin ger&ccedil;ek zamanlı dinamik ayarı ve sonu&ccedil; en iyi temizleme verimliliği ● 2000Pa G&uuml;&ccedil;l&uuml; Emme: Y&uuml;ksek hızlı bir rulo fır&ccedil;a ve benzersiz ve etkili bir hava sızdırmaz hava kanallarıyla birlikte, tozu ve kılları kolayca emebilir. ● S&uuml;spansiyon Tasarımlı Su Deposu : Su deposu, su deposu ve g&ouml;vde arasında y&uuml;zen bir boşluk olacak şekilde bir s&uuml;spansiyon tasarımına sahiptir ve paspaslama etkisi iyileştirir. ● Yeni T&uuml;r Dekontaminasyon Temizleme Malzemesi Paspas Bezi: Yumuşak elyaf ince tozu hapseder, Sert elyaf zemin lekelerini sıyırır ● 570mL Toz Kutusu: Daha fazla toz barındırın ve b&uuml;y&uuml;k evlerin ihtiya&ccedil;larını karşılayın. ● Mijia APP Akıllı Ara Bağlantı: Emme ayarı, g&uuml;&ccedil; g&ouml;stergesi ve daha fazlası. Zamanlamalı temizlik ve uzaktan başlatmayı destekler.</p>\r\n', '62160ebd69803.jpg', '', '', '', 1, 0, 0, 0, ''),
(5, 5, 'DREAME', 'DREAME H11 MAX WET AND DRY VACUUM', 6.751, '<p>Tek ge&ccedil;işlik. Hepsi temiz.</p>\r\n', '<p>Islak ve kuru pislikleri aynı anda temizler. Rulo fır&ccedil;a a&ccedil;ık olduğu s&uuml;rece kendi kendini temizler. Derin temizlik i&ccedil;in otomatik pislik algılama. B&uuml;y&uuml;k evleri temizlemek i&ccedil;in uzun &ccedil;alışma s&uuml;resi.</p>\r\n', '1-418x418 (1).jpg', '6-418x418.jpg', 'aciklama7 (1).jpg', '5-418x418.jpg', 1, 0, 0, 0, ''),
(6, 5, 'Mİ', 'Mİ VACUUM CLEANER G10 WHİTE', 1.299, 'Farklı Yüzeylerde Kullanılabilir<br>Hafif Şekilde Tasarlandı', 'Ürün Özellikleri\r\n<br>\r\nMalzeme/Materyal: ABS\r\n<br>\r\nGüç: 220 Watt\r\n<br>\r\n• Duvara montaj: Var<br>\r\n• Çalışma süresi: 45 dk<br>\r\n• Şarj süresi: 5 saat<br>\r\n• Ses seviyesi (dBA): 79<br>\r\n• Emiş türü: Kuru<br>\r\n• Toz kapasitesi: 500 ml<br>\r\n• Güç (Volt): 110 - 240<br>\r\n• Yıkanabilir filtre: Var<br>\r\n\r\nFarklı Yüzeylerde Kullanılabilir<br>\r\n• Xiaomi süpürgenizi aklınıza gelen her türlü farkılı yüzeyde kullanabilirsiniz. Tekstil yüzeylerden fayanslara, mermerden seramiğe, ahşaptan halıya kadar tüm yüzeylerde rahatlıkla temizlik yapmanın keyfini çıkarabilirsiniz. ABS malzemeden üretilen süpürge her yüzeyde üstün performans gösteriyor.\r\n\r\nHafif Şekilde Tasarlandı<br>\r\n• Süpürge tasarımı son derece hafif şekilde yapıldı. Sadece 1,2 kg ağırlığa sahip olan Xiaomi süpürge hafif olduğu için rahatlıkla kullanılabilir, taşınabilir ve muhafaza edilebilir.\r\n\r\nErgonomik Ölçülerde Tasarlandı<br>\r\n• Xiaomi süpürge ergonomik ölçülerde olduğu için çok seviliyor. 113 cm x 24 cm x 14 cm ölçüleri ile süpürge az yer kaplıyor, rahat kullanılıyor ve konforlu bir temizlik deneyimini elde etmenizi sağlıyor.\r\n\r\nKısa Sürede Şarj Olma Özelliği<br>\r\n• Süpürgenizi şarj etmek için çok uzun sürelere ihtiyacınız yok. Kısa sürede şarj olan bu süpürge hemen kullanıma hazır hale geliyor. 5 saatlik şarj süresinden sonra bataryası tamamen dolmuş oluyor. Li Ion bataryası bulunuyor ve kullanım süresi 13 ile 45 dk arasında değişiklik gösteriyor.\r\n\r\nMükemmel Emiş Gücü<br>\r\n• Farklı yüzeylerde hangi cins tozların olduğunun bir önemi yok. Xiaomi süpürge bütün tozları başarılı bir şekilde çeker ve temizler böylece yüzeylerinizde kirden eser kalmaz. Tam bir temizlik için idealdir.<br>\r\nGaranti<br>\r\n• 2 yıl', '110000007828032-418x418.jpg', 'xiaomi-mi-vakuum-cleaner-light-handhel-78c-4c-418x418.jpg', '41CdwihFJiL._AC_SY1000_-418x418 (1).jpg', '31fxEe4oMKL._AC_SY1000_-418x418.jpg', 0, 0, 0, 0, ''),
(7, 5, 'REDROAD', 'REDROAD V17', 4.499, 'RedRoad V17 elektrikli süpürgede yeni teknolojiler: Çok yönlü çift rulo fırça, çift değiştirilebilir HEPA filtreler', 'RedRoad V17 Çok Yönlü Çift Rulo Fırça: Daha Yüksek Verimlilik<br>\r\n\r\nGüçlü temizleme gücü: Çift motorlu rulo fırça ile iki kat temizleme verimliliği (farklı senaryolar için serbestçe monte edilebilen 4 çubuk)<br>\r\nArtan emiş gücü ve yenilikçi çift motorlu rulo fırçası ile RedRoad V17, derinlemesine temizlik için mükemmeldir. İki çubuk, birbirine doğru yuvarlanmak ve atıkları daha iyi toplamak için bağımsız olarak motorize edilmiştir.<br>\r\n\r\nRedRoad V17‘nin çift motorlu rulo fırçası, farklı senaryolarda temizlemek için toplamda iki zemin çubuğuna ve iki halı çubuğuna (tümü kolayca çıkarılabilir) sahiptir. Örneğin, sert zemin veya halılar için iki zemin barı/halı barı oluşturabilirsiniz. Ya da hem sert zeminleriniz hem de tek seferde temizlemek istediğiniz halılarınız varsa her türden birini yerleştirebilirsiniz.\r\n<br>\r\nÇok Yönlü Rulo Fırça, Kolay Manevra\r\n<br>\r\nÇift motorlu rulo fırçanın manevrası kolaydır ve 360° tekerlekleri ile karmaşık ev düzenlerinde temizlenebilir. Artık ulaşılması zor noktaları temizlemek için elektrikli süpürgeyi kaldırmanız veya bileğinizi döndürmeniz gerekmiyor.\r\n<br>\r\nTüm İhtiyaçlarınız için Mükemmel Özellikler: Hayatı Daha rahat ve sağlıklı hale getirmek\r\n<br>\r\nAmiral gemisi V17, ferahlatıcı, gürültüsüz ve kişiselleştirilmiş bir ev temizliği yöntemi için başka bir RedRoad cihazıdır.\r\n<br>\r\nDaha Temiz Havanın Nefes Alması için Çift Aktif Kömür HEPA Filtreleri\r\n<br>\r\nRedRoad V17, üçüncü nesil Mandala filtreleme sistemi ile donatılmıştır. H12 HEPA girişi 12 konili motoru korur, hizmet ömrünü uzatır ve H13 HEPA çıkışı, dışarı çıkan havanın normalde soluduğunuzdan daha temiz olmasını sağlar.\r\nFiltreler, toz akarları, küfler, polenler, evcil hayvan tüyleri dahil olmak üzere 0,1 mikron ölçeğinde ince parçacıkların %99,97‘sini yakalayabilir, bebekleri ve rinit veya astımı olan kişileri korur.\r\n<br>\r\nAyrıca HEPA filtre kapağının rengini seçebilir ve kendi muhteşem RedRoad V17‘nizi oluşturabilirsiniz.\r\n<br>\r\n9 Aşamalı Mandala Gürültü Azaltma Sistemi, Kulaklara Dost\r\n<br>\r\nElektrikli süpürge, stereotip olarak gürültülü bir makinedir. Ancak dünyanın dört bir yanındaki mühendisler, gürültüyü mümkün olduğunca azaltmaya çalışıyor. Ve RedRoad, 9 aşamalı Mandala sistemi ile bilinen gürültü azaltmada lider güçtür:\r\n<br>\r\nSürtünmeyi ve gürültüyü azaltan Maglev fırçasız motor\r\nMandala polimer pamuğu, yüksek perdeli sesi emer\r\nÜstten çıkış tasarımı, daha az rüzgar gürültüsü\r\nMaglev motor, rezonansın neden olduğu gürültüyü azaltır\r\nOptimize edilmiş yeniden akış kanalı, yüksek perdeli sesi düşürür\r\nKompakt montaj, sürtünmeden kaynaklanan gürültüyü kesme\r\nYüksek perdeli sesi insan işitme aralığının dışında değiştirmek\r\nRotor gürültüsünün dinamik kontrolü\r\nHalka çıkış kanalı tasarımı\r\nGenel tasarım, V17‘nin yalnızca 60dB‘de çalışmasına izin verir. Sonunda sizi ve ailenizi gürültü kirliliğinden kurtaracak ve rahat bir temizliğe sahip olacak.\r\n<br>\r\nArtan Emiş, Bol Aksesuar\r\n<br>\r\nTemizleme gücü, bir elektrikli süpürgenin en önemli özelliğidir. RedRoad V17, tüm parça ve aksesuarları yeniden tasarlar, en yüksek kalite standartlarına göre üretir ve temizleme gücünde çıtayı yükseltir.\r\n<br>\r\nArtan Emiş Gücü\r\n<br>\r\nRedRoad kendini rahat ve temiz bir yaşam biçimi oluşturmaya adamıştır. 120.000 rpm birinci sınıf dijital maglev fırçasız motor ve optimize edilmiş hava kanalı tasarımı ile V17, bu kategorideki en yüksek emiş gücünü temsil eder. Ana makinenin 450W nominal gücü, 155AW emiş ve 26.500pa vakum gücü bulunuyor. Bu emiş gücü, günlük ev temizliği için zaten yüksek seviyededir. Evinizi derinlemesine temizliyor musunuz? V17 için çocuk oyuncağı olacaktır.\r\n<br>\r\nTüm Senaryolara Uygun Temizlik İçin Bol Aksesuar\r\n<br>\r\nV17‘nin aksesuarları şunları içerir: uzatma çubuğu, ana fırça (zemin derinlemesine temizleme), aralık başlığı (gizli tozu aydınlatmak için LED ışıklı), geniş başlık ve hortum (arabanın altı veya çekmece içi gibi kör noktalar için), motorlu akar fırçası (yatak ve kanepe için, gömülü akarların ve evcil hayvan tüylerinin %99,9‘unu giderir), toz alma fırçası (klavye, perde ve araba koltukları için). Alet seti sadece iç mekan için değil aynı zamanda araba temizliği için de yeterli.\r\nTemizlemesi Kolay: Elektrikli Süpürgenizin Kendisini Kirletmesine İzin Vermeyin\r\n<br>\r\nEvi temizledikten sonra RedRoad V17‘yi temizlemek oldukça kolay. Bir düğmeye basarak atıkları boşaltabilirsiniz. Kokusu olabileceğinden endişeleniyorsanız, her hafta derinlemesine bakım da yapabilirsiniz. Toz haznesinde temizlemek için küçük bir fırça var. Üst HEPA ayrılabilir ve soğuk su ile temizlenebilir ve tekrar kuruduktan sonra yeni gibi taze olabilir. Tüm rulo fırça çubukları da çıkarılabilir ve bir musluk altında kolayca yıkanabilir.\r\n<br>\r\nDaha Akıllı Temizlik\r\n<br>\r\nRedRoad V17, pil ömrünü, dolu kap ve sarf malzemeleri değiştirme hatırlatıcısını ve hata uyarısını vb. 13 dilde gösteren OLED renkli ekran ile donatılmıştır.\r\nDüğmeye sürekli basmadan temizlik yapmak isterseniz ana panelde tetik kilidi de bulunmaktadır.\r\n<br>\r\nGeniş Alan Temizliği için Büyük Pil ve Akıllı Tasarım\r\n<br>\r\nDaha büyük evin temizlenmesi daha uzun zaman gerektirir. Bu nedenle birçok kişi, uzun pil ömrüne sahip kablosuz bir elektrikli süpürge arıyor. RedRoad V17, ağırlık ve pil ömrünü dengeledi. Bu 1.7 KG kompakt modelin içinde 2.500mAh lityum iyon pil bulunur. Eco Modunda 60 dakika dayanır ve tek seferde 200m²‘yi temizlemenizi sağlar.\r\n<br>\r\nAyrıca, akülü elektrikli süpürgenin pili, farklı modlarda sık kullanım nedeniyle yıpranma ve kapasite kaybetme eğilimindedir. Müşterilerin tüm makineyi değiştirmesi veya fabrikada onarım talep etmesi ve her iki şekilde de çok para ödemesi gerekiyor. Bu sorunu çözmek için RedRoad V17, çıkarılabilir pil kullanır. Bunun dışında yedek pillerle temizlik süresini uzatabilirsiniz.\r\n<br>\r\nRedRoad V17 ayrıca gelişmiş bir yerleşik pil yönetim sistemine sahiptir. Pil ömrünü yüksek hassasiyetle izler ve buna göre deşarjı kontrol eder ve kalan çalışma süresi tahmini ve değişken şarj özelliğine sahiptir.', 'redroad-418x418.jpg', '633b64fa-61cd-42f6-baed-f7a41ecfd13e.jpg', '6f30896d-9731-48f6-98c9-6e372069a1a0.jpg', '523977b2-0e70-4219-86bb-b9dace0b0917 (1).jpg', 0, 0, 0, 0, ''),
(8, 5, 'Xiaomi', 'Mİ AKILLI HAVA FİLTRESİ AİRPURİFİER ANTİBAKTERİYEL', 449, '', '', '62160e9903d51.jpg', '', '', '', 1, 0, 0, 0, ''),
(9, 5, 'Mİ', 'Mİ AKILLI HAVA TEMİZLEME 3C', 1.699, '', 'Gerçek HEPA filtre ile rahat nefes alın. Xiaomi Air Purifier\'in Gerçek HEPA filtresi, yüksek verimli üç katmanlı filtre çekirdeğinden oluşur. 320 m³ / saate kadar bir PM CADR elde edebilir ve 360 ° hava kanalı sirkülasyon sistemi ile birlikte, uzun süreli temizlenmiş hava için yüksek hızda arındırır.<br> 320 m³/sa PM CADR - Dakikada 5330 litre temizlenmiş hava sağlar.<br> Gerçek HEPA filtre - 0,3 mikron kadar küçük parçacıkları %99,97 oranında etkili bir şekilde filtreler.<br> 106 m2 / saat kapsama verimliliği - <br>Yüksek hızlı arıtma Yüksek hassasiyetli lazer sensörler - Arıtma hızı otomatik olarak değişir.<br> Dijital LED ekran - Gerçek zamanlı hava kalitesi güncellemeleri <br>Akıllı kontrol - Mi Home / Xiaomi Home uygulaması + AI sesi', '60a22a418e65d7.43323306_gfkimeqjopnhl_500-418x418.jpg\r\n', '60a20d3c4053b.jpeg\r\n', '60a20e54067c6.jpeg\r\n', '60a21af44db85.jpeg\r\n', 0, 0, 0, 0, ''),
(10, 5, 'XİAOMİ', 'BEAUTİTEC PUER HUMİDİFİER 4.2 L', 840, '', 'Xiaomi Beautitec SZK-A420 evaporatif nemlendirici, suyu buharlaştırarak çalışan akıllı bir hava nemlendiricidir. Buharlaştırma, en doğal ve en güvenli hava nemlendirme yöntemi olarak kabul edilir. Sağlıklı bir yaşam tarzını önemseyen insanlar için ideal bir çözüm olan buharlaştırma matı adı verilen özel bir kartuştan, suyun buharlaştırılmasını sağlar. <br> 250 ml/saat nemlendirme kapasitesi ile 40 m²\'ye kadar olan odalar için uygundur. <br> Xiaomi Beautitec SZK-A420 evaporatif nemlendirici, iç mekan hava kalitesini iyileştirmek için tasarlanmıştır. Cihaz bir dokunmatik ekrana sahiptir. Burada nemlendirmeyi açıp kapatabilir, yoğunluğunu ayarlayabilir ve nem seviyesini tanımlayabilirsiniz. Nemlendirici filtre tamamen yıkanabilir ve tekrar kullanılabilir. <br> Nem %70\'e ulaştığında veya su deposu boşaldığında ekipman çalışmayı durdurur. Uyku modundaki gürültü seviyesi 45dB\'dir. <br> Nemlendirici boyutları (26 x 26 x 35.6 cm) ve hafifliği ile de göz kamaştırmaktadır, nemlendiricinin kendisi doldurulmadan 3 kg ağırlığındadır.', '689550248_tn50_0-418x418.jpg\r\n', '689550248_tn50_4-418x418.jpg\r\n', '689550248_tn50_2-418x418.jpg\r\n', '689550248_tn50_1-418x418.jpg\r\n', 0, 0, 0, 0, ''),
(11, 5, 'Xiaomi', 'XIAOMI MIJIA YOUPING XIAOLANG', 3.206, '', '', '6216829d158ba.jpg', '', '', '', 1, 0, 0, 0, ''),
(12, 4, 'SMARTMİ', 'SMARTMİ TECBOT M1 ', 8.999, '<p>2 Yıl Garanti</p>\r\n', '', '2-418x418 (1).jpg', '7-418x418 (1).jpg', 'resmi-aciklama1.jpg', 'resmi-aciklama3.jpg', 1, 0, 0, 0, ''),
(13, 4, 'DREAME', 'DREAME D9', 4.849, '<p>2 Yıl Garanti</p>\r\n', '', '2-418x418 (2).jpg', 'resmi-aciklama1 (1).jpg', 'resmi-aciklama2-1 (1).jpg', 'resmi-aciklama3 (1).jpg', 1, 0, 0, 0, ''),
(14, 4, 'DREAME', 'DREAME D9 MAX', 5.429, '', '', '1-1-418x418.jpg', 'aciklama.jpg', '2-1-418x418.jpg', '1-1-418x418.jpg', 1, 0, 0, 0, ''),
(15, 4, 'IMİLAB', 'Imilab V1 Toz Boşaltma Ünit. Akıllı Robot Süpürge', 6.999, '', '', '1-418x418.jpg', 'resmi-aciklama9.jpg', 'resmi-aciklama2.jpg', 'resmi-aciklama5.jpg', 0, 0, 0, 0, ''),
(17, 4, 'Xiaomi', 'Xiaomi Mi Robot Vacuum Mop Pro', 4.985, '', '', '621682ea74ce3.jpg', '', '', '', 1, 0, 0, 0, ''),
(18, 4, 'Roborock', 'ROBOROCK S5 MAX', 6.299, '', 'Roborock S5 Max , Ev Temizliğinde Yardımcınız<br>\r\nSessiz - Akıllı ev planlaması - Uygulama ile kontrol - Akıllı lazer sensörü - Daha fazla su deposu - Daha uzun ömür\r\n<br>\r\nRoborock S5 Max, 2020 yılının en iyi akıllı robot süpürgesi olmayı başarıyor.\r\n<br>\r\nRoborock S5, serisinin geliştirilmiş hali olan bu model daha sessiz özelliği en başta olmak üzere daha iyi bir algoritmaya sahiptir.\r\n<br>\r\nKurulumu kolay ve harika haritalama gücü\r\nKutudan çıkar çıkmaz kullanılmak üzere tasarlanan Roborock S5 Max , yüksek kaliteli bir elektrikli süpürge robotu arayan tüm evler için yaratılmıştır.\r\n<br>\r\nLazer sensörü sayesinde, evinizin haritasını çıkarmanıza yardımcı olur ve daha sonraki aşamalarda daha hızlı ve akıllı olmasını sağlar.\r\n<br>\r\nMüthiş çekim gücü, 2000 PA\'ya ulaşan büyük bir emiş gücüne sahiptir .\r\n<br>\r\nSadece tozları almak ile kalmaz, paspas özelliği sayesinde evinizi dip köşe temizlemenize yardımcı olur.\r\n<br>\r\nDaha Büyük Bir Su Tankı\r\nBu model, önceki modelinden daha büyük bir su deposuna sahiptir ve size hayal edebileceğiniz her şeyden daha üstün bir paspas sunar.\r\n<br>\r\nHalılarınızın ıslanmasını istemiyorsanız uygulama kontrolü sayesinde sınırlandırılmış alanlar veya özel üretilen bariyerler kurarak bundan kaçınabilirsiniz .\r\n<br>\r\nEvinizi her zaman temiz tutacaksınız!\r\n<br>\r\nTam kontrol: Akıllı telefonunuzdaki Mi Home Uygulaması\r\nOnunla evimizin bir haritasını görebilir, temizlemek istemediğimiz alanları, her gün temizlenmesi gereken alanları ve temizlenmeyen diğer alanları tanımlamamıza izin verir veya belirli alanların temizlenmesi için komut verebilirsiniz.\r\n<br>\r\nAynı zamanda uygulama içinde robotunuzun kullanım detayları ve fırça, sensör yada filtrelerin temizlenme zamanı yada değişim zamanlarını görebilirsiniz.\r\n<br>\r\nHer Yerde Sensörler\r\n<br>\r\nTamamen otonom olacak şekilde geliştirilmiş olup, kendi başına etkili ve verimli temizlemeye izin verecek şekilde tasarlanmıştır.\r\n<br>\r\nBunu yapmak için, çevresinde olup biten her şeyi kontrol eden 360º tarayıcıya sahip bir lazer mesafe ölçer LDS\'ye sahiptir.\r\n<br>\r\nAynı zamanda yüksek kapasiteli bir işlemciye sahiptir tüm sensörleri ile birlikte Roborock S5 Max\'in görevlerini yerine getirebilirsiniz.\r\n<br>\r\nVe piliniz bittiğinde, herhangi bir sorun yaşamadan şarj ünitesine geri dönecektir. Bu model, size daha uzun bir temizlik süresi sağlayan devasa bir bataryaya sahiptir, böylece her zaman hazırsınız!\r\n<br>\r\nSüpür, vakumla ve ... fırçala\r\nRoborock S5 Max, vakumlama ve süpürmeye ek olarak , su haznesi ve filtreli paspas sayesinde vakum da yapabilir.\r\n<br>\r\nBu sayede, filtre su miktarını çok daha verimli bir şekilde kontrol ettiği için çok daha temiz bir zemine sahip olabilirsiniz.\r\n<br>\r\nYeni Roborock S5 Max ile maksimum temizliğin tadını çıkarın.\r\n<br>\r\nRoborock S5 Max robot elektrikli süpürgeyi miuiturkiye.net adresinden satın alın<br>\r\nRoborock S5 Max vakum robotunu miuiturkiye.net adresinden alırsanız en iyi müşteri hizmetine, GENPA onarım hizmetine ve 2 yıl garantiye sahip olacaksınız .\r\n<br>\r\n\r\nÖzellikler Roborock S5 Max Akıllı Robot Süpürge\r\n<br>\r\nOfis ve ev için otomatik temizlik. Genel veya bölge temizliği.<br>\r\nMi Home (App Xiaomi) ile akıllı telefonunuzdan tam kontrol\r\nOtomatik veya manuel temizlik, böylece nereleri temizleyeceğinize karar verebilirsiniz.<br>\r\nAkıllı rota planlaması, hiçbir köşeyi temizlenmemiş bırakmaz.\r\nTemizleme basıncını arttıran veya azaltan zemin türleri arasında ayrım yapar.<br>\r\nDüşük gürültü seviyesi.\r\nYıkanabilir ve değiştirilebilir filtreler.<br>\r\nHaritalamalı lazer sensör.<br>\r\nTeknik özellikler Roborock S5 Max<br>\r\nMarka: Xiaomi<br>\r\nModelleri: Roborock S5 Max<br>\r\nNavigasyon teknolojisi: 14 sensörlü lazer haritalama<br>\r\nTank kapasitesi: 480 ml<br>\r\nSu haznesi kapasitesi: 290ml<br>\r\nEmiş gücü: 2000 Pa<br>\r\n2.4GHZ WiFi bağlantısı<br>\r\nGürültü: 60 dB<br>\r\nFonksiyonlar:<br>\r\nUygulama: Evet (Roborock)<br>\r\nProgramlanabilir: Evet<br>\r\nHaritalama ile akıllı gezinme: Evet<br>\r\nSes kontrolü: Evet<br>\r\nHalı Detektörü: Var<br>\r\nSu seviyesi kontrolü: Evet (uygulamada)<br>\r\nBatarya: 5200 mAh<br>\r\nMotor gücü: 58W<br>\r\nŞarj süresi: 3 saat<br>\r\nKullanım süresi: 3 saate kadar<br>\r\nŞarj istasyonu<br>\r\nNominal güç: 28W<br>\r\nNominal giriş: 100-240V AC<br>\r\nNominal çıkış: 20 V DC / 1,2 A<br>\r\nAnma frekansı: 50-60Hz<br>\r\nBoyutlar: 15.1 x 13 x 9.8 cm<br>\r\nBeyaz  ve siyah renk<br>\r\nBoyutlar: 35,3 x 35 x 9,7 cm<br>\r\nAğırlık: 3,5 Kg<br>\r\nPaket içeriği<br>\r\n1 x Roborock S5 Max Beyaz - Robot Vakumu\r\n<br>1 x Şarj Tabanı<br>\r\n1 x Fırçalama bezi tabanı<br>\r\n1 x Fırçalama bezi<br>\r\n1 x Paspas<br>\r\n1 x Güç adaptörü<br>\r\n1 x Kullanım Kılavuzu\r\n', 'aspirador_robot_roborock_s5_max_blanco_03_ad_l-418x418.jpg', 'aspirador_robot_roborock_s5_max_blanco_02_ad_l-418x418.jpg', 'roborock_s5_max_negro_aspirador_robot_03_ad_l-418x418.jpg', 'aspirador_robot_roborock_s5_max_blanco_11_ad_l-418x418.jpg', 0, 0, 0, 0, ''),
(19, 4, 'Roborock', 'ROBOROCK S6 MAX V', 7.499, '', 'Roborock S6 MaxV Teknik Özellikleri  Güç: 66 Watt Çalışma Süresi: 3 Saat Şarj Süresi: 5 Saat Ses Seviyesi: 67 dB Toz Kapasitesi: 460 Ml Renk: Siyah  Xiaomi Kalitesi Roborock  Yüksek kaliteli robot süpürge üreten Roborock, dünyaca ünlü teknoloji markası Xiaomi’nin robot süpürge üreten alt grubunda yer alır. Özellikle minimalist tasarım çizgisi ve kalitesiyle tanınan marka, dünya çapında oldukça tercih edilir.', '1-418x418 (2).jpg', 'aciklama1-1.jpg', 'aciklama2.jpg', '', 0, 0, 0, 0, ''),
(20, 4, 'Roborock', 'ROBOROCK S7 ', 8.699, '', 'Roborock S7 Robot Süpürge<br>  Son zamanlarda giderek yaygınlaşan robot süpürgelere, son teknolojilerle donatılmış güçlü bir model daha eklendi. Robot süpürge deyince akla ilk gelen markalardan olan Xiaomi destekli Roborock, yeni robot süpürgesi Roborock S7 modelini duyurdu. Dünyanın en büyük tüketici elektroniği fuarı olma özelliği taşıyan CES 2021’de duyurulan Roborock S7, dünyanın ilk sonik paspas sistemi özelliğine sahip olmasıyla dikkat çekiyor. Bu sayede kullanıcının hayatını mümkün olduğunca az kesintiye uğratarak basitleştirmeyi amaçlayan süpürge, üst düzey temizliği ve konforu bir arada sunuyor.  Roborock S7 Özellikleri<br>  Dışarıdan bakıldığında bir önceki nesil Roborock S6 modelini hatırlatan Roborock S7, gövdesinin içinde pek çok yenilikle birlikte geliyor. Roborock S7 özellikleri arasında en dikkat çeken yeniliklerin başında ise VibraRise teknolojisi geliyor. Robot süpürge bu teknoloji sayesinde zemin ayrımını otomatik olarak başarılı bir şekilde gerçekleştirebiliyor. Öyle ki parke gibi sert yüzeylerde ıslak mop ile paspaslama yapılırken, halı gibi yumuşak yüzeylere geçildiğinde ise vakumlama modu devreye giriyor. Böylece vakumlama ve paspaslama işlevleri bir arada sunularak üst düzey temizlik sağlanıyor. Bu teknolojinin diğer bir faydası ise kullanıcın mop çıkarıp takma zahmetini ortadan kaldırmasıdır. Zira ıslak mop halı üzerindeyken kendisini 5 mm’ye kadar yukarı çekiyor ve halıyı ıslatmıyor. Böylece mopu süpürgeden çıkarıp takma zahmeti ortadan kalkıyor ve mop sürekli süpürgeye takılı halde temizlik yapıyor. Roborock S7, en zorlu lekelerin üstesinden gelecek şekilde geliştirilmiş. Öyle ki yerleri dakikada 3000 kez fırçalama hızına sahip olan akıllı süpürge, bu sayede kurumuş lekeler başta olmak üzere en zorlu lekelerin üstesinden gelebiliyor. Peki halı tarafında durum nasıl? Roborock S7, parke gibi sert bir yüzeyden halıya geçeceği zaman vakumlama moduna geçiyor ve halının ıslanmaması için mopu içine çekiyor. Ardından 2500 Pa emiş gücüne sahip motor devreye giriyor ve zemini sarmalayarak, halının derinliklerindeki kir ve döküntüleri kolaylıkla temizliyor. <br> Roborock S7’nin tüm bu temizlik işlevlerini otomatik bir şekilde gerçekleştirmesinde ise önceki modellerin aksine kameralar yerine LiDAR sensörü görev alıyor. Lazer darbeleri kullanarak çalışan LiDAR teknolojisi; uzaklığı ölçülecek nesne ya da yüzeye lazer ışınları göndererek, bu ışınların gönderiliş zamanı ile nesneye çarpıp gelen yansımanın tekrar kaynağa ulaşma süresi arasındaki farkı hesaplayıp, uzaklık ölçümü yapabiliyor. Bu sayede ortamın üç boyutlu haritası çıkarılıyor. Bu da Roborock S7’nin selefine göre daha iyi haritalama yaptığı ve robot süpürgenin duvar, mobilya gibi engellere çarpma konusunda çok daha hassas olduğu anlamına geliyor. Roborock S7 tüm bu işlemler için ihtiyaç duyduğu enerjiyi 5200 mAh kapasiteli bataryadan temin ediyor. 353 x 350 x 96,5 mm boyutlarındaki akıllı süpürge, tam şarj olduğunda 3 saat kesintisiz temizlik yapabiliyor. Islak ve kuru temizlik yapabilme kabiliyetine ev sahipliği yapan süpürge, halı gibi yumuşak yüzeylerde gerçekleştirilen vakumlama işlemi için 470 ml kapasitesinde toz haznesine sahipken, parke gibi sert zeminlerdeki ıslak temizlik için de 300 ml su tankına ev sahipliği yapıyor. Roborock S7, yüksek ses istemeyenler için de sessiz mod özelliği ile geliyor. Bu modda süpürge motorun emiş gücünü ve su boşaltımını yavaşlatarak daha sessiz bir temizlik deneyimi sunuyor. Roborock S7, temizlik işlemini bitirdikten sonra ise otomatik olarak şarj istasyonuna dönüyor. Roborock S7’nin öne çıkan özelliklerinden biri de sanal asistanlar ile uyumlu olmasıdır. Öyle ki Amazon Alexa, Google Asistan ve Siri sanal asistanlarını destekleyen süpürgeye konuşarak talimat verebilmek mümkün. <br> Roborock S7 Nasıl Kullanılır? <br> Üst düzey özelliklerle donatılan robot süpürge Roborock S7 kullanımı için, Roborock ve Mi Home uygulamalarına ihtiyaç duyulmaktadır. Android ve iOS sürümleri bulunan uygulamalar ile Roborock S7’nin hangi odaları temizleyeceğini belirleyebilir, süpürgenin ne zaman ve ne sıklıkla temizlik işlemi gerçekleştireceğini ayarlayabilirsiniz. Ayrıca yine bu uygulamalar üzerinden süpürgenin güç ayarlarını değiştirebilir, temizlik sırasında süpürgeyi uzaktan kumanda edebilir, süpürgenin sensör ve filtre gibi parçalarının bakım zamanlarını görüntüleyebilirsiniz. Ayrıca robot süpürgenin temizlik istatistiklerini de bu uygulamalar vasıtasıyla görebilmek mümkün. Roborock, düzenli olarak süpürgeleri için yazılım güncellemeleri yayınlamaktadır. Süpürgelerin performansını iyileştiren ve çeşitli hataları giderek güncellemeler de yine Roborock ve Mi Home uygulamaları aracılığıyla Roborock S7’ye yüklenebiliyor. <br> Roborock S7 ile Zahmetsiz Temizliğin Keyfine Varın <br> Roborock S7, her gün temizlik yapmaktan sıkılmış ya da işten güçten temizlik yapmaya zaman bulamayanlar için harika bir temizlik aracı olarak öne çıkıyor. Zahmetsiz bir temizlik için tek yapmanız gereken Roborock uygulaması üzerinden süpürgeye temizleme talimatı vermek. Ya da uygulamadan, robot süpürgenin haftanın hangi gün ve saatlerinde ne sıklıkla evi temizleyeceğini de ayarlayabilirsiniz. Böylece bir kere ayarladıktan sonra yapmanız gereken hiçbir şey kalmıyor. Ayrıca Roborock S7 ile temizlikle birlikte evinizin çok daha güzel kokmasını sağlayabilirsiniz. Nasıl mı? Roborock S7’nin su haznesine süpürge kokusu ekleyerek, süpürgenin gittiği yerlerin hem temiz kalmasını hem de güzel kokmasını sağlayabilirsiniz. Böylece temiz ve ferah bir ortam elde edebilirsiniz', '3-418x418.jpg', '5-418x418 (1).jpg', '6-418x418 (1).jpg', '1-418x418 (3).jpg', 0, 0, 0, 0, ''),
(21, 4, 'Xiaomi ', 'Xiaomi Hutt DDC55 Akıllı Cam Temizleme Robotu', 2.465, '', 'Xiaomi Hutt DDC55 akıllı cam temizlik robotu ile artık cam temizliğiniz tehlike olmaktan çıkacak, kolay ve pratik kullanımı yanı sıra kullanım sonrası kolay temizlenebilir fiber bezleri sayesinde her şeyiyle evinizin vazgeçilmesi olacak bir ürün. 650mah batarya kapasitesine sahip olan ürün 20DK\'lık kesintisiz bir kullanım sağlar kullanım sırasında batarya tükense dahi camdan düşmez. Yaklaşık 65dB gürültü seviyesine sahip olan ürün 1 m2 alanı 3dk\'da temizlemektedir. 2 saatlik bir şarj süresi ile bataryası tekrar %100 doluma ulaşmaktadır. \r\n<br>\r\nHUTT DDC55 Cam Temizleme Robotu Ana Özellikleri\r\n<br>\r\n* Gönül rahatlığıyla kullanabileceğiniz yüksek kalite ve güvenli cam temizleme robotu.<br>\r\n* Üst düzey kalite malzemeden imal edilmiş ve özenle tasarlanmış, üretilmiş parçalar.<br>\r\n* Yenilikçi algoritması ile değişen frekanslarda emme gücü.<br>\r\n* Gerçek bir temizlik deneyimi.\r\n* AI teknolojisi ile akıllı engel tanımlama.<br>\r\n* Azaltılmış gürültü ile daha sessiz.\r\n* Akıllı yol planlama.<br>\r\n* Güç kesintisi olsa dahi düşme önleyicisi sistem.<br>\r\n* Yüksek yoğunluklu fiber nano temizlik bezi.<br>\r\n* Kaymadan ıslak veya kuru zeminlerde kullanılabilir.<br>\r\nARM mimarisi.<br>\r\nCORTEX M3 çekirdekli akıllı donanım CPU,\r\nSTMicroelectronics.<br>\r\nJapon NIDEC hayranı.<br>\r\nAmerikan FREESCALE MEMS basınç sensörü.\r\nİthal 6 eksenli jiroskop çipi.<br>\r\n650mAh süper kapasiteli polimer lityum <br>iyon pil<br>\r\nAI zekası.<br>\r\n8m güvenlik halatı.<br>\r\n180kg kuvvet.<br>\r\n20 dakika pil ömrü.<br>\r\n7kg<br>\r\nİnce gövde tasarımı', '0-8d4fc1-418x418.jpeg', '20190809171314_80477.png', '20190809171314_67670.gif', '20190809171314_90022.png', 0, 0, 0, 0, ''),
(22, 4, 'XİAOMİ', 'Xiaomi Mijia Hutt W66 Hazneli Cam Temizleme Robotu', 3.699, '', '* Tek tıkla başlatma, akıllı rota planlaması\r\n<br>* Özel su püskürtme tasarımı, bez her zaman nemi koruyacaktır.\r\n<br>* 150ML akıllı kontrollü su deposu, 70-80 metrekare cam silebilir.\r\n<br>* Önceden tahmin edin ve engellerden kaçının.\r\n<br>* Akıllı kaçış, lazer algılama sensörüne dört tekerlekli yükseltme.\r\n<br>* 2600PA yüksek emiş, Akıllı cam tanıma, hızlı adsorpsiyon. Temizleme basıncını otomatik olarak artırır\r\n<br>* Hafif ve taşınabilir tasarım\r\n<br>* UPS elektrik kesintisi koruması, Elektrik kesilse bile 20 dakika çalışabilir.\r\nHUTT W66 Akıllı Cam Yıkama Robotu\r\n<br>* Su deposu frekans dönüşüm ıslak temizleme ile pencere temizleme makinesi\r\n<br>*150ml mikro kontrol sprey su | 2600PA büyük emiş\r\n<br>*Lazer sensörü 2.0\r\n<br>* Hafif ve taşınabilir tasarım.\r\n<br>* Sesli hatırlatma\r\n<br>Akıllı rota planlaması\r\n<br>1. Akıllı rota planlaması\r\n<br>2. Basıncı ayarlamak için otomatik frekans dönüştürme\r\n<br>3. Hafif tasarım\r\n<br>Kirli camın yüzeyine çok sayıda küçük kum ve taş yapıştırılmıştır. Emiş çok büyükse, camı silmek camın çizilmesine neden olur. Frekans dönüştürme algoritması, yüzey kirini otomatik olarak tanımlayabilir ve camı korumak için camı nazikçe silebilir, camı daha rahat temizleyebilir.<br>\r\nRobotun yerleşik bir su deposu ve akıllı su spreyi vardır. Su tankında su olmadığında size hatırlatacaktır.\r\n<br>Su deposunu doldurduktan sonra 70-80 metrekareyi silebilir ve eşit kapsama için her 10 saniyede bir su püskürtebilir.<br>\r\nCam suyu ve diğer aşındırıcı olmayan temizlik maddeleri ekleyebilir.', 'w66-418x418.jpg\r\n', 'H8ffa5def4e9c4affa465aa1a769f4a5dU.webp', 'Hb1a108ca02d648ccbd9cb65f98941382f.webp\r\n', 'H830f55a40ef749af90b4a205b1a49ef7f.webp\r\n', 0, 0, 0, 0, ''),
(23, 5, 'Xiaomi ', 'Hutt Hh6 Kablosuz Elektrikli Mop', 2.239, '', 'Ana Özellikler:\r\n <br>\r\n\r\nElektrikle kontrol edilen su spreyi, güçlü basınç, son derece yoğun, fan şeklinde su sisi.\r\n <br>\r\nGörünür 500ml büyük su deposu.\r\n <br>\r\nElektrikli mobil kasa, zamandan ve enerjiden tasarruf edin.\r\n <br>\r\nÇift döner tabla derinlemesine temizleme, zemini silmek için saniyede 4 dönüş.\r\n <br>\r\nEsnek ve kendinden kilitli duruş.\r\n <br>\r\nKolay kullanım için 200 düz geniş alan kuru ve ıslak iki mendil.\r\n <br>\r\nMarka:  Hutt ( XIAOMI YOUPIN\'den )<br>\r\nModel:  HH6<br>\r\nSu Deposu  Kapasitesi: 500ml<br>\r\nGürültü: 60dB<br>\r\nGüç: 36W<br>\r\nVoltaj: 110V - 240V<br>\r\nÇalışma Voltajı: 14.4V<br>\r\nŞarj Süresi: 3 saat<br>\r\nÇalışma Süresi: 45 dakika (kuru sürükle); 25 dakika (ıslak sürükleme)<br>\r\nPil Tipi: Li-ion pil<br>\r\nPil Kapasitesi: 2000mAh<br>\r\nÜrün ağırlığı: 3,40 kg<br>\r\nÜrün boyutu: 41,20 x 18,00 x 104,50 cm\r\n<br>\r\nPaket içeriği:\r\n<br>\r\n1 x Kol Bileşeni <br>\r\n4 x  Temizlik Bezi<br>\r\n1 x  Ana Bilgisayar<br>\r\n1 x  Hızlı Başlangıç Kılavuzu\r\n1 x Kılavuz\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '741420608_0-418x418.jpg', '0d8eb393-e4ec-41dc-bb9c-3a79b5c34ebd.jpg.webp', 'd41e2dbd-8d9e-409a-a702-a07e755777ab.jpg.webp', '9aa84a8e-9d39-46e1-b3f3-02d10f1aa351.jpg.webp', 0, 0, 0, 0, ''),
(24, 3, 'Xiaomi ', 'XİAOMİ 11 LİTE 5G 8/128 GB SNOWFLAKE WHİTE', 11.299, '', 'Xiaomi Mi 11 Lite 5G, sade tasarımlı ve 5G bağlantılı yeni üst düzey akıllı telefon <br> 6.55\" AMOLED DotDisplay - FHD+ 1080x2400p çözünürlük - Snapdragon 780G işlemci - Sekiz çekirdekli - 8GB RAM - 128GB dahili bellek - AI Üçlü Kamera - 16MP ön kamera - 4250 mAh pil - 5G bağlantısı - Android 11 tabanlı MIUI 12  <br> Bekleyiş sona erdi! Xiaomi burada. Elbette hafif, şık ve canavarca bir performansa sahip bir akıllı telefon olan Mi 11 Lite 5G\'den bahsediyoruz .  <br> Rahatlayın ve yepyeni bir olasılıklar dünyasını elinize alan Mi 11 Lite 5G\'nin muhteşem özellikleriyle bu dolambaçlı yolculuğa çıkmaya hazırlanın.  <br> Sadece birkaç tıklamayla profesyonel video düzenleme <br> Mi 11 Lite 5G ile ilgili vurgulayacağımız ilk şey, 64 MP ana kamera, 119° ultra geniş açılı kamera ve telefoto lensten oluşan fotoğraf sistemi olacak. Mi 11, gerçek bir film yapımcısı gibi çekim yapmak için ihtiyacınız olan tüm donanımı size sunar.  <br> Yalnızca görüntü kalitesi ve 4K/30fps çözünürlük açısından değil, aynı zamanda stüdyo tarzı düzenleme açısından da. Aslında, post prodüksiyondaki en kritik adımlardan bazıları, oldukça pahalı ve zaman alıcı bazı teknikler kullanılarak yapılan renk derecelendirme ve renk derecelendirmedir.  <br> Xiaomi, 8 video filtresiyle bu görevleri basitleştiriyor. Bunların kullanımı çok kolaydır ve işinize daha profesyonel bir görünüm kazandırarak farklı duygular ve/veya duyumlar taşır.  <br> Efektleri düzenlemek ve eklemek için saatler harcamanıza da gerek yok. İle IA Sinema One tıklayın ve Mi 11 Lite 5G, sadece tek bir tıklama fantastik sonuçlar alırsınız: Magic Zoom, Slow Shutter, Night Time-lapse, Time Freeze, Parallel World ve Freeze Frame Video  <br> Zengin ayrıntılar için 64 MP üçlü AI kamera <br> Bununla birlikte, fotoğraflar da akıllı telefon deneyiminin önemli bir parçasıdır. <br>  Daha önce de söylediğimiz gibi, Mi 11 Lite 5G\'nin kamera kurulumu harika bir 64 MP sensör içeriyor, bu nedenle bize tüm fotoğraflarımızda bol miktarda ayrıntı ve bol ışık veriyor. Buna, her şeyi tek çekimde yakalamanıza yardımcı olan 8 MP, 119° ultra geniş açılı sensör eşlik eder; ve görüntüleri yakınlaştırmak ve güzel makro çekimler yapmak için son derece uzun bir odak uzaklığı kullanan 5 MP telefoto kamera.  <br> Tabii ki, Xiaomi\'nin harika Gece Modu sadece ana lensle sınırlı değil, aynı zamanda gecenin tüm doğal güzelliğini yakalamak için ultra geniş açılı lensle de çalışacak . Elbette 16 MP ön kamera ile en şirin selfielerde kendinizin en iyi halini ortaya çıkarabileceksiniz .  <br> Daha gerçekçi renklere sahip 6,55\" AMOLED ekran <br> Ve tabii ki, fotoğraf ve video, Xiaomi\'nin üstün olmaya çalıştığı tek şey değil. Aslında ünlü Asyalı marka, yeni Mi 11 Lite 5G\'yi 5000000:1 oranı ve HDR10 sayesinde ışık ve gölgelerin net kontrastını ve harika keskinliği yeniden üreten 6.55 inç FHD+ (1080x2400p) panel ile donattı.  <br> Ayrıca , bunu mümkün kılan yüksek DCI-P3 renk gamı, 10-bit renk derinliği ve TrueColor teknolojisi sayesinde daha fazla renge, daha fazla yoğunluğa ve daha fazla doğruluğa sahiptir.  <br> Ayrıca Xiaomi Mi 11 Lite 5G\'nin ekranı, parlaklığı aydınlatma durumuna göre otomatik olarak ayarlayan 360° ortam ışığı sensörleri ve telefonunuzu gerçek bir e-okuyucuya dönüştüren 2.0 okuma modu ile gözlerinize hak ettiği gibi davranır. <br>  90 Hz ve 240 Hz dokunmatik örneklemeye kadar pürüzsüz ekran <br> Elbette, size en iyi görüntü kalitesini ve en yüksek enerji tasarrufunu sunmak için içeriğe otomatik olarak ayarlanan 2 aşamalı AdaptiveSync (60 ve 90 Hz) yenileme hızına sahiptir.  <br> Aynı derecede etkileyici olan 240 Hz dokunmatik örneklemesi, vuruşlarınızın ve dokunuşlarınızın son derece hassas bir şekilde algılanmasını sağlar .  <br> Surround ses özellikli çift hoparlör Bir film veya video izlerken sesin resimle eşleşmesini isteriz, değil mi? Bu nedenle, Xiaomi Mi 11 Lite 5G, mükemmel üst düzey ses kalitesi ve daha fazla derinlik hissi sağlayan iki hoparlör içerir.  <br> Sade tasarım (6,81 mm) ve hafiflik (159 gr) İşte Mi 11 Lite 5G\'nin ana yeniliklerinden biri! Xiaomi ultra hafif ve ince bir tasarıma, 159 gram ağırlığa ve 6.81 milimetre kalınlığa  sahiptir.  <br> Ayrıca kamera modülü (neredeyse düz), yalnızca 1,77 milimetre çıkıntı yaparak daha kompakt ve dengeli bir görünüm sağlıyor. Ayrıca güzel bir gümüş yüzükle süslenmiştir, bu da ona farklı bir görünüm kazandırıyor.  <br> Öte yandan, yan ana düğmede  yerleşik parmak izi tarayıcı , metal çerçeveye neredeyse fark edilmeden uyum sağlayarak akıllı telefonunuzun kilidini kolay ve hızlı bir şekilde açmanıza olanak tanır.  <br> Ekranınızı koruyan dayanıklı Corning Gorilla Glass 6, duyularınıza üstün bir görünüm kazandırmak için arkaya kadar uzanır. Ek olarak, kaplama parmak izi izlerini önler, böylece Mi 11 Lite 5G\'niz her zaman yeni görünmeye devam eder. <br>  Trüf Siyahı , Nane Yeşili veya Narenciye Sarısı - en sevdiğiniz rengi seçin!  <br> Snapdragon 780G ile olağanüstü performans <br> Xiaomi Mi 11 Lite 5G hakkında konuşursak, gelecekten bahsederiz. Ve gelecek, olağanüstü amiral gemisi performansı getiriyor.  <br> Bu, 5 nm işleme teknolojisiyle inşa edilen ve tamamen gelişmiş bir CPU, GPU ve AI performansı sağlayan Qualcomm Snapdragon 780G işlemci tarafından sağlanıyor ve 5G çağının en güçlü işlemcilerinden biri olarak duruyor.  <br> Bu da 8GB LPDDR4X RAM ve 256GB UFS 2.2 dahili bellek ile el ele gelir ve uygulamalarımızı açarken ve kullanırken hız sağlar.  Wi-Fi 6, 5G ve yeni Bluetooth 5.2 Elbette yeni Xiaomi 2021 telefon , piyasadaki en gelişmiş ve en hızlı bağlantı teknolojilerini kaçıramazdı.  <br> Wi-Fi 6\'dan bahsetmiyorum bile, 3,5 Gb/sn\'ye varan performans ve önceki sürümden %106 daha hızlı bağlantı hızıyla kablosuz bağlantılar için yeni standart.  <br> Uzun pil ömrü ve hızlı şarj Xiaomi Mi 11 Lite 5G\'nin bir diğer güçlü yanı ise, başta 4250 mAh büyüklüğündeki büyük pili ve aynı zamanda göz açıp kapayıncaya kadar %100 kapasiteye ulaşan 33 W kablo şarjı sayesinde her zaman kullanıma hazır olacak olması.  <br> NFC ve kızılötesi Ama orada bittiğini sanmayın! NFC aracılığıyla temassız ödemeler ve kızılötesi sayesinde evinizdeki tüm uyumlu cihazları kontrol edin(klima, TV, DVB-T cihazlarını, vb kontrol etmek ).', 'pvm_xiaomi-11-lite-5g-ne-white-100_19672_1638112065.jpg', 'aciklama4.jpg', 'aciklama12.jpg', 'aciklama16.jpg', 0, 0, 0, 0, ''),
(25, 3, 'Xiaomi ', 'XİAOMİ 11 LİTE 5G 8/256 GB BUBBLEGUM BLUE', 11.299, '', 'Xiaomi Mi 11 Lite 5G, sade tasarımlı ve 5G bağlantılı yeni üst düzey akıllı telefon <br>\r\n6.55\" AMOLED DotDisplay - FHD+ 1080x2400p çözünürlük - Snapdragon 780G işlemci - Sekiz çekirdekli - 8GB RAM - 128GB dahili bellek - AI Üçlü Kamera - 16MP ön kamera - 4250 mAh pil - 5G bağlantısı - Android 11 tabanlı MIUI 12\r\n <br>\r\nBekleyiş sona erdi! Xiaomi burada. Elbette hafif, şık ve canavarca bir performansa sahip bir akıllı telefon olan Mi 11 Lite 5G\'den bahsediyoruz .\r\n <br>\r\nRahatlayın ve yepyeni bir olasılıklar dünyasını elinize alan Mi 11 Lite 5G\'nin muhteşem özellikleriyle bu dolambaçlı yolculuğa çıkmaya hazırlanın.\r\n <br>\r\nSadece birkaç tıklamayla profesyonel video düzenleme <br>\r\nMi 11 Lite 5G ile ilgili vurgulayacağımız ilk şey, 64 MP ana kamera, 119° ultra geniş açılı kamera ve telefoto lensten oluşan fotoğraf sistemi olacak. Mi 11, gerçek bir film yapımcısı gibi çekim yapmak için ihtiyacınız olan tüm donanımı size sunar.\r\n <br>\r\nYalnızca görüntü kalitesi ve 4K/30fps çözünürlük açısından değil, aynı zamanda stüdyo tarzı düzenleme açısından da. Aslında, post prodüksiyondaki en kritik adımlardan bazıları, oldukça pahalı ve zaman alıcı bazı teknikler kullanılarak yapılan renk derecelendirme ve renk derecelendirmedir.\r\n <br>\r\nXiaomi, 8 video filtresiyle bu görevleri basitleştiriyor. Bunların kullanımı çok kolaydır ve işinize daha profesyonel bir görünüm kazandırarak farklı duygular ve/veya duyumlar taşır.\r\n <br>\r\nEfektleri düzenlemek ve eklemek için saatler harcamanıza da gerek yok. İle IA Sinema One tıklayın ve Mi 11 Lite 5G, sadece tek bir tıklama fantastik sonuçlar alırsınız: Magic Zoom, Slow Shutter, Night Time-lapse, Time Freeze, Parallel World ve Freeze Frame Video\r\n <br>\r\nZengin ayrıntılar için 64 MP üçlü AI kamera <br>\r\nBununla birlikte, fotoğraflar da akıllı telefon deneyiminin önemli bir parçasıdır. <br>\r\n\r\nDaha önce de söylediğimiz gibi, Mi 11 Lite 5G\'nin kamera kurulumu harika bir 64 MP sensör içeriyor, bu nedenle bize tüm fotoğraflarımızda bol miktarda ayrıntı ve bol ışık veriyor. Buna, her şeyi tek çekimde yakalamanıza yardımcı olan 8 MP, 119° ultra geniş açılı sensör eşlik eder; ve görüntüleri yakınlaştırmak ve güzel makro çekimler yapmak için son derece uzun bir odak uzaklığı kullanan 5 MP telefoto kamera.\r\n <br>\r\nTabii ki, Xiaomi\'nin harika Gece Modu sadece ana lensle sınırlı değil, aynı zamanda gecenin tüm doğal güzelliğini yakalamak için ultra geniş açılı lensle de çalışacak . Elbette 16 MP ön kamera ile en şirin selfielerde kendinizin en iyi halini ortaya çıkarabileceksiniz .\r\n <br>\r\nDaha gerçekçi renklere sahip 6,55\" AMOLED ekran <br>\r\nVe tabii ki, fotoğraf ve video, Xiaomi\'nin üstün olmaya çalıştığı tek şey değil. Aslında ünlü Asyalı marka, yeni Mi 11 Lite 5G\'yi 5000000:1 oranı ve HDR10 sayesinde ışık ve gölgelerin net kontrastını ve harika keskinliği yeniden üreten 6.55 inç FHD+ (1080x2400p) panel ile donattı.\r\n <br>\r\nAyrıca , bunu mümkün kılan yüksek DCI-P3 renk gamı, 10-bit renk derinliği ve TrueColor teknolojisi sayesinde daha fazla renge, daha fazla yoğunluğa ve daha fazla doğruluğa sahiptir.\r\n <br>\r\nAyrıca Xiaomi Mi 11 Lite 5G\'nin ekranı, parlaklığı aydınlatma durumuna göre otomatik olarak ayarlayan 360° ortam ışığı sensörleri ve telefonunuzu gerçek bir e-okuyucuya dönüştüren 2.0 okuma modu ile gözlerinize hak ettiği gibi davranır. <br>\r\n\r\n90 Hz ve 240 Hz dokunmatik örneklemeye kadar pürüzsüz ekran <br>\r\nElbette, size en iyi görüntü kalitesini ve en yüksek enerji tasarrufunu sunmak için içeriğe otomatik olarak ayarlanan 2 aşamalı AdaptiveSync (60 ve 90 Hz) yenileme hızına sahiptir.\r\n <br>\r\nAynı derecede etkileyici olan 240 Hz dokunmatik örneklemesi, vuruşlarınızın ve dokunuşlarınızın son derece hassas bir şekilde algılanmasını sağlar .\r\n <br>\r\nSurround ses özellikli çift hoparlör\r\nBir film veya video izlerken sesin resimle eşleşmesini isteriz, değil mi? Bu nedenle, Xiaomi Mi 11 Lite 5G, mükemmel üst düzey ses kalitesi ve daha fazla derinlik hissi sağlayan iki hoparlör içerir.\r\n <br>\r\nSade tasarım (6,81 mm) ve hafiflik (159 gr)\r\nİşte Mi 11 Lite 5G\'nin ana yeniliklerinden biri! Xiaomi ultra hafif ve ince bir tasarıma, 159 gram ağırlığa ve 6.81 milimetre kalınlığa  sahiptir.\r\n <br>\r\nAyrıca kamera modülü (neredeyse düz), yalnızca 1,77 milimetre çıkıntı yaparak daha kompakt ve dengeli bir görünüm sağlıyor. Ayrıca güzel bir gümüş yüzükle süslenmiştir, bu da ona farklı bir görünüm kazandırıyor.\r\n <br>\r\nÖte yandan, yan ana düğmede  yerleşik parmak izi tarayıcı , metal çerçeveye neredeyse fark edilmeden uyum sağlayarak akıllı telefonunuzun kilidini kolay ve hızlı bir şekilde açmanıza olanak tanır.\r\n <br>\r\nEkranınızı koruyan dayanıklı Corning Gorilla Glass 6, duyularınıza üstün bir görünüm kazandırmak için arkaya kadar uzanır. Ek olarak, kaplama parmak izi izlerini önler, böylece Mi 11 Lite 5G\'niz her zaman yeni görünmeye devam eder. <br>\r\n\r\nTrüf Siyahı , Nane Yeşili veya Narenciye Sarısı - en sevdiğiniz rengi seçin!\r\n <br>\r\nSnapdragon 780G ile olağanüstü performans <br>\r\nXiaomi Mi 11 Lite 5G hakkında konuşursak, gelecekten bahsederiz. Ve gelecek, olağanüstü amiral gemisi performansı getiriyor.\r\n <br>\r\nBu, 5 nm işleme teknolojisiyle inşa edilen ve tamamen gelişmiş bir CPU, GPU ve AI performansı sağlayan Qualcomm Snapdragon 780G işlemci tarafından sağlanıyor ve 5G çağının en güçlü işlemcilerinden biri olarak duruyor.\r\n <br>\r\nBu da 8GB LPDDR4X RAM ve 256GB UFS 2.2 dahili bellek ile el ele gelir ve uygulamalarımızı açarken ve kullanırken hız sağlar.\r\n\r\nWi-Fi 6, 5G ve yeni Bluetooth 5.2\r\nElbette yeni Xiaomi 2021 telefon , piyasadaki en gelişmiş ve en hızlı bağlantı teknolojilerini kaçıramazdı.\r\n <br>\r\nWi-Fi 6\'dan bahsetmiyorum bile, 3,5 Gb/sn\'ye varan performans ve önceki sürümden %106 daha hızlı bağlantı hızıyla kablosuz bağlantılar için yeni standart.\r\n <br>\r\nUzun pil ömrü ve hızlı şarj\r\nXiaomi Mi 11 Lite 5G\'nin bir diğer güçlü yanı ise, başta 4250 mAh büyüklüğündeki büyük pili ve aynı zamanda göz açıp kapayıncaya kadar %100 kapasiteye ulaşan 33 W kablo şarjı sayesinde her zaman kullanıma hazır olacak olması.\r\n <br>\r\nNFC ve kızılötesi\r\nAma orada bittiğini sanmayın! NFC aracılığıyla temassız ödemeler ve kızılötesi sayesinde evinizdeki tüm uyumlu cihazları kontrol edin(klima, TV, DVB-T cihazlarını, vb kontrol etmek ).', '61XzRDidmDL._AC_SLdwds1200_.jpg', 'aciklama4.jpg', 'aciklama12.jpg', 'aciklama16.jpg', 0, 0, 0, 0, '');
INSERT INTO `urunler` (`id`, `urun_alt_kategori_id`, `UrunTuru`, `UrunAdi`, `UrunFiyati`, `UrunAciklamasi`, `UrunOzellikleri`, `UrunResimBir`, `UrunResimIki`, `UrunResimUc`, `UrunResimDort`, `UrunDurumu`, `ToplamSatisSayisi`, `ToplamSatisTutari`, `GoruntulenmeSayisi`, `VaryantBasligi`) VALUES
(26, 3, 'Xiaomi ', 'XİAOMİ 11T 8/256 GB 5G CELESTİAL BLUE', 9.799, '', '8GB+256GB<br>\r\nLPDDR4X RAM + UFS 3.1 depolama<br>\r\n*Kullanılabilir RAM ve depolama, işletim sisteminin ve cihaza önceden yüklenmiş yazılımın depolanması nedeniyle toplam bellekten daha azdır.\r\n<br>\r\nYükseklik: 164.1mm<br>\r\nGenişlik: 76.9mm<br>\r\nKalınlık: 8.8mm<br>\r\nAğırlık: 203g<br>\r\n*Dahili laboratuvarlar tarafından sağlanan veriler. Endüstri ölçüm yöntemleri değişebilir ve bu nedenle gerçek sonuçlar farklı olabilir.<br>\r\nİŞLEMCİ:<br>\r\nMediaTek Boyut 1200-Ultra<br>\r\n6nm güç verimli üretim süreci<br>\r\nA78 ile 3.0 GHz\'e kadar<br>\r\nCPU: 1x Ultra Core (A78-tabanlı), 3.0GHz 3x Super Cores (A78-tabanlı), 2.6GHz 4x <br>Verimlilik Çekirdeği (A55-tabanlı), 2.0GHz<br>\r\nGPU: 9 çekirdekli ARM Mali GPU, 886MHz\'e kadar\r\n<br>\r\nEKRAN:\r\n6.67\" AMOLED Nokta Ekran<br>\r\nÇözünürlük: 2400 x 1080 FHD+<br>\r\nEn boy oranı: 20:9<br>\r\nYenileme hızı: 120Hz<br>\r\nDokunmatik örnekleme hızı: 480Hz\'e kadar\r\n<br>1 milyardan fazla renk<br>\r\nKontrast oranı: 5.000.000 : 1<br>\r\nParlaklık: HBM 800 nit (tip), 1000 nit tepe parlaklık (tipik)<br>\r\nHDR10+<br>\r\nDoğru renk<br>\r\nGerçek Görüntü<br>\r\nCorning®️ Gorilla®️ Glass Victus™<br>\r\nOkuma modu 3.0<br>\r\nGüneş ışığı modu 3.0<br>\r\n\r\nKAMERA:\r\n<br>\r\n108MP+8MP+5MP üçlü kamera\r\n<br>\r\nGece modu 2.0<br>\r\nFotoğraf klonları<br>\r\n108MP modu<br>\r\nBelge modu 2.0<br>\r\nGoogle Lens<br>\r\nSes yakınlaştırma<br>\r\nTek tıklamayla yapay zeka sineması<br>\r\nSinematik video filtreleri<br>\r\nHDR video<br>\r\nProfesyonel Hızlandırılmış<br>\r\nVideo profesyonel modu<br>\r\n120 fps\'de 720p, 240 fps, 960 fps ve 120 fps\'de 1080p için ağır çekim video desteği<br>\r\nÖNKAMERA;<br>\r\n16 MP ekran içi özçekim kamerası<br>\r\nBATARYA;<br>\r\n5000mAh (tip) pil<br>\r\n67W kablolu turbo şarj<br>\r\nInbox 67W kablolu şarj cihazı<br>\r\nUSB Tip-C<br>\r\nKablolu: 36 dakikada %100 şarj<br>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '5-418x418 (2).jpg', 'aciklama6.jpg', 'aciklama17.jpg', 'aciklama19.jpg', 0, 0, 0, 0, ''),
(27, 3, 'Xiaomi ', 'XİAOMİ 11T PRO 12/256 GB 5G MOONLİGHT WHİTE', 13.499, '', 'Xiaomi Mi 11T Pro 12/256 (2 Yıl Xiaomi Türkiye Garantili)<br>\r\n\r\nKaliteli kamerası, büyük ekranı, bataryası ve dikkatleri çeken tasarımı ile Xiaomi 11T Pro, Xiaomi\'nin en kuvvetli telefonlarından biridir. MIUI işletim sistemi ile kullanıcılara sade ve rahat bir deneyim sunuyor.\r\n<br>\r\n\r\nXiaomi 11T Pro 12/256 (2 Yıl Xiaomi Türkiye Garantili) Faydaları\r\nÇift SIM desteği ile hem iş telefonu hem de kişisel telefon olarak kullanılabilir.<br>\r\n\r\nYüksek çözünürlüklü kaliteli kamerası ve geniş diyafram aralığı sayesinde etkileyici fotoğraflar çekilebilir.\r\nYüksek batarya ile uzun pil ömrü sunduğu için günlük hayattaki kullanımı fazlasıyla karşılıyor.\r\nBüyük ekranı ve çerçevesiz tasarımıyla kullanıcılarına pürüzsüz bir deneyim sunar.<br>\r\n\r\nGüçlü işlemcisi ile performans konusunda kullanıcılarını memnun eder.\r\nXiaomi 11T Pro 12/256 (2 Yıl Xiaomi Türkiye Garantili) Teknik Özellikleri\r\nAndroid tabanlı olan cihazın içerisinde Qualcomm Snapdragon 888 bulunur. 1\'i 2.84 GHz, 3\'ü 2.42 GHz ve 4\'ü 1.8 GHz olmak üzere toplam 8 çekirdeğe sahiptir. 1.8 GHz ve 2.84 GHz arasında performans gösteren cihaz, hızlı ve akıcı bir deneyim sunar. Aynı zamanda içerisinde Adreno 660 grafik işlemcisi yer alır. Oyun performansını olumlu yönde etkileyen işlemci, oyun oynamaktan hoşlanan kullanıcılar için iyi bir özelliktir. Xiaomi Mi 11T Pro 256 GB 8 GB Ram bellek hafızasına sahip olması sayesinde arka planda pek çok farklı programın çalışmasını mümkün kılar. Aynı zamanda program arası geçişlerde takılma ya da donma gibi istenmeyen durumların önüne geçmeyi başarır. Cihazın dahili depolama hafızası 128 GB\'tır. Böylece fotoğraf ya da video gibi çok fazla alan kaplayan dosyalara yer sağlar. Fotoğraf ve video çekmekten hoşlanan kullanıcılara hitap eden geniş hafıza, aynı zamanda alan sıkıntısı yaşayan kişiler için de ilgi çekici bir özelliktir.\r\n<br>\r\n\r\nXiaomi Mi 11T Pro 256 GB 8 GB Ram batarya konusunda da kullanıcılarını mutlu eder. Cihazın batarya kapasitesi 5000 mAh\'tır. Uzun bir kullanım ömrü sunması ile öne çıkan yüksek batarya kapasitesi ile günlük hayatı rahat bir şekilde geçirebilirsiniz. USB Type-C girişine sahip olan cihaz, 120 W hızlı şarj gücüne sahiptir. Böylece acil bir işiniz olduğunda telefonu hızlı bir şekilde günlük hayatı idare edecek seviyelere çıkarabilirsiniz.\r\n<br>\r\nCihazın kutusunun içinde garanti belgesi, kullanma kılavuzu, şeffaf arka kılıf, SIM çıkartma iğnesi, 120 W USB güç adaptörü ve USB şarj kablosu bulunur. Donanım tarafında güçlü ve akıcı bir cihaz arıyorsanız Xiaomi 11T Pro modelini inceleyebilirsiniz.', '14-418x418.jpg', 'aciklama1 (1).jpg', 'aciklama11.jpg', 'aciklama23.jpg', 0, 0, 0, 0, ''),
(28, 1, 'Xiaomi ', 'XİAOMİ POCO X3 GT 8/128 GB CLOUD WHİTE', 6.699, '', '', 'xiaomi_poco_x3_gt_6gb_128gb_01_l-418x418.jpg', 'IMG-2702424814790004463.jpg', 'IMG-5540334318845857555.jpg', 'IMG-5584410314783565579.jpg', 0, 0, 0, 0, ''),
(29, 1, 'POCO', 'XİAOMİ POCO F3 8/256 GB DEEP OCEAN BLUE', 9.199, '', '', '1-418x418 (4).jpg', 'aciklama2 (1).jpg', 'aciklama4 (4).jpg', 'aciklama6 (1).jpg', 0, 0, 0, 0, ''),
(30, 3, 'XİAOMİ ', 'XİAOMİ 11T PRO 8/256 GB 5G CELESTİAL BLUE', 12.799, '', 'Xiaomi Mi 11T Pro 12/256 (2 Yıl Xiaomi Türkiye Garantili)<br>\r\nKaliteli kamerası, büyük ekranı, bataryası ve dikkatleri çeken tasarımı ile Xiaomi 11T Pro, Xiaomi\'nin en kuvvetli telefonlarından biridir. MIUI işletim sistemi ile kullanıcılara sade ve rahat bir deneyim sunuyor.\r\n<br>\r\nXiaomi 11T Pro 12/256 (2 Yıl Xiaomi Türkiye Garantili) Faydaları<br>\r\nÇift SIM desteği ile hem iş telefonu hem de kişisel telefon olarak kullanılabilir.<br>\r\nYüksek çözünürlüklü kaliteli kamerası ve geniş diyafram aralığı sayesinde etkileyici fotoğraflar çekilebilir.\r\nYüksek batarya ile uzun pil ömrü sunduğu için günlük hayattaki kullanımı fazlasıyla karşılıyor.<br>\r\nBüyük ekranı ve çerçevesiz tasarımıyla kullanıcılarına pürüzsüz bir deneyim sunar.<br>\r\nGüçlü işlemcisi ile performans konusunda kullanıcılarını memnun eder.<br>\r\nXiaomi 11T Pro 12/256 (2 Yıl Xiaomi Türkiye Garantili) Teknik Özellikleri\r\nAndroid tabanlı olan cihazın içerisinde Qualcomm Snapdragon 888 bulunur. 1\'i 2.84 GHz, 3\'ü 2.42 GHz ve 4\'ü 1.8 GHz olmak üzere toplam 8 çekirdeğe sahiptir. 1.8 GHz ve 2.84 GHz arasında performans gösteren cihaz, hızlı ve akıcı bir deneyim sunar. Aynı zamanda içerisinde Adreno 660 grafik işlemcisi yer alır. Oyun performansını olumlu yönde etkileyen işlemci, oyun oynamaktan hoşlanan kullanıcılar için iyi bir özelliktir. Xiaomi Mi 11T Pro 256 GB 8 GB Ram bellek hafızasına sahip olması sayesinde arka planda pek çok farklı programın çalışmasını mümkün kılar. Aynı zamanda program arası geçişlerde takılma ya da donma gibi istenmeyen durumların önüne geçmeyi başarır. Cihazın dahili depolama hafızası 128 GB\'tır. Böylece fotoğraf ya da video gibi çok fazla alan kaplayan dosyalara yer sağlar. Fotoğraf ve video çekmekten hoşlanan kullanıcılara hitap eden geniş hafıza, aynı zamanda alan sıkıntısı yaşayan kişiler için de ilgi çekici bir özelliktir.\r\n\r\nXiaomi Mi 11T Pro 256 GB 8 GB Ram batarya konusunda da kullanıcılarını mutlu eder. Cihazın batarya kapasitesi 5000 mAh\'tır. Uzun bir kullanım ömrü sunması ile öne çıkan yüksek batarya kapasitesi ile günlük hayatı rahat bir şekilde geçirebilirsiniz. USB Type-C girişine sahip olan cihaz, 120 W hızlı şarj gücüne sahiptir. Böylece acil bir işiniz olduğunda telefonu hızlı bir şekilde günlük hayatı idare edecek seviyelere çıkarabilirsiniz.\r\n<br>\r\nCihazın kutusunun içinde garanti belgesi, kullanma kılavuzu, şeffaf arka kılıf, SIM çıkartma iğnesi, 120 W USB güç adaptörü ve USB şarj kablosu bulunur. Donanım tarafında güçlü ve akıcı bir cihaz arıyorsanız Xiaomi 11T Pro modelini inceleyebilirsiniz.', '14-418x418 (1).jpg', 'aciklama18.jpg', 'aciklama19 (1).jpg', 'aciklama20.jpg', 0, 0, 0, 0, ''),
(36, 2, 'Redmi', 'XİAOMİ REDMİ 9C 4/128 GB AURORA GREEN', 3.199, '', '', '10807010983986-418x418 (1).jpg', 'aciklama4 (5).jpg', 'aciklama13.jpg', 'aciklama15 (1).jpg', 0, 0, 0, 0, ''),
(37, 2, 'Redmi', 'XİAOMİ REDMİ 9T 4/128 GB CARBON GRAY', 4.299, '', '', 'xiaomi_redmi_9t_4gb_128gb_01_l-418x418.jpg', '', '', '', 1, 0, 0, 0, ''),
(38, 2, 'Redmi', 'XİAOMİ REDMİ 9T 4/64 GB CARBON GRAY', 3.006, '', '', 'xiaomi_redmi_9t_4gb_128gb_01_l-418x418.jpg', '', '', '', 1, 0, 0, 0, ''),
(39, 2, 'REDMİ', 'XİAOMİ REDMİ NOTE 10 5G 4/128 GB AURORA GREEN', 5.899, '', '', '7-418x418 (3).jpg', '', '', '', 0, 0, 0, 0, ''),
(40, 2, 'REDMİ', 'XİAOMİ REDMİ NOTE 10 PRO 6/128 GB GLACİER BLUE', 5.899, '', '', '7-418x418 (3).jpg', '', '', '', 0, 0, 0, 0, ''),
(41, 2, 'REDMİ', 'XİAOMİ REDMİ NOTE 10 PRO 8/128 BLUE', 6.199, '', '', '1-418x418 (5).jpg', '', '', '', 0, 0, 0, 0, ''),
(42, 2, 'REDMİ', 'XİAOMİ REDMİ NOTE 10S 6/128 GB OCEAN BLUE', 4.699, '', '', 'xiaomi_redmi_note_10s_003_blanco_ad_l-228x228.jpg', '', '', '', 0, 0, 0, 0, ''),
(43, 2, 'REDMİ', 'XİAOMİ REDMİ NOTE 10S 6/64 GB ONYX GRAY', 4.699, '', '', 'xiaomi_redmi_note_10s_003_blanco_ad_l-228x228.jpg', '', '', '', 0, 0, 0, 0, ''),
(44, 6, 'Xiaomi', 'XİAOMİ TABLET PAD 5 6/256 GRI', 5.499, '', '', '62160f1cc54b0.jpg', '', '', '', 1, 0, 0, 0, ''),
(45, 13, 'Amazfit', 'AMAZFİT BİP U PRO', 849, '', '', '62160f592bf6f.jpg', '', '', '', 1, 0, 0, 0, ''),
(46, 13, 'Amazfit', 'AMAZFİT GTR 2 KLASİK', 2.099, '', '', '62160f8692541.jpg', '', '', '', 1, 0, 0, 0, ''),
(47, 13, 'Amazfit', 'AMAZFİT GTR 2E', 1.299, '', '', '62160fb820809.jpg', '', '', '', 1, 0, 0, 0, ''),
(48, 13, 'Amazfit', 'AMAZFİT GTR 47 MM ALUMİNİUM ALLOY', 1.85, '', '', '62160ff130a53.jpg', '', '', '', 1, 0, 0, 0, ''),
(49, 13, 'Amazfit', 'AMAZFİT GTS 2', 2.599, '', '', '6216103388dbe.png', '', '', '', 1, 0, 0, 0, ''),
(50, 13, 'Amazfit', 'AMAZFİT GTS', 1.399, '', '', '6216106e35f8e.jpg', '', '', '', 1, 0, 0, 0, ''),
(51, 13, 'Amazfit', 'AMAZFİT NEO', 330, '', '', '621610b26b01f.jpg', '', '', '', 1, 0, 0, 0, ''),
(52, 13, 'Amazfit', 'AMAZFİT NEXO', 839, '', '', '6216111801292.jpg', '', '', '', 1, 0, 0, 0, ''),
(53, 13, 'Amazfit', 'AMAZFİT STRATOS 3 ', 1.421, '', '', '6216833220764.jpg', '', '', '', 1, 0, 0, 0, ''),
(54, 13, 'Amazfit', 'AMAZFİT T-REX', 1.249, '', '', '6216835b34ee5.jpg', '', '', '', 1, 0, 0, 0, ''),
(55, 13, 'Amazfit', 'AMAZFİT VERGE LİTE', 469, '', '', '62168413e6454.jpg', '', '', '', 1, 0, 0, 0, ''),
(56, 13, 'İmilab', 'İMİLAB KW66', 599, '', '', '6216845745de9.jpg', '', '', '', 1, 0, 0, 0, ''),
(57, 11, 'Enchen', 'ENCHEN HAİR CLİPPER BOOST TRAŞ MAKİNESİ BEYAZ', 179, '', '', '621684e7d492a.jpg', '', '', '', 1, 0, 0, 0, ''),
(58, 11, 'Enchen', 'ENCHEN HAİR CLİPPER BOOST TRAŞ MAKİNESİ SİYAH', 179, '', '', '6216852b213fe.jpg', '', '', '', 1, 0, 0, 0, ''),
(59, 11, 'Inface', 'İNFACE CB-11D SPA MASAJ CİHAZI GRİ', 639, '', '', '62168580eb9a1.jpg', '', '', '', 1, 0, 0, 0, ''),
(60, 11, 'Inface', 'İNFACE CB-11D SPA MASAJ CİHAZI PEMBE', 639, '', '', '6216860415e71.jpg', '', '', '', 1, 0, 0, 0, ''),
(61, 11, 'Inface', 'İNFACE IPL EPİLASYON ALETİ PEMBE', 999, '', '', '621686384cf6c.jpg', '', '', '', 1, 0, 0, 0, ''),
(62, 11, 'Xiaomi', 'XİAOMI IHEALTH ATEŞ ÖLÇER', 499, '', '', '62168678e6f9d.jpg', '', '', '', 1, 0, 0, 0, ''),
(63, 11, 'Xiaomi', 'XİAOMİ AKILLI SCALE 2 TARTI', 390, '', '', '621686b4dacfb.jpg', '', '', '', 1, 0, 0, 0, ''),
(64, 12, 'Xiaomi', 'XİAOMİ KOŞU BANDI UREVO AKILLI YÜRÜYÜŞ BAND', 2.279, '', '', '6216871ddf728.jpg', '', '', '', 1, 0, 0, 0, ''),
(65, 12, 'Xiaomi', 'XİAOMİ KOŞU BANDI WALKING PAD A1 PRO', 3.098, '', '', '62168782697bd.jpg', '', '', '', 1, 0, 0, 0, ''),
(66, 12, 'Xiaomi', 'XİAOMİ KOŞU BANDI WALKİNG PAD R1 PRO', 5.759, '', '', '621687b988bcc.jpg', '', '', '', 1, 0, 0, 0, ''),
(67, 11, 'Xiaomi', 'XİAOMİ LERAVAN AYAK MASAJ ALETİ', 1.999, '', '', '6216881084d0a.png', '', '', '', 1, 0, 0, 0, ''),
(68, 11, 'Xiaomi', 'Xiaomi Mi Otomatik Köpük Sabun Makinası', 260, '', '', '6216884393c01.png', '', '', '', 1, 0, 0, 0, ''),
(69, 11, 'Xiaomi', 'Xiaomi Mi Otomatik El Sabunu', 309, '', '', '6216888ecdb34.jpg', '', '', '', 1, 0, 0, 0, ''),
(70, 9, 'İmilab', 'IMILAB HOME SECURITY A1 PRO', 539, '', '', '621688da486c9.jpg', '', '', '', 1, 0, 0, 0, ''),
(71, 9, 'İmilab', 'IMILAB HOME SECURITY CAMERA BASİC', 470, '', '', '6216891d00e51.jpg', '', '', '', 1, 0, 0, 0, ''),
(72, 9, 'Xiaomi', 'Mİ KAMERA WİRELESS OUTDOOR SECURİTY 1080P', 529, '', '', '62168965d101a.jpg', '', '', '', 1, 0, 0, 0, ''),
(73, 7, 'Xiaomi', 'Yeelight Bedside lamba D2', 1.179, '', '', '62168994ac8ef.jpg', '', '', '', 1, 0, 0, 0, ''),
(74, 7, 'Xiaomi', 'Xiaomi Mi Smart Led Bulb Essential Akıllı Ampul', 176, '', '', '621689e054a94.png', '', '', '', 1, 0, 0, 0, ''),
(75, 7, 'Xiaomi', 'XİAOMİ AKILLI LAMBA LED SMART BULB 2 Lİ SET', 415, '', '', '62168a2427607.jpg', '', '', '', 1, 0, 0, 0, ''),
(76, 7, 'Xiaomi', 'XİAOMİ AKILLI LAMBA SMART LED MASA LAMBASI', 620, '', '', '62168a5456820.jpg', '', '', '', 1, 0, 0, 0, ''),
(77, 7, 'Xiaomi', 'YEELIGHT BEDSIDE LAMBA', 555, '', '', '62168a8177749.jpg', '', '', '', 1, 0, 0, 0, ''),
(78, 7, 'Xiaomi', 'YEELIGHT GÖZ DOSTU MASA LAMBASI PRO', 2.399, '', '', '62168ae59c44d.jpg', '', '', '', 1, 0, 0, 0, ''),
(79, 7, 'Xiaomi', 'YEELIGHT KABLOSUZ ŞARJ ALETLİ GECE LAMBASI', 430, '', '', '62168b1f500bc.jpg', '', '', '', 1, 0, 0, 0, ''),
(80, 7, 'Yeelight', 'YEELIGHT LED AKILLI FİLAMENT AMPUL GOLD', 252, '', '', '62168b575b9b1.jpg', '', '', '', 1, 0, 0, 0, ''),
(81, 7, 'Yeelight', 'YEELIGHT LED AKILLI RENKLİ AMPUL WHİTE W3', 294, '', '', '62168c64bbf6d.jpg', '', '', '', 1, 0, 0, 0, ''),
(82, 7, 'Xiaomi', 'YEELIGHT LED AYDINLATMA ŞERİDİ 1S EXTENSİON', 237, '', '', '62169349cbf95.jpg', '', '', '', 1, 0, 0, 0, ''),
(83, 7, 'Xiaomi', 'YEELIGHT LED AYDINLATMA ŞERİDİ 1S WHİTE', 643, '', '', '6216937e99d4c.jpg', '', '', '', 1, 0, 0, 0, ''),
(84, 7, 'Yeelight', 'YEELIGHT LED FİLAMENT AMPUL WHİTE', 252, '', '', '62169528d65e0.jpg', '', '', '', 1, 0, 0, 0, ''),
(85, 7, 'Yeelight', 'YEELIGHT Mİ AKILLI LAMBA- AMBİANCE LAMP', 269, '', '', '621696714b247.jpg', '', '', '', 1, 0, 0, 0, ''),
(86, 7, 'Xiaomi', 'Xiaomi Huayi 38w Uv IŞIK', 439, '', '', '621696fa98177.jpg', '', '', '', 1, 0, 0, 0, ''),
(87, 10, 'Xiaomi', 'SMARTMİ KÖPEK MAMA KABI', 2.989, '', '', '62169725a0e1a.jpg', '', '', '', 1, 0, 0, 0, ''),
(88, 10, 'Xiaomi', 'Mİ TOYZ BLOCKS SMART RACİNG CAR C4E ROBOT BUİLDER', 2.224, '', '', '62169783344b4.jpg', '', '', '', 1, 0, 0, 0, ''),
(89, 10, 'Xiaomi', 'Mİ TOYZ DAWN OF JUPİTER ROBOT BUİLDER', 2.072, '', '', '621697ca315bb.jpg', '', '', '', 1, 0, 0, 0, ''),
(90, 10, 'Xiaomi', 'Mİ TOYZ MİTU BUİLDİNG BLOCK ENGİNEERİNG EXCAVATOR', 805, '', '', '621697ffe0b0d.jpg', '', '', '', 1, 0, 0, 0, ''),
(91, 10, 'Xiaomi', 'Mİ TOYZ MİTU ONEBUT TRUCK BUİLDER', 2.443, '', '', '621698353449f.jpg', '', '', '', 1, 0, 0, 0, ''),
(92, 10, 'Xiaomi', 'Mİ TOYZ MİTU RACİNG CAR BUİLDİNG BLOCKS ROBOT BUİLDER', 1.439, '', '', '621698d0201ff.jpg', '', '', '', 1, 0, 0, 0, ''),
(93, 10, 'Xiaomi', 'Mİ TOYZ SMART SUZUKİ ARABA', 809, '', '', '621699293f737.jpg', '', '', '', 1, 0, 0, 0, ''),
(94, 10, 'Xiaomi', 'Mİ TOYZ TRANSFORMERS OPTİMUS PRİME', 2.114, '', '', '62169982bbd7a.jpg', '', '', '', 1, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunvaryantlari`
--

CREATE TABLE `urunvaryantlari` (
  `id` int(10) UNSIGNED NOT NULL,
  `UrunId` int(10) UNSIGNED NOT NULL,
  `VaryantAdi` varchar(100) NOT NULL,
  `StokAdedi` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_alt_kategorileri`
--

CREATE TABLE `urun_alt_kategorileri` (
  `urun_alt_kategori_id` int(11) NOT NULL,
  `urun_alt_kategori_adi` varchar(100) NOT NULL,
  `urun_kategori_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urun_alt_kategorileri`
--

INSERT INTO `urun_alt_kategorileri` (`urun_alt_kategori_id`, `urun_alt_kategori_adi`, `urun_kategori_id`) VALUES
(1, 'POCO', 1),
(2, 'REDMİ', 1),
(3, 'Mİ', 1),
(18, 'SES SİSTEMLERİ & TV-SİNEMA', 4),
(5, 'DİKEY SÜPÜRGELER', 2),
(6, 'TABLETLER', 1),
(7, 'AYDINLATMA', 2),
(8, 'BİSİKLET & SCOOTER', 2),
(9, 'KAMERA', 2),
(10, 'HOBİ ÜRÜNLERİ & OYUNCAK', 2),
(11, 'KİŞİSEL BAKIM & SAGLIK', 3),
(12, 'FİTNESS', 3),
(4, 'ROBOT  SÜPÜRGELER', 2),
(13, 'AKILLI BİLEKLİKLER VE SAATLER', 4),
(14, 'TELEFON AKSESUARLARI', 4),
(15, 'KULAKLIKLAR', 4),
(16, 'ŞARZ CİHAZLARI VE KABLOLAR', 4),
(17, 'TAŞINABİLİR ŞARZ CİHAZLARI', 4);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urun_kategorileri`
--

CREATE TABLE `urun_kategorileri` (
  `urun_kategori_id` int(11) NOT NULL,
  `urun_kategori_adi` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `urun_kategorileri`
--

INSERT INTO `urun_kategorileri` (`urun_kategori_id`, `urun_kategori_adi`) VALUES
(1, 'CEP TELEFONLARI VE TABLETLER'),
(2, 'EKOSİSTEM'),
(3, 'KİŞİSEL BAKIM & SAĞLIK'),
(4, 'AKSESUARLAR');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `namesurname` text NOT NULL,
  `auth` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `namesurname`, `auth`) VALUES
(2, 'furkan', '1', 'info@softreni.com', 'Furkan Yıldız', 5),
(4, 'deniz', 'deniz.2002', 'denizkarakas@yaani.com', 'Deniz Karakaş', 5),
(5, 'Feridun', '15421542', 'feridun.isbirlikleri@gmail.com', 'Feridun Biricik', 5);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `uyeler`
--

CREATE TABLE `uyeler` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `IsimSoyisim` varchar(100) NOT NULL,
  `EmailAdresi` varchar(255) NOT NULL,
  `TelefonNumarasi` varchar(100) NOT NULL,
  `Sifre` varchar(100) NOT NULL,
  `Durumu` tinyint(1) NOT NULL,
  `KayıtTarihi` int(10) NOT NULL,
  `KayıtIPAdresi` varchar(20) NOT NULL,
  `AktivasyonKodu` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `uyeler`
--

INSERT INTO `uyeler` (`id`, `IsimSoyisim`, `EmailAdresi`, `TelefonNumarasi`, `Sifre`, `Durumu`, `KayıtTarihi`, `KayıtIPAdresi`, `AktivasyonKodu`) VALUES
(1, 'Deniz Karakas', 'denizkarakas@yaani.com', '553408345', '208701e9cc155b7791494c91c5c57fa0', 1, 1644220549, '88.230.9.31', '51365-26636-37661'),
(4, 'deniz', 'denizkarakasgokova@gmail.com', '5534083450', '208701e9cc155b7791494c91c5c57fa0', 0, 1644220835, '88.230.9.31', '13253-92178-95403'),
(9, 'deniz', 'mimagazayetkili@gmail.com', '5534083450', '208701e9cc155b7791494c91c5c57fa0', 0, 1644235116, '37.155.82.88', '89496-29391-87466'),
(11, 'furkan', 'fmyildiz41@gmail.com', '5554443322', 'e10adc3949ba59abbe56e057f20f883e', 1, 1644235334, '83.66.46.145', '56694-26547-16832'),
(12, 'deniz', 'mdbtiyatroclub@gmail.com', '5534083450', '208701e9cc155b7791494c91c5c57fa0', 1, 1644236190, '37.155.82.88', '89952-51457-95686'),
(13, 'deniz kara', 'peoplewithdreamsstudy@gmail.com', '5534083450', '208701e9cc155b7791494c91c5c57fa0', 1, 1644236676, '37.155.82.88', '85307-85414-55696');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yoneticiler`
--

CREATE TABLE `yoneticiler` (
  `id` int(10) UNSIGNED NOT NULL,
  `KullaniciAdi` varchar(100) NOT NULL,
  `Sifre` varchar(100) NOT NULL,
  `IsimSoyisim` varchar(100) NOT NULL,
  `EmailAdresi` varchar(255) NOT NULL,
  `TelefonNumarasi` varchar(11) NOT NULL,
  `SilinemeyecekYoneticiDurumu` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Tablo döküm verisi `yoneticiler`
--

INSERT INTO `yoneticiler` (`id`, `KullaniciAdi`, `Sifre`, `IsimSoyisim`, `EmailAdresi`, `TelefonNumarasi`, `SilinemeyecekYoneticiDurumu`) VALUES
(1, 'denizkarakas', '208701e9cc155b7791494c91c5c57fa0', 'Deniz Karakaş', 'denizkarakas@yaani.com', '5534083450', 1);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `adresler`
--
ALTER TABLE `adresler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `panel_setting`
--
ALTER TABLE `panel_setting`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sepet`
--
ALTER TABLE `sepet`
  ADD PRIMARY KEY (`sepet_id`);

--
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sozlesmelervemetinler`
--
ALTER TABLE `sozlesmelervemetinler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunler`
--
ALTER TABLE `urunler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urunvaryantlari`
--
ALTER TABLE `urunvaryantlari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `urun_alt_kategorileri`
--
ALTER TABLE `urun_alt_kategorileri`
  ADD PRIMARY KEY (`urun_alt_kategori_id`);

--
-- Tablo için indeksler `urun_kategorileri`
--
ALTER TABLE `urun_kategorileri`
  ADD PRIMARY KEY (`urun_kategori_id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `uyeler`
--
ALTER TABLE `uyeler`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `EmailAdresi` (`EmailAdresi`);

--
-- Tablo için indeksler `yoneticiler`
--
ALTER TABLE `yoneticiler`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `adresler`
--
ALTER TABLE `adresler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Tablo için AUTO_INCREMENT değeri `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=278;

--
-- Tablo için AUTO_INCREMENT değeri `panel_setting`
--
ALTER TABLE `panel_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `sepet`
--
ALTER TABLE `sepet`
  MODIFY `sepet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- Tablo için AUTO_INCREMENT değeri `siparisler`
--
ALTER TABLE `siparisler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `urunler`
--
ALTER TABLE `urunler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- Tablo için AUTO_INCREMENT değeri `urun_alt_kategorileri`
--
ALTER TABLE `urun_alt_kategorileri`
  MODIFY `urun_alt_kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Tablo için AUTO_INCREMENT değeri `urun_kategorileri`
--
ALTER TABLE `urun_kategorileri`
  MODIFY `urun_kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `uyeler`
--
ALTER TABLE `uyeler`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Tablo için AUTO_INCREMENT değeri `yoneticiler`
--
ALTER TABLE `yoneticiler`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
