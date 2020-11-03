-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Erstellungszeit: 20. Dez 2018 um 15:29
-- Server-Version: 10.1.19-MariaDB
-- PHP-Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `webshop`
--
CREATE DATABASE IF NOT EXISTS `webshop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci;
USE `webshop`;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `access`
--

CREATE TABLE `access` (
  `ID_Produkt` int(11) NOT NULL,
  `bezeichnung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `bild` text COLLATE utf8mb4_german2_ci NOT NULL,
  `preis` float NOT NULL,
  `beschreibunglang` text COLLATE utf8mb4_german2_ci NOT NULL,
  `beschreibung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `link` text COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Daten für Tabelle `access`
--

INSERT INTO `access` (`ID_Produkt`, `bezeichnung`, `bild`, `preis`, `beschreibunglang`, `beschreibung`, `link`) VALUES
(1, 'Jotaro Kujos Gürtel.', '../bilder/cosplay/accessoires/jotaro_belt.jpg', 19.99, 'Jotaro Kujo ist der Protagonist von Stardust Crusader. Er taucht auch in Diamond is Unbreakable und Vento Aureo auf. Er ist der am meisten wiederkehrende JoJo in der JoJo''s Bizarre Adventure reihe.  Dieser Gürtel Repräsentiert Die Stirnbänder von Joseph Joestar und Caesar aus Battle Tendency. ', 'Der Gürtel von Jotaro Kujo aus Stardust Crusader', 'https://www.pinterest.de/pin/376824693804964270/'),
(2, 'Jotaro Kujos Hut', '../bilder/cosplay/accessoires/jotaro_hut.jpg', 29.99, 'Jotaro Kujo ist der Protagonist von Stardust Crusader. Er taucht auch in Diamond is Unbreakable und Vento Aureo auf. Er ist der am meisten wiederkehrende JoJo in der JoJo''s Bizarre Adventure reihe.  Dieser Hut Repräsentiert einen Seemanshut. ', 'Der Ikonische Hut von Jotaru Kujo aus Stardust Crusaders', 'https://diskomir.ru/catalog/furazhka_jojo_s_bizarre_adventure_374664/'),
(3, 'Keyblade', '../bilder/cosplay/accessoires/keyblade.jpg', 59.99, 'Die Keyblades sind mystische Waffen, welche besondere Aufmerksamkeit in der Kingdom Hearts-Serie bekommen. Sie werden hauptsächlich vom Hauptprotagonisten Sora getragen, können allerdings auch von anderen wichtigen Charakteren getragen werden. Die Schlüsselschwerter spielen eine wichtige Rolle im Kampf zwischen Licht und Dunkelheit.', 'Das Keyblade von Sora aus den Kingdom Hearts Spielen', 'https://www.amazon.de/dp/B00NI1Y360/'),
(4, 'Marios Mütze', '../bilder/cosplay/accessoires/mario.jpg', 49.99, 'Super Mario oder nur Mario ist die populärste Videospiel-Figur der Firma Nintendo und deren Maskottchen. Ebenfalls ist er Protagonist und titelgebender Held der erfolgreichsten Videospielreihe des Unternehmens. Die Spielfigur taucht daher – von wenigen Ausnahmen abgesehen – nur in Spielen für Nintendo-Spielkonsolen auf. Mit über 295 Millionen verkauften Spielen ist Mario nicht nur die erfolgreichste Nintendo-Reihe, sondern die bisher erfolgreichste Videospielreihe überhaupt.', 'Marios Ikonische rote Klempner Mütze.', 'https://fr.shopping.rakuten.com/offer/buy/1615402569/casquette-mario-enfant-taille-unique.html'),
(5, 'Genjis Oni Maske', '../bilder/cosplay/accessoires/oni.jpg', 29.99, 'Genji ist ein offensiver Held im Spiel Overwatch. Veröffentlicht wurde der Held erst auf der BlizzCon 2015. Vorerst war Genji nur auf einem Teaserbild zu sehen und Fans glaubten, dass Hanzo und Genji der gleiche Charakter mit einer zweiten Identität gewesen sei. Genji trägt diese Maske bei seinem "Oni" Skin.', 'Genji''s Maske von seinem Oni skin aus Overwatch', 'https://www.lightinthebox.com/de/p/maske-inspiriert-von-wacht-cosplay-anime-cosplay-accessoires-maske-harz_p6790394.html?category_id=5870&prm=1.4.1.1');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `einkaufswagen`
--

CREATE TABLE `einkaufswagen` (
  `Bezeichnung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `Preis` float NOT NULL,
  `ID_imEinkaufswagen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci COMMENT='beep';

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `figurines`
--

CREATE TABLE `figurines` (
  `ID_Produkt` int(11) NOT NULL,
  `bezeichnung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `bild` text COLLATE utf8mb4_german2_ci NOT NULL,
  `preis` float NOT NULL,
  `beschreibunglang` text COLLATE utf8mb4_german2_ci NOT NULL,
  `beschreibung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `link` text COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Daten für Tabelle `figurines`
--

INSERT INTO `figurines` (`ID_Produkt`, `bezeichnung`, `bild`, `preis`, `beschreibunglang`, `beschreibung`, `link`) VALUES
(1, 'Astolfo Figurines', '../Bilder/figuren/figurines/astolfo.jpg', 299.99, 'Astolfo ist eine Heldenhafte Seele von Fate/Grand Order und Fate/Apocrypha und den zwölf Paladinen von Charlemagne. Astolfo übernimmt die Rolle der Reiter Klasse in Selenik Icecol Yggdmilennia als Mitglied der Schwarzen Fraktion in der Turifas Heiligen Gral Krieg in Fate/Apocrypha.', 'Einer der zwölf Paladine von Charlemagne und sohn des englishen König', 'https://www.amazon.com/Amakuni-Fate-Grand-Order-Astolfo/dp/B06XSWYSWR'),
(2, 'Hunter Figurines', '../bilder/figuren/figurines/bloodbornehunter.jpg', 239.99, 'Der Hunter ist der Hauptcharakter in Bloodbourne. Der Spieler kann die Vorgeschichte des Hunters selbst bestimmen, so wie sein aussehen und seine Fähigkeiten. ', 'Ein Hunter aus dem Videospiel Bloodborne. Frisch von einem Traum erwacht.', 'https://www.toy-palace.com/de/hunter-figma-actionfigur-bloodborne-15-cm.html'),
(3, 'Hol Horse Figurines', '../bilder/figuren/figurines/holhorse.jpg', 49.99, 'Hol Horse ist ein Antagonist aus Stardust Crusaders. Er ist ein Diener von DIO und sein Stand trägt den Namen Emperor. ', 'Hol Horse, ein Diener von DIO aus Jojo''s bizarre Adventure: Stardust Crusader', 'https://www.pinterest.de/pin/513621532493906839/'),
(4, 'Jotaro Figurines', '../bilder/figuren/figurines/jotaro.jpg', 99.99, 'Jotaro Kujo ist der Protagonist von Stardust Crusader. Er taucht auch in Diamond is Unbreakable und Vento Aureo auf. Er ist der am meisten wiederkehrende JoJo in der JoJo''s Bizarre Adventure reihe.', 'Jotaro, die Hauptfigur aus der beliebten Show Jojo''s bizarre Adventure: Stardust Crusader', 'http://jojo.wikia.com/wiki/File:DiMoltaro.jpeg'),
(5, 'Joseph Figurines', '../bilder/figuren/figurines/old_joseph.jpg', 49.99, 'Joseph Joestar ist der Hauptcharakter von Battle Tendency und einer der Hauptcharaktere von Stardust Crusaders und taucht auch in Diamond is Unbreakable vor. Diese Figur Stellt ihn zusammen mit Iggy da wie er in Stardust Crusaders zu sehen war.', 'Der alte Joseph Joestar, der Großvater von Jotaro aus Jojo''s bizarre Adventure: Stardust Crusader', 'https://www.play-asia.com/super-figure-jojos-bizarre-adventure-part-3-no-17-joseph-joestar/13/703u24');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `full`
--

CREATE TABLE `full` (
  `ID_Produkt` int(11) NOT NULL,
  `bezeichnung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `bild` text COLLATE utf8mb4_german2_ci NOT NULL,
  `preis` float NOT NULL,
  `beschreibunglang` text COLLATE utf8mb4_german2_ci NOT NULL,
  `beschreibung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `link` text COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Daten für Tabelle `full`
--

INSERT INTO `full` (`ID_Produkt`, `bezeichnung`, `bild`, `preis`, `beschreibunglang`, `beschreibung`, `link`) VALUES
(1, '2B Kostüm', '../bilder/cosplay/outfits/2b.jpg', 149.99, 'YoRHA No.2 Type B oder enfach 2B dient als Protagonist in NieR: Automata. Sie ist ein Androide welche dazu gebaut wurde um die Maschinen zu bekämpfen welche die Welt überfallen haben. <br> Größe: M', 'Das Outfit der Androiden 2B aus Nier: Automata', 'https://www.milanoo.com/de/p680254.html?Promotion=deggPLACostumes_680254_40432610&currency=EUR&gclid=CjwKCAiAjNjgBRAgEiwAGLlf2g7-P5p27zP7kusD-2R-HyDhWJHYpOLzVKfYdhvl-dUEHE_NJexeMRoCX8YQAvD_BwE#C4692S202'),
(2, 'Astolfos Schulanzug', '../bilder/cosplay/outfits/astolfo.jpg', 199.99, 'Astolfo ist eine Heldenhafte Seele von Fate/Grand Order und Fate/Apocrypha und den zwölf Paladinen von Charlemagne. Astolfo übernimmt die Rolle der Reiter Klasse in Selenik Icecol Yggdmilennia als Mitglied der Schwarzen Fraktion in der Turifas Heiligen Gral Krieg in Fate/Apocrypha. Dies ist eines seiner alternativen Kostüme. <br> Größe: M', 'Der Schulanzug von Astolfo aus Fate.', 'https://www.aliexpress.com/item/FGO-Fate-Grand-Order-Apocrypha-Rider-Astolfo-Asutorufo-Cosplay-Costumes-Astolfo-Navy-Costume-School-Uniform-Sailor/32858796032.html?aff_platform=aaf&cpt=1544956560741&sk=AYNZbMb&aff_trace_key=7b6c33c5e8b14247a0ee31d4c44fc532-1544956560741-02458-AYNZbMb&terminal_id=7f99ca9bf3ac44f7ae21834b8cc468e4'),
(3, 'Jotaros Anzug', '../bilder/cosplay/outfits/jotaro.jpg', 149.99, 'Jotaro Kujo ist der Protagonist von Stardust Crusader. Er taucht auch in Diamond is Unbreakable und Vento Aureo auf. Er ist der am meisten wiederkehrende JoJo in der JoJo''s Bizarre Adventure reihe. Jotaro trägt diesen Anzug während Diamond is Unbreakable. <br> Größe: L', 'Der Anzug welcher Jotaro in Diamond is Unbreakable ', 'https://skycosplay.com/jojo-s-bizarre-adventure-kujo-jotaro-cosplay-costume.html'),
(4, 'Mikus Kostüm', '../bilder/cosplay/outfits/miku.jpg', 129.99, 'Hatsune Miku ist die erste VOCALOID in der VOCALOID 2 Character Vocal Series von Crypton Future Media. Sie wurde am 31.08.2007 als zweiter Vocaloid von VOCALOID 2 veröffentlicht. Sie ist der bekannteste und beliebteste Vocaloid und dazu noch der einzige Vocaloid, der in Japan zu einem Pop-Idol geworden ist. <br> Größe: M', 'Ein Kostüm welches Miku nachempfunden ist.', 'https://www.milanoo.com/product/vocaloid-hatsune-miku-cosplay-costume-halloween-p10286.html'),
(5, 'Mista Outfit + Mütze', '../bilder/cosplay/outfits/mista.png', 129.99, 'Mista ist ein Charakter aus Vento Aureo,er ein Mitglied von Passione und teil von Bucciarati''s Team. Sein Stand ist Sex Pistols. <br> Größe: L', 'Das Köstum von Mista aus GioGio: Vento Aureo', 'http://www.skycostume.com/guido-mista-jojo-s-bizarre-adventure-golden-wind-suit-cosplay-costume.html');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hair`
--

