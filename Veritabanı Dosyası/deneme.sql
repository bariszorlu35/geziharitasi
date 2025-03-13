-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 12 Mar 2025, 18:22:12
-- Sunucu sürümü: 10.4.28-MariaDB
-- PHP Sürümü: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `deneme`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `username`, `password_hash`) VALUES
(1, 'bzdev', 'fda5a5cb6b5d14e7e50241c1f1a11f07e386fa2be9512b75cd135df736b3216e');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `konumlar`
--

CREATE TABLE `konumlar` (
  `id` int(11) NOT NULL,
  `baslik` varchar(100) CHARACTER SET utf32 COLLATE utf32_turkish_ci DEFAULT NULL,
  `enlem` varchar(100) DEFAULT NULL,
  `boylam` varchar(100) DEFAULT NULL,
  `resim` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `durum` int(11) DEFAULT NULL,
  `aciklama` varchar(1000) CHARACTER SET utf32 COLLATE utf32_turkish_ci DEFAULT NULL,
  `yorum` varchar(150) CHARACTER SET utf32 COLLATE utf32_turkish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `konumlar`
--

INSERT INTO `konumlar` (`id`, `baslik`, `enlem`, `boylam`, `resim`, `durum`, `aciklama`, `yorum`) VALUES
(1, 'Kent Ormanı', '38.40798705218637', '27.063747229235275', 'kent.png', 1, 'İnciraltı Kent Ormanı, Türkiye\'nin İzmir ilinin Balçova ilçesinde bulunan kent ormanıdır.', 'güel yer'),
(2, 'Kızlar Ağası', '38.42112797734492', '27.13283080943736', '15022021142042163.png', 1, 'Kızlarağası Hanı İzmir\'in Konak ilçesinde bulunan tarihi bir handır.', 'Köü yer'),
(3, 'Engelliler Parkı', '38.40698981253198', '27.066087775009116', 'images.jpg', 1, 'Denize yakın piknik masaları mevcut daha denize yakın olmak isterseniz kendi masanızı ve sandalyenizi koyup oturabileceği is İzmir\'i seyredeceğiniz mükemmel bir yer.', 'Engelliler Parkı'),
(86, 'Saat Kulesi', '38.418801897234445', '27.128625084455738', 'saatkulesi.jpg', 1, '5 metre yüksekliğinde ve dört katlı olan kule, Sultan II. Abdülhamid\'in iradesi gereği Osmanlı vilayetlerinde aynı dönemde meydana getirilmiş birçok saat kulesinden birisidir.', NULL),
(89, 'Cumhuriyet Meydanı', '38.42870487493415', '27.134381095608173', 'cumhuriyet-meydani.jpg', 1, 'İzmir\'in savaştan sonra tekrar imar edilmesiyle kazandırılmıştır. Meydandaki anıt İtalyan heykeltıraş Pietro Canonica\'ya yaptırılmışsa da meydan ancak 1932\'de dönemin Belediye Başkanı Behçet Uz\'un sayesinde bitirilmiştir.', NULL),
(88, 'Kültürpark', '38.42780937007017', '27.145215443065922', 'kultur.jpg', 1, '1922 İzmir Yangını\'nda harabeye dönen 360.000 m2\'lik alan üzerinde 1936\'da kuruldu. Üç yıl sonra genişletilerek 420.000 m2 büyüklüğe ulaştı. Kurulduğu günden beri İzmir Enternasyonal Fuarı\'na ev sahipliği yapmaktadır.', NULL),
(90, 'Gündoğdu Meydanı', '38.43588557548317', '27.13971339229909', 'Gundogdu-Meydani-Alsancak.jpg', 1, 'Gündoğdu Meydanı, İzmir\'in Konak ilçesinin Alsancak semtinde yer alan bir meydandır. Şehirdeki birçok organizasyon, konser, miting ve kutlama burada gerçekleşir. 2000 yılında 1. Kordon\'un İzmir Büyükşehir Belediyesi tarafından denize doğru doldurulmasıyla kazandırılmıştır.', NULL),
(91, 'Çeşme Kalesi', '38.32352051300256', '26.302754434651717', 'ççç.jpg', 1, 'Osmanlı İmparatorluğu\'nun kontrolü altında bulunan Çeşme, 1472\'de ve 1501\'de Venedikliler tarafından iki kez saldırıya uğradı. Sonrasında ileride gelebilecek olası saldırılara karşı kale inşa edildi. Çeşme Kalesi, Osmanlı padişahı II. Bayezid döneminde 1508 yılında inşa edilmiştir.', NULL),
(92, 'Kadifekale', '38.41402821428608', '27.14518100501519', 'kadifekale.jpg', 1, 'Antik Smirni\'nin akropolisi olan kale, İzmir Körfezi\'ne hâkim 186 m rakımlı Pagos Tepesi\'nde yer alır. Rivayete göre Doğu Seferi sırasında Smirni\'ye gelen İskender, Pagos Tepesi\'nde avlanırken uyuyakalır ve bir rüya görür. Rüyasında kendisine şehri bu tepenin eteklerine taşıması gerektiği söylenir. Taşınma süreci İskender\'in ölümünden sonra, sırasıyla I. Antigonos Monophtalmos ve Lisimahos\'un yönetiminde MÖ 4. yüzyılın sonu ile MÖ 3. yüzyılın başında gerçekleşmiştir. Kaledeki ilk surların da bu dönemde inşa edildiği bilinmektedir.', NULL),
(93, 'Teleferik', '38.37977109830956', '27.045336110332045', 'balcova-teleferik-tesislerinde-periyodik-bakim-tamamlandi.webp', 1, 'İzmir Teleferik, ilk olarak 1974 tarihinde kurulmuştur. Uzun yıllar kullanıldıktan sonra yakın zamanda bakım ve onarımı için kapsamlı bir çalışma başlatılmıştır. Avrupa Birliği standartlarına uyulması ve daha güvenli bir seyahat deneyimi için optimum şartlar sağlanarak gerekli düzenlemeler yapılmıştır. 2015 yılında yeni, güvenli ve modern bir tarzda tekrar kullanıma açılarak İzmir’in simgelerinden biri olmaya devam etmiştir. ', NULL),
(94, 'İzmir Arena', '38.465133050905095', '27.145314289415985', 'kurum.jpg', 1, 'Açıldığı günden itibaren yerli ve yabancı gruplara ev sahipliği yapmasının yanı sıra İzmir\'in elit düğünlerine, davet, toplantı ve fuarlarına ev sahipliği yapmaktadır.', NULL),
(95, 'Doğal Yaşam Parkı', '38.49096745600511', '26.96077689147835', 'İzmir-Sasali-Dogal-Yasam-Parki.jpg', 1, '1937 yılında Türkiye’nin ilk hayvanat bahçesi olarak Kültürpark içerisinde 18 dönüme kurulan Fuar Hayvanat Bahçesi, 2008 yılında Çiğli Sasalı’daki 425 dönümlük alanda Türkiye’nin ilk Doğal Yaşam Parkı’na dönüştürüldü.', NULL),
(96, 'Kuş Cenneti', '38.492451667044115', '26.943225791967052', 'e3827a3f-55d5-42eb-802a-763d42cb70b0.jpg', 1, 'İzmir\'in Çiğli ilçesindeki Çamaltı Tuzlası\'nda bulunan bir doğal alandır. Orman Genel Müdürlüğü tarafından koruma altındadır.', NULL),
(97, 'Deniz Müzesi', '38.411861883747406', '27.03338944140948', 'download.jpg', 1, 'Balçova ilçesindeki İnciraltı İskelesi\'nde demir atmış üç müze gemide denizciliğin sosyal, tarihsel ve ekonomik gelişimine ilişkin nesneler sergilenmektedir. Müze, 1 Temmuz 2007\'de ziyarete açıldı.', NULL),
(98, 'Karagöl', '38.55739305302289', '27.217394696333663', 'bostanli-iskelesi-nin-ticari-alanlari-icin-ihale-zamani-1017588.jpg', 1, 'Deniz seviyesinden 850metre yükseklikte olan İzmir Karagöl Tabiat Parkı, Menemen’in Yamanlar Dağı mevkiinde yer almaktadır.35 dekarlık su yüzeyine sahip olan göl, jeolojik hareketler sonucu oluşmuş heyelan set gölüdür......', NULL),
(99, 'Arkeoloji Ve Etnografya Müzesi', '38.41369290104867', '27.12874166419788', 'etnografya_bina.jpg', 1, ' İzmir ili ve çevresinde bulunan arkeolojik eserlerin sergilendiği müze. 1927 yılında Aya Vukla Kilisesi\'nde ziyarete açılan müze, 1984\'ten beri Konak\'ta Bahribaba Parkı içindeki modern müze binasında hizmet verir.', NULL),
(100, 'Tarihi Asansör', '38.40864516760573', '27.117624083402465', '18d7e87d7cdf36d1bf14dce0cb2f6859_1522157823-b.jpg', 1, 'Biri diğerinden 58 m yüksekte olan Mithatpaşa Caddesi ile, Şehit Nihatbey Caddesi\'nin arasında işleyen iki asansörü barındıran asansör kulesidir. 1907 yılında Musevi iş adamı \"Nesim Levi (Bayraklıoğlu)\" tarafından yaptırılan asansör, birinden diğerine 155 basamakla ulaşılan iki semt arasında hızlı ve kolay ulaşım sağlama amacıyla yaptırılmıştır.', NULL),
(101, 'Konak İskele', '38.41830228414155', '27.126066872544232', 'iskele.jpg', 1, ' İzmir\'de kent içi ulaşım sağlayan körfez vapurları için hizmete açılmış bir vapur iskelesidir. İskele İzmir\'de kent içi deniz ulaşımından sorumlu belediye kuruluşu İzdeniz tarafından işletilmektedir. Mimar Zeki Sayar\'ın  tasarladığı yeni iskele binası 14 Nisan 1938 tarihinde hizmete girmiş, ancak Mustafa Kemal Sahil Bulvarı için yapılan sahil dolgu işleminden sonra 1988\'de yeniden inşa edilmiştir. ', NULL),
(102, 'Bostanlı İskele', '38.453097416257954', '27.097754924048413', 'bostanli-iskelesi-nin-ticari-alanlari-icin-ihale-zamani-1017588.jpg', 1, 'İzmir\'de kent içi ulaşımının sağlandığı yolcu ve araba vapur iskelesidir.  İskelede yolcu ve araba taşımacılığı hizmeti İZDENİZ tarafından gerçekleştirilmektedir. İskele Türkiye Denizcilik İşletmeleri tarafından 1989-1993 yılları arasında yaptırılmıştır.', NULL),
(103, 'Ege Üniversitesi', '38.45633178559581', '27.22862363388533', 'ege-universitesi-nden-uzaktan-egitim-karari-779286-5.jpg', 1, '20 Mayıs 1955 tarihinde yayınlanan 6595 sayılı kanunla 9 Mart 1956 tarihinde, İzmir\'de Ege Bölgesi’nin ilk, Türkiye\'nin 4. üniversitesi olarak eğitim-öğretim hayatına başlayan devlet üniversitesi.', NULL),
(104, 'Karşıyaka İskele', '38.45501826089189', '27.120317924087665', '348s.jpg', 1, 'Güney yakadaki Konak ile Karşıyaka arasında demiryolu ve karayolu bağlantısı bulunmakla birlikte en yoğun bağlantı körfez üzerinden vapurlarla sağlanmaktadır. 1950\'li yıllarda inşa edilmiştir.', NULL),
(105, 'Üçkuyular İskele', '38.40549831452326', '27.070098151075907', 'Üçkuyular_Ferry_Terminal,_March_2021_(9).jpg', 1, 'İzmir kent içi ulaşımının sağlandığı önemli bir araba ve yolcu vapur iskelesidir. İzdeniz tarafından işletilmektedir. İnşaat çalışmaları 21 Mart 1989\'da başlayan iskele, 11 Kasım 1993\'te tamamlandı.', NULL),
(106, 'İzmir Limanı', '38.44212869355108', '27.156493967959502', '5c91f6a167b0a93614ebd331.webp', 1, 'Ülkenin konteyner hacmi bakımından yedinci, kargo tonajı bakımından on üçüncü büyük limanıdır. 954\'te yapılan ve 1957\'de Türkiye Cumhuriyeti Devlet Demiryolları\'na devredilen Alsancak Beton İskelesi\'ne dayanır. Yapımına 1955\'te başlanan İzmir Limanı, 1959\'da hizmete girmiştir.', NULL),
(107, 'Ege Üniversitesi Hastanesi', '38.45593700344669', '27.209952497976165', 'hastane.jpg', 1, '1955 yılının Ağustos ayında Üniversiteye tahsis edilen binada çok kısa zamanda organize olarak 5 Kasım 1955 günü yapılan tören ile Ege Üniversitesi Tıp Fakültesi\'nde öğretimi başlattılar. Böylece, lise mezuniyet derecelerine ve başvuru sırasına bakılarak kayıtları yapılan 20\'si yabancı uyruklu 90 öğrenci ile 1955-1956 öğretim yılında Ege Üniversitesi Tıp Fakültesi’nde öğretime başlanmış oldu. ', NULL),
(108, 'Dokuz Eylül Üniversitesi Eğitim Fakültesi', '38.38728872952145', '27.167843653687708', 'egitim.jpg', 1, 'Buca Yüksek Öğretmen Okulu, 20 Temmuz 1982 de Dokuz Eylül Üniversitesine bağlı bir fakülte haline gelmiştir. Bu düzenleme ile İzmir Yabancı Diller Yüksekokulu, bu fakültenin ilgili bölümüne aktarılmış, Manisa Gençlik ve Spor Akademisi ile Ege Üniversitesi Beden Eğitimi ve Spor Yüksekokulu, Buca Eğitim Fakültesinin Beden Eğitimi Bölümü ile birleştirilmiştir.', NULL),
(109, 'Dokuz Eylül Üniversitesi Hastanesi', '38.39428061572435', '27.030229391046376', '15-hastane-resmi-15cm_16_9_1586121350.jpg', 1, 'Dokuz Eylül Üniversitesi Tıp Fakültesi 1978 yılında Ege Üniversitesi İzmir Tıp Fakültesi adı altında kuruldu. 1982 yılına kadar önce Karşıyaka Devlet Hastanesi sonra İzmir Belediyesi Eşrefpaşa Hastanesinde sağlık hizmeti sundu.', NULL),
(110, 'Ilıca Halk Plajı', '38.307832549730264', '26.37171971813551', 'ilica-beach-at-cesme.jpg', 1, 'Çeşme ilçesine bağlı bir mahalledir. Gelişmiş bir termal merkezidir. İnce kumlu plajların uzandığı Ilıca\'da, denizin içinde dünyanın hiçbir yerinde görülmeyen ılıca kaynakları bulunur.', NULL),
(111, 'Alaçatı Çarşısı', '38.28543310709904', '26.375635526996554', 'alacati-turkiye-scaled.jpg', 1, 'Tarihî taş evleri ve yılın 360 günü rüzgâr alması sebebiyle rüzgâr sörfüne elverişli plajları ile ünlüdür. Son yıllarda taş evleri sayesinde çok fazla gelişmiştir. Güneş batımından sonra dar sokaklara kurulan pazarıyla akşamları kalabalık hale gelir.', NULL),
(112, 'Beş Kapılar Kalesi', '38.668872125315744', '26.750822203551586', 'WtQP.jpg', 1, '11. veya 12. yüzyılda inşa edilmiştir. Cenevizliler, kaleyi Bizanslılardan alarak yeniden inşa ettiler. 1455\'te Foça\'yı alan Osmanlılar, 1538-1539 yılları arasında kalenin surlarını onardılar ve kulelerini eklediler.', NULL),
(114, 'Sığacık Kalesi', '38.19508906319321', '26.785885350927504', 'sigacik-kalesi-284-evle-birlikte-turizme-acil-4773503_o.jpg', 1, 'Adını aldığı Sığacık Mahallesi\'nde, günümüzde de kullanılan Sığacık Limanı\'nın hemen kuzeydoğusunda yer alır. Sığacık Kalesi\'nin Selçuklular döneminde yapıldığı tahmin edilmektedir. Aydınoğulları ve Osmanlılar döneminde tamir gören kalenin en önemli tamir aşaması Osmanlılar döneminde Piri Reis\'in önerisiyle Rodos Seferi\'ne hazırlanan Kanuni Sultan Süleyman\'ın emri üzerine donanma komutanı Parlak Mustafa Paşa tarafından Teos harabelerinin taş ocağı olarak kullanılmasıyla 1521-1522 arasında gerçekleşti.', NULL),
(115, 'Aşık Veysel Rekreasyon Alanı', '38.46765413707588', '27.209616237997743', '01062018_163320_0.png', 1, 'Bornova’daki 245 dönüm arazi üzerinde, Buz Sporları Salonu, 5 bin kişilik amfi tiyatro, basketbol ve voleybol sahaları, tenis kortları, mini futbol sahaları, yürüyüş pisti,  iki kafeterya ve dinlenme alanları ile  641 araçlık bir otopark da  bulunuyor.', NULL),
(116, 'İzmir Adnan Menderes Havalimanı', '38.2908602953914', '27.15203755818882', 'Adnan-Menderes-Ulasim_ahrm8p.webp', 1, 'Eski başbakanlardan Adnan Menderes\'in adı verilen ve 17 Kasım 1987\'de Başbakan Turgut Özal\'ın katılımıyla açılan havalimanı, o tarihte İstanbul Atatürk Havalimanı\'nın ardından Türkiye\'nin ikinci büyük havalimanıydı.', NULL),
(117, 'Dokuz Eylül Üniversitesi Tınaztepe Yerleşkesi', '38.36909439561361', '27.203366705382052', 'kampus2.png', 1, '20 Temmuz 1982 tarihinde kuruldu. Üniversitede 10 enstitü, 18 fakülte, 3 yüksekokul, 1 konservatuvar, 6 meslek yüksekokulu, 1 uygulama ve araştırma hastanesi ve 60 uygulama ve araştırma merkezi vardır.', NULL),
(118, 'Agora', '38.41863541161359', '27.13828775133025', 'agora1shutter.jpg', 1, 'Roma Dönemi’ne (M.S. 2. yy) tarihlenir. “Agora” sözcüğü, “kent meydanı, çarşı, pazar yeri” anlamına gelir. Hippodamos şehir planına uygun olarak, merkeze yakın bir yerde üç kat halinde inşa edilmiştir.', NULL),
(119, 'Klaros Antik Kenti', '38.004540187575394', '27.193107071959986', 'Klaros-Antik-Kenti-3.jpg', 1, 'MÖ 13. yüzyıl sonu ile 12. yüzyıl başlarında bu bölgeye göç eden Akhalar Karyalıların kurmuş olduğu Kolophon kentine yerleşmişlerdir. İlk göçmen grubun oikistesi (önder, kurucu) olan Rhaikos daha sonra Thebai\'den gelen bir göçmen grubundaki Manto ile evlenir.', NULL),
(120, 'Efes Antik Kenti', '37.94276665524729', '27.342232000690643', 'e2-1_16_9_1521015127.jpg', 1, 'Anadolu\'nun batı kıyısında, bugünkü İzmir ilinin Selçuk ilçesinin üç kilometre güneybatısındaki İyonya kıyısında ve sonraları önemli bir Roma kenti olan antik bir Yunan kentiydi. Kuruluşu Cilalı Taş Devri MÖ 6000 yıllarına dayanır. MÖ 10. yüzyılda eski Arzawa başkentinin yerine Attik ve İyonyalı Yunan kolonistleri tarafından inşa edilmiştir.', NULL),
(121, 'Nazarköy', '38.385202292598834', '27.44319032466036', 'two-3.png', 1, 'Eski ismi Kurudere olan ve yaklaşık 60 yıldır en büyük geçimini boncuk imalatı ve kiraz yetiştiriciliğinden kazanan bu köyün kaderi; bundan 4 yıl önce bir köy muhtarının girişimci ruhu ile değişmiş.', NULL),
(122, 'Sarpıncık Deniz Feneri', '38.65924125159293', '26.361654435250184', 'maxresdefault.jpg', 1, 'Denizden 97 metre yükseklikte bulunan Sarpıncık Feneri güneş enerjisi ile çalışıyor.', NULL),
(123, 'Bozyaka Eğitim Ve Araştırma Hastanesi', '38.39791506884983', '27.12588914503616', 'flas-iddia-bozyaka-ve-yesilyurt-hastaneleri-kapatiliyor-997430.jpg', 1, '', 'güzel bir hastane\r\n'),
(126, 'Sahil', '38.40722829934626', '27.05903727020513', 'WhatsApp Image 2025-03-09 at 14.25.05 (1).jpeg', 1, 'Farklı bir yer', 'bu yeri tavsiye ediyorum'),
(127, 'Sahil', '38.35600521761346', '26.96760253906249', '', 1, '', NULL),
(128, 'Kahramandere', '38.3662349864745', '26.867352294921865', 'WhatsApp Image 2025-03-09 at 14.25.05.jpeg', 1, 'Kahramandere, İzmir ilinin Güzelbahçe ilçesine bağlı bir mahalledir. 2023 itibarıyla 5.898 kişilik nüfusa sahiptir.', 'burasını çok beğendim. lütfen ekleyin'),
(167, 'xxx', '38.73158984401968', '28.078308105468754', NULL, 1, 'xxxx', NULL),
(168, 'baba', '38.71766178810086', '27.526245117187504', NULL, 1, 'yaga', NULL),
(166, 'asdasd', '38.18530735415859', '27.075805664062504', '67d1beb0bdd8b_NOAHSEBASTIAN.jpeg', 1, 'güzel güzel', NULL),
(169, 'a', '38.09349821336742', '27.00302124023438', '67d1bf59ae8de_NOAHSEBASTIAN.jpeg', 1, 'yes', NULL),
(170, 'asd', '38.17883049854014', '27.38479614257813', '67d1c05621cbe_logocuk.png', 1, 'Harika bir yer valla ', NULL),
(160, 'fena', '38.50948995925553', '26.510009765625004', '67d1b1ad3db80.png', 1, 'değil', NULL),
(161, 'Noah', '38.68443777679761', '26.91513061523438', '67d1b47dd9310_sebastian__.jpeg', 1, 'Sebastian', NULL),
(162, 'asdasd', '38.46810570012969', '27.17674255371094', '67d1b73abdc9f_NOAHSEBASTIAN.jpeg', 1, 'FENA YER', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `resimler`
--

CREATE TABLE `resimler` (
  `id` int(250) NOT NULL,
  `marker_id` int(250) NOT NULL,
  `resim` varchar(1000) NOT NULL,
  `durum` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `resimler`
--

INSERT INTO `resimler` (`id`, `marker_id`, `resim`, `durum`) VALUES
(28, 100, 'Asansor_From_Ground_Level_Izmir_Turkey.jpg', 1),
(29, 100, '728xauto.webp', 1),
(30, 100, 'izmir-Tarihi-Asansor-06.jpg', 1),
(31, 100, 'turkiyenin-tarihi-yerleri-tarihi-asansor-681x461.jpg', 0),
(32, 113, '20210307AW232239.jpg', 1),
(33, 113, 'candarli-1_(1).jpg', 0),
(34, 113, 'Candarli-Kalesi-giris-ucreti-ziyaret-saatleri.jpg', 1),
(36, 112, '04022021_103641_1348597016.jpg', 1),
(37, 112, 'bes-kapilar-kalesi.location.5jrshooixury.jpg', 1),
(38, 112, 'tarihi-bes-kapilar-kalesi-kalintilari-1363-f2.jpg', 0),
(39, 98, 'borcka-karagol-1360x650.jpg', 1),
(41, 98, 'izmir-Karagol-Ne-Yapilir.jpg', 1),
(42, 98, 'izmir-karagol-tabiat-parki-kamp-alani.jpg', 0),
(206, 99, '602ac495b352dbcf6afc9351dacf13ff.jpg', 1),
(44, 121, '1408520680.jpg', 1),
(45, 121, '1585853485_nazarkoy-gezilecek-yerler.jpg', 1),
(46, 121, 'boncuk-2-747ae0fa.jpg', 0),
(48, 121, 'img-20200123-223437-141.jpg', 0),
(49, 120, '5eec7c782269a2048c5ac50b.webp', 1),
(50, 120, '5f5a37687152d811782745d3.webp', 1),
(51, 120, '6cd8abc1ffd856f97e29f2dd28619789.png', 1),
(52, 120, 'Efes-Antik-Kenti-Panoramik-Manzara.webp', 1),
(53, 120, 'fotodha.efes__16_9_1614843904.jpg', 1),
(54, 120, 'fotodha.efes__16_9_1614843904.jpg', 0),
(55, 120, 'genel16.jpg', 0),
(57, 120, 'thumbs_b_c_9e8d7bef9a98d436066d94ee71382800.jpg', 0),
(58, 119, '0e203445d0930535006eadcee497cc06.gif', 1),
(59, 119, '2519128.jpg', 1),
(60, 119, '20190709_163733_001.jpg', 1),
(61, 119, '637134071683433086.jpg', 1),
(63, 119, 'claros-klaros-antik-kenti_7.jpg', 0),
(66, 119, 'Kolophon-Antik-1.png', 1),
(68, 114, 'seferihisar_da_deprem_ve_tsunaminin_yaralari_sariliyor_sigacik_kaleici_pazari_yeniden_kuruldu_h71828_a0cea.jpg', 1),
(71, 122, '120_c76c116f-00d3-4459-9220-1f36db63c727.png', 1),
(72, 122, 'deniz-fenerleri.jpg', 1),
(73, 122, 'EZxbtUHXQAIqRo-.jpg', 0),
(74, 122, 'location.14857.710570.jpg', 1),
(195, 2, '20171030160642135_Kizlaragasi, I.Hasan Bodur.jpg', 1),
(78, 91, '5f6dbd4d55428318686c34d8.webp', 1),
(79, 91, '1400738838.jpg', 0),
(81, 91, 'image-362978-cesme_kale_karsidan.jpg', 0),
(82, 91, 'kale-22-4-74c1d2f2.jpg', 1),
(83, 91, 'kale-22-8.jpg', 1),
(84, 91, 'SP_f6a9ccfe-f83b-418c-a46b-e8ec602f3bf4.jpg', 1),
(85, 110, '5f0b099517aca91710dea6e7.webp', 0),
(86, 110, '5f63353a7152d80ef43ed73f.webp', 1),
(87, 110, '34009336_LO-JLisjPN2CYdVKT_U85-6H-cQbuuCf7C3iKQO_5yw.jpg', 1),
(88, 110, '020820201635346563039.jpg', 0),
(91, 110, 'raw_cesme-ilica-plaji-icin-belediye-talip-oldu_003610056.jpg', 0),
(92, 111, '3ba5cabd-d44b-4417-9df6-e56d7ef59536.jpg', 1),
(94, 111, 'alacati-gece-hayati.jpg', 1),
(95, 111, 'alacati-merkez-carsisi-1429-50.jpg', 1),
(97, 111, 'Jun-Bistro-Pub-1-scaled.jpg', 1),
(98, 116, '49e6aee5-16be-4b30-9ff0-7b5ac1ae3ecc.jpg', 1),
(99, 116, '20180615_2_30925512_34689770_Web(1).jpg', 0),
(101, 116, 'height692_nurus-musteri-adnan-menderes-havaalani-g-4.jpg', 0),
(102, 116, 'thumbs_b_c_441638c958145e3da2feaf5d80bd14e7.jpg', 1),
(104, 96, '229795,kus-cennetijpg.jpg', 1),
(105, 96, '1441011394.jpg', 1),
(106, 96, 'asd.jpg', 1),
(109, 96, 'kuscenneti_kule.jpg', 0),
(111, 95, '20180828_2_32100019_36722248_Web.jpg', 1),
(112, 95, '21112017_15134_0.png', 1),
(113, 95, '31122018_143915_7.png', 0),
(201, 86, 'saat-kulesi.jpg', 1),
(115, 95, 'gezilecekyerler_5a25b17fcec2d.jpg', 1),
(117, 95, 'izmir-dogal-yasam-parki.jpg', 0),
(118, 95, 'unnamed.jpg', 1),
(119, 115, '20171114_161419.jpg', 1),
(120, 115, '20190829_2_37956611_47131312_High.jpg', 0),
(121, 115, '27122017_155542_0.png', 1),
(122, 115, '27122017_155542_1.png', 1),
(123, 115, '27755336_XLO_LVfVg-hOJp_9L5Gu_twzX832mCS7P2BHpxZtQLY.jpg', 1),
(125, 115, 'etkinlikmerkezi51.jpg', 0),
(127, 103, '780x411-ege-universitesi-covid-19-calismalarini-internet-uzerinden-paylasima-sundu-1588764595825.jpg', 0),
(128, 103, 'ege_universitesi_7_alanda_dunya_siralamasinda_h59023_c02e9.jpg', 1),
(129, 103, 'ege-haber-ici.jpg', 1),
(130, 103, 'ege-universitesi-kampusu-ne-turnikeli-giris-7727603_x_amp.jpg', 0),
(131, 107, 'ege_tip.jpg', 0),
(132, 107, 'ege_universitesi_hastanesi_kadrosu_gucleniyor_307_saglik_personeli_icin_ilana_cikildi_h62144_88e5d.jpg', 1),
(133, 107, 'ege_universitesi_tip_fakultesi_hastanesi_doktorlari_darp_edildi_h26008_05d1f.jpg', 1),
(134, 94, 'arena-2.png', 1),
(135, 94, 'asdasd.jpg', 1),
(137, 94, 'izmir-arena-bayrakli-7.jpg', 0),
(138, 104, '29_big.jpg', 1),
(139, 104, '45216509_cNbmH4B2P0KUS65ZoJ3O6owfRm18p5IXfQF--svgtx0.jpg', 0),
(140, 104, 'karsiyaka-ya-6-ahsap-iskele-geliyor.jpg', 1),
(141, 104, 'karsiyaka-ya-gecisin.jpg', 0),
(142, 104, 'L.jpg', 0),
(197, 2, 'kizlaragasi-hani.jpg', 1),
(144, 106, 'alsancak-limani.jpg', 1),
(196, 2, 'kiz.jpg', 0),
(147, 90, 'Gundogdu-Meydani-Alsancak.jpg', 0),
(148, 90, 'gundogdu-muharrem-incenin-mitingine-hazir_8326_dhaphoto3.jpg', 1),
(202, 92, '20190402_2_35780576_43212337.jpg', 0),
(152, 88, '24112017_112452_0.png', 1),
(153, 88, '24112017_112513_0.png', 1),
(155, 88, 'fuar-pakistan-pavyonu.jpg', 0),
(156, 89, 'cumhuriyet-meydani.jpg', 1),
(157, 89, 'CumhuriyetMeydani4.jpg', 1),
(158, 89, 'izmir-cumhuriyet-meydani-e1574665988405.jpg', 1),
(159, 117, 'dokuz-eylul-universitesi-tinaztepe-kampusu.jpg', 1),
(160, 117, 's-17adf9c7dccfce85624c6e347d5d4ae4d59558f5.webp', 1),
(161, 108, '55630087__5aM3A3tYVjknpJoKIesm_nrDdjCcul_Nw8m5vKRzUo.jpg', 1),
(162, 108, 'ERnFIpaXYAAf90m.jpg', 1),
(163, 108, 'hqdefault.jpg', 0),
(166, 93, 'IMG_99183.jpg', 1),
(167, 93, 'izmir-balcova-teleferik-02.jpg', 1),
(168, 93, 'izmir-balcova-teleferik-03.jpg', 1),
(169, 93, 'izmir-balcova-teleferik-tesisleri-calisiyor-mu1438070321-1-m.jpg', 0),
(170, 93, 'izmir-teleferik-calisma-saatleri-ve-bilet-fiyatlari.webp', 0),
(171, 93, 'izmir-teleferik-nerede-izmir-teleferik-ucreti_1988R38374_orj.jpg', 1),
(172, 109, '34d06f02-fdba-4eb5-96bd-aed982bfd65c.jpg', 1),
(173, 109, '073e4951-9bc7-4071-b1f4-c2055a56c785.jpg', 0),
(174, 109, 'DEUHABER3.jpg', 1),
(175, 109, 'dokuz_eylul_universitesi_ic-hastaliklari_1.jpg', 0),
(177, 97, '580608f845aa0-1476790520.jpg', 1),
(179, 97, 'izmir-sasali-dogal-yasam-parki-inciralti-deniz-muzesi-tren-muzesi-maket-koy_0016187001547898497.jpg', 0),
(180, 105, 'bostanli-uckuyular-arasinda-arabali-vapurda-iptal-var.jpg', 1),
(199, 86, 'ikons_20190913135404372.png', 1),
(182, 105, 'l.jpg', 0),
(183, 1, '27122017_161851_0.png', 1),
(186, 1, 'izmir-de-baharin-en-guzel-adresi-inciralti-kent-ormani.jpg', 1),
(187, 1, 'maxresdefault.jpg', 1),
(188, 3, '348s.jpg', 1),
(189, 3, '2017-03-26.jpg', 0),
(190, 3, '29857687_2rvbS6m99QEVjAzIIJS8SJZdgxPMGS5wChZeKdxfEnM.jpg', 0),
(191, 3, 'maxresdefault.jpg', 1),
(192, 123, '1200x627-c1122398-1577364837715.jpg', 1),
(193, 123, 'izmir-bozyaka-egitim-ve-arastirma-hastanesi-a-4354423_o.jpg', 1),
(194, 123, 'karabaglar_semt_poliklinigi_4.jpg', 1),
(203, 92, 'kadifekale.jpg', 1),
(204, 92, 'kale.jpg', 1),
(205, 92, 'resim1_8932625_16_9_1563434985.jpg', 1),
(207, 99, 'izmir-arkeoloji-muzesi_10.jpg', 1),
(208, 99, 'izmir-etnografya-muzesi.jpg', 1),
(209, 99, 'izmir-etnografya-muzesi1.jpg', 0),
(214, 102, 'bostanli.jpg', 1),
(211, 101, 'a70eb151229f3a871b97deab53cbd880.jpg', 1),
(212, 101, 'konak_iskele_400.jpg', 1),
(213, 101, 'Konak-Iskele.jpg', 0),
(215, 118, 'agora1.jpg', 1),
(216, 118, 'agora2.jpg', 1),
(217, 118, 'agora3.jpg', 1),
(218, 118, 'agora4.jpg', 1),
(219, 118, 'agora5.jpg', 1),
(220, 118, 'agora6.jpg', 1),
(237, 145, 'WPImage.jpeg', 1),
(222, 118, 'agora8.jpg', 1),
(224, 118, 'agora10.png', 1),
(225, 118, 'agora11.jpg', 1),
(227, 1, 'kent1.jpg', 1),
(228, 1, 'kent2.jpg', 1),
(229, 1, 'kent3.jpg', 1),
(230, 1, 'kent4.jpg', 1),
(231, 1, 'kent5.jpg', 1),
(232, 1, 'kent6.jpg', 1),
(233, 1, 'kent7.jpg', 1),
(234, 1, 'kent8.jpg', 1),
(235, 1, 'kent9.jpg', 0),
(236, 1, 'kent10.jpg', 0),
(240, 86, 'saatkulesihd.jpeg', 1),
(241, 99, 'logocuk.png', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

CREATE TABLE `yorumlar` (
  `id` int(11) NOT NULL,
  `marker_id` int(11) NOT NULL,
  `yorum` varchar(1000) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `durum` int(2) NOT NULL,
  `ad` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `soyad` varchar(100) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`id`, `marker_id`, `yorum`, `durum`, `ad`, `soyad`) VALUES
(5, 1, 'Çok güzel bir yer ve şehrin ortasında, ulaşım olanakları çok rahat.', 1, 'Seda', 'Aktepe'),
(6, 98, 'Manzarası, havası, doğası güzel bi yer, giriş ücreti 30 tl olan bir yere göre bakımsız. Yolları biraz bozuk ama yine de gidilir mekanlardan.', 1, 'Cem', 'Aksoy'),
(7, 98, 'Doğa harikası bir yer.Günü birlik piknik için ve kamp yapmak için güzel bir doğa harikası.Ateş yakmak yasak.Ateş yakmadan piknik yapın.', 1, 'Ceren', 'Solmaz'),
(8, 98, 'Yolları da  bozuk olmasa ve asfaltı daha kaliteli olsa güzel olacak. . Kışın yaz lastiği ile çıkmayı pek denememek lazım.', 1, 'Nail', 'Bakırcıoğlu'),
(9, 98, 'Yolu tamamen asfalt fakat çok tehlikeli.\r\nYolculuğun sonunda mükemmel bir yer sizi karşılıyor. Araç + çadır için 55 TL verdik.', 0, 'Elif', 'Efkan'),
(10, 113, 'Denize sıfır plajı olan bu nezih tatil beldesine gelmeniz taze günlük deniz mahsullerini ve bu tarihi kaleyi gezmenizi isterim', 1, 'Hicar ', 'Erdemli'),
(11, 113, 'Buram buram tarih kokan kale ve karşısında mis gibi kokan deniz ilk defa geldim ve hayran kaldım...', 0, 'Çağla', 'Viran'),
(139, 101, 'Kalanlar el sallar gidenlerin ardından bu iskeleden. Kaç defa vapurla körfeze açıldı insanlar bu iskeleden.', 1, 'Ecem Su', 'Çağlar'),
(12, 122, 'Çok güzel bir manzara. Bakir koy muhteşem bir deniz. İnsanlar olarak keşke daha duyarlı ve temiz olabilsek. Muazzam bir doğası var. Yolu son km biraz bozuk ama olsun az gidilsin, kirlenmesin. ', 0, 'Soner', 'Ayık'),
(13, 122, 'Güzel bir yer termosda çayını getirip denize karşı kafa dinlemek için gelinebilir', 0, 'Fikret', 'Arık'),
(14, 110, 'Tertemiz denizi ve havası... Her şey ücretsiz... Lüks otellerde alamayacağınız keyfi ve iyot kokusunu burada bulursunuz. Her 2 haftada bir ziyaret ediyorum.', 0, 'Fatih', 'Yonca'),
(15, 110, 'Denize girmek için süper suyu ismindende anlaşıldığı gibi ılık ve temiz attığım video bakın başka söze gerek yok bence.', 0, 'Pelin', 'Pak'),
(16, 110, 'Haftanın bazı günlerinde öğleden sonra çıkan ve denizden karaya esen rüzgara denk gelmezseniz; 2km lik sahili, pudra kıvamında incecik kumu ve turkuaz deniziyle bana göre dünyanın en güzel plajlarından biri.', 0, 'Sedat', 'Akıncı'),
(17, 91, 'Müzekartla veya tek giriş ücreti ödeyerek girebilirsiniz. Tuvaletleri ve genel olarak ortam tertemiz. İçeride Osmanlı-Rus savaşından ve Roma döneminden kalan eşyaların sergileri var. Kale manzarası güzel.', 0, 'Münevver', 'Kara'),
(18, 91, 'Bolgenin dokusuna uygun binalara magzalar konumlanmis ve şik hos cafeler restoranlar, selfiler sosyal medya palasimlari icin cok sevimli guzel koseler bir de ustune pufur pufur esen ruzgar tadi.', 0, 'Aygül', 'Eke'),
(19, 91, 'Sadece gezi fotoraf çekilmek için değil.incelemek ve anlamaya çalışmak için güzel bir anıt', 1, 'Muzaffer', 'Zafer'),
(20, 111, 'Çok güzel dükkanlar mevcut. Takı, kıyafet vb. Sakızlı kurabiyeleri çok güzel. Fiyatlar çeşmeye göre 2 kat fark ediyor. Genel olarak her şey çok pahalı. Hafta içi izmire giderken uğradık. Çok kalabalıktı. Pandemi dönemi çarşıda zor yürüdük …', 0, 'Kübra', 'Demir'),
(21, 111, 'Pandemi sonrası fazla kalabalık değil rahatça gezebilirsiniz.', 0, 'Yazgı', 'Alatürk'),
(22, 111, 'Karantina sürecinden sonra özellikle içinizi kıpır kıpır edecektir eminim ki. Fiyatlar biraz daha uygun olsa her akşam düzenli ziyaretlerle karaciğer bırakılabilir.', 0, 'Sudenaz', 'Garip'),
(23, 111, 'Çok taze sebze vede meyveler var,fiyatlar uygun ,kıyafet, aksesuar,her türlü takı,parfüm  aklınıza gelecek herşey mevcut harika bir pazar', 0, 'Aziz', 'Sert'),
(24, 114, 'Sürekli gittigim harika biryer butik oteller kafeler deniz küçük satıcılar güzel manzaralar', 0, 'Ceren', 'Deniz'),
(25, 114, 'Vatandaşın emeği ile temiz bakımlı Sığacıga gelecekseniz kale içine girip bir tur atın bazı evler görülmeye değer.', 0, 'Fırat', 'Bayram'),
(26, 112, 'Daha da güzel olabilir. Restorasyona ve korumaya muhtaç yapılar var.', 0, 'Bünyamin', 'Yakı'),
(27, 112, 'Kekolar istila etmiş heryeri çöp ve içki çöpleri götürüyor yetkililerinin acilen bir el atması gerekiyor.\r\n', 0, 'Sadettin', 'Yoruk'),
(28, 119, 'Girişi ücretsiz temiz ,ünlü şair İlyada yazarı Homerosun yurdu Antik zamanın Kehanet merkezi.', 0, 'Galip', 'Devrim'),
(29, 119, 'Tesadüf eseri keşfettiğimiz, antik Yunan döneminden eserlerin replikalarının sergilendiği Kazı alanı. İzmire yaklaşık 45 dakika. Giriş ücretsiz. İçeride yaklaşık 30-60 dk geçirmeniz yeterli olacaktır. Ayrıca çok misafirperver güvenlik görevlilerine sahip bir mekan. Öyle ki, bizimle çardaklarını paylaştılar ve öğle yemeğimizi yememize müsaade ettiler. Mutlaka bir gün görün.', 0, 'Yağmur', 'Batı'),
(30, 120, 'En güzel kısmı kütüphane kısmı, güzelce gezmek isterseniz en az 2-3 saat ayırın. Girişte ücretsiz otopark mevcut. Suyunuzu ve atıştırmalığınızı getirmenizi tavsiye ederim girişte marketler var ama çok pahalı. Çocuklu aileler zorlansa da gezebilirler bazı kısımların zeminleri çok bozuk çünkü. Müze kart geçerli.', 0, 'Ahmet', 'Can'),
(31, 120, 'Tarihe doğru güzel bir yolculuk :) mutlaka uğrayın ama lütfen çevrenizi temiz tutun her yediğimiz, içtiğimiz yerlerde maşallah adamlar zamanında oraya o sütunları dikmiş, oymuş bir şeyler yapmış biz hâlâ çöpü çöpe atmayı öğrenememişiz..', 0, 'Emrah', 'Karatepe'),
(32, 116, 'Dünyadaki bir çok büyük ölçekli havalimanına nazaran kapasitesi tam değerlendirilemeyen çok güzel bir havalimanımız. Daha fazla iç ve dış hat uçuşunu hak eden bir bölgede olmasına rağmen kapasitesinin çok altında çalışan bir havalimanı.', 0, 'Fikri', 'Hak'),
(33, 116, 'Bu hava limanı ülkenin modern havalimanlarından ama bazı kısıtlamalardan dolayı olması gereken noktalara seferler yok Izmir bir truzim,sanayi ve ticaret şehri olmasına rağmen sefer sayıları az', 0, 'Can', 'Akkurt'),
(34, 116, 'Ichatlar terminalinden uctum. Hala ilk yapildigi gibi heryer yeni ve duzenli gorunuyor. Guzel bir yolculuktu.', 0, 'Asiye', 'Can'),
(35, 116, 'örevli personellerin ilgisi ve alakası çok iyiydi vatandaşlara karşı hassasiyeti beni çok memnun etti..', 0, 'Okan', 'Kurt'),
(36, 121, 'Kemalpasa yakininda kucuk bir koy. Gelecegi var ancak henüz tam turistik bir yer olmamış. Köy içinden cok otomobil geçiyor ve sürekli yol vermek zorunda kalıyorsunuz. Çocuklarla yürümek zor. Köylülerin işlettikleri dükkanlar cok guzel ve samimi.  Nazar boncuğu atölyeleri dikkat çekici. Kiraz mevsiminde gittik ağaçlar kiraz doluydu ve gezmesi daha zevkli. Doğanın yeşil ve bereketli olduğu bahar ve yaz basi tercih edilmeli.', 0, 'Akın', 'Gar'),
(37, 121, 'Potansiyeli olan ve bunu kullanamayan bir yer. Araç trafiğine kapalı bir alan yok, 1,5 araçlık yol git-gel trafiğe açık ve dahası yayalar da buralarda dolanıyor. Trafik karşıdan gelen araç olduğunda kilitleniyor. Eğer mutlaka gidecekseniz Nazarköy girişinde bir otoparka parkedin, oradan da araç trafiğine eşlik ederek köye kadar 5dk yürüyeceksiniz. Özellikle boncuk, süs aramıyorsanız, şu an için gitmeye değer birşey göremedim ben açıkçası. Güzel bir potansiyeli değerlendirememişler.', 0, 'Aykut', 'Demirci'),
(38, 121, 'Rengarenk ve tertemiz.', 1, 'Yavuz', 'Hırlı'),
(39, 121, 'Haftasonunuzu değerlendirebileceğiniz  güzel şirin bir yer ', 1, 'Murat', 'Güloğlu'),
(40, 121, 'Harika doğası olan bir bölge', 1, 'Efe', 'Uygur'),
(41, 96, 'Ben hayatımda bu kadar saçma bi durum görmedim 3 kuşak çiğliliyiz dedem ve babamın gezdiği yerleri ben gezemiyorum, lafta kuş cennetimiz var ama 1. Derece doğal sit alanı bölgeye özel bir tuz şirketi yüzlerce metre dikenli tel çekip girişe de güvenlik koyup burası fabrika buraya sivil geçiş yasak deme cüretini nasıl bulabiliyor anlamış değilim sinirden delirmemek elde degil, hangi cüretle doğal alana insan girişini yasaklayabilirsin. Ben yine yakınım yürüyerek bile gelirim ama onlarca yüzlerce k.m öteden gelen insanlar ne yapsın yazık degil mi bu şekilde mi doğal güzelliğimizi gelip görün diyeceğiz. Belediyenin gerçekten el atması lazım.', 0, 'Kadir', 'Avcı'),
(42, 96, 'Yolu düzgün yol kenarında araçlarını bırakıp denize karşı oturanlar vardı tuzla geldikten sonra sağdan kuş cennetine gidebilirsiniz seyrekten de çıkabilirsiniz', 0, 'Zafer', 'Bağdiken'),
(43, 96, 'Dünyanın sayılı kuşcennetlerinden biri ,üstelik şehirin hemen yanıbaşında...ama anlamsız ve garip uygulamalar var.Örneğin ;alana onlarca balıkçı arabası ,tur vasıtaları ,bisikletliler girebiliyor ;ama doğa ve kuş fotoğrafçıları araba ile giremiyor.15-20 kg.ağırlığındaki ekipmanları 23 km.lik parkur boyunca sırtlarında taşımak zorundalar.Sınırlı ve yetersiz denetleme nedeniyle alana giren avcılar da başka bir garabet örneği.Oysa doğa ve kuş fotoğrafçıları alanda iken avcılar girmeye cesaret edemiyorlardı.', 0, 'Burcu', 'Arslan'),
(44, 96, 'Şehire yakın olup değerlendirilmesi gereken dinlendirici bir yer. Aşırı sakın bir yer ve günübirlikçi mangalseverlerin işgal edemeyeceği bir alan. Kafa dinlemek istiyorsanız gayet güzel bir yer.', 0, 'Berk', 'Gün'),
(45, 102, 'Engelli 60 yaş 65 yaş kart çıkarma işlemleri buradan yapılıyor ve kalabalık olmuyor. Bunun dışında arabalı vapur yolcu vapuru ve aktarma otobüsleri buradan kalkıyor. Arabanızı park etmek içinde yer var. Herşey düşünülmüş. Teşekkürler.', 0, 'Bülent', 'Aksakal'),
(46, 102, 'Bizi dünyaya bağlayan, vapur keyfinin başlangıç noktası.', 0, 'Ezgi', 'Azıl'),
(47, 102, 'Temiz ve güzel bir yer.', 0, 'Yaman', 'Kaba'),
(48, 102, 'Küçük bir iskele', 0, 'Aydın', 'Aydınoğlu'),
(49, 104, 'Izmır in eski vapur iskelesi buradan Konak Pasaport ve Bostan lı ya vapur ile gidebilirsiniz.Iskele Karşıyaka çarşı girişinde bulunuyor.', 1, 'Ali', 'Gerdan'),
(50, 104, 'İzmir denilince ilk alla gelen şey konaktan Karşıyaka’ya feribot geçmek geliyor. Güzel bir yer.', 1, 'Melis', 'Babalı'),
(51, 104, 'Kentkart yükleme, maske alma makinasi ve bisim karti çıkartma yeri mevcut', 1, 'Hayri', 'Ülker'),
(52, 94, 'Açıkhava olarak harika bir mekan denize sıfır! Biraz dikkatsiz olursanız düşmemeniz için hiç bir sebep yok! Sagopa Kajmer konseri için geldik. Harika efsane muazzam bi ambiyanstı. Kendi çektiğim bir kaç sahne fotoğrafını da buraya bırakıyorum hatıramız kalıcı olsun.', 0, 'Polat', 'Kerim'),
(53, 94, 'İzmirin en güzel yeri diyebilirim. Sahilde çimlerin üstünde rahat sandalyelerinize ya da yastıklara oturarak konser dinlemek şahane. Umarım restoran vb işletmeye de sahiptir.', 0, 'Kadir', 'Anayurt'),
(54, 94, 'Korona bitsin yaz gelsin eskisi gibi konserlerde coşalım manzarası super.', 0, 'Pelin', 'Güzel'),
(55, 94, 'Özellikle yazın konserlerde etkinliklerde harika deniz manzarası ile 1 numara.', 0, 'Cemal', 'Pek'),
(56, 94, 'Adamlar grubunun konserine geldik. Gerçekten çok iyi organize edilmiş bir mekan. Arabanızı koyabileceğiniz bir otoparkı da mevcut. İçeride fıçı bira 25, patates kızartması 10 TL. Fiyatlar da gayet uygun.\r\n', 0, 'Murat', 'Kılıç'),
(57, 94, 'Güzel bir mekan.', 0, 'Güven', 'Alp'),
(58, 115, 'Stres atıp temiz hava solumak için muazzam bir alan.Yeşilliğinden tutun düzenine kadar harika ve hatta ihtiyaçların karşılanabileceği yerlere de yakın olması ekstra bir avantaj.Vaktiniz varsa her gün gelin.Eşinizle dostunuzla ailenizle güzel bir vakit geçirebilmek için muhteşem bir alan.', 0, 'Yiğit', 'Bayram'),
(59, 115, '11 yıl öncesi ile kıyas götürmeyecek kadar değişime ugrayan dogal alan.. Çocuklarınız ile rahatlıkla gidebileceğiniz, arkadaslarınızla oturup sohbet edebileceğiniz, hatta pandemi öncesi kahve yudumlayabildiğimiz, ağaçlarına her gün bir kez daha hayranlık duyduğumuz parkımız...', 1, 'Seda', 'Boz'),
(60, 115, 'Bornova Aşık Veysel parkı çok geniş vede cok uzun.Agaclar,cayır çimen,yerler tertemiz,Bornovalilarin tam dinlenme ve mesire yeri.cocuk oyun parklarında cok.alisveris marketlerde var.Herkesin temiz hava alacağı çocuklarının garantili huzur icinde vakit geçireceği bir park.Belediye Başkanını tebrik ederim.Osman Özutemiz Emekli öğretmen.', 1, 'Hüseyin', 'Çalışmaz'),
(61, 115, 'Yürüyüş yapmak çocukları parka götürmek sakin ağaç kuş cıvıltıları içinde kafa dinlemek için çok güzel bir yer.', 0, 'İbrahim', 'Güleş'),
(62, 123, 'Biraz önce Poliklinikler girişindeki tuvalete girdim. Pisuvarlar ağzına kadar dolu. İçerisi leş gibi kokuyor. Hem de bu salgın ortamında böylesine sağlıksız bir durum...', 0, 'Can', 'Çelik'),
(63, 123, 'Doktor Ekin ZORLU tarafından ellerimin terlemesi için olduğum ETS ameliyatında hocama ilgisinden ve üslubundan dolayı çok teşekkür ederim. Ameliyattan sonra neden bu zamana kadar beklemişim diye kendime sordum. Gerçekten bu problemi yaşayanlar hiç dusunmeden Ekin hocam sayesinde  ameliyat olup bu sıkıntıdan kurtulabilirler. Kendisine ve ekibine çok teşekkür ederim. Hayatımda asla unutmayacağım bir doktordur kendisi. Her şey gönlünüzce olsun Ekin hocam', 0, 'Özlem', 'Ada'),
(64, 123, 'Çok hasta var.', 0, 'Fatih', 'Akın'),
(65, 123, 'Ortapedi bölümünden hiç memnun kalmadım ilgi alaka yok doktorlar desen Bi havalarda soru soruyorsun dgru düzgün açıklama almıysn... Gitmeye değmez', 0, 'Burak', 'Yaman'),
(66, 118, 'Çok güzel bir yer fakat ben gittiğimde alanın yarısından fazlası kapalıydı.Bu alanların restorasyonunun yapılmadan gezmek saçmalık olur.', 1, 'Havva', 'Bulut'),
(67, 118, 'Helenistik dönem, Roma dönemi, Bizans ve Osmanlı dönemine ait değerli eserlerin olduğu bir mekan.', 0, 'Ali', 'Gacan'),
(68, 118, 'İzmirin adını aldığı güzel bir antik şehir..', 0, 'Berkay', 'Haspolat'),
(69, 118, 'İzmir Merkezde gezilebilecek bir mekan. Giriş çıkış saatlerinde sorun var. Erken gitmeye bakın.', 0, 'Simge', 'Salim'),
(70, 118, 'Buraya girdik yer bı sallandı heralde çalışma var dedim ama deprem oldu. Öyle çok fazla birşey yok ama şehir içinde böyle bı kalıntılar olması ve muhafaza etmeleri gerçekten güzel tam manasıyla açık değil gerçekten komple alanı açılsa çok daha güzel olacağını düşünüyorum', 1, 'Barış', 'Güngör'),
(161, 100, 'Burayı çok beğendim!!', 1, 'Ahmet', 'Deniz'),
(72, 117, 'Torbalı Myo eğitim olarak ileride işsiz kalamaycağınız bölümlerden oluşmakta.', 0, 'Gökhan', 'Tarık'),
(73, 117, 'Kampüs, bir üniversitenin ihtiyacı olan alanı karşılayacak büyüklükte. Belediye otobüşleri ile kolayca ulaşılabiliyor. Yol genişlikleri araç trafiğine uygun. Binaların yer gösterim levhaları uygun şekilde yerleştirilmiş, gitmek istediğiniz yeri kolayca bulabiliyorsunuz. Bankamatikler ve PTT şubesi bir yere toplanmış. Yeşil alan doğal olarak var ve geliştirilmeye devam ediyor. Kampüs alanına yeni binalar yapılarak, dağınık bölgelerde bulunan okullar tek bir alana toplanmaua devam ediliyor. Otobana yakın olması da ulaşımda avantaj sağlıyor.', 0, 'Mustafa', 'Özarı'),
(74, 117, 'Harika bir mekan ve kampüs', 0, 'Ruhi', 'Güler'),
(75, 109, 'Babamı götürdüm ve gayet memnun kaldım sadece hasta refakatçilerine fazla özen göstermiyorlar diye düşünüyorum onuda pandemiye bağlıyorum. Diğer yönden pek sıkıntı göremedim acil kısmını bilemşycem yorum yapamıycam bu bölümle alakalı.', 0, 'Recep', 'Ak'),
(76, 109, 'Allah düşürmesin, ama eğer hastanede acil bir işiniz varsa ve gidebiliyorsanız; Yeşilyurt devlet hastanesini tercih edin.\r\n', 0, 'Seçil', 'Yurt'),
(77, 109, 'İlk acile geldiğimde çok bekledim ama benimle ilgilenildi bütün tıbbı cihazlar mevcut.Yurt dışında bile bu kadar çabuk sonuç alınamazken bütün işlemler yapıldı.Dün ameliyat için buraya geldim ve gencecik doktorlarımız ,hemşirelerimiz gece gündüz çalışıyorlar.Hepsi sevimli güleryüzlü yarın ameliyat olucam hiç korkmuyorum bütün işlemler yapıldı herşey hazır bende hazırım.', 0, 'Sema', 'Yorgancı'),
(78, 109, 'Yardımcı personeller tamamen bahşişle çalışıyor ve yardımcı oluyorlar. Oraya gelmiş kişilerin yardıma muhtaç olma durumundan faydalanıyorlar.', 0, 'Talha', 'Toklu'),
(79, 109, 'Geçen akşam covid testi yaptırmak için gittiğimizde pandemi servisinin 5 de kapandığını test yağtırmak istiyorsak coronalı hastaların arasına sokup yapabileceklerini söylediler ama buna da gerek olmadığını belirttiler. Semptomlar grip gibiymiş korona belirtisi yokmuş güya ısrarcı olmamıza rağmen yapılmadı. Günlerdir iyileşememiz sonucu bugün başka bir hastaneye gittiğimizde virüsün ciğerlerimize indiğini öğrendik. Üstüne üstlük doktorların ilgisizliği de cabası. Hepsi elinde kahve çay bomboş oturuyolardı.', 0, 'Alya', 'Sezgin'),
(80, 109, 'Baştan sona pişmanlık. Kendini beğenmiş genel cerrahi dr lari hemşire leri tavırları. Özel hastane  Kadr pahalı ameliyat lar.sorumsuz personel. Tekerlekli sandalye kimlik le verip 1 km yol yürüme mi sağlayan . Hastane servis girişinde hasta indir bindir yapılması icin araç girmesi yerine otopark yapıp ticarethane ye dönüştürülmüş kurum.daha si saymakla bitmez. Askeriyeden farksız.', 0, 'Kuzey', 'Demir'),
(81, 109, 'Pamdemi yüzünden biraz sıkıntılı şuaralar girmek çıkmak zor valla. Allah yardımcımız olsun.', 0, 'Bulut', 'Duman'),
(82, 108, 'Yükseklisans yaptığım üniversitemin harika ötesi bir atmosfere sahip olan kampüsü, sana yeniden o taptaze duyguları en derin haliyle yaşatıyor.', 0, 'Fırat', 'Öcal'),
(83, 108, 'Telefonlar açılmıyor herhangi bi açıklama olmuyor pandemi diye bi bahane tutturulmuş kimse iş yapmıyor dünden razıymış herkes iş yapmamaya memurlar otobusler servisler operatörler kim varsa dünden razı hangi işimiz olmasa pandemiden dolayı deniliyor 7 düvele yenilmeyen ülke pandemiden ne hale geldi bu ne ya?', 0, 'Mehmet', 'Emin'),
(84, 108, 'Bucadaki en eski ve en güzel Dokuz Eylül kampüsü burası olabilir. İçerisindeki dekanlık binası yanılmıyorsam eski levanten köşkü. Yeşillikler içerisindeki yapısı harika. Öğrencilik zamanımda da ziyaret ettiğim olmuştu ama şimdiki hali bile o zamandan oldukça farklı görünüyor.', 1, 'Ufuk', 'Aktaş'),
(85, 108, '2006-2010 yılları arasında okuduğum fakülte. İçi milli park gibidir, alabildiğine yeşil ve doğal. O zaman hissediyorduk, şimdi daha iyi anlıyoruz ki eğitim konusunda söylendiği kadar kaliteli ve mükemmel değil.', 1, 'Cüneyt', 'Şahin'),
(86, 108, 'Sakin ve düzenli buldum. Bahçesi güzel ve yeşil. Özellikle ben gittiğimde kapıdaki güvenlik Çok kibardı.', 1, 'Mehmet', 'Şen'),
(87, 107, 'Bölgeye hizmet veren akademik alanda başarılı fakülte ödenek azlığı nedeniyle bazı alanlarda geri kalmaktadır.', 0, 'Ümit', 'Erdem'),
(88, 107, 'Cihazları her zaman bozuktur ,bozuk olmasa bile en basit görüntüleme için bile,en erken 2 sene sonrasına randevu verirler...Hocalar yüzünüze bakmaz, ama parayı bastırıp bu hocaların dışardaki muayenehanelerine giderseniz size kral gibi davranırlar.. Teknolojiye yatırım yapmayan yeni teknikleri takip etmeyen, bakteri ve virüs yuvası bir hastane..Burada başınıza birşey gelirse asla bir sorumlu bulamazsınız..Buraya gelmeyin demiyorum önünden bile geçmeyin.', 0, 'Mehmet', 'Ali'),
(91, 107, 'Sağlık personelinin ilgisinden gayet memnunum ancak asansörler çok kalabalıktı, bu pandemi şartlarında yetersizdi.\r\n', 1, 'Selim', 'Sütçü'),
(92, 106, 'Ekran kartı getirtmek istiyorum getirebilecek kişilerle görüşmek dileğiyle..', 0, 'Ali', 'Çakır'),
(93, 106, 'Limanda çöp atacak çöp kutusu bulamadım. Kamyonların park bölgesinde tuvalet bile yok. Yazık yazık. Koskoca liman burası. Millet çöpü denize atıyor...\r\n', 0, 'Sueda', 'Sus'),
(94, 106, 'En eski limanlardan.', 0, 'Fatma Gül', 'Soylu'),
(95, 105, 'Karşıyaka Üçkuyular arasında 30 km. fark ediyor, hem araç yıpranmıyor hem istirahat etmiş oluyoruz', 0, 'İlke', 'Saklı'),
(96, 105, 'Karşıyaka’ya ulaşmak için mükemmel bir yol manzara martılar harika günbatımında yol almanızı tavsiye ederim.', 0, 'Boğaç', 'Aytekin'),
(97, 105, 'Bostanlıya geçerken denizi bu dev gemilerde yükseklerden izlemek çok keyifli.', 0, 'Ali', 'Tereli'),
(98, 105, 'Üçkuyular bostanlı arasında arabanızlar karşıya geçebilirsiniz. Ulaşım kolay üçkuyular yoğun trafiğinin biraz daha dışında, yemek yemek için lokantalarda mevcut ama biraz pahalı. Otomobilde Indirimli saatler 7 tl normalde 10 tl. Fotoğrafta yayınlıyorum. Saat ve ücretleri.', 0, 'Vehbi', 'Gürgen'),
(99, 100, 'Güzel, sevimli sokağıyla; yeme, içme mekanlarıyla, girişte sizi Dario Moreno ve Enrico Macias karşılar... Asansör ücretsizdir. Terasa çıkıp Körfeze bakabilirsiniz.', 1, 'Mehmet', 'Keskin'),
(100, 100, 'İzmir’de Bulunan Tarihsel Bir Yapıdır. Biri Diğerinden 58 Metre Yüksekte Olan Mithatpaşa Caddesi İle Şehit Fethibey Caddesi’nin Arasında İşleyen İki Asansörü Barındıran Asansör Kulesidir. 1907 Yılında Musevi İş Adamı Nesim Levi (Bayraklıoğlu) Tarafından Yaptırılan Asansör, Birinden Diğerine 155 Basamakla Ulaşılan İki Semt Arasında Hızlı Ve Kolay Ulaşım Sağlama Amacıyla Yapılmıştır. Günümüzde İzmir Büyükşehir Belediyesi Tarafından Eğlence, Kültür Ve Dinlenme Mekanı Olarak Kullanılır; Kentin Önemli Bir Turistik Durağıdır.', 1, 'Harun', 'Can'),
(101, 100, 'Harika bir yer, hep gitmek istiyodum ve sonunda gittim. Tarihi olarak çok güzel bir yer', 0, 'Cemre', 'Kırk'),
(102, 99, 'Müze, İzmir Arkeoloji Müzesi ile aynı bahçede yer almaktadır. Müze binası 19. yüzyıldan kalma Neo-klasik tarzda bir yapıdır. 3 kattan oluşan müzede İzmir’e özgü çeşitli etnografik eserler sergilenmektedir. Bina, 1987 senesinden bu yana müze olarak hizmet vermektedir.Etnografya Müzesi biraz atıl durumda olsa da aynı bahçede bulunan Arkeoloji Müzesi’ni ziyaretiniz esnasında uğrayabilir ve İzmir ile ilgili geleneksel kıyafet ve eşyaları inceleyebilirsiniz.', 0, 'Caner', 'Çetin'),
(103, 99, 'Cok degerli eserler var. Calisanlar kibar. Ortam sessiz sakin. Kafa dinleyerek kültürlenmek isterseniz mutlaka ziyaret edin\r\n', 0, 'Hamza', 'Mutlu'),
(104, 97, 'Donanmanın kullandığı 2 su üstü bir de denizaltı gemisi tanıtılıyor. Denizcileri anlamak için iyi bir yer. Dar alanda ysşayıp kocaman ülke savunulmuş. Küçük müze gibi yerleri var.Kapalı alan korkusu olanlar, ortopedik engelli olanların girmemesi önerim. Geminin bağlı olduğu liman çevresinde çok güzel park var.Yakınlarda avm ler mevcut.', 0, 'Kerime', 'Koyuncu'),
(105, 97, 'Giriş ücretini pahalı buldum. Ayrıca fotoğraf çekmek için ekstra para isteniyor. Sonuçta savaş gemisi görmesi çok güzel. Ama ailecek gitsen çok para.', 0, 'Erkan', 'Gören'),
(106, 97, 'Gidip görülmesi gereken yerler arasında, denizaltı ve savaş gemilerinin içini gezebiliyorsunuz. \"Sıcak yatak deyimi denizaltılardan geliyormuş, içerisi küçük olduğu için 2 yatak var askerler nöbet sonrası aynı yatakta yatıyormuş yani devamlı devirdaim oluyor yatak soğumuyor\"', 0, 'Emre', 'Öz'),
(107, 97, 'Herkesin kesinlikle gitmesi gerek gerek araçlar gerekse içerisindeki ürünler muhteşemdi. Bunun yanı sıra size sağlanan rehberler oldukça bilgili insanlar ve çok yardımcı oluyorlar.\r\n', 0, 'Mehmet', 'Baştuğ'),
(108, 95, 'WC siyle kafesiyle broşür ve katalog ile hem de 5-10 TL uygun giriş ücretiyle çok güzel agaclandirilmis bir ortam.', 0, 'Ender', 'Tan'),
(109, 95, 'Genel olarak beğendim . Eksiklikleri var , ilgili olduklarını gördüm . Yaptığım eleştiriye hemen cevap verdiler. Tebrik ediyorum sizi ama dediğim gibi eksiklikleri var , umarım yaptığımız eleştiriler olumlu algilanip gerekli tedbirler alınır. Ülkemizi güzelleştirmek bizim elimizde . O yüzden parti ayrımı yapmadan, ayrıştırma yapmadan beraber yaşamak gerekir bu guzel topraklar da.', 0, 'Ekrem', 'Badem'),
(110, 95, 'Yaz mevsiminde İzmir çok sıcak.\r\nSabah 9 ile 12 arası gezmek mantıklı olur diye düşünüyorum.\r\nÇocuklar için mutlaka şapka bulunmalı.\r\nKafede yiyecek ve içecek seçenekleri yeterli.\r\nPandemiden dolayı tropik merkez kapalı.\r\n', 0, 'Mustafa', 'Bakırcı'),
(111, 95, 'Günü birlik tek sefer gezilebilecek bir yer yani sürekli gidip gezme isteği olmuyor. Çok heyecan duymadım çocuklara daha çok hitap ediyor diyebilirim.', 0, 'Mücahit', 'Besli'),
(112, 93, 'Şehirden cok uzaklasamayanlar icin dogaya giden en kestirme yol bu teleferik olabilir.', 0, 'Derkal', 'Tan'),
(113, 93, 'Gayet başarılı tesisler. Kendin pişir kendin ye bölümü 50 tl ye mangal ve et seçebiliyorsuniz. Ayrıca gözleme, pizza ve hamburger secenekleri var. Tesisr aşağıdan yemek getirmek yasak. Ibb tarafından işletilmektedir.', 0, 'Ozan', 'Kaya'),
(114, 93, '17 tl ücretle (gidiş-geliş ücreti) , güzel vakit geçirilebilecek temiz havalı bir yer.', 0, 'Serhat', 'Kırlar'),
(115, 93, 'İzmir körfezini ve dağlarındaki manzarayı seyir için güzel noktalardan birisi.Ormanda bankta oturup manzara seyredip iç sesinizi dinleyin. Tesis içinde 10 kadar işletme var. Restoran kafeterya market var. İsterseniz mangal yakabilirsiniz, market ayarlıyor. Fiyatlar biraz pahalı.', 0, 'Mert', 'Kasap'),
(116, 92, 'Çok güzel bir tarihi mekan olma yolunda. Gecekonduları yıkmışlar ve İzmir in tamamını görebileceğiniz seyir noktaları var.\r\n', 0, 'Kaan', 'Baki'),
(117, 90, 'Şehrin en güzel yeri gün batımı bence Ibiza değil gelip Gündoğdu dan seyredeceksin. Tek kelimeyle muhteşem.', 0, 'Simge', 'İsmet'),
(118, 90, 'Etkinlik yapmak ve arkadaşlarınızla yürüyüşe çıkmak için harika bir yer. Bayağı büyük bir boş alan var.\r\n', 0, 'Batuhan', 'Balaban'),
(119, 90, 'Ev hissiyatı, hafif esen izmir imbatı.', 0, 'Kaan', 'Ersoy'),
(120, 90, 'Deniz havası soluyarak akşam güneşinin bakmasını seyretmek çok güzel.', 0, 'Ulviye', 'Soydan'),
(121, 90, 'Tatlı bir serinlik vardi ama insan oğlu görünümündeki yaratıklar yediklerinin ve içtikleri içkinin kalanlarını yerlere atmaları çok garip ve kaniksanacak bir durumdu..\r\n', 0, 'Helin', 'Basıl'),
(122, 88, 'Luna park en son 2019 yılında açılmış.Artik Lunapark yok Gaziemire taşınmış.Merkezin ortasında bir yer çürümeye bırakılmış resmen.Heykel Müzesine kesinlikle gidin.Muzede üç  bindan biri kapatılmış,kapanmadan görün çok güzel eserler var.Muze personeli cok ilgiliydi.Personel dışında da kimse yoktu.Kisi başı 12tl 18yas altından ücret alınmıyor.Muze kart geçerli.Pandemide avm gezmektense Fuarda bulunmak daha güzel ama hiç ilgi yok çoğu palmiyeler kesilmiş nereye gitti o kadar ağaç?NEDEN BU ILGISIZLIK.Belli ki fuar alanı hakkında planlar var.', 0, 'Ezel', 'Çiçek'),
(123, 88, 'Çocuk parkları pislik içinde sigara izmariti,çekirdek kabuklarından geçilmiyor bu bizim insanımızın eseri tabi ama neden temizlenmiyor kumlar elenmiyor çocuklarımız bunu haketmiyor. Her yeri ot bürümüş ağaçlar budanmamis bankta otururken yürürken gözünüze giriyor dallar. Tartan pistteki dutlar budanmamis hepsi meyve vermis yerlerde sinek böcek dolu. Yaptiklari bakım hunharca su harcayarak sürekli sulama yapmak.', 0, 'Pınar', 'Suyürek'),
(124, 88, 'Hem dolaşmak için hem oturup dinlenmek için hem de spor yapmak için çok faydalı ve kullanışlı bir yer. Ve burada sayısız muhteşem ağaçlar var. Temiz hava almak için gidilebilir. Pandemiden önce fuar alanında her zaman bir etkinlik olurdu.', 0, 'Onur', 'Can'),
(125, 89, 'İzmir in kalbinin attığı yer,bir taraftan Konak a diğer taraftan Alsancak a yürüyerek ulaşabilir,hemen önündeki Pasaport iskelesinden Karşıyaka ya geçebilirsiniz...', 0, 'Taner', 'Işık'),
(126, 89, 'Kalbim ege de kaldı İZMİR çok güzel bir şehir tarih i ayrı bir güzel kültürlü insanları ayrı bir güzel mükemmel harika.\r\n', 0, 'Sami', 'Pınar'),
(127, 89, 'Arkadaşlar İzmirin kıymetini bilin, başka şehirde yaşamadıysanız heryeri böyle sanıyorsanız yanılıyorsunuz. Aman Cumhuriyet düşmalarını buraya sokmayın. Talan ederler, evinizi arsanızı kaldırımını otoparkınızı önce kamulaştırıp sonra yandaşa satarlar, sokakta oturamaz hale getirirler. Ben sakaryada yaşayan biri olarak söylüyorum. Eskiden chp vardı, sakarya da güzel bir şehirdi, karadenizliler sakaryayı işgal edince akp geldi. Talandan başka bişey yok. Tekrar söylüyorum, kalenizi savunun...\r\n', 0, 'Serkan', 'Usta'),
(128, 86, 'Saat kulesinin önünde kuşlara yem vermek ve orda çekilen fotoğraflar mükemmel oluyor. Öğrenciliğimde ilk gittiğim yerlerden biriydi.', 0, 'Derya', 'Kaya'),
(129, 86, 'Malesef güzel İzmir e yazık oluyor  bu hafta gittim saat kulesinin etrafını kazmışlar çalışma var konak taki yollar kapalı tek yön yollar kazık köklü bir dönüşüm için çalışan yok buca aynı nikah sarayı felaket koltuklar kırık dökük pis İzmiri düşünen İzmiri seven İzmir de doğup büyümüş her mekanına hakim vizyon sahibi bir başkan lazım naçizane düşüncem budur.', 0, 'Alper', 'Yusuf'),
(130, 86, 'Etrafı bakımsız ve yavaş ilerliyor çevre düzenlemesi.Birde orayı görmek için arabayı park edecek hiçbir yer yok.\r\n', 0, 'İbrahim', 'Karababa'),
(131, 86, 'İzmir konakta bulunan saat kulesi oldukça güzel bir yapı yapılmış ve insanların adete toplanma noktası olarak belirlenmiş bir yer olarak hemen dikkat çekiyor neredeyse İzmir kalbi denilebilecek bir yer, ben kendim olarak oldukça beğendim Gidilmesi ve görülmesi gereken bit mekan.', 0, 'Selami', 'Güngören'),
(132, 3, 'Ailenizle piknik yapmak oldukça keyifli iğne atsan yere düşmüyor. Ailenizle gölgelik bir alanda piknik yapabilir , karavanınız varsa ücretsiz olarak konaklayabilirsiniz. Engellilere indirimli olan bir market var fakat yeterli değil bence daha büyük alkol satışı da olan bir market olabilirdi. Keşke Denizi yüzülebilecek bir plaj olsaydı. ', 0, 'Tuğçe', 'Engerek'),
(134, 3, 'Büyük ve ferah bir alan. Sandalyeni al git, ister göl kenarında ister daha içerilerde doğal ortamın keyfini çıkar. Özellikle pandemide çok fazla gittik. Çocukların rahat vakit geçirebileceği güzel büyük bir alan.\r\n', 1, 'Musa', 'Ezgi'),
(135, 1, 'Cumartesi günü sabah erkenden gitmenizi tavsiye ederim. Öğlen olduğunda otoparktaki kaldırımlar bile doluyor. Alan o kadar geniş ki kalabalık sizi rahatsız etmiyor. Denize yakın kısmı mangal alanı için ayırmışlar. Deniz havası ve piknik,üstelik otopark da dahil olmak üzere tamamen ücretsiz. Emeği geçen herkese teşekkürler.', 0, 'Cüneyt', 'Şahin'),
(136, 2, 'Çok karışık ve kasvetli buldum belli guruplar tekeline almış rahat rahat dolaşıp oturamadık inşallah pandemiden sonra bir hijyen ve mesafe düzen gelir.', 0, 'Halime', 'Aysu'),
(137, 2, 'Çay kahve bahçesi pandemiden dolayı kapalıydı mekanlar çok güzel oldukça esnaflar güler yüzlü fakat hiç müşterileri yok mekanlar bombostu orayı böyle görmekte varmis..Bundan sonra inşaallah pandemi biter de eski hareketli günlerine döner.', 0, 'Nagihan', 'Çelik'),
(138, 2, 'Temiz ,belediye gorevlisi daima orada ,esnaf saldirgan ,israrci degil. Oturup sohbet edilecek 2. Bir avlusu daha olsa diger isletmeye alternatif olup kalite de artabilirdi.\r\n', 0, 'Zafer', 'Balık'),
(140, 101, 'Biraz bakıma ihtiyacı var çok nostaljik oldu.', 1, 'eslem', 'Bağyurdu'),
(141, 101, 'İzmirin en hareketli iskelesi. Tuvaletler  temizlik istiyor. Hareket saatleri ile ilgili pano var.', 0, 'Ozak', 'Karabıyık'),
(142, 103, 'Üzülerek belirtmem gerekiyor ki son yıllarda popüler yağma ve inşa kültürü rektörlük aracılığıyla tüm kuruma sirayet etmiş olup yeşil alan, toprak ve geri dolgu yapılarak sermayeye peşkeş çekilmiştir. Gerek rektörlük gerek bilinçsiz birey yetiştirme de (ötekileştirerek) üstlerine kurum tanımayarak üniversitem/üniversitelerimizin içi boşsltılmaktadır!!!', 1, 'Fırat', 'Akar'),
(143, 103, 'Ulaşımı çok kolay metro ile ege üniversitesi durağıında inebilirsiniz. Bulunduğu konum ve kampüs doğası çok güzel bilindiği üzere Ülkemizin sayılı üniversitelerindendir.', 0, 'Barış', 'Kayar'),
(144, 103, 'Acil departmanından hizmet almaya calişan hasta ve hasta yakınının beddua okumadan çıkmadığı hastane.  Yüz karası işleyis personel deseniz gidin kime şikayet edin modunda.', 0, 'Sevdanur', 'Demir'),
(145, 96, 'Kuşların bulunduğu bu yer bir harika!', 0, 'Barış', 'Zorlu'),
(160, 3, 'Piknik için çok güzel', 1, 'Barış', 'Zorlu'),
(159, 1, 'Mükemmel bir yer. ', 0, 'Devrim', 'Zorlu');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Tablo için indeksler `konumlar`
--
ALTER TABLE `konumlar`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `resimler`
--
ALTER TABLE `resimler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yorumlar`
--
ALTER TABLE `yorumlar`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `konumlar`
--
ALTER TABLE `konumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- Tablo için AUTO_INCREMENT değeri `resimler`
--
ALTER TABLE `resimler`
  MODIFY `id` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;

--
-- Tablo için AUTO_INCREMENT değeri `yorumlar`
--
ALTER TABLE `yorumlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
