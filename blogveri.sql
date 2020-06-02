-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 02 Haz 2020, 17:20:45
-- Sunucu sürümü: 10.4.11-MariaDB
-- PHP Sürümü: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `blogveri`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

CREATE TABLE `kullanici` (
  `id` int(4) NOT NULL,
  `kullanici_adi` varchar(30) NOT NULL,
  `sifre` varchar(30) NOT NULL,
  `isim` varchar(30) NOT NULL,
  `soyisim` varchar(30) NOT NULL,
  `yas` int(3) NOT NULL,
  `cinsiyet` char(1) NOT NULL,
  `telefon` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`id`, `kullanici_adi`, `sifre`, `isim`, `soyisim`, `yas`, `cinsiyet`, `telefon`, `email`) VALUES
(1, 'batuhan', '123456', 'Batuhan', 'Bulut', 18, 'E', '05352694651', 'batu2_s4@hotmail.com'),
(2, 'ecem', 'ecem123', 'Ecem', 'İlter', 20, 'K', '12312344123', 'ecem123@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `makale`
--

CREATE TABLE `makale` (
  `makaleId` int(4) NOT NULL,
  `makalaYazan` varchar(30) NOT NULL,
  `makaleBaslik` varchar(30) NOT NULL,
  `tarih` date NOT NULL,
  `makaleYazi` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `makale`
--

INSERT INTO `makale` (`makaleId`, `makalaYazan`, `makaleBaslik`, `tarih`, `makaleYazi`) VALUES
(1, 'Batuhan', 'Lorem Ipsum', '2020-04-20', 'Lorem Ipsum, 500 yıl boyunca varlığını sürdürmekle kalmamış ve günümüzde elektronik yazı tipinin gerektiği birçok konuda hazır bir araç olarak kullanılmaya başlanmıştır. Lipsum 1960\'larda içinde Lorem Ipsum paragraflarının bulunduğu letrasetlerin piyasaya çıkması ve 1990\'larda Lorem Ipsum versiyonlarını içeren Aldus Pagemaker gibi programlarla beraber yaygın hale gelmiştir.\r\n\r\nBilinenin aksine, Lipsum sadece rastgele dizilmiş harflerden oluşan paragraflardan ibaret değildir, tarihi MÖ 45 yıllarına dayanan bir klasik Latin edebiyatı eserine dayanır. Yaklaşık 2000 yıldan fazla bir geçmişi vardır. ABD Virjinya\'daki Hampden-Sydney Üniversitesi\'nden(en:Hampden–Sydney College) Latin dili profesörü Richard McClintock, Lorem Ipsum paragraflarından birinde anlaşılması en güç Latince kelimelerden bir \"consectetur\" sözcüğüne rastlamış, klasik Latin edebiyatı eserlerinde de gördüğü bu kelimeden hareketle Lipsum’un aslında işe yarar bir kaynak olduğunu farketmiştir.\r\n\r\nLorem Ipsum, Çiçero\'nun MÖ 45 yılında yazdığı \"de Finibus Bonorum et Malorum – İyi ve Kötünün Uç Sınırları\" eserindeki 1.30.32 sayılı paragrafında yer alır. Bu eser Rönesans döneminde etik teorileri üzerine bilimsel inceleme konusu haline gelmiştir.'),
(2, 'Batuhan', 'İzmir', '2020-04-20', 'İzmir, Türkiye\'nin bir ili ve en kalabalık üçüncü şehridir. Nüfusu 2019 itibarıyla 4.367.251 kişidir. Bu nüfus; 30 ilçe ve bu ilçelere bağlı 1.297 mahallede yaşamaktadır.[6] İl genelinde nüfus yoğunluğu 367\'dir. Coğrafi olarak Türkiye\'nin batısında bulunur ve ilin tamamı Ege Bölgesi\'nde yer alır. Yüzölçümü olarak ülkenin yirmi üçüncü büyük ilidir.[7] Etrafı Aydın, Balıkesir, Manisa illeri ve Ege Denizi ve Ege Adaları ile çevrilidir.\r\n\r\nİzmir Körfezi çevresinde bulunan şehir, her yıl İzmir Enternasyonal Fuarı\'nı düzenleyen önemli bir fuar merkezi ve liman kentidir.\r\n\r\nİzmir\'in batısında denizi, plajları ve termal merkezleriyle Urla Yarımadası uzanır. Antik Çağ\'ın en ünlü kentleri arasında yer alan Efes, Roma\'nın imparatorluk devrinde dünyanın en büyük kentlerinden biriydi. Tüm İyon kültürünün zenginliklerini bünyesinde barındıran Efes, yoğun sanatsal etkinliklerle de adını duyuruyordu. Bu maksatla da bu şehre \"Güzel İzmir\", \"Eski İzmir\" ve \"la Perle de l\'Ionie\" (İyonya\'nın İncisi) deniyordu.\r\n\r\nİzmir, yatlar ve gemilerle çevrilmiş uzun ve dar bir körfezin başında yer almaktadır. Sahil boyunca palmiye, hurma ağaçları ve geniş caddeler bulunmaktadır. İzmir Limanı, Türkiye\'nin en büyük yedinci limanıdır.'),
(3, 'Batuhan', 'Ankara', '2020-04-20', 'Ankara, Türkiye\'nin başkenti ve en kalabalık ikinci ilidir.[6] Nüfusu 2019 itibarıyla 5.639.076 kişidir. Bu nüfus; 25 ilçe ve bu ilçelere bağlı 1425 mahallede yaşamaktadır. İl genelinde nüfus yoğunluğu 215\'tir. Coğrafi olarak Türkiye\'nin merkezine yakın bir konumda bulunur ve Batı Karadeniz Bölgesi\'nde kalan kuzey kesimleri hariç, büyük bölümü İç Anadolu Bölgesi\'nde yer alır. Yüzölçümü olarak ülkenin üçüncü büyük ilidir. Bolu, Çankırı, Kırıkkale, Kırşehir, Aksaray, Konya ve Eskişehir illeri ile çevrilidir.\r\n\r\nAnkara\'nın başkent ilan edilmesinin ardından (13 Ekim 1923) şehir hızla gelişmiş ve Türkiye\'nin ikinci en kalabalık ili olmuştur. Türkiye Cumhuriyeti\'nin ilk yıllarında ekonomisi tarım ve hayvancılığa dayanan ilin topraklarının yarısı hâlâ tarım amaçlı kullanılmaktadır. Ekonomik etkinlik büyük oranda ticaret ve sanayiye dayalıdır. Tarım ve hayvancılığın ağırlığı ise giderek azalmaktadır. Ankara ve civarındaki gerek kamu sektörü gerek özel sektör yatırımları, başka illerden büyük bir nüfus göçünü teşvik etmiştir. Cumhuriyetin kuruluşundan günümüze, nüfusu ülke nüfusunun iki katı hızda artmıştır. Nüfusun yaklaşık dörtte üçü hizmet sektörü olarak tanımlanabilecek memuriyet, ulaşım, haberleşme ve ticaret benzeri işlerde, dörtte biri sanayide, %2\'si ise tarım alanında çalışır. Sanayi, özellikle tekstil, gıda ve inşaat sektörlerinde yoğunlaşmıştır. Günümüzde ise en çok savunma, metal ve motor sektörlerinde yatırım yapılmaktadır. Türkiye\'nin en çok sayıda üniversiteye sahip ili olan Ankara\'da ayrıca, üniversite diplomalı kişi oranı ülke ortalamasının iki katıdır. Bu eğitimli nüfus, teknoloji ağırlıklı yatırımların gereksinim duyduğu iş gücünü oluşturur. Ankara\'dan otoyollar, demir yolu ve hava yoluyla Türkiye\'nin diğer şehirlerine ulaşılır.');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorum`
--

CREATE TABLE `yorum` (
  `id` int(11) NOT NULL,
  `yorumMakaleId` int(4) NOT NULL,
  `yorumYazan` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `yorumYazi` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Tablo döküm verisi `yorum`
--

INSERT INTO `yorum` (`id`, `yorumMakaleId`, `yorumYazan`, `email`, `yorumYazi`) VALUES
(1, 1, 'ecem', 'deneme@hotmail.com', 'BATU ECEM BATU ECEM'),
(2, 2, 'Batuhan', 'deneme2@hotmail.com', 'ECEM BATU ECEM BATU <3'),
(3, 3, 'ecem', 'batu2_s4@hotmail.com', 'DENEME YORUMUDUR');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `kullanici`
--
ALTER TABLE `kullanici`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `makale`
--
ALTER TABLE `makale`
  ADD PRIMARY KEY (`makaleId`);

--
-- Tablo için indeksler `yorum`
--
ALTER TABLE `yorum`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `kullanici`
--
ALTER TABLE `kullanici`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `makale`
--
ALTER TABLE `makale`
  MODIFY `makaleId` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Tablo için AUTO_INCREMENT değeri `yorum`
--
ALTER TABLE `yorum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
