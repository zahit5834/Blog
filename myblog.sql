-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 17 Nis 2023, 01:26:08
-- Sunucu sürümü: 10.4.27-MariaDB
-- PHP Sürümü: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `myblog`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `icerik`
--

CREATE TABLE `icerik` (
  `id` smallint(6) NOT NULL,
  `baslik` varchar(250) NOT NULL,
  `aciklama` varchar(4500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `icerik`
--

INSERT INTO `icerik` (`id`, `baslik`, `aciklama`) VALUES
(29, 'GitHub Copilot Nedir ?', 'GitHub Copilot, GitHub’ın en yeni araçlarından bir tanesidir. “AIt çift programcısı” olarak markalanan Copilot, düzenleyicinizde kodu otomatik olarak oluşturmak için yapay zeka kullanılmaktadır. Visual Studio Code, JetBrains IDE paketi ve Neovim için bir uzantı olarak mevcuttur.Ancak GitHub Copilot, bir otomatik tamamlama çözümünden daha fazlasıdır. Yazmakta olduğunuz koddan alınan bağlam ipuçlarına dayanarak, Copilot satırları ve hatta tüm işlevleri önerir. Geliştiriciler için testler oluşturmanın, API’leri keşfetmenin ve sorunları sürekli olarak başka yerlerde aramadan çözmenin daha hızlı ve kolay bir yoludur.\n<br><br>\nGitHub Copilot eklentisiyle çalışmaya başladığınızda, araç otomatik olarak sizin kod yazma şeklinize uyum sağlar. Copilot gerçekten hızlıdır ve siz kod yazarken iş akışınızla sorunsuz bir şekilde entegre olur. Copilot eklentisinde Alışmaya başladığınızda, klavyenizdeki tek bir tıklamayla ihtiyacınız olan kodları otomatik olarak tamamlayacaktır.\n<br><br>\nPiyasadaki benzer çözümlerin aksine, GitHub Copilot size tam kontrol sağlar- ilgili uygulamanın adı da buradan gelmektedir. Bu uygulama içerisinde kodu kabul etme veya reddetme, önerileri manuel olarak düzenleme ve alternatif öneriler arasında geçiş yapma olanağına sahipsiniz. Araç, kodlama stilinize uyum sağladığından, gelecekte size sunduğu öneriler daha akıllı olmaya devam edecektir.'),
(30, 'GitHub CoPilot Nasıl Çalışır?', 'GitHub Copilot, OpenAI Codex tarafından desteklenmektedir. Otomatik olarak oluşturulan öneriler, işlev adları, kod yorumları, belge dizileri, dosya adları, imleç konumu ve daha fazlası gibi dosya içindeki bağlamdan gelir. Copilot, bu bilgilere dayanarak, geliştiricilerin klavyelerindeki “Tab” tuşuna basarak kabul edebilecekleri kod parçacıkları önerir. AI aracı, TypeScript, Python, JavaScript, Ruby ve düzinelerce başka yaygın dili anlar.\n<br><br>\nBunun nedeni, yapay zekâ önerilerinin GitHub’ın genel depolarındaki açık kaynak kodundan gelmesidir. Bu bilgileri analiz eder ve yazdıklarınıza göre mümkün olan en iyi çözümü bulmaya çalışır.\n<br><br>\nDiğer çözümlere kıyasla GitHub Copilot’un benzersiz bir özelliği, doğal dili anlama becerisidir. Buna hem programlama dilleri hem de insan dilleri dahildir. GitHub Copilot’un mükemmel kod yazmadığını belirtmekte fayda var. Araç, geliştiricinin amacını anlamaya çalışmak için elinden gelenin en iyisini yapar. Ancak bazı önerilerin her zaman işe yaramadığını, hatta mantıklı gelmediğini fark edeceksiniz.\n<br><br>\nGitHub Copilot, size önerdiği hiçbir kodu test etmez. Bu öneriler gerçekte derlenmeyebilir veya çalıştırılamayabilir. Bu nedenle, kullanılabilir olduğunu varsaymadan önce kodu dikkatlice incelemeniz ve test etmeniz gerekir.\n<br><br>\nGitHub Copilot, alışılmadık çerçeveler ve kitaplıklarla çalışan geliştiriciler için en önemli etkiye sahip gibi görünüyor. Açık kaynaklı belgelerde kendi başınıza arama yapmak yerine, Copilot bunu sizin yerinize saniyeler içinde bulabilir.\n<br><br>\nGenel olarak, GitHub Copilot muhtemelen piyasadaki en iyi otomatik tamamlama aracıdır. Geliştiricilere, temel önerilerin ötesinde sorunları çözmek için pek çok farklı yol sağlar. Bir kod parçacığı için aldığınız öneriler çok çeşitlidir ve muhtemelen yanıtları bulmak için Stack Overflow’u kullanmanız gerekmeyecektir.Copilot’un kullanılabileceği farklı örneklere daha yakından bakalım. Bu örnekler, Copilot aracının işlevselliğini ve çok yönlülüğünü daha iyi anlamanıza yardımcı olacaktır.'),
(31, 'Yorumları Koda Dönüştürür', 'GitHub Copilot’un en havalı özelliklerinden biri, yorumlarınızı alıp koda dönüştürme yeteneğidir. İhtiyacınız olan mantığı açıklayan bir yorum oluşturmanız yeterlidir; Copilot sizin için otomatik olarak öneriler üretecektir.\n<br><br>\nBu durumda, yorum basitçe “Bir kuruluş için GitHub depolarının tüm adlarını listeleyin” der. Copilot sizler için hemen bir öneri oluşturmaktadır. Bu kodu yazıyor olsaydınız, tek yapmanız gereken kabul et seçeneğine tıklamaktır. '),
(32, 'Tekrarlanan Kodu Otomatik Doldurur', 'GitHub Copilot, geliştiricilerin tekrarlayan kod yazma yöntemlerini hızlandırmaları için ideal bir yoldur. Büyük standart kod blokları yazıyorsanız, modelin birkaç örneğini girmeniz yeterlidir, Copilot gerisini otomatik bir şekilde halleder.'),
(33, 'Testleri Çalıştırır', 'Daha önce belirtildiği gibi, GitHub Copilot aslında önerdiği kodu test etmez. Ancak bununla birlikte, kod uygulamanızla eşleşen testleri önermek için kullanabilirsiniz. Bir test birimi paketini hızlı bir şekilde içe aktarmanın harika bir yoludur.  Yine de kodun mantıklı olduğunu doğrulamanız gerekecek, ancak bu kodu kendi başınıza tamamlamanın daha hızlı bir alternatifidir.'),
(34, 'Bilmediğiniz Bölgelerde Kolay Bir Şekilde Gezebilirsiniz', 'Bu özel kullanım durumu, muhtemelen Copilot’un en iyi işlevidir. Geliştiricilerin yabancı bir dil veya çerçevenin sularında gezinmesi için harika bir yoldur.  Örneğin, bir dağılım grafiği çizmek istediğinizi varsayalım. Bu kodu yazma şekliniz, kullandığınız programlama diline göre önemli ölçüde değişir.<br><br>\nPython’da yazma konusunda deneyimli ve rahat olsanız bile, bu otomatik tamamlama işlevi size yine de zaman kazandıracaktır.\n<br><br>\nAncak tartışmanın hatırına, diyelim ki JavaScript’te bir dağılım grafiği yazmanız gerekiyor, ancak bu programlama diline pek aşina değilsiniz. Bu durumda, GitHub Copilot sizi korur. \n<br><br>\nBunu Copilot olmadan yazmak için, örnekler için genel depolarda manuel olarak arama yapmak zorunda kalacaksınız. Ya da cevaplarınızı bulmak için Yığın Taşması gibi bir kaynak kullanabilirsiniz. Ancak bu alternatiflerin her ikisi de sıkıcı ve zaman alıcıdır.\n<br><br>\nDeneyimli geliştiriciler, yabancı dillerde gezinirken Copilot kullanmayı sever. Copilot’un önerileri mükemmel olmasa bile, yine de temel sözdizimini doğru bir şekilde elde edebilir. Ayrıca konu yaygın deyimler, kitaplık işlevleri ve daha fazlası olduğunda sizi doğru yöne yönlendirecektir. Böylece Copilot, programcılar için bir kendi kendine yardım öğretim aracı olarak bile kullanılabilir.');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `icerik`
--
ALTER TABLE `icerik`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `icerik`
--
ALTER TABLE `icerik`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