CREATE TABLE `hair` (
  `ID_Produkt` int(11) NOT NULL,
  `bild` text COLLATE utf8mb4_german2_ci NOT NULL,
  `bezeichnung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `preis` float NOT NULL,
  `beschreibunglang` text COLLATE utf8mb4_german2_ci NOT NULL,
  `beschreibung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `link` text COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Daten für Tabelle `hair`
--

INSERT INTO `hair` (`ID_Produkt`, `bild`, `bezeichnung`, `preis`, `beschreibunglang`, `beschreibung`, `link`) VALUES
(1, '../bilder/cosplay/hair/jyugo.jpg', 'Jyugo Perücke', 49.99, 'Jyugo ist der Hauptcharakter des Animes und web Mangas Nanbaka. Er ist Insasse des Nanba Gefängnisses und hat so einige Erfahrungen im Ausbrechen. ', 'Eine Perücke die Jyugo aus Nanbaka nachempfunden ist.', 'https://www.wantitall.co.za/beauty/christmas-party-wigs-anime-short-black-mixed-red-straight-cosplay-wig-with-free-cap__b075ll8xzs'),
(2, '../bilder/cosplay/hair/miku.jpg', 'Miku Perücke', 99.99, 'Hatsune Miku ist die erste VOCALOID in der VOCALOID 2 Character Vocal Series von Crypton Future Media. Sie wurde am 31.08.2007 als zweiter Vocaloid von VOCALOID 2 veröffentlicht. Sie ist der bekannteste und beliebteste Vocaloid und dazu noch der einzige Vocaloid, der in Japan zu einem Pop-Idol geworden ist.', 'Eine Perücke die Miku nachempfunden wurden ist.', 'https://jukustore.com/products/130cm-hatsune-miku-wig-2-clip-on-ponytails-heat-resistant'),
(3, '../bilder/cosplay/hair/shiro.jpg', 'Shiro Perücke ', 99.99, 'Shiro ist eine der Hauptprotagonistin der No Game No Life Serie und die ruhige und kalkulierende Hälfte der Geschwister.  Von ihren Eltern verlassen, Shiro ist ein 11-jähriges Genie NEET (Not in Education, Employment or Training/nicht in Bildung, Beschäftigung oder Training) hikikomori (shut-in) Gamer, die, zusammen mit ihrem Stiefbruder, Sora, bilden sie. Soras Vater heiratete Shiros Mutter, als die geheiratet hatten und somit Shiro und Sora zu Stiefgeschwistern machten.', 'Eine Perücke die Shiro von No Game No Life', 'https://www.amazon.de/CoolChange-Hochwertige-Per%C3%BCcke-Shiro-T%C3%BCrkis/dp/B01I5E3FFO'),
(4, '../bilder/cosplay/hair/sucy.png', 'Sucy Perücke', 49.99, 'Sucy Manbavaran ist eine der Hauptcharaktere von Little Witch Academia. Sie ist eine junge Hexe aus Südost Asien.', 'Eine Perücke die Sucy aus Little Witch Academy nachempfunden wurden ist.', 'https://www.amazon.com/Mtxc-Little-Academia-Cosplay-Manbavaran/dp/B074XDJ3GX'),
(5, '../bilder/cosplay/hair/nicowig.jpg', 'Nico Perücke ', 49.99, 'Nico ist einer der Hauptcharaktere des Anime und Web Manga Nanbaka. Er ist Insasse des Nanba Gefängnisses weil er unwissend Drogen gekauft und verkauft hat.', 'Eine Perücke die Nico aus Nanbaka nachempfunden wurden ist', 'https://pt.aliexpress.com/item/80cm-New-Anime-Nanbaka-Wig-Nico-Cospaly-Wigs-Long-Green-Synthetic-Hair-Peruca-Cosplay-Wigs/32777611038.html');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kundendaten`
--

CREATE TABLE `kundendaten` (
  `Vorname` text COLLATE utf8mb4_german2_ci NOT NULL,
  `Name` text COLLATE utf8mb4_german2_ci NOT NULL,
  `Strasse` text COLLATE utf8mb4_german2_ci NOT NULL,
  `Telefonnummer` int(11) NOT NULL,
  `StrasseNr` text COLLATE utf8mb4_german2_ci NOT NULL,
  `PLZ` int(11) NOT NULL,
  `Ort` text COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `nendoroids`
--

CREATE TABLE `nendoroids` (
  `ID_Produkt` int(11) NOT NULL,
  `bezeichnung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `bild` text COLLATE utf8mb4_german2_ci NOT NULL,
  `preis` float NOT NULL,
  `beschreibunglang` text COLLATE utf8mb4_german2_ci NOT NULL,
  `beschreibung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `link` text COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Daten für Tabelle `nendoroids`
--

INSERT INTO `nendoroids` (`ID_Produkt`, `bezeichnung`, `bild`, `preis`, `beschreibunglang`, `beschreibung`, `link`) VALUES
(1, 'Astolfo Nendoroid', '../bilder/figuren/nendoroid/astolfo.jpg', 59.99, 'Astolfo ist eine Heldenhafte Seele von Fate/Grand Order und Fate/Apocrypha und den zwölf Paladinen von Charlemagne. Astolfo übernimmt die Rolle der Reiter Klasse in Selenik Icecol Yggdmilennia als Mitglied der Schwarzen Fraktion in der Turifas Heiligen Gral Krieg in Fate/Apocrypha.\n<br> Die Figur ist 14 cm hoch.', 'Eine Bewegliche Figur von Astolfo aus Fate. ', 'https://www.goodsmile.info/en/product/7024/Nendoroid+Rider+of+Black.html'),
(2, 'Elias Nendoroid', '../bilder/figuren/nendoroid/elias.jpg', 54.99, 'Elias Ainsworth ist ein Magier und einer der Hauptcharaktere von The Ancient Magus Bride.  Er ist eine Mischung aus Fabelwesen und Mensch. <br> Die Figur ist 14 cm hoch.', 'Eine Bewegliche Figur von Elias aus the Ancient Magus Bride.', 'http://www.yorokonde.de/deu/detail/index/sArticle/12699'),
(3, 'Geralt Nendoroid', '../bilder/figuren/nendoroid/geralt.jpg', 59.99, 'Geralt von Riva (Geralt z Rivii auf Polnisch) ist der Protagonist der Witcher Romane (Kurzgeschichten und Saga) des polnischen Fantasy Autors Andrzej Sapkowski sowie der gleichnamigen Witcher Adaptionen wie zum Beispiel des The Witcher 1. In der Alten Sprache wird Geralt von Riva Gwynbleidd genannt, was Der Weiße Wolf bedeutet. Diesen Namen hat er von den Dryaden erhalten. Geralt ist auch bekannt als Der Schlächter von Blaviken. <br> Die Figur ist 14 cm hoch.', 'Eine Bewegliche Figur von Geralt aus the Witcher.', 'https://www.kujumi.de/figuren-statuen/videogames/witcher-3-wild-hunt-nendoroid-907-figur-geralt-von-riva/a-2816/'),
(4, 'Hanzo Nendoroid', '../bilder/figuren/nendoroid/hanzo.jpg', 59.99, ' Hanzo   Informationen IconDefense Rolle: Defensiv Schwierigkeit SternSternStern   Hanzo ist einer der defensiven und spielbaren Helden im Spiel Overwatch.  Nachdem der Assistant Art Director von Overwatch, Arnold Tsang, auf der BlizzCon 2015 bekannt gab, dass es nur einen Ninja geben sollte, entschied man sich vorzeitig für einen cybernetischen Ninja mit Klinge und Bogen. Da jedoch somit die möglichen Fähigkeiten den Rahmen sprengen würden, entwickelte Blizzard Hanzo und Genji. <br> Die Figur ist 14 cm hoch.', 'Eine Bewegliche Figur von Hanzo aus Overwatch.', 'https://anime-figuren.de/Charas/Hanzo-Classic-Skin-Edition-Overwatch-Nendoroid-839-Actionfigur-10cm-Good-Smile-Company.html'),
(5, 'Jotaro Nendoroid', '../bilder/figuren/nendoroid/jotaro.jpg', 45.99, 'Jotaro Kujo ist der Protagonist von Stardust Crusader. Er taucht auch in Diamond is Unbreakable und Vento Aureo auf. Er ist der am meisten wiederkehrende JoJo in der JoJo''s Bizarre Adventure reihe.\n<br> Die Figur ist 14 cm hoch.', 'Eine Bewegliche Figur von Jotaro aus JoJo''s Bizarre Adventure.', 'https://lootstore.de/vorbestellungen/6054/medicos-jojo-s-bizarre-adventures-stardust-crusaders-jotaro-kujo-nendoroid');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `plush`
--

CREATE TABLE `plush` (
  `ID_Produkt` int(11) NOT NULL,
  `bild` text COLLATE utf8mb4_german2_ci NOT NULL,
  `bezeichnung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `preis` float NOT NULL,
  `beschreibunglang` text COLLATE utf8mb4_german2_ci NOT NULL,
  `beschreibung` text COLLATE utf8mb4_german2_ci NOT NULL,
  `link` text COLLATE utf8mb4_german2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;

--
-- Daten für Tabelle `plush`
--

INSERT INTO `plush` (`ID_Produkt`, `bild`, `bezeichnung`, `preis`, `beschreibunglang`, `beschreibung`, `link`) VALUES
(1, '../bilder/figuren/plushie/astolfo.png', 'Astolfo Bean Plush', 14.99, 'Dieses Bean Plushie ist laut Erzählungen verflucht. Dennoch stellt dieses Pluschie stellt Astolfo von der Fate Serie da. Die Serie ist bekannt durch ihre Handy Spiele und deren beliebten Charakteren die auf bekannten Geschichten basieren. Astolfo ist einer der 12 Paladine von Charlemagne. <br> Das Plushie ist 9  cm lang.', 'Astolfo Bean Plushie aus Fate', 'https://www.youtube.com/watch?v=uwoLRdq4h6Q'),
(2, '../bilder/figuren/plushie/dio.png', 'Dio Bean Plush', 14.99, 'Dio Brando oderauch nur DIO, ist der Haupt Antagonist der Jojo''s bizarre Adventure Reihe und will Die Joestar Blutlinie ausrotten. <br> Das Plushie ist 9  cm lang.', 'DIO Bean Plushie aus JoJo''s bizarre Adventure: Stardust Crusader', 'https://www.reddit.com/r/Animemes/comments/82ig8r/haunted_dio_bean_plushie_that_sucks_your_grandpa/'),
(3, '../bilder/figuren/plushie/jotaro.jpg', 'Jotaro Bean Plush', 9.99, 'Jotaro Kujo ist der Protagonist von Stardust Crusader. Er taucht auch in Diamond is Unbreakable und Vento Aureo auf. Er ist der am meisten wiederkehrende JoJo in der JoJo''s Bizarre Adventure reihe. <br> Das Plushie ist 9  cm lang.', 'Jotaro Bean Plushie aus JoJo''s bizarre Adventure: Stardust Crusader', 'https://www.amazon.com/Jotaro-Kujo-Adventure-Anniversary-Keychain/dp/B076T96H6R'),
(4, '../bilder/figuren/plushie/kirby.jpg', 'Kirby Plush', 14.99, 'Kirby ist ein kugelförmiger Bewohner von Pop Star, der die Spezialfähigkeiten von Gegnern übernehmen kann, indem er diese aufsaugt. Außerdem ist er der Held der Spieleserie, die seinen Namen trägt und wird von den meisten Spielern geliebt. <br> Das Plushie ist 20  cm hoch.', 'Kirby aus der Kirby Videospielreihe ', 'https://www.amazon.de/Unbekannt-Kirby-Adventure-Pl%C3%BCsch-Puppe/dp/B000FMQS90/ref=sr_1_3?s=toys&ie=UTF8&qid=1544957645&sr=1-3&keywords=kirby'),
(5, '../bilder/figuren/plushie/reimu.jpg', 'Reimu FUMO Plush', 29.99, 'Reimu Hakurei ist einer der Hauptcharaktere der Touhou-Serie und ist deshalb in fast jedem Spiel präsent. Sie ist das Schreinmädchen des Hakurei-Schreins und hat deshalb die Aufgabe über die sogenannte Hakurei-Grenze sowie über seltsame Ereignisse zu wachen, die in Gensokyo passieren, und welchen sie dementsprechend nachgehen muss. <br> Das Plushie ist 20  cm hoch.', 'Reimu FUMO Plushie aus TOUHOU', 'https://www.ebay.com/p/Touhou-Project-Series-01-Hakurei-Reimu-Plush-Toy-Official-Gift-Japan-MINT-Tag/1028624441');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `access`
--
ALTER TABLE `access`
  ADD PRIMARY KEY (`ID_Produkt`);

--
-- Indizes für die Tabelle `einkaufswagen`
--
ALTER TABLE `einkaufswagen`
  ADD PRIMARY KEY (`ID_imEinkaufswagen`);

--
-- Indizes für die Tabelle `figurines`
--
ALTER TABLE `figurines`
  ADD PRIMARY KEY (`ID_Produkt`);

--
-- Indizes für die Tabelle `full`
--
ALTER TABLE `full`
  ADD PRIMARY KEY (`ID_Produkt`);

--
-- Indizes für die Tabelle `hair`
--
ALTER TABLE `hair`
  ADD PRIMARY KEY (`ID_Produkt`);

--
-- Indizes für die Tabelle `nendoroids`
--
ALTER TABLE `nendoroids`
  ADD PRIMARY KEY (`ID_Produkt`);

--
-- Indizes für die Tabelle `plush`
--
ALTER TABLE `plush`
  ADD PRIMARY KEY (`ID_Produkt`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `access`
--
ALTER TABLE `access`
  MODIFY `ID_Produkt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `einkaufswagen`
--
ALTER TABLE `einkaufswagen`
  MODIFY `ID_imEinkaufswagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;
--
-- AUTO_INCREMENT für Tabelle `figurines`
--
ALTER TABLE `figurines`
  MODIFY `ID_Produkt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `full`
--
ALTER TABLE `full`
  MODIFY `ID_Produkt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `hair`
--
ALTER TABLE `hair`
  MODIFY `ID_Produkt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT für Tabelle `nendoroids`
--
ALTER TABLE `nendoroids`
  MODIFY `ID_Produkt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `plush`
--
ALTER TABLE `plush`
  MODIFY `ID_Produkt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
