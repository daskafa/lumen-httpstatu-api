-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table lumen.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lumen.categories: ~5 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `name`, `information`) VALUES
	(1, '1XX', 'Bilgilendirme Yanıtları'),
	(2, '2XX', 'Başarı Yanıtları'),
	(3, '3XX', 'Yönlendirme Yanıtları'),
	(4, '4XX', 'İstemci Hatası Yanıtları'),
	(5, '5XX', 'Sunucu Hatası Yanıtları');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table lumen.mains
CREATE TABLE IF NOT EXISTS `mains` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `statu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL DEFAULT '0',
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `information` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lumen.mains: ~21 rows (approximately)
/*!40000 ALTER TABLE `mains` DISABLE KEYS */;
INSERT INTO `mains` (`id`, `statu`, `category_id`, `message`, `information`) VALUES
	(1, '100', 1, 'Devam', 'Müşteri talebi iyi ve işleniyor.'),
	(2, '101', 1, 'Protokol Değiştirme', 'İstemci protokol tipini değiştirmek istedi ve sunucu kabul etti.'),
	(3, '102', 1, 'İşlem', 'İşlem normalden daha uzun sürüyor.'),
	(4, '200', 2, 'Tamam', 'Sunucu isteği başarıyla işledi. Tarayıcının istediği her eylemi başarıyla gerçekleştirdiği anlamına gelir.'),
	(5, '201', 2, 'Oluşturuldu', 'Tarayıcı sunucuda başarıyla yeni bir kaynak oluşturdu.'),
	(6, '202', 2, 'Kabul edildi', '202 yanıtı işlenmesi uzun süren eylemler için kullanılır. İsteğin işlenmek üzere kabul edildiğini gösterir.'),
	(7, '203', 2, 'Yetkili Olmayan Bilgiler', '203 kodu bir proxy kullanımdayken görünebilir.'),
	(8, '204', 2, 'İçerik Yok', 'Sunucu, yalnızca başlık bilgisi içeren, herhangi bir içerik içermeyen bir istemci isteğine geçerli bir yanıt gönderd'),
	(9, '206', 2, 'Kısmı İçerik', 'İstemcinin duraklatılmış indirme işlemlerine devam etmesini, indirmeyi birden fazla akışa bölmeyi sağlar.'),
	(10, '301', 3, 'Kalıcı Olarak Taşındı', 'Kaynağın önemli ölçüde yeniden tasarlandığını ve istemcinin istenen kaynağına yeni bir kalıcı URI\'nin atandığını gösterir.'),
	(11, '302', 3, 'Geçici Olarak Taşındı', 'İstenen kaynak geçici olarak farklı bir URI altında bulunuyor.'),
	(12, '304', 3, 'Değiştirilmemiş', 'İstenilen kaynağın en son eriştiğiniz tarihten bu yana değişmediğini ifade eder.'),
	(13, '307', 3, 'Geçici Yönlendirme', 'Bir kaynağı geçici olarak başka bir kaynağa yönlendirir. 302den farkı daha belirgin olmasıdır'),
	(14, '400', 4, 'Kötü İstek', 'Farklı 4XX hata kodu uygun olmadığında kullanılan genel istemci tarafı hata durumudur.'),
	(15, '401', 4, 'Yetkisiz', 'İstemcinin uygun yetkilendirmeyi sağlamadan korumalı bir kaynak üzerinde çalışmaya çalıştığını gösterir.'),
	(16, '403', 4, 'Yasak', 'İstemcinin isteğinin doğru şekilde oluşturulduğunu gösterir ancak kullanıcının kaynak için gerekli izinleri yoktu'),
	(17, '404', 4, 'Bulunamadı', 'İstemcinin URL\'sini bir kaynakta bulamadığını belirtir. SEO için önemlidir.'),
	(18, '405', 4, 'Yönteme İzin Verilmiyor', 'İstemcinin kaynağın izin vermediği bir yöntemi kullanmaya çalıştığını göstermek için bu hata kodu ile yanıt verir.'),
	(19, '406', 4, '	Kabul Edilemez', 'Kaynak, sadece istek gönderilen kabul başlıklarına göre kabul edilemeyen içerik oluşturabilir.'),
	(20, '500', 5, 'Dahili Sunucu Hatası', 'Sunucuda beklenmedik bir durumla karşılaşıldığında ve isteğin karşılanamadığı genel hata mesajıdır.'),
	(21, '501', 5, 'Uygulanmadı', 'Sunucu ya istek yöntemini tanımıyor ya da isteği yerine getirme yeteneğinden yoksun.');
/*!40000 ALTER TABLE `mains` ENABLE KEYS */;

-- Dumping structure for table lumen.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table lumen.migrations: ~3 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(6, '2021_05_29_090505_create_products_table', 1),
	(7, '2021_05_29_090756_create_categories_table', 1),
	(8, '2021_05_29_122118_main', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
