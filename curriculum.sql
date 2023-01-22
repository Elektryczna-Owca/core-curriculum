-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 22, 2023 at 02:26 PM
-- Server version: 8.0.31-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `curriculum`
--

-- --------------------------------------------------------

--
-- Table structure for table `curriculum`
--

CREATE TABLE `curriculum` (
  `id` int NOT NULL,
  `grade0` tinyint(1) NOT NULL DEFAULT '0',
  `grade1` tinyint(1) NOT NULL DEFAULT '0',
  `grade2` tinyint(1) NOT NULL DEFAULT '0',
  `grade3` tinyint(1) NOT NULL DEFAULT '0',
  `grade4` tinyint(1) NOT NULL DEFAULT '0',
  `grade5` tinyint(1) NOT NULL DEFAULT '0',
  `grade6` tinyint(1) NOT NULL DEFAULT '0',
  `grade7` tinyint(1) NOT NULL DEFAULT '0',
  `grade8` tinyint(1) NOT NULL DEFAULT '0',
  `obligatory` tinyint(1) DEFAULT NULL,
  `text_level1` varchar(255) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `text_level2` text COLLATE utf8mb4_polish_ci,
  `text_level3` text COLLATE utf8mb4_polish_ci,
  `text_level4` text COLLATE utf8mb4_polish_ci,
  `symbol` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL,
  `subject` varchar(45) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `curriculum`
--

INSERT INTO `curriculum` (`id`, `grade0`, `grade1`, `grade2`, `grade3`, `grade4`, `grade5`, `grade6`, `grade7`, `grade8`, `obligatory`, `text_level1`, `text_level2`, `text_level3`, `text_level4`, `symbol`, `subject`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'I. Organizacja i chemizm życia. Uczeń:', '1) przedstawia hierarchiczną organizację budowy organizmów;', NULL, NULL, 'I.1.', 'biologia'),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'I. Organizacja i chemizm życia. Uczeń:', '2) wymienia najważniejsze pierwiastki budujące ciała organizmów;', NULL, NULL, 'I.2.', 'biologia'),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'I. Organizacja i chemizm życia. Uczeń:', '3) wymienia podstawowe grupy związków chemicznych występujących w organizmach (białka, cukry, tłuszcze, kwasy nukleinowe, woda, sole mineralne) i podaje ich funkcje;', NULL, NULL, 'I.3.', 'biologia'),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'I. Organizacja i chemizm życia. Uczeń:', '4) dokonuje obserwacji mikroskopowych komórki (podstawowej jednostki życia), rozpoznaje (pod mikroskopem, na schemacie, na zdjęciu lub na podstawie opisu) podstawowe elementy budowy komórki (błona komórkowa, cytoplazma, jądro komórkowe, chloroplast, mitochondrium, wakuola, ściana komórkowa) i przedstawia ich funkcje;', NULL, NULL, 'I.4.', 'biologia'),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'I. Organizacja i chemizm życia. Uczeń:', '5) porównuje budowę komórki bakterii, roślin i zwierząt, wskazując cechy umożliwiające ich rozróżnienie;', NULL, NULL, 'I.5.', 'biologia'),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'I. Organizacja i chemizm życia. Uczeń:', '6) przedstawia istotę fotosyntezy jako jednego ze sposobów odżywiania się organizmów (substraty, produkty i warunki przebiegu procesu) oraz planuje i przeprowadza doświadczenie wykazujące wpływ wybranych czynników na intensywność procesu fotosyntezy;', NULL, NULL, 'I.6.', 'biologia'),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'I. Organizacja i chemizm życia. Uczeń:', '7) przedstawia oddychanie tlenowe i fermentację jako sposoby wytwarzania energii potrzebnej do życia (substraty, produkty i warunki przebiegu procesów) oraz planuje i przeprowadza doświadczenie wykazujące, że podczas fermentacji drożdże wydzielają dwutlenek węgla;', NULL, NULL, 'I.7.', 'biologia'),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'I. Organizacja i chemizm życia. Uczeń:', '8) przedstawia czynności życiowe organizmów.', NULL, NULL, 'I.8.', 'biologia'),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '1. Klasyfikacja organizmów. Uczeń:', '1) uzasadnia potrzebę klasyfikowania organizmów i przedstawia zasady systemu klasyfikacji biologicznej;', NULL, 'II.1.1.', 'biologia'),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '1. Klasyfikacja organizmów. Uczeń:', '2) przedstawia charakterystyczne cechy organizmów pozwalające przyporządkować je do jednego z odpowiedniego królestwa;', NULL, 'II.1.2.', 'biologia'),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '1. Klasyfikacja organizmów. Uczeń:', '3) rozpoznaje organizmy z najbliższego otoczenia, posługując się prostym kluczem do ich oznaczania.', NULL, 'II.1.3.', 'biologia'),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '2. Wirusy – bezkomórkowe formy materii. Uczeń:', '1) uzasadnia, dlaczego wirusy nie są organizmami;', NULL, 'II.2.1.', 'biologia'),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '2. Wirusy – bezkomórkowe formy materii. Uczeń:', '2) przedstawia drogi rozprzestrzeniania się i zasady profilaktyki chorób wywoływanych przez wirusy (grypa, ospa, różyczka, świnka, odra, AIDS).', NULL, 'II.2.2.', 'biologia'),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '3. Bakterie – organizmy jednokomórkowe. Uczeń:', '1) podaje miejsca występowania bakterii;', NULL, 'II.3.1.', 'biologia'),
(15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '3. Bakterie – organizmy jednokomórkowe. Uczeń:', '2) wymienia podstawowe formy morfologiczne bakterii;', NULL, 'II.3.2.', 'biologia'),
(16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '3. Bakterie – organizmy jednokomórkowe. Uczeń:', '3) przedstawia czynności życiowe bakterii;', NULL, 'II.3.3.', 'biologia'),
(17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '3. Bakterie – organizmy jednokomórkowe. Uczeń:', '4) przedstawia drogi rozprzestrzeniania się i zasady profilaktyki chorób wywoływanych przez bakterie (gruźlica, borelioza, tężec, salmonelloza);', NULL, 'II.3.4.', 'biologia'),
(18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '3. Bakterie – organizmy jednokomórkowe. Uczeń:', '5) wyjaśnia znaczenie bakterii w przyrodzie i dla człowieka.', NULL, 'II.3.5.', 'biologia'),
(19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '4. Protisty – organizmy o różnorodnej budowie komórkowej. Uczeń:', '1) wykazuje różnorodność budowy protistów (jednokomórkowe, wielokomórkowe) na wybranych przykładach;', NULL, 'II.4.1.', 'biologia'),
(20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '4. Protisty – organizmy o różnorodnej budowie komórkowej. Uczeń:', '2) przedstawia wybrane czynności życiowe protistów (oddychanie, odżywianie, rozmnażanie);', NULL, 'II.4.2.', 'biologia'),
(21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '4. Protisty – organizmy o różnorodnej budowie komórkowej. Uczeń:', '3) zakłada hodowlę protistów oraz dokonuje obserwacji mikroskopowej protistów;', NULL, 'II.4.3.', 'biologia'),
(22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '4. Protisty – organizmy o różnorodnej budowie komórkowej. Uczeń:', '4) przedstawia drogi zakażenia i zasady profilaktyki chorób wywoływanych przez protisty (toksoplazmoza, malaria).', NULL, 'II.4.4.', 'biologia'),
(23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '1) tkanki roślinne – uczeń dokonuje obserwacji i rozpoznaje (pod mikroskopem, na schemacie, na zdjęciu lub na podstawie opisu) tkanki roślinne oraz wskazuje ich cechy adaptacyjne do pełnienia określonych funkcji (tkanka twórcza, okrywająca, miękiszowa, wzmacniająca, przewodząca);', NULL, 'II.5.1.', 'biologia'),
(24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '2) mchy – uczeń:', 'a) dokonuje obserwacji przedstawicieli mchów (zdjęcia, ryciny, okazy żywe) i przedstawia cechy ich budowy zewnętrznej,', 'II.5.2.a.', 'biologia'),
(25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '2) mchy – uczeń:', 'b) na podstawie obecności charakterystycznych cech identyfikuje nieznany organizm jako przedstawiciela mchów,', 'II.5.2.b.', 'biologia'),
(26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '2) mchy – uczeń:', 'c) wyjaśnia znaczenie mchów w przyrodzie; planuje i przeprowadza doświadczenie wykazujące zdolność mchów do chłonięcia wody;', 'II.5.2.c.', 'biologia'),
(27, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '3) paprociowe, widłakowe, skrzypowe – uczeń:', 'a) dokonuje obserwacji przedstawicieli paprociowych, widłakowych i skrzypowych (zdjęcia, ryciny, okazy żywe) oraz przedstawia cechy ich budowy zewnętrznej,', 'II.5.3.a.', 'biologia'),
(28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '3) paprociowe, widłakowe, skrzypowe – uczeń:', 'b) na podstawie obecności charakterystycznych cech identyfikuje nieznany organizm jako przedstawiciela paprociowych, widłakowych lub skrzypowych,', 'II.5.3.b.', 'biologia'),
(29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '3) paprociowe, widłakowe, skrzypowe – uczeń:', 'c) wyjaśnia znaczenie paprociowych, widłakowych i skrzypowych w przyrodzie;', 'II.5.3.c.', 'biologia'),
(30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '4) rośliny nagonasienne – uczeń:', 'a) przedstawia cechy budowy zewnętrznej rośliny nagonasiennej na przykładzie sosny,', 'II.5.4.a.', 'biologia'),
(31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '4) rośliny nagonasienne – uczeń:', 'b) rozpoznaje przedstawicieli rodzimych drzew nagonasiennych,', 'II.5.4.b.', 'biologia'),
(32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '4) rośliny nagonasienne – uczeń:', 'c) wyjaśnia znaczenie roślin nagonasiennych w przyrodzie i dla człowieka;', 'II.5.4.c.', 'biologia'),
(33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '5) rośliny okrytonasienne – uczeń:', 'a) rozróżnia formy morfologiczne roślin okrytonasiennych (rośliny zielne, krzewinki, krzewy, drzewa),', 'II.5.5.a.', 'biologia'),
(34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '5) rośliny okrytonasienne – uczeń:', 'b) dokonuje obserwacji rośliny okrytonasiennej (zdjęcia, ryciny, okazy żywe); rozpoznaje jej organy i określa ich funkcje (korzeń, łodyga, liść, kwiat),', 'II.5.5.b.', 'biologia'),
(35, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '5) rośliny okrytonasienne – uczeń:', 'c) opisuje modyfikacje korzeni, łodyg i liści jako adaptacje roślin okrytonasiennych do życia w określonych środowiskach,', 'II.5.5.c.', 'biologia'),
(36, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '5) rośliny okrytonasienne – uczeń:', 'd) przedstawia sposoby rozmnażania wegetatywnego roślin oraz dokonuje obserwacji wybranych sposobów rozmnażania wegetatywnego,', 'II.5.5.d.', 'biologia'),
(37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '5) rośliny okrytonasienne – uczeń:', 'e) rozróżnia elementy budowy kwiatu i określa ich funkcje w rozmnażaniu płciowym,', 'II.5.5.e.', 'biologia'),
(38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '5) rośliny okrytonasienne – uczeń:', 'f) przedstawia budowę nasiona rośliny (łupina nasienna, bielmo, zarodek),', 'II.5.5.f.', 'biologia'),
(39, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '5) rośliny okrytonasienne – uczeń:', 'g) planuje i przeprowadza doświadczenie wykazujące wpływ wybranego czynnika środowiska (temperatura, dostęp tlenu, światła lub wody) na proces kiełkowania nasion,', 'II.5.5.g.', 'biologia'),
(40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '5) rośliny okrytonasienne – uczeń:', 'h) przedstawia sposoby rozprzestrzeniania się nasion, wskazując odpowiednie adaptacje w budowie owoców do tego procesu,i) rozpoznaje przedstawicieli rodzimych drzew liściastych,j) przedstawia znaczenie roślin okrytonasiennych w przyrodzie i dla  człowieka.', 'II.5.5.h.', 'biologia'),
(41, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '5. Różnorodność i jedność roślin:', '6) różnorodność roślin; uczeń identyfikuje nieznany organizm jako przedstawiciela jednej z grup wymienionych w pkt 2–5 na podstawie jego cech morfologicznych.', 'h) przedstawia sposoby rozprzestrzeniania się nasion, wskazując odpowiednie adaptacje w budowie owoców do tego procesu,i) rozpoznaje przedstawicieli rodzimych drzew liściastych,j) przedstawia znaczenie roślin okrytonasiennych w przyrodzie i dla  człowieka.', 'II.5.6.h.', 'biologia'),
(42, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '6. Grzyby – organizmy cudzożywne. Uczeń:', '1) przedstawia środowiska życia grzybów (w tym grzybów porostowych);', 'h) przedstawia sposoby rozprzestrzeniania się nasion, wskazując odpowiednie adaptacje w budowie owoców do tego procesu,i) rozpoznaje przedstawicieli rodzimych drzew liściastych,j) przedstawia znaczenie roślin okrytonasiennych w przyrodzie i dla  człowieka.', 'II.6.1.h.', 'biologia'),
(43, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '6. Grzyby – organizmy cudzożywne. Uczeń:', '2) wymienia cechy umożliwiające zaklasyfikowanie organizmu do grzybów;', 'h) przedstawia sposoby rozprzestrzeniania się nasion, wskazując odpowiednie adaptacje w budowie owoców do tego procesu,i) rozpoznaje przedstawicieli rodzimych drzew liściastych,j) przedstawia znaczenie roślin okrytonasiennych w przyrodzie i dla  człowieka.', 'II.6.2.h.', 'biologia'),
(44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '6. Grzyby – organizmy cudzożywne. Uczeń:', '3) wykazuje różnorodność budowy grzybów (jednokomórkowe, wielokomórkowe);', 'h) przedstawia sposoby rozprzestrzeniania się nasion, wskazując odpowiednie adaptacje w budowie owoców do tego procesu,i) rozpoznaje przedstawicieli rodzimych drzew liściastych,j) przedstawia znaczenie roślin okrytonasiennych w przyrodzie i dla  człowieka.', 'II.6.3.h.', 'biologia'),
(45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '6. Grzyby – organizmy cudzożywne. Uczeń:', '4) przedstawia wybrane czynności życiowe grzybów (odżywianie, oddychanie);', 'h) przedstawia sposoby rozprzestrzeniania się nasion, wskazując odpowiednie adaptacje w budowie owoców do tego procesu,i) rozpoznaje przedstawicieli rodzimych drzew liściastych,j) przedstawia znaczenie roślin okrytonasiennych w przyrodzie i dla  człowieka.', 'II.6.4.h.', 'biologia'),
(46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '6. Grzyby – organizmy cudzożywne. Uczeń:', '5) przedstawia znaczenie grzybów w przyrodzie i dla człowieka.', 'h) przedstawia sposoby rozprzestrzeniania się nasion, wskazując odpowiednie adaptacje w budowie owoców do tego procesu,i) rozpoznaje przedstawicieli rodzimych drzew liściastych,j) przedstawia znaczenie roślin okrytonasiennych w przyrodzie i dla  człowieka.', 'II.6.5.h.', 'biologia'),
(47, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '1) tkanki zwierzęce – uczeń dokonuje obserwacji i rozpoznaje (pod mikroskopem, na schemacie, na zdjęciu lub na podstawie opisu) tkanki zwierzęce (tkanka nabłonkowa, mięśniowa, łączna, nerwowa) i wskazuje ich cechy adaptacyjne do pełnienia określonych funkcji;', 'h) przedstawia sposoby rozprzestrzeniania się nasion, wskazując odpowiednie adaptacje w budowie owoców do tego procesu,i) rozpoznaje przedstawicieli rodzimych drzew liściastych,j) przedstawia znaczenie roślin okrytonasiennych w przyrodzie i dla  człowieka.', 'II.7.1.h.', 'biologia'),
(48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '2) parzydełkowce – uczeń:', 'a) przedstawia środowisko życia, cechy morfologiczne i tryb życia parzydełkowców,', 'II.7.2.a.', 'biologia'),
(49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '2) parzydełkowce – uczeń:', 'b) obserwuje przedstawicieli parzydełkowców (zdjęcia, filmy, schematy itd.) i przedstawia cechy wspólne tej grupy zwierząt,', 'II.7.2.b.', 'biologia'),
(50, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '2) parzydełkowce – uczeń:', 'c) wyjaśnia znaczenie parzydełkowców w przyrodzie;', 'II.7.2.c.', 'biologia'),
(51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '3) płazińce – uczeń:', 'a) przedstawia środowiska i tryb życia płazińców,', 'II.7.3.a.', 'biologia'),
(52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '3) płazińce – uczeń:', 'b) obserwuje przedstawicieli płazińców (zdjęcia, filmy, schematy itd.) i przedstawia cechy wspólne tej grupy zwierząt,', 'II.7.3.b.', 'biologia'),
(53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '3) płazińce – uczeń:', 'c) wykazuje związek budowy morfologicznej tasiemców z pasożytniczym trybem życia,', 'II.7.3.c.', 'biologia'),
(54, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '3) płazińce – uczeń:', 'd) przedstawia drogi inwazji płazińców pasożytniczych i omawia sposoby profilaktyki chorób wywoływanych przez wybrane pasożyty (tasiemiec uzbrojony i tasiemiec nieuzbrojony),', 'II.7.3.d.', 'biologia'),
(55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '3) płazińce – uczeń:', 'e) wyjaśnia znaczenie płazińców w przyrodzie i dla człowieka;', 'II.7.3.e.', 'biologia'),
(56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '4) nicienie – uczeń:', 'a) przedstawia środowisko i tryb życia nicieni,', 'II.7.4.a.', 'biologia'),
(57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '4) nicienie – uczeń:', 'b) dokonuje obserwacji przedstawicieli nicieni (zdjęcia, filmy, schematy itd.) i przedstawia cechy wspólne tej grupy zwierząt,', 'II.7.4.b.', 'biologia'),
(58, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '4) nicienie – uczeń:', 'c) przedstawia drogi inwazji nicieni pasożytniczych (włosień, glista i owsik) i omawia sposoby profilaktyki chorób człowieka wywoływanych przez te pasożyty,', 'II.7.4.c.', 'biologia'),
(59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '4) nicienie – uczeń:', 'd) przedstawia znaczenie nicieni w przyrodzie i dla człowieka;', 'II.7.4.d.', 'biologia'),
(60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '5) pierścienice – uczeń:', 'a) przedstawia środowisko życia, cechy morfologiczne oraz przystosowania pierścienic do trybu życia,', 'II.7.5.a.', 'biologia'),
(61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '5) pierścienice – uczeń:', 'b) dokonuje obserwacji poznanych przedstawicieli pierścienic (zdjęcia, filmy, schematy itd.) i przedstawia cechy wspólne tej grupy zwierząt,', 'II.7.5.b.', 'biologia'),
(62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '5) pierścienice – uczeń:', 'c) wyjaśnia znaczenie pierścienic w przyrodzie i dla człowieka;', 'II.7.5.c.', 'biologia'),
(63, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '6) stawonogi – uczeń:', 'a) przedstawia środowisko życia, cechy morfologiczne oraz tryb życia skorupiaków, owadów i pajęczaków oraz wskazuje cechy adaptacyjne umożliwiające im opanowanie różnych środowisk,', 'II.7.6.a.', 'biologia'),
(64, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '6) stawonogi – uczeń:', 'b) dokonuje obserwacji przedstawicieli stawonogów (zdjęcia, filmy, schematy itd.) i przedstawia cechy wspólne tej grupy zwierząt,', 'II.7.6.b.', 'biologia'),
(65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '6) stawonogi – uczeń:', 'c) wyjaśnia znaczenie stawonogów (w tym form pasożytniczych i szkodników) w przyrodzie i dla człowieka;', 'II.7.6.c.', 'biologia'),
(66, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '7) mięczaki – uczeń:', 'a) przedstawia środowisko życia, cechy morfologiczne oraz tryb życia ślimaków, małży i głowonogów,', 'II.7.7.a.', 'biologia'),
(67, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '7) mięczaki – uczeń:', 'b) dokonuje obserwacji przedstawicieli mięczaków (zdjęcia, filmy, schematy itd.) i przedstawia cechy wspólne tej grupy zwierząt,', 'II.7.7.b.', 'biologia'),
(68, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '7) mięczaki – uczeń:', 'c) wyjaśnia znaczenie mięczaków w przyrodzie i dla człowieka;', 'II.7.7.c.', 'biologia'),
(69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '8) różnorodność zwierząt bezkręgowych – uczeń identyfikuje nieznany organizm jako przedstawiciela jednej z grup wymienionych w pkt 2–7 na podstawie jego cech morfologicznych;', 'c) wyjaśnia znaczenie mięczaków w przyrodzie i dla człowieka;', 'II.7.8.c.', 'biologia'),
(70, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '9) ryby – uczeń:', 'a) dokonuje obserwacji przedstawicieli ryb (zdjęcia, filmy, schematy, hodowle akwariowe itd.) i przedstawia ich cechy wspólne oraz opisuje przystosowania ryb do życia w wodzie,', 'II.7.9.a.', 'biologia'),
(71, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '9) ryby – uczeń:', 'b) określa ryby jako zwierzęta zmiennocieplne,', 'II.7.9.b.', 'biologia'),
(72, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '9) ryby – uczeń:', 'c) przedstawia sposób rozmnażania i rozwój ryb,', 'II.7.9.c.', 'biologia'),
(73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '9) ryby – uczeń:', 'd) wyjaśnia znaczenie ryb w przyrodzie i dla człowieka;', 'II.7.9.d.', 'biologia'),
(74, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '10) płazy – uczeń:', 'a) dokonuje obserwacji przedstawicieli płazów (zdjęcia, filmy, schematy, okazy naturalne w terenie itd.) i przedstawia ich cechy wspólne oraz opisuje przystosowania płazów do życia w wodzie i na lądzie,', 'II.7.10.a.', 'biologia'),
(75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '10) płazy – uczeń:', 'b) określa płazy jako zwierzęta zmiennocieplne,', 'II.7.10.b.', 'biologia'),
(76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '10) płazy – uczeń:', 'c) przedstawia sposób rozmnażania i rozwój płazów,', 'II.7.10.c.', 'biologia'),
(77, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '10) płazy – uczeń:', 'd) wyjaśnia znaczenie płazów w przyrodzie i dla człowieka;', 'II.7.10.d.', 'biologia'),
(78, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '11) gady – uczeń:', 'a) dokonuje obserwacji przedstawicieli gadów (zdjęcia, filmy, schematy, okazy naturalne w terenie itd.) i przedstawia ich cechy wspólne oraz opisuje przystosowania gadów do życia na lądzie,', 'II.7.11.a.', 'biologia'),
(79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '11) gady – uczeń:', 'b) określa gady jako zwierzęta zmiennocieplne,', 'II.7.11.b.', 'biologia'),
(80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '11) gady – uczeń:', 'c) przedstawia sposób rozmnażania i rozwój gadów,', 'II.7.11.c.', 'biologia'),
(81, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '11) gady – uczeń:', 'd) wyjaśnia znaczenie gadów w przyrodzie i dla człowieka;', 'II.7.11.d.', 'biologia'),
(82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '12) ptaki – uczeń:', 'a) przedstawia różnorodność środowisk życia i cech morfologicznych ptaków,', 'II.7.12.a.', 'biologia'),
(83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '12) ptaki – uczeń:', 'b) dokonuje obserwacji przedstawicieli ptaków (zdjęcia, filmy, schematy, okazy naturalne w terenie itd.) i przedstawia ich cechy wspólne oraz opisuje przystosowania ptaków do lotu,', 'II.7.12.b.', 'biologia'),
(84, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '12) ptaki – uczeń:', 'c) określa ptaki jako zwierzęta stałocieplne,', 'II.7.12.c.', 'biologia'),
(85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '12) ptaki – uczeń:', 'd) przedstawia sposób rozmnażania i rozwój ptaków,', 'II.7.12.d.', 'biologia'),
(86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '12) ptaki – uczeń:', 'e) wyjaśnia znaczenie ptaków w przyrodzie i dla człowieka;', 'II.7.12.e.', 'biologia'),
(87, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '13) ssaki – uczeń:', 'a) przedstawia różnorodność środowisk życia i cech morfologicznych  ssaków,', 'II.7.13.a.', 'biologia'),
(88, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '13) ssaki – uczeń:', 'b) dokonuje obserwacji przedstawicieli ssaków (zdjęcia, filmy, schematy, okazy naturalne w terenie, itd.) i przedstawia ich cechy wspólne oraz opisuje przystosowania ssaków do życia w różnych środowiskach,', 'II.7.13.b.', 'biologia'),
(89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '13) ssaki – uczeń:', 'c) określa ssaki jako zwierzęta stałocieplne,', 'II.7.13.c.', 'biologia'),
(90, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '13) ssaki – uczeń:', 'd) przedstawia sposób rozmnażania i rozwój ssaków,', 'II.7.13.d.', 'biologia'),
(91, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '13) ssaki – uczeń:', 'e) wyjaśnia znaczenie ssaków w przyrodzie i dla człowieka;', 'II.7.13.e.', 'biologia'),
(92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '14) różnorodność zwierząt kręgowych – uczeń:', 'a) identyfikuje nieznany organizm jako przedstawiciela jednej z gromad kręgowców wymienionych w pkt 9–13 na podstawie jego cech morfologicznych;', 'II.7.14.a.', 'biologia'),
(93, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'II. Różnorodność życia.', '7. Różnorodność i jedność świata zwierząt:', '14) różnorodność zwierząt kręgowych – uczeń:', 'b) porównuje grupy kręgowców pod względem cech morfologicznych, rozmnażania i rozwoju oraz wykazuje związek tych cech z opanowaniem środowisk ich życia;', 'II.7.14.b.', 'biologia'),
(94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '1. Hierarchiczna budowa organizmu człowieka. Uczeń przedstawia hierarchizację budowy organizmu człowieka (komórki, tkanki, narządy, układy narządów, organizm).', NULL, NULL, 'III.1.', 'biologia'),
(95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '2. Skóra. Uczeń:', '1) przedstawia funkcje skóry;', NULL, 'III.2.1.', 'biologia'),
(96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '2. Skóra. Uczeń:', '2) rozpoznaje elementy budowy skóry (na modelu, rysunku, według opisu itd.) oraz określa związek budowy tych elementów z funkcjami pełnionymi przez skórę;', NULL, 'III.2.2.', 'biologia'),
(97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '2. Skóra. Uczeń:', '3) uzasadnia konieczność konsultacji lekarskiej w przypadku rozpoznania niepokojących zmian na skórze;', NULL, 'III.2.3.', 'biologia'),
(98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '2. Skóra. Uczeń:', '4) podaje przykłady chorób skóry (grzybice skóry, czerniak) oraz zasady ich profilaktyki;', NULL, 'III.2.4.', 'biologia'),
(99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '2. Skóra. Uczeń:', '5) określa związek nadmiernej ekspozycji na promieniowanie UV ze zwiększonym ryzykiem występowania i rozwoju choroby nowotworowej który.', NULL, 'III.2.5.', 'biologia'),
(100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '3. Układ ruchu. Uczeń:', '1) rozpoznaje (na schemacie, rysunku, modelu, według opisu itd.) elementy szkieletu osiowego, obręczy i kończyn;', NULL, 'III.3.1.', 'biologia'),
(101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '3. Układ ruchu. Uczeń:', '2) przedstawia funkcje kości; określa cechy budowy fizycznej i chemicznej kości oraz planuje i przeprowadza doświadczenie wykazujące rolę składników chemicznych kości;', NULL, 'III.3.2.', 'biologia'),
(102, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '3. Układ ruchu. Uczeń:', '3) przedstawia rolę i współdziałanie mięśni, ścięgien, kości i stawów w wykonywaniu ruchów;', NULL, 'III.3.3.', 'biologia'),
(103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '3. Układ ruchu. Uczeń:', '4) uzasadnia konieczność aktywności fizycznej dla prawidłowej budowy i funkcjonowania układu ruchu;', NULL, 'III.3.4.', 'biologia'),
(104, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '3. Układ ruchu. Uczeń:', '5) podaje przykłady schorzeń układu ruchu (skrzywienia kręgosłupa, płaskostopie, krzywica, osteoporoza) oraz zasady ich profilaktyki.', NULL, 'III.3.5.', 'biologia'),
(105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '4. Układ pokarmowy i odżywianie się. Uczeń:', '1) rozpoznaje (na schemacie, rysunku, modelu, według opisu itd.) elementy układu pokarmowego; przedstawia ich funkcje oraz określa związek budowy tych elementów z pełnioną funkcją;', NULL, 'III.4.1.', 'biologia'),
(106, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '4. Układ pokarmowy i odżywianie się. Uczeń:', '2) rozpoznaje (na schemacie, rysunku, modelu, według opisu itd.) rodzaje zębów oraz określa ich znaczenie w mechanicznej obróbce pokarmu; przedstawia przyczyny próchnicy i zasady jej profilaktyki;', NULL, 'III.4.2.', 'biologia'),
(107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '4. Układ pokarmowy i odżywianie się. Uczeń:', '3) przedstawia źródła i wyjaśnia znaczenie składników pokarmowych (białka, cukry, tłuszcze, witaminy, sole mineralne i woda) dla prawidłowego funkcjonowania organizmu oraz planuje i przeprowadza doświadczenie wykrywające obecność wybranych składników pokarmowych w produktach spożywczych;', NULL, 'III.4.3.', 'biologia'),
(108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '4. Układ pokarmowy i odżywianie się. Uczeń:', '4) przedstawia miejsca trawienia białek, tłuszczów i cukrów; określa produkty tych procesów oraz podaje miejsce ich wchłaniania; planuje i przeprowadza doświadczenie badające wpływ substancji zawartych w ślinie na trawienie skrobi;', NULL, 'III.4.4.', 'biologia'),
(109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '4. Układ pokarmowy i odżywianie się. Uczeń:', '5) analizuje skutki niedoboru niektórych witamin (A, D, K, C, B6, B12) i składników mineralnych (Mg, Fe, Ca) w organizmie oraz skutki niewłaściwej suplementacji witamin i składników mineralnych;', NULL, 'III.4.5.', 'biologia'),
(110, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '4. Układ pokarmowy i odżywianie się. Uczeń:', '6) wyjaśnia rolę błonnika w funkcjonowaniu układu pokarmowego oraz uzasadnia konieczność systematycznego spożywania owoców i warzyw;', NULL, 'III.4.6.', 'biologia'),
(111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '4. Układ pokarmowy i odżywianie się. Uczeń:', '7) uzasadnia konieczność stosowania diety zróżnicowanej i dostosowanej do potrzeb organizmu (wiek, płeć, stan zdrowia, aktywność fizyczna itp.), oblicza indeks masy ciała oraz przedstawia i analizuje konsekwencje zdrowotne niewłaściwego odżywiania (otyłość, nadwaga, anoreksja, bulimia, cukrzyca);', NULL, 'III.4.7.', 'biologia'),
(112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '4. Układ pokarmowy i odżywianie się. Uczeń:', '8) podaje przykłady chorób układu pokarmowego (WZW A, WZW B, WZW C, choroba wrzodowa żołądka i dwunastnicy, zatrucia pokarmowe, rak jelita grubego) oraz zasady ich profilaktyki.', NULL, 'III.4.8.', 'biologia'),
(113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '5. Układ krążenia. Uczeń:', '1) rozpoznaje elementy budowy układu krążenia (na schemacie, rysunku, według opisu itd.) i przedstawia ich funkcje;', NULL, 'III.5.1.', 'biologia'),
(114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '5. Układ krążenia. Uczeń:', '2) analizuje krążenie krwi w obiegu małym i dużym;', NULL, 'III.5.2.', 'biologia'),
(115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '5. Układ krążenia. Uczeń:', '3) przedstawia rolę głównych składników krwi (krwinki czerwone i białe, płytki krwi, osocze);', NULL, 'III.5.3.', 'biologia'),
(116, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '5. Układ krążenia. Uczeń:', '4) wymienia grupy krwi układu AB0 i Rh oraz przedstawia społeczne znaczenie krwiodawstwa;', NULL, 'III.5.4.', 'biologia'),
(117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '5. Układ krążenia. Uczeń:', '5) planuje i przeprowadza obserwację wpływu wysiłku fizycznego na zmiany tętna i ciśnienia tętniczego krwi;', NULL, 'III.5.5.', 'biologia'),
(118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '5. Układ krążenia. Uczeń:', '6) analizuje wpływ aktywności fizycznej i prawidłowej diety na funkcjonowanie układu krążenia;', NULL, 'III.5.6.', 'biologia'),
(119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '5. Układ krążenia. Uczeń:', '7) podaje przykłady chorób krwi (anemia, białaczki), układu krążenia (miażdżyca, nadciśnienie tętnicze, zawał serca) oraz zasady ich profilaktyki;', NULL, 'III.5.7.', 'biologia'),
(120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '5. Układ krążenia. Uczeń:', '8) uzasadnia konieczność okresowego wykonywania badań kontrolnych krwi, pomiaru tętna i ciśnienia tętniczego.', NULL, 'III.5.8.', 'biologia'),
(121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '6. Układ odpornościowy. Uczeń:', '1) wskazuje lokalizację (na schemacie, rysunku, według opisu itd.) wybranych narządów układu odpornościowego: śledziony, grasicy i węzłów chłonnych oraz określa ich funkcje;', NULL, 'III.6.1.', 'biologia'),
(122, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '6. Układ odpornościowy. Uczeń:', '2) rozróżnia odporność wrodzoną i nabytą oraz opisuje sposoby nabywania odporności (czynna, bierna, naturalna, sztuczna);', NULL, 'III.6.2.', 'biologia'),
(123, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '6. Układ odpornościowy. Uczeń:', '3) porównuje istotę działania szczepionek i surowicy; podaje wskazania do ich zastosowania oraz uzasadnia konieczność stosowania obowiązkowych szczepień;', NULL, 'III.6.3.', 'biologia'),
(124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '6. Układ odpornościowy. Uczeń:', '4) określa, w jakiej sytuacji dochodzi do konfliktu serologicznego i przewiduje jego skutki;', NULL, 'III.6.4.', 'biologia'),
(125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '6. Układ odpornościowy. Uczeń:', '5) przedstawia znaczenie przeszczepów oraz zgody na transplantację na- rządów;', NULL, 'III.6.5.', 'biologia'),
(126, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '6. Układ odpornościowy. Uczeń:', '6) określa alergię jako nadwrażliwość układu odpornościowego na określony czynnik;', NULL, 'III.6.6.', 'biologia'),
(127, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '6. Układ odpornościowy. Uczeń:', '7) określa AIDS jako zaburzenie mechanizmów odporności.', NULL, 'III.6.7.', 'biologia'),
(128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '7. Układ oddechowy. Uczeń:', '1) rozpoznaje elementy budowy układu oddechowego (na schemacie, modelu, rysunku, według opisu itd.) i przedstawia ich funkcje oraz określa związek budowy tych elementów z pełnioną funkcją;', NULL, 'III.7.1.', 'biologia'),
(129, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '7. Układ oddechowy. Uczeń:', '2) przedstawia mechanizm wentylacji płuc (wdech i wydech);', NULL, 'III.7.2.', 'biologia'),
(130, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '7. Układ oddechowy. Uczeń:', '3) planuje i przeprowadza obserwację wpływu wysiłku fizycznego na zmiany częstości oddechu;', NULL, 'III.7.3.', 'biologia'),
(131, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '7. Układ oddechowy. Uczeń:', '4) analizuje przebieg wymiany gazowej w tkankach i w płucach; planuje i przeprowadza doświadczenie wykrywające obecność dwutlenku węgla oraz pary wodnej w powietrzu wydychanym;', NULL, 'III.7.4.', 'biologia'),
(132, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '7. Układ oddechowy. Uczeń:', '5) analizuje wpływ palenia tytoniu (bierne i czynne), zanieczyszczeń pyłowych powietrza na stan i funkcjonowanie układu oddechowego;', NULL, 'III.7.5.', 'biologia'),
(133, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '7. Układ oddechowy. Uczeń:', '6) podaje przykłady chorób układu oddechowego (angina, gruźlica, rak płuca) oraz zasady ich profilaktyki', NULL, 'III.7.6.', 'biologia'),
(134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '8. Układ moczowy i wydalanie. Uczeń:', '1) przedstawia istotę procesu wydalania i podaje przykłady substancji, które są wydalane z organizmu człowieka (mocznik, dwutlenek węgla) oraz wymienia narządy biorące udział w ich wydalaniu;', NULL, 'III.8.1.', 'biologia'),
(135, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '8. Układ moczowy i wydalanie. Uczeń:', '2) rozpoznaje elementy układu moczowego (na modelu, rysunku, według opisu itd.) oraz przedstawia ich funkcje;', NULL, 'III.8.2.', 'biologia'),
(136, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '8. Układ moczowy i wydalanie. Uczeń:', '3) podaje przykłady chorób układu moczowego (zakażenia dróg moczowych, kamica nerkowa) oraz zasady ich profilaktyki;', NULL, 'III.8.3.', 'biologia'),
(137, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '8. Układ moczowy i wydalanie. Uczeń:', '4) uzasadnia konieczność okresowego wykonywania badań kontrolnych  moczu.', NULL, 'III.8.4.', 'biologia'),
(138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '9. Układ nerwowy. Uczeń:', '1) rozpoznaje elementy ośrodkowego i obwodowego układu nerwowego (na modelu, rysunku, według opisu itd.) oraz określa ich funkcje;', NULL, 'III.9.1.', 'biologia'),
(139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '9. Układ nerwowy. Uczeń:', '2) porównuje rolę współczulnego i przywspółczulnego układu nerwowego;', NULL, 'III.9.2.', 'biologia'),
(140, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '9. Układ nerwowy. Uczeń:', '3) opisuje łuk odruchowy i wymienia rodzaje odruchów; dokonuje obserwacji odruchu kolanowego;', NULL, 'III.9.3.', 'biologia'),
(141, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '9. Układ nerwowy. Uczeń:', '4) przedstawia sposoby radzenia sobie ze stresem;', NULL, 'III.9.4.', 'biologia'),
(142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '9. Układ nerwowy. Uczeń:', '5) uzasadnia znaczenie snu w prawidłowym funkcjonowaniu układu nerwowego;', NULL, 'III.9.5.', 'biologia'),
(143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '9. Układ nerwowy. Uczeń:', '6) przedstawia negatywny wpływ na funkcjonowanie układu nerwowego niektórych substancji psychoaktywnych: alkoholu, narkotyków, środków dopingujących, dopalaczy, nikotyny (w tym w e-papierosach) oraz nadużywania kofeiny i niektórych leków.', NULL, 'III.9.6.', 'biologia'),
(144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '10. Narządy zmysłów. Uczeń:', '1) rozpoznaje elementy budowy oka (na modelu, rysunku, według opisu itd.) oraz przedstawia ich funkcje w powstawaniu obrazu, dokonuje obserwacji wykazującej obecność tarczy nerwu wzrokowego;', NULL, 'III.10.1.', 'biologia'),
(145, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '10. Narządy zmysłów. Uczeń:', '2) przedstawia przyczyny powstawania oraz sposoby korygowania wad wzroku (krótkowzroczność, dalekowzroczność, astygmatyzm);', NULL, 'III.10.2.', 'biologia'),
(146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '10. Narządy zmysłów. Uczeń:', '3) rozpoznaje elementy budowy ucha (na modelu, rysunku, według opisu itd.) oraz przedstawia ich funkcje;', NULL, 'III.10.3.', 'biologia'),
(147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '10. Narządy zmysłów. Uczeń:', '4) opisuje wpływ hałasu na zdrowie człowieka;', NULL, 'III.10.4.', 'biologia'),
(148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '10. Narządy zmysłów. Uczeń:', '5) przedstawia rolę zmysłu równowagi, smaku, węchu i dotyku; wskazuje umiejscowienie receptorów właściwych tym zmysłom oraz planuje i przeprowadza doświadczenie sprawdzające gęstość rozmieszczenia receptorów w skórze różnych części ciała.', NULL, 'III.10.5.', 'biologia'),
(149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '11. Układ dokrewny. Uczeń:', '1) wymienia gruczoły dokrewne (przysadka, tarczyca, trzustka, nadnercza, jądra i jajniki); wskazuje ich lokalizację i podaje hormony wydzielane przez nie (hormon wzrostu, tyroksyna, insulina, glukagon, adrenalina, testosteron, estrogeny i progesteron) oraz przedstawia ich rolę;', NULL, 'III.11.1.', 'biologia'),
(150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '11. Układ dokrewny. Uczeń:', '2) przedstawia antagonistyczne działanie insuliny i glukagonu;', NULL, 'III.11.2.', 'biologia'),
(151, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '11. Układ dokrewny. Uczeń:', '3) wyjaśnia, dlaczego nie należy bez konsultacji z lekarzem przyjmować preparatów i leków hormonalnych.', NULL, 'III.11.3.', 'biologia'),
(152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '12. Rozmnażanie i rozwój. Uczeń:', '1) rozpoznaje elementy budowy układu rozrodczego męskiego i żeńskiego (na schemacie, według opisu itd.) oraz podaje ich funkcje;', NULL, 'III.12.1.', 'biologia'),
(153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '12. Rozmnażanie i rozwój. Uczeń:', '2) opisuje fazy cyklu miesiączkowego kobiety;', NULL, 'III.12.2.', 'biologia'),
(154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '12. Rozmnażanie i rozwój. Uczeń:', '3) określa rolę gamet w procesie zapłodnienia;', NULL, 'III.12.3.', 'biologia'),
(155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '12. Rozmnażanie i rozwój. Uczeń:', '4) wymienia etapy rozwoju przedurodzeniowego człowieka (zygota, zarodek, płód) i wyjaśnia wpływ różnych czynników na rozwój zarodka i płodu;', NULL, 'III.12.4.', 'biologia'),
(156, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '12. Rozmnażanie i rozwój. Uczeń:', '5) przedstawia cechy fizycznego, psychicznego i społecznego dojrzewania człowieka;', NULL, 'III.12.5.', 'biologia'),
(157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '12. Rozmnażanie i rozwój. Uczeń:', '6) przedstawia zasady profilaktyki chorób przenoszonych drogą płciową;', NULL, 'III.12.6.', 'biologia'),
(158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'III. Organizm człowieka.', '12. Rozmnażanie i rozwój. Uczeń:', '7) uzasadnia konieczność wykonywania badań kontrolnych jako sposobu wczesnego wykrywania raka piersi, raka szyjki macicy i raka prostaty.', NULL, 'III.12.7.', 'biologia'),
(159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'IV. Homeostaza. Uczeń:', '1) analizuje współdziałanie poszczególnych układów narządów w utrzymaniu niektórych parametrów środowiska wewnętrznego na określonym poziomie (temperatura, poziom glukozy we krwi, ilość wody w organizmie);', '7) uzasadnia konieczność wykonywania badań kontrolnych jako sposobu wczesnego wykrywania raka piersi, raka szyjki macicy i raka prostaty.', NULL, 'IV.1.7.', 'biologia'),
(160, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'IV. Homeostaza. Uczeń:', '2) przedstawia zdrowie jako stan równowagi środowiska wewnętrznego organizmu oraz choroby jako zaburzenia homeostazy;', '7) uzasadnia konieczność wykonywania badań kontrolnych jako sposobu wczesnego wykrywania raka piersi, raka szyjki macicy i raka prostaty.', NULL, 'IV.2.7.', 'biologia'),
(161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'IV. Homeostaza. Uczeń:', '3) analizuje informacje dołączane do leków oraz wyjaśnia, dlaczego nie należy bez wyraźnej potrzeby przyjmować leków ogólnodostępnych i suplementów;', '7) uzasadnia konieczność wykonywania badań kontrolnych jako sposobu wczesnego wykrywania raka piersi, raka szyjki macicy i raka prostaty.', NULL, 'IV.3.7.', 'biologia'),
(162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'V. Genetyka. Uczeń:', '1) przedstawia strukturę i rolę DNA;', NULL, NULL, 'V.1.', 'biologia'),
(163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'V. Genetyka. Uczeń:', '2) wskazuje znaczenie struktury podwójnej helisy w procesie replikacji DNA; podaje znaczenie procesu replikacji DNA;', NULL, NULL, 'V.2.', 'biologia'),
(164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'V. Genetyka. Uczeń:', '3) opisuje budowę chromosomu (chromatydy, centromer) i podaje liczbę chromosomów komórek człowieka oraz rozróżnia autosomy i chromosomy płci;', NULL, NULL, 'V.3.', 'biologia'),
(165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'V. Genetyka. Uczeń:', '4) przedstawia znaczenie biologiczne mitozy i mejozy, rozróżnia komórki haploidalne i diploidalne;', NULL, NULL, 'V.4.', 'biologia'),
(166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'V. Genetyka. Uczeń:', '5) przedstawia nowotwory jako skutek niekontrolowanych podziałów komórkowych oraz przedstawia czynniki sprzyjające ich rozwojowi (np. niewłaściwa dieta, niektóre używki, niewłaściwy tryb życia, promieniowanie UV, zanieczyszczenia środowiska);', NULL, NULL, 'V.5.', 'biologia'),
(167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'V. Genetyka. Uczeń:', '6) przedstawia dziedziczenie jednogenowe, posługując się podstawowymi pojęciami genetyki (fenotyp, genotyp, gen, allel, homozygota, heterozygota, dominacja, recesywność);', NULL, NULL, 'V.6.', 'biologia'),
(168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'V. Genetyka. Uczeń:', '7) przedstawia dziedziczenie płci u człowieka;', NULL, NULL, 'V.7.', 'biologia'),
(169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'V. Genetyka. Uczeń:', '8) podaje przykłady chorób sprzężonych z płcią (hemofilia, daltonizm) i przedstawia ich dziedziczenie;', NULL, NULL, 'V.8.', 'biologia'),
(170, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'V. Genetyka. Uczeń:', '9) wyjaśnia dziedziczenie grup krwi człowieka (układ AB0, czynnik Rh);', NULL, NULL, 'V.9.', 'biologia'),
(171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'V. Genetyka. Uczeń:', '10) określa, czym jest mutacja oraz wymienia możliwe przyczyny ich występowania (mutacje spontaniczne i wywołane przez czynniki mutagenne) i podaje przykłady czynników mutagennych (promieniowanie UV, promieniowanie X, składniki dymu tytoniowego, toksyny grzybów pleśniowych, wirus HPV);', NULL, NULL, 'V.10.', 'biologia'),
(172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'V. Genetyka. Uczeń:', '11) podaje przykłady chorób genetycznych człowieka warunkowanych mutacjami (mukowiscydoza, fenyloketonuria, zespół Downa).', NULL, NULL, 'V.11.', 'biologia'),
(173, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VI. Ewolucja życia. Uczeń:', '1) wyjaśnia istotę procesu ewolucji organizmów i przedstawia źródła wiedzy o jej przebiegu;', NULL, NULL, 'VI.1.', 'biologia'),
(174, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VI. Ewolucja życia. Uczeń:', '2) wyjaśnia na przykładach, na czym polega dobór naturalny i sztuczny oraz przedstawia różnice między nimi;', NULL, NULL, 'VI.2.', 'biologia'),
(175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VI. Ewolucja życia. Uczeń:', '3) przedstawia podobieństwa i różnice między człowiekiem a małpami człekokształtnymi jako wynik procesów ewolucyjnych.', NULL, NULL, 'VI.3.', 'biologia'),
(176, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VII. Ekologia i ochrona środowiska. Uczeń:', '1) wskazuje żywe i nieożywione elementy ekosystemu oraz wykazuje, że są one powiązane różnorodnymi zależnościami;', NULL, NULL, 'VII.1.', 'biologia'),
(177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VII. Ekologia i ochrona środowiska. Uczeń:', '2) opisuje cechy populacji (liczebność, zagęszczenie, rozrodczość, śmiertelność, struktura przestrzenna, wiekowa i płciowa) oraz dokonuje obserwacji liczebności, rozmieszczenia i zagęszczenia wybranego gatunku rośliny zielnej w terenie;', NULL, NULL, 'VII.2.', 'biologia'),
(178, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VII. Ekologia i ochrona środowiska. Uczeń:', '3) analizuje oddziaływania antagonistyczne: konkurencję wewnątrzgatunkową i międzygatunkową, pasożytnictwo, drapieżnictwo i roślinożerność;', NULL, NULL, 'VII.3.', 'biologia'),
(179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VII. Ekologia i ochrona środowiska. Uczeń:', '4) analizuje oddziaływania nieantagonistyczne: mutualizm obligatoryjny (symbioza), mutualizm fakultatywny (protokooperacja) i komensalizm;', NULL, NULL, 'VII.4.', 'biologia'),
(180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VII. Ekologia i ochrona środowiska. Uczeń:', '5) przedstawia strukturę troficzną ekosystemu, rozróżnia producentów, konsumentów (I-go i dalszych rzędów) i destruentów oraz przedstawia ich rolę w obiegu materii i przepływie energii przez ekosystem;', NULL, NULL, 'VII.5.', 'biologia'),
(181, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VII. Ekologia i ochrona środowiska. Uczeń:', '6) analizuje zależności pokarmowe (łańcuchy pokarmowe i sieci troficzne), konstruuje proste łańcuchy pokarmowe (łańcuchy spasania) oraz analizuje przedstawione (w postaci schematu) sieci i łańcuchy pokarmowe;', NULL, NULL, 'VII.6.', 'biologia'),
(182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VII. Ekologia i ochrona środowiska. Uczeń:', '7) analizuje zakresy tolerancji organizmu na wybrane czynniki środowiska (temperatura, wilgotność, stężenie dwutlenku siarki w powietrzu);', NULL, NULL, 'VII.7.', 'biologia'),
(183, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VII. Ekologia i ochrona środowiska. Uczeń:', '8) przedstawia porosty jako organizmy wskaźnikowe (skala porostowa), ocenia stopień zanieczyszczenia powietrza tlenkami siarki, wykorzystując skalę porostową;', NULL, NULL, 'VII.8.', 'biologia'),
(184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VII. Ekologia i ochrona środowiska. Uczeń:', '9) przedstawia odnawialne i nieodnawialne zasoby przyrody oraz propozycje racjonalnego gospodarowania tymi zasobami zgodnie z zasadą zrównoważonego rozwoju.', NULL, NULL, 'VII.9.', 'biologia'),
(185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VIII. Zagrożenia różnorodności biologicznej. Uczeń:', '1) przedstawia istotę różnorodności biologicznej;', NULL, NULL, 'VIII.1.', 'biologia');
INSERT INTO `curriculum` (`id`, `grade0`, `grade1`, `grade2`, `grade3`, `grade4`, `grade5`, `grade6`, `grade7`, `grade8`, `obligatory`, `text_level1`, `text_level2`, `text_level3`, `text_level4`, `symbol`, `subject`) VALUES
(186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VIII. Zagrożenia różnorodności biologicznej. Uczeń:', '2) podaje przykłady gospodarczego użytkowania ekosystemów;', NULL, NULL, 'VIII.2.', 'biologia'),
(187, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VIII. Zagrożenia różnorodności biologicznej. Uczeń:', '3) analizuje wpływ człowieka na różnorodność biologiczną;', NULL, NULL, 'VIII.3.', 'biologia'),
(188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'VIII. Zagrożenia różnorodności biologicznej. Uczeń:', '4) uzasadnia konieczność ochrony różnorodności biologicznej;', NULL, NULL, 'VIII.4.', 'biologia');

-- --------------------------------------------------------

--
-- Table structure for table `curriculum_has_resource`
--

CREATE TABLE `curriculum_has_resource` (
  `curriculum_id` int NOT NULL,
  `resource_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `id` int NOT NULL,
  `url` varchar(1024) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_polish_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curriculum_has_resource`
--
ALTER TABLE `curriculum_has_resource`
  ADD PRIMARY KEY (`curriculum_id`,`resource_id`),
  ADD KEY `fk_curriculum_has_resource_resource1_idx` (`resource_id`),
  ADD KEY `fk_curriculum_has_resource_curriculum_idx` (`curriculum_id`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `curriculum_has_resource`
--
ALTER TABLE `curriculum_has_resource`
  ADD CONSTRAINT `fk_curriculum_has_resource_curriculum` FOREIGN KEY (`curriculum_id`) REFERENCES `curriculum` (`id`),
  ADD CONSTRAINT `fk_curriculum_has_resource_resource1` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
