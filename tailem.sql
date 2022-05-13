-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2022 at 08:13 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tailem`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` bigint(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `password_simple` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `admin_status` tinyint(4) NOT NULL DEFAULT 1,
  `type` varchar(6) NOT NULL DEFAULT 'user',
  `modified_user_id` int(11) NOT NULL,
  `modified_date` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`, `password_simple`, `email`, `admin_status`, `type`, `modified_user_id`, `modified_date`) VALUES
(1, 'admin', 'b4af804009cb036a4ccdc33431ef9ac9', 'pass1234', 'info@tailem.com', 1, 'admin', 1, 1636436944),
(18, 'shalimar', 'b32ab3e00383bd54cf5c352dfd5fb3c1', 'tailem1234', 'spelotenia9015@gmail.com', 1, 'user', 1, 1489802137),
(13, 'input', '544894d3b1f5b4ed3ebebc3c0a59bc25', 'thisisit', 'input@tailem.com', 1, 'user', 1, 1434438706),
(14, 'testing', 'ae2b1fca515949e5d54fb22b8ed95575', 'testing', 'testing@tailem.com', 1, 'user', 1, 1433048503),
(17, 'TailemInfo', '16d7a4fca7442dda3ad93c9a726597e4', 'test1234', 'info2@tailem.com', 1, 'user', 1, 1489277321),
(16, 'testing123', '7f2ababa423061c509f4923dd04b6cf1', 'testing123', 'testing123@tailem.com', 1, 'user', 1, 1483086680),
(19, 'wetojebum', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Pa$$w0rd!', 'gelyfaqyjo@mailinator.com', 1, 'user', 1, 1633534397),
(24, 'adminaaa', '14fe8d6a105841f088c1d97bac90284d', 'adminaaa', 'adminaaa@tailem.com', 1, 'user', 1, 1638672310);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advertisement`
--

CREATE TABLE `tbl_advertisement` (
  `ad_id` int(11) NOT NULL,
  `ad_place` varchar(15) NOT NULL,
  `ad_script` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_advertisement`
--

INSERT INTO `tbl_advertisement` (`ad_id`, `ad_place`, `ad_script`, `status`) VALUES
(1, 'Top', '<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\r\n<!-- Top Advertisement -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-9869744050959987\"\r\n     data-ad-slot=\"3319637157\"\r\n     data-ad-format=\"auto\"></ins>\r\n<script>\r\n(adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', 1),
(2, 'Right', '<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\r\n<!-- Box Advertisement -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-9869744050959987\"\r\n     data-ad-slot=\"6273103556\"\r\n     data-ad-format=\"auto\"></ins>\r\n<script>\r\n(adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', 1),
(3, 'Bottom', '<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\r\n<!-- Bottom Advertisement -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-9869744050959987\"\r\n     data-ad-slot=\"4796370355\"\r\n     data-ad-format=\"auto\"></ins>\r\n<script>\r\n(adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artists`
--

CREATE TABLE `tbl_artists` (
  `id` int(11) NOT NULL,
  `artist_seo` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `lastfm_url` mediumtext NOT NULL,
  `itunes_url` varchar(255) NOT NULL,
  `artist_name` varchar(255) NOT NULL,
  `genere_cat` int(11) NOT NULL DEFAULT 7,
  `artist_description` mediumtext NOT NULL,
  `summary` text NOT NULL,
  `artist_img` varchar(100) NOT NULL,
  `artist_status` enum('1','0') NOT NULL DEFAULT '1',
  `posted_date` int(11) NOT NULL,
  `latest_one` int(11) DEFAULT 0,
  `popular_artist` int(11) NOT NULL,
  `updated_by_itunes` datetime NOT NULL,
  `cron_status` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_artists`
--

INSERT INTO `tbl_artists` (`id`, `artist_seo`, `keywords`, `lastfm_url`, `itunes_url`, `artist_name`, `genere_cat`, `artist_description`, `summary`, `artist_img`, `artist_status`, `posted_date`, `latest_one`, `popular_artist`, `updated_by_itunes`, `cron_status`) VALUES
(18200208, 'giorgio-gaber', 'Giorgio Gaber', '', 'https://music.apple.com/us/artist/giorgio-gaber/18200208?uo=4', 'Giorgio Gaber', 7, 'Giorgio Gaber, true name Giorgio Gaberscik, born January 25, 1939 in Milan, died January 1, 2003 in Montemagno near Camaiore (Lucca), was an Italian actor, composer, and musician. But truly, no definition can completely suit a personality like Gaber, affectionately called \"il Signor G\" (Mister G) by his fans. He was also a good guitar player, and author of the first rock song in Italian (Ciao ti dirò, 1958).\n\nVery appreciated have been his performances like author and actor of theatre: he was father <a href=\"https://www.last.fm/music/Giorgio+Gaber\">Read more on Last.fm</a>', 'Giorgio Gaber, true name Giorgio Gaberscik, born January 25, 1939 in Milan, died January 1, 2003 in Montemagno near Camaiore (Lucca), was an Italian actor, composer, and musician. But truly, no definition can completely suit a personality like Gaber, affectionately called \"il Signor G\" (Mister G) by his fans. He was also a good guitar player, and author of the first rock song in Italian (Ciao ti dirò, 1958).\n\nVery appreciated have been his performances like author and actor of theatre: he was father <a href=\"https://www.last.fm/music/Giorgio+Gaber\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638594580, 0, 0, '2021-12-04 05:09:40', 0),
(26365705, 'enzo-jannacci', 'Enzo Jannacci', '', 'https://music.apple.com/us/artist/enzo-jannacci/26365705?uo=4', 'Enzo Jannacci', 7, 'Vincenzo Jannacci (June 3, 1935 – March 29, 2013), more commonly known as Enzo Jannacci (Italian pronunciation: [vinˈtʃentso] or [ˈɛntso janˈnattʃi]), was an Italian cardiologist, singer-songwriter, actor and stand-up comedian. He is regarded as one of the most important artists in the post-war Italian music scene.\n\nJannacci is widely considered as a master of musical art and cabaret, and in the course of his career has collaborated with many famous Italian musicians <a href=\"https://www.last.fm/music/Enzo+Jannacci\">Read more on Last.fm</a>', 'Vincenzo Jannacci (June 3, 1935 – March 29, 2013), more commonly known as Enzo Jannacci (Italian pronunciation: [vinˈtʃentso] or [ˈɛntso janˈnattʃi]), was an Italian cardiologist, singer-songwriter, actor and stand-up comedian. He is regarded as one of the most important artists in the post-war Italian music scene.\n\nJannacci is widely considered as a master of musical art and cabaret, and in the course of his career has collaborated with many famous Italian musicians <a href=\"https://www.last.fm/music/Enzo+Jannacci\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638594558, 0, 0, '2021-12-04 05:09:18', 0),
(323820642, 'maxi-b', 'Maxi B', '', 'https://music.apple.com/us/artist/maxi-b/323820642?uo=4', 'Maxi B', 7, ' <a href=\"https://www.last.fm/music/Maxi+B\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Maxi+B\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638594562, 0, 0, '2021-12-04 05:09:22', 0),
(62743472, 'i-due-corsari', 'I Due Corsari', '', 'https://music.apple.com/us/artist/i-due-corsari/62743472?uo=4', 'I Due Corsari', 7, ' <a href=\"https://www.last.fm/music/I+Due+Corsari\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/I+Due+Corsari\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638594568, 0, 0, '2021-12-04 05:09:28', 0),
(566009830, 'jmii', 'JMII', '', 'https://music.apple.com/us/artist/jmii/566009830?uo=4', 'JMII', 7, 'JMII is a producer and DJ from Barcelona involved in several projects. As a member of the now defunct project Aster, he debuted on Jamal Moss\' Mathematics Recordings and released two EPs with Barcelona\'s wealthiest label Hivern Discs. \n\nHis solo debut EP on 100% Silk featured some of his early interests: quirky bleeps, classic beats, distorted vocals and a whole world of colorful synth lines. A more powerfull and dancefloor-oriented evolution of this <a href=\"https://www.last.fm/music/jmii\">Read more on Last.fm</a>', 'JMII is a producer and DJ from Barcelona involved in several projects. As a member of the now defunct project Aster, he debuted on Jamal Moss\' Mathematics Recordings and released two EPs with Barcelona\'s wealthiest label Hivern Discs. \n\nHis solo debut EP on 100% Silk featured some of his early interests: quirky bleeps, classic beats, distorted vocals and a whole world of colorful synth lines. A more powerfull and dancefloor-oriented evolution of this <a href=\"https://www.last.fm/music/jmii\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638594652, 0, 0, '2021-12-04 05:10:52', 0),
(1379012280, 'john-roberts-loren-bouchard-jim-dauterive-tobias-trost-chuck-smith-matt-beville-john-dylan-keith-bob-s-burgers', 'John Roberts, Loren Bouchard, Jim Dauterive, Tobias Trost, Chuck Smith, Matt Beville, John Dylan Keith & Bob&#39;s Burgers', '', 'https://books.apple.com/us/artist/john-roberts/1379012280?uo=4', 'John Roberts, Loren Bouchard, Jim Dauterive, Tobias Trost, Chuck Smith, Matt Beville, John Dylan Keith & Bob&#39;s Burgers', 7, 'No Description', 'No Summary', '', '1', 1638594654, 0, 0, '2021-12-04 05:10:54', 0),
(725077219, 'tobias-haug-quartett', 'Tobias Haug & Quartett', '', 'https://books.apple.com/us/author/tobias-haug/id725077219?uo=4', 'Tobias Haug & Quartett', 7, 'No Description', 'No Summary', '', '1', 1638594656, 0, 0, '2021-12-04 05:10:56', 0),
(205597208, 'tobias-burger', 'Tobias Burger', '', 'https://music.apple.com/us/artist/tobias-burger/205597208?uo=4', 'Tobias Burger', 7, ' <a href=\"https://www.last.fm/music/Tobias+Burger\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Tobias+Burger\">Read more on Last.fm</a>', '', '1', 1638594704, 0, 0, '2021-12-04 05:11:44', 0),
(430626563, 'slovetskiy', 'Slovetskiy', '', 'https://music.apple.com/us/artist/slovetskiy/430626563?uo=4', 'Slovetskiy', 7, ' <a href=\"https://www.last.fm/music/Slovetskiy\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Slovetskiy\">Read more on Last.fm</a>', '', '1', 1638594923, 0, 0, '2021-12-04 05:15:23', 0),
(1189937543, 'c4', 'C4', '', 'https://music.apple.com/us/artist/c4/1189937543?uo=4', 'C4', 7, 'There are at least seventeen bands called C4:\n1. a Hardcore band from Bulgaria\n2. A rapper from Texas, United States\n3. An electronica artist from Ohio, United States\n4. A side project of Michael Angelo Batio, a musician from Illinois, United States\n5. A DJ from China\n6. A hip-hop duo from Florida, United States\n7. A rock band from Japan\n8. an experimental artist from Belgium\n9. A rock band from the United States\n10. A reggaeton band from Chile\n11. A DJ from Hungary <a href=\"https://www.last.fm/music/C4\">Read more on Last.fm</a>', 'There are at least seventeen bands called C4:\n1. a Hardcore band from Bulgaria\n2. A rapper from Texas, United States\n3. An electronica artist from Ohio, United States\n4. A side project of Michael Angelo Batio, a musician from Illinois, United States\n5. A DJ from China\n6. A hip-hop duo from Florida, United States\n7. A rock band from Japan\n8. an experimental artist from Belgium\n9. A rock band from the United States\n10. A reggaeton band from Chile\n11. A DJ from Hungary <a href=\"https://www.last.fm/music/C4\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638594925, 0, 0, '2021-12-04 05:15:25', 0),
(455576259, 'detsl-aka-le-truk', 'Detsl aka Le Truk', '', 'https://music.apple.com/us/artist/detsl-aka-le-truk/455576259?uo=4', 'Detsl aka Le Truk', 7, ' <a href=\"https://www.last.fm/music/Detsl+aka+Le+Truk\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Detsl+aka+Le+Truk\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638594927, 0, 0, '2021-12-04 05:15:27', 0),
(1498392450, 'gres', 'Gres', '', 'https://music.apple.com/us/artist/gres/1498392450?uo=4', 'Gres', 7, ' <a href=\"https://www.last.fm/music/Gres\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Gres\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638594928, 0, 0, '2021-12-04 05:15:28', 0),
(1565970076, 'shows', 'ShowS', '', 'https://music.apple.com/us/artist/shows/1565970076?uo=4', 'ShowS', 7, ' <a href=\"https://www.last.fm/music/Shows\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Shows\">Read more on Last.fm</a>', '', '1', 1638594930, 0, 0, '2021-12-04 05:15:30', 0),
(41729021, 'nitro', 'Nitro', '', 'https://music.apple.com/us/artist/nitro/41729021?uo=4', 'Nitro', 7, 'There is more than one artist with this name:\n1) Nitro was formed by guitarist Michael Angelo Batio (ex-Holland), a neo-classical/fusion shred guitarist known to be uncannily fast. Jim Gillette is the singer, known to have a very wide range in full voice.\nHeavy metal outfit Nitro boasted \"the fastest, loudest, highest sound around\" -- frontman Jim Gillette\'s chief claim to fame was his ability to achieve a scream so high-pitched and piercing that it literally shattered the imported crystal wine goblets he carried on-stage for each performance. <a href=\"https://www.last.fm/music/Nitro\">Read more on Last.fm</a>', 'There is more than one artist with this name:\n1) Nitro was formed by guitarist Michael Angelo Batio (ex-Holland), a neo-classical/fusion shred guitarist known to be uncannily fast. Jim Gillette is the singer, known to have a very wide range in full voice.\nHeavy metal outfit Nitro boasted \"the fastest, loudest, highest sound around\" -- frontman Jim Gillette\'s chief claim to fame was his ability to achieve a scream so high-pitched and piercing that it literally shattered the imported crystal wine goblets he carried on-stage for each performance. <a href=\"https://www.last.fm/music/Nitro\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638594933, 0, 0, '2021-12-04 05:15:33', 0),
(125369309, 'lando-fiorini', 'Lando Fiorini', '', 'https://music.apple.com/us/artist/lando-fiorini/125369309?uo=4', 'Lando Fiorini', 7, 'Lando Fiorini (Leopoldo Fiorini, Rome, Italy, 27 January 1938 - 9 December 2017) was an Italian actor and singer.\nHe is known for singing songs from Rome in Italian and in the Romanesco (Roman) dialect.\n\n <a href=\"https://www.last.fm/music/Lando+Fiorini\">Read more on Last.fm</a>', 'Lando Fiorini (Leopoldo Fiorini, Rome, Italy, 27 January 1938 - 9 December 2017) was an Italian actor and singer.\nHe is known for singing songs from Rome in Italian and in the Romanesco (Roman) dialect.\n\n <a href=\"https://www.last.fm/music/Lando+Fiorini\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638594944, 0, 0, '2021-12-04 05:15:44', 0),
(593452546, 'l-officina-della-camomilla', 'L&#39;Officina della Camomilla', '', 'https://music.apple.com/us/artist/lofficina-della-camomilla/593452546?uo=4', 'L&#39;Officina della Camomilla', 7, ' <a href=\"https://www.last.fm/music/l%27officina+della+camomilla\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/l%27officina+della+camomilla\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638594948, 0, 0, '2021-12-04 05:15:48', 0),
(575910990, 'fred-de-palma', 'Fred De Palma', '', 'https://music.apple.com/us/artist/fred-de-palma/575910990?uo=4', 'Fred De Palma', 7, 'Fred De Palma, the stage name of Federico Palana (Turin, 3 November 1989) is an Italian rapper. <a href=\"https://www.last.fm/music/Fred+De+Palma\">Read more on Last.fm</a>', 'Fred De Palma, the stage name of Federico Palana (Turin, 3 November 1989) is an Italian rapper. <a href=\"https://www.last.fm/music/Fred+De+Palma\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638594938, 0, 0, '2021-12-04 05:15:38', 0),
(27044968, 'pitbull', 'Pitbull', '', 'https://music.apple.com/us/artist/pitbull/27044968?uo=4', 'Pitbull', 7, 'Armando Christian Pérez (born January 15, 1981 in Miami, Florida), better known by the stage name Pitbull , is an American rapper signed to his own label, Mr 305 Inc. The Give Me Everything (Tonight) Songfacts reports that he adopted his canine moniker because, \"They bite to lock. The dog is too stupid to lose. And they\'re outlawed in Dade County. They\'re basically everything that I am. It\'s been a constant fight.\"\n\nHis first recorded performance was on Lil Jon & the East Side Boyz album Kings of Crunk in 2002 <a href=\"https://www.last.fm/music/Pitbull\">Read more on Last.fm</a>', 'Armando Christian Pérez (born January 15, 1981 in Miami, Florida), better known by the stage name Pitbull , is an American rapper signed to his own label, Mr 305 Inc. The Give Me Everything (Tonight) Songfacts reports that he adopted his canine moniker because, \"They bite to lock. The dog is too stupid to lose. And they\'re outlawed in Dade County. They\'re basically everything that I am. It\'s been a constant fight.\"\n\nHis first recorded performance was on Lil Jon & the East Side Boyz album Kings of Crunk in 2002 <a href=\"https://www.last.fm/music/Pitbull\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595213, 0, 0, '2021-12-04 05:20:13', 0),
(321562857, 'carlos-chacho-o-terencia', 'Carlos (Chacho) O. Terencia', '', 'https://music.apple.com/us/artist/carlos-chacho-o-terencia/321562857?uo=4', 'Carlos (Chacho) O. Terencia', 7, ' <a href=\"https://www.last.fm/music/Carlos+(Chacho)+O.+Terencia\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Carlos+(Chacho)+O.+Terencia\">Read more on Last.fm</a>', '', '1', 1638595137, 0, 0, '2021-12-04 05:18:57', 0),
(129181816, 'don-miguelo', 'Don Miguelo', '', 'https://music.apple.com/us/artist/don-miguelo/129181816?uo=4', 'Don Miguelo', 7, 'Don Miguelo is a Dominican rapper in the Reggaeton genre. He became famous with his smash hit \"La Cola De Motora\" and \"Ay Que Tu Quiere\". He has recently traveled to the United States in hopes that his new album will be an even better seller than before\n\nDon Miguelo is a new singer in the Dominican Republic and he is from San Francisco De Macoris. Despite his lack of experience, he has already enjoyed some measure of success with his first hit song <a href=\"https://www.last.fm/music/Don+Miguelo\">Read more on Last.fm</a>', 'Don Miguelo is a Dominican rapper in the Reggaeton genre. He became famous with his smash hit \"La Cola De Motora\" and \"Ay Que Tu Quiere\". He has recently traveled to the United States in hopes that his new album will be an even better seller than before\n\nDon Miguelo is a new singer in the Dominican Republic and he is from San Francisco De Macoris. Despite his lack of experience, he has already enjoyed some measure of success with his first hit song <a href=\"https://www.last.fm/music/Don+Miguelo\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595180, 0, 0, '2021-12-04 05:19:40', 0),
(67745826, 'sky-blu', 'Sky Blu', '', 'https://music.apple.com/us/artist/sky-blu/67745826?uo=4', 'Sky Blu', 7, 'Skyler Austen Gordy, (born August 23, 1986) better known by his stage name Sky Blu, is an American singer, rapper, producer, DJ and dancer best known as one half of the musical duo LMFAO, with Redfoo (who is also Sky Blu\'s paternal uncle). They have recorded two albums together :Party Rock in 2009 and Sorry for Party Rocking in 2011. Sky Blu\'s grandfather is Motown founder Berry Gordy and his parents are Berry Gordy IV and Valerie Robeson.\n\nIn 2006, Sky Blu teamed up with his uncle Redfoo to form LMFAO. <a href=\"https://www.last.fm/music/Sky+Blu\">Read more on Last.fm</a>', 'Skyler Austen Gordy, (born August 23, 1986) better known by his stage name Sky Blu, is an American singer, rapper, producer, DJ and dancer best known as one half of the musical duo LMFAO, with Redfoo (who is also Sky Blu\'s paternal uncle). They have recorded two albums together :Party Rock in 2009 and Sorry for Party Rocking in 2011. Sky Blu\'s grandfather is Motown founder Berry Gordy and his parents are Berry Gordy IV and Valerie Robeson.\n\nIn 2006, Sky Blu teamed up with his uncle Redfoo to form LMFAO. <a href=\"https://www.last.fm/music/Sky+Blu\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595168, 0, 0, '2021-12-04 05:19:28', 0),
(300842104, 'lineal', 'Lineal', '', 'https://music.apple.com/us/artist/lineal/300842104?uo=4', 'Lineal', 7, ' <a href=\"https://www.last.fm/music/Lineal\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Lineal\">Read more on Last.fm</a>', '', '1', 1638595145, 0, 0, '2021-12-04 05:19:05', 0),
(723715352, 'fuego', 'Fuego', '', 'https://music.apple.com/us/artist/fuego/723715352?uo=4', 'Fuego', 7, '1. Miguel Duran:\nHearing the sounds of his father\'s instrumental harmonies and melodic tunes before his birth would only make it natural for Miguel Duran to bear the innate ability to follow in his own father\'s footsteps as a musician. On September 24th, 1981 in Washington DC, Miguel Duran was born. His father would make it a point to teach Miguel everything he knew about music. He knew it wouldn\'t be an easy task to raise a kid in a cruel harsh world, but he had faith that music would show him the right path. <a href=\"https://www.last.fm/music/Fuego\">Read more on Last.fm</a>', '1. Miguel Duran:\nHearing the sounds of his father\'s instrumental harmonies and melodic tunes before his birth would only make it natural for Miguel Duran to bear the innate ability to follow in his own father\'s footsteps as a musician. On September 24th, 1981 in Washington DC, Miguel Duran was born. His father would make it a point to teach Miguel everything he knew about music. He knew it wouldn\'t be an easy task to raise a kid in a cruel harsh world, but he had faith that music would show him the right path. <a href=\"https://www.last.fm/music/Fuego\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595203, 0, 0, '2021-12-04 05:20:03', 0),
(1517484324, 'jonathas-vieira', 'JONATHAS VIEIRA', '', 'https://music.apple.com/us/artist/jonathas-vieira/1517484324?uo=4', 'JONATHAS VIEIRA', 7, 'No Description', 'No Summary', '', '1', 1638595151, 0, 0, '2021-12-04 05:19:11', 0),
(1533161762, 'young-canario', 'Young Canario', '', 'https://music.apple.com/us/artist/young-canario/1533161762?uo=4', 'Young Canario', 7, ' <a href=\"https://www.last.fm/music/Young+Canario\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Young+Canario\">Read more on Last.fm</a>', '', '1', 1638595152, 0, 0, '2021-12-04 05:19:12', 0),
(1448542620, '-lvaro', 'Ãlvaro', '', 'https://music.apple.com/us/artist/%C3%A1lvaro/1448542620?uo=4', 'Ãlvaro', 7, ' <a href=\"https://www.last.fm/music/+noredirect/%C3%A1lvaro\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/+noredirect/%C3%A1lvaro\">Read more on Last.fm</a>', '', '1', 1638595154, 0, 0, '2021-12-04 05:19:14', 0),
(1505278036, 'ranchero-s-crew', 'Ranchero&#39;s Crew', '', 'https://music.apple.com/us/artist/rancheros-crew/1505278036?uo=4', 'Ranchero&#39;s Crew', 7, 'No Description', 'No Summary', '', '1', 1638595157, 0, 0, '2021-12-04 05:19:17', 0),
(630178833, 'el-mayor-cl-sico', 'El Mayor ClÃ¡sico', '', 'https://music.apple.com/us/artist/el-mayor-cl%C3%A1sico/630178833?uo=4', 'El Mayor ClÃ¡sico', 7, ' <a href=\"https://www.last.fm/music/El+Mayor+Cl%C3%A1sico\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/El+Mayor+Cl%C3%A1sico\">Read more on Last.fm</a>', '', '1', 1638595159, 0, 0, '2021-12-04 05:19:19', 0),
(1450952759, 'guilherme-mozart', 'Guilherme Mozart', '', 'https://music.apple.com/us/artist/guilherme-mozart/1450952759?uo=4', 'Guilherme Mozart', 7, 'No Description', 'No Summary', '', '1', 1638595165, 0, 0, '2021-12-04 05:19:25', 0),
(1458195578, 'dj-ruso', 'DJ Ruso', '', 'https://music.apple.com/us/artist/dj-ruso/1458195578?uo=4', 'DJ Ruso', 7, ' <a href=\"https://www.last.fm/music/dj+ruso\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/dj+ruso\">Read more on Last.fm</a>', '', '1', 1638595167, 0, 0, '2021-12-04 05:19:27', 0),
(272692452, 'sensato', 'Sensato', '', 'https://music.apple.com/us/artist/sensato/272692452?uo=4', 'Sensato', 7, ' <a href=\"https://www.last.fm/music/Sensato\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Sensato\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595216, 0, 0, '2021-12-04 05:20:16', 0),
(1590707965, 'vagofela', 'vagofela', '', 'https://music.apple.com/us/artist/vagofela/1590707965?uo=4', 'vagofela', 51, 'No Description', 'No Summary', '', '1', 1638595172, 0, 0, '2021-12-04 05:19:32', 0),
(726378861, 'alejandro-coronel', 'Alejandro Coronel', '', 'https://music.apple.com/us/artist/alejandro-coronel/726378861?uo=4', 'Alejandro Coronel', 7, ' <a href=\"https://www.last.fm/music/Alejandro+Coronel\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Alejandro+Coronel\">Read more on Last.fm</a>', '', '1', 1638595174, 0, 0, '2021-12-04 05:19:34', 0),
(1154134085, 'gast-n-ojeda', 'GastÃ³n Ojeda', '', 'https://music.apple.com/us/artist/gast%C3%B3n-ojeda/1154134085?uo=4', 'GastÃ³n Ojeda', 7, ' <a href=\"https://www.last.fm/music/Gast%C3%B3n+Ojeda\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Gast%C3%B3n+Ojeda\">Read more on Last.fm</a>', '', '1', 1638595176, 0, 0, '2021-12-04 05:19:36', 0),
(1471553684, 'lil-l-d', 'Lil L.$.D', '', 'https://music.apple.com/us/artist/lil-l-%24-d/1471553684?uo=4', 'Lil L.$.D', 7, ' <a href=\"https://www.last.fm/music/Lil+L.$.D\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Lil+L.$.D\">Read more on Last.fm</a>', '', '1', 1638595178, 0, 0, '2021-12-04 05:19:38', 0),
(1403433600, 'zethae', 'Zethae', '', 'https://music.apple.com/us/artist/zethae/1403433600?uo=4', 'Zethae', 7, ' <a href=\"https://www.last.fm/music/Zethae\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Zethae\">Read more on Last.fm</a>', '', '1', 1638595183, 0, 0, '2021-12-04 05:19:43', 0),
(1317501306, 'murillo-zyess', 'Murillo Zyess', '', 'https://music.apple.com/us/artist/murillo-zyess/1317501306?uo=4', 'Murillo Zyess', 7, 'Murillo Henrique Silva, better known as Murillo Zyess is a brazilian rapper and songwriter. On August 16, 2017 his debut EP No Recinto was released. In the same year, he released the single \"Liga O Mic (feat. Gu1hgo & Gloria Groove)\" with Gloria Groove and Guigo. He is a member of the hip-hop group Quebrada Queer. <a href=\"https://www.last.fm/music/Murillo+Zyess\">Read more on Last.fm</a>', 'Murillo Henrique Silva, better known as Murillo Zyess is a brazilian rapper and songwriter. On August 16, 2017 his debut EP No Recinto was released. In the same year, he released the single \"Liga O Mic (feat. Gu1hgo & Gloria Groove)\" with Gloria Groove and Guigo. He is a member of the hip-hop group Quebrada Queer. <a href=\"https://www.last.fm/music/Murillo+Zyess\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595185, 0, 0, '2021-12-04 05:19:45', 0),
(1521552116, 'los-repuestos', 'Los Repuestos', '', 'https://music.apple.com/us/artist/los-repuestos/1521552116?uo=4', 'Los Repuestos', 7, ' <a href=\"https://www.last.fm/music/Los+Repuestos\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Los+Repuestos\">Read more on Last.fm</a>', '', '1', 1638595191, 0, 0, '2021-12-04 05:19:51', 0),
(1516567641, 'allther', 'Allther', '', 'https://music.apple.com/us/artist/allther/1516567641?uo=4', 'Allther', 7, 'No Description', 'No Summary', '', '1', 1638595193, 0, 0, '2021-12-04 05:19:53', 0),
(1506020787, 'lil-flores-lv', 'Lil Flores LV', '', 'https://music.apple.com/us/artist/lil-flores-lv/1506020787?uo=4', 'Lil Flores LV', 7, 'No Description', 'No Summary', '', '1', 1638595194, 0, 0, '2021-12-04 05:19:54', 0),
(1516118499, 'fasek-beats', 'Fasek Beats', '', 'https://music.apple.com/us/artist/fasek-beats/1516118499?uo=4', 'Fasek Beats', 7, 'No Description', 'No Summary', '', '1', 1638595196, 0, 0, '2021-12-04 05:19:56', 0),
(65905778, 'spankox', 'Spankox', '', 'https://music.apple.com/us/artist/spankox/65905778?uo=4', 'Spankox', 7, '“Monday night to the club, Tuesday night to the club, Wednesday night what a headache, but I went to the club…” When five years ago the worldwide smash “To The Club” dropped on the dance world, it quickly became one of those unforgettable club anthems that achieve the rare status of “club classic”. This hit was credited to Spankox, said to be variously a “secret agent, Italian stallion, fashion model, limo driver, photographer, painter and poet”.  <a href=\"https://www.last.fm/music/Spankox\">Read more on Last.fm</a>', '“Monday night to the club, Tuesday night to the club, Wednesday night what a headache, but I went to the club…” When five years ago the worldwide smash “To The Club” dropped on the dance world, it quickly became one of those unforgettable club anthems that achieve the rare status of “club classic”. This hit was credited to Spankox, said to be variously a “secret agent, Italian stallion, fashion model, limo driver, photographer, painter and poet”.  <a href=\"https://www.last.fm/music/Spankox\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595215, 0, 0, '2021-12-04 05:20:15', 0),
(3950736, 'ellen-bukstel-kate-mcdonnell-siobhan-quinn', 'Ellen Bukstel/Kate McDonnell/Siobhan Quinn', '', 'https://music.apple.com/us/artist/rachel-bissex/3950736?uo=4', 'Ellen Bukstel/Kate McDonnell/Siobhan Quinn', 7, ' <a href=\"https://www.last.fm/music/Ellen+Bukstel%2FKate+McDonnell%2FSiobhan+Quinn\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Ellen+Bukstel%2FKate+McDonnell%2FSiobhan+Quinn\">Read more on Last.fm</a>', '', '1', 1638595440, 0, 0, '2021-12-04 05:24:00', 0),
(678408114, 'rachel-kate', 'Rachel Kate', '', 'https://music.apple.com/us/artist/rachel-kate/678408114?uo=4', 'Rachel Kate', 7, 'Feisty Power Folk from Charleston, SC. Rachel Kate (Gillon) was born in Nashville, TN and will continue to be raised. No one thinks she will ever grow up, and she probably won\'t because it\'s not real. She is a rainbow circus ninja dream catcher soul kite flying smiling river flower and a lover of all things people, music, and arts. Rachel Kate creates creations from the soul. Interested in harmony and eeri-ness-sunshine and daydreams. Rachel Kate is a way of life. Step into her world.\n <a href=\"https://www.last.fm/music/Rachel+Kate\">Read more on Last.fm</a>', 'Feisty Power Folk from Charleston, SC. Rachel Kate (Gillon) was born in Nashville, TN and will continue to be raised. No one thinks she will ever grow up, and she probably won\'t because it\'s not real. She is a rainbow circus ninja dream catcher soul kite flying smiling river flower and a lover of all things people, music, and arts. Rachel Kate creates creations from the soul. Interested in harmony and eeri-ness-sunshine and daydreams. Rachel Kate is a way of life. Step into her world.\n <a href=\"https://www.last.fm/music/Rachel+Kate\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595506, 0, 0, '2021-12-04 05:25:06', 0),
(948064445, 'rachel-ramras-rachel-bloom-max-charles-larry-dorf-mark-hamill-rachael-macfarlane-kevin-shinick-kate-micucci-jim-parsons', 'Rachel Ramras, Rachel Bloom, Max Charles, Larry Dorf, Mark Hamill, Rachael MacFarlane, Kevin Shinick, Kate Micucci & Jim Parsons', '', 'https://music.apple.com/us/artist/rachel-ramras/948064445?uo=4', 'Rachel Ramras, Rachel Bloom, Max Charles, Larry Dorf, Mark Hamill, Rachael MacFarlane, Kevin Shinick, Kate Micucci & Jim Parsons', 7, 'No Description', 'No Summary', '', '1', 1638595471, 0, 0, '2021-12-04 05:24:31', 0),
(6853442, 'mark-hamill-gilbert-gottfriedm-steve-higgins-rachel-ramras-kate-micucci-fred-armisenm-ed-asner-rachel-bloom-max-charles-larry-dorf-kevin-shinick-jim-parsonsm-rachael-macfarlane', 'Mark Hamill, Gilbert Gottfriedm, Steve Higgins, Rachel Ramras, Kate Micucci, Fred Armisenm, Ed Asner, Rachel Bloom, Max Charles, Larry Dorf, Kevin Shinick, Jim Parsonsm & Rachael MacFarlane', '', 'https://itunes.apple.com/us/artist/mark-hamill/6853442?uo=4', 'Mark Hamill, Gilbert Gottfriedm, Steve Higgins, Rachel Ramras, Kate Micucci, Fred Armisenm, Ed Asner, Rachel Bloom, Max Charles, Larry Dorf, Kevin Shinick, Jim Parsonsm & Rachael MacFarlane', 7, 'No Description', 'No Summary', '', '1', 1638595474, 0, 0, '2021-12-04 05:24:34', 0),
(633402928, 'royal-scots-dragoon-guards', 'Royal Scots Dragoon Guards', '', 'https://music.apple.com/us/artist/royal-scots-dragoon-guards/633402928?uo=4', 'Royal Scots Dragoon Guards', 7, ' A new upbeat version of Amazing Grace starts  this album.If you like the pipes a bit more modern,then this mix is for you. <a href=\"https://www.last.fm/music/+noredirect/Royal+Scots+Dragoon+Guards\">Read more on Last.fm</a>', ' A new upbeat version of Amazing Grace starts  this album.If you like the pipes a bit more modern,then this mix is for you. <a href=\"https://www.last.fm/music/+noredirect/Royal+Scots+Dragoon+Guards\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595487, 0, 0, '2021-12-04 05:24:47', 0),
(1497557126, 'lovexlost-devilcry', 'LovexLost & Devilcry', '', 'https://music.apple.com/us/artist/lovexlost/1497557126?uo=4', 'LovexLost & Devilcry', 7, 'No Description', 'No Summary', '', '1', 1638595482, 0, 0, '2021-12-04 05:24:42', 0),
(406829008, 'kate-fuglei-ross-kalling', 'Kate Fuglei & Ross Kalling', '', 'https://books.apple.com/us/artist/kate-fuglei/406829008?uo=4', 'Kate Fuglei & Ross Kalling', 7, 'No Description', 'No Summary', '', '1', 1638595500, 0, 0, '2021-12-04 05:25:00', 0),
(224312, 'rebecca-luker-patti-cohenour-laura-benanti-jeanne-lehman-lynn-pinto-julie-prosser-mary-kate-law-margaret-shafer-kristie-dale-sanders-sylvia-rhyne-nora-blackall-siri-howard-michelle-rios-betsi-morrison-martha-hawley-morgan-billings-andrea-bowen-rachel-beth', 'Rebecca Luker, Patti Cohenour, Laura Benanti, Jeanne Lehman, Lynn Pinto, Julie Prosser, Mary Kate Law, Margaret Shafer, Kristie Dale Sanders, Sylvia Rhyne, Nora Blackall, Siri Howard, Michelle Rios, Betsi Morrison, Martha Hawley, Morgan Billings, Andrea B', '', 'https://music.apple.com/us/artist/rebecca-luker/224312?uo=4', 'Rebecca Luker, Patti Cohenour, Laura Benanti, Jeanne Lehman, Lynn Pinto, Julie Prosser, Mary Kate Law, Margaret Shafer, Kristie Dale Sanders, Sylvia Rhyne, Nora Blackall, Siri Howard, Michelle Rios, Betsi Morrison, Martha Hawley, Morgan Billings, Andrea B', 7, 'No Description', 'No Summary', '', '1', 1638595501, 0, 0, '2021-12-04 05:25:01', 0),
(623600456, 'lesley-ross-james-williams', 'Lesley Ross & James Williams', '', 'https://books.apple.com/us/author/lesley-ross/id623600456?uo=4', 'Lesley Ross & James Williams', 7, 'No Description', 'No Summary', '', '1', 1638595502, 0, 0, '2021-12-04 05:25:02', 0),
(733881080, 'the-purge', 'The Purge', '', 'https://music.apple.com/us/artist/the-purge/733881080?uo=4', 'The Purge', 7, 'A prolific three-piece band/recording entity from the home counties, currently composed of Alex McCue (Drums, Guitar, Vocals), Rob  \"Spare\" Hemmens (Bass) and Christian Dollimore (Piano, Vocals).\n\nChristian and Alex met in the summer of 1999 and performed a song (\"The Ballad of the Croft\", a reworking of the Beatles\' song, \"The Ballad of John and Yoko\") at a talent show, with the help of guitarist Oliver John Holding. Meeting Spare in April 2000, they formed a comedy live act called The Bricklayers <a href=\"https://www.last.fm/music/The+Purge\">Read more on Last.fm</a>', 'A prolific three-piece band/recording entity from the home counties, currently composed of Alex McCue (Drums, Guitar, Vocals), Rob  \"Spare\" Hemmens (Bass) and Christian Dollimore (Piano, Vocals).\n\nChristian and Alex met in the summer of 1999 and performed a song (\"The Ballad of the Croft\", a reworking of the Beatles\' song, \"The Ballad of John and Yoko\") at a talent show, with the help of guitarist Oliver John Holding. Meeting Spare in April 2000, they formed a comedy live act called The Bricklayers <a href=\"https://www.last.fm/music/The+Purge\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595504, 0, 0, '2021-12-04 05:25:04', 0),
(1093572611, 'the-glossy-sisters', 'The Glossy Sisters', '', 'https://music.apple.com/us/artist/the-glossy-sisters/1093572611?uo=4', 'The Glossy Sisters', 7, ' <a href=\"https://www.last.fm/music/The+Glossy+Sisters\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/The+Glossy+Sisters\">Read more on Last.fm</a>', '', '1', 1638595820, 0, 0, '2021-12-04 05:30:20', 0),
(392602622, 'glossy-jesus', 'Glossy Jesus', '', 'https://music.apple.com/us/artist/glossy-jesus/392602622?uo=4', 'Glossy Jesus', 7, 'Glossy Jesus is Oswald van de Karbargenbock and Bernard Kraaijendonk. The duo is based in Leiden, The Netherlands. \n\nThey recorded three albums thusfar: \'And His Skimpy Angel Orchestra\' (2006), \'Legust Klein\' (2008) and The Pale Face Of Johnny McDowd (2009).\n\nEvery year the duo travels to the northern Dutch island of Ameland, where Glossy Jesus seclude themselves for a number of weeks to write and compose. The musical style of Glossy Jesus has developed <a href=\"https://www.last.fm/music/Glossy+Jesus\">Read more on Last.fm</a>', 'Glossy Jesus is Oswald van de Karbargenbock and Bernard Kraaijendonk. The duo is based in Leiden, The Netherlands. \n\nThey recorded three albums thusfar: \'And His Skimpy Angel Orchestra\' (2006), \'Legust Klein\' (2008) and The Pale Face Of Johnny McDowd (2009).\n\nEvery year the duo travels to the northern Dutch island of Ameland, where Glossy Jesus seclude themselves for a number of weeks to write and compose. The musical style of Glossy Jesus has developed <a href=\"https://www.last.fm/music/Glossy+Jesus\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595784, 0, 0, '2021-12-04 05:29:44', 0),
(3633561, 'apathy', 'Apathy', '', 'https://music.apple.com/us/artist/apathy/3633561?uo=4', 'Apathy', 7, 'There are several artists titled Apathy.\n\n1) Chad Bromley (born March 8, 1979), better known by his stage name Apathy (formerly \"The Alien Tongue\"), is a rapper and producer from Willimantic, Connecticut.\n\nHis first major release was his debut album; Eastern Philosophy in March 2006 with guest appearances from Celph Titled, Ryu, and Blue Raspberry. His second album Wanna Snuggle? was released in 2009 and his third studio album Honkey Kong was released in 2011, both to critical acclaim. <a href=\"https://www.last.fm/music/Apathy\">Read more on Last.fm</a>', 'There are several artists titled Apathy.\n\n1) Chad Bromley (born March 8, 1979), better known by his stage name Apathy (formerly \"The Alien Tongue\"), is a rapper and producer from Willimantic, Connecticut.\n\nHis first major release was his debut album; Eastern Philosophy in March 2006 with guest appearances from Celph Titled, Ryu, and Blue Raspberry. His second album Wanna Snuggle? was released in 2009 and his third studio album Honkey Kong was released in 2011, both to critical acclaim. <a href=\"https://www.last.fm/music/Apathy\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595928, 0, 0, '2021-12-04 05:32:08', 0),
(262300172, 'edmond-o-brien', 'Edmond O&#39;Brien', '', 'https://itunes.apple.com/us/artist/edmond-obrien/262300172?uo=4', 'Edmond O&#39;Brien', 7, ' <a href=\"https://www.last.fm/music/Edmond+O%27Brien\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Edmond+O%27Brien\">Read more on Last.fm</a>', '', '1', 1638595929, 0, 0, '2021-12-04 05:32:09', 0),
(46261, 'christian-mcbride', 'Christian McBride', '', 'https://music.apple.com/us/artist/christian-mcbride/46261?uo=4', 'Christian McBride', 7, 'Christian McBride (born May 31, 1972, Philadelphia, Pennsylvania) is a jazz bassist. His father, Lee Smith, is a well known Philadelphia bassist who was McBride\'s mentor. In the jazz community, McBride is widely considered one of the best bassists of his generation.\n\nMcBride has performed and recorded with a huge number of jazz legends, including Joe Henderson, Freddie Hubbard, Herbie Hancock, Roy Haynes, Pat Metheny and Chick Corea, as well as with newer musicians like Joshua Redman, Nicholas Payton, Benny Green and Sting. <a href=\"https://www.last.fm/music/Christian+McBride\">Read more on Last.fm</a>', 'Christian McBride (born May 31, 1972, Philadelphia, Pennsylvania) is a jazz bassist. His father, Lee Smith, is a well known Philadelphia bassist who was McBride\'s mentor. In the jazz community, McBride is widely considered one of the best bassists of his generation.\n\nMcBride has performed and recorded with a huge number of jazz legends, including Joe Henderson, Freddie Hubbard, Herbie Hancock, Roy Haynes, Pat Metheny and Chick Corea, as well as with newer musicians like Joshua Redman, Nicholas Payton, Benny Green and Sting. <a href=\"https://www.last.fm/music/Christian+McBride\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595931, 0, 0, '2021-12-04 05:32:11', 0),
(5042938, 'collide', 'Collide', '', 'https://music.apple.com/us/artist/collide/5042938?uo=4', 'Collide', 7, 'There are three bands using this name: a Californian electrogoth/industrial rock band, a Latvian thrash metal band and the band that  Canadian artists Tara S’Appart (Elevator) and Ron Bates (Orange Glass) were in during the early 90s.\n\nCOLLIDE: The Electrogoth/Industrial Rock Band\n\nAn Electrogoth/Industrial Rock band founded in the early nineties, in Los Angeles. The name comes from the collision of musical styles – ethereal vocals provided by kaRIN, industrial music provided by Statik. <a href=\"https://www.last.fm/music/Collide\">Read more on Last.fm</a>', 'There are three bands using this name: a Californian electrogoth/industrial rock band, a Latvian thrash metal band and the band that  Canadian artists Tara S’Appart (Elevator) and Ron Bates (Orange Glass) were in during the early 90s.\n\nCOLLIDE: The Electrogoth/Industrial Rock Band\n\nAn Electrogoth/Industrial Rock band founded in the early nineties, in Los Angeles. The name comes from the collision of musical styles – ethereal vocals provided by kaRIN, industrial music provided by Statik. <a href=\"https://www.last.fm/music/Collide\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595934, 0, 0, '2021-12-04 05:32:14', 0),
(334618707, 'elle-macho', 'Elle Macho', '', 'https://music.apple.com/us/artist/elle-macho/334618707?uo=4', 'Elle Macho', 7, 'Nashville based Elle Macho are Butterfly Boucher (bass, vocals), David Mead (guitar, vocals), and Lindsay Jamieson (drums, supporting vocals). They play a tightly compressed style of pop punk that recalls elements of X, Supergrass, Morex Optimo, and The Buzzcocks. They make a point of creating very tight vocal arrangements that are full of lustre but never turn glitzy.\n\nwww.myspace.com/ellemacho\n <a href=\"https://www.last.fm/music/Elle+Macho\">Read more on Last.fm</a>', 'Nashville based Elle Macho are Butterfly Boucher (bass, vocals), David Mead (guitar, vocals), and Lindsay Jamieson (drums, supporting vocals). They play a tightly compressed style of pop punk that recalls elements of X, Supergrass, Morex Optimo, and The Buzzcocks. They make a point of creating very tight vocal arrangements that are full of lustre but never turn glitzy.\n\nwww.myspace.com/ellemacho\n <a href=\"https://www.last.fm/music/Elle+Macho\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914076, 0, 0, '2022-03-10 12:07:56', 0),
(376032640, 'the-unknowne', 'The Unknowne', '', 'https://music.apple.com/us/artist/the-unknowne/376032640?uo=4', 'The Unknowne', 7, 'Unknowne was formed in Orlando, Florida, by James Canfield and Rich Stein.  Using lyrics and music written by James, the band has created a sound that is haunting and dramatic, as well as clear and hard hitting.  There were two albums: December and Church For the Lost.  \"Blacklace\" can be heard in the film \"The Pornographer\" by Doug Atchison.\n\n <a href=\"https://www.last.fm/music/The+Unknowne\">Read more on Last.fm</a>', 'Unknowne was formed in Orlando, Florida, by James Canfield and Rich Stein.  Using lyrics and music written by James, the band has created a sound that is haunting and dramatic, as well as clear and hard hitting.  There were two albums: December and Church For the Lost.  \"Blacklace\" can be heard in the film \"The Pornographer\" by Doug Atchison.\n\n <a href=\"https://www.last.fm/music/The+Unknowne\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595937, 0, 0, '2021-12-04 05:32:17', 0),
(4226592, 'white-wolf', 'White Wolf', '', 'https://music.apple.com/us/artist/white-wolf/4226592?uo=4', 'White Wolf', 7, 'There are three White Wolf bands; \n\n1) Rock band from the 80\'s.  Back in 1980, a band was formed in Edmonton Alberta called White Wolf. Many remember White Wolf as a talented, yet underrated Canadian Heavy Metal acts of the 1980’s. In 1984 they signed with RCA and their debut LP “Standing Alone” which went on to sell 250,000 copies worldwide.\n\nThe band enjoyed much success and toured North America and were featured on radio stations across the nation as well as Much Music in Canada and MTV in the United States. <a href=\"https://www.last.fm/music/White+Wolf\">Read more on Last.fm</a>', 'There are three White Wolf bands; \n\n1) Rock band from the 80\'s.  Back in 1980, a band was formed in Edmonton Alberta called White Wolf. Many remember White Wolf as a talented, yet underrated Canadian Heavy Metal acts of the 1980’s. In 1984 they signed with RCA and their debut LP “Standing Alone” which went on to sell 250,000 copies worldwide.\n\nThe band enjoyed much success and toured North America and were featured on radio stations across the nation as well as Much Music in Canada and MTV in the United States. <a href=\"https://www.last.fm/music/White+Wolf\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595942, 0, 0, '2021-12-04 05:32:22', 0),
(15661235, 'the-cr-xshadows', 'The CrÃ¼xshadows', '', 'https://music.apple.com/us/artist/the-cr%C3%BCxshadows/15661235?uo=4', 'The CrÃ¼xshadows', 7, 'One of the most enduring acts of the entire darkwave subculture is the Florida, USA, based group The Crüxshadows. Originally formed in 1992, The Crüxshadows have consistently delivered their positive message through the portal of synth pop hooks and dark electronics to a massive international fan base of followers. From their self-released debut, the 1993 album Night Crawls In, right through to the present, The Crüxshadows have formulated their success out of old fashioned hard work. <a href=\"https://www.last.fm/music/+noredirect/The+Cr%C3%BCxshadows\">Read more on Last.fm</a>', 'One of the most enduring acts of the entire darkwave subculture is the Florida, USA, based group The Crüxshadows. Originally formed in 1992, The Crüxshadows have consistently delivered their positive message through the portal of synth pop hooks and dark electronics to a massive international fan base of followers. From their self-released debut, the 1993 album Night Crawls In, right through to the present, The Crüxshadows have formulated their success out of old fashioned hard work. <a href=\"https://www.last.fm/music/+noredirect/The+Cr%C3%BCxshadows\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595941, 0, 0, '2021-12-04 05:32:21', 0),
(4607434, 'the-azoic', 'The Azoic', '', 'https://music.apple.com/us/artist/the-azoic/4607434?uo=4', 'The Azoic', 7, 'The Azoic is a female fronted EBM / Futurepop band originally based in Columbus, Ohio, USA and officially began in February 1996. In 1998, they signed to Nilaihah Records and began their journey...\n\n            The Azoic is:\n\n                                       Kristy Venrick\n                                              vocals, lyrics, melodies, programming, keyboards\n\n                                       Andreas Kleinert\n                                             melodies, programming, keyboards <a href=\"https://www.last.fm/music/The+Azoic\">Read more on Last.fm</a>', 'The Azoic is a female fronted EBM / Futurepop band originally based in Columbus, Ohio, USA and officially began in February 1996. In 1998, they signed to Nilaihah Records and began their journey...\n\n            The Azoic is:\n\n                                       Kristy Venrick\n                                              vocals, lyrics, melodies, programming, keyboards\n\n                                       Andreas Kleinert\n                                             melodies, programming, keyboards <a href=\"https://www.last.fm/music/The+Azoic\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595944, 0, 0, '2021-12-04 05:32:24', 0),
(78404829, 'the-razor-skyline', 'The Razor Skyline', '', 'https://music.apple.com/us/artist/the-razor-skyline/78404829?uo=4', 'The Razor Skyline', 7, 'In a world full of bands that find their sound and then go on to put out the same song and album over and over again, The RaZor Skyline reject that formula and strive to bring together disparate musical influences to create new and original albums over and over again. They\'ve been labelled goth, industrial, aggro-goth, electro goth, all of the above and none of the above. Although the band itself may defy a label, their songs have been described by many adjectives - powerful, lush, emotional, dark. <a href=\"https://www.last.fm/music/The+Razor+Skyline\">Read more on Last.fm</a>', 'In a world full of bands that find their sound and then go on to put out the same song and album over and over again, The RaZor Skyline reject that formula and strive to bring together disparate musical influences to create new and original albums over and over again. They\'ve been labelled goth, industrial, aggro-goth, electro goth, all of the above and none of the above. Although the band itself may defy a label, their songs have been described by many adjectives - powerful, lush, emotional, dark. <a href=\"https://www.last.fm/music/The+Razor+Skyline\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595945, 0, 0, '2021-12-04 05:32:25', 0),
(376032648, 'genowen', 'Genowen', '', 'https://music.apple.com/us/artist/genowen/376032648?uo=4', 'Genowen', 7, ' <a href=\"https://www.last.fm/music/Genowen\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Genowen\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595947, 0, 0, '2021-12-04 05:32:27', 0),
(1342095361, 'last-import', 'Last Import', '', 'https://music.apple.com/us/artist/last-import/1342095361?uo=4', 'Last Import', 7, ' <a href=\"https://www.last.fm/music/Last+Import\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Last+Import\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596015, 0, 0, '2021-12-04 05:33:35', 0);
INSERT INTO `tbl_artists` (`id`, `artist_seo`, `keywords`, `lastfm_url`, `itunes_url`, `artist_name`, `genere_cat`, `artist_description`, `summary`, `artist_img`, `artist_status`, `posted_date`, `latest_one`, `popular_artist`, `updated_by_itunes`, `cron_status`) VALUES
(4607412, 'gossamer', 'Gossamer', '', 'https://music.apple.com/us/artist/gossamer/4607412?uo=4', 'Gossamer', 7, 'there is more than one artist with this name:\n\n1. Gossamer was an underground gothic rock band, formed in Columbus, Ohio, USA, which was active from 1995 - 2003, known for music that defied genres as well as an ever changing lineup and sound. They were characterised by blending dance club rhythms with deep male vocals and shoegazing guitars. Known primarily as a Midwest act, although they were also successful as one of the pioneers of the downloadable internet music scene. <a href=\"https://www.last.fm/music/Gossamer\">Read more on Last.fm</a>', 'there is more than one artist with this name:\n\n1. Gossamer was an underground gothic rock band, formed in Columbus, Ohio, USA, which was active from 1995 - 2003, known for music that defied genres as well as an ever changing lineup and sound. They were characterised by blending dance club rhythms with deep male vocals and shoegazing guitars. Known primarily as a Midwest act, although they were also successful as one of the pioneers of the downloadable internet music scene. <a href=\"https://www.last.fm/music/Gossamer\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595951, 0, 0, '2021-12-04 05:32:31', 0),
(63689592, 'the-latin-kings', 'The Latin Kings', '', 'https://music.apple.com/us/artist/the-latin-kings/63689592?uo=4', 'The Latin Kings', 7, 'The Latin Kings was a Swedish hiphop/rap-group founded by Dogge Doggelito, Rodde & Dj Salla in 1993. Chepe joined the group, following Rodde parting the group and joining up with Infinite Mass.\nThe group has since parted. The lead rapper Dogge Doggelito released his first solo album in November 2007. <a href=\"https://www.last.fm/music/The+Latin+Kings\">Read more on Last.fm</a>', 'The Latin Kings was a Swedish hiphop/rap-group founded by Dogge Doggelito, Rodde & Dj Salla in 1993. Chepe joined the group, following Rodde parting the group and joining up with Infinite Mass.\nThe group has since parted. The lead rapper Dogge Doggelito released his first solo album in November 2007. <a href=\"https://www.last.fm/music/The+Latin+Kings\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595952, 0, 0, '2021-12-04 05:32:32', 0),
(4271931, 'chiwawa', 'Chiwawa', '', 'https://music.apple.com/us/artist/chiwawa/4271931?uo=4', 'Chiwawa', 7, 'CHIWAWA is Laurie, the daughter of Hungarian immigrants, and Krassy, born and raised in communist Bulgaria. The two first met when Laurie unwittingly auditioned for a newly arrived in Canada, Bulgarian band called Ping-Pong (later becoming The Clouds).\nWithin 3 months of their meeting Krassy was being deported and Laurie had no choice but to save the band. What started out as a \"greencard marriage\" blossomed from desperate measures into true love and the couple settled into the Bohemian culture of Montreal, Canada. <a href=\"https://www.last.fm/music/Chiwawa\">Read more on Last.fm</a>', 'CHIWAWA is Laurie, the daughter of Hungarian immigrants, and Krassy, born and raised in communist Bulgaria. The two first met when Laurie unwittingly auditioned for a newly arrived in Canada, Bulgarian band called Ping-Pong (later becoming The Clouds).\nWithin 3 months of their meeting Krassy was being deported and Laurie had no choice but to save the band. What started out as a \"greencard marriage\" blossomed from desperate measures into true love and the couple settled into the Bohemian culture of Montreal, Canada. <a href=\"https://www.last.fm/music/Chiwawa\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595955, 0, 0, '2021-12-04 05:32:35', 0),
(5985493, 'this-ascension', 'This Ascension', '', 'https://music.apple.com/us/artist/this-ascension/5985493?uo=4', 'This Ascension', 7, 'This Ascension was a gothic/ethereal band from Southern California formed in 1988. They released four albums on their own label Tess Records from 1989 to 1999 to major acclaim and growing popularity.\n\nThis Ascension toured the United States three times and the west coast prolifically, sharing the stage with bands including Clan of Xymox, The Jesus and Mary Chain, Chris Isaak, The Wolfgang Press, Pixies and The Stranglers.\n\nAfter Tess Records collapsed, the band signed to Projekt Records in 2001. <a href=\"https://www.last.fm/music/This+Ascension\">Read more on Last.fm</a>', 'This Ascension was a gothic/ethereal band from Southern California formed in 1988. They released four albums on their own label Tess Records from 1989 to 1999 to major acclaim and growing popularity.\n\nThis Ascension toured the United States three times and the west coast prolifically, sharing the stage with bands including Clan of Xymox, The Jesus and Mary Chain, Chris Isaak, The Wolfgang Press, Pixies and The Stranglers.\n\nAfter Tess Records collapsed, the band signed to Projekt Records in 2001. <a href=\"https://www.last.fm/music/This+Ascension\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595957, 0, 0, '2021-12-04 05:32:37', 0),
(285014065, 'queen-mary', 'Queen Mary', '', 'https://music.apple.com/us/artist/queen-mary/285014065?uo=4', 'Queen Mary', 7, ' <a href=\"https://www.last.fm/music/Queen+Mary\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Queen+Mary\">Read more on Last.fm</a>', '', '1', 1638595959, 0, 0, '2021-12-04 05:32:39', 0),
(1490159438, 'hmb', 'HMB', '', 'https://music.apple.com/us/artist/hmb/1490159438?uo=4', 'HMB', 7, 'There are at least three projects using the name HMB:\n1) In 2001, Daniel Myer (Haujobb/Clear Vision/Architect) and Victoria Lloyd (Claire Voyant/Monochrome), as HMB set out to create a new boundary for experimentation. Fusing elements of EBM, techno and trance with the elegant vocal styling of Victoria along with the distinctive programming and arrangements of Daniel has made their debut album Great Industrial Love Affairs a beautifully crafted masterpiece. <a href=\"https://www.last.fm/music/HMB\">Read more on Last.fm</a>', 'There are at least three projects using the name HMB:\n1) In 2001, Daniel Myer (Haujobb/Clear Vision/Architect) and Victoria Lloyd (Claire Voyant/Monochrome), as HMB set out to create a new boundary for experimentation. Fusing elements of EBM, techno and trance with the elegant vocal styling of Victoria along with the distinctive programming and arrangements of Daniel has made their debut album Great Industrial Love Affairs a beautifully crafted masterpiece. <a href=\"https://www.last.fm/music/HMB\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595962, 0, 0, '2021-12-04 05:32:42', 0),
(983775616, 'spike-lee-s-lil-joints', 'Spike Lee&#39;s Lil&#39; Joints', '', 'https://itunes.apple.com/us/tv-show/spike-lees-lil-joints/id983775616?uo=4', 'Spike Lee&#39;s Lil&#39; Joints', 7, 'No Description', 'No Summary', '', '1', 1638595963, 0, 0, '2021-12-04 05:32:43', 0),
(279927860, 'parsons---thibaud', 'Parsons - Thibaud', '', 'https://music.apple.com/us/artist/parsons-thibaud/279927860?uo=4', 'Parsons - Thibaud', 7, ' <a href=\"https://www.last.fm/music/+noredirect/Parsons+-+Thibaud\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/+noredirect/Parsons+-+Thibaud\">Read more on Last.fm</a>', '', '1', 1638595969, 0, 0, '2021-12-04 05:32:49', 0),
(411758505, 'lance-jyo', 'Lance Jyo', '', 'https://music.apple.com/us/artist/lance-jyo/411758505?uo=4', 'Lance Jyo', 7, ' <a href=\"https://www.last.fm/music/Lance+Jyo\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Lance+Jyo\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595967, 0, 0, '2021-12-04 05:32:47', 0),
(296612051, 'absentia', 'Absentia', '', 'https://music.apple.com/us/artist/absentia/296612051?uo=4', 'Absentia', 7, 'Absentia is a Romanian darkwave project  started by Angor and Moerder in 2005.I can\'t tell if they are dead or not.\nhttp://www.myspace.com/absentiaro \n\nIt\'s also a black / death metal band from Oviedo, Spain <a href=\"https://www.last.fm/music/Absentia\">Read more on Last.fm</a>', 'Absentia is a Romanian darkwave project  started by Angor and Moerder in 2005.I can\'t tell if they are dead or not.\nhttp://www.myspace.com/absentiaro \n\nIt\'s also a black / death metal band from Oviedo, Spain <a href=\"https://www.last.fm/music/Absentia\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595971, 0, 0, '2021-12-04 05:32:51', 0),
(21300101, 'joseph-parsons', 'Joseph Parsons', '', 'https://music.apple.com/us/artist/joseph-parsons/21300101?uo=4', 'Joseph Parsons', 7, 'Joseph Parsons is an independent American songwriter & recording artist based in Europe. Originally from the musical city of Philadelphia, he has been living in Northern Europe since 2007. Parsons has made his name by consistently delivering exceptional song driven studio & live CD’s along with a rigorous touring schedule.\n\nParsons records and tours internationally as the Joseph Parsons Band with drummer Sven Hansen (Hilden, Germany), bass player & vocalist Freddi Lubitz (Köln <a href=\"https://www.last.fm/music/Joseph+Parsons\">Read more on Last.fm</a>', 'Joseph Parsons is an independent American songwriter & recording artist based in Europe. Originally from the musical city of Philadelphia, he has been living in Northern Europe since 2007. Parsons has made his name by consistently delivering exceptional song driven studio & live CD’s along with a rigorous touring schedule.\n\nParsons records and tours internationally as the Joseph Parsons Band with drummer Sven Hansen (Hilden, Germany), bass player & vocalist Freddi Lubitz (Köln <a href=\"https://www.last.fm/music/Joseph+Parsons\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595973, 0, 0, '2021-12-04 05:32:53', 0),
(251856196, 'import1', 'Import1', '', 'https://music.apple.com/us/artist/import1/251856196?uo=4', 'Import1', 7, ' <a href=\"https://www.last.fm/music/Import1\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Import1\">Read more on Last.fm</a>', '', '1', 1638595974, 0, 0, '2021-12-04 05:32:54', 0),
(282704336, 'latin-kings', 'Latin Kings', '', 'https://music.apple.com/us/artist/latin-kings/282704336?uo=4', 'Latin Kings', 7, ' <a href=\"https://www.last.fm/music/+noredirect/Latin+Kings\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/+noredirect/Latin+Kings\">Read more on Last.fm</a>', '', '1', 1638595976, 0, 0, '2021-12-04 05:32:56', 0),
(129942319, 'import-1', 'Import #1', '', 'https://music.apple.com/us/artist/import-1/129942319?uo=4', 'Import #1', 7, 'No Description', 'No Summary', '', '1', 1638595986, 0, 0, '2021-12-04 05:33:06', 0),
(14763008, 'subsystem', 'Subsystem', '', 'https://music.apple.com/us/artist/subsystem/14763008?uo=4', 'Subsystem', 7, ' <a href=\"https://www.last.fm/music/Subsystem\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Subsystem\">Read more on Last.fm</a>', '', '1', 1638595983, 0, 0, '2021-12-04 05:33:03', 0),
(216657963, 'liaisons-d', 'Liaisons D', '', 'https://music.apple.com/us/artist/liaisons-d/216657963?uo=4', 'Liaisons D', 7, 'Belgium techno group founded in 1989. Major members are Paul Ward and Sven Van Hees. Other members are Frank De Wulf, J.P. Ruelle, Jan Van Den Bergh and Marcos Salon.\n\nEPs\n1989 Faces of Horror \n1989 Heart-Beat \n1990 Por la patria / Stress Free\n1990 Sirenas / He Chilled Out\n\nCD\n1992 Submerged in Sound\n\nNot to be mistaken with German electronic band Liaisons Dangereuses. <a href=\"https://www.last.fm/music/Liaisons+D\">Read more on Last.fm</a>', 'Belgium techno group founded in 1989. Major members are Paul Ward and Sven Van Hees. Other members are Frank De Wulf, J.P. Ruelle, Jan Van Den Bergh and Marcos Salon.\n\nEPs\n1989 Faces of Horror \n1989 Heart-Beat \n1990 Por la patria / Stress Free\n1990 Sirenas / He Chilled Out\n\nCD\n1992 Submerged in Sound\n\nNot to be mistaken with German electronic band Liaisons Dangereuses. <a href=\"https://www.last.fm/music/Liaisons+D\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595994, 0, 0, '2021-12-04 05:33:14', 0),
(814572, 'ben-folds-five', 'Ben Folds Five', '', 'https://music.apple.com/us/artist/ben-folds-five/814572?uo=4', 'Ben Folds Five', 7, 'Ben Folds Five is a trio formed in Chapel Hill, North Carolina, United States in 1994, who until their breakup in 2000 were a mainstay of Piano rock. Much of their work was influenced by jazz, evident in frequent improv-styled passages through bridge and/or ending.\n\nThe members of the band are Ben Folds, the lead singer and pianist, who also wrote most of the songs; Robert Sledge on bass; and Darren Jessee on drums. The group enjoyed the success of the single Brick in 1997 <a href=\"https://www.last.fm/music/Ben+Folds+Five\">Read more on Last.fm</a>', 'Ben Folds Five is a trio formed in Chapel Hill, North Carolina, United States in 1994, who until their breakup in 2000 were a mainstay of Piano rock. Much of their work was influenced by jazz, evident in frequent improv-styled passages through bridge and/or ending.\n\nThe members of the band are Ben Folds, the lead singer and pianist, who also wrote most of the songs; Robert Sledge on bass; and Darren Jessee on drums. The group enjoyed the success of the single Brick in 1997 <a href=\"https://www.last.fm/music/Ben+Folds+Five\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596014, 0, 0, '2021-12-04 05:33:34', 0),
(281399584, 'the-david-neil-cline-band', 'The David Neil Cline Band', '', 'https://music.apple.com/us/artist/the-david-neil-cline-band/281399584?uo=4', 'The David Neil Cline Band', 7, '\n <a href=\"https://www.last.fm/music/The+David+Neil+Cline+Band\">Read more on Last.fm</a>', '\n <a href=\"https://www.last.fm/music/The+David+Neil+Cline+Band\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595991, 0, 0, '2021-12-04 05:33:11', 0),
(963842106, 'mappa-mundi', 'Mappa Mundi', '', 'https://music.apple.com/us/artist/mappa-mundi/963842106?uo=4', 'Mappa Mundi', 7, 'This is rock music played by a chamber ensemble or chamber music played by a rock band. Depending.\n\nUnder the leadership of Songwriter, Singer and Trumpet player, Adam Levine, Mappa Mundi plays in the mode of other current Chamber Pop acts such as the Magnetic Fields, Mirah, Devotchka, the Decemberists, Andrew Bird, David Byrne, Regina Spektor and Joanna Newsom. They call equally on New York\'s art-rock and post-punk traditions for taut and snarky songcraft as well as on Bach <a href=\"https://www.last.fm/music/Mappa+Mundi\">Read more on Last.fm</a>', 'This is rock music played by a chamber ensemble or chamber music played by a rock band. Depending.\n\nUnder the leadership of Songwriter, Singer and Trumpet player, Adam Levine, Mappa Mundi plays in the mode of other current Chamber Pop acts such as the Magnetic Fields, Mirah, Devotchka, the Decemberists, Andrew Bird, David Byrne, Regina Spektor and Joanna Newsom. They call equally on New York\'s art-rock and post-punk traditions for taut and snarky songcraft as well as on Bach <a href=\"https://www.last.fm/music/Mappa+Mundi\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638595992, 0, 0, '2021-12-04 05:33:12', 0),
(135077842, 'sven-van-hees', 'Sven van Hees', '', 'https://music.apple.com/us/artist/sven-van-hees/135077842?uo=4', 'Sven van Hees', 7, 'SVEN VAN HEES, born in Antwerp Belgium, May 1968.\n\nVan Hees\' influences include Gabor Szabo, Lonnie Liston Smith, Azymuth, Herbie Hancock,\nMulate Astatke, Kleeer, Willie hutch...\n\nWorked on local pirate radio at age 15 an made his mark by producing & mixing  Belgium\'s first ever Radio-Dance show \'Liaisons dangereuses\', together with host Paul Ward.\n\nStarted producing records in 1989 for several labels such as USA Import, Atom, Elektron and was one <a href=\"https://www.last.fm/music/Sven+Van+Hees\">Read more on Last.fm</a>', 'SVEN VAN HEES, born in Antwerp Belgium, May 1968.\n\nVan Hees\' influences include Gabor Szabo, Lonnie Liston Smith, Azymuth, Herbie Hancock,\nMulate Astatke, Kleeer, Willie hutch...\n\nWorked on local pirate radio at age 15 an made his mark by producing & mixing  Belgium\'s first ever Radio-Dance show \'Liaisons dangereuses\', together with host Paul Ward.\n\nStarted producing records in 1989 for several labels such as USA Import, Atom, Elektron and was one <a href=\"https://www.last.fm/music/Sven+Van+Hees\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596001, 0, 0, '2021-12-04 05:33:21', 0),
(385843003, 'momy-levy', 'Momy Levy', '', 'https://music.apple.com/us/artist/momy-levy/385843003?uo=4', 'Momy Levy', 7, ' <a href=\"https://www.last.fm/music/Momy+Levy\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Momy+Levy\">Read more on Last.fm</a>', '', '1', 1638595998, 0, 0, '2021-12-04 05:33:18', 0),
(255273792, 'liza-n-eliaz', 'Liza N&#39; Eliaz', '', 'https://music.apple.com/us/artist/liza-n-eliaz/255273792?uo=4', 'Liza N&#39; Eliaz', 7, ' <a href=\"https://www.last.fm/music/Liza+N%27+Eliaz\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Liza+N%27+Eliaz\">Read more on Last.fm</a>', '', '1', 1638596003, 0, 0, '2021-12-04 05:33:23', 0),
(255455869, 'strongheads', 'Strongheads', '', 'https://music.apple.com/us/artist/strongheads/255455869?uo=4', 'Strongheads', 7, ' <a href=\"https://www.last.fm/music/Strongheads\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Strongheads\">Read more on Last.fm</a>', '', '1', 1638596005, 0, 0, '2021-12-04 05:33:25', 0),
(269040180, 'deck-8-9', 'Deck 8-9', '', 'https://music.apple.com/us/artist/deck-8-9/269040180?uo=4', 'Deck 8-9', 7, ' <a href=\"https://www.last.fm/music/Deck+8-9\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Deck+8-9\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596007, 0, 0, '2021-12-04 05:33:27', 0),
(396377227, 'kris-bowers', 'Kris Bowers', '', 'https://music.apple.com/us/artist/kris-bowers/396377227?uo=4', 'Kris Bowers', 7, 'Kristopher Bowers (born 1989) is an American composer and pianist who has composed scores for films, video games, television and documentaries including Green Book, Madden NFL, Dear White People, and Kobe Bryant\'s Muse. He has recorded, performed, and collaborated with the likes of Jay-Z, Kanye West, and José James. He won the Thelonious Monk International Jazz Piano Competition in 2011 and a Daytime Emmy Award for Outstanding Music Direction and Composition in 2017 for The Snowy Day. <a href=\"https://www.last.fm/music/Kris+Bowers\">Read more on Last.fm</a>', 'Kristopher Bowers (born 1989) is an American composer and pianist who has composed scores for films, video games, television and documentaries including Green Book, Madden NFL, Dear White People, and Kobe Bryant\'s Muse. He has recorded, performed, and collaborated with the likes of Jay-Z, Kanye West, and José James. He won the Thelonious Monk International Jazz Piano Competition in 2011 and a Daytime Emmy Award for Outstanding Music Direction and Composition in 2017 for The Snowy Day. <a href=\"https://www.last.fm/music/Kris+Bowers\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596008, 0, 0, '2021-12-04 05:33:28', 0),
(57830323, 'bylli-crayone', 'Bylli Crayone', '', 'https://music.apple.com/us/artist/bylli-crayone/57830323?uo=4', 'Bylli Crayone', 7, 'Bylli Crayone, this \"Colorful\" individual was born and raised in Lawrence, Massachusetts - a city best known for its Latin and hip-hop culture. Raised by his mother, he was encouraged in the belief that with hard work and dedication he could and would realize his goals in life. Inspired by the work of 80s icons Cyndi Lauper and Boy George, Bylli began his pursuit of a music career in high school, when he and his friend Jose Aponte formed the short-lived but memorable dance group The Sound System <a href=\"https://www.last.fm/music/Bylli+Crayone\">Read more on Last.fm</a>', 'Bylli Crayone, this \"Colorful\" individual was born and raised in Lawrence, Massachusetts - a city best known for its Latin and hip-hop culture. Raised by his mother, he was encouraged in the belief that with hard work and dedication he could and would realize his goals in life. Inspired by the work of 80s icons Cyndi Lauper and Boy George, Bylli began his pursuit of a music career in high school, when he and his friend Jose Aponte formed the short-lived but memorable dance group The Sound System <a href=\"https://www.last.fm/music/Bylli+Crayone\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914404, 0, 0, '2022-03-10 12:13:24', 0),
(463277, 'ben-folds', 'Ben Folds', '', 'https://music.apple.com/us/artist/ben-folds/463277?uo=4', 'Ben Folds', 7, 'Benjamin Scott Folds (born September 12, 1966, in Winston-Salem, North Carolina) is an American singer-songwriter. He is widely known for his prowess as a pianist. Ben Folds\' musical career started to get off the ground in the late \'80s, as bassist for band Majosha, after playing bass and piano at Pinehurst, in a group known as the \"Caroliners\" with cohort Millard Powers in 1985-1987; he also played drums as a session musician in Nashville. As well as appearing in Pots & Pans - now known as the Snuzz demo <a href=\"https://www.last.fm/music/Ben+Folds\">Read more on Last.fm</a>', 'Benjamin Scott Folds (born September 12, 1966, in Winston-Salem, North Carolina) is an American singer-songwriter. He is widely known for his prowess as a pianist. Ben Folds\' musical career started to get off the ground in the late \'80s, as bassist for band Majosha, after playing bass and piano at Pinehurst, in a group known as the \"Caroliners\" with cohort Millard Powers in 1985-1987; he also played drums as a session musician in Nashville. As well as appearing in Pots & Pans - now known as the Snuzz demo <a href=\"https://www.last.fm/music/Ben+Folds\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596012, 0, 0, '2021-12-04 05:33:32', 0),
(99953189, 'quarteto-maogani', 'Quarteto Maogani', '', 'https://music.apple.com/us/artist/quarteto-maogani/99953189?uo=4', 'Quarteto Maogani', 7, ' <a href=\"https://www.last.fm/music/Quarteto+Maogani\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Quarteto+Maogani\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596208, 0, 0, '2021-12-04 05:36:48', 0),
(1087977038, 'anna-paes', 'Anna Paes', '', 'https://music.apple.com/us/artist/anna-paes/1087977038?uo=4', 'Anna Paes', 7, ' <a href=\"https://www.last.fm/music/Anna+Paes\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Anna+Paes\">Read more on Last.fm</a>', '', '1', 1638596134, 0, 0, '2021-12-04 05:35:34', 0),
(718110948, 'arthur-dutra', 'Arthur Dutra', '', 'https://music.apple.com/us/artist/arthur-dutra/718110948?uo=4', 'Arthur Dutra', 7, ' <a href=\"https://www.last.fm/music/Arthur+Dutra\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Arthur+Dutra\">Read more on Last.fm</a>', '', '1', 1638596145, 0, 0, '2021-12-04 05:35:45', 0),
(117320263, 'alfredo-del-penho', 'Alfredo Del-Penho', '', 'https://music.apple.com/us/artist/alfredo-del-penho/117320263?uo=4', 'Alfredo Del-Penho', 7, ' <a href=\"https://www.last.fm/music/Alfredo+Del-Penho\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Alfredo+Del-Penho\">Read more on Last.fm</a>', '', '1', 1638596151, 0, 0, '2021-12-04 05:35:51', 0),
(368551172, 'marcela-velon', 'Marcela Velon', '', 'https://music.apple.com/us/artist/marcela-velon/368551172?uo=4', 'Marcela Velon', 7, ' <a href=\"https://www.last.fm/music/Marcela+Velon\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Marcela+Velon\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596152, 0, 0, '2021-12-04 05:35:52', 0),
(99952647, 'hamilton-de-holanda', 'Hamilton de Holanda', '', 'https://music.apple.com/us/artist/hamilton-de-holanda/99952647?uo=4', 'Hamilton de Holanda', 7, 'Hamilton de Holanda (born in Rio de Janeiro on 30 March 1976) is a Brazilian bandolinist known for his mixture of choro and contemporary jazz, and for his instrumental virtuosity. As well as solo recordings, he has recorded a number of collaborations including the pairing Mike Marshall & Hamilton de Holanda.\n\nVigoroso, virtuoso, brilhante, sensível, único são alguns dos adjetivos constantes na carreira deste músico que reinventa o bandolim. Hamilton de Holanda é um artista versátil <a href=\"https://www.last.fm/music/Hamilton+de+Holanda\">Read more on Last.fm</a>', 'Hamilton de Holanda (born in Rio de Janeiro on 30 March 1976) is a Brazilian bandolinist known for his mixture of choro and contemporary jazz, and for his instrumental virtuosity. As well as solo recordings, he has recorded a number of collaborations including the pairing Mike Marshall & Hamilton de Holanda.\n\nVigoroso, virtuoso, brilhante, sensível, único são alguns dos adjetivos constantes na carreira deste músico que reinventa o bandolim. Hamilton de Holanda é um artista versátil <a href=\"https://www.last.fm/music/Hamilton+de+Holanda\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596158, 0, 0, '2021-12-04 05:35:58', 0),
(1202059821, 'giovanni-iasi-luisa-lacerda', 'Giovanni Iasi & Luisa Lacerda', '', 'https://music.apple.com/us/artist/giovanni-iasi/1202059821?uo=4', 'Giovanni Iasi & Luisa Lacerda', 7, 'No Description', 'No Summary', '', '1', 1638596160, 0, 0, '2021-12-04 05:36:00', 0),
(4587835, 'maogani', 'Maogani', '', 'https://music.apple.com/us/artist/maogani/4587835?uo=4', 'Maogani', 7, ' <a href=\"https://www.last.fm/music/Maogani\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Maogani\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596215, 0, 0, '2021-12-04 05:36:55', 0),
(219485, 'guinga', 'Guinga', '', 'https://music.apple.com/us/artist/guinga/219485?uo=4', 'Guinga', 7, 'Guinga (Carlos Althier de Souza Lemos Escobar) (born June 10, 1950) is a Brazilian guitarist and composer born in Madureira, a working-class suburb of Rio de Janeiro.\n\nPale skinnned as a little boy, he was called \"Gringo\" by family members. Repeating the nickname, the child said \"Guinga,\" which would become his artistic name.\n\nHis uncle taught him to play the guitar when he was eleven years old. Guinga began composing music at the age of 14. In 1967 <a href=\"https://www.last.fm/music/Guinga\">Read more on Last.fm</a>', 'Guinga (Carlos Althier de Souza Lemos Escobar) (born June 10, 1950) is a Brazilian guitarist and composer born in Madureira, a working-class suburb of Rio de Janeiro.\n\nPale skinnned as a little boy, he was called \"Gringo\" by family members. Repeating the nickname, the child said \"Guinga,\" which would become his artistic name.\n\nHis uncle taught him to play the guitar when he was eleven years old. Guinga began composing music at the age of 14. In 1967 <a href=\"https://www.last.fm/music/Guinga\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596181, 0, 0, '2021-12-04 05:36:21', 0),
(24828478, 'mpb4-quarteto-maogani', 'MPB4 & Quarteto Maogani', '', 'https://music.apple.com/us/artist/mpb4/24828478?uo=4', 'MPB4 & Quarteto Maogani', 7, 'No Description', 'No Summary', '', '1', 1646914268, 0, 0, '2022-03-10 12:11:08', 0),
(273552433, 'fania-all-stars', 'Fania All-Stars', '', 'https://music.apple.com/us/artist/fania-all-stars/273552433?uo=4', 'Fania All-Stars', 7, 'Fania All-Stars was a salsa group established in 1968 by Johnny Pacheco as a showcase for the leading musicians and singers of the record label Fania Records, the leading salsa record company of the time.\n\n1971\'s Fania All Stars Live At The Cheetah volumes one and two became the biggest selling Latin albums ever produced by one group from one concert, Produced by Larry Harlow.\n\nAmong the many salsa musicians that performed with the group were Conga players <a href=\"https://www.last.fm/music/Fania+All-Stars\">Read more on Last.fm</a>', 'Fania All-Stars was a salsa group established in 1968 by Johnny Pacheco as a showcase for the leading musicians and singers of the record label Fania Records, the leading salsa record company of the time.\n\n1971\'s Fania All Stars Live At The Cheetah volumes one and two became the biggest selling Latin albums ever produced by one group from one concert, Produced by Larry Harlow.\n\nAmong the many salsa musicians that performed with the group were Conga players <a href=\"https://www.last.fm/music/Fania+All-Stars\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596489, 0, 0, '2021-12-04 05:41:29', 0),
(321987, 'tito-rodr-guez', 'Tito RodrÃ­guez', '', 'https://music.apple.com/us/artist/tito-rodr%C3%ADguez/321987?uo=4', 'Tito RodrÃ­guez', 7, 'Tito Rodriguez (Jan 4 1923 - Feb 28 1973) was one of the great Puerto Rican singer songwriters of the Latin, afro-cuban, mambo explosion during the 1950\'s and one of  the major headliners (ex: The Palladium nightclub) in competition and fierce rivalry with Tito Puente during that time and into the 1960s \n\nTR could do it all; sing, write, was an excellent musician and dancer. Some of his signature songs are “Vuela La Paloma”, “Cuando, Cuando” and “Cara De Payaso”, <a href=\"https://www.last.fm/music/+noredirect/Tito+Rodr%C3%ADguez\">Read more on Last.fm</a>', 'Tito Rodriguez (Jan 4 1923 - Feb 28 1973) was one of the great Puerto Rican singer songwriters of the Latin, afro-cuban, mambo explosion during the 1950\'s and one of  the major headliners (ex: The Palladium nightclub) in competition and fierce rivalry with Tito Puente during that time and into the 1960s \n\nTR could do it all; sing, write, was an excellent musician and dancer. Some of his signature songs are “Vuela La Paloma”, “Cuando, Cuando” and “Cara De Payaso”, <a href=\"https://www.last.fm/music/+noredirect/Tito+Rodr%C3%ADguez\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596512, 0, 0, '2021-12-04 05:41:52', 0),
(91655044, 'los-hispanos-tito-rodriguez-and-his-orchestra', 'Los Hispanos & Tito Rodriguez And His Orchestra', '', 'https://music.apple.com/us/artist/los-hispanos/91655044?uo=4', 'Los Hispanos & Tito Rodriguez And His Orchestra', 7, 'No Description', 'No Summary', '', '1', 1638596514, 0, 0, '2021-12-04 05:41:54', 0),
(1311894, 'gilberto-santa-rosa', 'Gilberto Santa Rosa', '', 'https://music.apple.com/us/artist/gilberto-santa-rosa/1311894?uo=4', 'Gilberto Santa Rosa', 7, 'Gilberto Santa Rosa was born on 21 August 1962, in Puerto Rico and today is known as \"El Caballero de la Salsa\" (the gentleman of salsa).\n\nIn 1976 he started with a group of amateurs in Puerto Rico, and his first recording was with the Mario Ortiz Orchestra. He then moved on to Orquesta La Grande, and during the two years Gilberto was with them, he met Mr. Elias Lopés who later helped mold and polish the promising young singer, releasing three recordings. <a href=\"https://www.last.fm/music/Gilberto+Santa+Rosa\">Read more on Last.fm</a>', 'Gilberto Santa Rosa was born on 21 August 1962, in Puerto Rico and today is known as \"El Caballero de la Salsa\" (the gentleman of salsa).\n\nIn 1976 he started with a group of amateurs in Puerto Rico, and his first recording was with the Mario Ortiz Orchestra. He then moved on to Orquesta La Grande, and during the two years Gilberto was with them, he met Mr. Elias Lopés who later helped mold and polish the promising young singer, releasing three recordings. <a href=\"https://www.last.fm/music/Gilberto+Santa+Rosa\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914753, 0, 0, '2022-03-10 12:19:13', 0),
(30903196, 'vitin-aviles-tito-rodr-guez', 'Vitin Aviles & Tito RodrÃ­guez', '', 'https://music.apple.com/us/artist/vitin-aviles/30903196?uo=4', 'Vitin Aviles & Tito RodrÃ­guez', 7, 'No Description', 'No Summary', '', '1', 1638596441, 0, 0, '2021-12-04 05:40:41', 0),
(73944251, 'myrta-silva', 'Myrta Silva', '', 'https://music.apple.com/us/artist/myrta-silva/73944251?uo=4', 'Myrta Silva', 7, ' <a href=\"https://www.last.fm/music/Myrta+Silva\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Myrta+Silva\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638596447, 0, 0, '2021-12-04 05:40:47', 0),
(133539433, 'los-montemar-quartet', 'Los Montemar Quartet', '', 'https://music.apple.com/us/artist/los-montemar-quartet/133539433?uo=4', 'Los Montemar Quartet', 7, ' <a href=\"https://www.last.fm/music/Los+Montemar+Quartet\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Los+Montemar+Quartet\">Read more on Last.fm</a>', '', '1', 1638596455, 0, 0, '2021-12-04 05:40:55', 0),
(40867148, 'orquesta-melodia', 'Orquesta Melodia', '', 'https://music.apple.com/us/artist/orquesta-melodia/40867148?uo=4', 'Orquesta Melodia', 7, ' <a href=\"https://www.last.fm/music/Orquesta+Melodia\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Orquesta+Melodia\">Read more on Last.fm</a>', '', '1', 1638596459, 0, 0, '2021-12-04 05:40:59', 0),
(1490992837, 'ray-castro-tito-nieves', 'Ray Castro & Tito Nieves', '', 'https://music.apple.com/us/artist/ray-castro/1490992837?uo=4', 'Ray Castro & Tito Nieves', 7, 'No Description', 'No Summary', '', '1', 1638596468, 0, 0, '2021-12-04 05:41:08', 0),
(132280, 'pablo-milan-s-tito-rodr-guez', 'Pablo MilanÃ©s & Tito RodrÃ­guez', '', 'https://music.apple.com/us/artist/pablo-milan%C3%A9s/132280?uo=4', 'Pablo MilanÃ©s & Tito RodrÃ­guez', 7, 'No Description', 'No Summary', '', '1', 1638596491, 0, 0, '2021-12-04 05:41:31', 0),
(331537959, 'noggeler-guuggenmusig-luzern', 'Noggeler Guuggenmusig Luzern', '', 'https://music.apple.com/us/artist/noggeler-guuggenmusig-luzern/331537959?uo=4', 'Noggeler Guuggenmusig Luzern', 7, ' <a href=\"https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern\">Read more on Last.fm</a>', '', '1', 1638600249, 0, 0, '2021-12-04 06:44:09', 0),
(87055334, 'andrea-echeverri-aterciopelados', 'Andrea Echeverri & Aterciopelados', '', 'https://music.apple.com/us/artist/andrea-echeverri-aterciopelados/87055334?uo=4', 'Andrea Echeverri & Aterciopelados', 7, 'No Description', 'No Summary', '', '1', 1638600416, 0, 0, '2021-12-04 06:46:56', 0),
(296208, 'aterciopelados-catalina-garc-a-superlitio', 'Aterciopelados, Catalina GarcÃ­a & Superlitio', '', 'https://music.apple.com/us/artist/aterciopelados/296208?uo=4', 'Aterciopelados, Catalina GarcÃ­a & Superlitio', 7, 'No Description', 'No Summary', '', '1', 1638600418, 0, 0, '2021-12-04 06:46:58', 0),
(365790486, 'solomon-lange', 'solomon lange', '', 'https://music.apple.com/us/artist/solomon-lange/365790486?uo=4', 'solomon lange', 7, ' <a href=\"https://www.last.fm/music/Solomon+Lange\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Solomon+Lange\">Read more on Last.fm</a>', '', '1', 1638600736, 0, 0, '2021-12-04 06:52:16', 0),
(1562824394, 'martha-gordon-osagiede', 'Martha Gordon-Osagiede', '', 'https://music.apple.com/us/artist/martha-gordon-osagiede/1562824394?uo=4', 'Martha Gordon-Osagiede', 7, 'No Description', 'No Summary', '', '1', 1638600658, 0, 0, '2021-12-04 06:50:58', 0),
(1032937894, 'steve-williz', 'Steve Williz', '', 'https://music.apple.com/us/artist/steve-williz/1032937894?uo=4', 'Steve Williz', 7, ' <a href=\"https://www.last.fm/music/Steve+Williz\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Steve+Williz\">Read more on Last.fm</a>', '', '1', 1638600664, 0, 0, '2021-12-04 06:51:04', 0),
(1553098970, 'adi-eze-of-africa', 'Adi Eze of Africa', '', 'https://music.apple.com/us/artist/adi-eze-of-africa/1553098970?uo=4', 'Adi Eze of Africa', 7, 'No Description', 'No Summary', '', '1', 1638600668, 0, 0, '2021-12-04 06:51:08', 0),
(1436995840, 'steve-williz', 'Steve Williz', '', 'https://music.apple.com/us/artist/steve-williz/1436995840?uo=4', 'Steve Williz', 7, ' <a href=\"https://www.last.fm/music/Steve+Williz\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Steve+Williz\">Read more on Last.fm</a>', '', '1', 1638600693, 0, 0, '2021-12-04 06:51:33', 0),
(1557668166, 'chris-morgan', 'Chris Morgan', '', 'https://music.apple.com/us/artist/chris-morgan/1557668166?uo=4', 'Chris Morgan', 7, '\n \n\n\nChris Morgan’s discography reflects his passion to create resources for the body of Christ –the church- that leads people into an honest and intimate relationship with their creator. He is the president of Worship Nation (also known as Worship on the hills of Africa) and the CEO of Apples of Gold Records and the Star Breeders academy (SBA). He is also the Host of the Worship Rain Conference and ChrisMorganMTS Foundation, (Ministering to the suffering - Orphanages, Widows, the Poor and the Hungry). <a href=\"https://www.last.fm/music/Chris+Morgan\">Read more on Last.fm</a>', '\n \n\n\nChris Morgan’s discography reflects his passion to create resources for the body of Christ –the church- that leads people into an honest and intimate relationship with their creator. He is the president of Worship Nation (also known as Worship on the hills of Africa) and the CEO of Apples of Gold Records and the Star Breeders academy (SBA). He is also the Host of the Worship Rain Conference and ChrisMorganMTS Foundation, (Ministering to the suffering - Orphanages, Widows, the Poor and the Hungry). <a href=\"https://www.last.fm/music/Chris+Morgan\">Read more on Last.fm</a>', '', '1', 1638600695, 0, 0, '2021-12-04 06:51:35', 0),
(254029430, 'bouqui', 'Bouqui', '', 'https://music.apple.com/us/artist/bouqui/254029430?uo=4', 'Bouqui', 7, 'B.O.U.Q.U.I, Born Bukola Folayan to HRH OBA (prof) Ololade Folayan 1st, also a professor of Biochemistry and a professional teacher mother, she alongside her other five siblings grew up in an academic atmosphere of the Obafemi Awolowo University (Ile-Ife) and this has served as a big influence for her deep lyrical style and cosmopolitan outlook. Her Christian faith and strong belief in the words of God as laid out in the Holy Bible is however the factor to the formation of the Bouqui brand. <a href=\"https://www.last.fm/music/Bouqui\">Read more on Last.fm</a>', 'B.O.U.Q.U.I, Born Bukola Folayan to HRH OBA (prof) Ololade Folayan 1st, also a professor of Biochemistry and a professional teacher mother, she alongside her other five siblings grew up in an academic atmosphere of the Obafemi Awolowo University (Ile-Ife) and this has served as a big influence for her deep lyrical style and cosmopolitan outlook. Her Christian faith and strong belief in the words of God as laid out in the Holy Bible is however the factor to the formation of the Bouqui brand. <a href=\"https://www.last.fm/music/Bouqui\">Read more on Last.fm</a>', '', '1', 1638600702, 0, 0, '2021-12-04 06:51:42', 0),
(1582523803, 'musa-hlongwane', 'Musa Hlongwane', '', 'https://music.apple.com/us/artist/musa-hlongwane/1582523803?uo=4', 'Musa Hlongwane', 7, 'No Description', 'No Summary', '', '1', 1638600709, 0, 0, '2021-12-04 06:51:49', 0),
(1475489613, 'panam-morrison', 'PANAM MORRISON', '', 'https://music.apple.com/us/artist/panam-morrison/1475489613?uo=4', 'PANAM MORRISON', 7, 'No Description', 'No Summary', '', '1', 1638600710, 0, 0, '2021-12-04 06:51:50', 0),
(1538246853, 'minstrel-k-i', 'Minstrel K.I', '', 'https://music.apple.com/us/artist/minstrel-k-i/1538246853?uo=4', 'Minstrel K.I', 7, ' <a href=\"https://www.last.fm/music/Minstrel+K.I\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Minstrel+K.I\">Read more on Last.fm</a>', '', '1', 1638600737, 0, 0, '2021-12-04 06:52:17', 0),
(909085051, 'fredrock', 'Fredrock', '', 'https://music.apple.com/us/artist/fredrock/909085051?uo=4', 'Fredrock', 7, ' <a href=\"https://www.last.fm/music/Fredrock\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Fredrock\">Read more on Last.fm</a>', '', '1', 1638600739, 0, 0, '2021-12-04 06:52:19', 0),
(1094496173, 'norine-mindeyes', 'Norine Mindeyes', '', 'https://music.apple.com/us/artist/norine-mindeyes/1094496173?uo=4', 'Norine Mindeyes', 7, ' <a href=\"https://www.last.fm/music/Norine+Mindeyes\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Norine+Mindeyes\">Read more on Last.fm</a>', '', '1', 1638600741, 0, 0, '2021-12-04 06:52:21', 0),
(37020, 'sonny-rollins', 'Sonny Rollins', '', 'https://music.apple.com/us/artist/sonny-rollins/37020?uo=4', 'Sonny Rollins', 7, 'Walter Theodore \"Sonny\" Rollins (born September 7, 1930) is an American jazz tenor saxophonist who is widely recognized as one of the most important and influential jazz musicians. In a seven-decade career, he has recorded over sixty albums as a leader. A number of his compositions, including \"St. Thomas\", \"Oleo\", \"Doxy\", \"Pent-Up House\", and \"Airegin\", have become jazz standards. Rollins has been called \"the greatest living improviser\" and the \"Saxophone Colossus\".  <a href=\"https://www.last.fm/music/Sonny+Rollins\">Read more on Last.fm</a>', 'Walter Theodore \"Sonny\" Rollins (born September 7, 1930) is an American jazz tenor saxophonist who is widely recognized as one of the most important and influential jazz musicians. In a seven-decade career, he has recorded over sixty albums as a leader. A number of his compositions, including \"St. Thomas\", \"Oleo\", \"Doxy\", \"Pent-Up House\", and \"Airegin\", have become jazz standards. Rollins has been called \"the greatest living improviser\" and the \"Saxophone Colossus\".  <a href=\"https://www.last.fm/music/Sonny+Rollins\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601108, 0, 0, '2021-12-04 06:58:28', 0),
(264855033, 'don-linke', 'Don Linke', '', 'https://music.apple.com/us/artist/don-linke/264855033?uo=4', 'Don Linke', 7, ' <a href=\"https://www.last.fm/music/Don+Linke\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Don+Linke\">Read more on Last.fm</a>', '', '1', 1638601109, 0, 0, '2021-12-04 06:58:29', 0),
(129013451, 'wojciech-staroniewicz', 'Wojciech Staroniewicz', '', 'https://music.apple.com/us/artist/wojciech-staroniewicz/129013451?uo=4', 'Wojciech Staroniewicz', 7, 'Wojciech Staroniewicz, saxophonist and composer (born in 1954 in Sopot), who has been playing in front of audiences for over 20 years. 1985 – First collective prize and first individual prize for the best composed piece at the Jazz Juniors festival. In 1986, together with the band Set-Off, he won the first prize “Golden Key To Career” at the Pomeranian Jazz Autumn. He also received the second prize at the Inernational Contest for Youth Orchestras in Hoeilaart, Belgium. <a href=\"https://www.last.fm/music/Wojciech+Staroniewicz\">Read more on Last.fm</a>', 'Wojciech Staroniewicz, saxophonist and composer (born in 1954 in Sopot), who has been playing in front of audiences for over 20 years. 1985 – First collective prize and first individual prize for the best composed piece at the Jazz Juniors festival. In 1986, together with the band Set-Off, he won the first prize “Golden Key To Career” at the Pomeranian Jazz Autumn. He also received the second prize at the Inernational Contest for Youth Orchestras in Hoeilaart, Belgium. <a href=\"https://www.last.fm/music/Wojciech+Staroniewicz\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601111, 0, 0, '2021-12-04 06:58:31', 0),
(306809554, 'emanuele-cisi-quartet', 'Emanuele Cisi Quartet', '', 'https://music.apple.com/us/artist/emanuele-cisi-quartet/306809554?uo=4', 'Emanuele Cisi Quartet', 7, ' <a href=\"https://www.last.fm/music/Emanuele+Cisi+Quartet\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Emanuele+Cisi+Quartet\">Read more on Last.fm</a>', '', '1', 1638601113, 0, 0, '2021-12-04 06:58:33', 0),
(79893258, 'gert-olie', 'Gert Olie', '', 'https://music.apple.com/us/artist/gert-olie/79893258?uo=4', 'Gert Olie', 7, ' <a href=\"https://www.last.fm/music/Gert+Olie\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Gert+Olie\">Read more on Last.fm</a>', '', '1', 1638601115, 0, 0, '2021-12-04 06:58:35', 0),
(5652847, 'duke-pearson', 'Duke Pearson', '', 'https://music.apple.com/us/artist/duke-pearson/5652847?uo=4', 'Duke Pearson', 7, 'Born Columbus Calvin Pearson, Jr. in Atlanta, Georgia, Pearson first studied brass instruments at the early age of five, but dental issues forced him to pursue another instrument and he started to learn the piano. His budding talent moved his uncle to give him the nickname Duke, a reference to jazz legend Duke Ellington.[1] He attended Clark College while also playing trumpet in groups in the Atlanta area before joining the United States Army in the early 1950s. <a href=\"https://www.last.fm/music/Duke+Pearson\">Read more on Last.fm</a>', 'Born Columbus Calvin Pearson, Jr. in Atlanta, Georgia, Pearson first studied brass instruments at the early age of five, but dental issues forced him to pursue another instrument and he started to learn the piano. His budding talent moved his uncle to give him the nickname Duke, a reference to jazz legend Duke Ellington.[1] He attended Clark College while also playing trumpet in groups in the Atlanta area before joining the United States Army in the early 1950s. <a href=\"https://www.last.fm/music/Duke+Pearson\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601116, 0, 0, '2021-12-04 06:58:36', 0),
(513621150, 'jamey-aebersold-play-a-long', 'Jamey Aebersold Play-A-Long', '', 'https://music.apple.com/us/artist/jamey-aebersold-play-a-long/513621150?uo=4', 'Jamey Aebersold Play-A-Long', 7, ' <a href=\"https://www.last.fm/music/+noredirect/Jamey+Aebersold+Play-A-Long\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/+noredirect/Jamey+Aebersold+Play-A-Long\">Read more on Last.fm</a>', '', '1', 1638601118, 0, 0, '2021-12-04 06:58:38', 0),
(205847538, 'the-band-of-the-coldstream-guards', 'The Band of the Coldstream Guards', '', 'https://music.apple.com/us/artist/the-band-of-the-coldstream-guards/205847538?uo=4', 'The Band of the Coldstream Guards', 7, ' <a href=\"https://www.last.fm/music/The+Band+of+the+Coldstream+Guards\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/The+Band+of+the+Coldstream+Guards\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601136, 0, 0, '2021-12-04 06:58:56', 0),
(2472698, 'julian-whiterose', 'Julian Whiterose', '', 'https://music.apple.com/us/artist/julian-whiterose/2472698?uo=4', 'Julian Whiterose', 7, 'Calypso pioneer Julian Whiterose made one of the first calypso recordings, Iron Duke in the Land, in 1914. <a href=\"https://www.last.fm/music/Julian+Whiterose\">Read more on Last.fm</a>', 'Calypso pioneer Julian Whiterose made one of the first calypso recordings, Iron Duke in the Land, in 1914. <a href=\"https://www.last.fm/music/Julian+Whiterose\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601145, 0, 0, '2021-12-04 06:59:05', 0),
(2514765, 'the-duke-of-iron', 'The Duke of Iron', '', 'https://music.apple.com/us/artist/the-duke-of-iron/2514765?uo=4', 'The Duke of Iron', 7, ' <a href=\"https://www.last.fm/music/The+Duke+Of+Iron\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/The+Duke+Of+Iron\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601192, 0, 0, '2021-12-04 06:59:52', 0),
(277838353, 'duke-of-iron-cecil-anderson', 'Duke of Iron & Cecil Anderson', '', 'https://music.apple.com/us/artist/duke-of-iron/277838353?uo=4', 'Duke of Iron & Cecil Anderson', 7, 'No Description', 'No Summary', '', '1', 1638601126, 0, 0, '2021-12-04 06:58:46', 0);
INSERT INTO `tbl_artists` (`id`, `artist_seo`, `keywords`, `lastfm_url`, `itunes_url`, `artist_name`, `genere_cat`, `artist_description`, `summary`, `artist_img`, `artist_status`, `posted_date`, `latest_one`, `popular_artist`, `updated_by_itunes`, `cron_status`) VALUES
(2489744, 'duke-robillard', 'Duke Robillard', '', 'https://music.apple.com/us/artist/duke-robillard/2489744?uo=4', 'Duke Robillard', 7, 'Duke Robillard (born Michael John Robillard in Woonsocket, RI, on 4 October 1948) is an American guitarist and singer. He founded the band Roomful of Blues and was a member of The Fabulous Thunderbirds. He also recorded in the duo Duke Robillard & Herb Ellis. Robillard is known as a rock and blues guitarist, he also plays jazz and swing.\n\nBlues guitarist. Swing and jump blues in the T-Bone Walker style. Bandleader. Songwriter. Singer. Producer. Session musician. <a href=\"https://www.last.fm/music/Duke+Robillard\">Read more on Last.fm</a>', 'Duke Robillard (born Michael John Robillard in Woonsocket, RI, on 4 October 1948) is an American guitarist and singer. He founded the band Roomful of Blues and was a member of The Fabulous Thunderbirds. He also recorded in the duo Duke Robillard & Herb Ellis. Robillard is known as a rock and blues guitarist, he also plays jazz and swing.\n\nBlues guitarist. Swing and jump blues in the T-Bone Walker style. Bandleader. Songwriter. Singer. Producer. Session musician. <a href=\"https://www.last.fm/music/Duke+Robillard\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601127, 0, 0, '2021-12-04 06:58:47', 0),
(1903801, 'lil-flip-og-ron-c', 'Lil&#39; Flip & OG Ron C', '', 'https://music.apple.com/us/artist/lil-flip/1903801?uo=4', 'Lil&#39; Flip & OG Ron C', 7, 'No Description', 'No Summary', '', '1', 1638601130, 0, 0, '2021-12-04 06:58:50', 0),
(660106105, 'judicator', 'Judicator', '', 'https://music.apple.com/us/artist/judicator/660106105?uo=4', 'Judicator', 7, 'Judicator is a US Power Metal band formed by Tony C (Project: Roenwolfe) and John Yelland (Principium) in 2012 after the two met at a Blind Guardian concert. The debut album \"King of Rome\" was released on October 30th, 2012, showcasing their shared love of old school power metal and Blind Guardian vocal stylings. The album\'s concept followed the final days of Napoleon Bonaparte\'s last campaign, leading up to his eventual defeat at the Battle of Waterloo. <a href=\"https://www.last.fm/music/Judicator\">Read more on Last.fm</a>', 'Judicator is a US Power Metal band formed by Tony C (Project: Roenwolfe) and John Yelland (Principium) in 2012 after the two met at a Blind Guardian concert. The debut album \"King of Rome\" was released on October 30th, 2012, showcasing their shared love of old school power metal and Blind Guardian vocal stylings. The album\'s concept followed the final days of Napoleon Bonaparte\'s last campaign, leading up to his eventual defeat at the Battle of Waterloo. <a href=\"https://www.last.fm/music/Judicator\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601132, 0, 0, '2021-12-04 06:58:52', 0),
(2514790, 'lord-invader', 'Lord Invader', '', 'https://music.apple.com/us/artist/lord-invader/2514790?uo=4', 'Lord Invader', 7, 'Lord Invader (Rupert Westmore Grant; 13 December 1914 – 15 October 1961) was a prominent calypsonian with a very distinctive, gravelly voice.\n\nHe was born in San Fernando, Trinidad. He became active in calypso in the mid-1930s, and was considered a country bumpkin by his contemporaries, because of his humble beginning. It was Grant\'s tailor who gave him his moniker by commenting, \"I tell you, Rupert, you should call yourself Lord Invader so when you go up to the city you be invadin\' the capital. <a href=\"https://www.last.fm/music/Lord+Invader\">Read more on Last.fm</a>', 'Lord Invader (Rupert Westmore Grant; 13 December 1914 – 15 October 1961) was a prominent calypsonian with a very distinctive, gravelly voice.\n\nHe was born in San Fernando, Trinidad. He became active in calypso in the mid-1930s, and was considered a country bumpkin by his contemporaries, because of his humble beginning. It was Grant\'s tailor who gave him his moniker by commenting, \"I tell you, Rupert, you should call yourself Lord Invader so when you go up to the city you be invadin\' the capital. <a href=\"https://www.last.fm/music/Lord+Invader\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601183, 0, 0, '2021-12-04 06:59:43', 0),
(2514743, 'the-duke-of-iron-chorus', 'The Duke of Iron & Chorus', '', 'https://music.apple.com/us/artist/the-duke-of-iron-chorus/2514743?uo=4', 'The Duke of Iron & Chorus', 7, 'No Description', 'No Summary', '', '1', 1638601142, 0, 0, '2021-12-04 06:59:02', 0),
(323789182, 'rondoe', 'Rondoe', '', 'https://music.apple.com/us/artist/rondoe/323789182?uo=4', 'Rondoe', 7, 'Like long time collaborator Ron Ron, Rondoe is a rapper hailing from \"The Fifties\", a name given to an area of Kansas City, Missouri\'s East side between 51st and 57th streets. Rondoe represents the 5700 Garfield block at Kansas City\'s 57th street.\n\nAccording to an interview with StarStatus Radio, he started rapping at the age of 13 but actually began to sell his music from 2002, following which he\'d start the label \"Chuby Throwback\" with friend Myron \"Chuby\" Evans <a href=\"https://www.last.fm/music/Rondoe\">Read more on Last.fm</a>', 'Like long time collaborator Ron Ron, Rondoe is a rapper hailing from \"The Fifties\", a name given to an area of Kansas City, Missouri\'s East side between 51st and 57th streets. Rondoe represents the 5700 Garfield block at Kansas City\'s 57th street.\n\nAccording to an interview with StarStatus Radio, he started rapping at the age of 13 but actually began to sell his music from 2002, following which he\'d start the label \"Chuby Throwback\" with friend Myron \"Chuby\" Evans <a href=\"https://www.last.fm/music/Rondoe\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601144, 0, 0, '2021-12-04 06:59:04', 0),
(2514750, 'macbeth-the-great-chorus-the-duke-of-iron', 'Macbeth The Great & Chorus & The Duke of Iron', '', 'https://music.apple.com/us/artist/macbeth-the-great-chorus/2514750?uo=4', 'Macbeth The Great & Chorus & The Duke of Iron', 7, 'No Description', 'No Summary', '', '1', 1638601147, 0, 0, '2021-12-04 06:59:07', 0),
(2579903, 'duke-of-iron-chorus-lord-invader', 'Duke of Iron & Chorus & Lord Invader', '', 'https://music.apple.com/us/artist/duke-of-iron-chorus/2579903?uo=4', 'Duke of Iron & Chorus & Lord Invader', 7, 'No Description', 'No Summary', '', '1', 1638601155, 0, 0, '2021-12-04 06:59:15', 0),
(548945, 'alan-lomax-the-duke-of-iron', 'Alan Lomax & The Duke of Iron', '', 'https://music.apple.com/us/artist/alan-lomax/548945?uo=4', 'Alan Lomax & The Duke of Iron', 7, 'No Description', 'No Summary', '', '1', 1638601162, 0, 0, '2021-12-04 06:59:22', 0),
(2514775, 'lord-invader-his-calypso-band', 'Lord Invader & His Calypso Band', '', 'https://music.apple.com/us/artist/lord-invader-his-calypso-band/2514775?uo=4', 'Lord Invader & His Calypso Band', 7, 'No Description', 'No Summary', '', '1', 1638601164, 0, 0, '2021-12-04 06:59:24', 0),
(1225141256, 'the-loire-valley-calypsos', 'The Loire Valley Calypsos', '', 'https://music.apple.com/us/artist/the-loire-valley-calypsos/1225141256?uo=4', 'The Loire Valley Calypsos', 7, ' <a href=\"https://www.last.fm/music/THE+LOIRE+VALLEY+CALYPSOS\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/THE+LOIRE+VALLEY+CALYPSOS\">Read more on Last.fm</a>', '', '1', 1638601169, 0, 0, '2021-12-04 06:59:29', 0),
(5264698, 'patty-duke', 'Patty Duke', '', 'https://itunes.apple.com/us/artist/patty-duke/5264698?uo=4', 'Patty Duke', 7, 'Anna Marie \"Patty\" Duke (December 14, 1946 – March 29, 2016) was an American actress of stage, film and television. Patty Duke also had a successful singing career, including two Top 40 hits in 1965, \"Don\'t Just Stand There\" (#8) and \"Say Something Funny\" (#22). Another recording was \"Dona Dona\" in 1968, which she performed as the second song on The Ed Sullivan Show. Also during 1968, she had appeared on The Tonight Show Starring Johnny Carson, and after George Jessel\'s comic appearance <a href=\"https://www.last.fm/music/Patty+Duke\">Read more on Last.fm</a>', 'Anna Marie \"Patty\" Duke (December 14, 1946 – March 29, 2016) was an American actress of stage, film and television. Patty Duke also had a successful singing career, including two Top 40 hits in 1965, \"Don\'t Just Stand There\" (#8) and \"Say Something Funny\" (#22). Another recording was \"Dona Dona\" in 1968, which she performed as the second song on The Ed Sullivan Show. Also during 1968, she had appeared on The Tonight Show Starring Johnny Carson, and after George Jessel\'s comic appearance <a href=\"https://www.last.fm/music/Patty+Duke\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914542, 0, 0, '2022-03-10 12:15:42', 0),
(182221122, 'golden-fiddle-orchestra', 'Golden Fiddle Orchestra', '', 'https://music.apple.com/us/artist/golden-fiddle-orchestra/182221122?uo=4', 'Golden Fiddle Orchestra', 7, ' <a href=\"https://www.last.fm/music/Golden+Fiddle+Orchestra\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Golden+Fiddle+Orchestra\">Read more on Last.fm</a>', '', '1', 1638601176, 0, 0, '2021-12-04 06:59:36', 0),
(631332, 'donnie-mcclurkin', 'Donnie McClurkin', '', 'https://music.apple.com/us/artist/donnie-mcclurkin/631332?uo=4', 'Donnie McClurkin', 7, 'Born: January 25, 1959\n\nStyles: Black Gospel, Contemporary Gospel, Urban\n\nBiography:\nDonnie McClurkin is a gospel vocalist with the soul of Andraé Crouch and the contemporary flair of Kirk Franklin. Born into a home filled with domestic violence and drug abuse, McClurkin was saved by an aunt who sang background vocals with Crouch himself. After staying close to Crouch throughout his boyhood, he began to play piano and sing with his church youth choir. <a href=\"https://www.last.fm/music/Donnie+McClurkin\">Read more on Last.fm</a>', 'Born: January 25, 1959\n\nStyles: Black Gospel, Contemporary Gospel, Urban\n\nBiography:\nDonnie McClurkin is a gospel vocalist with the soul of Andraé Crouch and the contemporary flair of Kirk Franklin. Born into a home filled with domestic violence and drug abuse, McClurkin was saved by an aunt who sang background vocals with Crouch himself. After staying close to Crouch throughout his boyhood, he began to play piano and sing with his church youth choir. <a href=\"https://www.last.fm/music/Donnie+McClurkin\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646911888, 0, 0, '2022-03-10 11:31:28', 0),
(710464, 'carlton-pearson', 'Carlton Pearson', '', 'https://music.apple.com/us/artist/carlton-pearson/710464?uo=4', 'Carlton Pearson', 7, 'Bishop Pearson attended Oral Roberts University, and was mentored by Oral Roberts. He was licensed and ordained in the Church of God in Christ.  Pearson formed his own church, Higher Dimensions, which became one of the largest in the city of Tulsa, Oklahoma. During the 1990s it grew to an attendance of over 5,000 and in 1997 Pearson was ordained a bishop. In 2000 he campaigned for George W. Bush and following the presidential inauguration was invited to the White House. <a href=\"https://www.last.fm/music/Carlton+Pearson\">Read more on Last.fm</a>', 'Bishop Pearson attended Oral Roberts University, and was mentored by Oral Roberts. He was licensed and ordained in the Church of God in Christ.  Pearson formed his own church, Higher Dimensions, which became one of the largest in the city of Tulsa, Oklahoma. During the 1990s it grew to an attendance of over 5,000 and in 1997 Pearson was ordained a bishop. In 2000 he campaigned for George W. Bush and following the presidential inauguration was invited to the White House. <a href=\"https://www.last.fm/music/Carlton+Pearson\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646911869, 0, 0, '2022-03-10 11:31:09', 0),
(134154, 'kelly-price', 'Kelly Price', '', 'https://music.apple.com/us/artist/kelly-price/134154?uo=4', 'Kelly Price', 7, 'Kelly Cherelle Price (born April 4 1973) is the daughter of Joseph and Claudia Price. Price is the second of three children born and raised in Queens, NY. Under the watchful eye of her mother and the pastorate of her grandparents, Jerome and Joni Norman, Price was nurtured and developed spiritually by being taught the word of God and the importance of a sustained prayer life through the special prayer services her grandfather held weekly in addition to Sunday services and bible study. <a href=\"https://www.last.fm/music/Kelly+Price\">Read more on Last.fm</a>', 'Kelly Cherelle Price (born April 4 1973) is the daughter of Joseph and Claudia Price. Price is the second of three children born and raised in Queens, NY. Under the watchful eye of her mother and the pastorate of her grandparents, Jerome and Joni Norman, Price was nurtured and developed spiritually by being taught the word of God and the importance of a sustained prayer life through the special prayer services her grandfather held weekly in addition to Sunday services and bible study. <a href=\"https://www.last.fm/music/Kelly+Price\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601294, 0, 0, '2021-12-04 07:01:34', 0),
(269841410, 'j-j-hairston-youthful-praise', 'J.J. Hairston & Youthful Praise', '', 'https://music.apple.com/us/artist/j-j-hairston/269841410?uo=4', 'J.J. Hairston & Youthful Praise', 7, 'No Description', 'No Summary', '', '1', 1638601261, 0, 0, '2021-12-04 07:01:01', 0),
(804393312, 'neednoname', 'NeedNoName', '', 'https://music.apple.com/us/artist/neednoname/804393312?uo=4', 'NeedNoName', 7, ' <a href=\"https://www.last.fm/music/NeedNoName\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/NeedNoName\">Read more on Last.fm</a>', '', '1', 1638601240, 0, 0, '2021-12-04 07:00:40', 0),
(2225587, 'marvin-sapp', 'Marvin Sapp', '', 'https://music.apple.com/us/artist/marvin-sapp/2225587?uo=4', 'Marvin Sapp', 7, '  Singing since age four, Marvin Sapp has shared the stage with many gospel notables and his gift is celebrated across musical genres. While he has enjoyed a decorated music ministry receiving Stellar Awards, Gospel Music Excellence Award as well as Grammy, Soul Train Music and Dove Award Nominations, he has also been honored in his hometown of Grand Rapids Michigan. Recognized for his professional and philanthropic efforts, Pastor Sapp has received the city’s highest African American honor <a href=\"https://www.last.fm/music/Marvin+Sapp\">Read more on Last.fm</a>', '  Singing since age four, Marvin Sapp has shared the stage with many gospel notables and his gift is celebrated across musical genres. While he has enjoyed a decorated music ministry receiving Stellar Awards, Gospel Music Excellence Award as well as Grammy, Soul Train Music and Dove Award Nominations, he has also been honored in his hometown of Grand Rapids Michigan. Recognized for his professional and philanthropic efforts, Pastor Sapp has received the city’s highest African American honor <a href=\"https://www.last.fm/music/Marvin+Sapp\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601242, 0, 0, '2021-12-04 07:00:42', 0),
(3301442, 'hezekiah-walker', 'Hezekiah Walker', '', 'https://music.apple.com/us/artist/hezekiah-walker/3301442?uo=4', 'Hezekiah Walker', 7, 'Bishop Hezekiah Xzavier Walker, Jr. (born December 24, 1962 in Brooklyn, New York) is a Grammy Award-winning gospel music artist; founder & leader of the Love Fellowship Choir, and Pastor & Bishop of the Love Fellowship Tabernacle, with locations in Brooklyn, New York and Bensalem, Pennsylvania in the United States of America. Bishop Walker is also the Overseer of his own Covenant Keepers Fellowship, which spiritually covers various churches all over the United States of America and in South Africa. <a href=\"https://www.last.fm/music/Hezekiah+Walker\">Read more on Last.fm</a>', 'Bishop Hezekiah Xzavier Walker, Jr. (born December 24, 1962 in Brooklyn, New York) is a Grammy Award-winning gospel music artist; founder & leader of the Love Fellowship Choir, and Pastor & Bishop of the Love Fellowship Tabernacle, with locations in Brooklyn, New York and Bensalem, Pennsylvania in the United States of America. Bishop Walker is also the Overseer of his own Covenant Keepers Fellowship, which spiritually covers various churches all over the United States of America and in South Africa. <a href=\"https://www.last.fm/music/Hezekiah+Walker\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601247, 0, 0, '2021-12-04 07:00:47', 0),
(152584334, 'marvin-winans-delores-mom-winans-donnie-mcclurkin', 'Marvin Winans, Delores &#34;Mom&#34; Winans & Donnie McClurkin', '', 'https://music.apple.com/us/artist/marvin-winans/152584334?uo=4', 'Marvin Winans, Delores &#34;Mom&#34; Winans & Donnie McClurkin', 7, 'No Description', 'No Summary', '', '1', 1638601264, 0, 0, '2021-12-04 07:01:04', 0),
(149651, 'yolanda-adams', 'Yolanda Adams', '', 'https://music.apple.com/us/artist/yolanda-adams/149651?uo=4', 'Yolanda Adams', 7, 'Yolanda Adams (born Yolanda Yvette Adams on August 27, 1961) is an American Grammy and Dove-award winning Gospel music singer and radio show host.\n\nThe oldest of six siblings, Adams was raised in Houston, Texas. She graduated from Sterling High School in Houston in 1979. After graduating from University of California Berkeley, she began a career as a schoolteacher and part-time model in Houston, Texas. Eventually she gave up teaching to perform full-time as a lead singer. <a href=\"https://www.last.fm/music/Yolanda+Adams\">Read more on Last.fm</a>', 'Yolanda Adams (born Yolanda Yvette Adams on August 27, 1961) is an American Grammy and Dove-award winning Gospel music singer and radio show host.\n\nThe oldest of six siblings, Adams was raised in Houston, Texas. She graduated from Sterling High School in Houston in 1979. After graduating from University of California Berkeley, she began a career as a schoolteacher and part-time model in Houston, Texas. Eventually she gave up teaching to perform full-time as a lead singer. <a href=\"https://www.last.fm/music/Yolanda+Adams\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601266, 0, 0, '2021-12-04 07:01:06', 0),
(152634195, 'da-t-r-u-t-h-', 'Da&#39; T.R.U.T.H.', '', 'https://music.apple.com/us/artist/da-t-r-u-t-h/152634195?uo=4', 'Da&#39; T.R.U.T.H.', 7, 'Emanuel Lee Lambert, Jr. (born December 15 1977 in Philadelphia, Pennsylvania) is a Grammy nominated, Stellar award winning rapper who goes by the name \"Da\' T.R.U.T.H.\". He has released three albums: Moment of Truth, The Faith and Open Book. All recieved rave reviews from Rapzilla.com, and \'Open Book\' also recieved a Grammy nomination for best Rap Gospel Album.\n\nHe first got into music as a teenager, listening to contemporary Christian music and becoming a talented drummer. <a href=\"https://www.last.fm/music/Da%27+T.R.U.T.H.\">Read more on Last.fm</a>', 'Emanuel Lee Lambert, Jr. (born December 15 1977 in Philadelphia, Pennsylvania) is a Grammy nominated, Stellar award winning rapper who goes by the name \"Da\' T.R.U.T.H.\". He has released three albums: Moment of Truth, The Faith and Open Book. All recieved rave reviews from Rapzilla.com, and \'Open Book\' also recieved a Grammy nomination for best Rap Gospel Album.\n\nHe first got into music as a teenager, listening to contemporary Christian music and becoming a talented drummer. <a href=\"https://www.last.fm/music/Da%27+T.R.U.T.H.\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601278, 0, 0, '2021-12-04 07:01:18', 0),
(1541104502, 'ttg-gomode', 'TTG GoMode', '', 'https://music.apple.com/us/artist/ttg-gomode/1541104502?uo=4', 'TTG GoMode', 7, ' <a href=\"https://www.last.fm/music/TTG+GoMode\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/TTG+GoMode\">Read more on Last.fm</a>', '', '1', 1638601292, 0, 0, '2021-12-04 07:01:32', 0),
(152092, 'kirk-whalum', 'Kirk Whalum', '', 'https://music.apple.com/us/artist/kirk-whalum/152092?uo=4', 'Kirk Whalum', 7, 'In 1983, Kirk Whalum caught the attention of the pianist Bob James. And, Whalum joined his album \"12\" (1985). He released his debut album \"Floppy Disk\" with James\' support.\nFrom the latter term of 1980\'s, Whalum began to make a name for himself as a sideman of great insight and musicianship, playing on albums by a wide variety of artists -- including Larry Carlton, Quincy Jones, Luther Vandross, Al Jarreau and many others. He also toured with Whitney Houston. Her song I Will Always Love You\'s sax solo is Kirk\'s performance. <a href=\"https://www.last.fm/music/Kirk+Whalum\">Read more on Last.fm</a>', 'In 1983, Kirk Whalum caught the attention of the pianist Bob James. And, Whalum joined his album \"12\" (1985). He released his debut album \"Floppy Disk\" with James\' support.\nFrom the latter term of 1980\'s, Whalum began to make a name for himself as a sideman of great insight and musicianship, playing on albums by a wide variety of artists -- including Larry Carlton, Quincy Jones, Luther Vandross, Al Jarreau and many others. He also toured with Whitney Houston. Her song I Will Always Love You\'s sax solo is Kirk\'s performance. <a href=\"https://www.last.fm/music/Kirk+Whalum\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601305, 0, 0, '2021-12-04 07:01:45', 0),
(18756715, 'deitrick-haddon', 'Deitrick Haddon', '', 'https://music.apple.com/us/artist/deitrick-haddon/18756715?uo=4', 'Deitrick Haddon', 7, 'Born and raised in the Motor City , Haddon was another gospel child prodigy, both as minister and musician.  He gave his first sermon at the church of his father, Bishop Clarence Haddon, at age 11, and was directing the choir by age 13. \n\nHaddon began his recording career in the mid 90s with the Voices of Unity on the small Tyscot label.  As the group leader for their three albums, Haddon expressed his forward looking musical view, merging elements of soul, hip-hop and funk in the group\'s Gospel music. <a href=\"https://www.last.fm/music/Deitrick+Haddon\">Read more on Last.fm</a>', 'Born and raised in the Motor City , Haddon was another gospel child prodigy, both as minister and musician.  He gave his first sermon at the church of his father, Bishop Clarence Haddon, at age 11, and was directing the choir by age 13. \n\nHaddon began his recording career in the mid 90s with the Voices of Unity on the small Tyscot label.  As the group leader for their three albums, Haddon expressed his forward looking musical view, merging elements of soul, hip-hop and funk in the group\'s Gospel music. <a href=\"https://www.last.fm/music/Deitrick+Haddon\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646911893, 0, 0, '2022-03-10 11:31:33', 0),
(35305279, 'donald-lawrence', 'Donald Lawrence', '', 'https://music.apple.com/us/artist/donald-lawrence/35305279?uo=4', 'Donald Lawrence', 7, 'Donald Lawrence is an American gospel music songwriter, record producer and artist.\n\nDonald Lawrence studied at Cincinnati Conservatory, where he earned a Bachelor of Fine Arts Degree in music. To his credit, Donald\'s musicality has seen many incarnations, as vocal coach to the R&B group En Vogue, musical director for Stephanie Mills, songwriter for The Clark Sisters, and producer for a host of artists including Peabo Bryson and Kirk Franklin. Lawrence took on The Tri-City Singers after a friend vacated his position as musical director. <a href=\"https://www.last.fm/music/Donald+Lawrence\">Read more on Last.fm</a>', 'Donald Lawrence is an American gospel music songwriter, record producer and artist.\n\nDonald Lawrence studied at Cincinnati Conservatory, where he earned a Bachelor of Fine Arts Degree in music. To his credit, Donald\'s musicality has seen many incarnations, as vocal coach to the R&B group En Vogue, musical director for Stephanie Mills, songwriter for The Clark Sisters, and producer for a host of artists including Peabo Bryson and Kirk Franklin. Lawrence took on The Tri-City Singers after a friend vacated his position as musical director. <a href=\"https://www.last.fm/music/Donald+Lawrence\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1638601303, 0, 0, '2021-12-04 07:01:43', 0),
(454449646, 'dorinda-clark-cole', 'Dorinda Clark-Cole', '', 'https://music.apple.com/us/artist/dorinda-clark-cole/454449646?uo=4', 'Dorinda Clark-Cole', 7, 'Born and raised in Detroit, Michigan, Clark Cole began singing at an early age with her sisters Karen, Twinkie, Jacky, and Denise. The sisters sang in their pastor father\'s church and usually performed songs written and composed by their mother. Clark Cole, who is referred to as the \"jazzy sister\" of the group, helped develop what is known as \"The Clark Sound\", which often features high and fast melismas, riffs, runs, and soulful growls.Dorinda sang lead on \"Overdose Of The Holy Ghost\" <a href=\"https://www.last.fm/music/Dorinda+Clark-Cole\">Read more on Last.fm</a>', 'Born and raised in Detroit, Michigan, Clark Cole began singing at an early age with her sisters Karen, Twinkie, Jacky, and Denise. The sisters sang in their pastor father\'s church and usually performed songs written and composed by their mother. Clark Cole, who is referred to as the \"jazzy sister\" of the group, helped develop what is known as \"The Clark Sound\", which often features high and fast melismas, riffs, runs, and soulful growls.Dorinda sang lead on \"Overdose Of The Holy Ghost\" <a href=\"https://www.last.fm/music/Dorinda+Clark-Cole\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646911927, 0, 0, '2022-03-10 11:32:07', 0),
(3293094, 'kirk-franklin', 'Kirk Franklin', '', 'https://music.apple.com/us/artist/kirk-franklin/3293094?uo=4', 'Kirk Franklin', 7, 'Kirk Franklin (born January 26, 1970 in Riverside, Texas) is a platinum-selling musician who blended gospel, hip hop, and R&B in the 1990s. He released his first gospel album, Kirk Franklin & Family, in 1993, and is known as the leader of contemporary gospel choirs such as Kirk Franklin & the Family, Kirk Franklin\'s Nu Nation, and God\'s Property.\n\n\nA native of Fort Worth, Texas, he was raised by his aunt, Gertrude Franklin. He developed a talent for music early <a href=\"https://www.last.fm/music/Kirk+Franklin\">Read more on Last.fm</a>', 'Kirk Franklin (born January 26, 1970 in Riverside, Texas) is a platinum-selling musician who blended gospel, hip hop, and R&B in the 1990s. He released his first gospel album, Kirk Franklin & Family, in 1993, and is known as the leader of contemporary gospel choirs such as Kirk Franklin & the Family, Kirk Franklin\'s Nu Nation, and God\'s Property.\n\n\nA native of Fort Worth, Texas, he was raised by his aunt, Gertrude Franklin. He developed a talent for music early <a href=\"https://www.last.fm/music/Kirk+Franklin\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646911902, 0, 0, '2022-03-10 11:31:42', 0),
(72304519, 'j-moss', 'J Moss', '', 'https://music.apple.com/us/artist/j-moss/72304519?uo=4', 'J Moss', 7, 'Born and raised in Detroit, Michigan as James Moss, the son of Gospel star Bill Moss, Sr., James spent much of his childhood on tours with his father\'s popular group, Bill Moss and the Celestials, and his cousin\'s group The Clark Sisters. As an early teen, Moss was teamed with his brother Bill Jr. in the singing duo The Moss Brothers. They toured on weekends around the midwest and recorded two major label albums during their seven years together. <a href=\"https://www.last.fm/music/J+Moss\">Read more on Last.fm</a>', 'Born and raised in Detroit, Michigan as James Moss, the son of Gospel star Bill Moss, Sr., James spent much of his childhood on tours with his father\'s popular group, Bill Moss and the Celestials, and his cousin\'s group The Clark Sisters. As an early teen, Moss was teamed with his brother Bill Jr. in the singing duo The Moss Brothers. They toured on weekends around the midwest and recorded two major label albums during their seven years together. <a href=\"https://www.last.fm/music/J+Moss\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646911900, 0, 0, '2022-03-10 11:31:40', 0),
(1144192675, 'g-e-i', 'G E I', '', 'https://music.apple.com/us/artist/g-e-i/1144192675?uo=4', 'G E I', 7, ' <a href=\"https://www.last.fm/music/G+E+I\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/G+E+I\">Read more on Last.fm</a>', '', '1', 1646911872, 0, 0, '2022-03-10 11:31:12', 0),
(790180, 'karen-clark-sheard-featuring-missy-elliott-yolanda-adams-kim-burrell-dorinda-clark-cole-mary-mary', 'Karen Clark-Sheard featuring Missy Elliott, Yolanda Adams, Kim Burrell, Dorinda Clark Cole & Mary Mary', '', 'https://music.apple.com/us/artist/karen-clark-sheard/790180?uo=4', 'Karen Clark-Sheard featuring Missy Elliott, Yolanda Adams, Kim Burrell, Dorinda Clark Cole & Mary Mary', 7, 'No Description', 'No Summary', '', '1', 1646911892, 0, 0, '2022-03-10 11:31:32', 0),
(21769797, 'bishop-eddie-l-long', 'Bishop Eddie L. Long', '', 'https://music.apple.com/us/artist/bishop-eddie-l-long/21769797?uo=4', 'Bishop Eddie L. Long', 7, ' <a href=\"https://www.last.fm/music/Bishop+Eddie+L.+Long\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Bishop+Eddie+L.+Long\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646911910, 0, 0, '2022-03-10 11:31:50', 0),
(86375370, 'byron-cage', 'Byron Cage', '', 'https://music.apple.com/us/artist/byron-cage/86375370?uo=4', 'Byron Cage', 7, 'Inspired by the singing of the late, Rev. Donald Vails and Thomas Whitfield, Cage (born December 15, 1962 - )began singing gospel music as a teenager. He also served as music director for the New Birth Church in Atlanta for a decade. He is now currently serving as the Minister of Music at Ebenezer A.M.E Church, Fort Washington, MD.\n\n <a href=\"https://www.last.fm/music/Byron+Cage\">Read more on Last.fm</a>', 'Inspired by the singing of the late, Rev. Donald Vails and Thomas Whitfield, Cage (born December 15, 1962 - )began singing gospel music as a teenager. He also served as music director for the New Birth Church in Atlanta for a decade. He is now currently serving as the Minister of Music at Ebenezer A.M.E Church, Fort Washington, MD.\n\n <a href=\"https://www.last.fm/music/Byron+Cage\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646911912, 0, 0, '2022-03-10 11:31:52', 0),
(293864931, 'donald-lawrence-co-', 'Donald Lawrence & Co.', '', 'https://music.apple.com/us/artist/donald-lawrence-co/293864931?uo=4', 'Donald Lawrence & Co.', 7, 'No Description', 'No Summary', '', '1', 1646911881, 0, 0, '2022-03-10 11:31:21', 0),
(5281405, 'youthful-praise', 'Youthful Praise', '', 'https://music.apple.com/us/artist/youthful-praise/5281405?uo=4', 'Youthful Praise', 7, 'At the core of Gospel music is the Message -- messages of hope, love, redemption and salvation and its purpose is to give praise, declare faith and thank God. JJ Hairston & Youthful Praise fully embraces these concepts on their new album, AFTER THIS.\n\n“I want people to hear the messages first … I wanted to make a statement and say something instead of just captivating people with a beat or a dance,” said Hairston, long-time leader and director of Youthful Praise. <a href=\"https://www.last.fm/music/Youthful+Praise\">Read more on Last.fm</a>', 'At the core of Gospel music is the Message -- messages of hope, love, redemption and salvation and its purpose is to give praise, declare faith and thank God. JJ Hairston & Youthful Praise fully embraces these concepts on their new album, AFTER THIS.\n\n“I want people to hear the messages first … I wanted to make a statement and say something instead of just captivating people with a beat or a dance,” said Hairston, long-time leader and director of Youthful Praise. <a href=\"https://www.last.fm/music/Youthful+Praise\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646911883, 0, 0, '2022-03-10 11:31:23', 0),
(35305616, 'jonathan-nelson', 'Jonathan Nelson', '', 'https://music.apple.com/us/artist/jonathan-nelson/35305616?uo=4', 'Jonathan Nelson', 7, 'One of six children born in Baltimore, Maryland, Nelson grew up in church. \"Everybody in my family works in ministry,\" he says. \"My father, James Nelson, was pastor of Greater Bethlehem Temple Church for over thirty years and my mom served as First Lady.\" Nelson\'s family was also musical. \"My grandmother played piano,\" he continues. \"I had two uncles who were musicians. We just grew up playing and singing in church.\"\n\nNelson\'s musical abilities were <a href=\"https://www.last.fm/music/Jonathan+Nelson\">Read more on Last.fm</a>', 'One of six children born in Baltimore, Maryland, Nelson grew up in church. \"Everybody in my family works in ministry,\" he says. \"My father, James Nelson, was pastor of Greater Bethlehem Temple Church for over thirty years and my mom served as First Lady.\" Nelson\'s family was also musical. \"My grandmother played piano,\" he continues. \"I had two uncles who were musicians. We just grew up playing and singing in church.\"\n\nNelson\'s musical abilities were <a href=\"https://www.last.fm/music/Jonathan+Nelson\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914934, 0, 0, '2022-03-10 12:22:14', 0),
(181477913, 'vashawn-mitchell', 'Vashawn Mitchell', '', 'https://music.apple.com/us/artist/vashawn-mitchell/181477913?uo=4', 'Vashawn Mitchell', 7, 'VaShawn Mitchell was born and raised in Chicago, IL.  The city known as the birthplace of Gospel music quickly made its imprint on him.  When he was barely a teenager, VaShawn became the assistant music director of St. Mark Baptist Church, working closely with nationally renowned choir leader Lonnie Hunter.\n\n \n\nFor nearly a decade he served as Minister of Music at Bishop Larry D. Trotter’s Sweet Holy Spirit Church, setting the musical tone both within the church walls and on the ministry’s top-selling recording projects. <a href=\"https://www.last.fm/music/VaShawn+Mitchell\">Read more on Last.fm</a>', 'VaShawn Mitchell was born and raised in Chicago, IL.  The city known as the birthplace of Gospel music quickly made its imprint on him.  When he was barely a teenager, VaShawn became the assistant music director of St. Mark Baptist Church, working closely with nationally renowned choir leader Lonnie Hunter.\n\n \n\nFor nearly a decade he served as Minister of Music at Bishop Larry D. Trotter’s Sweet Holy Spirit Church, setting the musical tone both within the church walls and on the ministry’s top-selling recording projects. <a href=\"https://www.last.fm/music/VaShawn+Mitchell\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914902, 0, 0, '2022-03-10 12:21:42', 0),
(654696, 'the-clark-sisters', 'The Clark Sisters', '', 'https://music.apple.com/us/artist/the-clark-sisters/654696?uo=4', 'The Clark Sisters', 7, '1. The Clark Sisters is an African American gospel vocal group consisting of four sisters: Elbernita \"Twinkie\" Clark, Jacky Clark Chisholm, Dorinda Clark Cole, and Karen Clark Sheard. A fifth member, Denise Clark Bradford, no longer performs with the group. The Clark Sisters are the daughters of gospel musician and choral director Dr. Mattie Moss Clark. They are credited for helping to bring gospel music to the mainstream and are considered as pioneers of contemporary gospel. <a href=\"https://www.last.fm/music/The+Clark+Sisters\">Read more on Last.fm</a>', '1. The Clark Sisters is an African American gospel vocal group consisting of four sisters: Elbernita \"Twinkie\" Clark, Jacky Clark Chisholm, Dorinda Clark Cole, and Karen Clark Sheard. A fifth member, Denise Clark Bradford, no longer performs with the group. The Clark Sisters are the daughters of gospel musician and choral director Dr. Mattie Moss Clark. They are credited for helping to bring gospel music to the mainstream and are considered as pioneers of contemporary gospel. <a href=\"https://www.last.fm/music/The+Clark+Sisters\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646911914, 0, 0, '2022-03-10 11:31:54', 0),
(185248271, 'bishop-richard-mr-clean-white', 'Bishop Richard &#34;Mr. Clean&#34; White', '', 'https://music.apple.com/us/artist/bishop-richard-mr-clean-white/185248271?uo=4', 'Bishop Richard &#34;Mr. Clean&#34; White', 7, ' <a href=\"https://www.last.fm/music/Bishop+Richard+%22Mr.+Clean%22+White\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Bishop+Richard+%22Mr.+Clean%22+White\">Read more on Last.fm</a>', '', '1', 1646911918, 0, 0, '2022-03-10 11:31:58', 0),
(415355556, 'eric-sanders', 'Eric Sanders', '', 'https://music.apple.com/us/artist/eric-sanders/415355556?uo=4', 'Eric Sanders', 7, ' <a href=\"https://www.last.fm/music/Eric+Sanders\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Eric+Sanders\">Read more on Last.fm</a>', '', '1', 1646911929, 0, 0, '2022-03-10 11:32:09', 0),
(840454972, 'dorinda-clark-cole', 'Dorinda Clark Cole', '', 'https://music.apple.com/us/artist/dorinda-clark-cole/840454972?uo=4', 'Dorinda Clark Cole', 7, 'Dr. Dorinda Clark Cole was born and raised in Detroit, Michigan, matriculating at the Detroit Institute of Commerce. She Diligently pursued education in the field of court reporting until her schedule of evangelizing began to supersede her career endeavors. She is the wife of Minister Gregory Cole and mother of two, Nikkia and Gregory Junior. Evangelist Cole, a member of the renowned gospel singing group The Clark Sisters has made great contributions in the world of music. <a href=\"https://www.last.fm/music/+noredirect/Dorinda+Clark+Cole\">Read more on Last.fm</a>', 'Dr. Dorinda Clark Cole was born and raised in Detroit, Michigan, matriculating at the Detroit Institute of Commerce. She Diligently pursued education in the field of court reporting until her schedule of evangelizing began to supersede her career endeavors. She is the wife of Minister Gregory Cole and mother of two, Nikkia and Gregory Junior. Evangelist Cole, a member of the renowned gospel singing group The Clark Sisters has made great contributions in the world of music. <a href=\"https://www.last.fm/music/+noredirect/Dorinda+Clark+Cole\">Read more on Last.fm</a>', '', '1', 1646911931, 0, 0, '2022-03-10 11:32:11', 0),
(723153447, 'alain-soral', 'Alain Soral', '', 'https://books.apple.com/us/artist/alain-soral/723153447?uo=4', 'Alain Soral', 7, ' <a href=\"https://www.last.fm/music/Alain+Soral\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Alain+Soral\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914078, 0, 0, '2022-03-10 12:07:58', 0),
(542976570, 'dj-axel-martinez-edson-zamora', 'DJ Axel Martinez & Edson Zamora', '', 'https://music.apple.com/us/artist/dj-axel-martinez/542976570?uo=4', 'DJ Axel Martinez & Edson Zamora', 7, 'No Description', 'No Summary', '', '1', 1646914331, 0, 0, '2022-03-10 12:12:11', 0),
(270673722, 'bobby-morganstein', 'Bobby Morganstein', '', 'https://music.apple.com/us/artist/bobby-morganstein/270673722?uo=4', 'Bobby Morganstein', 7, ' <a href=\"https://www.last.fm/music/Bobby+Morganstein\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Bobby+Morganstein\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914452, 0, 0, '2022-03-10 12:14:12', 0),
(1291580524, 'cloud-1', 'Cloud 1', '', 'https://music.apple.com/us/artist/cloud-1/1291580524?uo=4', 'Cloud 1', 7, ' <a href=\"https://www.last.fm/music/cloud+1\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/cloud+1\">Read more on Last.fm</a>', '', '1', 1646914455, 0, 0, '2022-03-10 12:14:15', 0),
(150450003, 'cloud-one', 'Cloud One', '', 'https://music.apple.com/us/artist/cloud-one/150450003?uo=4', 'Cloud One', 7, 'A New York synthesizer disco-funk artist best known for the song \'Atmosphere Strut\' (taken from the album of the same name) produced by disco producer Patrick Adams and released in 1976. The song has been remixed and re-released numerous times between 1976 and present day and is still hugely popular on dancefloors across the world. <a href=\"https://www.last.fm/music/Cloud+One\">Read more on Last.fm</a>', 'A New York synthesizer disco-funk artist best known for the song \'Atmosphere Strut\' (taken from the album of the same name) produced by disco producer Patrick Adams and released in 1976. The song has been remixed and re-released numerous times between 1976 and present day and is still hugely popular on dancefloors across the world. <a href=\"https://www.last.fm/music/Cloud+One\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914471, 0, 0, '2022-03-10 12:14:31', 0),
(265174222, 'organic-mode', 'Organic Mode', '', 'https://music.apple.com/us/artist/organic-mode/265174222?uo=4', 'Organic Mode', 7, ' <a href=\"https://www.last.fm/music/Organic+Mode\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Organic+Mode\">Read more on Last.fm</a>', '', '1', 1646914464, 0, 0, '2022-03-10 12:14:24', 0),
(1490127540, 'autumn', 'Autumn', '', 'https://music.apple.com/us/artist/autumn/1490127540?uo=4', 'Autumn', 7, 'There are multiple artists named Autumn:\n1) A gothic metal / atmospheric rock band from the Netherlands.\n2) A minimal wave band from Belgium active in the 1980s.\n3) A progressive rock / jazz group active in the early 1990s, formed by members of Toxik.\n4) A neoclassical darkwave project from Germany.\n5) A gothic rock band from Minneapolis, MN, United States.\n6) A now defunct early to mid 90s hardcore band from Philadelphia, PA, United States.\n7) A disbanded doom metal band from Russia. <a href=\"https://www.last.fm/music/Autumn\">Read more on Last.fm</a>', 'There are multiple artists named Autumn:\n1) A gothic metal / atmospheric rock band from the Netherlands.\n2) A minimal wave band from Belgium active in the 1980s.\n3) A progressive rock / jazz group active in the early 1990s, formed by members of Toxik.\n4) A neoclassical darkwave project from Germany.\n5) A gothic rock band from Minneapolis, MN, United States.\n6) A now defunct early to mid 90s hardcore band from Philadelphia, PA, United States.\n7) A disbanded doom metal band from Russia. <a href=\"https://www.last.fm/music/Autumn\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914466, 0, 0, '2022-03-10 12:14:26', 0),
(1483009880, 'maarten', 'Maarten', '', 'https://music.apple.com/us/artist/maarten/1483009880?uo=4', 'Maarten', 7, 'There are 2 artistst called Maarten.\n\n1:\nMaarten a experimental electronica producer, now known as ziez <a href=\"https://www.last.fm/music/Maarten\">Read more on Last.fm</a>', 'There are 2 artistst called Maarten.\n\n1:\nMaarten a experimental electronica producer, now known as ziez <a href=\"https://www.last.fm/music/Maarten\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914473, 0, 0, '2022-03-10 12:14:33', 0),
(73359636, 'the-hit-crew', 'The Hit Crew', '', 'https://music.apple.com/us/artist/the-hit-crew/73359636?uo=4', 'The Hit Crew', 7, 'The Hit Crew are a cover band. <a href=\"https://www.last.fm/music/The+Hit+Crew\">Read more on Last.fm</a>', 'The Hit Crew are a cover band. <a href=\"https://www.last.fm/music/The+Hit+Crew\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914475, 0, 0, '2022-03-10 12:14:35', 0),
(1530395025, 'golden-frown', 'Golden Frown', '', 'https://music.apple.com/us/artist/golden-frown/1530395025?uo=4', 'Golden Frown', 7, ' <a href=\"https://www.last.fm/music/Golden+Frown\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Golden+Frown\">Read more on Last.fm</a>', '', '1', 1646914476, 0, 0, '2022-03-10 12:14:36', 0),
(5131176, 'ali-vegas', 'Ali Vegas', '', 'https://music.apple.com/us/artist/ali-vegas/5131176?uo=4', 'Ali Vegas', 7, 'Ali Vegas is an underground rap artist from South Jamaica, Queens, New York. He is a close childhood friend of NBA Player Lamar Odom (Odom often affectionately calls Vegas his \"cousin\"; however, they are not related). He is currently signed to Odom\'s label Rich Soil.\n\nHe announced he is changing his name to \"Hebrew 12:15\" in honour of Odom\'s son, Jayden, who died at the age of 7 months in late June 2006. Jayden was born on December 15th, 2005. This album will feature production by DJ Premier <a href=\"https://www.last.fm/music/Ali+Vegas\">Read more on Last.fm</a>', 'Ali Vegas is an underground rap artist from South Jamaica, Queens, New York. He is a close childhood friend of NBA Player Lamar Odom (Odom often affectionately calls Vegas his \"cousin\"; however, they are not related). He is currently signed to Odom\'s label Rich Soil.\n\nHe announced he is changing his name to \"Hebrew 12:15\" in honour of Odom\'s son, Jayden, who died at the age of 7 months in late June 2006. Jayden was born on December 15th, 2005. This album will feature production by DJ Premier <a href=\"https://www.last.fm/music/Ali+Vegas\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914524, 0, 0, '2022-03-10 12:15:24', 0),
(1526194368, 'me-levantar-', 'ME LEVANTARÃ', '', 'https://music.apple.com/us/artist/me-levantar%C3%A9/1526194368?uo=4', 'ME LEVANTARÃ', 7, ' <a href=\"https://www.last.fm/music/ME+LEVANTAR%C3%89\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/ME+LEVANTAR%C3%89\">Read more on Last.fm</a>', '', '1', 1646914537, 0, 0, '2022-03-10 12:15:37', 0),
(72929426, 'yandel', 'Yandel', '', 'https://music.apple.com/us/artist/yandel/72929426?uo=4', 'Yandel', 7, 'Yandel is half of the superstar reggaeton duo Wisin & Yandel, who enjoyed mainstream breakthrough success with Pa\'l Mundo (2005). Born Llandel Veguilla Malavé on January 14, 1977, in Cayey, Puerto Rico, he and Wisin began performing as a duo in the late \'90s (Yandel then billing himself as \"Llandel\") and made their album debut in 2000 with Los Reyes del Nuevo Milenio. They later made the jump to a major label in 2003 with Mi Vida... My Life, their first for Universal subsidiary Machete Music. <a href=\"https://www.last.fm/music/Yandel\">Read more on Last.fm</a>', 'Yandel is half of the superstar reggaeton duo Wisin & Yandel, who enjoyed mainstream breakthrough success with Pa\'l Mundo (2005). Born Llandel Veguilla Malavé on January 14, 1977, in Cayey, Puerto Rico, he and Wisin began performing as a duo in the late \'90s (Yandel then billing himself as \"Llandel\") and made their album debut in 2000 with Los Reyes del Nuevo Milenio. They later made the jump to a major label in 2003 with Mi Vida... My Life, their first for Universal subsidiary Machete Music. <a href=\"https://www.last.fm/music/Yandel\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914718, 0, 0, '2022-03-10 12:18:38', 0);
INSERT INTO `tbl_artists` (`id`, `artist_seo`, `keywords`, `lastfm_url`, `itunes_url`, `artist_name`, `genere_cat`, `artist_description`, `summary`, `artist_img`, `artist_status`, `posted_date`, `latest_one`, `popular_artist`, `updated_by_itunes`, `cron_status`) VALUES
(32849, 'franco-de-vita', 'Franco de Vita', '', 'https://music.apple.com/us/artist/franco-de-vita/32849?uo=4', 'Franco de Vita', 7, 'Franco De Vita (born January 23, 1954 in Caracas, Venezuela) is a singer-songwriter popular in Latin music.\n\nOne of three children born in Latin America to Italian immigrants, De Vita’s family returned to Italy when he was 3. The family moved back to Venezuela when De Vita was 13, and he later studied piano at the university level.\n\nIn 1982, De Vita formed the group Icaro, which released one self-titled album in his homeland. Two years later, he released his first disc as a solo artist, simply titled Franco De Vita. <a href=\"https://www.last.fm/music/Franco+De+Vita\">Read more on Last.fm</a>', 'Franco De Vita (born January 23, 1954 in Caracas, Venezuela) is a singer-songwriter popular in Latin music.\n\nOne of three children born in Latin America to Italian immigrants, De Vita’s family returned to Italy when he was 3. The family moved back to Venezuela when De Vita was 13, and he later studied piano at the university level.\n\nIn 1982, De Vita formed the group Icaro, which released one self-titled album in his homeland. Two years later, he released his first disc as a solo artist, simply titled Franco De Vita. <a href=\"https://www.last.fm/music/Franco+De+Vita\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914727, 0, 0, '2022-03-10 12:18:47', 0),
(363394668, 'a-b-quintanilla-s-all-starz', 'A.B. Quintanilla&#39;s All Starz', '', 'https://music.apple.com/us/artist/a-b-quintanillas-all-starz/363394668?uo=4', 'A.B. Quintanilla&#39;s All Starz', 7, ' <a href=\"https://www.last.fm/music/A.B.+Quintanilla%27s+All+Starz\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/A.B.+Quintanilla%27s+All+Starz\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914721, 0, 0, '2022-03-10 12:18:41', 0),
(3500477, 'los-ngeles-azules', 'Los Ãngeles Azules', '', 'https://music.apple.com/us/artist/los-%C3%A1ngeles-azules/3500477?uo=4', 'Los Ãngeles Azules', 7, 'Los Ángeles Azules are a Mexican group specialized in Cumbia / banda music formed in Mexico City, Mexico in 1976 by brothers Elas, Jose and Jorge Meja Avante.\n\nPlaying a Latin style known as onda grupera, the band became a chart-topping act after issuing \"Inolvidables\" in 1996, soon, achieving platinum status in Argentina where they successfully performed live in 1998. Later, singer Carlos Veises decided to leave the group, forming his own band called Los Ángeles de Charlie. <a href=\"https://www.last.fm/music/+noredirect/Los+%C3%81ngeles+Azules\">Read more on Last.fm</a>', 'Los Ángeles Azules are a Mexican group specialized in Cumbia / banda music formed in Mexico City, Mexico in 1976 by brothers Elas, Jose and Jorge Meja Avante.\n\nPlaying a Latin style known as onda grupera, the band became a chart-topping act after issuing \"Inolvidables\" in 1996, soon, achieving platinum status in Argentina where they successfully performed live in 1998. Later, singer Carlos Veises decided to leave the group, forming his own band called Los Ángeles de Charlie. <a href=\"https://www.last.fm/music/+noredirect/Los+%C3%81ngeles+Azules\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914725, 0, 0, '2022-03-10 12:18:45', 0),
(4190895, 'victor-manuelle', 'Victor Manuelle', '', 'https://music.apple.com/us/artist/victor-manuelle/4190895?uo=4', 'Victor Manuelle', 7, 'Victor Manuelle ,born Víctor Manuel Ruiz on September 27, 1968 in New York, New York, is a successful Latin Grammy nominated Puerto Rican American salsa singer, songwriter, and improvisational sonero, known to his fans as El Sonero de la Juventud (\"The Youth\'s Sonero\"). He is identified primarily with salsa romantica or \"salsa monga\", but has also experimented with styles ranging from Colombian vallenato to urban reggaeton. Unlike other young salsa performers such as Marc Anthony <a href=\"https://www.last.fm/music/Victor+Manuelle\">Read more on Last.fm</a>', 'Victor Manuelle ,born Víctor Manuel Ruiz on September 27, 1968 in New York, New York, is a successful Latin Grammy nominated Puerto Rican American salsa singer, songwriter, and improvisational sonero, known to his fans as El Sonero de la Juventud (\"The Youth\'s Sonero\"). He is identified primarily with salsa romantica or \"salsa monga\", but has also experimented with styles ranging from Colombian vallenato to urban reggaeton. Unlike other young salsa performers such as Marc Anthony <a href=\"https://www.last.fm/music/Victor+Manuelle\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914729, 0, 0, '2022-03-10 12:18:49', 0),
(104489, 'willie-rosario', 'Willie Rosario', '', 'https://music.apple.com/us/artist/willie-rosario/104489?uo=4', 'Willie Rosario', 7, 'Willie Rosario a.k.a. \"Mr. Afinque\" (born May 6, 1930 in Coamo, Puerto Rico) is a musician, composer and bandleader of salsa music.\n \nWillie Rosario\n\nRosario (born Fernando Luis Rosario Marin) was raised in a poor but, hard working family. His parents realized that as a child Willie was musically inclined and had him take guitar lessons at the age of 6. He received his primary and secondary education in his hometown. His mother also had him take saxophone classes, however what he really was interested in was the conga. <a href=\"https://www.last.fm/music/Willie+Rosario\">Read more on Last.fm</a>', 'Willie Rosario a.k.a. \"Mr. Afinque\" (born May 6, 1930 in Coamo, Puerto Rico) is a musician, composer and bandleader of salsa music.\n \nWillie Rosario\n\nRosario (born Fernando Luis Rosario Marin) was raised in a poor but, hard working family. His parents realized that as a child Willie was musically inclined and had him take guitar lessons at the age of 6. He received his primary and secondary education in his hometown. His mother also had him take saxophone classes, however what he really was interested in was the conga. <a href=\"https://www.last.fm/music/Willie+Rosario\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914738, 0, 0, '2022-03-10 12:18:58', 0),
(270528403, 'hector-acosta-el-torito-', 'Hector Acosta (El Torito)', '', 'https://music.apple.com/us/artist/hector-acosta-el-torito/270528403?uo=4', 'Hector Acosta (El Torito)', 7, ' <a href=\"https://www.last.fm/music/Hector+Acosta+(El+Torito)\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Hector+Acosta+(El+Torito)\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914744, 0, 0, '2022-03-10 12:19:04', 0),
(3267375, 'issac-delgado', 'Issac Delgado', '', 'https://music.apple.com/us/artist/issac-delgado/3267375?uo=4', 'Issac Delgado', 7, 'Issac Delgado is a Cuban salsa artist. Born in 1962 in Mariano, Havana, he began his professional career in 1983, becoming part of the Orquestra de Pancho Alonso; he travelled with the orchestra and in 1987 became the vocalist for Galaxia.\n\nBorn: Sept. 11, 1962\n\nTrivia: Delgado spells his first name \'Issac\' rather than \'Isaac\' because at one time a promoter suggested that if it were spelled with the second \'s\' backwards, it would form an inspiring heart. <a href=\"https://www.last.fm/music/Issac+Delgado\">Read more on Last.fm</a>', 'Issac Delgado is a Cuban salsa artist. Born in 1962 in Mariano, Havana, he began his professional career in 1983, becoming part of the Orquestra de Pancho Alonso; he travelled with the orchestra and in 1987 became the vocalist for Galaxia.\n\nBorn: Sept. 11, 1962\n\nTrivia: Delgado spells his first name \'Issac\' rather than \'Isaac\' because at one time a promoter suggested that if it were spelled with the second \'s\' backwards, it would form an inspiring heart. <a href=\"https://www.last.fm/music/Issac+Delgado\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914755, 0, 0, '2022-03-10 12:19:15', 0),
(6630759, 'javen', 'Javen', '', 'https://music.apple.com/us/artist/javen/6630759?uo=4', 'Javen', 7, 'An extraordinary response is usually commonplace when encountering the dynamic talents of singer/songwriter, actor, and producer Jáven. Growing up as the son of a preacher, Jáven knows what it means to be affected by another\'s ability to communicate. Whether through song or the spoken word, it becomes quickly evident to those who are affected by his performances. Brazil, Indonesia, Hong Kong, and Europe are some of the international countries where Javen has performed. <a href=\"https://www.last.fm/music/Javen\">Read more on Last.fm</a>', 'An extraordinary response is usually commonplace when encountering the dynamic talents of singer/songwriter, actor, and producer Jáven. Growing up as the son of a preacher, Jáven knows what it means to be affected by another\'s ability to communicate. Whether through song or the spoken word, it becomes quickly evident to those who are affected by his performances. Brazil, Indonesia, Hong Kong, and Europe are some of the international countries where Javen has performed. <a href=\"https://www.last.fm/music/Javen\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914883, 0, 0, '2022-03-10 12:21:23', 0),
(198012194, 'ted-winn', 'Ted Winn', '', 'https://music.apple.com/us/artist/ted-winn/198012194?uo=4', 'Ted Winn', 7, ' <a href=\"https://www.last.fm/music/Ted+Winn\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Ted+Winn\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914859, 0, 0, '2022-03-10 12:20:59', 0),
(14956406, 'jason-nelson', 'Jason Nelson', '', 'https://music.apple.com/us/artist/jason-nelson/14956406?uo=4', 'Jason Nelson', 7, 'Jason, the son of a Pentecostal Bishop, grew up surrounded by gospel music. From the traditional hymn to the contemporaries of that day such as the Winans, the Hawkins family, Andre Crouch, Daryl Coley and Vanessa Bell Armstrong, Jason followed gospel music. Today, Jason claims influences from Fred Hammond, Dawkins & Dawkins, Kim Burrell, Donald Lawrence, Donnie Hathaway and Stevie Wonder. Jason honed his musical skills under the tutelage of the late Dr. Nathan Carter at both the Baltimore School of the Arts and Morgan State University.  <a href=\"https://www.last.fm/music/Jason+Nelson\">Read more on Last.fm</a>', 'Jason, the son of a Pentecostal Bishop, grew up surrounded by gospel music. From the traditional hymn to the contemporaries of that day such as the Winans, the Hawkins family, Andre Crouch, Daryl Coley and Vanessa Bell Armstrong, Jason followed gospel music. Today, Jason claims influences from Fred Hammond, Dawkins & Dawkins, Kim Burrell, Donald Lawrence, Donnie Hathaway and Stevie Wonder. Jason honed his musical skills under the tutelage of the late Dr. Nathan Carter at both the Baltimore School of the Arts and Morgan State University.  <a href=\"https://www.last.fm/music/Jason+Nelson\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914861, 0, 0, '2022-03-10 12:21:01', 0),
(1582234774, 'mike-brown-focus', 'Mike Brown & Focus', '', 'https://music.apple.com/us/artist/mike-brown/1582234774?uo=4', 'Mike Brown & Focus', 7, 'No Description', 'No Summary', '', '1', 1646914866, 0, 0, '2022-03-10 12:21:06', 0),
(1022630798, 'apostle-herman-murray-the-fght-mass-choir', 'Apostle Herman Murray & The FGHT Mass Choir', '', 'https://music.apple.com/us/artist/apostle-herman-murray/1022630798?uo=4', 'Apostle Herman Murray & The FGHT Mass Choir', 7, 'No Description', 'No Summary', '', '1', 1646914922, 0, 0, '2022-03-10 12:22:02', 0),
(530052763, 'jonathan-ferguson', 'Jonathan Ferguson', '', 'https://books.apple.com/us/artist/jonathan-ferguson/530052763?uo=4', 'Jonathan Ferguson', 7, ' <a href=\"https://www.last.fm/music/Jonathan+Ferguson\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Jonathan+Ferguson\">Read more on Last.fm</a>', '', '1', 1646914900, 0, 0, '2022-03-10 12:21:40', 0),
(419348639, 'q-parker', 'Q Parker', '', 'https://music.apple.com/us/artist/q-parker/419348639?uo=4', 'Q Parker', 7, 'Q Parker is an American singer-songwriter and actor, best known for being the founding member of R&B group  112\n\nQ Parker has almost 25 years of experience in music as part of the multiplatinum recording group 112. Since entering the music industry, Q has garnered many accolades, including a Grammy award, an MTV video music award, two double platinum albums, two gold albums and numerous television appearances including Late Night with David Letterman, Live with Regis & Kelly and MTV Cribs. <a href=\"https://www.last.fm/music/Q+Parker\">Read more on Last.fm</a>', 'Q Parker is an American singer-songwriter and actor, best known for being the founding member of R&B group  112\n\nQ Parker has almost 25 years of experience in music as part of the multiplatinum recording group 112. Since entering the music industry, Q has garnered many accolades, including a Grammy award, an MTV video music award, two double platinum albums, two gold albums and numerous television appearances including Late Night with David Letterman, Live with Regis & Kelly and MTV Cribs. <a href=\"https://www.last.fm/music/Q+Parker\">Read more on Last.fm</a>', 'https://lastfm.freetls.fastly.net/i/u/300x300/2a96cbd8b46e442fc41c2b86b821562f.png', '1', 1646914904, 0, 0, '2022-03-10 12:21:44', 0),
(306425429, 'sonnie-badu', 'Sonnie Badu', '', 'https://music.apple.com/us/artist/sonnie-badu/306425429?uo=4', 'Sonnie Badu', 7, ' <a href=\"https://www.last.fm/music/Sonnie+Badu\">Read more on Last.fm</a>', ' <a href=\"https://www.last.fm/music/Sonnie+Badu\">Read more on Last.fm</a>', '', '1', 1646914911, 0, 0, '2022-03-10 12:21:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_artist_album`
--

CREATE TABLE `tbl_artist_album` (
  `id` bigint(20) NOT NULL,
  `album_title` varchar(255) NOT NULL,
  `album_seo` varchar(255) NOT NULL,
  `album_artist_id` int(11) NOT NULL,
  `album_description` mediumtext NOT NULL,
  `album_picture` varchar(255) NOT NULL,
  `album_status` enum('1','0') NOT NULL DEFAULT '1',
  `popular_album` int(11) NOT NULL,
  `posted_date` int(11) NOT NULL,
  `latest_one` int(11) NOT NULL DEFAULT 0,
  `years` varchar(4) NOT NULL,
  `keywords` mediumtext NOT NULL,
  `itunes_url` varchar(255) NOT NULL,
  `track_count` int(11) NOT NULL,
  `ranking_order` int(11) NOT NULL,
  `updated_by_itunes` datetime NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `check_status` int(11) NOT NULL COMMENT 'date wise test cron job',
  `cron_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_artist_album`
--

INSERT INTO `tbl_artist_album` (`id`, `album_title`, `album_seo`, `album_artist_id`, `album_description`, `album_picture`, `album_status`, `popular_album`, `posted_date`, `latest_one`, `years`, `keywords`, `itunes_url`, `track_count`, `ranking_order`, `updated_by_itunes`, `price`, `check_status`, `cron_status`) VALUES
(587008000, 'Giorgio Gaber', 'giorgio-gaber', 18200208, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/8ae3963e81bd56231b57d83595435a71.jpg', '1', 0, 1638594546, 0, '2001', '', 'https://music.apple.com/us/album/da-te-era-bello-restar/587008000?i=587008150&uo=4', 23, 1, '2021-12-04 05:09:06', 5.99, 0, 0),
(1404474296, 'Italian Classics: Giorgio Gaber Collection, Vol. 2', 'italian-classics-giorgio-gaber-collection-vol-2', 18200208, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/deab6408a4cc494d8d08c5b171097973.jpg', '1', 0, 1638594550, 0, '1968', '', 'https://music.apple.com/us/album/a-pizza/1404474296?i=1404475192&uo=4', 12, 1, '2021-12-04 05:09:10', 9.99, 0, 0),
(645888293, 'Enzo Jannacci: Rarity Collection (feat. Giorgio Gaber)', 'enzo-jannacci-rarity-collection-feat-giorgio-gaber-', 26365705, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/c12445846e7a44328c826a4df436823b.jpg', '1', 0, 1638594559, 0, '2007', '', 'https://music.apple.com/us/album/gheru-gheru/645888293?i=645888551&uo=4', 17, 1, '2021-12-04 05:09:19', 5.99, 0, 0),
(579455085, 'Giorgio Gaber (Rarity Collection)', 'giorgio-gaber-rarity-collection-', 18200208, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/96442379e97d4001bbe425bdb87ef7f4.jpg', '1', 0, 1638594576, 0, '2001', '', 'https://music.apple.com/us/album/il-cane-e-la-stella-feat-enzo-jannacci/579455085?i=579455438&uo=4', 23, 1, '2021-12-04 05:09:36', 5.99, 0, 0),
(569402530, 'Le Stagioni del Signor Gaber (The Best of Giorgio Gaber: Goganga, Il Riccardo, Vola Vola and more...)', 'le-stagioni-del-signor-gaber-the-best-of-giorgio-gaber-goganga-il-riccardo-vola-vola-and-more-', 18200208, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/90aa68ca2d5849adb337a1a1c078d1bc.jpg', '1', 0, 1638594581, 0, '2001', '', 'https://music.apple.com/us/album/ragiona-amico-mio/569402530?i=569402794&uo=4', 18, 1, '2021-12-04 05:09:41', 0, 0, 0),
(324215423, 'Invidia', 'invidia', 323820642, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/ae23b6f9e39543acadf121492ad0b5a3.jpg', '1', 0, 1638594563, 0, '2009', '', 'https://music.apple.com/us/album/destra-sinistra-with-voice-giorgio-gaber-feat-metro/324215423?i=324216398&uo=4', 19, 1, '2021-12-04 05:09:23', 6.99, 0, 0),
(1404486164, 'Italian Classics: Giorgio Gaber Collection, Vol. 1', 'italian-classics-giorgio-gaber-collection-vol-1', 18200208, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/6a4778d19b87499ebf709193ec779035.jpg', '1', 0, 1638594565, 0, '1965', '', 'https://music.apple.com/us/album/e-allora-dai/1404486164?i=1404486186&uo=4', 12, 1, '2021-12-04 05:09:25', 9.99, 0, 0),
(596330870, 'Birra (feat. Giorgio Gaber & Enzo Jannacci) - Single', 'birra-feat-giorgio-gaber-enzo-jannacci---single', 62743472, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/5b/95/35/5b9535c5-97aa-19ad-c5a5-0333e9c31ace/source/370x370bb.jpg', '1', 0, 1638594569, 0, '2012', '', 'https://music.apple.com/us/album/birra-feat-giorgio-gaber-enzo-jannacci/596330870?i=596330906&uo=4', 1, 1, '2021-12-04 05:09:29', 0.99, 0, 0),
(1459462562, 'Modulations', 'modulations', 566009830, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/9a/b1/72/9ab172d5-b85e-d7dc-68a2-fdaa0921c7f2/source/370x370bb.jpg', '1', 0, 1638594653, 0, '2019', '', 'https://music.apple.com/us/album/tobias-burger/1459462562?i=1459462576&uo=4', 5, 1, '2021-12-04 05:10:53', 5.99, 0, 0),
(1150632557, 'The Bob&#39;s Burgers Music Album', 'the-bob-s-burgers-music-album', 1379012280, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/bc/71/83/bc718348-5cb7-4b7a-b335-7b29a86a4e26/source/370x370bb.jpg', '1', 0, 1638594655, 0, '2017', '', 'https://music.apple.com/us/album/butts-butts-butts/1150632557?i=1150633286&uo=4', 112, 1, '2021-12-04 05:10:55', 14.99, 0, 0),
(1564102912, 'Empty Streets', 'empty-streets', 725077219, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/5e/95/1c/5e951c93-f51e-bebb-c401-eeba26f08247/source/370x370bb.jpg', '1', 0, 1638594656, 0, '2021', '', 'https://music.apple.com/us/album/bbq-burger-blues/1564102912?i=1564102921&uo=4', 9, 1, '2021-12-04 05:10:56', 10.99, 0, 0),
(205597205, 'Und die Erde ist noch warm', 'und-die-erde-ist-noch-warm', 205597208, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', '1', 0, 1638594701, 0, '2006', '', 'https://music.apple.com/us/album/narben/205597205?i=205597302&uo=4', 13, 1, '2021-12-04 05:11:41', 9.99, 0, 0),
(908629939, 'Sommerweg', 'sommerweg', 205597208, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', '1', 0, 1638594704, 0, '2014', '', 'https://music.apple.com/us/album/kreuz-fahrt/908629939?i=908629962&uo=4', 13, 1, '2021-12-04 05:11:44', 9.99, 0, 0),
(1390486261, 'Ð¢ÑÐ°Ð½Ñ 2. Ð¡ÐµÑÐ´ÑÐµÐ²Ð¸Ð½Ð°', '-2-', 430626563, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/2d/bb/31/2dbb3169-eaee-79b9-700a-df0d61bf9d66/source/370x370bb.jpg', '1', 0, 1638594923, 0, '2018', '', 'https://music.apple.com/us/album/%D1%80%D0%BE%D0%B3%D0%B0-feat-5-%D0%BF%D0%BB%D1%8E%D1%85-mezza-morta/1390486261?i=1390486718&uo=4', 55, 1, '2021-12-04 05:15:23', 8.99, 0, 0),
(1592335492, 'ÐÑ Ð»ÑÐ±Ð²Ð¸ Ð´Ð¾ Ð½ÐµÐ½Ð°Ð²Ð¸ÑÑÐ¸', '-', 1189937543, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music116/v4/ff/06/fc/ff06fc4a-1f6c-120c-4d2a-1a2f946c73d4/source/370x370bb.jpg', '1', 0, 1638594925, 0, '2011', '', 'https://music.apple.com/us/album/%D1%82%D1%91%D0%BC%D0%BD%D1%8B%D0%B5-%D0%BE%D1%87%D0%BA%D0%B8-feat-%D1%81%D0%BC%D0%BE%D0%BA%D0%B8-%D0%BC%D0%BE-mezza-morta-%D0%BC%D0%B8%D1%88%D0%B0-%D0%BA%D1%80%D1%83%D0%BF%D0%B8%D0%BD-big/1592335492?i=1592335749&uo=4', 12, 1, '2021-12-04 05:15:25', 10.99, 0, 0),
(1574206881, '1000 (feat. DJ Nik One, ÐÐ¸ÑÐ° ÐÑÑÐ¿Ð¸Ð½ & ÐÐÐÐÐ) - Single', '1000-feat-dj-nik-one---single', 455576259, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/df/66/ce/df66ce9e-1dcb-98cc-289d-a4df2f6f722d/source/370x370bb.jpg', '1', 0, 1638594927, 0, '2021', '', 'https://music.apple.com/us/album/1000-feat-dj-nik-one-%D0%BC%D0%B8%D1%88%D0%B0-%D0%BA%D1%80%D1%83%D0%BF%D0%B8%D0%BD-%D0%BC%D0%B5%D0%B7%D0%B7%D0%B0/1574206881?i=1574206886&uo=4', 1, 1, '2021-12-04 05:15:27', 1.29, 0, 0),
(1501004030, 'La giusta distanza', 'la-giusta-distanza', 1498392450, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/d79cde6365c5065b42b42709b5d0128d.jpg', '1', 0, 1638594929, 0, '2020', '', 'https://music.apple.com/us/album/spezzata-con-grazia/1501004030?i=1501004034&uo=4', 8, 1, '2021-12-04 05:15:29', 7.92, 0, 0),
(1596494441, 'BITCHES AIN&#39;T SHIT, Vol. III', 'bitches-ain-t-shit-vol-iii', 1565970076, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/ef/fe/8d/effe8d37-c9b5-7fcc-d0d9-821afbc90aa3/source/370x370bb.jpg', '1', 0, 1638594931, 0, '2021', '', 'https://music.apple.com/us/album/m%C3%A4mm%C3%A4-h%C3%B8-sc%C3%B8p%C3%A4t%C3%B8-un%C3%A4-e-girl-pt-iii/1596494441?i=1596494449&uo=4', 7, 1, '2021-12-04 05:15:31', 6.93, 0, 0),
(916840730, 'Machete Mixtape, Vol. 3 (Special Edition)', 'machete-mixtape-vol-3-special-edition-', 41729021, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/c3/04/05/c3040531-2807-e6a2-3505-ad1e1008ab85/source/370x370bb.jpg', '1', 0, 1638594933, 0, '2014', '', 'https://music.apple.com/us/album/enfant-terrible-feat-belzebass-stereoliez/916840730?i=916843364&uo=4', 28, 1, '2021-12-04 05:15:33', -1, 0, 0),
(421129714, 'Tutte Le Strade Portano A Roma', 'tutte-le-strade-portano-a-roma', 125369309, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/5e/bb/39/5ebb3930-39bb-8d86-b69e-71fcbc718142/source/370x370bb.jpg', '1', 0, 1638594935, 0, '2008', '', 'https://music.apple.com/us/album/le-streghe/421129714?i=421129752&uo=4', 16, 1, '2021-12-04 05:15:35', 13.99, 0, 0),
(1513025959, 'Squatter - EP', 'squatter---ep', 593452546, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/f2/cb/f5/f2cbf5b9-8ed5-a7b9-2b94-fdfd77787128/source/370x370bb.jpg', '1', 0, 1638594937, 0, '2014', '', 'https://music.apple.com/us/album/le-foglie-sui-miei-vestiti-sono-il-sangue-del-parco/1513025959?i=1513025969&uo=4', 5, 1, '2021-12-04 05:15:37', 3.99, 0, 0),
(1250823399, 'Hanglover', 'hanglover', 575910990, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/cd238225f1abbc39600ff96c76305378.jpg', '1', 0, 1638594938, 0, '2017', '', 'https://music.apple.com/us/album/vuoi-ballare-con-me-feat-madh/1250823399?i=1250823923&uo=4', 17, 1, '2021-12-04 05:15:38', 11.99, 0, 0),
(1086697810, 'Le piÃ¹ belle canzoni romane', 'le-pi-belle-canzoni-romane', 125369309, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music49/v4/c4/09/dc/c409dc4a-3e7e-660c-01ac-3a1aca70454d/source/370x370bb.jpg', '1', 0, 1638594940, 0, '2008', '', 'https://music.apple.com/us/album/le-streghe/1086697810?i=1086699043&uo=4', 15, 1, '2021-12-04 05:15:40', 44.39, 0, 0),
(1512822859, 'Senontipiacefalostesso B-sides', 'senontipiacefalostesso-b-sides', 593452546, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/3939a05c8ceadf210db43924dd6b7bc6.jpg', '1', 0, 1638594942, 0, '2014', '', 'https://music.apple.com/us/album/le-foglie-sui-miei-vestiti-sono-il-sangue-del-parco/1512822859?i=1512822867&uo=4', 14, 1, '2021-12-04 05:15:42', 9.99, 0, 0),
(294826711, '100 Campane 100 Canzoni', '100-campane-100-canzoni', 125369309, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/28/db/6c/28db6ca9-92bd-92db-5b8d-99ef80a7e5b5/source/370x370bb.jpg', '1', 0, 1638594945, 0, '2008', '', 'https://music.apple.com/us/album/le-streghe/294826711?i=294826995&uo=4', 22, 1, '2021-12-04 05:15:45', 54.99, 0, 0),
(987202729, 'Senontipiacefalostesso B-Sides', 'senontipiacefalostesso-b-sides', 593452546, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/3939a05c8ceadf210db43924dd6b7bc6.jpg', '1', 0, 1638594947, 0, '2014', '', 'https://music.apple.com/us/album/le-foglie-sui-miei-vestiti-sono-il-sangue-del-parco/987202729?i=987202836&uo=4', 14, 1, '2021-12-04 05:15:47', 9.99, 0, 0),
(1543261258, 'Antologia della Cameretta', 'antologia-della-cameretta', 593452546, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/ac74462228d155e979af9a3128c468ce.jpg', '1', 0, 1638594949, 0, '2017', '', 'https://music.apple.com/us/album/le-foglie-sui-miei-vestiti-sono-il-sangue-del-parco-demo/1543261258?i=1543261460&uo=4', 20, 1, '2021-12-04 05:15:49', 49.99, 0, 0),
(1439404169, 'Dale', 'dale', 272692452, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/d16001afdd28472b65bfb5ebcb224066.jpg', '1', 0, 1638595208, 0, '2014', '', 'https://music.apple.com/us/album/que-lo-que-feat-pitbull-papayo-el-chevo/1439404169?i=1439404234&uo=4', 12, 1, '2021-12-04 05:20:08', 9.99, 0, 0),
(1439404242, 'Armando', 'armando', 27044968, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/043e3828b669490193bf2c4a3c5388a1.png', '1', 0, 1638595129, 0, '2010', '', 'https://music.apple.com/us/album/watagatapitusberry-feat-lil-jon-sensato-black-point/1439404242?i=1439404410&uo=4', 12, 1, '2021-12-04 05:18:49', 9.99, 0, 0),
(1439396129, 'Armando (Deluxe Version)', 'armando-deluxe-version-', 27044968, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/6fa1508fc4c34eff8597f685bdaa22d3.png', '1', 0, 1638595131, 0, '2010', '', 'https://music.apple.com/us/album/watagatapitusberry-feat-lil-jon-sensato-black-point/1439396129?i=1439396364&uo=4', 14, 1, '2021-12-04 05:18:51', 10.99, 0, 0),
(737053237, 'Global Warming: Meltdown (Deluxe Version)', 'global-warming-meltdown-deluxe-version-', 27044968, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/712ef010da80d52d1a2a0b387ed4d472.jpg', '1', 0, 1638595134, 0, '2012', '', 'https://music.apple.com/us/album/global-warming-feat-sensato/737053237?i=737053270&uo=4', 17, 1, '2021-12-04 05:18:54', 9.99, 0, 0),
(891372996, 'Latin Hits 2014 Summer Edition - 56 Latin Smash Hits', 'latin-hits-2014-summer-edition---56-latin-smash-hits', 27044968, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/4e/ff/7a/4eff7a1b-d14b-fa53-fd3f-2b0083d59efa/source/370x370bb.jpg', '1', 0, 1638595136, 0, '2005', '', 'https://music.apple.com/us/album/el-taxi-feat-osmani-garcia-sensato-extended-mix/891372996?i=891373088&uo=4', 56, 1, '2021-12-04 05:18:56', 6.99, 0, 0),
(321562856, 'Sensato Camdombe Latinjazz', 'sensato-camdombe-latinjazz', 321562857, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/b237c270224c61a16e175ced9de843ba.jpg', '1', 0, 1638595137, 0, '2009', '', 'https://music.apple.com/us/album/sensato/321562856?i=321562874&uo=4', 8, 1, '2021-12-04 05:18:57', 7.92, 0, 0),
(1456118789, 'El Mario&#39; de Tu Mujer (feat. Sensato) - Single', 'el-mario-de-tu-mujer-feat-sensato---single', 129181816, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/eb/8a/29/eb8a29f4-46db-60e2-ab3c-8ab4d474316e/source/370x370bb.jpg', '1', 0, 1638595139, 0, '2014', '', 'https://music.apple.com/us/album/el-mario-de-tu-mujer-feat-sensato/1456118789?i=1456118791&uo=4', 1, 1, '2021-12-04 05:18:59', 0.99, 0, 0),
(1445042071, 'Salud (feat. Reek Rude, Sensato & Wilmer Valderrama) - Single', 'salud-feat-reek-rude-sensato-wilmer-valderrama---single', 67745826, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/82/87/81/828781d9-cb20-31e2-4bdf-01b99914757c/source/370x370bb.jpg', '1', 0, 1638595141, 0, '2013', '', 'https://music.apple.com/us/album/salud-feat-reek-rude-sensato-wilmer-valderrama/1445042071?i=1445042297&uo=4', 1, 1, '2021-12-04 05:19:01', 1.29, 0, 0),
(945507889, 'Latin Hits 2015 Club Edition - 60 Latin Music Hits', 'latin-hits-2015-club-edition---60-latin-music-hits', 27044968, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music124/v4/48/1d/5c/481d5c2b-dd31-2892-b41d-c8a5493a93c6/source/370x370bb.jpg', '1', 0, 1638595142, 0, '2014', '', 'https://music.apple.com/us/album/el-taxi-feat-osmani-garcia-sensato/945507889?i=945507935&uo=4', 60, 1, '2021-12-04 05:19:02', 6.99, 0, 0),
(1067407550, 'Latin Hits 2016 Club Edition - 60 Latin Music Hits', 'latin-hits-2016-club-edition---60-latin-music-hits', 27044968, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/01/b1/7a/01b17ae9-2c44-2ea1-74c0-5b47b9dc93a1/source/370x370bb.jpg', '1', 0, 1638595144, 0, '2014', '', 'https://music.apple.com/us/album/el-taxi-feat-osmani-garcia-sensato/1067407550?i=1067408101&uo=4', 60, 1, '2021-12-04 05:19:04', 6.99, 0, 0),
(1452916586, 'Sensato - Single', 'sensato---single', 300842104, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/6b/9d/87/6b9d87c0-6dc9-f08c-f51a-88067d363bf2/source/370x370bb.jpg', '1', 0, 1638595146, 0, '2019', '', 'https://music.apple.com/us/album/sensato/1452916586?i=1452916590&uo=4', 1, 1, '2021-12-04 05:19:06', 0.99, 0, 0),
(1439404052, 'I Am Armando', 'i-am-armando', 27044968, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/02ac98b64bc34e9f844ecae676207a0a.jpg', '1', 0, 1638595148, 0, '2010', '', 'https://music.apple.com/us/album/watagatapitusberry-feat-lil-jon-sensato-black-point/1439404052?i=1439404281&uo=4', 14, 1, '2021-12-04 05:19:08', 11.99, 0, 0),
(381719478, 'La MÃºsica del Futuro', 'la-m-sica-del-futuro', 723715352, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/ee94903441594d90b514b6386174e453.jpg', '1', 0, 1638595150, 0, '2010', '', 'https://music.apple.com/us/album/que-buena-tu-ta-feat-black-point-mozart-la-para-los/381719478?i=381719800&uo=4', 18, 1, '2021-12-04 05:19:10', 9.99, 0, 0),
(1574219543, 'Doce Insensatez (AcÃºstico) - EP', 'doce-insensatez-ac-stico---ep', 1517484324, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/d2/86/c4/d286c4d8-9986-9167-7369-89a682bff650/source/370x370bb.jpg', '1', 0, 1638595151, 0, '2021', '', 'https://music.apple.com/us/album/sensato-ac%C3%BAstico/1574219543?i=1574219547&uo=4', 5, 1, '2021-12-04 05:19:11', 6.45, 0, 0),
(1596414220, 'Sensato - Single', 'sensato---single', 1533161762, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music126/v4/81/ba/9c/81ba9cf6-40c9-81e5-a2ca-7f62f2c6c7a9/source/370x370bb.jpg', '1', 0, 1638595153, 0, '2021', '', 'https://music.apple.com/us/album/sensato/1596414220?i=1596414221&uo=4', 1, 1, '2021-12-04 05:19:13', 0.99, 0, 0),
(1514662073, 'Sensato - Single', 'sensato---single', 1448542620, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/9c/8f/32/9c8f3207-be0b-89d0-d958-bb4bb5b65909/source/370x370bb.jpg', '1', 0, 1638595155, 0, '2020', '', 'https://music.apple.com/us/album/sensato/1514662073?i=1514662077&uo=4', 1, 1, '2021-12-04 05:19:15', 0.99, 0, 0),
(1552536770, 'Sensato - Single', 'sensato---single', 1505278036, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music114/v4/d2/12/c9/d212c9c5-db74-c9e4-83a2-a8beb9d45c80/source/370x370bb.jpg', '1', 0, 1638595158, 0, '2021', '', 'https://music.apple.com/us/album/sensato/1552536770?i=1552536771&uo=4', 1, 1, '2021-12-04 05:19:18', 0.99, 0, 0),
(1495112749, 'Bello (feat. Sensato Del Patio) - Single', 'bello-feat-sensato-del-patio---single', 630178833, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/40/5b/d5/405bd5ad-ffbb-074c-159f-f253c5069e64/source/370x370bb.jpg', '1', 0, 1638595159, 0, '2013', '', 'https://music.apple.com/us/album/bello-feat-sensato-del-patio/1495112749?i=1495112751&uo=4', 1, 1, '2021-12-04 05:19:19', 1.29, 0, 0),
(736742055, 'Global Warming: Meltdown (Deluxe Version)', 'global-warming-meltdown-deluxe-version-', 27044968, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/712ef010da80d52d1a2a0b387ed4d472.jpg', '0', 0, 1638595161, 0, '2012', '', 'https://music.apple.com/us/album/global-warming-feat-sensato/736742055?i=736742086&uo=4', 17, 1, '2021-12-04 05:19:21', 9.99, 0, 0),
(1135440000, 'Latin Hits 2016 Summer - 60 Latin Music Hits', 'latin-hits-2016-summer---60-latin-music-hits', 27044968, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/55/ac/c0/55acc0db-3055-83cd-83a8-871e3daba677/source/370x370bb.jpg', '1', 0, 1638595163, 0, '2014', '', 'https://music.apple.com/us/album/el-taxi-feat-osmani-garcia-sensato/1135440000?i=1135440510&uo=4', 60, 1, '2021-12-04 05:19:23', 6.99, 0, 0),
(1451890593, 'Sensato - Single', 'sensato---single', 1450952759, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/38/76/f1/3876f1e5-8883-1459-3b4a-c8e30c676dc5/source/370x370bb.jpg', '1', 0, 1638595165, 0, '2019', '', 'https://music.apple.com/us/album/sensato/1451890593?i=1451890594&uo=4', 1, 1, '2021-12-04 05:19:25', 0.99, 0, 0),
(1505172753, 'Sensato (feat. Primo) - Single', 'sensato-feat-primo---single', 1458195578, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music113/v4/a5/d5/5c/a5d55c61-ee47-e9c7-64da-029819f56f4e/source/370x370bb.jpg', '1', 0, 1638595167, 0, '2020', '', 'https://music.apple.com/us/album/sensato-feat-primo/1505172753?i=1505172754&uo=4', 1, 1, '2021-12-04 05:19:27', 0.99, 0, 0),
(1444884155, 'Salud (feat. Reek Rude, Sensato & Wilmer Valderrama) - Single', 'salud-feat-reek-rude-sensato-wilmer-valderrama---single', 67745826, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music118/v4/71/95/20/7195202d-4bc3-3db5-ac50-8f15b2ed44d0/source/370x370bb.jpg', '1', 0, 1638595169, 0, '2013', '', 'https://music.apple.com/us/album/salud-feat-reek-rude-sensato-wilmer-valderrama/1444884155?i=1444884527&uo=4', 1, 1, '2021-12-04 05:19:29', 1.29, 0, 0),
(466779391, 'Crazy People - Single', 'crazy-people---single', 272692452, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/02/17/f5/0217f5fe-d1f7-3615-31bf-bacad221041d/source/370x370bb.jpg', '1', 0, 1638595171, 0, '2011', '', 'https://music.apple.com/us/album/crazy-people/466779391?i=466779409&uo=4', 1, 1, '2021-12-04 05:19:31', 1.29, 0, 0),
(1590942518, 'Tiempo', 'tiempo', 1590707965, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/36/bd/52/36bd521d-b810-c959-ff6f-3ec01abdea42/source/370x370bb.jpg', '1', 0, 1638595173, 0, '2021', '', 'https://music.apple.com/us/album/sensato-feat-hampa-rancheros-crew/1590942518?i=1590942524&uo=4', 13, 1, '2021-12-04 05:19:33', 10.99, 0, 0),
(1423641093, 'Alejandro Coronel', 'alejandro-coronel', 726378861, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/53/37/14/5337141f-2f37-4438-853f-b559e019d00e/source/370x370bb.jpg', '1', 0, 1638595175, 0, '2018', '', 'https://music.apple.com/us/album/sensato/1423641093?i=1423643879&uo=4', 32, 1, '2021-12-04 05:19:35', 9.99, 0, 0),
(1154133891, 'Control Z', 'control-z', 1154134085, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music62/v4/e4/2a/5c/e42a5ca3-4ba4-c03e-5f14-adc11d437c80/source/370x370bb.jpg', '1', 0, 1638595177, 0, '2015', '', 'https://music.apple.com/us/album/sensato/1154133891?i=1154134121&uo=4', 9, 1, '2021-12-04 05:19:37', 8.91, 0, 0),
(1557785054, 'Sensato - Single', 'sensato---single', 1471553684, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music114/v4/9a/7a/e0/9a7ae054-42d4-96d6-c98c-cf4a2c6074a3/source/370x370bb.jpg', '1', 0, 1638595179, 0, '2021', '', 'https://music.apple.com/us/album/sensato/1557785054?i=1557785055&uo=4', 1, 1, '2021-12-04 05:19:39', 1.29, 0, 0),
(1456120302, '123 en 4 (feat. Sensato) - Single', '123-en-4-feat-sensato---single', 129181816, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music123/v4/bd/44/52/bd445222-0c9c-61de-3ee0-e7c68435490a/source/370x370bb.jpg', '1', 0, 1638595180, 0, '2017', '', 'https://music.apple.com/us/album/123-en-4-feat-sensato/1456120302?i=1456120303&uo=4', 1, 1, '2021-12-04 05:19:40', 0.99, 0, 0),
(1596130037, 'Global Warming', 'global-warming', 27044968, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/5bf44d6e1b3542628962a6fcbadffd7e.png', '1', 0, 1638595182, 0, '2012', '', 'https://music.apple.com/us/album/global-warming-feat-sensato/1596130037?i=1596130042&uo=4', 12, 1, '2021-12-04 05:19:42', 9.99, 0, 0),
(1525234168, 'Z3', 'z3', 1403433600, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/73/3b/c6/733bc6c9-032e-81ca-fea1-7aa86679a819/source/370x370bb.jpg', '1', 0, 1638595184, 0, '2018', '', 'https://music.apple.com/us/album/sensato/1525234168?i=1525234171&uo=4', 7, 1, '2021-12-04 05:19:44', 6.93, 0, 0),
(1518816978, 'Subconsciente', 'subconsciente', 1317501306, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/a4e278740f6052bab640f4117c4576c7.jpg', '1', 0, 1638595186, 0, '2020', '', 'https://music.apple.com/us/album/sensato-feat-ecologyk/1518816978?i=1518816993&uo=4', 8, 1, '2021-12-04 05:19:46', 7.92, 0, 0),
(1573661103, 'Creaciones de Nico Sarmiento', 'creaciones-de-nico-sarmiento', 1521552116, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/f9/fb/5d/f9fb5db4-5cc9-eb2c-3e88-6f35029664a1/source/370x370bb.jpg', '1', 0, 1638595188, 0, '2021', '', 'https://music.apple.com/us/album/sensato/1573661103?i=1573661105&uo=4', 15, 1, '2021-12-04 05:19:48', 9.99, 0, 0),
(1439274571, 'El Taxi (Remixes) [feat. Sensato, Osmani Garcia & Lil Jon] - EP', 'el-taxi-remixes-feat-sensato-osmani-garcia-lil-jon---ep', 27044968, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/de/3b/a5/de3ba5d9-f4af-38a1-1b67-e72446223a49/source/370x370bb.jpg', '1', 0, 1638595209, 0, '2016', '', 'https://music.apple.com/us/album/el-taxi-feat-sensato-osmani-garcia-lil-jon-gregor/1439274571?i=1439274576&uo=4', 4, 1, '2021-12-04 05:20:09', 5.16, 0, 0),
(1521553671, 'Los Repuestos', 'los-repuestos', 1521552116, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music113/v4/9e/65/18/9e6518af-adce-3174-fc79-5a48bb3a0224/source/370x370bb.jpg', '1', 0, 1638595191, 0, '2020', '', 'https://music.apple.com/us/album/sensato/1521553671?i=1521553682&uo=4', 7, 1, '2021-12-04 05:19:51', 6.93, 0, 0),
(1517260201, 'O Tempo - EP', 'o-tempo---ep', 1516567641, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music123/v4/84/b4/ae/84b4ae77-0aab-64c3-929f-84fce56b7be4/source/370x370bb.jpg', '1', 0, 1638595193, 0, '2019', '', 'https://music.apple.com/us/album/sensato/1517260201?i=1517260687&uo=4', 4, 1, '2021-12-04 05:19:53', 3.96, 0, 0),
(1529166051, 'BLESSED - EP', 'blessed---ep', 1506020787, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/33/1e/05/331e0573-7509-8e4d-4f92-6d856c78d919/source/370x370bb.jpg', '1', 0, 1638595195, 0, '2020', '', 'https://music.apple.com/us/album/sensato/1529166051?i=1529166058&uo=4', 6, 1, '2021-12-04 05:19:55', 5.94, 0, 0),
(1569720377, 'Colaboraciones - EP', 'colaboraciones---ep', 1516118499, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/6e/56/ab/6e56abf9-758d-113f-5a52-2ab330988023/source/370x370bb.jpg', '1', 0, 1638595196, 0, '2020', '', 'https://music.apple.com/us/album/sensato-feat-bigcause/1569720377?i=1569720378&uo=4', 6, 1, '2021-12-04 05:19:56', 5.94, 0, 0),
(541627326, 'Banana (feat. Sensato & Aexxi) - Single', 'banana-feat-sensato-aexxi---single', 65905778, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/04/30/e7/0430e789-fd1f-5178-51c0-3dd524858df9/source/370x370bb.jpg', '1', 0, 1638595215, 0, '2012', '', 'https://music.apple.com/us/album/banana-feat-sensato-aexxi-ibiza-mix/541627326?i=541627977&uo=4', 2, 1, '2021-12-04 05:20:15', 2.58, 0, 0),
(365694620, 'Que Buena Tu Ta (The Official Chosen Few Dr Remix) [feat. Black Point, Mozart la Para, Los Pepes, Monkey Black, Sensato del Patio & Villanosam] - Single', 'que-buena-tu-ta-the-official-chosen-few-dr-remix-feat-black-point-mozart-la-para-los-pepes-monkey-black-sensato-del-patio-villanosam---single', 723715352, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/73/41/4e/73414ed4-7605-b89f-7395-22a1c66b7839/source/370x370bb.jpg', '1', 0, 1638595204, 0, '2010', '', 'https://music.apple.com/us/album/que-buena-tu-ta-the-official-chosen-few-dr-remix-feat/365694620?i=365694805&uo=4', 1, 1, '2021-12-04 05:20:04', 0.99, 0, 0),
(466806954, 'Crazy People - Single', 'crazy-people---single', 272692452, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/0c/38/a7/0c38a7a2-831c-9423-fa8a-38e9b490e820/source/370x370bb.jpg', '1', 0, 1638595205, 0, '2011', '', 'https://music.apple.com/us/album/crazy-people/466806954?i=466807002&uo=4', 1, 1, '2021-12-04 05:20:05', 1.29, 0, 0),
(1457411302, 'Ponte Sensato (feat. Los Gambinos) - Single', 'ponte-sensato-feat-los-gambinos---single', 272692452, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music123/v4/7e/fd/54/7efd5463-9457-920e-2fd2-f326a17ab94c/source/370x370bb.jpg', '1', 0, 1638595211, 0, '2013', '', 'https://music.apple.com/us/album/ponte-sensato-feat-los-gambinos/1457411302?i=1457411304&uo=4', 1, 1, '2021-12-04 05:20:11', 1.29, 0, 0),
(922881081, 'Latino 59 presenta: Bailando', 'latino-59-presenta-bailando', 27044968, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music3/v4/82/ec/7b/82ec7be0-cbf4-b8cb-7550-32cfd9d5651e/source/370x370bb.jpg', '1', 0, 1638595212, 0, '2014', '', 'https://music.apple.com/us/album/el-taxi-feat-osmani-garcia-sensato/922881081?i=922881149&uo=4', 17, 1, '2021-12-04 05:20:12', 5.99, 0, 0),
(948775910, 'Dembow 2015 - 20 Original Urban Hits!', 'dembow-2015---20-original-urban-hits-', 27044968, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music3/v4/7c/3c/b6/7c3cb6fe-c7e0-29cf-b446-db399b7bbd0c/source/370x370bb.jpg', '1', 0, 1638595214, 0, '2014', '', 'https://music.apple.com/us/album/el-taxi-feat-osmani-garcia-sensato/948775910?i=948775920&uo=4', 20, 1, '2021-12-04 05:20:14', 6.99, 0, 0),
(1456682581, 'Que Lo Que (feat. Papayo) - Single', 'que-lo-que-feat-papayo---single', 272692452, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/46/a7/95/46a7957b-afab-1354-65dc-64957a9905c7/source/370x370bb.jpg', '1', 0, 1638595217, 0, '2014', '', 'https://music.apple.com/us/album/que-lo-que-feat-papayo/1456682581?i=1456682587&uo=4', 1, 1, '2021-12-04 05:20:17', 1.29, 0, 0),
(80078613, 'Remembering Rachel--Songs of Rachel Bissex', 'remembering-rachel--songs-of-rachel-bissex', 3950736, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/bd/39/19/bd391960-781f-edab-c5c6-7498c5b3a3c2/source/370x370bb.jpg', '1', 0, 1638595440, 0, '2005', '', 'https://music.apple.com/us/album/for-florence-ellen-bukstel-kate-mcdonnell-siobhan-quinn/80078613?i=80078470&uo=4', 23, 1, '2021-12-04 05:24:00', 9.99, 0, 0),
(678407922, 'Rachel Kate With Love and Hate', 'rachel-kate-with-love-and-hate', 678408114, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/85e7ba340c6f4f6b9d1f54ffdf0b672e.jpg', '1', 0, 1638595460, 0, '2013', '', 'https://music.apple.com/us/album/this-institution/678407922?i=678408130&uo=4', 10, 1, '2021-12-04 05:24:20', 9.9, 0, 0),
(1454457539, 'Elf: Buddy&#39;s Musical Christmas (Original Television Soundtrack)', 'elf-buddy-s-musical-christmas-original-television-soundtrack-', 6853442, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/60/66/18/606618c0-d223-42a5-b5c2-c344d3737b35/source/370x370bb.jpg', '1', 0, 1638595474, 0, '2014', '', 'https://music.apple.com/us/album/the-story-of-buddy-the-elf/1454457539?i=1454457651&uo=4', 18, 1, '2021-12-04 05:24:34', 9.99, 0, 0),
(1141918688, 'Amazing Grace', 'amazing-grace', 633402928, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/b8df04d94b45424283140f37aafe4b69.jpg', '1', 0, 1638595481, 0, '1971', '', 'https://music.apple.com/us/album/medley-the-black-watch-polka-stumpie-the-fiddlers/1141918688?i=1141920014&uo=4', 26, 1, '2021-12-04 05:24:41', 10.99, 0, 0),
(1556948948, 'Fever (feat. Rachel Kate) - Single', 'fever-feat-rachel-kate---single', 1497557126, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/7d/4b/2f/7d4b2f3d-afe6-9b9a-d2d8-959cb0effc08/source/370x370bb.jpg', '1', 0, 1638595483, 0, '2021', '', 'https://music.apple.com/us/album/fever-feat-rachel-kate/1556948948?i=1556948950&uo=4', 1, 1, '2021-12-04 05:24:43', 0.99, 0, 0),
(1387722298, 'Songs from Rachel Calof - A Memoir with Music', 'songs-from-rachel-calof---a-memoir-with-music', 406829008, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/98/29/f9/9829f9d8-ec55-85a1-f264-e454b2e8aaa9/source/370x370bb.jpg', '1', 0, 1638595500, 0, '2018', '', 'https://music.apple.com/us/album/the-open-sky/1387722298?i=1387722596&uo=4', 9, 1, '2021-12-04 05:25:00', 8.91, 0, 0),
(1144265808, 'The Scottish Collection', 'the-scottish-collection', 633402928, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/ce1027db048d48b1afaa49ef97eae385.jpg', '1', 0, 1638595488, 0, '1971', '', 'https://music.apple.com/us/album/medley-the-black-watch-polka-stumpie-the-fiddlers/1144265808?i=1144266830&uo=4', 21, 1, '2021-12-04 05:24:48', 29.99, 0, 0),
(887905780, 'Simple Gifts: Carols from the Abbey', 'simple-gifts-carols-from-the-abbey', 224312, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/3d/c5/a9/3dc5a9e9-bdd5-cf99-9c20-002900e585d7/source/370x370bb.jpg', '1', 0, 1638595502, 0, '1998', '', 'https://music.apple.com/us/album/this-little-light-of-mine-go-tell-it-on-the-mountain/887905780?i=887910136&uo=4', 10, 1, '2021-12-04 05:25:02', 9.9, 0, 0),
(1491281496, 'The Sheep Chronicles II: Sleeping Beauty & the Ewe&#39;s Duty', 'the-sheep-chronicles-ii-sleeping-beauty-the-ewe-s-duty', 623600456, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music123/v4/0b/64/bd/0b64bd82-fd6d-c3ad-56c2-dcd97726acb3/source/370x370bb.jpg', '1', 0, 1638595503, 0, '2019', '', 'https://music.apple.com/us/album/here-in-my-heart-song-feat-kate-hume-charlotte-pourret/1491281496?i=1491281501&uo=4', 25, 1, '2021-12-04 05:25:03', 9.99, 0, 0),
(1475794912, 'Honesty', 'honesty', 733881080, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music123/v4/28/e7/34/28e73495-c7b8-31b1-dade-ca639fc61bb0/source/370x370bb.jpg', '1', 0, 1638595505, 0, '2019', '', 'https://music.apple.com/us/album/myriologues-laura-rachel-annie-chloe-maddie-kate-dale/1475794912?i=1475795071&uo=4', 12, 1, '2021-12-04 05:25:05', 9.99, 0, 0),
(1553813696, 'Stay At Home Mom - Single', 'stay-at-home-mom---single', 678408114, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/58/bf/1c/58bf1c98-87dc-46c9-fdd4-1b54c523ad47/source/370x370bb.jpg', '1', 0, 1638595507, 0, '2021', '', 'https://music.apple.com/us/album/stay-at-home-mom/1553813696?i=1553813697&uo=4', 1, 1, '2021-12-04 05:25:07', 0.99, 0, 0),
(1445529165, 'Babillages Live', 'babillages-live', 1093572611, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/f08bc8f9c14438351466fa2f7d4a6896.jpg', '1', 0, 1638595819, 0, '2018', '', 'https://music.apple.com/us/album/jme-fume/1445529165?i=1445529427&uo=4', 13, 1, '2021-12-04 05:30:19', 0, 0, 0),
(1481586182, 'C&#39;est pas des maniÃ¨res', 'c-est-pas-des-mani-res', 1093572611, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/a9ced257004475ebc3558c13ca2c1f5d.jpg', '1', 0, 1638595821, 0, '2019', '', 'https://music.apple.com/us/album/sous-tes-doigts/1481586182?i=1481586559&uo=4', 11, 1, '2021-12-04 05:30:21', 9.99, 0, 0),
(1093572569, 'Babillages - EP', 'babillages---ep', 1093572611, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music49/v4/74/34/8c/74348c00-b7b5-4893-910d-754e4d49b54f/source/370x370bb.jpg', '1', 0, 1638595782, 0, '2016', '', 'https://music.apple.com/us/album/brillant-babillage/1093572569?i=1093572783&uo=4', 6, 1, '2021-12-04 05:29:42', 0, 0, 0),
(958725892, 'The Hunt', 'the-hunt', 392602622, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music3/v4/f0/73/98/f0739899-1531-d32f-2446-431f4ea003f7/source/370x370bb.jpg', '1', 0, 1638595784, 0, '2015', '', 'https://music.apple.com/us/album/sister-wine/958725892?i=958725932&uo=4', 11, 1, '2021-12-04 05:29:44', 9.99, 0, 0),
(279537448, 'It&#39;s the Bootleg, Muthafuckas! Vol. 1', 'it-s-the-bootleg-muthafuckas-vol-1', 3633561, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/dc9877079dcd48a3a6dd2ec8a512e5e7.jpg', '1', 0, 1638595928, 0, '1999', '', 'https://music.apple.com/us/album/import-tuner-x-clusive-feat-celph-titled-lexicon/279537448?i=279537465&uo=4', 23, 1, '2021-12-04 05:32:08', 11.99, 0, 0),
(1017361703, 'Yours Truly, Johnny Dollar - Old Time Radio Show, Vol. One', 'yours-truly-johnny-dollar---old-time-radio-show-vol-one', 262300172, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/f1/75/70/f1757006-5486-1bec-98fb-29766a6f2036/source/370x370bb.jpg', '1', 0, 1638595930, 0, '2015', '', 'https://music.apple.com/us/album/1950-08-24-episode-64-trans-pacific-import-export-matter/1017361703?i=1017364427&uo=4', 40, 1, '2021-12-04 05:32:10', 9.99, 0, 0),
(1416232780, 'Christian McBride&#39;s New Jawn', 'christian-mcbride-s-new-jawn', 46261, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/c9ffc90cb531682a5de2c4d4322518db.jpg', '1', 0, 1638595932, 0, '2018', '', 'https://music.apple.com/us/album/pier-one-import/1416232780?i=1416237121&uo=4', 9, 1, '2021-12-04 05:32:12', 9.99, 0, 0),
(376032611, 'Trinity, Vol. 1: Hidden Sanctuary (IMPORT)', 'trinity-vol-1-hidden-sanctuary-import-', 1490159438, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/36/a0/0836a058-1a7e-6775-506b-35ba6e8127b5/source/370x370bb.jpg', '1', 0, 1638595962, 0, '2001', '', 'https://music.apple.com/us/album/return/376032611?i=376032808&uo=4', 13, 1, '2021-12-04 05:32:42', 9.99, 0, 0),
(1199127031, 'Import', 'import', 334618707, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/36a9bc3ec229495bb3ed295deef9f28b.jpg', '1', 0, 1646914067, 0, '2013', '', 'https://music.apple.com/us/album/glow-in-the-dark/1199127031?i=1199127036&uo=4', 10, 1, '2022-03-10 12:07:47', 8.99, 0, 0),
(278666994, 'Victim of the Spotlight (European Import Release)', 'victim-of-the-spotlight-european-import-release-', 4226592, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/af/25/24/af252495-2458-1429-213d-17df0306f2ea/source/370x370bb.jpg', '1', 0, 1638595943, 0, '2008', '', 'https://music.apple.com/us/album/price-of-one/278666994?i=278667257&uo=4', 12, 1, '2021-12-04 05:32:23', 9.99, 0, 0),
(1450303040, 'Last Import', 'last-import', 1342095361, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/8c8aed05f1692df921e645a305281183.jpg', '1', 0, 1638595949, 0, '2018', '', 'https://music.apple.com/us/album/one-a-day/1450303040?i=1450303139&uo=4', 10, 1, '2021-12-04 05:32:29', 9.9, 0, 0),
(280603219, 'Quiero Saber - EP', 'quiero-saber---ep', 63689592, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/f5/8e/af/f58eaf33-06de-8fc2-5496-7ad9be93e6e3/source/370x370bb.jpg', '1', 0, 1638595953, 0, '2008', '', 'https://music.apple.com/us/album/quiero-saber-import-versi%C3%B3n-1/280603219?i=280603235&uo=4', 6, 1, '2021-12-04 05:32:33', 5.94, 0, 0),
(983775617, 'Spike Lee&#39;s Lil&#39; Joints, Vol. 1', 'spike-lee-s-lil-joints-vol-1', 983775616, '', 'https://is5-ssl.mzstatic.com/image/thumb/Video7/v4/ba/e1/77/bae1770d-6c51-8d79-9eb0-58a04bde46a4/source/370x370bb.jpg', '1', 0, 1638595964, 0, '2015', '', 'https://itunes.apple.com/us/tv-season/italian-imports/id983775617?i=983992507&uo=4', 5, 1, '2021-12-04 05:32:44', 4.95, 0, 0),
(279927854, 'Parsons - Thibaud (Import)', 'parsons---thibaud-import-', 279927860, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/f5/1f/bc/f51fbc67-c5ec-a067-8463-f89d416183a9/source/370x370bb.jpg', '1', 0, 1638595970, 0, '2008', '', 'https://music.apple.com/us/album/first-sight/279927854?i=279927869&uo=4', 10, 1, '2021-12-04 05:32:50', 9.9, 0, 0),
(520662234, 'Pacific Rendezvous (Import Version)', 'pacific-rendezvous-import-version-', 411758505, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/b9add92229d74c028acd233274f9cb94.jpg', '1', 0, 1638595968, 0, '2012', '', 'https://music.apple.com/us/album/together-as-one-feat-jonny-kamai/520662234?i=520662455&uo=4', 22, 1, '2021-12-04 05:32:48', 19.99, 0, 0),
(527740405, 'Our Bleeding Sun (Import)', 'our-bleeding-sun-import-', 296612051, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/13b59f876af94aeb9116dd3d07f68964.jpg', '1', 0, 1638595971, 0, '2011', '', 'https://music.apple.com/us/album/one-more-step-away-from-home/527740405?i=527740577&uo=4', 9, 1, '2021-12-04 05:32:51', 8.91, 0, 0),
(283112617, 'The Fleury Sessions (Import)', 'the-fleury-sessions-import-', 21300101, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/e1/c6/07/e1c607c9-9c7d-a127-39a0-4844aa9064e7/source/370x370bb.jpg', '1', 0, 1638595973, 0, '2006', '', 'https://music.apple.com/us/album/first-sight/283112617?i=283112670&uo=4', 10, 1, '2021-12-04 05:32:53', 9.9, 0, 0),
(251854638, 'Shakin&#39; Booty', 'shakin-booty', 251856196, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/6c/1a/56/6c1a56c5-000b-7fdb-5ffd-09752b51a6af/source/370x370bb.jpg', '1', 0, 1638595975, 0, '2004', '', 'https://music.apple.com/us/album/set-it-off/251854638?i=251855661&uo=4', 16, 1, '2021-12-04 05:32:55', 9.99, 0, 0),
(1511529526, 'I Want To Know - EP', 'i-want-to-know---ep', 282704336, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/dd/a3/7e/dda37e47-3895-5b1b-721f-fa32767fd923/source/370x370bb.jpg', '1', 0, 1638595976, 0, '2020', '', 'https://music.apple.com/us/album/i-want-to-know-import-version-1/1511529526?i=1511529527&uo=4', 6, 1, '2021-12-04 05:32:56', 5.99, 0, 0),
(767767232, '80&#39;s Electro Classics Vol. 2', '80-s-electro-classics-vol-2', 129942319, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music115/v4/6b/17/42/6b174270-e5f5-be48-8b75-8caa2dc482f7/source/370x370bb.jpg', '1', 0, 1638595978, 0, '2009', '', 'https://music.apple.com/us/album/set-it-off-party-rock/767767232?i=767767346&uo=4', 14, 1, '2021-12-04 05:32:58', 9.99, 0, 0),
(336766794, 'Usa Import Music - Retro Compilation - Volume 1', 'usa-import-music---retro-compilation---volume-1', 269040180, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/2f/27/99/2f27996f-b406-aff7-bffd-c379bb5f161c/source/370x370bb.jpg', '1', 0, 1638596007, 0, '2007', '', 'https://music.apple.com/us/album/vector-evacuation-mix/336766794?i=336766895&uo=4', 10, 1, '2021-12-04 05:33:27', 9.9, 0, 0),
(193602597, 'Whatever and Ever Amen (Remastered Edition)', 'whatever-and-ever-amen-remastered-edition-', 814572, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/6475a9f51839400dc0cb79e08e4e48da.png', '1', 0, 1638595985, 0, '1997', '', 'https://music.apple.com/us/album/one-angry-dwarf-and-200-solemn-faces/193602597?i=193602630&uo=4', 19, 1, '2021-12-04 05:33:05', 9.99, 0, 0),
(336172482, 'Amos Larkins II Presents Miami Electro Bass Classics', 'amos-larkins-ii-presents-miami-electro-bass-classics', 129942319, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/f1/f1/93/f1f1939d-c995-c94e-b8ed-4ce5a26bdc44/source/370x370bb.jpg', '1', 0, 1638595986, 0, '2005', '', 'https://music.apple.com/us/album/set-it-off-party-rock/336172482?i=336172690&uo=4', 16, 1, '2021-12-04 05:33:06', 19.99, 0, 0),
(281399558, 'A Piece of History/The Best of (German Import)', 'a-piece-of-history-the-best-of-german-import-', 281399584, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/87/0f/0b/870f0b7d-a920-28b9-1f3b-6209460a12f7/source/370x370bb.jpg', '1', 0, 1638595991, 0, '2008', '', 'https://music.apple.com/us/album/first-reaction/281399558?i=281399713&uo=4', 14, 1, '2021-12-04 05:33:11', 9.99, 0, 0),
(804751950, 'Personal Import', 'personal-import', 385843003, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/aa/bf/75/aabf75c3-3c61-5c5a-750e-898d4c1acaed/source/370x370bb.jpg', '1', 0, 1638595998, 0, '2010', '', 'https://music.apple.com/us/album/one-more-day/804751950?i=804751956&uo=4', 22, 1, '2021-12-04 05:33:18', 10.99, 0, 0),
(1476115685, 'Dear White People (Best of Score) [Seasons 1-3]', 'dear-white-people-best-of-score-seasons-1-3-', 396377227, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/35a159e68b97fc479e0ddb70281ad2e6.jpg', '1', 0, 1638596009, 0, '2019', '', 'https://music.apple.com/us/album/cultural-imports/1476115685?i=1476115701&uo=4', 17, 1, '2021-12-04 05:33:29', 9.99, 0, 0),
(382978081, 'Presto [Import]', 'presto-import-', 57830323, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/2d168938efad47c98fd150a070d85ecc.jpg', '1', 0, 1638596011, 0, '2010', '', 'https://music.apple.com/us/album/give-it-2-me-1-time-john-smith-suave-mix-ll-feat-nu-shooz/382978081?i=382978145&uo=4', 15, 1, '2021-12-04 05:33:31', 9.99, 0, 0),
(271422114, 'Ben Folds Live', 'ben-folds-live', 463277, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/2e457fb609dcf189ef5d7f4def93a10f.jpg', '1', 0, 1638596013, 0, '2002', '', 'https://music.apple.com/us/album/one-angry-dwarf-and-200-solemn-faces/271422114?i=271422178&uo=4', 17, 1, '2021-12-04 05:33:33', 9.99, 0, 0),
(462925530, 'The Best Imitation of Myself: A Retrospective', 'the-best-imitation-of-myself-a-retrospective', 814572, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/1a969ed74567994614ab864b325fc380.png', '1', 0, 1638596014, 0, '1997', '', 'https://music.apple.com/us/album/one-angry-dwarf-and-200-solemn-faces/462925530?i=462925560&uo=4', 18, 1, '2021-12-04 05:33:34', 19.99, 0, 0),
(1342095359, 'Songs for Adam - EP', 'songs-for-adam---ep', 1342095361, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/f3/b7/cc/f3b7cc50-5a57-8b60-2854-24dfb96f3f17/source/370x370bb.jpg', '1', 0, 1638596016, 0, '2018', '', 'https://music.apple.com/us/album/one-a-day/1342095359?i=1342095364&uo=4', 5, 1, '2021-12-04 05:33:36', 4.95, 0, 0),
(880470669, 'Pairando - Quarteto Maogani Interpreta Ernesto Nazareth', 'pairando---quarteto-maogani-interpreta-ernesto-nazareth', 99953189, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/baa9a697defdad5a1965b15fa4534133.jpg', '1', 0, 1638596157, 0, '2014', '', 'https://music.apple.com/us/album/cruz-perigo/880470669?i=880470684&uo=4', 12, 1, '2021-12-04 05:35:57', 9.99, 0, 0),
(1087977025, 'Miragem de InaÃª', 'miragem-de-ina-', 1087977038, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music49/v4/b6/e7/e0/b6e7e0a5-11d2-e917-6f46-8acf624b130d/source/370x370bb.jpg', '1', 0, 1638596135, 0, '2016', '', 'https://music.apple.com/us/album/requiem-para-os-vinte-anos-feat-quarteto-maogani/1087977025?i=1087978133&uo=4', 10, 1, '2021-12-04 05:35:35', 9.9, 0, 0),
(1326810744, 'Projeto Timbatu', 'projeto-timbatu', 718110948, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music114/v4/5f/17/4f/5f174f3a-0189-0dae-09a6-9ef3b086bdd8/source/370x370bb.jpg', '1', 0, 1638596146, 0, '2000', '', 'https://music.apple.com/us/album/timbatuando-feat-marcos-paiva-quarteto-maogani-mauro/1326810744?i=1326812032&uo=4', 9, 1, '2021-12-04 05:35:46', 5.99, 0, 0),
(1024823460, 'Pra Essa Gente Boa', 'pra-essa-gente-boa', 117320263, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music7/v4/8f/c1/74/8fc17457-1072-7dc8-4c9b-7f7a71ce025a/source/370x370bb.jpg', '1', 0, 1638596151, 0, '2015', '', 'https://music.apple.com/us/album/olhos-castanhos-feat-quarteto-maogani/1024823460?i=1024823775&uo=4', 15, 1, '2021-12-04 05:35:51', 9.99, 0, 0),
(1565242420, 'Sementeira', 'sementeira', 368551172, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/7c/93/b6/7c93b655-551f-3a64-361b-b17c4d3040fb/source/370x370bb.jpg', '1', 0, 1638596153, 0, '2020', '', 'https://music.apple.com/us/album/o-adeus-feat-renato-braz-quarteto-maogani/1565242420?i=1565242423&uo=4', 12, 1, '2021-12-04 05:35:53', 5.99, 0, 0),
(1530760130, 'O InÃ­cio', 'o-in-cio', 99952647, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music114/v4/bb/3c/81/bb3c8194-5e51-df29-0401-82b10737a2fb/source/370x370bb.jpg', '1', 0, 1638596159, 0, '2002', '', 'https://music.apple.com/us/album/menino-hermeto-feat-quarteto-maogani/1530760130?i=1530760446&uo=4', 14, 1, '2021-12-04 05:35:59', 9.99, 0, 0),
(1482055388, 'NÃ³', 'n-', 1202059821, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/c5ce2632ff3dde8d0d757c7829aa59fa.jpg', '1', 0, 1638596161, 0, '2020', '', 'https://music.apple.com/us/album/ilustre-desconhecida-feat-quarteto-maogani/1482055388?i=1482055540&uo=4', 11, 1, '2021-12-04 05:36:01', 5.99, 0, 0),
(668301977, 'Quarteto de ViolÃµes', 'quarteto-de-viol-es', 4587835, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/704f8bb719b24023a4100a0779d75306.jpg', '1', 0, 1638596216, 0, '2001', '', 'https://music.apple.com/us/album/di-menor/668301977?i=668302017&uo=4', 14, 1, '2021-12-04 05:36:56', 8.99, 0, 0),
(979921235, 'Ãgua de Beber', '-gua-de-beber', 99953189, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/0bbafef279181f9453f4ab89ac26c11a.jpg', '1', 0, 1638596207, 0, '2015', '', 'https://music.apple.com/us/album/correnteza/979921235?i=979921257&uo=4', 14, 1, '2021-12-04 05:36:47', 9.99, 0, 0),
(156329022, 'Cine Baronesa', 'cine-baronesa', 219485, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/3bd3f9adecbb8c6a290fd97823f78032.jpg', '1', 0, 1638596182, 0, '2001', '', 'https://music.apple.com/us/album/fox-e-trote/156329022?i=156329116&uo=4', 13, 1, '2021-12-04 05:36:22', 9.99, 0, 0),
(1454151708, 'Ãlbum da CalifÃ³rnia', '-lbum-da-calif-rnia', 99953189, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/d4e71fa08848d5ca5e2422da1b039b6e.jpg', '1', 0, 1638596186, 0, '2019', '', 'https://music.apple.com/us/album/cai-dentro/1454151708?i=1454151752&uo=4', 12, 1, '2021-12-04 05:36:26', 9.99, 0, 0),
(530873369, 'Contigo Aprendi', 'contigo-aprendi', 24828478, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/69e6e1bd18ba4a848ae3e77bcb355f05.jpg', '1', 0, 1646914269, 0, '2012', '', 'https://music.apple.com/us/album/noite-de-ronda-noche-de-ronda/530873369?i=530873387&uo=4', 11, 1, '2022-03-10 12:11:09', 9.99, 0, 0),
(981350219, 'Fundamental - Beatles &#39;N&#39; Choro', 'fundamental---beatles-n-choro', 99953189, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music1/v4/f6/f8/42/f6f84205-c5bb-bb48-8388-d9e7b1cf447e/source/370x370bb.jpg', '1', 0, 1638596204, 0, '2002', '', 'https://music.apple.com/us/album/while-my-guitar-gently-weeps/981350219?i=981351189&uo=4', 14, 1, '2021-12-04 05:36:44', 9.99, 0, 0),
(664554331, 'Cordas Cruzadas', 'cordas-cruzadas', 99953189, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/3c9e507bad1e4036ab517df2038cd3d3.jpg', '1', 0, 1638596209, 0, '2002', '', 'https://music.apple.com/us/album/samba-novo/664554331?i=664554334&uo=4', 13, 1, '2021-12-04 05:36:49', 8.99, 0, 0),
(977420679, 'Beatles &#39;N&#39; Choro', 'beatles-n-choro', 99953189, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/c097a49b8b558b61d3ffb6b823c0eced.jpg', '1', 0, 1638596200, 0, '2002', '', 'https://music.apple.com/us/album/while-my-guitar-gently-weeps/977420679?i=977420690&uo=4', 12, 1, '2021-12-04 05:36:40', 9.99, 0, 0),
(1024856821, 'Canela', 'canela', 99953189, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/41/d0/3d/41d03d93-7e81-b596-f357-d99bbcbddd77/source/370x370bb.jpg', '1', 0, 1638596201, 0, '2015', '', 'https://music.apple.com/us/album/oraci%C3%B3n-al-remanso/1024856821?i=1024856974&uo=4', 13, 1, '2021-12-04 05:36:41', 7.99, 0, 0),
(1466232137, 'Tribute To Tito RodrÃ­guez', 'tribute-to-tito-rodr-guez', 273552433, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/13/36/7c/13367c66-4a6b-5caa-8fff-4f19ac3608a3/source/370x370bb.jpg', '1', 0, 1638596490, 0, '1976', '', 'https://music.apple.com/us/album/fue-en-santiago/1466232137?i=1466232625&uo=4', 9, 1, '2021-12-04 05:41:30', 8.99, 0, 0),
(1466317368, 'Tito RodrÃ­guez Hits', 'tito-rodr-guez-hits', 321987, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', '1', 0, 1638596508, 0, '1962', '', 'https://music.apple.com/us/album/machacalo/1466317368?i=1466317618&uo=4', 15, 1, '2021-12-04 05:41:48', 9.99, 0, 0),
(1464269943, 'Tito RodrÃ­guez Presenta: Los Hispanos', 'tito-rodr-guez-presenta-los-hispanos', 91655044, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/f6/0d/52/f60d523d-3190-be75-75b4-50286d26fbbf/source/370x370bb.jpg', '1', 0, 1638596515, 0, '1964', '', 'https://music.apple.com/us/album/amor-perd%C3%B3name/1464269943?i=1464269952&uo=4', 12, 1, '2021-12-04 05:41:55', 9.99, 0, 0),
(295816185, 'Un Retrato de Tito Rodriguez - el Hombre, Su Musica, Su Vida', 'un-retrato-de-tito-rodriguez---el-hombre-su-musica-su-vida', 321987, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/a4/43/f2/a443f2a6-e164-396e-f201-3b23491aaa81/source/370x370bb.jpg', '1', 0, 1638596511, 0, '2008', '', 'https://music.apple.com/us/album/yambu/295816185?i=295816192&uo=4', 18, 1, '2021-12-04 05:41:51', 9.99, 0, 0),
(1464270892, 'Los Grandes Ãxitos de Tito RodrÃ­guez', 'los-grandes-xitos-de-tito-rodr-guez', 321987, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/c5/d8/15/c5d815c3-b291-f2b2-28a4-3c6d0ee665c5/source/370x370bb.jpg', '1', 0, 1638596439, 0, '1967', '', 'https://music.apple.com/us/album/el-d%C3%ADa-que-me-quieras/1464270892?i=1464271679&uo=4', 12, 1, '2021-12-04 05:40:39', 9.99, 0, 0);
INSERT INTO `tbl_artist_album` (`id`, `album_title`, `album_seo`, `album_artist_id`, `album_description`, `album_picture`, `album_status`, `popular_album`, `posted_date`, `latest_one`, `years`, `keywords`, `itunes_url`, `track_count`, `ranking_order`, `updated_by_itunes`, `price`, `check_status`, `cron_status`) VALUES
(292622074, 'A Night In Puerto Rico', 'a-night-in-puerto-rico', 1311894, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/c3/73/1c/c3731c3e-06e8-e09b-2ec9-9d37a9ea8ea3/source/370x370bb.jpg', '1', 0, 1638596440, 0, '1992', '', 'https://music.apple.com/us/album/%C3%A9l-que-se-fue-tributo-a-tito-rodr%C3%ADguez/292622074?i=292622169&uo=4', 15, 1, '2021-12-04 05:40:40', -1, 0, 0),
(1466317715, 'Tito RodrÃ­guez Presenta VitÃ­n AvilÃ©s', 'tito-rodr-guez-presenta-vit-n-avil-s', 30903196, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music123/v4/51/07/d7/5107d721-08ef-17f9-d1a7-47aabd78ccb4/source/370x370bb.jpg', '1', 0, 1638596442, 0, '1964', '', 'https://music.apple.com/us/album/t%C3%ADrate-que-est%C3%A1-bajito/1466317715?i=1466317993&uo=4', 12, 1, '2021-12-04 05:40:42', 9.99, 0, 0),
(528060864, 'Tito RodrÃ­guez: Live In Lima, The Last Album (Live)', 'tito-rodr-guez-live-in-lima-the-last-album-live-', 321987, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/f0/d3/95/f0d395f3-3129-f865-2012-8a9dc9ebf5c9/source/370x370bb.jpg', '1', 0, 1638596451, 0, '2005', '', 'https://music.apple.com/us/album/dime-que-me-quieres-all-the-way-live/528060864?i=528060868&uo=4', 10, 1, '2021-12-04 05:40:51', 9.9, 0, 0),
(1464956745, 'Homenaje a Pedro Flores', 'homenaje-a-pedro-flores', 73944251, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music123/v4/95/8a/26/958a2657-46c8-00f5-aa21-63820c09ef65/source/370x370bb.jpg', '1', 0, 1638596447, 0, '2010', '', 'https://music.apple.com/us/album/ay-que-bueno-feat-tito-rodriguez-and-his-orchestra/1464956745?i=1464957711&uo=4', 10, 1, '2021-12-04 05:40:47', 9.99, 0, 0),
(277161788, 'Reliquias de Tito Rodriguez', 'reliquias-de-tito-rodriguez', 321987, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/4e/76/4f/4e764f6d-6db2-07ce-3215-5377f3fecde3/source/370x370bb.jpg', '1', 0, 1638596454, 0, '1999', '', 'https://music.apple.com/us/album/hay-mucho-que-olvidar/277161788?i=277161796&uo=4', 10, 1, '2021-12-04 05:40:54', 9.9, 0, 0),
(1465801716, 'AquÃ­ EstÃ¡n Los Montemar (feat. Tito Rodriguez and His Orchestra)', 'aqu-est-n-los-montemar-feat-tito-rodriguez-and-his-orchestra-', 133539433, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/08/73/07/08730722-ec58-def6-5d0d-d10fde3a95c5/source/370x370bb.jpg', '1', 0, 1638596455, 0, '1964', '', 'https://music.apple.com/us/album/quiero-que-me-digas-feat-tito-rodriguez-and-his-orchestra/1465801716?i=1465802205&uo=4', 10, 1, '2021-12-04 05:40:55', 9.99, 0, 0),
(1193443271, 'Recordando a Tito Rodriguez', 'recordando-a-tito-rodriguez', 321987, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music91/v4/fe/ec/c0/feecc05f-57a5-22b5-a89f-0f3a0599af91/source/370x370bb.jpg', '1', 0, 1638596457, 0, '1988', '', 'https://music.apple.com/us/album/lo-mismo-que-a-usted/1193443271?i=1193443820&uo=4', 12, 1, '2021-12-04 05:40:57', 5.99, 0, 0),
(1071698831, 'Tito Rodriguez... The Early Years', 'tito-rodriguez-the-early-years', 321987, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music69/v4/92/f1/d6/92f1d6e6-cae8-6d7c-d77e-3ca1908234b4/source/370x370bb.jpg', '1', 0, 1638596458, 0, '2012', '', 'https://music.apple.com/us/album/que-rico/1071698831?i=1071698832&uo=4', 10, 1, '2021-12-04 05:40:58', 9.9, 0, 0),
(160530668, 'Cantar Como - Sing Along: Tito Rodriguez', 'cantar-como---sing-along-tito-rodriguez', 40867148, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/43/3d/42/433d42cf-1517-f53c-42d3-f4aa46edad16/source/370x370bb.jpg', '1', 0, 1638596461, 0, '2009', '', 'https://music.apple.com/us/album/lo-mismo-que-a-usted/160530668?i=160530730&uo=4', 15, 1, '2021-12-04 05:41:01', 5.99, 0, 0),
(571200401, 'Yo Soy el Bolero - Tito RodrÃ­guez, Vol. 2 (Remastered)', 'yo-soy-el-bolero---tito-rodr-guez-vol-2-remastered-', 321987, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/cb/d3/90/cbd390a6-f82e-297e-b327-af2c3b568559/source/370x370bb.jpg', '1', 0, 1638596467, 0, '2005', '', 'https://music.apple.com/us/album/lo-mismo-que-usted/571200401?i=571200600&uo=4', 16, 1, '2021-12-04 05:41:07', 9.99, 0, 0),
(150786783, 'Lo Mejor de Conjunto Clasico Con Tito Nieves', 'lo-mejor-de-conjunto-clasico-con-tito-nieves', 1490992837, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music114/v4/2c/49/6f/2c496f74-7341-daf2-63fd-846a7c81ff0f/source/370x370bb.jpg', '1', 0, 1638596468, 0, '2006', '', 'https://music.apple.com/us/album/los-rodriguez/150786783?i=150786820&uo=4', 10, 1, '2021-12-04 05:41:08', 5.99, 0, 0),
(1364919188, 'Por Siempre Boleros / Tito Rodriguez', 'por-siempre-boleros-tito-rodriguez', 321987, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music113/v4/1e/1e/23/1e1e2363-0c4d-3503-676e-9c2ef240b689/source/370x370bb.jpg', '1', 0, 1638596478, 0, '2013', '', 'https://music.apple.com/us/album/el-que-se-fue/1364919188?i=1364920542&uo=4', 18, 1, '2021-12-04 05:41:18', 9.99, 0, 0),
(571313002, 'Yo Soy el Bolero: Tito RodrÃ­guez, Vol. 1 (Remastered)', 'yo-soy-el-bolero-tito-rodr-guez-vol-1-remastered-', 321987, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/28/6e/53/286e538a-0936-088c-ad1c-d82bca6323f4/source/370x370bb.jpg', '1', 0, 1638596475, 0, '2010', '', 'https://music.apple.com/us/album/el-d%C3%ADa-que-me-quieras/571313002?i=571313396&uo=4', 16, 1, '2021-12-04 05:41:15', 9.99, 0, 0),
(1325886526, 'El DÃ­a Que Me Quieras (feat. Tito RodrÃ­guez) - Single', 'el-d-a-que-me-quieras-feat-tito-rodr-guez---single', 132280, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/30/a0/e8/30a0e834-4ab4-eccc-173f-d853b6cf04b0/source/370x370bb.jpg', '1', 0, 1638596492, 0, '2017', '', 'https://music.apple.com/us/album/el-d%C3%ADa-que-me-quieras-feat-tito-rodr%C3%ADguez/1325886526?i=1325886529&uo=4', 1, 1, '2021-12-04 05:41:32', 0.99, 0, 0),
(697516490, 'Reliquias de Tito Rodriguez', 'reliquias-de-tito-rodriguez', 321987, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music6/v4/cf/dc/ad/cfdcad1d-cd89-3896-92a6-5e7b06806bf7/source/370x370bb.jpg', '1', 0, 1638596513, 0, '1999', '', 'https://music.apple.com/us/album/hay-mucho-que-olvidar/697516490?i=697516992&uo=4', 10, 1, '2021-12-04 05:41:53', 9.9, 0, 0),
(661757970, 'Noggeler 1998 - Black CD', 'noggeler-1998---black-cd', 331537959, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1b/2c/98/1b2c9890-b2a2-10e3-c4ce-7588a1ba67d1/source/370x370bb.jpg', '1', 0, 1638600250, 0, '2013', '', 'https://music.apple.com/us/album/griechischer-wein/661757970?i=661758387&uo=4', 14, 1, '2021-12-04 06:44:10', 9.99, 0, 0),
(661813528, '30 Jahre Noggeler - Live!', '30-jahre-noggeler---live-', 331537959, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/6c/bb/89/6cbb897c-72da-0b1c-eed0-2738def5b3ac/source/370x370bb.jpg', '1', 0, 1638600246, 0, '2013', '', 'https://music.apple.com/us/album/queen-medley/661813528?i=661814484&uo=4', 15, 1, '2021-12-04 06:44:06', 9.99, 0, 0),
(661757724, 'Noggeler 1998', 'noggeler-1998', 331537959, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/5a/9e/ae/5a9eae74-055d-c5d9-8ec9-655b3cc48274/source/370x370bb.jpg', '1', 0, 1638600244, 0, '2013', '', 'https://music.apple.com/us/album/wunderwalz/661757724?i=661758020&uo=4', 14, 1, '2021-12-04 06:44:04', 9.99, 0, 0),
(661754592, '35 JÃ¶Ã¶hrli Noggeler - Live!', '35-j-hrli-noggeler---live-', 331537959, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/3e/f1/15/3ef11595-1c61-8e22-8ede-28b94e5c981a/source/370x370bb.jpg', '1', 0, 1638600248, 0, '2013', '', 'https://music.apple.com/us/album/simply-the-best/661754592?i=661754916&uo=4', 15, 1, '2021-12-04 06:44:08', 9.99, 0, 0),
(661757725, 'Noggeler 1995', 'noggeler-1995', 331537959, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/be/7e/49/be7e4983-ca5d-d2e6-fe1d-8112e54704c1/source/370x370bb.jpg', '1', 0, 1638600243, 0, '2013', '', 'https://music.apple.com/us/album/noggimarsch/661757725?i=661758388&uo=4', 16, 1, '2021-12-04 06:44:03', 9.99, 0, 0),
(87055867, 'Live Session (iTunes Exclusive) - EP', 'live-session-itunes-exclusive---ep', 87055334, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/cf/1d/dd/cf1ddd7d-2e7a-901e-5694-483f84ddcfb1/source/370x370bb.jpg', '1', 0, 1638600417, 0, '2005', '', 'https://music.apple.com/us/album/menos-mal/87055867?i=87055515&uo=4', 6, 1, '2021-12-04 06:46:57', 5.94, 0, 0),
(1592752369, 'Bolero Falaz (All Stars) [feat. Juan Galeano, Diamante ElÃ©ctrico, Systema Solar, The Mills, Andrea Echeverri, Conector, Pipe Bravo & Alvarezmejia] - Single', 'bolero-falaz-all-stars-feat-juan-galeano-diamante-el-ctrico-systema-solar-the-mills-andrea-echeverri-conector-pipe-bravo-alvarezmejia---single', 296208, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music116/v4/d8/a7/56/d8a756c0-7553-0395-7042-b7807cd82322/source/370x370bb.jpg', '1', 0, 1638600418, 0, '2021', '', 'https://music.apple.com/us/album/bolero-falaz-feat-diamante-el%C3%A9ctrico-juan-galeano-systema/1592752369?i=1592752372&uo=4', 1, 1, '2021-12-04 06:46:58', 0.99, 0, 0),
(566084965, 'Alheri', 'alheri', 365790486, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', '1', 0, 1638600692, 0, '2012', '', 'https://music.apple.com/us/album/alheri-remix-feat-bouqui/566084965?i=566085792&uo=4', 17, 1, '2021-12-04 06:51:32', 9.99, 0, 0),
(1562966207, 'Lover of My Soul (feat. Solomon Lange) - Single', 'lover-of-my-soul-feat-solomon-lange---single', 1562824394, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/79/9c/a5/799ca537-a9d4-735d-c2de-d703aa3d65f8/source/370x370bb.jpg', '1', 0, 1638600659, 0, '2020', '', 'https://music.apple.com/us/album/lover-of-my-soul-feat-solomon-lange/1562966207?i=1562966208&uo=4', 1, 1, '2021-12-04 06:50:59', 0.99, 0, 0),
(928116684, 'Grateful', 'grateful', 365790486, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/9e/5f/bd/9e5fbd6a-b95e-1427-f2a2-e3206cd5f351/source/370x370bb.jpg', '1', 0, 1638600731, 0, '2014', '', 'https://music.apple.com/us/album/what-else-can-i-say/928116684?i=928116759&uo=4', 17, 1, '2021-12-04 06:52:11', 9.99, 0, 0),
(1554325855, 'Wipe Away Your Tears (feat. solomon lange) - Single', 'wipe-away-your-tears-feat-solomon-lange---single', 1032937894, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/85/1e/7c/851e7cdd-15c9-e5cc-8d4f-dc157c5e3e8a/source/370x370bb.jpg', '1', 0, 1638600665, 0, '2019', '', 'https://music.apple.com/us/album/wipe-away-your-tears-feat-solomon-lange/1554325855?i=1554325856&uo=4', 1, 1, '2021-12-04 06:51:05', 1.29, 0, 0),
(1574735983, 'Sunar Yesu Remix (feat. Solomon Lange) - Single', 'sunar-yesu-remix-feat-solomon-lange---single', 1553098970, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/8e/ed/16/8eed166d-827b-3f49-f2b5-529d88f8c280/source/370x370bb.jpg', '1', 0, 1638600668, 0, '2021', '', 'https://music.apple.com/us/album/sunar-yesu-remix-feat-solomon-lange/1574735983?i=1574735985&uo=4', 1, 1, '2021-12-04 06:51:08', 0.99, 0, 0),
(1364587521, 'Victory', 'victory', 365790486, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music118/v4/5a/65/49/5a6549aa-61fe-a69c-a777-3cb215a182bc/source/370x370bb.jpg', '1', 0, 1638600673, 0, '2018', '', 'https://music.apple.com/us/album/you-have-done-me-well-feat-flora-lange/1364587521?i=1364589895&uo=4', 16, 1, '2021-12-04 06:51:13', 8.99, 0, 0),
(947563299, 'Na Gode', 'na-gode', 365790486, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/10/f8/eb/10f8eb56-4b2d-1cfe-b4f9-3a3097be6f26/source/370x370bb.jpg', '1', 0, 1638600736, 0, '2008', '', 'https://music.apple.com/us/album/calling-ma-name/947563299?i=947563359&uo=4', 9, 1, '2021-12-04 06:52:16', 8.91, 0, 0),
(1462690433, 'Ka Share Hawaye (feat. Solomon lange) - Single', 'ka-share-hawaye-feat-solomon-lange---single', 1436995840, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/75/8c/b6/758cb67e-23af-0ccc-27be-3de0f94c85c3/source/370x370bb.jpg', '1', 0, 1638600693, 0, '2019', '', 'https://music.apple.com/us/album/ka-share-hawaye-feat-solomon-lange/1462690433?i=1462690860&uo=4', 1, 1, '2021-12-04 06:51:33', 0.99, 0, 0),
(1296544262, 'Signature of Grace', 'signature-of-grace', 1557668166, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/8c/0b/67/8c0b6791-69a8-a348-264c-6b5efd29d064/source/370x370bb.jpg', '1', 0, 1638600696, 0, '2017', '', 'https://music.apple.com/us/album/oche-kaoche-feat-solomon-lange/1296544262?i=1296544269&uo=4', 11, 1, '2021-12-04 06:51:36', 9.99, 0, 0),
(1112405408, 'My Offering', 'my-offering', 365790486, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music20/v4/a0/81/8c/a0818cea-4ec2-a8e1-719e-e0f24ebc8fd9/source/370x370bb.jpg', '1', 0, 1638600734, 0, '2016', '', 'https://music.apple.com/us/album/what-can-i-say-feat-chris-morgan/1112405408?i=1112406303&uo=4', 16, 1, '2021-12-04 06:52:14', 9.99, 0, 0),
(1367457143, 'My Offering', 'my-offering', 365790486, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/6b/4b/b0/6b4bb0b5-c36e-1d9e-8501-3a56d47f7d96/source/370x370bb.jpg', '1', 0, 1638600701, 0, '2016', '', 'https://music.apple.com/us/album/grace/1367457143?i=1367457956&uo=4', 16, 1, '2021-12-04 06:51:41', 4.99, 0, 0),
(1267476577, 'Best of Bouqui', 'best-of-bouqui', 254029430, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/4d/18/b1/4d18b19b-745d-b7ee-48fa-cb91622b9b6c/source/370x370bb.jpg', '1', 0, 1638600704, 0, '2013', '', 'https://music.apple.com/us/album/salama-feat-solomon-lange/1267476577?i=1267477049&uo=4', 49, 1, '2021-12-04 06:51:44', 9.99, 0, 0),
(1582523798, 'XIKONGOMELO, Vol. 3', 'xikongomelo-vol-3', 1582523803, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/68/7d/b6/687db683-798b-98e8-ca01-34d6c1368541/source/370x370bb.jpg', '1', 0, 1638600709, 0, '2017', '', 'https://music.apple.com/us/album/ukulu-lange-kamina-feat-solomon-mngoni-2021-remastered/1582523798?i=1582523948&uo=4', 10, 1, '2021-12-04 06:51:49', 9.9, 0, 0),
(1574964800, 'King of Heaven - EP', 'king-of-heaven---ep', 1475489613, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/60/ac/f4/60acf416-f9f4-c8cf-6f1f-8d795c1244a0/source/370x370bb.jpg', '1', 0, 1638600711, 0, '2021', '', 'https://music.apple.com/us/album/only-thanks-to-god-feat-solomon-lange/1574964800?i=1574964802&uo=4', 6, 1, '2021-12-04 06:51:51', 3.99, 0, 0),
(1545793449, 'Yesu (feat. Solomon Lange) - Single', 'yesu-feat-solomon-lange---single', 1538246853, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/31/0c/86/310c86c9-f358-3473-88e7-05976fbc6c86/source/370x370bb.jpg', '1', 0, 1638600738, 0, '2020', '', 'https://music.apple.com/us/album/yesu-feat-solomon-lange/1545793449?i=1545793450&uo=4', 1, 1, '2021-12-04 06:52:18', 0.99, 0, 0),
(1597742833, 'Champions Roar (feat. Solomon Lange) - Single', 'champions-roar-feat-solomon-lange---single', 909085051, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music116/v4/33/ce/3b/33ce3bc0-7d25-b487-2451-408ea8d4c79b/source/370x370bb.jpg', '1', 0, 1638600739, 0, '2021', '', 'https://music.apple.com/us/album/champions-roar-feat-solomon-lange/1597742833?i=1597742834&uo=4', 1, 1, '2021-12-04 06:52:19', 0.99, 0, 0),
(1503242308, 'My Praise (feat. Solomon Lange) - Single', 'my-praise-feat-solomon-lange---single', 1094496173, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/d5/14/2c/d5142c43-63dc-00c0-1809-96ec41e6c48f/source/370x370bb.jpg', '1', 0, 1638600741, 0, '2020', '', 'https://music.apple.com/us/album/my-praise-feat-solomon-lange/1503242308?i=1503242309&uo=4', 1, 1, '2021-12-04 06:52:21', 0.99, 0, 0),
(1444069970, 'Silver City (A Celebration of 25 Years of Milestone)', 'silver-city-a-celebration-of-25-years-of-milestone-', 37020, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/a75ebae8d98d142f904c1aa912c40e1f.jpg', '1', 0, 1638601105, 0, '1987', '', 'https://music.apple.com/us/album/duke-of-iron/1444069970?i=1444070173&uo=4', 9, 1, '2021-12-04 06:58:25', 24.99, 0, 0),
(1443229001, 'Dancing In the Dark', 'dancing-in-the-dark', 37020, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/7ec5ec0cdb12447da6ddbf847f343d6c.jpg', '1', 0, 1638601107, 0, '1987', '', 'https://music.apple.com/us/album/duke-of-iron/1443229001?i=1443229371&uo=4', 8, 1, '2021-12-04 06:58:27', 7.99, 0, 0),
(1447132747, 'Milestone Profiles: Sonny Rollins', 'milestone-profiles-sonny-rollins', 37020, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/729c9bf25ec74a858a1dc6546d5a4d73.jpg', '1', 0, 1638601109, 0, '1987', '', 'https://music.apple.com/us/album/duke-of-iron/1447132747?i=1447132901&uo=4', 9, 1, '2021-12-04 06:58:29', 9.99, 0, 0),
(1502752163, 'Jazz at Noon', 'jazz-at-noon', 264855033, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music113/v4/f7/17/0c/f7170c2f-943d-ff40-597f-a98c3df41739/source/370x370bb.jpg', '1', 0, 1638601110, 0, '2020', '', 'https://music.apple.com/us/album/duke-of-iron-live-feat-scott-wenzel/1502752163?i=1502752169&uo=4', 10, 1, '2021-12-04 06:58:30', 19.99, 0, 0),
(608579698, 'Tranquillo', 'tranquillo', 129013451, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/3be43072797c8d79a0869f08fa4d641e.jpg', '1', 0, 1638601112, 0, '2012', '', 'https://music.apple.com/us/album/duke-of-iron-feat-wojciech-rajski-andrzej/608579698?i=608579820&uo=4', 11, 1, '2021-12-04 06:58:32', 9.99, 0, 0),
(306809550, 'Homage to Sonny Rollins', 'homage-to-sonny-rollins', 306809554, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/4c49ab26cd7f4b8dacb7cc99a667373c.jpg', '1', 0, 1638601114, 0, '2009', '', 'https://music.apple.com/us/album/duke-of-iron/306809550?i=306809633&uo=4', 8, 1, '2021-12-04 06:58:34', 0, 0, 0),
(133746429, 'Latin Soul Train', 'latin-soul-train', 79893258, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/7fa08944dd524f37a9af7c67d0fd2a10.jpg', '1', 0, 1638601116, 0, '2005', '', 'https://music.apple.com/us/album/duke-of-iron/133746429?i=133747082&uo=4', 11, 1, '2021-12-04 06:58:36', 9.99, 0, 0),
(716282540, 'The Right Touch (The Rudy Van Gelder Edition) [Remastered]', 'the-right-touch-the-rudy-van-gelder-edition-remastered-', 5652847, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/9b118fc1d3335795a717c65642f67e04.png', '1', 0, 1638601117, 0, '1967', '', 'https://music.apple.com/us/album/scrap-iron/716282540?i=716283877&uo=4', 7, 1, '2021-12-04 06:58:37', 7.99, 0, 0),
(513998096, 'Aebersold Play-A-Long, Vol. 12: Duke Ellington', 'aebersold-play-a-long-vol-12-duke-ellington', 513621150, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/05/46/62/054662fe-cff7-f2a2-ec51-0de478a1f830/source/370x370bb.jpg', '1', 0, 1638601119, 0, '2012', '', 'https://music.apple.com/us/album/i-let-a-song-go-out-of-my-heart/513998096?i=513998452&uo=4', 10, 1, '2021-12-04 06:58:39', 9.9, 0, 0),
(343491909, 'The Greatest Marching Songs Ever', 'the-greatest-marching-songs-ever', 205847538, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/d5/a6/5b/d5a65ba1-0b82-fed4-4b54-f2720fc7edc3/source/370x370bb.jpg', '1', 0, 1638601120, 0, '2008', '', 'https://music.apple.com/us/album/the-iron-duke-march/343491909?i=343492046&uo=4', 35, 1, '2021-12-04 06:58:40', 9.99, 0, 0),
(2472760, 'Calypso Pioneers 1912-1937', 'calypso-pioneers-1912-1937', 2472698, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/7cb4f7477542ff1007312a86d6a51716.jpg', '1', 0, 1638601122, 0, '1989', '', 'https://music.apple.com/us/album/iron-duke-in-the-land/2472760?i=2472696&uo=4', 16, 1, '2021-12-04 06:58:42', 9.99, 0, 0),
(2514815, 'Calypso at Midnight', 'calypso-at-midnight', 548945, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/e713d6b73d6849fec917b85110cee0b1.jpg', '1', 0, 1638601163, 0, '1999', '', 'https://music.apple.com/us/album/introduction-to-three-friends-advice/2514815?i=2514782&uo=4', 23, 1, '2021-12-04 06:59:23', 9.99, 0, 0),
(495891272, 'Marching Heroes - Military Music On The Go', 'marching-heroes---military-music-on-the-go', 205847538, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/ed/1a/ac/ed1aac9b-d149-1ca6-b1c2-95d4f454d6e8/source/370x370bb.jpg', '1', 0, 1638601124, 0, '2008', '', 'https://music.apple.com/us/album/the-iron-duke-march/495891272?i=495891392&uo=4', 28, 1, '2021-12-04 06:58:44', 5.99, 0, 0),
(325091888, 'DJ Yoda&#39;s How to Cut and Paste: The Thirties Edition', 'dj-yoda-s-how-to-cut-and-paste-the-thirties-edition', 277838353, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/20/48/16/2048162f-ec58-d182-3cea-e7fad8603893/source/370x370bb.jpg', '1', 0, 1638601126, 0, '2009', '', 'https://music.apple.com/us/album/ugly-woman/325091888?i=325093330&uo=4', 22, 1, '2021-12-04 06:58:46', 9.99, 0, 0),
(1469308328, 'You Got Me (feat. The Pleasure Kings, Dr. John & Ron Levy)', 'you-got-me-feat-the-pleasure-kings-dr-john-ron-levy-', 2489744, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music124/v4/2f/09/31/2f093175-4adb-3e82-8b80-91f01fa79716/source/370x370bb.jpg', '1', 0, 1638601128, 0, '1988', '', 'https://music.apple.com/us/album/youre-the-one-i-adore-feat-the-pleasure-kings-ron-levy/1469308328?i=1469308568&uo=4', 10, 1, '2021-12-04 06:58:48', 9.99, 0, 0),
(1186385716, 'Leprechaun (Chopped & Screwed)', 'leprechaun-chopped-screwed-', 1903801, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music122/v4/dc/6e/e1/dc6ee16c-7a81-c9bd-637a-29f351c1c8e5/source/370x370bb.jpg', '1', 0, 1638601131, 0, '2001', '', 'https://music.apple.com/us/album/my-dogz-feat-b-g-duke-scoop-a-star-taz-will-lean/1186385716?i=1186385798&uo=4', 8, 1, '2021-12-04 06:58:51', 14.85, 0, 0),
(710024134, 'King of Rome', 'king-of-rome', 660106105, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/ef2371f657fd70da7d49342eef4d8e5a.jpg', '1', 0, 1638601132, 0, '2012', '', 'https://music.apple.com/us/album/the-iron-duke/710024134?i=710024561&uo=4', 8, 1, '2021-12-04 06:58:52', 9.99, 0, 0),
(281570823, 'Man Smart, Woman Smarter', 'man-smart-woman-smarter', 2514765, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/9d2d1016b43bb6d3d5bb182c642ee380.jpg', '1', 0, 1638601193, 0, '1956', '', 'https://music.apple.com/us/album/creole-girl/281570823?i=281570827&uo=4', 12, 1, '2021-12-04 06:59:53', 8.99, 0, 0),
(282280079, 'The Great Marches Vol. 11', 'the-great-marches-vol-11', 205847538, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/dd/b6/4a/ddb64ab0-1eaa-bb0a-e461-bbfc693e9d96/source/370x370bb.jpg', '1', 0, 1638601136, 0, '2008', '', 'https://music.apple.com/us/album/the-iron-duke-march/282280079?i=282280249&uo=4', 32, 1, '2021-12-04 06:58:56', 9.99, 0, 0),
(278335624, 'Calypso', 'calypso', 2514790, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/01d3606d505c456083fb094b8fb6da6c.jpg', '1', 0, 1638601139, 0, '1955', '', 'https://music.apple.com/us/album/brooklyn-brooklyn/278335624?i=278335630&uo=4', 8, 1, '2021-12-04 06:58:59', 7.92, 0, 0),
(82039312, 'Calypso In New York', 'calypso-in-new-york', 2514790, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/2429f82356995a5afc7375882d92b7dc.jpg', '1', 0, 1638601140, 0, '2000', '', 'https://music.apple.com/us/album/me-one-alone/82039312?i=82038708&uo=4', 26, 1, '2021-12-04 06:59:00', 9.99, 0, 0),
(1107142730, 'Lost Files', 'lost-files', 323789182, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music60/v4/97/fb/4e/97fb4eb5-fe90-f4bb-846a-c39d53eb40b6/source/370x370bb.jpg', '1', 0, 1638601144, 0, '2016', '', 'https://music.apple.com/us/album/iron-on-my-lap-feat-duke/1107142730?i=1107142836&uo=4', 9, 1, '2021-12-04 06:59:04', 8.91, 0, 0),
(464208113, 'Calypso Pionners, Vol. 1 (1912 - 1947)', 'calypso-pionners-vol-1-1912---1947-', 2472698, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/43/f4/1d/43f41d67-e693-6f4d-60be-80f2407a1185/source/370x370bb.jpg', '1', 0, 1638601146, 0, '1930', '', 'https://music.apple.com/us/album/iron-duke-in-the-land/464208113?i=464208122&uo=4', 20, 1, '2021-12-04 06:59:06', 9.99, 0, 0),
(281537872, 'Calypso Carnival', 'calypso-carnival', 2514765, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/a6cb4fe3c3c0024848cb3059a5293b3a.jpg', '1', 0, 1638601191, 0, '1957', '', 'https://music.apple.com/us/album/calypsonian-invasion/281537872?i=281537881&uo=4', 12, 1, '2021-12-04 06:59:51', 8.99, 0, 0),
(300056866, 'Calypso Masters', 'calypso-masters', 2514765, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/794c04943dd74258b140afc9c7fcb98d.jpg', '1', 0, 1638601175, 0, '2008', '', 'https://music.apple.com/us/album/out-de-fire/300056866?i=300057000&uo=4', 12, 1, '2021-12-04 06:59:35', 8.28, 0, 0),
(366974937, 'Calypso', 'calypso', 2514775, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/01d3606d505c456083fb094b8fb6da6c.jpg', '1', 0, 1638601164, 0, '2004', '', 'https://music.apple.com/us/album/brooklyn-brooklyn/366974937?i=366974986&uo=4', 12, 1, '2021-12-04 06:59:24', 9.99, 0, 0),
(367245183, 'Best Of The Golden Fiddle Orchestra', 'best-of-the-golden-fiddle-orchestra', 182221122, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/8b/55/0c/8b550c92-d4cf-7aec-4add-1135a175265f/source/370x370bb.jpg', '1', 0, 1638601177, 0, '1994', '', 'https://music.apple.com/us/album/scott-skinner-selection-duke-of-fifes-welcome-to/367245183?i=367245242&uo=4', 12, 1, '2021-12-04 06:59:37', 9.99, 0, 0),
(1225141251, 'Chalonnes Island', 'chalonnes-island', 1225141256, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music122/v4/d1/c5/de/d1c5def1-21a3-3d44-d77f-bffa2a2adb08/source/370x370bb.jpg', '1', 0, 1638601170, 0, '2017', '', 'https://music.apple.com/us/album/coconut-woman-feat-duke-of-iron/1225141251?i=1225141446&uo=4', 11, 1, '2021-12-04 06:59:30', 0, 0, 0),
(5264731, 'Iron P.Y.G.G.', 'iron-p-y-g-g-', 5264698, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/90/9c/ef/909cefbb-15b5-1540-8af3-9f5584e9ab39/source/370x370bb.jpg', '1', 0, 1638601172, 0, '2003', '', 'https://music.apple.com/us/album/patty-duke-yall/5264731?i=5264703&uo=4', 19, 1, '2021-12-04 06:59:32', 9.99, 0, 0),
(1462822018, 'Calypso', 'calypso', 2514790, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/01d3606d505c456083fb094b8fb6da6c.jpg', '1', 0, 1638601174, 0, '1956', '', 'https://music.apple.com/us/album/brooklyn-brooklyn/1462822018?i=1462822192&uo=4', 12, 1, '2021-12-04 06:59:34', 9.99, 0, 0),
(1154085675, 'Sings Calypsos (Remastered)', 'sings-calypsos-remastered-', 2514765, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music71/v4/1d/7b/4b/1d7b4b98-7f18-c0d9-16b0-3fe0d887ff93/source/370x370bb.jpg', '1', 0, 1638601181, 0, '2016', '', 'https://music.apple.com/us/album/the-lost-watch/1154085675?i=1154086463&uo=4', 12, 1, '2021-12-04 06:59:41', 9.99, 0, 0),
(1554709372, 'Muriel&#39;s Treasure, Vol. 8: Vintage Calypso from the 1950s & 1960s', 'muriel-s-treasure-vol-8-vintage-calypso-from-the-1950s-1960s', 2514790, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/bb/5a/3e/bb5a3e89-b09e-a92a-e513-6ab75a19783c/source/370x370bb.jpg', '1', 0, 1638601183, 0, '1956', '', 'https://music.apple.com/us/album/brooklyn-brooklyn/1554709372?i=1554709577&uo=4', 25, 1, '2021-12-04 06:59:43', 9.99, 0, 0),
(879094298, 'Donnie McClurkin', 'donnie-mcclurkin', 631332, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/73eea8f4a9e049669850ef30645494db.jpg', '1', 0, 1638601233, 0, '1996', '', 'https://music.apple.com/us/album/we-expect-you/879094298?i=879094699&uo=4', 9, 1, '2021-12-04 07:00:33', 8.91, 0, 0),
(1170847773, 'Live At Azusa 2: Precious Memories', 'live-at-azusa-2-precious-memories', 710464, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/1a/b4/68/1ab468f0-a79f-b11e-f0a0-d7b30516dbb2/source/370x370bb.jpg', '1', 0, 1646911870, 0, '1997', '', 'https://music.apple.com/us/album/going-to-heaven-to-meet-the-king-feat-dorinda-clark-cole-live/1170847773?i=1170847943&uo=4', 13, 1, '2022-03-10 11:31:10', 9.99, 0, 0),
(209983737, 'This Is Who I Am', 'this-is-who-i-am', 134154, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/99/11/f3/9911f3e7-5306-524a-3ef0-faf490b52a99/source/370x370bb.jpg', '1', 0, 1638601236, 0, '2006', '', 'https://music.apple.com/us/album/god-is-faithful-feat-donnie-mcclurkin-featuring-donnie/209983737?i=209983845&uo=4', 11, 1, '2021-12-04 07:00:36', 9.99, 0, 0),
(919206665, 'I See Victory (Deluxe Version)', 'i-see-victory-deluxe-version-', 269841410, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/89/a8/98/89a89876-52cd-23f6-29b9-6eb1cb9cc1f4/source/370x370bb.jpg', '1', 0, 1638601261, 0, '2014', '', 'https://music.apple.com/us/album/bless-me-feat-donnie-mcclurkin-greg-kirkland/919206665?i=919206718&uo=4', 17, 1, '2021-12-04 07:01:01', 5.99, 0, 0),
(1592420952, 'All off Backendz (Deluxe)', 'all-off-backendz-deluxe-', 804393312, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music126/v4/b8/37/20/b8372082-cac0-cb26-8401-035d1db83aa5/source/370x370bb.jpg', '1', 0, 1638601241, 0, '2021', '', 'https://music.apple.com/us/album/donnie-mcclurkin/1592420952?i=1592420959&uo=4', 30, 1, '2021-12-04 07:00:41', 11.99, 0, 0),
(1165982843, 'Beginnings', 'beginnings', 2225587, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music71/v4/20/51/d9/2051d928-d36c-3489-3883-d5fdf7723e59/source/370x370bb.jpg', '1', 0, 1638601242, 0, '1997', '', 'https://music.apple.com/us/album/lord-send-your-annointing-feat-donnie-mcclurkin-ult/1165982843?i=1165982868&uo=4', 15, 1, '2021-12-04 07:00:42', 9.99, 0, 0),
(271455176, 'Donnie McClurkin... Again', 'donnie-mcclurkin-again', 631332, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/0eed4097ec0f4b25a3cf42511b851a34.jpg', '1', 0, 1638601281, 0, '2003', '', 'https://music.apple.com/us/album/heart-to-soul/271455176?i=271455276&uo=4', 11, 1, '2021-12-04 07:01:21', 9.99, 0, 0),
(644395657, 'Azusa the Next Generation', 'azusa-the-next-generation', 3301442, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/78f5151c038d45eab8763db54a3a0eef.jpg', '1', 0, 1638601248, 0, '2013', '', 'https://music.apple.com/us/album/breakthrough-feat-donnie-mcclurkin/644395657?i=644395975&uo=4', 10, 1, '2021-12-04 07:00:48', 9.99, 0, 0),
(906432444, 'Bless Me (feat. Donnie McClurkin) [Radio Edit] - Single', 'bless-me-feat-donnie-mcclurkin-radio-edit---single', 269841410, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music4/v4/fd/3f/3d/fd3f3dac-485b-5379-932e-4c825b6c0f5b/source/370x370bb.jpg', '1', 0, 1638601251, 0, '2014', '', 'https://music.apple.com/us/album/bless-me-feat-donnie-mcclurkin-radio-edit/906432444?i=906432447&uo=4', 1, 1, '2021-12-04 07:00:51', 0.69, 0, 0),
(487702483, 'Setlist: The Very Best of Donnie McClurkin (Live)', 'setlist-the-very-best-of-donnie-mcclurkin-live-', 631332, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/77/63/b6/7763b66d-9a18-625b-11aa-5c9bf4e41d42/source/370x370bb.jpg', '1', 0, 1638601299, 0, '2008', '', 'https://music.apple.com/us/album/wait-on-the-lord-live/487702483?i=487702488&uo=4', 10, 1, '2021-12-04 07:01:39', 7.99, 0, 0),
(532235336, 'Marvin L. Winans Presents: The Praise & Worship Experience', 'marvin-l-winans-presents-the-praise-worship-experience', 152584334, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/3c/99/a7/3c99a728-a6ac-027b-1269-000fea9b2f57/source/370x370bb.jpg', '1', 0, 1638601265, 0, '2012', '', 'https://music.apple.com/us/album/just-another-day-feat-delores-mom-winans-donnie-mcclurkin/532235336?i=532235545&uo=4', 14, 1, '2021-12-04 07:01:05', 9.99, 0, 0),
(79018907, 'Day By Day', 'day-by-day', 149651, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/0e74efe457399203e8b222afc4e6f9f8.jpg', '1', 0, 1638601266, 0, '2005', '', 'https://music.apple.com/us/album/lift-him-up-featuring-donnie-mcclurkin-and-mary-mary/79018907?i=79018878&uo=4', 12, 1, '2021-12-04 07:01:06', 9.99, 0, 0),
(1566257109, 'Da Real Ttg', 'da-real-ttg', 1541104502, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/e3/d2/a9/e3d2a967-5907-a35b-a892-fab737f03305/source/370x370bb.jpg', '1', 0, 1638601293, 0, '2021', '', 'https://music.apple.com/us/album/donnie-mcclurkin/1566257109?i=1566257114&uo=4', 10, 1, '2021-12-04 07:01:33', 5.99, 0, 0),
(1533683481, 'Open Book', 'open-book', 152634195, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/7b6d26d0962c4c04b3464ba5d842b483.jpg', '1', 0, 1638601279, 0, '2007', '', 'https://music.apple.com/us/album/that-great-day-feat-donnie-mcclurkin-tye-tribbett/1533683481?i=1533683726&uo=4', 17, 1, '2021-12-04 07:01:19', 9.99, 0, 0),
(1205372155, '#Lovecovers', '-lovecovers', 152092, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/cd/ba/81/cdba81f3-83f0-38d8-5093-cce25e6c65ee/source/370x370bb.jpg', '1', 0, 1638601305, 0, '2017', '', 'https://music.apple.com/us/album/what-is-this-feat-donnie-mcclurkin/1205372155?i=1205372583&uo=4', 13, 1, '2021-12-04 07:01:45', 11.99, 0, 0),
(1444120206, 'One Family - A Christmas Album', 'one-family---a-christmas-album', 134154, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/d3/dc/ff/d3dcffc9-bd13-29e5-4384-39f6dba23ed6/source/370x370bb.jpg', '1', 0, 1638601295, 0, '2001', '', 'https://music.apple.com/us/album/oh-come-all-ye-faithful-feat-ragsdale-bebe-winans-shirley/1444120206?i=1444120927&uo=4', 11, 1, '2021-12-04 07:01:35', 5.99, 0, 0),
(904752640, 'Best of Deitrick Haddon', 'best-of-deitrick-haddon', 18756715, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/9a06efbf5016a01cb18f89c9a391296b.jpg', '1', 0, 1638601302, 0, '2002', '', 'https://music.apple.com/us/album/stand-still-feat-donnie-mcclurkin/904752640?i=904752662&uo=4', 14, 1, '2021-12-04 07:01:42', 9.99, 0, 0),
(382741759, 'Gotta Have Gospel! Ultimate Choirs', 'gotta-have-gospel-ultimate-choirs', 35305279, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music60/v4/85/eb/82/85eb82ff-9497-b831-74a2-af8ee3b9758d/source/370x370bb.jpg', '1', 0, 1638601304, 0, '2004', '', 'https://music.apple.com/us/album/i-speak-life-feat-donnie-mcclurkin/382741759?i=382741958&uo=4', 16, 1, '2021-12-04 07:01:44', -1, 0, 0),
(941896904, 'Living It', 'living-it', 454449646, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/7b9527c4b3a907bf85922f8b6b5f9479.jpg', '1', 0, 1646911909, 0, '2015', '', 'https://music.apple.com/us/album/save-me-now/941896904?i=941896921&uo=4', 11, 1, '2022-03-10 11:31:49', 4.99, 0, 0),
(347582692, 'Dorinda Clark-cole', 'dorinda-clark-cole', 454449646, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/4cba5e6ceebc210f39678e7bec058837.jpg', '1', 0, 1646911866, 0, '2002', '', 'https://music.apple.com/us/album/you-need-him/347582692?i=347582961&uo=4', 14, 1, '2022-03-10 11:31:06', 9.99, 0, 0),
(303096289, 'Hero', 'hero', 3293094, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/7a5c501396444418b3621f706f4c1db7.jpg', '1', 0, 1646911868, 0, '2005', '', 'https://music.apple.com/us/album/hero-with-dorinda-clark-cole/303096289?i=303096308&uo=4', 20, 1, '2022-03-10 11:31:08', 9.99, 0, 0),
(533587880, 'V4... The Other Side', 'v4-the-other-side', 72304519, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/58798155c3894fe6b7111d418a4aeb8b.jpg', '1', 0, 1646911871, 0, '2012', '', 'https://music.apple.com/us/album/the-prayers-feat-hezekiah-walker-lfc-dorinda-clark-cole/533587880?i=533588246&uo=4', 14, 1, '2022-03-10 11:31:11', 9.99, 0, 0),
(1144192661, 'GEI Live', 'gei-live', 1144192675, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music62/v4/04/4a/2d/044a2d1a-e314-8ddd-9ba8-de607fa12fa4/source/370x370bb.jpg', '1', 0, 1646911873, 0, '2016', '', 'https://music.apple.com/us/album/the-hymn-im-in-his-arms-feat-dorinda-clark-cole-live/1144192661?i=1144192733&uo=4', 13, 1, '2022-03-10 11:31:13', 9.99, 0, 0),
(716124694, 'All In One', 'all-in-one', 790180, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/105386fb2aba40c3add3f937920d5fb3.jpg', '1', 0, 1646911875, 0, '2010', '', 'https://music.apple.com/us/album/he-knows-feat-dorinda-clark-cole/716124694?i=716125104&uo=4', 11, 1, '2022-03-10 11:31:15', 11.49, 0, 0),
(394012871, 'YRM (Your Righteous Mind) [feat. Dorinda Clark Cole] - Single', 'yrm-your-righteous-mind-feat-dorinda-clark-cole---single', 293864931, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/38/10/4a/38104ab6-770e-b801-74ec-e7452278f96b/source/370x370bb.jpg', '1', 0, 1646911877, 0, '2010', '', 'https://music.apple.com/us/album/yrm-your-righteous-mind-feat-dorinda-clark-cole/394012871?i=394012922&uo=4', 1, 1, '2022-03-10 11:31:17', 1.29, 0, 0),
(495938788, 'WOW Gospel 2012', 'wow-gospel-2012', 293864931, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/ed/8b/4e/ed8b4e23-9c7e-d07c-8c8a-2eb7acacf902/source/370x370bb.jpg', '1', 0, 1646911878, 0, '2011', '', 'https://music.apple.com/us/album/yrm-your-righteous-mind-feat-dorinda-clark-cole/495938788?i=495938953&uo=4', 30, 1, '2022-03-10 11:31:18', -1, 0, 0),
(450148484, 'YRM (Your Righteous Mind)', 'yrm-your-righteous-mind-', 293864931, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/f7/9e/9f/f79e9f9f-47d8-eeb6-61bf-2f18a24be8a5/source/370x370bb.jpg', '1', 0, 1646911881, 0, '2011', '', 'https://music.apple.com/us/album/yrm-your-righteous-mind-feat-dorinda-clark-cole/450148484?i=450148527&uo=4', 15, 1, '2022-03-10 11:31:21', 9.99, 0, 0),
(325444804, 'Resting On His Promise (feat. J.J. Hairston)', 'resting-on-his-promise-feat-j-j-hairston-', 5281405, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music124/v4/26/e5/d7/26e5d756-4135-2f5b-b828-bb6f8f686d87/source/370x370bb.jpg', '1', 0, 1646911884, 0, '2009', '', 'https://music.apple.com/us/album/still-mighty-still-strong-feat-dorinda-clark-cole/325444804?i=325445559&uo=4', 12, 1, '2022-03-10 11:31:24', 5.99, 0, 0),
(1080794834, 'Fearless (Deluxe Edition)', 'fearless-deluxe-edition-', 35305616, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/c43f5f383b9c45a73c213988b7a8336b.png', '1', 0, 1646914910, 0, '2016', '', 'https://music.apple.com/us/album/i-give-you-glory-feat-tye-tribbett/1080794834?i=1080795040&uo=4', 17, 1, '2022-03-10 12:21:50', 9.99, 0, 0),
(813752084, 'Duets', 'duets', 631332, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/b6ac811382ec4185c12511576c5d5853.jpg', '1', 0, 1646911889, 0, '2014', '', 'https://music.apple.com/us/album/write-my-name-feat-dorinda-clark-cole/813752084?i=813752101&uo=4', 10, 1, '2022-03-10 11:31:29', 9.99, 0, 0),
(1357803231, 'Cross Music - EP', 'cross-music---ep', 181477913, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/58/12/05/581205d0-ffc3-4c2a-46ca-3f782f94a385/source/370x370bb.jpg', '1', 0, 1646911891, 0, '2018', '', 'https://music.apple.com/us/album/he-got-up-feat-dorinda-clark-cole-sean-tillery-changed/1357803231?i=1357803247&uo=4', 5, 1, '2022-03-10 11:31:31', 5.99, 0, 0),
(220159096, '2nd Chance', '2nd-chance', 790180, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/87/3d/1e/873d1e27-ce50-0d35-203b-0729b0aa6402/source/370x370bb.jpg', '1', 0, 1646911892, 0, '2001', '', 'https://music.apple.com/us/album/higher-ground-feat-dorinda-clark-cole-kim-burrell-mary/220159096?i=220159537&uo=4', 13, 1, '2022-03-10 11:31:32', 9.99, 0, 0),
(982539697, 'My City - Single', 'my-city---single', 18756715, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music1/v4/90/33/a1/9033a1ea-70e1-4b74-a691-c748572a2f72/source/370x370bb.jpg', '1', 0, 1646911894, 0, '2015', '', 'https://music.apple.com/us/album/my-city-feat-dorinda-clark-cole-karen-clark-sheard/982539697?i=982539704&uo=4', 1, 1, '2022-03-10 11:31:34', 1.29, 0, 0),
(447837936, 'Setlist: The Very Best of Dorinda Clark-Cole (Live)', 'setlist-the-very-best-of-dorinda-clark-cole-live-', 454449646, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/9b/df/e3/9bdfe3c8-6d8c-c4c6-9c61-988ed8b14355/source/370x370bb.jpg', '1', 0, 1646911927, 0, '2005', '', 'https://music.apple.com/us/album/great-is-the-lord-live/447837936?i=447837941&uo=4', 12, 1, '2022-03-10 11:32:07', 7.99, 0, 0),
(454449644, 'I Survived', 'i-survived', 454449646, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/0e5b6542ab724f3092e919bbdb8b7ac1.jpg', '1', 0, 1646911906, 0, '2011', '', 'https://music.apple.com/us/album/we-believe/454449644?i=454449657&uo=4', 11, 1, '2022-03-10 11:31:46', 9.99, 0, 0),
(781795508, 'The Very Best of J Moss', 'the-very-best-of-j-moss', 72304519, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/5d706e3900af487fc8149b9f5dd6ad53.jpg', '1', 0, 1646911901, 0, '2012', '', 'https://music.apple.com/us/album/the-prayers-feat-hezekiah-walker-lfc-dorinda-clark-cole/781795508?i=781795559&uo=4', 15, 1, '2022-03-10 11:31:41', 9.99, 0, 0),
(355274287, 'Are You Listening (Kirk Franklin Presents Artists United for Haiti) - Single', 'are-you-listening-kirk-franklin-presents-artists-united-for-haiti---single', 3293094, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/cd/47/63/cd476385-836d-a61f-135a-63324db70c40/source/370x370bb.jpg', '1', 0, 1646911902, 0, '2010', '', 'https://music.apple.com/us/album/are-you-listening-kirk-franklin-presents-artists-united/355274287?i=355274289&uo=4', 1, 1, '2022-03-10 11:31:42', 2.99, 0, 0),
(314755890, 'The Kingdom, Vol. 1 (feat. GW&#39;s)', 'the-kingdom-vol-1-feat-gw-s-', 21769797, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/e8/39/4d/e8394de4-4a7f-043a-5778-52b5da202243/source/370x370bb.jpg', '1', 0, 1646911911, 0, '2009', '', 'https://music.apple.com/us/album/im-wrapped-in-you-feat-dorinda-clark-cole/314755890?i=314756156&uo=4', 11, 1, '2022-03-10 11:31:51', 9.99, 0, 0),
(1607193206, 'Malaco 50th Celebration', 'malaco-50th-celebration', 86375370, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music126/v4/47/38/e4/4738e42b-6672-4865-f7f7-5fc19b1a6f41/source/370x370bb.jpg', '1', 0, 1646911913, 0, '2022', '', 'https://music.apple.com/us/album/whos-on-the-lords-side-feat-dorinda-clark-cole/1607193206?i=1607193207&uo=4', 11, 1, '2022-03-10 11:31:53', 19.99, 0, 0),
(295704562, 'New Beginnings - EP', 'new-beginnings---ep', 654696, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/d5817c198aa54f9a963cc1e74d3bacc9.jpg', '1', 0, 1646911915, 0, '2008', '', 'https://music.apple.com/us/album/jesus-lifted-me-feat-dorinda-clark-cole/295704562?i=295704569&uo=4', 4, 1, '2022-03-10 11:31:55', 2.99, 0, 0),
(572542517, 'I&#39;m Glad', 'i-m-glad', 185248271, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/4d/f2/f3/4df2f38a-dd32-b634-5e32-7e29fdfeca73/source/370x370bb.jpg', '1', 0, 1646911919, 0, '2012', '', 'https://music.apple.com/us/album/gods-got-a-blessing-for-you-feat-myron-williams/572542517?i=572543133&uo=4', 14, 1, '2022-03-10 11:31:59', 9.99, 0, 0),
(840454954, 'Blessing Me (feat. Dorinda Clark Cole) - Single', 'blessing-me-feat-dorinda-clark-cole---single', 415355556, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/37/5a/ab/375aabea-e53c-4753-05d9-341aebe0f591/source/370x370bb.jpg', '1', 0, 1646911930, 0, '2014', '', 'https://music.apple.com/us/album/blessing-me-feat-dorinda-clark-cole/840454954?i=840454975&uo=4', 1, 1, '2022-03-10 11:32:10', 0.99, 0, 0),
(1508239318, 'Who&#39;s On the Lord&#39;s Side (feat. Byron Cage) - Single', 'who-s-on-the-lord-s-side-feat-byron-cage---single', 840454972, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/fc/54/b5/fc54b52b-7b4d-2b80-187b-fa6b8f8dd96f/source/370x370bb.jpg', '1', 0, 1646911931, 0, '2020', '', 'https://music.apple.com/us/album/whos-on-the-lords-side-feat-byron-cage/1508239318?i=1508239320&uo=4', 1, 1, '2022-03-10 11:32:11', 1.29, 0, 0),
(1175875380, 'VoVo - EP', 'vovo---ep', 334618707, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music71/v4/d9/07/a5/d907a548-37c5-ac9f-615f-8910a7177192/source/370x370bb.jpg', '1', 0, 1646914077, 0, '2016', '', 'https://music.apple.com/us/album/the-chancer/1175875380?i=1175875523&uo=4', 5, 1, '2022-03-10 12:07:57', 4.95, 0, 0),
(1114812245, 'La drague', 'la-drague', 723153447, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/61e6dbf6144ade59eafdd600a838e39c.jpg', '1', 0, 1646914079, 0, '2016', '', 'https://music.apple.com/us/album/une-femme-recherche-t-elle-un-macho/1114812245?i=1114812392&uo=4', 18, 1, '2022-03-10 12:07:59', 10.99, 0, 0),
(57830348, 'Bylli Crayone', 'bylli-crayone', 57830323, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/179cd46a48471b04c14575e9b674dfbd.jpg', '1', 0, 1646914330, 0, '2005', '', 'https://music.apple.com/us/album/i-wanna-taste-you-full-intention-mix/57830348?i=57830344&uo=4', 12, 1, '2022-03-10 12:12:10', 9.99, 0, 0),
(542976569, 'Thunder N Lightning (feat. Bylli Crayone & Loida) - Single', 'thunder-n-lightning-feat-bylli-crayone-loida---single', 542976570, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/bb/bf/71/bbbf7160-6881-489a-f6fc-3b11ff3c803a/source/370x370bb.jpg', '1', 0, 1646914332, 0, '2012', '', 'https://music.apple.com/us/album/thunder-n-lightning-feat-bylli-crayone-loida/542976569?i=542976575&uo=4', 1, 1, '2022-03-10 12:12:12', 0.99, 0, 0),
(165049253, 'Crayone Remix', 'crayone-remix', 57830323, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/934be203fb79493e9151979311a20f84.jpg', '1', 0, 1646914405, 0, '2006', '', 'https://music.apple.com/us/album/skit-freestyle-now/165049253?i=165049602&uo=4', 19, 1, '2022-03-10 12:13:25', 9.99, 0, 0),
(1069993954, '25 Years: The Best of Bylli Crayone', '25-years-the-best-of-bylli-crayone', 57830323, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/1c02f94bf979df4f83b0042eba5142ca.jpg', '1', 0, 1646914363, 0, '2005', '', 'https://music.apple.com/us/album/baja-los-pantelones/1069993954?i=1069995612&uo=4', 14, 1, '2022-03-10 12:12:43', 9.99, 0, 0),
(316838130, 'Kalidascope (The Crayone Collection)', 'kalidascope-the-crayone-collection-', 57830323, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/6015581f1de5d6ec288e7319c8ceb5b1.jpg', '1', 0, 1646914388, 0, '2005', '', 'https://music.apple.com/us/album/touch-me-all-over-thephlexican-remix/316838130?i=316838162&uo=4', 16, 1, '2022-03-10 12:13:08', 9.99, 0, 0),
(270867847, 'The Complete TV Themes #33, Vol. 3', 'the-complete-tv-themes-33-vol-3', 270673722, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/2b/fc/a7/2bfca7db-842b-b7cf-b8cb-1d2dc84abca6/source/370x370bb.jpg', '1', 0, 1646914453, 0, '2000', '', 'https://music.apple.com/us/album/patty-duke/270867847?i=270867903&uo=4', 42, 1, '2022-03-10 12:14:13', 9.99, 0, 0),
(1451134437, 'DJ Andy Smith Presents &#39;Reach Up: Disco Wonderland&#39;', 'dj-andy-smith-presents-reach-up-disco-wonderland-', 1291580524, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music114/v4/6d/bc/6d/6dbc6d88-699c-5add-c647-2d1d34e2ab50/source/370x370bb.jpg', '1', 0, 1646914455, 0, '1979', '', 'https://music.apple.com/us/album/patty-duke-extended-dj-mix/1451134437?i=1451134722&uo=4', 16, 1, '2022-03-10 12:14:15', -1, 0, 0),
(519980586, 'Disco Circus (Compiled & Mixed by Mighty Mouse), Vol. 3', 'disco-circus-compiled-mixed-by-mighty-mouse-vol-3', 150450003, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/80/0b/ba/800bba4d-3c69-e377-a47f-f4ebad2429a5/source/370x370bb.jpg', '1', 0, 1646914457, 0, '1979', '', 'https://music.apple.com/us/album/patty-duke/519980586?i=519980727&uo=4', 35, 1, '2022-03-10 12:14:17', 8.99, 0, 0),
(1191630912, 'Patty Duke - Single', 'patty-duke---single', 150450003, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music111/v4/38/9d/c3/389dc3d5-66b4-339d-0c5d-4c34ddfc8909/source/370x370bb.jpg', '1', 0, 1646914459, 0, '1979', '', 'https://music.apple.com/us/album/patty-duke/1191630912?i=1191631040&uo=4', 1, 1, '2022-03-10 12:14:19', 1.29, 0, 0),
(1170282607, 'Sounds of New York, USA Volume 1: The Big Break Rapper Party', 'sounds-of-new-york-usa-volume-1-the-big-break-rapper-party', 150450003, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music19/v4/e0/5c/74/e05c747f-aaa5-6e56-b29c-d83179c8c81a/source/370x370bb.jpg', '1', 0, 1646914461, 0, '1979', '', 'https://music.apple.com/us/album/patty-duke/1170282607?i=1170284334&uo=4', 11, 1, '2022-03-10 12:14:21', 9.99, 0, 0),
(1464627696, 'Spaced Out: The Very Best of Cloud One', 'spaced-out-the-very-best-of-cloud-one', 150450003, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/f7c95e93d2ca57ef3182d68fec144c92.jpg', '1', 0, 1646914463, 0, '1979', '', 'https://music.apple.com/us/album/patty-duke/1464627696?i=1464628428&uo=4', 9, 1, '2022-03-10 12:14:23', 19.99, 0, 0),
(265174214, 'Nasty Junething', 'nasty-junething', 265174222, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/c04afb24d8489a6120a300c71f8f9c33.jpg', '1', 0, 1646914465, 0, '2007', '', 'https://music.apple.com/us/album/patty-duke/265174214?i=265174791&uo=4', 8, 1, '2022-03-10 12:14:25', 7.92, 0, 0),
(209359773, 'Emeralds Made of Almonds', 'emeralds-made-of-almonds', 1490127540, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/181e9156f8f5476ab3f31df4c26c896f.jpg', '1', 0, 1646914466, 0, '2006', '', 'https://music.apple.com/us/album/patty-duke/209359773?i=209360160&uo=4', 10, 1, '2022-03-10 12:14:26', 7.99, 0, 0),
(1191595295, 'Kenny Dope vs. P&P Records', 'kenny-dope-vs-p-p-records', 150450003, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/59/59/59/5959598d-5229-223d-fb89-88778bb6f3fc/source/370x370bb.jpg', '1', 0, 1646914472, 0, '2001', '', 'https://music.apple.com/us/album/patty-duke/1191595295?i=1191595851&uo=4', 26, 1, '2022-03-10 12:14:32', 9.99, 0, 0),
(1506989861, 'No Nos PararÃ¡n - EP', 'no-nos-parar-n---ep', 1483009880, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music113/v4/38/e7/43/38e74311-4147-be04-4a94-665c4ec25ac5/source/370x370bb.jpg', '1', 0, 1646914473, 0, '2020', '', 'https://music.apple.com/us/album/patty-duke/1506989861?i=1506989865&uo=4', 5, 1, '2022-03-10 12:14:33', 4.95, 0, 0),
(1443460668, 'Drew&#39;s Famous Presents As Seen On TV: Comedy Theme Songs', 'drew-s-famous-presents-as-seen-on-tv-comedy-theme-songs', 73359636, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/9d/3b/a9/9d3ba95a-7257-2cc2-78b5-8d1d0b974d68/source/370x370bb.jpg', '1', 0, 1646914475, 0, '2005', '', 'https://music.apple.com/us/album/the-patty-duke-show-theme/1443460668?i=1443460690&uo=4', 10, 1, '2022-03-10 12:14:35', 4.99, 0, 0),
(1530395021, 'Buffalo - EP', 'buffalo---ep', 1530395025, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/22/72/f3/2272f32c-c62a-966a-6cb7-bae15c56129e/source/370x370bb.jpg', '1', 0, 1646914477, 0, '2020', '', 'https://music.apple.com/us/album/patty-duke/1530395021?i=1530395032&uo=4', 5, 1, '2022-03-10 12:14:37', 4.95, 0, 0);
INSERT INTO `tbl_artist_album` (`id`, `album_title`, `album_seo`, `album_artist_id`, `album_description`, `album_picture`, `album_status`, `popular_album`, `posted_date`, `latest_one`, `years`, `keywords`, `itunes_url`, `track_count`, `ranking_order`, `updated_by_itunes`, `price`, `check_status`, `cron_status`) VALUES
(716047559, 'Lost Hits of the 60&#39;s', 'lost-hits-of-the-60-s', 5264698, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music124/v4/04/f3/4a/04f34a7e-ec83-70a8-0217-a3bd7c4bbdc2/source/370x370bb.jpg', '1', 0, 1646914482, 0, '1996', '', 'https://music.apple.com/us/album/dont-just-stand-there/716047559?i=716048411&uo=4', 20, 1, '2022-03-10 12:14:42', 10.99, 0, 0),
(1444071495, 'Don&#39;t Just Stand There', 'don-t-just-stand-there', 5264698, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/762120f9a245ba836f76439834582083.jpg', '1', 0, 1646914543, 0, '1965', '', 'https://music.apple.com/us/album/danke-schoen/1444071495?i=1444071669&uo=4', 12, 1, '2022-03-10 12:15:43', 11.99, 0, 0),
(1443551247, 'Patty Duke Sings Folk Songs: Time to Move On', 'patty-duke-sings-folk-songs-time-to-move-on', 5264698, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', '1', 0, 1646914517, 0, '2013', '', 'https://music.apple.com/us/album/the-best-is-yet-to-come/1443551247?i=1443551308&uo=4', 12, 1, '2022-03-10 12:15:17', 9.99, 0, 0),
(1443745124, 'Patty', 'patty', 5264698, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/fce63216019d4897a63115e5f9f4293f.jpg', '1', 0, 1646914533, 0, '1966', '', 'https://music.apple.com/us/album/nothing-but-you/1443745124?i=1443745864&uo=4', 10, 1, '2022-03-10 12:15:33', 7.99, 0, 0),
(1434386497, 'The New King', 'the-new-king', 5131176, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/50c2ba432adcc51b51971702b2a8a5c1.jpg', '1', 0, 1646914525, 0, '2016', '', 'https://music.apple.com/us/album/react-feat-patty-duke-prince-omar/1434386497?i=1434386896&uo=4', 18, 1, '2022-03-10 12:15:25', 8.99, 0, 0),
(1526194365, 'Me LevantarÃ© (feat. Danny Rivera, JosÃ© Alberto &#34;El Canario&#34;, Yolanda Duke, William Duvall, Break Out The Crazy, Diomary La Mala, Melina LeÃ³n, Adalgisa Pantaleon, Patty Rosario, Charlie Mosquea, Marcos Caminero, Samuel Gonzalez, Sophy, Lucrecia,', 'me-levantar-feat-danny-rivera-jos-alberto-el-canario-yolanda-duke-william-duvall-break-out-the-crazy-diomary-la-mala-melina-le-n-adalgisa-pantaleon-patty-rosario-charlie-mosquea-marcos-caminero-samuel-gonzalez-sophy-lucrecia-waddys-j-quez-rossmery-almonte', 1526194368, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/0b/d1/e9/0bd1e96a-56f7-cdd2-3fe5-04694cc82b90/source/370x370bb.jpg', '1', 0, 1646914538, 0, '2020', '', 'https://music.apple.com/us/album/me-levantar%C3%A9-feat-danny-rivera-yolanda-duke-william/1526194365?i=1526194372&uo=4', 1, 1, '2022-03-10 12:15:38', 0.99, 0, 0),
(575220205, 'Gilberto Santa Rosa', 'gilberto-santa-rosa', 1311894, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/45919b334d434dd5bd45936ed374bdbe.jpg', '1', 0, 1646914683, 0, '2001', '', 'https://music.apple.com/us/album/a-medio-coraz%C3%B3n/575220205?i=575220365&uo=4', 13, 1, '2022-03-10 12:18:03', 11.99, 0, 0),
(893420353, 'En la Oscuridad (feat. Gilberto Santa Rosa) [VersiÃ³n Salsa] - Single', 'en-la-oscuridad-feat-gilberto-santa-rosa-versi-n-salsa---single', 72929426, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/c895036ed14a7770d5bfba5210a5e11b.jpg', '1', 0, 1646914685, 0, '2014', '', 'https://music.apple.com/us/album/en-la-oscuridad-feat-gilberto-santa-rosa-versi%C3%B3n-salsa/893420353?i=893420377&uo=4', 1, 1, '2022-03-10 12:18:05', 1.29, 0, 0),
(383749881, 'Mis Favoritas: Gilberto Santa Rosa', 'mis-favoritas-gilberto-santa-rosa', 1311894, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', '1', 0, 1646914717, 0, '1989', '', 'https://music.apple.com/us/album/me-volv%C3%ADeron-a-hablar-de-ella/383749881?i=383750119&uo=4', 14, 1, '2022-03-10 12:18:37', 6.99, 0, 0),
(438693839, 'Franco de Vita en Primera Fila (Live)', 'franco-de-vita-en-primera-fila-live-', 32849, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/ff6d648a3af24529927604dc9982735c.jpg', '1', 0, 1646914690, 0, '2011', '', 'https://music.apple.com/us/album/te-veo-venir-soledad-feat-gilberto-santa-rosa-live/438693839?i=438693932&uo=4', 18, 1, '2022-03-10 12:18:10', 9.99, 0, 0),
(495508054, 'Canciones de Amor: Gilberto Santa Rosa', 'canciones-de-amor-gilberto-santa-rosa', 1311894, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', '1', 0, 1646914754, 0, '2001', '', 'https://music.apple.com/us/album/a-la-distancia-de-un-te-quiero/495508054?i=495508298&uo=4', 14, 1, '2022-03-10 12:19:14', 7.99, 0, 0),
(956617619, 'Legacy - De LÃ­der a Leyenda Tour (Deluxe Edition)', 'legacy---de-l-der-a-leyenda-tour-deluxe-edition-', 72929426, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/ffacb6e3508a4a2fca063157a58e0848.jpg', '1', 0, 1646914719, 0, '2014', '', 'https://music.apple.com/us/album/en-la-oscuridad-feat-gilberto-santa-rosa-versi%C3%B3n-salsa/956617619?i=956617631&uo=4', 20, 1, '2022-03-10 12:18:39', 11.99, 0, 0),
(721217836, 'La Vida De Un Genio (Deluxe Edition)', 'la-vida-de-un-genio-deluxe-edition-', 363394668, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/58b9408c74b14d749208fa058e35a7a6.jpg', '1', 0, 1646914722, 0, '2010', '', 'https://music.apple.com/us/album/me-equivoqu%C3%A9-feat-gilberto-santarosa/721217836?i=721218231&uo=4', 23, 1, '2022-03-10 12:18:42', 11.99, 0, 0),
(1472341875, 'Paso la Vida Pensando (feat. Gilberto Santa Rosa) - Single', 'paso-la-vida-pensando-feat-gilberto-santa-rosa---single', 3500477, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/c6/d9/75/c6d97598-ce31-4af7-9b7a-1688203d3376/source/370x370bb.jpg', '1', 0, 1646914726, 0, '2014', '', 'https://music.apple.com/us/album/paso-la-vida-pensando-feat-gilberto-santa-rosa/1472341875?i=1472341879&uo=4', 1, 1, '2022-03-10 12:18:46', 0.99, 0, 0),
(578051190, 'Franco de Vita - En Primera Fila y MÃ¡s (Live)', 'franco-de-vita---en-primera-fila-y-m-s-live-', 32849, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/9c/93/4e/9c934e4a-beaf-ae4b-2b6b-654eb76d109f/source/370x370bb.jpg', '1', 0, 1646914728, 0, '2011', '', 'https://music.apple.com/us/album/te-veo-venir-soledad-feat-gilberto-santa-rosa-live/578051190?i=578051326&uo=4', 22, 1, '2022-03-10 12:18:48', 16.99, 0, 0),
(1358755128, '25/7', '25-7', 4190895, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/338fd125417e2f7432fb6bc435186a19.jpg', '1', 0, 1646914730, 0, '2018', '', 'https://music.apple.com/us/album/salsa-pa-olvidar-las-penas-feat-gilberto-santa-rosa/1358755128?i=1358755132&uo=4', 9, 1, '2022-03-10 12:18:50', 9.99, 0, 0),
(21478955, 'Back to the Future', 'back-to-the-future', 104489, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/be2be2c95ee990b35c08229856ed7b77.jpg', '1', 0, 1646914739, 0, '2000', '', 'https://music.apple.com/us/album/el-apartamento-feat-gilberto-santa-rosa/21478955?i=21478913&uo=4', 12, 1, '2022-03-10 12:18:59', 7.99, 0, 0),
(1443653215, 'La Historiaâ¦Mis Ãxitos', 'la-historia-mis-xitos', 270528403, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/1f/63/2f/1f632f06-603f-d0e8-217d-8dea6a2e7e55/source/370x370bb.jpg', '1', 0, 1646914745, 0, '2010', '', 'https://music.apple.com/us/album/eramos-ni%C3%B1os-feat-tito-el-bambino-gilberto-santa-rosa/1443653215?i=1443653795&uo=4', 15, 1, '2022-03-10 12:19:05', 9.99, 0, 0),
(1545426732, 'Lluvia y Fuego', 'lluvia-y-fuego', 3267375, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music114/v4/9e/af/a9/9eafa94c-af78-a672-d76f-710cd8f8153a/source/370x370bb.jpg', '1', 0, 1646914756, 0, '2019', '', 'https://music.apple.com/us/album/el-que-siempre-son-o-feat-gilberto-santarosa/1545426732?i=1545427049&uo=4', 11, 1, '2022-03-10 12:19:16', 9.99, 0, 0),
(635516729, 'Worship In the Now (Live) [Deluxe Edition]', 'worship-in-the-now-live-deluxe-edition-', 6630759, '', 'https://is3-ssl.mzstatic.com/image/thumb/Video2/v4/cf/47/24/cf47242f-6458-5702-3e81-fa5c6da080b5/source/370x370bb.jpg', '1', 0, 1646914883, 0, '2013', '', 'https://music.apple.com/us/music-video/worshiper-in-me-feat-jonathan-nelson-live/635516774?uo=4', 20, 1, '2022-03-10 12:21:23', 11.99, 0, 0),
(635516772, 'Worship In the Now (Live)', 'worship-in-the-now-live-', 6630759, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/7e/d0/df/7ed0df3f-5cd0-7047-f272-7b1ce11e1ca4/source/370x370bb.jpg', '1', 0, 1646914851, 0, '2013', '', 'https://music.apple.com/us/album/worshiper-in-me-feat-jonathan-nelson-live/635516772?i=635516917&uo=4', 16, 1, '2022-03-10 12:20:51', 9.99, 0, 0),
(641301970, 'Right Now Praise', 'right-now-praise', 35305616, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/cd83db38a6b640cea74b9459fcf24b82.jpg', '1', 0, 1646914933, 0, '2008', '', 'https://music.apple.com/us/album/yes-out-there/641301970?i=641301980&uo=4', 14, 1, '2022-03-10 12:22:13', 9.99, 0, 0),
(885867060, 'Balance', 'balance', 198012194, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/74fddb0121f34f59ad1a317f76aed11d.jpg', '1', 0, 1646914860, 0, '2009', '', 'https://music.apple.com/us/album/great-is-our-god-feat-jonathan-nelson-myron-butler/885867060?i=885867125&uo=4', 11, 1, '2022-03-10 12:21:00', 9.99, 0, 0),
(1369304814, 'The Answer', 'the-answer', 14956406, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/23275004db371d394a39feb18bce6d94.jpg', '1', 0, 1646914862, 0, '2018', '', 'https://music.apple.com/us/album/faith-for-that-feat-jonathan-nelson/1369304814?i=1369305015&uo=4', 14, 1, '2022-03-10 12:21:02', 9.99, 0, 0),
(1443857963, 'Finish Strong (feat. Purpose)', 'finish-strong-feat-purpose-', 35305616, '', 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/a7/e5/58/a7e55880-7b2f-aac6-4448-70e512cfdf69/source/370x370bb.jpg', '1', 0, 1646914870, 0, '2013', '', 'https://music.apple.com/us/album/free-feat-purpose-jade-milan-nelson/1443857963?i=1443859080&uo=4', 14, 1, '2022-03-10 12:21:10', 9.99, 0, 0),
(572198190, 'Good Time', 'good-time', 1582234774, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/b6/16/37/b61637dd-49d5-717a-1f20-4c652f9f5b63/source/370x370bb.jpg', '1', 0, 1646914866, 0, '2012', '', 'https://music.apple.com/us/album/wait-reprise-feat-jonathan-nelson/572198190?i=572198240&uo=4', 14, 1, '2022-03-10 12:21:06', 9.99, 0, 0),
(626635233, 'Better Days', 'better-days', 35305616, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/b3686ee8d9d84574bd6d7f81866df1cb.jpg', '1', 0, 1646914935, 0, '2010', '', 'https://music.apple.com/us/album/performance/626635233?i=626635473&uo=4', 10, 1, '2022-03-10 12:22:15', 9.99, 0, 0),
(1160004980, 'Soundz of Afrika', 'soundz-of-afrika', 306425429, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/63024e18be52f11fe347509eb3b265c5.jpg', '1', 0, 1646914912, 0, '2016', '', 'https://music.apple.com/us/album/baba-live-feat-jonathan-nelson/1160004980?i=1160005122&uo=4', 18, 1, '2022-03-10 12:21:52', 9.99, 0, 0),
(1521621336, 'Revival Culture Worship Lab (Live)', 'revival-culture-worship-lab-live-', 530052763, '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/d5/6c/e2/d56ce228-f89a-027d-27cb-42d2d8d6799a/source/370x370bb.jpg', '1', 0, 1646914901, 0, '2020', '', 'https://music.apple.com/us/album/city-of-god-reprise-live-feat-jonathan-nelson/1521621336?i=1521621362&uo=4', 21, 1, '2022-03-10 12:21:41', 10.99, 0, 0),
(1022630573, 'We Win', 'we-win', 1022630798, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music2/v4/7f/f3/93/7ff393a3-dc3f-26be-fcd5-559a64c63afe/source/370x370bb.jpg', '1', 0, 1646914922, 0, '2015', '', 'https://music.apple.com/us/album/we-win-feat-jonathan-nelson/1022630573?i=1022630808&uo=4', 16, 1, '2022-03-10 12:22:02', 9.99, 0, 0),
(1533827136, 'The Reunion (feat. Purpose)', 'the-reunion-feat-purpose-', 35305616, '', 'https://is5-ssl.mzstatic.com/image/thumb/Music126/v4/bf/ac/7e/bfac7e8f-1faa-a441-8e41-3e9d0b772b89/source/370x370bb.jpg', '1', 0, 1646914892, 0, '2020', '', 'https://music.apple.com/us/album/expect-the-great-feat-purpose/1533827136?i=1533827139&uo=4', 16, 1, '2022-03-10 12:21:32', 9.99, 0, 0),
(796521856, 'WOW Gospel 2014', 'wow-gospel-2014', 35305616, '', 'https://is1-ssl.mzstatic.com/image/thumb/Music4/v4/56/e7/2a/56e72a89-33b5-fde4-be51-5a3f09366bb2/source/370x370bb.jpg', '1', 0, 1646914893, 0, '2013', '', 'https://music.apple.com/us/album/finish-strong/796521856?i=796521878&uo=4', 30, 1, '2022-03-10 12:21:33', 14.99, 0, 0),
(1470690034, 'Elements', 'elements', 181477913, '', 'https://lastfm.freetls.fastly.net/i/u/300x300/57472b9a8ce091838b5962fe8eaa526c.jpg', '1', 0, 1646914902, 0, '2019', '', 'https://music.apple.com/us/album/fire-prayer-feat-jonathan-nelson-stems/1470690034?i=1470690037&uo=4', 13, 1, '2022-03-10 12:21:42', 9.99, 0, 0),
(1516873253, 'I Need You (feat. John P. Kee, Todd Dulaney, Tank, Jonathan McReynolds, Jacquees, Travis Greene, Ginuwine, Byron Cage, Montell Jordan, Raheem DeVaughn, Jason Nelson, Major, PJ Morton, Musiq Soulchild, Brian Courtney Wilson, Bobby V & Eric Dawkins) - Singl', 'i-need-you-feat-john-p-kee-todd-dulaney-tank-jonathan-mcreynolds-jacquees-travis-greene-ginuwine-byron-cage-montell-jordan-raheem-devaughn-jason-nelson-major-pj-morton-musiq-soulchild-brian-courtney-wilson-bobby-v-eric-dawkins---single', 419348639, '', 'https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/4a/4c/31/4a4c3124-3113-0773-bd56-1144da9db135/source/370x370bb.jpg', '1', 0, 1646914905, 0, '2020', '', 'https://music.apple.com/us/album/i-need-you-feat-john-p-kee-todd-dulaney-tank-jonathan/1516873253?i=1516873255&uo=4', 1, 1, '2022-03-10 12:21:45', 1.29, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_seo_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `show_listing` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'shows category listing '
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`cat_id`, `cat_name`, `cat_seo_name`, `status`, `show_listing`) VALUES
(7, 'Electronic', 'electronic', 1, 1),
(51, 'K-Pop', 'k-pop', 1, 1),
(8007, 'Dance', 'dance', 1, 1),
(8017, 'Jazz', 'jazz', 1, 1),
(8022, 'Pop', 'pop', 1, 1),
(50000092, 'Hu Sherman', 'hu-sherman', 1, 1),
(50000093, 'Damon Guy', 'damon-guy', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `comment_id` int(11) NOT NULL,
  `comment_details` text NOT NULL,
  `comment_user_id` int(11) NOT NULL,
  `comment_artist_id` int(11) NOT NULL,
  `comment_album_id` int(11) NOT NULL,
  `comment_review_id` int(11) NOT NULL,
  `comment_post_date` int(11) NOT NULL,
  `comment_status` int(11) NOT NULL,
  `comment_ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`comment_id`, `comment_details`, `comment_user_id`, `comment_artist_id`, `comment_album_id`, `comment_review_id`, `comment_post_date`, `comment_status`, `comment_ip`) VALUES
(17, 'this is 2123 43434', 94, 18200208, 587008000, 587008153, 1642974258, 1, '101.188.77.54'),
(18, 'this is new discussion ', 82, 1093572611, 1093572569, 1093572779, 1644221459, 1, '103.255.6.109'),
(19, 'this is new discussion d', 82, 1093572611, 1481586182, 1481586190, 1644221521, 1, '103.255.6.109'),
(20, 'this is new post', 82, 18200208, 587008000, 587008151, 1645163340, 1, '103.255.7.6');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `country_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`country_id`, `name`, `status`) VALUES
(1, 'Afghanistan', 1),
(2, 'Albania', 1),
(3, 'Algeria', 1),
(4, 'American Samoa', 1),
(5, 'Andorra', 1),
(6, 'Angola', 1),
(7, 'Anguilla', 1),
(8, 'Antarctica', 1),
(9, 'Antigua and Barbuda', 1),
(10, 'Argentina', 1),
(11, 'Armenia', 1),
(12, 'Aruba', 1),
(13, 'Australia', 1),
(14, 'Austria', 1),
(15, 'Azerbaijan', 1),
(16, 'Bahamas', 1),
(17, 'Bahrain', 1),
(18, 'Bangladesh', 1),
(19, 'Barbados', 1),
(20, 'Belarus', 1),
(21, 'Belgium', 1),
(22, 'Belize', 1),
(23, 'Benin', 1),
(24, 'Bermuda', 1),
(25, 'Bhutan', 1),
(26, 'Bolivia\r\nBolivia, Plurinational state of', 1),
(27, 'Bosnia and Herzegovina', 1),
(28, 'Botswana', 1),
(29, 'Bouvet Island', 1),
(30, 'Brazil', 1),
(31, 'British Indian Ocean Territory', 1),
(32, 'Brunei Darussalam', 1),
(33, 'Bulgaria', 1),
(34, 'Burkina Faso', 1),
(35, 'Burundi', 1),
(36, 'Cambodia', 1),
(37, 'Cameroon', 1),
(38, 'Canada', 1),
(39, 'Cape Verde', 1),
(40, 'Cayman Islands', 1),
(42, 'Central African Republic', 1),
(43, 'Chad', 1),
(44, 'Chile', 1),
(45, 'China', 1),
(46, 'Christmas Island', 1),
(47, 'Cocos (Keeling) Islands', 1),
(48, 'Colombia', 1),
(49, 'Comoros', 1),
(50, 'Congo', 1),
(51, 'Congo, The Democratic Republic of the', 1),
(52, 'Cook Islands', 1),
(53, 'Costa Rica', 1),
(54, 'Croatia', 1),
(55, 'Cuba', 1),
(56, 'Cyprus', 1),
(57, 'Czech Republic', 1),
(58, 'Denmark', 1),
(59, 'Djibouti', 1),
(60, 'Dominica', 1),
(61, 'Dominican Republic', 1),
(62, 'Ecuador', 1),
(63, 'Egypt', 1),
(64, 'El Salvador', 1),
(65, 'Equatorial Guinea', 1),
(66, 'Eritrea', 1),
(67, 'Estonia', 1),
(68, 'Ethiopia', 1),
(69, 'Falkland Islands (Malvinas)', 1),
(70, 'Faroe Islands', 1),
(71, 'Fiji', 1),
(72, 'Finland', 1),
(73, 'France', 1),
(74, 'French Guiana', 1),
(75, 'French Polynesia', 1),
(76, 'French Southern Territories', 1),
(77, 'Gabon', 1),
(78, 'Gambia', 1),
(79, 'Georgia', 1),
(80, 'Germany', 1),
(81, 'Ghana', 1),
(82, 'Gibraltar', 1),
(83, 'Greece', 1),
(84, 'Greenland', 1),
(85, 'Grenada', 1),
(86, 'Guadeloupe', 1),
(87, 'Guam', 1),
(88, 'Guatemala', 1),
(89, 'Guernsey', 1),
(90, 'Guinea', 1),
(91, 'Guinea-Bissau', 1),
(92, 'Guyana', 1),
(93, 'Haiti', 1),
(94, 'Heard Island and McDonald Islands', 1),
(95, 'Holy See (Vatican City State)', 1),
(96, 'Honduras', 1),
(97, 'Hong Kong', 1),
(98, 'Hungary', 1),
(99, 'Iceland', 1),
(100, 'India', 1),
(101, 'Indonesia', 1),
(102, 'Iran, Islamic Republic of', 1),
(103, 'Iraq', 1),
(104, 'Ireland', 1),
(105, 'Isle of Man', 1),
(106, 'Israel', 1),
(107, 'Italy', 1),
(108, 'Jamaica', 1),
(109, 'Japan', 1),
(110, 'Jersey', 1),
(111, 'Jordan', 1),
(112, 'Kazakhstan', 1),
(113, 'Kenya', 1),
(114, 'Kiribati', 1),
(115, 'Korea, Democratic People&#39;s Republic of', 1),
(116, 'Korea, Republic of', 1),
(117, 'Kuwait', 1),
(118, 'Kyrgyzstan', 1),
(119, 'Lao People&#39;s Democratic Republic', 1),
(120, 'Latvia', 1),
(121, 'Lebanon', 1),
(122, 'Lesotho', 1),
(123, 'Liberia', 1),
(124, 'Libyan Arab Jamahiriya', 1),
(125, 'Liechtenstein', 1),
(126, 'Lithuania', 1),
(127, 'Luxembourg', 1),
(128, 'Macao', 1),
(129, 'Macedonia', 1),
(130, 'Madagascar', 1),
(131, 'Malawi', 1),
(132, 'Malaysia', 1),
(133, 'Maldives', 1),
(134, 'Mali', 1),
(135, 'Malta', 1),
(136, 'Marshall Islands', 1),
(137, 'Martinique', 1),
(138, 'Mauritania', 1),
(139, 'Mauritius', 1),
(140, 'Mayotte', 1),
(141, 'Mexico', 1),
(142, 'Micronesia, Federated States of', 1),
(143, 'Moldova, Republic of', 1),
(144, 'Monaco', 1),
(145, 'Mongolia', 1),
(146, 'Montenegro', 1),
(147, 'Montserrat', 1),
(148, 'Morocco', 1),
(149, 'Mozambique', 1),
(150, 'Myanmar', 1),
(151, 'Namibia', 1),
(152, 'Nauru', 1),
(153, 'Nepal', 1),
(154, 'Netherlands', 1),
(155, 'Netherlands Antilles', 1),
(156, 'New Caledonia', 1),
(157, 'New Zealand', 1),
(158, 'Nicaragua', 1),
(159, 'Niger', 1),
(160, 'Nigeria', 1),
(161, 'Niue', 1),
(162, 'Norfolk Island', 1),
(163, 'Northern Mariana Islands', 1),
(164, 'Norway', 1),
(165, 'Oman', 1),
(166, 'Pakistan', 1),
(167, 'Palau', 1),
(168, 'Palestinian Territory, Occupied', 1),
(169, 'Panama', 1),
(170, 'Papua New Guinea', 1),
(171, 'Paraguay', 1),
(172, 'Peru', 1),
(173, 'Philippines', 1),
(174, 'Pitcairn', 1),
(175, 'Poland', 1),
(176, 'Portugal', 1),
(177, 'Puerto Rico', 1),
(178, 'Qatar', 1),
(180, 'Romania', 1),
(181, 'Russian Federation', 1),
(182, 'Rwanda', 1),
(183, 'Saint Helena', 1),
(184, 'Saint Kitts and Nevis', 1),
(185, 'Saint Lucia', 1),
(186, 'Saint Martin', 1),
(187, 'Saint Pierre and Miquelon', 1),
(188, 'Saint Vincent and the Grenadines', 1),
(189, 'Samoa', 1),
(190, 'San Marino', 1),
(191, 'Sao Tome and Principe', 1),
(192, 'Saudi Arabia', 1),
(193, 'Senegal', 1),
(194, 'Serbia', 1),
(195, 'Seychelles', 1),
(196, 'Sierra Leone', 1),
(197, 'Singapore', 1),
(198, 'Slovakia', 1),
(199, 'Slovenia', 1),
(200, 'Solomon Islands', 1),
(201, 'Somalia', 1),
(202, 'South Africa', 1),
(203, 'South Georgia and the South Sandwich Islands', 1),
(204, 'Spain', 1),
(205, 'Sri Lanka', 1),
(206, 'Sudan', 1),
(207, 'Suriname', 1),
(208, 'Svalbard and Jan Mayen', 1),
(209, 'Swaziland', 1),
(210, 'Sweden', 1),
(211, 'Switzerland', 1),
(212, 'Syrian Arab Republic', 1),
(213, 'Taiwan', 1),
(214, 'Tajikistan', 1),
(215, 'Tanzania, United Republic of', 1),
(216, 'Thailand', 1),
(217, 'Timor-Leste', 1),
(218, 'Togo', 1),
(219, 'Tokelau', 1),
(220, 'Tonga', 1),
(221, 'Trinidad and Tobago', 1),
(222, 'Tunisia', 1),
(223, 'Turkey', 1),
(224, 'Turkmenistan', 1),
(225, 'Turks and Caicos Islands', 1),
(226, 'Tuvalu', 1),
(227, 'Uganda', 1),
(228, 'Ukraine', 1),
(229, 'United Arab Emirates', 1),
(230, 'United Kingdom', 1),
(231, 'United States', 1),
(232, 'United States Minor Outlying Islands', 1),
(233, 'Uruguay', 1),
(234, 'Uzbekistan', 1),
(235, 'Vanuatu', 1),
(236, 'Venezuela, Bolivarian Republic of', 1),
(237, 'Viet Nam', 1),
(238, 'Virgin Islands, British', 1),
(239, 'Virgin Islands, U.S.', 1),
(240, 'Wallis and Futuna', 1),
(241, 'Western Sahara', 1),
(242, 'Yemen', 1),
(243, 'Zambia', 1),
(244, 'Zimbabwe', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emailtemplets`
--

CREATE TABLE `tbl_emailtemplets` (
  `etemp_id` int(11) NOT NULL,
  `etemp_name` varchar(250) NOT NULL,
  `etemp_subject` varchar(500) NOT NULL,
  `etemp_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_emailtemplets`
--

INSERT INTO `tbl_emailtemplets` (`etemp_id`, `etemp_name`, `etemp_subject`, `etemp_data`) VALUES
(1, 'New Registration Email to user', 'Welcome to Tailem.com', '<p>\n	Hi {USERNAME},</p>\n<p>\n	Hello, and welcome to Tailem.com</p>\n<p>\n	To begin, please sign in using your email address and password associated to your account:</p>\n<p>\n	<a href=\"https://www.tailem.com/sign-in\"> https://www.tailem.com/sign-in </a></p>\n<p>\n	For assistance with signing in or if you have any other concerns, please send us a message at info@tailem.com and we will respond as soon as possible.</p>\n<p>\n	Thank you once again for becoming a member of Tailem.com</p>\n<p>\n	Warmest regards,<br />\n	Team at Tailem.com</p>'),
(2, 'Forget Password Email to user', 'Password Recovery from Tailem.com', '<p>\n	Hi <strong>{USERNAME}</strong>,</p>\n<p>\n	A request has been submitted to recover a lost password from Tailem.com</p>\n<p>\n	To complete the password change, please visit the following link and enter the requested info:</p>\n<p>\n	<strong>{LINK}</strong></p>\n<p>\n	Passwords must be alphanumeric and be at least 6 characters long.</p>\n<p>\n	If you did not specifically request this password change, please disregard this notice.</p>\n<p>\n	If you have any questions or concerns, please send us a message at info@tailem.com and we will respond as soon as possible.</p>\n<p>\n	&nbsp;</p>\n<p>\n	Warmest regards,<br />\n	Team at Tailem.com</p>\n<p>\n	&nbsp;</p>'),
(3, 'Review post alert email to admin', 'New Review Post', 'New Review Post'),
(4, 'Review approval email to the user', 'Review approval', 'Review approval'),
(5, 'Report Comment Admin Mail Alert', 'Report Comment ', 'Report Comment'),
(6, 'Contact US Admin Email Alert', 'Contact US', '<p>\n	Hi {ADMIN},</p>\n<p>\n	{USER} has sent you a message from Tailem.com. Below is the details.</p>\n<p>\n	Email: {EMAIL}</p>\n<p>\n	{MESSAGE}</p>\n<p>\n	&nbsp;</p>'),
(7, 'Account Block email To User', 'Account Block email', '<p>\n	Hi {USERNAME},</p>\n<p>\n	Your Account at Tailem.com is blocked.&nbsp;</p>\n<p>\n	{MESSAGE}</p>\n<p>\n	Password: {PASSWORD}</p>\n<p>\n	Best Regards,</p>\n<p>\n	&nbsp;</p>\n<p>\n	reviewsite.com Team</p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_featured_artist_assocs`
--

CREATE TABLE `tbl_featured_artist_assocs` (
  `id` int(11) NOT NULL,
  `featured_artist` varchar(255) NOT NULL,
  `main_artist` varchar(255) NOT NULL,
  `album_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `add_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_featured_artist_assocs`
--

INSERT INTO `tbl_featured_artist_assocs` (`id`, `featured_artist`, `main_artist`, `album_id`, `song_id`, `add_date`) VALUES
(1, '18200208', '1093572611', 1481586182, 1481586190, '2021-12-05'),
(2, '513621150', '1093572611', 1481586182, 1481586555, '2021-12-29'),
(3, '205597208', '1093572611', 1481586182, 1481586202, '2021-12-29'),
(6, '205597208', '2472698', 2472760, 2472696, '2021-12-29'),
(7, '1475489613', '2514743', 2514815, 2514741, '2021-12-29'),
(8, '1093572611', '548945', 2514815, 2514758, '2022-01-23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gcomment_report`
--

CREATE TABLE `tbl_gcomment_report` (
  `gc_report_id` int(11) NOT NULL,
  `gc_report_comment_id` int(11) NOT NULL,
  `gc_report_user_id` int(11) NOT NULL,
  `gc_report_deatil` text NOT NULL,
  `gc_report_date` int(11) NOT NULL,
  `gc_report_status` int(11) NOT NULL,
  `gc_report_ip` varchar(50) NOT NULL,
  `gc_report_option` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_gcomment_report`
--

INSERT INTO `tbl_gcomment_report` (`gc_report_id`, `gc_report_comment_id`, `gc_report_user_id`, `gc_report_deatil`, `gc_report_date`, `gc_report_status`, `gc_report_ip`, `gc_report_option`) VALUES
(1, 7, 4, 'We are in progress', 1388488806, 1, '58.65.172.229', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general_comments`
--

CREATE TABLE `tbl_general_comments` (
  `gcomment_id` int(11) NOT NULL,
  `gcomment_user_id` int(11) NOT NULL,
  `gcomment_cat_id` int(11) NOT NULL,
  `gcomment_detail` text NOT NULL,
  `gcomment_post_date` int(11) NOT NULL,
  `gcomment_status` int(11) NOT NULL,
  `gcomment_ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_general_comments`
--

INSERT INTO `tbl_general_comments` (`gcomment_id`, `gcomment_user_id`, `gcomment_cat_id`, `gcomment_detail`, `gcomment_post_date`, `gcomment_status`, `gcomment_ip`) VALUES
(2, 5, 31, 'Test for eloctronics2', 1385212916, 1, '58.65.172.229'),
(3, 4, 31, 'This is a new general comment Test', 1385376987, 1, '58.65.172.229'),
(4, 1, 39, 'This is general comments', 1385379568, 1, '58.65.172.229'),
(5, 7, 35, 'Cool', 1385412402, 1, '121.219.80.96'),
(6, 1, 31, 'This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. This is 1 more comment. ', 1386658213, 1, '58.65.172.229');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general_comments_likes`
--

CREATE TABLE `tbl_general_comments_likes` (
  `g_comment_like_id` int(11) NOT NULL,
  `g_comment_id` int(11) NOT NULL,
  `g_comment_cat_id` int(11) NOT NULL,
  `g_comment_like_user_id` int(11) NOT NULL,
  `g_comment_like_receive_user_id` int(11) NOT NULL,
  `g_comment_like_date` int(11) NOT NULL,
  `g_comment_like_status` int(11) NOT NULL,
  `g_comment_like_ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_general_comments_likes`
--

INSERT INTO `tbl_general_comments_likes` (`g_comment_like_id`, `g_comment_id`, `g_comment_cat_id`, `g_comment_like_user_id`, `g_comment_like_receive_user_id`, `g_comment_like_date`, `g_comment_like_status`, `g_comment_like_ip`) VALUES
(4, 2, 31, 7, 0, 1385412515, 1, '121.219.80.96'),
(8, 3, 31, 1, 0, 1388994265, 1, '58.65.172.229'),
(12, 11, 31, 1, 0, 1389852282, 1, '200.200.200.1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general_review`
--

CREATE TABLE `tbl_general_review` (
  `g_review_id` int(11) NOT NULL,
  `g_review_suggestion` varchar(500) NOT NULL,
  `g_review_category` varchar(500) NOT NULL,
  `g_review_title` varchar(500) NOT NULL,
  `g_review_detail` text NOT NULL,
  `g_review_rating` float NOT NULL,
  `g_review_user_id` int(11) NOT NULL,
  `g_review_ip` varchar(50) NOT NULL,
  `greview_image` varchar(1000) NOT NULL,
  `g_review_post_date` int(11) NOT NULL,
  `g_status` int(11) NOT NULL,
  `g_review_allocated` enum('No','Yes') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_general_setting`
--

CREATE TABLE `tbl_general_setting` (
  `setting_id` int(11) NOT NULL,
  `facebook_right_script` text NOT NULL,
  `facebook_bottom_script` text NOT NULL,
  `desktop_version_logo` varchar(255) NOT NULL,
  `mobile_version_logo` varchar(255) NOT NULL,
  `rate_review` text NOT NULL,
  `discuss` text NOT NULL,
  `profile` text NOT NULL,
  `rhyming_larics` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_general_setting`
--

INSERT INTO `tbl_general_setting` (`setting_id`, `facebook_right_script`, `facebook_bottom_script`, `desktop_version_logo`, `mobile_version_logo`, `rate_review`, `discuss`, `profile`, `rhyming_larics`) VALUES
(1, '', '', '216180479_logo.png', '2084083476_logo.png', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_latest_songs`
--

CREATE TABLE `tbl_latest_songs` (
  `id` int(11) NOT NULL,
  `song_title` varchar(200) NOT NULL,
  `picture` varchar(200) NOT NULL,
  `rate_song` int(11) NOT NULL,
  `song_seo` text NOT NULL,
  `updated_by_itunes` datetime NOT NULL,
  `song_status` int(11) NOT NULL DEFAULT 1,
  `latest` int(11) NOT NULL DEFAULT 1,
  `timeupdated` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_latest_songs`
--

INSERT INTO `tbl_latest_songs` (`id`, `song_title`, `picture`, `rate_song`, `song_seo`, `updated_by_itunes`, `song_status`, `latest`, `timeupdated`) VALUES
(1506625635, 'Beans and Burgers Podcast', 'https://is2-ssl.mzstatic.com/image/thumb/Podcasts115/v4/d1/41/9a/d1419a5a-c579-6e20-1c54-a5e9c4096dd2/mza_8617375892967463369.jpg/370x370bb.jpg', 0, 'beans-and-burgers-podcast', '2021-12-04 05:11:12', 1, 1, '2021-12-04 05:11:12'),
(1547759418, 'First Blush', 'https://is5-ssl.mzstatic.com/image/thumb/Video114/v4/c6/11/0c/c6110c7d-83e8-950a-e313-62d245a5c5ec/source/370x370bb.jpg', 0, 'first-blush', '2021-12-04 05:24:35', 1, 1, '2021-12-04 05:24:35'),
(1552536771, 'Sensato', 'https://is4-ssl.mzstatic.com/image/thumb/Music114/v4/d2/12/c9/d212c9c5-db74-c9e4-83a2-a8beb9d45c80/source/370x370bb.jpg', 0, 'sensato', '2021-12-04 05:19:16', 1, 1, '2021-12-04 05:19:16'),
(1553813697, 'Stay At Home Mom', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/58/bf/1c/58bf1c98-87dc-46c9-fdd4-1b54c523ad47/source/370x370bb.jpg', 0, 'stay-at-home-mom', '2021-12-04 05:25:06', 1, 1, '2021-12-04 05:25:06'),
(1556948950, 'Fever (feat. Rachel Kate)', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/7d/4b/2f/7d4b2f3d-afe6-9b9a-d2d8-959cb0effc08/source/370x370bb.jpg', 0, 'fever-feat-rachel-kate-', '2021-12-04 05:24:42', 1, 1, '2021-12-04 05:24:42'),
(1557785055, 'Sensato', 'https://is5-ssl.mzstatic.com/image/thumb/Music114/v4/9a/7a/e0/9a7ae054-42d4-96d6-c98c-cf4a2c6074a3/source/370x370bb.jpg', 0, 'sensato', '2021-12-04 05:19:38', 1, 1, '2021-12-04 05:19:38'),
(1559707287, '|World\\&#39;s 1st Podcast on Export Import |Exim Show|', 'https://is3-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4d/75/e6/4d75e668-ef42-aa86-1da8-a8b9233edf13/mza_15954743843324871656.jpg/370x370bb.jpg', 0, '-world-s-1st-podcast-on-export-import-exim-show-', '2021-12-04 05:33:19', 1, 1, '2021-12-04 05:33:19'),
(1564102921, 'BBQ Burger Blues', 'https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/5e/95/1c/5e951c93-f51e-bebb-c401-eeba26f08247/source/370x370bb.jpg', 0, 'bbq-burger-blues', '2021-12-04 05:10:55', 1, 1, '2021-12-04 05:10:55'),
(1566257114, 'Donnie Mcclurkin', 'https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/e3/d2/a9/e3d2a967-5907-a35b-a892-fab737f03305/source/370x370bb.jpg', 0, 'donnie-mcclurkin', '2021-12-04 07:01:32', 1, 1, '2021-12-04 07:01:32'),
(1573661105, 'Sensato', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/f9/fb/5d/f9fb5db4-5cc9-eb2c-3e88-6f35029664a1/source/370x370bb.jpg', 0, 'sensato', '2021-12-04 05:19:46', 1, 1, '2021-12-04 05:19:46'),
(1574206886, '1000 (feat. DJ Nik One, Ð?Ð¸Ñ?Ð° Ð?Ñ?Ñ?Ð¿Ð¸Ð½ & Ð?Ð?Ð?Ð?Ð)', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/df/66/ce/df66ce9e-1dcb-98cc-289d-a4df2f6f722d/source/370x370bb.jpg', 0, '1000-feat-dj-nik-one-', '2021-12-04 05:15:26', 1, 1, '2021-12-04 05:15:26'),
(1574219547, 'Sensato', 'https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/d2/86/c4/d286c4d8-9986-9167-7369-89a682bff650/source/370x370bb.jpg', 0, 'sensato', '2021-12-04 05:19:10', 1, 1, '2021-12-04 05:19:10'),
(1574735985, 'Sunar Yesu Remix (feat. Solomon Lange)', 'https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/8e/ed/16/8eed166d-827b-3f49-f2b5-529d88f8c280/source/370x370bb.jpg', 0, 'sunar-yesu-remix-feat-solomon-lange-', '2021-12-04 06:51:07', 1, 1, '2021-12-04 06:51:07'),
(1574964802, 'Only Thanks to God (feat. solomon lange)', 'https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/60/ac/f4/60acf416-f9f4-c8cf-6f1f-8d795c1244a0/source/370x370bb.jpg', 0, 'only-thanks-to-god-feat-solomon-lange-', '2021-12-04 06:51:50', 1, 1, '2021-12-04 06:51:50'),
(1590942524, 'Sensato (feat. Hampa & Rancheroâ??s Crew)', 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/36/bd/52/36bd521d-b810-c959-ff6f-3ec01abdea42/source/370x370bb.jpg', 0, 'sensato-feat-hampa-ranchero-s-crew-', '2021-12-04 05:19:32', 1, 1, '2021-12-04 05:19:32'),
(1592420959, 'Donnie Mcclurkin', 'https://is3-ssl.mzstatic.com/image/thumb/Music126/v4/b8/37/20/b8372082-cac0-cb26-8401-035d1db83aa5/source/370x370bb.jpg', 0, 'donnie-mcclurkin', '2021-12-04 07:00:39', 1, 1, '2021-12-04 07:00:39'),
(1592752372, 'Bolero Falaz (feat. Diamante ElÃ©ctrico, Juan Galeano, Systema Solar, The Mills, Andrea Echeverri, Conector, Pipe Bravo & Alvarezmejia)', 'https://is3-ssl.mzstatic.com/image/thumb/Music116/v4/d8/a7/56/d8a756c0-7553-0395-7042-b7807cd82322/source/370x370bb.jpg', 0, 'bolero-falaz-feat-diamante-el-ctrico-juan-galeano-systema-solar-the-mills-andrea-echeverri-conector-pipe-bravo-alvarezmejia-', '2021-12-04 06:46:57', 1, 1, '2021-12-04 06:46:57'),
(1596414221, 'Sensato', 'https://is1-ssl.mzstatic.com/image/thumb/Music126/v4/81/ba/9c/81ba9cf6-40c9-81e5-a2ca-7f62f2c6c7a9/source/370x370bb.jpg', 0, 'sensato', '2021-12-04 05:19:12', 1, 1, '2021-12-04 05:19:12'),
(1596494449, 'MÃ?MMÃ? HÃ? SCÃ?PÃ?TÃ? UNÃ? E-GIRL, Pt. III', 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/ef/fe/8d/effe8d37-c9b5-7fcc-d0d9-821afbc90aa3/source/370x370bb.jpg', 0, 'm-mm-h-sc-p-t-un-e-girl-pt-iii', '2021-12-04 05:15:30', 1, 1, '2021-12-04 05:15:30'),
(1597742834, 'Champions Roar (feat. Solomon Lange)', 'https://is5-ssl.mzstatic.com/image/thumb/Music116/v4/33/ce/3b/33ce3bc0-7d25-b487-2451-408ea8d4c79b/source/370x370bb.jpg', 0, 'champions-roar-feat-solomon-lange-', '2021-12-04 06:52:18', 1, 1, '2021-12-04 06:52:18'),
(1607193207, 'Who\\&#39;s On the Lord\\&#39;s Side (feat. Dorinda Clark-Cole)', 'https://is3-ssl.mzstatic.com/image/thumb/Music126/v4/47/38/e4/4738e42b-6672-4865-f7f7-5fc19b1a6f41/source/370x370bb.jpg', 0, 'who-s-on-the-lord-s-side-feat-dorinda-clark-cole-', '2022-03-10 11:31:51', 1, 1, '2022-03-10 11:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_likes`
--

CREATE TABLE `tbl_likes` (
  `id` int(11) NOT NULL,
  `like_id` int(11) NOT NULL,
  `like_type` varchar(25) NOT NULL,
  `like_from_user_id` int(11) NOT NULL DEFAULT 1,
  `date` date NOT NULL,
  `display_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `like_receive_user` int(11) NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 1 COMMENT '0=read,1=unread',
  `description` text NOT NULL COMMENT 'description is visibe if like_type = delete_review_song',
  `del_notification` int(11) NOT NULL COMMENT '1=remove notificaiton',
  `notification_click` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_likes`
--

INSERT INTO `tbl_likes` (`id`, `like_id`, `like_type`, `like_from_user_id`, `date`, `display_date`, `like_receive_user`, `read_status`, `description`, `del_notification`, `notification_click`) VALUES
(24, 326, 'review_song', 94, '2022-01-23', '2022-01-23 21:21:29', 90, 1, '', 0, 1),
(25, 90, 'profile', 94, '2022-01-23', '2022-01-23 21:54:51', 90, 1, '', 0, 1),
(26, 331, 'review_song', 90, '2022-01-23', '2022-01-23 22:07:19', 94, 1, '', 0, 1),
(27, 332, 'review_song', 95, '2022-01-29', '2022-01-29 06:34:42', 82, 0, '', 0, 0),
(30, 26365705, 'artist', 82, '2022-02-04', '2022-02-04 11:12:10', 0, 1, '', 0, 1),
(31, 1590707965, 'artist', 82, '2022-02-04', '2022-02-04 11:12:23', 0, 1, '', 0, 1),
(32, 331, 'review_song', 82, '2022-02-07', '2022-02-07 08:06:24', 94, 1, '', 0, 1),
(33, 94, 'profile', 82, '2022-02-07', '2022-02-07 08:06:59', 94, 1, '', 0, 1),
(35, 92, 'playlist', 95, '2022-02-10', '2022-02-10 05:59:16', 82, 0, '', 0, 0),
(36, 90, 'playlist', 95, '2022-02-10', '2022-02-10 07:50:37', 82, 0, '', 0, 0),
(37, 82, 'profile', 95, '2022-02-14', '2022-02-14 05:00:58', 82, 0, '', 0, 0),
(45, 18200208, 'artist', 82, '2022-02-18', '2022-02-18 05:52:38', 0, 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login_logs`
--

CREATE TABLE `tbl_login_logs` (
  `login_id` int(11) NOT NULL,
  `login_user_id` int(11) NOT NULL,
  `login_date` int(11) NOT NULL,
  `login_ip` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_login_logs`
--

INSERT INTO `tbl_login_logs` (`login_id`, `login_user_id`, `login_date`, `login_ip`) VALUES
(1, 1, 1389336896, '200.200.200.1'),
(2, 7, 1389336915, '200.200.200.1'),
(3, 1, 1389337051, '200.200.200.1'),
(4202, 1, 1632750277, '127.0.0.1'),
(4203, 1, 1632754308, '127.0.0.1'),
(4204, 1, 1632754365, '127.0.0.1'),
(4205, 1, 1632755729, '127.0.0.1'),
(4206, 1, 1632755999, '127.0.0.1'),
(4207, 1, 1632756014, '127.0.0.1'),
(4208, 1, 1632757189, '127.0.0.1'),
(4209, 1, 1632757200, '127.0.0.1'),
(4210, 1, 1632760870, '127.0.0.1'),
(4211, 1, 1632801713, '127.0.0.1'),
(4212, 1, 1632824078, '127.0.0.1'),
(4213, 1, 1632824994, '127.0.0.1'),
(4214, 1, 1632839739, '127.0.0.1'),
(4215, 1, 1632841291, '127.0.0.1'),
(4216, 1, 1632844325, '127.0.0.1'),
(4217, 1, 1632888321, '127.0.0.1'),
(4218, 1, 1632909933, '127.0.0.1'),
(4219, 1, 1632925501, '127.0.0.1'),
(4220, 1, 1632927734, '127.0.0.1'),
(4221, 1, 1632996762, '127.0.0.1'),
(4222, 1, 1633011807, '127.0.0.1'),
(4223, 1, 1633062039, '127.0.0.1'),
(4224, 1, 1633071475, '127.0.0.1'),
(4225, 1, 1633074959, '127.0.0.1'),
(4226, 1, 1633083717, '127.0.0.1'),
(4227, 1, 1633098405, '127.0.0.1'),
(4228, 1, 1633324265, '127.0.0.1'),
(4229, 1, 1633342249, '127.0.0.1'),
(4230, 1, 1633366438, '127.0.0.1'),
(4231, 1, 1633408575, '127.0.0.1'),
(4232, 1, 1633429387, '127.0.0.1'),
(4233, 1, 1633443837, '127.0.0.1'),
(4234, 1, 1633450052, '127.0.0.1'),
(4235, 1, 1633495952, '127.0.0.1'),
(4236, 1, 1633516013, '127.0.0.1'),
(4237, 1, 1633578562, '127.0.0.1'),
(4238, 1, 1633605276, '127.0.0.1'),
(4239, 1, 1633667741, '127.0.0.1'),
(4240, 1, 1633755417, '127.0.0.1'),
(4241, 1, 1633775414, '127.0.0.1'),
(4242, 1, 1633947891, '127.0.0.1'),
(4243, 1, 1634013132, '127.0.0.1'),
(4244, 1, 1634014345, '127.0.0.1'),
(4245, 1, 1634033068, '127.0.0.1'),
(4246, 1, 1634049418, '127.0.0.1'),
(4247, 1, 1634099242, '127.0.0.1'),
(4248, 1, 1634121261, '127.0.0.1'),
(4249, 1, 1634137064, '127.0.0.1'),
(4250, 1, 1634184819, '127.0.0.1'),
(4251, 1, 1634206652, '127.0.0.1'),
(4252, 1, 1634217715, '127.0.0.1'),
(4253, 1, 1634218774, '127.0.0.1'),
(4254, 1, 1634272971, '127.0.0.1'),
(4255, 1, 1634279699, '127.0.0.1'),
(4256, 1, 1634294237, '127.0.0.1'),
(4257, 1, 1634303151, '127.0.0.1'),
(4258, 1, 1634358755, '127.0.0.1'),
(4259, 1, 1634528911, '127.0.0.1'),
(4260, 1, 1634542915, '127.0.0.1'),
(4261, 1, 1634554793, '127.0.0.1'),
(4262, 1, 1634713525, '127.0.0.1'),
(4263, 1, 1634744441, '127.0.0.1'),
(4264, 1, 1634791903, '127.0.0.1'),
(4265, 1, 1635920632, '127.0.0.1'),
(4266, 1, 1636436420, '127.0.0.1'),
(4267, 1, 1636437767, '127.0.0.1'),
(4268, 1, 1636521337, '127.0.0.1'),
(4269, 1, 1636536090, '124.188.85.216'),
(4270, 1, 1636604860, '147.135.11.113'),
(4271, 1, 1636851312, '124.188.85.216'),
(4272, 1, 1637146669, '111.119.178.189'),
(4273, 1, 1637269637, '101.188.0.207'),
(4274, 1, 1638167755, '127.0.0.1'),
(4275, 1, 1638666753, '124.188.88.112'),
(4276, 1, 1638668436, '124.188.88.112'),
(4277, 1, 1638672248, '124.188.88.112'),
(4278, 24, 1638672318, '124.188.88.112'),
(4279, 1, 1639372268, '103.255.7.29'),
(4280, 1, 1639379904, '103.255.7.29'),
(4281, 1, 1639384822, '103.255.7.29'),
(4282, 14, 1639460494, '111.119.188.25'),
(4283, 1, 1639475913, '111.119.178.160'),
(4284, 1, 1639578452, '69.28.95.59'),
(4285, 1, 1639632045, '103.255.7.23'),
(4286, 1, 1640687302, '101.188.95.108'),
(4287, 1, 1640762074, '103.255.7.55'),
(4288, 1, 1640763745, '203.135.44.98'),
(4289, 1, 1640775033, '182.185.91.234'),
(4290, 1, 1640782378, '103.255.7.55'),
(4291, 1, 1640789365, '103.255.7.55'),
(4292, 1, 1640841345, '111.119.177.60'),
(4293, 1, 1640930016, '111.119.188.9'),
(4294, 1, 1640945877, '182.185.9.200'),
(4295, 1, 1641131890, '182.185.102.180'),
(4296, 1, 1641461319, '102.129.224.2'),
(4297, 1, 1641790871, '103.255.6.252'),
(4298, 1, 1642971830, '101.188.77.54'),
(4299, 1, 1642972481, '101.188.77.54'),
(4300, 1, 1642975183, '101.188.77.54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_moderator_logs`
--

CREATE TABLE `tbl_moderator_logs` (
  `log_id` int(11) NOT NULL,
  `moderator_id` int(11) NOT NULL,
  `activity` varchar(100) NOT NULL,
  `date_added` int(11) NOT NULL,
  `activity_table` varchar(150) NOT NULL,
  `delet_record_detail` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_moderator_rights`
--

CREATE TABLE `tbl_moderator_rights` (
  `id` int(11) NOT NULL,
  `moderator_id` int(11) NOT NULL,
  `slider_module` varchar(5) NOT NULL DEFAULT 'No',
  `artist_module` varchar(5) NOT NULL DEFAULT 'No',
  `album_module` varchar(5) NOT NULL DEFAULT 'No',
  `song_module` varchar(5) NOT NULL DEFAULT 'No',
  `users_module` varchar(5) NOT NULL DEFAULT 'No',
  `faq_module` varchar(5) NOT NULL DEFAULT 'No',
  `categories_module` varchar(5) NOT NULL DEFAULT 'No',
  `advertisement_module` varchar(5) NOT NULL DEFAULT 'No',
  `social_link_module` varchar(5) NOT NULL DEFAULT 'No',
  `content_module` varchar(5) NOT NULL DEFAULT 'No',
  `email_template_module` varchar(5) NOT NULL DEFAULT 'No',
  `country_module` varchar(5) NOT NULL DEFAULT 'No',
  `reviews_module` varchar(5) NOT NULL DEFAULT 'No',
  `slider_module_add` varchar(5) NOT NULL DEFAULT 'No',
  `slider_module_delete` varchar(5) NOT NULL DEFAULT 'No',
  `users_module_add` varchar(5) NOT NULL DEFAULT 'No',
  `users_module_delete` varchar(5) NOT NULL DEFAULT 'No',
  `faq_module_add` varchar(5) NOT NULL DEFAULT 'No',
  `faq_module_delete` varchar(5) NOT NULL DEFAULT 'No',
  `categories_module_add` varchar(5) NOT NULL DEFAULT 'No',
  `categories_module_delete` varchar(5) NOT NULL DEFAULT 'No',
  `content_module_edit` varchar(5) NOT NULL DEFAULT 'No',
  `email_template_module_edit` varchar(5) NOT NULL DEFAULT 'No',
  `country_module_add` varchar(5) NOT NULL DEFAULT 'No',
  `country_module_delete` varchar(5) NOT NULL DEFAULT 'No',
  `reviews_module_add` varchar(5) NOT NULL DEFAULT 'No',
  `reviews_module_delete` varchar(5) NOT NULL DEFAULT 'No',
  `advertisement_module_add` varchar(5) NOT NULL DEFAULT 'No',
  `advertisement_module_delete` varchar(5) NOT NULL DEFAULT 'No',
  `video_module` varchar(5) NOT NULL DEFAULT 'No',
  `video_module_add` varchar(5) NOT NULL DEFAULT 'No',
  `video_module_delete` varchar(5) NOT NULL DEFAULT 'No',
  `artist_module_add` varchar(5) NOT NULL DEFAULT 'No',
  `artist_module_delete` varchar(5) NOT NULL DEFAULT 'No',
  `album_module_add` varchar(5) NOT NULL DEFAULT 'No',
  `album_module_delete` varchar(5) NOT NULL DEFAULT 'No',
  `song_module_add` varchar(5) NOT NULL DEFAULT 'No',
  `song_module_delete` varchar(5) NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_moderator_rights`
--

INSERT INTO `tbl_moderator_rights` (`id`, `moderator_id`, `slider_module`, `artist_module`, `album_module`, `song_module`, `users_module`, `faq_module`, `categories_module`, `advertisement_module`, `social_link_module`, `content_module`, `email_template_module`, `country_module`, `reviews_module`, `slider_module_add`, `slider_module_delete`, `users_module_add`, `users_module_delete`, `faq_module_add`, `faq_module_delete`, `categories_module_add`, `categories_module_delete`, `content_module_edit`, `email_template_module_edit`, `country_module_add`, `country_module_delete`, `reviews_module_add`, `reviews_module_delete`, `advertisement_module_add`, `advertisement_module_delete`, `video_module`, `video_module_add`, `video_module_delete`, `artist_module_add`, `artist_module_delete`, `album_module_add`, `album_module_delete`, `song_module_add`, `song_module_delete`) VALUES
(1, 20, 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No'),
(3, 19, '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No'),
(7, 14, '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No'),
(8, 18, '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No'),
(9, 17, '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No'),
(10, 13, '', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notifications`
--

CREATE TABLE `tbl_notifications` (
  `notification_id` int(11) NOT NULL,
  `notification_sent_user_id` int(11) NOT NULL,
  `notification_receive_user_id` int(11) NOT NULL,
  `common_notification_id` int(11) NOT NULL,
  `type` enum('Post Answer','Comment Like','Post Comment','General Comment Like','Profile Like','Answer Like','Review Like','Moderator Delete Review','Moderator Edit Review','Moderator Allocate Review','Moderator Edit Discussion','Moderator Edit Comment','Moderator Delete Discussion','Moderator Delete Comment','Moderator Edit Question','Moderator Edit Answer','Moderator Delete Question','Moderator Delete Answer','Review Topic Like','Post Review','Post Discussion','Post Question') NOT NULL COMMENT 'Post Comment ; Review Like; Comment Like ; General Comment Like',
  `read_status` enum('unread','read') NOT NULL COMMENT 'read;unread',
  `status` int(11) NOT NULL,
  `date_added` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_notifications`
--

INSERT INTO `tbl_notifications` (`notification_id`, `notification_sent_user_id`, `notification_receive_user_id`, `common_notification_id`, `type`, `read_status`, `status`, `date_added`) VALUES
(1, 1, 31, 0, 'Moderator Edit Review', 'unread', 1, 1436168620),
(2, 1, 54, 0, 'Moderator Edit Review', 'unread', 1, 1482554859),
(3, 1, 3, 0, 'Moderator Edit Review', 'unread', 1, 1633417564),
(4, 1, 1, 0, 'Moderator Edit Review', 'unread', 1, 1633447804),
(5, 1, 1, 0, 'Moderator Edit Discussion', 'unread', 1, 1634110538),
(6, 1, 1, 0, 'Moderator Edit Discussion', 'unread', 1, 1634110549),
(7, 1, 1, 0, 'Moderator Edit Review', 'unread', 1, 1634185740),
(8, 1, 3, 0, 'Moderator Edit Review', 'unread', 1, 1634792916),
(9, 1, 3, 0, 'Moderator Edit Review', 'unread', 1, 1634792941),
(10, 14, 81, 0, 'Moderator Edit Review', 'unread', 1, 1639460527),
(11, 1, 81, 0, 'Moderator Edit Review', 'unread', 1, 1641791173),
(12, 1, 81, 0, 'Moderator Edit Review', 'unread', 1, 1641791205),
(13, 1, 81, 0, 'Moderator Edit Review', 'unread', 1, 1641791230);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `page_id` int(10) UNSIGNED NOT NULL,
  `page_name` varchar(255) NOT NULL DEFAULT '',
  `page_seo_name` varchar(255) NOT NULL,
  `page_content` longtext DEFAULT NULL,
  `page_headertitle` varchar(255) NOT NULL,
  `page_status` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`page_id`, `page_name`, `page_seo_name`, `page_content`, `page_headertitle`, `page_status`) VALUES
(1, 'About Us', 'about-us', '<p>\n	&nbsp;</p>\n<p helvetica=\"\" style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(77, 77, 77); font-family: \">\n	<span style=\"font-size:12px;\">Tailem.com&nbsp;is an&nbsp;opinion focused site on the music that matters to you. We provide a platform where users can rate, review and share their thoughts on all of their favorite songs.</span></p>\n<p helvetica=\"\" style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(77, 77, 77); font-family: \">\n	<span style=\"font-size:12px;\">On this site you will find real life experiences and opinions voiced&nbsp;by anyone who enjoys and appreciates music. We provide our users with the tools to easily find and discover songs that you will grow to love, read what others have said about them and share their own experiences. We want the world to know how much value you place on a song and inspire artists to make even greater music&nbsp;for the world to enjoy. &nbsp;</span></p>\n<p helvetica=\"\" style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(77, 77, 77); font-family: \">\n	<span style=\"font-size:12px;\">We believe your opinions are incredibly important and we value each and every contribution made by our users. In the end, we all wish to hear the best songs that inspire us&nbsp;and move us in ways that only music can.</span></p>\n<p helvetica=\"\" style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(77, 77, 77); font-family: \">\n	We are constantly updating our records to give you a complete listing of every artist, every album and every song. If an artist, album or song that you wish to discuss is not available, please let us know and we will add it as soon as possible.&nbsp;</p>\n<p>\n	&nbsp;</p>', 'About Us', 1),
(2, 'Privacy Policy', 'privacy-policy', '<p>\n	&nbsp;</p>\n<p>\n	<em>Last Modified: 1 January 2017</em></p>\n<p>\n	&nbsp;</p>\n<p>\n	1.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Acceptance</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	Your privacy is important to us. This is why we have created this Privacy Policy (the &ldquo;Policy&rdquo;). It describes the types of information we may collect from you, or that you may provide, when you visit Tailem.com (our &quot;Site&quot;), as well as how we collect, maintain, use, protect and disclose your information. This Policy covers the information we collect on or through our Site, or when you contact us for any reason. It does not apply to information collected by any third party, including through any external website that may link to or be accessible from the Site. Third parties, such as our advertisers, have their own privacy policies different from ours. Please check directly with each such third party to avoid unfair surprises and misunderstandings.</p>\n<p>\n	&nbsp;</p>\n<p>\n	Your visits to this Site constitute your acceptance of this Privacy Policy and our Terms of Use <a href=\"https://www.tailem.com/cms/terms-of-use\">[link]</a>. If you do not agree with this Privacy Policy or the Terms of Use <a href=\"https://www.tailem.com/cms/terms-of-use\">[link]</a>, you must exit our Site. This Policy may change from time to time, and the date of last update is indicated at the top of this page. Your continued use of this Site after we revise this Policy is deemed to be acceptance of the revisions, so please check this page from time to time for updates.</p>\n<p>\n	&nbsp;</p>\n<p>\n	2.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>What information we collect</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	We may collect several types of information from and about users of our Site, including the following:</p>\n<p>\n	a. &nbsp; &nbsp; Username, email, and password.</p>\n<p>\n	b. &nbsp; &nbsp; Analytical Site usage information collected via Google Analytics. This data may include the Site pages you view and other similar information about your behaviour on our Site.</p>\n<p>\n	We collect this information:</p>\n<p>\n	c. &nbsp; &nbsp; Directly from you when you provide it to us (e.g. when you contact us for any reason).</p>\n<p>\n	d. &nbsp; &nbsp; Automatically as you navigate through the site. Information collected automatically may include usage details, IP addresses and information collected through cookies and other tracking technologies.</p>\n<p>\n	&nbsp;</p>\n<p>\n	3.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>How we use your information</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	We use information that we collect about you or that you provide to us, including any personal information:</p>\n<p>\n	a. &nbsp; &nbsp; To provide the services you requested.</p>\n<p>\n	b. &nbsp; &nbsp; To notify you about changes to our Site or any services we offer or provide though it.</p>\n<p>\n	c. &nbsp; &nbsp; To allow you to participate in interactive features on our Site.</p>\n<p>\n	d. &nbsp; &nbsp; To send our newsletter but you may opt out of it.</p>\n<p>\n	e. &nbsp; &nbsp; To carry out our obligations and enforce our rights arising from any contracts entered into between you and us, including for billing and collection.</p>\n<p>\n	f. &nbsp; &nbsp; &nbsp;In any other way we may describe when you provide the information.</p>\n<p>\n	&nbsp;</p>\n<p>\n	4.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Disclosure of your information</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	We may disclose personal information that we collect or you provide as described in this Policy:</p>\n<p>\n	a. &nbsp; &nbsp; To fulfil the purpose for which you provide it.</p>\n<p>\n	b. &nbsp; &nbsp; To contractors, service providers and other third parties we use to support our business.</p>\n<p>\n	c. &nbsp; &nbsp; To a buyer or other successor in the event of a merger, divestiture, restructuring, reorganization, dissolution or other sale or transfer of some or all of the Site&#39;s assets, whether as a going concern or as part of bankruptcy, liquidation or similar proceeding, in which personal information about our Site users is among the assets transferred.</p>\n<p>\n	d. &nbsp; &nbsp; We may disclose aggregated information about our users and information that does not identify any individual without restriction.</p>\n<p>\n	e. &nbsp; &nbsp; For any other purpose disclosed by us when you provide the information.</p>\n<p>\n	We may also disclose your personal information:</p>\n<p>\n	f. &nbsp; &nbsp; To comply with any court order, law or legal process, including to respond to any government or regulatory request.</p>\n<p>\n	g. &nbsp; &nbsp; To enforce or apply our Terms of Use <a href=\"https://www.tailem.com/cms/terms-of-use\">[link]</a>.</p>\n<p>\n	h. &nbsp; &nbsp; If we believe disclosure is necessary or appropriate to protect the rights, property, or safety of the Site, our customers or others.</p>\n<p>\n	&nbsp;</p>\n<p>\n	5.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Cookies</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	Cookies are data that a website transfers to an individual&#39;s hard drive for record-keeping purposes. The cookie will help our Site, or another website, to recognize your device the next time you visit. For example, cookies can help us to remember your username and preferences, analyse how well our website is performing, or even allow us to recommend content we believe will be most relevant to you.</p>\n<p>\n	&nbsp;</p>\n<p>\n	We may use cookies for the following reasons and purposes:</p>\n<p>\n	&nbsp;</p>\n<p>\n	a. &nbsp; &nbsp;&nbsp;<em>To provide the services you requested</em>. Some cookies are essential so you can navigate through the website and use its features. Without these cookies, we would not be able to provide the services you&rsquo;ve requested.</p>\n<p>\n	&nbsp;</p>\n<p>\n	b. &nbsp; &nbsp;&nbsp;<em>To improve your browsing experience</em>. These cookies allow the website to remember choices you make, such as your language or region and they provide improved features. These cookies will help remembering your preferences and settings, remembering if you&#39;ve filled in certain forms, so you&#39;re not asked to do it again, remembering if you&#39;ve been to the site before, etc. We might also use these cookies to highlight site services that we think will be of interest to you based on your usage of the website.</p>\n<p>\n	&nbsp;</p>\n<p>\n	c. &nbsp; &nbsp;&nbsp;<em>Analytics</em>. To improve your experience on our Site, we like to keep track of what pages and links are popular and which ones don&#39;t get used so much to help us keep our sites relevant and up to date. It&#39;s also very useful to be able to identify trends of how people navigate through our Site and if they get error messages from web pages. These cookies don&#39;t collect information that identifies you. Analytics cookies only record activity on the Site, and they are only used to improve how the Site works.</p>\n<p>\n	&nbsp;</p>\n<p>\n	Most browsers allow you to turn off cookies. To do this, look at the &ldquo;help&rdquo; menu on your browser. Switching off cookies may restrict your use of the website and/or delay or affect the way in which it operates.</p>\n<p>\n	&nbsp;</p>\n<p>\n	6.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Children&rsquo;s privacy</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	We are committed to respecting the sensitive nature of children&#39;s privacy online. Children under 13 years of age are not allowed to visit our site. We do not knowingly collect personally identifiable information from anyone under the age of 13 and our service is not directed&nbsp;to&nbsp;children. If we learn or have reason to suspect that a Site user is under the age of 13, we will delete any personal information in that user&#39;s account or use that information only to respond directly to that child (or a parent or legal guardian) to inform him or her that he or she cannot use our Site.</p>\n<p>\n	&nbsp;</p>\n<p>\n	7.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Data security</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	Personal information you provide to us is stored on a password protected server accessible only by administrator. We use SSL and adhere to generally accepted industry standards to protect the personal information submitted to us, both during transmission and once we receive it. However, we cannot guarantee the security of your personal information transmitted to our Site because any transmission of information over the Internet has its inherent risks. Any transmission of personal information is at your own risk. We are not responsible for circumvention of any privacy settings or security measures contained on the Site. You are responsible for keeping your login credentials, if any, confidential.</p>\n<p>\n	&nbsp;</p>\n<p>\n	8.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Accessing and correcting your personal information</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	Please send us an e-mail to info@tailem.com to request access to, correct or delete any personal information that you have provided to us or to ask questions about this Privacy Policy. We reserve the right to refuse a request if we believe it would violate any law or cause the information to be incorrect.</p>\n<p>\n	&nbsp;</p>', 'Privacy Policy', 1),
(3, 'Terms of Use', 'terms-of-use', '<p>\n	&nbsp;</p>\n<p>\n	<em>Last Modified: 1 January 2017</em></p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong>1.&nbsp;&nbsp;&nbsp;&nbsp; <u>Your Acceptance</u></strong></p>\n<p style=\"margin-left:18.0pt;\">\n	&nbsp;</p>\n<p>\n	These Terms of Use (the &ldquo;Terms&rdquo;) constitute a legally binding agreement that governs your visits to Tailem.com (the &ldquo;Site,&rdquo; &ldquo;We,&rdquo; &ldquo;Us,&rdquo; or &ldquo;Our&rdquo;). By visiting the Site, you indicate your acceptance of these Terms, as well as the Privacy Policy available at the Site. If you disagree with any provision of the aforementioned documents, you may not visit the Site.</p>\n<p>\n	&nbsp;</p>\n<p>\n	2.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Disclaimers</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	Our site is a neutral platform allows users to discuss, rate and review music.&nbsp; We are not a party to any reviews, transactions and interactions of the site users. Therefore, we disclaim all liability arising out of or related to user content, transactions, conduct and arrangements. We are not liable for any fake reviews, intellectual property rights infringement or defamation committed using our site. Our online venue is provided to be used at your own risk, with no warranties of any kind.</p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong>3.&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong><u>Affiliate Disclosure</u></strong></p>\n<p>\n	&nbsp;</p>\n<p>\n	The Site uses affiliate programs for monetization. So, when you click on links to some external websites, a commission may be credited to the Site.&nbsp; External websites which you are transferred to are not controlled by us and we are not responsible for the quality or their products, services or the information contained on those websites. The provision of a link on our Site does not constitute an endorsement or approval of any external website or any information or products or services on that website. The Site makes no representation or warranty regarding the content of these websites, and no responsibility is taken for the consequences of viewing and relying on that content.</p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong>4.&nbsp;&nbsp;&nbsp;&nbsp; </strong><strong><u>Intellectual Property</u></strong></p>\n<p>\n	&nbsp;</p>\n<p>\n	a.&nbsp;&nbsp;&nbsp;&nbsp; <em>IP Ownership</em>. We own all intellectual property rights to the Site. Site features, look and feel, design, registered and unregistered trademarks are protected by Australian and international copyright, trademark, trade secret, and other intellectual property or proprietary rights laws.</p>\n<p>\n	&nbsp;</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; <em>User Content</em>. All user reviews and other submitted content remain responsibility of the originator of the content. By submitting any content to the Site you hereby grant us a nonexclusive worldwide license to reproduce, use, display, perform, distribute, and create derivative works based upon your content for the purposes of developing and promoting the Site in any reasonable manner we deem appropriate.</p>\n<p>\n	&nbsp;</p>\n<p>\n	c.&nbsp;&nbsp;&nbsp;&nbsp; <em>Takedown Requests</em>. We respect the intellectual property rights of others and require our users to do the same. All claims of copyright infringement committed using our Site will be investigated if reported to our designated Copyright Agent via email: <a href=\"mailto:_____________@Tailem.com\">info@tailem.com</a>. If we believe that any posted material violates any applicable law, we will remove or disable access to any such material and/or terminate or suspend the offending user&rsquo;s account.</p>\n<p>\n	&nbsp;</p>\n<p>\n	d.&nbsp;&nbsp;&nbsp;&nbsp; <em>Indemnification</em>. You agree to defend, indemnify and hold harmless the Site, its affiliates and licensors and their respective officers, directors, employees, contractors, agents, and licensors from and against any claims, liabilities, damages, judgments, awards, losses, costs, expenses or fees (including reasonable attorneys&#39; fees) resulting from your violation of these Terms of Use or your use of the Site, including, without limitation, any content submitted by you.</p>\n<p>\n	&nbsp;</p>\n<p>\n	5.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Your Obligations</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	By accessing the Site, you represent, warrant and agree that:</p>\n<p>\n	a.&nbsp;&nbsp;&nbsp;&nbsp; You are solely responsible for the reviews and all other content you submit to or through the Site. Your reviews will not contain false, misleading or defamatory information.</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; All your reviews will comply with our guidelines.</p>\n<p>\n	c.&nbsp;&nbsp;&nbsp;&nbsp; We may terminate any user account with or without notice using our sole reasonable discretion.</p>\n<p>\n	d.&nbsp;&nbsp;&nbsp;&nbsp; You will treat all your login credentials confidential. Do not disclose them to any third party. You should use particular caution when accessing your account from a public or shared computer so that others are not able to view or record your password or other personal information.</p>\n<p>\n	e.&nbsp;&nbsp;&nbsp;&nbsp; You will treat all Site users and administrators respectfully, online and offline.</p>\n<p>\n	f.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; We may withdraw or change our Site in any way we deem appropriate without prior notice to you. We are not be liable if for any reason all or any part of the Site is unavailable at any time or for any period to registered users or visitors.</p>\n<p>\n	g.&nbsp;&nbsp;&nbsp;&nbsp; We have the right to disable any user identification provided by our Site and disable your whole account on our Site at any time for any reason or no reason without notice or explanation.</p>\n<p>\n	&nbsp;</p>\n<p>\n	6.&nbsp;&nbsp; <u><strong>Prohibited Conduct</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	You must not:</p>\n<p>\n	a.&nbsp;&nbsp;&nbsp;&nbsp; Use the Site for any illegal purpose, upload, post, link to, copy or republish copyrighted material without permission from the rights holder.</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; Post or transmit to other users any defamatory, abusive, obscene, profane, offensive, threatening, harassing, racially offensive, or objectionable content. We reserve the right to judge what constitutes &ldquo;objectionable&rdquo; content.</p>\n<p>\n	c.&nbsp;&nbsp;&nbsp;&nbsp; Take any action that imposes, or may impose, in our sole discretion, an unreasonable or disproportionately large load on our infrastructure.</p>\n<p>\n	d.&nbsp;&nbsp;&nbsp;&nbsp; Deep-link to any portion of this Site for any purpose without our express written permission.</p>\n<p>\n	e.&nbsp;&nbsp;&nbsp;&nbsp; Impersonate any other person or entity.</p>\n<p>\n	f.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Transmit, or procure the sending of, any advertising or promotional material and unsolicited mass communication without our prior written consent.</p>\n<p>\n	g.&nbsp;&nbsp;&nbsp;&nbsp; Access the Site to build a competing service.</p>\n<p>\n	h.&nbsp;&nbsp;&nbsp;&nbsp; Introduce any viruses or other harmful material, use any device, software or routine that interferes with the proper working of the Site.</p>\n<p>\n	i.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Attempt to gain unauthorized access to, interfere with, damage or disrupt any parts of the Site, the server on which the Site is stored, or any server, computer or database connected to the Site.</p>\n<p>\n	j.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Otherwise attempt to interfere with the proper working of the Site or anyone&rsquo;s use and enjoyment of it.</p>\n<p>\n	&nbsp;</p>\n<p>\n	7.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Monitoring and Enforcement; Termination</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	We have the right to take any action that we deem necessary or appropriate if we believe that a user violates the Terms of Use, infringes any intellectual property right or other right, threatens the personal safety of users of the Site and the public. We may:</p>\n<p>\n	&nbsp;</p>\n<p>\n	a.&nbsp;&nbsp;&nbsp;&nbsp; Fully cooperate with any law enforcement authorities or court order requesting or directing us to disclose the identity of anyone posting any materials on or through the Site.</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; Disclose your identity to any third party who claims that material posted by you violates their rights, including their intellectual property rights or their right to privacy.</p>\n<p>\n	c.&nbsp;&nbsp;&nbsp;&nbsp; Terminate or suspend your access to all or part of the Site for any or no reason, including without limitation, any violation of these Terms of Use.</p>\n<p>\n	d.&nbsp;&nbsp;&nbsp;&nbsp; Block violator&rsquo;s IP address and/or notify his or her Internet Site Provider</p>\n<p>\n	e.&nbsp;&nbsp;&nbsp;&nbsp; Take appropriate legal action.</p>\n<p>\n	&nbsp;</p>\n<p>\n	8.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Disclaimer of Warranty</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	A.&nbsp;&nbsp;&nbsp;&nbsp; Your use of the site and its content is at your own risk. We do not warrant that the site will meet your expectations or requirements. We hereby disclaim all warranties of any kind, either express or implied, statutory or otherwise, including but not limited to any warranties of sellerability, non-infringement and fitness for particular purpose.</p>\n<p>\n	&nbsp;</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; We do not guarantee that the information provided on the Site is complete, accurate or up-to-date. You are responsible for implementing sufficient procedures to satisfy your particular requirements for the safety of your personal information, anti-virus protection and accuracy of data input and output. We will not be liable for any loss or damage caused by a distributed denial-of-service attack, viruses or other technologically harmful material that may infect your computer equipment, computer programs, data or other proprietary material due to your use of the site or any services or items obtained through the site or to your downloading of any material posted on it, or on any service linked to it.</p>\n<p>\n	&nbsp;</p>\n<p>\n	9.&nbsp;&nbsp;&nbsp;&nbsp; <u><strong>Limitation of Liability</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	In no event will we, our employees, agents, officers or directors be liable for damages of any kind, under any legal theory, arising out of or in connection with your use, or inability to use, the site, any sites linked to it, any content, including any direct, indirect, special, incidental, consequential or punitive damages, including but not limited to, personal injury, pain and suffering, emotional distress, loss of revenue, loss of profits, loss of business or anticipated savings, loss of use, loss of goodwill, loss of data, and whether caused by tort (including negligence), breach of contract or otherwise, even if foreseeable. In no event will our maximum liability exceed one hundred australian dollars (aud&nbsp; $100). No claim, suit or action may be brought against us after six months from the underlying cause of action.</p>\n<p>\n	&nbsp;</p>\n<p>\n	10.&nbsp; <u><strong>Linking to the Site</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	a.&nbsp;&nbsp;&nbsp;&nbsp; You may link to our Site in a way that is legal, fair and does not damage our reputation or take advantage of it, but you must not establish a link in such a way as to suggest any form of association, approval or endorsement on our part where none exists.</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; You must not establish a link from any website that is not owned by you.</p>\n<p>\n	c.&nbsp;&nbsp;&nbsp;&nbsp; You cannot frame our Site on any other site.</p>\n<p>\n	d.&nbsp;&nbsp;&nbsp;&nbsp; You agree to cooperate with us in causing any unauthorized framing or linking immediately to cease. We reserve the right to withdraw linking permission without notice.</p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong>11.&nbsp; </strong><strong><u>Disputes Between Users</u></strong></p>\n<p>\n	&nbsp;</p>\n<p>\n	As a neutral venue, we do not offer mediation, arbitration or any other forms of dispute resolution and do not actively monitor user interactions. Therefore, you are solely responsible for your interactions and disputes with other users. We reserve the right, but have no obligation, to facilitate and resolve disputes between Site users.</p>\n<p>\n	&nbsp;</p>\n<p>\n	12.&nbsp; <u><strong>Assignment</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	You may not assign your rights and obligations under these Terms of Use without our prior written consent. We may transfer, assign or subcontract the rights, interests or obligations under the Terms of Use, at our sole discretion, without obtaining your consent.</p>\n<p>\n	&nbsp;</p>\n<p>\n	13.&nbsp; <u><strong>Severability and Non-Waiver</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	a.&nbsp;&nbsp;&nbsp;&nbsp; Should any part of these Terms of Use be rendered or declared invalid by an appropriate authority, such invalidation of such part or portion of these Terms of Use should not invalidate the remaining portions thereof, and they shall remain in full force and effect.</p>\n<p>\n	b.&nbsp;&nbsp;&nbsp;&nbsp; Enforcement of these Terms of Use is solely in our discretion, and failure to enforce the Terms of Use in some instances does not constitute a waiver of our right to enforce them in other instances.</p>\n<p>\n	&nbsp;</p>\n<p>\n	14.&nbsp; <u><strong>Governing Law and Jurisdiction</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	These Terms of Use shall be governed by the laws of the State of Victoria, Australia. You agree that any dispute or legal proceeding in relation to this Site shall be brought exclusively in the courts of the State of Victoria.</p>\n<p>\n	&nbsp;</p>\n<p>\n	15.&nbsp; <u><strong>Changes to the Terms of Use</strong></u></p>\n<p>\n	&nbsp;</p>\n<p>\n	We update these Terms of Use every once in a while as we deem appropriate, without notifying you. We then post the changes on this page. Please check this page from time to time to take notice of any changes we made, as they are binding on you. Your continued use of the Site following the posting of revised Terms of Use constitutes your acceptance of the changes.</p>\n<p>\n	&nbsp;</p>\n<p>\n	<strong>16.&nbsp; </strong><strong><u>Contact</u></strong></p>\n<p>\n	&nbsp;</p>\n<p>\n	All feedback, comments, requests for technical support and other communications relating to the Site should be directed to our customer service representative at info@tailem.com&nbsp;</p>', 'Terms of Use', 1),
(4, 'Welcome', 'welcome', '<p>\n	Thank you for registering with Tailem.com. You can now log in using your email and password.</p>\n<br />\n<p>\n	Kind Regards,<br />\n	Team at Tailem.com</p>', 'Welcome', 1),
(6, 'General Disclaimer', 'general-disclaimer', '<p>\n	Our Site is a neutral platform that allows users to discuss, rate and review various songs.&nbsp; We are not a party to any reviews, transactions and interactions of the site users. Therefore, we disclaim all liability arising out of or related to user content, transactions, conduct and arrangements. We are not liable for any fake reviews, intellectual property rights infringement or defamation committed using our site. our online venue is provided to be used at your own risk, with no warranties of any kind.</p>', 'General Disclaimer', 1),
(7, 'Contact Us help', 'contact-us-help', '<p>\n	Your concerns and feedback is incredibly important to us. If you have any questions or feedback please feel free to use this form to contact us. You can also reach us via email or find us on social media.</p>', 'Contact Us help', 1),
(8, 'Posting Guildelines', 'posting-guildelines', '<div bitstream=\"\" class=\"knowledge-page-header\" style=\"box-sizing: border-box; padding: 0px 0px 20px;\" vera=\"\">\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		<span style=\"color: rgb(68, 68, 68);\">We love hearing about your opinions to the songs that you wish to review and value your contributions to our site! We also want to make sure that Tailem.com is a safe and friendly community for all of our valued members. To help us with this goal, please ensure your reviews are:&nbsp;</span></p>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		&nbsp;</p>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		<span style=\"font-weight: 700; color: rgb(68, 68, 68);\">Family Friendly</span></p>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		&nbsp;</p>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		<span style=\"color: rgb(68, 68, 68);\">To maintain a safe and family friendly environment, Tailem.com values diverse opinions. We do not allow profanity, obscenities or vulgarities in reviews. We also block reviews that include sexually explicit comments, hate speech, prejudiced language, threats or personal insults, inflammatory or discrimination. Please also do not post content that invades other user&#39;s privacy. We want to hear your opinions so please keep it suitable for all ages!&nbsp;</span></p>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		&nbsp;</p>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		&nbsp;</p>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		<span style=\"font-weight: 700; color: rgb(68, 68, 68);\">Easy to Read</span></p>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		&nbsp;</p>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		<span style=\"color: rgb(68, 68, 68);\">Help other music lovers get the most out of your review by using the correct alphabet for your language. Please do not use HTML tags, excessive ALL CAPS or making your reviews hard to read for others.</span></p>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		&nbsp;</p>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		&nbsp;</p>\n	<div style=\"color: rgb(68, 68, 68);\">\n		<em>Tailem.com reserves the right to remove a review for any reason. The reviews posted on Tailem.com are individual and highly subjective opinions. The opinions expressed in reviews are those of Tailem.com members and are not of Tailem.com. We do not endorse any of the opinions expressed by reviewers.</em></div>\n	<div style=\"color: rgb(68, 68, 68);\">\n		&nbsp;</div>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		&nbsp;</p>\n	<div style=\"color: rgb(68, 68, 68);\">\n		<em>In accordance with our Privacy Policy, Tailem.com does not release anyone&#39;s personal contact information.</em></div>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		&nbsp;</p>\n	<p style=\"color: rgb(166, 166, 166); box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		&nbsp;</p>\n	<p style=\"box-sizing: border-box; font-size: 14px; margin: 0px;\">\n		&nbsp;</p>\n</div>\n<div bitstream=\"\" class=\"article-column\" style=\"box-sizing: border-box; width: 600px; float: left; color: rgb(68, 68, 68); font-family: Arial, Tahoma, \" vera=\"\">\n	<div class=\"article-body\" style=\"box-sizing: border-box; line-height: 1.7; font-size: 14px; word-wrap: break-word;\">\n		<div>\n			&nbsp;</div>\n		<div>\n			&nbsp;</div>\n	</div>\n</div>', 'Posting Guildelines', 1),
(9, 'Welcome', 'welcome', '<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; letter-spacing: 0.5px; line-height: 1.5em; word-spacing: 0.5px; text-align: justify; font-size: 13px; color: rgb(68, 68, 68); font-family: Montserrat, sans-serif;\">\n	&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; letter-spacing: 0.5px; line-height: 1.5em; word-spacing: 0.5px; text-align: justify; font-size: 13px; color: rgb(68, 68, 68); font-family: Montserrat, sans-serif;\">\n	Thank you&nbsp;<a style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(230, 0, 0); background: 0px 0px;\">{USERNAME}&nbsp;</a>for becoming a member of Tailem.com. We provide a platform where you can rate, review and share your thoughts on all of your favorite songs.&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; letter-spacing: 0.5px; line-height: 1.5em; word-spacing: 0.5px; text-align: justify; font-size: 13px; color: rgb(68, 68, 68); font-family: Montserrat, sans-serif; width: 100%;\">\n	&nbsp;</p>\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; padding: 0px; letter-spacing: 0.5px; line-height: 1.5em; word-spacing: 0.5px; text-align: justify; font-size: 13px; color: rgb(68, 68, 68); font-family: Montserrat, sans-serif;\">\n	We believe your opinions are incredibly important to our site and we value each and every contribution made by our users. Please use this <a href=\"https://www.tailem.com/contact-us\"><span style=\"color:#ff0000;\">link</span></a><a href=\"https://www.tailem.com/contact-us\" style=\"box-sizing: border-box; margin: 0px; padding: 0px; color: rgb(230, 0, 0); text-decoration: none; background: 0px 0px;\"> </a>to voice your feedback and concerns.</p>', 'Welcome', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reports_checkbox`
--

CREATE TABLE `tbl_reports_checkbox` (
  `report_chk_box_id` int(11) NOT NULL,
  `report_chk_box_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_reports_checkbox`
--

INSERT INTO `tbl_reports_checkbox` (`report_chk_box_id`, `report_chk_box_name`) VALUES
(2, 'Personal Attacks'),
(3, 'Foul Language'),
(4, 'None of the above?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `review_id` int(11) NOT NULL,
  `review_title` varchar(500) NOT NULL,
  `review_detail` text NOT NULL,
  `review_rating` decimal(11,1) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `review_user_id` int(11) NOT NULL,
  `review_ip` varchar(30) NOT NULL,
  `review_post_date` int(11) NOT NULL,
  `datetime` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_popular` int(11) NOT NULL COMMENT '1=popular',
  `like_counter` int(11) NOT NULL,
  `comment_counter` int(11) NOT NULL,
  `view_time` int(11) NOT NULL,
  `is_featured` enum('Yes','No') NOT NULL DEFAULT 'No',
  `like_count` int(11) NOT NULL,
  `review_given` varchar(10) NOT NULL,
  `review_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_reviews`
--

INSERT INTO `tbl_reviews` (`review_id`, `review_title`, `review_detail`, `review_rating`, `artist_id`, `album_id`, `song_id`, `review_user_id`, `review_ip`, `review_post_date`, `datetime`, `status`, `is_popular`, `like_counter`, `comment_counter`, `view_time`, `is_featured`, `like_count`, `review_given`, `review_date`) VALUES
(326, 'test', 'this is test review', '5.2', 18200208, 587008000, 587008151, 90, '101.188.77.54', 1642971958, '', 1, 1, 0, 0, 0, 'No', 1, '', '0000-00-00 00:00:00'),
(327, 'this is testing', 'testing is this', '6.5', 1093572611, 1445529165, 1445529427, 90, '101.188.77.54', 1642972274, '', 1, 1, 0, 0, 0, 'No', 0, '', '0000-00-00 00:00:00'),
(328, 'song is ok 3434', 'ok is song', '7.9', 18200208, 587008000, 587008153, 94, '101.188.77.54', 1642973365, '', 1, 0, 0, 0, 0, 'No', 0, '', '0000-00-00 00:00:00'),
(330, 'Song is SSOng', 'Song is SSOng', '3.5', 323820642, 324215423, 324216398, 94, '101.188.77.54', 1642974948, '', 1, 0, 0, 0, 0, 'No', 0, '', '0000-00-00 00:00:00'),
(331, 'Kpops Song', 'Kpops Song', '8.6', 1590707965, 1590942518, 1590942524, 94, '101.188.77.54', 1642974989, '', 1, 0, 0, 0, 0, 'No', 2, '', '0000-00-00 00:00:00'),
(332, 'Great', 'This is my first review', '6.4', 1093572611, 1093572569, 1093572779, 82, '119.160.69.1', 1643351011, '', 1, 0, 0, 0, 0, 'No', 1, '', '0000-00-00 00:00:00'),
(333, 'This is test', 'sdgds sdfgsd', '6.4', 1093572611, 1093572569, 1093572779, 95, '147.135.36.175', 1643439203, '', 1, 0, 0, 0, 0, 'No', 0, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_review_report`
--

CREATE TABLE `tbl_review_report` (
  `r_report_id` int(11) NOT NULL,
  `r_report_review_id` int(11) NOT NULL,
  `r_report_user_id` int(11) NOT NULL,
  `r_report_date` int(11) NOT NULL,
  `r_report_status` int(11) NOT NULL,
  `r_report_ip` varchar(50) NOT NULL,
  `r_report_details` text NOT NULL,
  `r_report_option` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0=review report,1=discussion report'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_review_report`
--

INSERT INTO `tbl_review_report` (`r_report_id`, `r_report_review_id`, `r_report_user_id`, `r_report_date`, `r_report_status`, `r_report_ip`, `r_report_details`, `r_report_option`, `status`) VALUES
(41, 8, 1, 1632501936, 1, '127.0.0.1', 'sadsad', 3, 0),
(42, 4, 3, 1634736625, 1, '127.0.0.1', '', 3, 0),
(43, 4, 81, 1636698345, 1, '111.119.178.140', '', 4, 0),
(44, 8, 85, 1638670710, 1, '124.188.88.112', 'dadad', 3, 0),
(45, 8, 82, 1639631705, 1, '103.255.7.23', '', 2, 0),
(46, 5, 90, 1640690340, 1, '101.188.95.108', 'abcd', 2, 0),
(47, 319, 90, 1640763758, 1, '101.188.95.108', 'fadadad', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `setting_id` int(11) NOT NULL,
  `site_mode` int(11) NOT NULL DEFAULT 1 COMMENT '1:live;2:Maintance',
  `analaytic` text DEFAULT NULL,
  `itune_url` text NOT NULL,
  `copy_right_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`setting_id`, `site_mode`, `analaytic`, `itune_url`, `copy_right_text`) VALUES
(1, 1, '<script>\n  (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n  })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');\n\n  ga(\'create\', \'UA-91670282-1\', \'auto\');\n  ga(\'send\', \'pageview\');\n\n</script>', 'https://geo.itunes.apple.com/us/genre/music/', '2021 Tailem.com | All Rights Reserved');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_icons`
--

CREATE TABLE `tbl_social_icons` (
  `icon_id` int(11) NOT NULL,
  `icon_name` varchar(200) NOT NULL,
  `large_screen_icon` text NOT NULL,
  `small_screen_icon` varchar(200) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social_icons`
--

INSERT INTO `tbl_social_icons` (`icon_id`, `icon_name`, `large_screen_icon`, `small_screen_icon`, `updated_at`) VALUES
(1, 'FaceBook ', 'site_upload/social_icons/facebook.png', '', '2021-10-08 05:17:28'),
(2, 'Linkedin', 'site_upload/social_icons/ico_in.png', '', '2021-10-08 05:18:12'),
(3, 'Twitter ', 'site_upload/social_icons/twitter.png', '', '2021-10-08 05:18:12'),
(4, 'Google', 'site_upload/social_icons/google-plus.png', '', '2021-10-08 05:18:50'),
(5, 'Pinterest ', '', '', '2021-10-08 05:18:50'),
(6, 'Instagram', 'site_upload/social_icons/instagram.png', '', '2021-11-11 04:34:15');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_links`
--

CREATE TABLE `tbl_social_links` (
  `links_id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  `pinterest` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social_links`
--

INSERT INTO `tbl_social_links` (`links_id`, `facebook`, `linkedin`, `twitter`, `google`, `pinterest`) VALUES
(1, 'https://www.facebook.com/tailemmusicreviews/', '', 'https://twitter.com/TailemMusic', 'https://plus.google.com/u/0/115387622205274597807', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social_username`
--

CREATE TABLE `tbl_social_username` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `network` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social_username`
--

INSERT INTO `tbl_social_username` (`id`, `fullname`, `network`, `user_id`) VALUES
(1, 'Evs Tester', 'facebook', 64),
(6, 'Evs tester', 'gmail', 64);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_songs`
--

CREATE TABLE `tbl_songs` (
  `id` int(11) NOT NULL,
  `song_title` varchar(255) NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `song_seo` char(255) NOT NULL,
  `lastfm_url` text NOT NULL,
  `ad_code` text NOT NULL,
  `video_code` text NOT NULL,
  `picture` varchar(255) NOT NULL,
  `popularity` int(11) NOT NULL,
  `description` text NOT NULL,
  `song_status` enum('1','0') NOT NULL DEFAULT '1',
  `posted_date` int(11) NOT NULL,
  `latest_one` int(11) NOT NULL DEFAULT 0,
  `ranking_order` int(11) DEFAULT NULL,
  `rate_song` decimal(11,1) NOT NULL DEFAULT 5.0,
  `review_count` int(11) NOT NULL,
  `latest` int(11) NOT NULL,
  `song_year` int(11) NOT NULL,
  `amazon_url` text NOT NULL,
  `google_url` text NOT NULL,
  `itunes_url` text NOT NULL,
  `itunes_price` float NOT NULL,
  `refer_seo` text NOT NULL,
  `country` varchar(255) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `timeupdated` int(11) DEFAULT 0,
  `updated_by_itunes` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_songs`
--

INSERT INTO `tbl_songs` (`id`, `song_title`, `keywords`, `song_seo`, `lastfm_url`, `ad_code`, `video_code`, `picture`, `popularity`, `description`, `song_status`, `posted_date`, `latest_one`, `ranking_order`, `rate_song`, `review_count`, `latest`, `song_year`, `amazon_url`, `google_url`, `itunes_url`, `itunes_price`, `refer_seo`, `country`, `currency`, `timeupdated`, `updated_by_itunes`) VALUES
(587008166, 'La ninfetta', 'La ninfetta', 'la-ninfetta', 'https://www.last.fm/music/Giorgio+Gaber/_/La+ninfetta', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594505, 0, 1, '5.0', 0, 0, 2000, '', '', 'https://music.apple.com/us/album/la-ninfetta/587008000?i=587008166&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:25'),
(587008157, '24 ore (Con enzo jannacci)', '24 ore (Con enzo jannacci)', '24-ore-con-enzo-jannacci-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594507, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/24-ore-con-enzo-jannacci/587008000?i=587008157&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:27'),
(587008160, 'Hei!... stella (Con enzo jannacci)', 'Hei!... stella (Con enzo jannacci)', 'hei-stella-con-enzo-jannacci-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594509, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/hei-stella-con-enzo-jannacci/587008000?i=587008160&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:29'),
(587008162, 'Una fetta di limone', 'Una fetta di limone', 'una-fetta-di-limone', 'https://www.last.fm/music/Giorgio+Gaber/_/Una+Fetta+di+Limone', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594510, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/una-fetta-di-limone/587008000?i=587008162&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:30'),
(587008151, 'Love Me Forever', 'Love Me Forever', 'love-me-forever', 'https://www.last.fm/music/Giorgio+Gaber/_/Love+Me+Forever', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594512, 0, 7, '5.2', 2, 0, 2001, '', '', 'https://music.apple.com/us/album/love-me-forever/587008000?i=587008151&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:32'),
(587008167, 'La Ballata del Cerutti', 'La Ballata del Cerutti', 'la-ballata-del-cerutti', 'https://www.last.fm/music/Giorgio+Gaber/_/La+ballata+del+Cerutti', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594514, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/la-ballata-del-cerutti/587008000?i=587008167&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:34'),
(587008158, 'Dormi piccino (Con enzo jannacci)', 'Dormi piccino (Con enzo jannacci)', 'dormi-piccino-con-enzo-jannacci-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594515, 0, 1, '5.0', 0, 0, 1960, '', '', 'https://music.apple.com/us/album/dormi-piccino-con-enzo-jannacci/587008000?i=587008158&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:35'),
(587008159, 'Il cane e la stella (Con enzo jannacci)', 'Il cane e la stella (Con enzo jannacci)', 'il-cane-e-la-stella-con-enzo-jannacci-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594517, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/il-cane-e-la-stella-con-enzo-jannacci/587008000?i=587008159&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:37'),
(587008161, 'Non occupatemi il telefono (Con enzo jannacci)', 'Non occupatemi il telefono (Con enzo jannacci)', 'non-occupatemi-il-telefono-con-enzo-jannacci-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594519, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/non-occupatemi-il-telefono-con-enzo-jannacci/587008000?i=587008161&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:39'),
(587008149, 'Be-Bop-A-Lula', 'Be-Bop-A-Lula', 'be-bop-a-lula', 'https://www.last.fm/music/Giorgio+Gaber/_/Be+Bop+a+Lula', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594520, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/be-bop-a-lula/587008000?i=587008149&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:40'),
(587008165, 'Non arrossire', 'Non arrossire', 'non-arrossire', 'https://www.last.fm/music/Giorgio+Gaber/_/Non+Arrossire', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594522, 0, 1, '5.0', 0, 0, 1960, '', '', 'https://music.apple.com/us/album/non-arrossire/587008000?i=587008165&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:42'),
(587008169, 'Benzina e cerini', 'Benzina e cerini', 'benzina-e-cerini', 'https://www.last.fm/music/Giorgio+Gaber/_/Benzina+e+cerini', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594524, 0, 1, '5.0', 0, 0, 2000, '', '', 'https://music.apple.com/us/album/benzina-e-cerini/587008000?i=587008169&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:44'),
(587008153, 'The Hula-Hoop Song', 'The Hula-Hoop Song', 'the-hula-hoop-song', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594525, 0, 1, '7.9', 1, 0, 2001, '', '', 'https://music.apple.com/us/album/the-hula-hoop-song/587008000?i=587008153&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:45'),
(587008008, 'Ciao ti dirÃ²', 'Ciao ti dirÃ²', 'ciao-ti-dir-', 'https://www.last.fm/music/Giorgio+Gaber/_/Ciao+Ti+Dir', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594527, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/ciao-ti-dir%C3%B2/587008000?i=587008008&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:47'),
(587008168, 'Suono di corda spezzata', 'Suono di corda spezzata', 'suono-di-corda-spezzata', 'https://www.last.fm/music/Giorgio+Gaber/_/Suono+di+corda+spezzata', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594529, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/suono-di-corda-spezzata/587008000?i=587008168&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:49'),
(587008152, 'Un po\\&#39; di luna', 'Un po\\&#39; di luna', 'un-po-di-luna', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594531, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/un-po-di-luna/587008000?i=587008152&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:51'),
(587008164, 'Desidero te', 'Desidero te', 'desidero-te', 'https://www.last.fm/music/Giorgio+Gaber/_/Desidero+te', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594533, 0, 1, '5.0', 0, 0, 2000, '', '', 'https://music.apple.com/us/album/desidero-te/587008000?i=587008164&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:53'),
(587008170, 'Le strade di notte', 'Le strade di notte', 'le-strade-di-notte', 'https://www.last.fm/music/Giorgio+Gaber/_/Le+strade+di+notte', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594535, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/le-strade-di-notte/587008000?i=587008170&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:55'),
(587008154, 'Oh bella bambina', 'Oh bella bambina', 'oh-bella-bambina', 'https://www.last.fm/music/Giorgio+Gaber/_/Oh+Bella+Bambina', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594537, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/oh-bella-bambina/587008000?i=587008154&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:57'),
(587008163, 'GeneviÃ¨ve', 'GeneviÃ¨ve', 'genevi-ve', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594539, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/genevi%C3%A8ve/587008000?i=587008163&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:08:59'),
(587008155, 'Non dimenticar le mie parole', 'Non dimenticar le mie parole', 'non-dimenticar-le-mie-parole', 'https://www.last.fm/music/Giorgio+Gaber/_/Non+Dimenticar+Le+Mie+Parole', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594541, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/non-dimenticar-le-mie-parole/587008000?i=587008155&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:01'),
(587008171, 'Quei capelli spettinati', 'Quei capelli spettinati', 'quei-capelli-spettinati', 'https://www.last.fm/music/Giorgio+Gaber/_/Quei+capelli+spettinati', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594543, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/quei-capelli-spettinati/587008000?i=587008171&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:03'),
(587008150, 'Da te era bello restar', 'Da te era bello restar', 'da-te-era-bello-restar', 'https://www.last.fm/music/Giorgio+Gaber/_/Da+te+era+bello+restar', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/fc/3d/f0/fc3df0bc-9474-fcb4-e788-ace3577e12fa/source/370x370bb.jpg', 0, '', '1', 1638594545, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/da-te-era-bello-restar/587008000?i=587008150&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:05'),
(1404474308, 'O bella ciao', 'O bella ciao', 'o-bella-ciao', 'https://www.last.fm/music/Giorgio+Gaber/_/O+bella+ciao', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/3a/94/72/3a94725b-0ae9-94ea-abc8-116c2a850d17/source/370x370bb.jpg', 0, '', '1', 1638594546, 0, 1, '5.0', 0, 0, 1995, '', '', 'https://music.apple.com/us/album/o-bella-ciao/1404474296?i=1404474308&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:06'),
(1404475192, 'A pizza', 'A pizza', 'a-pizza', 'https://www.last.fm/music/Giorgio+Gaber/_/%27A+pizza', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/3a/94/72/3a94725b-0ae9-94ea-abc8-116c2a850d17/source/370x370bb.jpg', 0, '', '1', 1638594549, 0, 1, '5.0', 0, 0, 1968, '', '', 'https://music.apple.com/us/album/a-pizza/1404474296?i=1404475192&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:09'),
(645888558, 'Una fetta di limone (feat. Giorgio Gaber)', 'Una fetta di limone (feat. Giorgio Gaber)', 'una-fetta-di-limone-feat-giorgio-gaber-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music2/v4/3f/66/8f/3f668f26-8a11-b4c6-9587-8a94635f6f3c/source/370x370bb.jpg', 0, '', '1', 1638594551, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/una-fetta-di-limone-feat-giorgio-gaber/645888293?i=645888558&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:11'),
(645888557, 'PerchÃ© non con me (feat. Giorgio Gaber)', 'PerchÃ© non con me (feat. Giorgio Gaber)', 'perch-non-con-me-feat-giorgio-gaber-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music2/v4/3f/66/8f/3f668f26-8a11-b4c6-9587-8a94635f6f3c/source/370x370bb.jpg', 0, '', '1', 1638594552, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/perch%C3%A9-non-con-me-feat-giorgio-gaber/645888293?i=645888557&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:12'),
(579455444, 'Una fetta di limone', 'Una fetta di limone', 'una-fetta-di-limone', 'https://www.last.fm/music/Giorgio+Gaber/_/Una+Fetta+di+Limone', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/25/25/9f/25259f5a-5e71-f61e-55ca-aa00e601ce4c/source/370x370bb.jpg', 0, '', '1', 1638594554, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/una-fetta-di-limone/579455085?i=579455444&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:14'),
(645888556, 'Il cane e la stella (feat. Giorgio Gaber)', 'Il cane e la stella (feat. Giorgio Gaber)', 'il-cane-e-la-stella-feat-giorgio-gaber-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music2/v4/3f/66/8f/3f668f26-8a11-b4c6-9587-8a94635f6f3c/source/370x370bb.jpg', 0, '', '1', 1638594556, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/il-cane-e-la-stella-feat-giorgio-gaber/645888293?i=645888556&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:16'),
(645888551, 'Gheru gheru', 'Gheru gheru', 'gheru-gheru', 'https://www.last.fm/music/Enzo+Jannacci/_/Gheru+gheru', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music2/v4/3f/66/8f/3f668f26-8a11-b4c6-9587-8a94635f6f3c/source/370x370bb.jpg', 0, '', '1', 1638594558, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/gheru-gheru/645888293?i=645888551&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:18'),
(569402537, 'Goganga', 'Goganga', 'goganga', 'https://www.last.fm/music/Giorgio+Gaber/_/Goganga', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/d4/e5/fb/d4e5fb73-7024-953c-1ad4-4724421dac6c/source/370x370bb.jpg', 0, '', '1', 1638594559, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/goganga/569402530?i=569402537&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:09:19'),
(324216398, 'Destra sinistra (with voice giorgio gaber) (feat. METRO STARS)', 'Destra sinistra (with voice giorgio gaber) (feat. METRO STARS)', 'destra-sinistra-with-voice-giorgio-gaber-feat-metro-stars-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/72/ad/b2/72adb2c1-e2b4-aaaa-681f-6bfe9427284e/source/370x370bb.jpg', 0, '', '1', 1638594561, 0, 1, '3.5', 1, 0, 2009, '', '', 'https://music.apple.com/us/album/destra-sinistra-with-voice-giorgio-gaber-feat-metro/324215423?i=324216398&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:21'),
(1404486186, 'E allora dai', 'E allora dai', 'e-allora-dai', 'https://www.last.fm/music/Giorgio+Gaber/_/E+allora+dai', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music115/v4/40/6f/73/406f730f-6236-33c5-baea-0c83ce4ade01/source/370x370bb.jpg', 0, '', '1', 1638594564, 0, 1, '5.0', 0, 0, 1965, '', '', 'https://music.apple.com/us/album/e-allora-dai/1404486164?i=1404486186&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:24'),
(579455431, 'The Hula-Hoop Song', 'The Hula-Hoop Song', 'the-hula-hoop-song', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/25/25/9f/25259f5a-5e71-f61e-55ca-aa00e601ce4c/source/370x370bb.jpg', 0, '', '1', 1638594566, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/the-hula-hoop-song/579455085?i=579455431&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:26'),
(596330906, 'Birra (feat. Giorgio Gaber & Enzo Jannacci)', 'Birra (feat. Giorgio Gaber & Enzo Jannacci)', 'birra-feat-giorgio-gaber-enzo-jannacci-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/5b/95/35/5b9535c5-97aa-19ad-c5a5-0333e9c31ace/source/370x370bb.jpg', 0, '', '1', 1638594567, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/birra-feat-giorgio-gaber-enzo-jannacci/596330870?i=596330906&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:27'),
(569402544, 'La pum-pum rumba', 'La pum-pum rumba', 'la-pum-pum-rumba', 'https://www.last.fm/music/Giorgio+Gaber/_/La+pum+pum+rumba', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/d4/e5/fb/d4e5fb73-7024-953c-1ad4-4724421dac6c/source/370x370bb.jpg', 0, '', '1', 1638594569, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/la-pum-pum-rumba/569402530?i=569402544&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:09:29'),
(569402800, 'I magistrati', 'I magistrati', 'i-magistrati', 'https://www.last.fm/music/Giorgio+Gaber/_/I+magistrati', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/d4/e5/fb/d4e5fb73-7024-953c-1ad4-4724421dac6c/source/370x370bb.jpg', 0, '', '1', 1638594571, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/i-magistrati/569402530?i=569402800&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:09:31'),
(579455448, 'La ninfetta', 'La ninfetta', 'la-ninfetta', 'https://www.last.fm/music/Giorgio+Gaber/_/La+ninfetta', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/25/25/9f/25259f5a-5e71-f61e-55ca-aa00e601ce4c/source/370x370bb.jpg', 0, '', '1', 1638594573, 0, 1, '5.0', 0, 0, 2000, '', '', 'https://music.apple.com/us/album/la-ninfetta/579455085?i=579455448&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:33'),
(579455438, 'Il cane e la stella (feat. Enzo Jannacci)', 'Il cane e la stella (feat. Enzo Jannacci)', 'il-cane-e-la-stella-feat-enzo-jannacci-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/25/25/9f/25259f5a-5e71-f61e-55ca-aa00e601ce4c/source/370x370bb.jpg', 0, '', '1', 1638594574, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/il-cane-e-la-stella-feat-enzo-jannacci/579455085?i=579455438&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:09:34'),
(569402792, 'Mi vien da ridere', 'Mi vien da ridere', 'mi-vien-da-ridere', 'https://www.last.fm/music/Giorgio+Gaber/_/Mi+vien+da+ridere', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/d4/e5/fb/d4e5fb73-7024-953c-1ad4-4724421dac6c/source/370x370bb.jpg', 0, '', '1', 1638594576, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/mi-vien-da-ridere/569402530?i=569402792&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:09:36'),
(569402536, 'Ma pensa te', 'Ma pensa te', 'ma-pensa-te', 'https://www.last.fm/music/Giorgio+Gaber/_/Ma+pensa+te', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/d4/e5/fb/d4e5fb73-7024-953c-1ad4-4724421dac6c/source/370x370bb.jpg', 0, '', '1', 1638594578, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/ma-pensa-te/569402530?i=569402536&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:09:38'),
(569402794, 'Ragiona amico mio', 'Ragiona amico mio', 'ragiona-amico-mio', 'https://www.last.fm/music/Giorgio+Gaber/_/Ragiona,+amico+mio', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/d4/e5/fb/d4e5fb73-7024-953c-1ad4-4724421dac6c/source/370x370bb.jpg', 0, '', '1', 1638594580, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/ragiona-amico-mio/569402530?i=569402794&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:09:40'),
(1459462576, 'Tobias\\&#39; Burger', 'Tobias\\&#39; Burger', 'tobias-burger', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/9a/b1/72/9ab172d5-b85e-d7dc-68a2-fdaa0921c7f2/source/370x370bb.jpg', 0, '', '1', 1638594652, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/tobias-burger/1459462562?i=1459462576&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:10:52'),
(1150633286, 'Butts, Butts, Butts', 'Butts, Butts, Butts', 'butts-butts-butts', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/bc/71/83/bc718348-5cb7-4b7a-b335-7b29a86a4e26/source/370x370bb.jpg', 0, '', '1', 1638594653, 0, 1, '5.0', 0, 0, 2017, '', '', 'https://music.apple.com/us/album/butts-butts-butts/1150632557?i=1150633286&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:10:53'),
(1564102921, 'BBQ Burger Blues', 'BBQ Burger Blues', 'bbq-burger-blues', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/5e/95/1c/5e951c93-f51e-bebb-c401-eeba26f08247/source/370x370bb.jpg', 0, '', '1', 1638594655, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://music.apple.com/us/album/bbq-burger-blues/1564102912?i=1564102921&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:10:55'),
(205597604, 'Zutraun', 'Zutraun', 'zutraun', 'https://www.last.fm/music/Tobias+Burger/_/zutraun', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594657, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/zutraun/205597205?i=205597604&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:10:57'),
(908629959, 'Anja', 'Anja', 'anja', 'https://www.last.fm/music/Tobias+Burger/_/Anja', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 0, '', '1', 1638594659, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/anja/908629939?i=908629959&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:10:59'),
(205597311, 'Der Kelch', 'Der Kelch', 'der-kelch', 'https://www.last.fm/music/Tobias+Burger/_/der+kelch', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594661, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/der-kelch/205597205?i=205597311&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:01'),
(205598245, 'Meine Lieder', 'Meine Lieder', 'meine-lieder', 'https://www.last.fm/music/Tobias+Burger/_/meine+lieder', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594662, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/meine-lieder/205597205?i=205598245&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:02'),
(205597745, 'Und die Erde ist noch warm', 'Und die Erde ist noch warm', 'und-die-erde-ist-noch-warm', 'https://www.last.fm/music/Tobias+Burger/_/und+die+erde+ist+noch+warm', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594664, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/und-die-erde-ist-noch-warm/205597205?i=205597745&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:04'),
(908629966, 'Des sanftâ Muts Macht', 'Des sanftâ Muts Macht', 'des-sanft-muts-macht', 'https://www.last.fm/music/Tobias+Burger/_/Des+sanft+Muts+Macht', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 0, '', '1', 1638594666, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/des-sanft-muts-macht/908629939?i=908629966&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:06'),
(205598191, 'Sie liebte ihn heiÃ', 'Sie liebte ihn heiÃ', 'sie-liebte-ihn-hei-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594667, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/sie-liebte-ihn-hei%C3%9F/205597205?i=205598191&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:07'),
(205598254, 'Bergauf', 'Bergauf', 'bergauf', 'https://www.last.fm/music/Tobias+Burger/_/bergauf', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594669, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/bergauf/205597205?i=205598254&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:09'),
(205597253, 'Die SchÃ¶ne und das Biest', 'Die SchÃ¶ne und das Biest', 'die-sch-ne-und-das-biest', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594670, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/die-sch%C3%B6ne-und-das-biest/205597205?i=205597253&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:10'),
(1506625635, 'Beans and Burgers Podcast', 'Beans and Burgers Podcast', 'beans-and-burgers-podcast', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Podcasts115/v4/d1/41/9a/d1419a5a-c579-6e20-1c54-a5e9c4096dd2/mza_8617375892967463369.jpg/370x370bb.jpg', 0, '', '1', 1638594672, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://podcasts.apple.com/us/podcast/beans-and-burgers-podcast/id1506625635?uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:11:12'),
(908629960, 'Mutti meint es gut', 'Mutti meint es gut', 'mutti-meint-es-gut', 'https://www.last.fm/music/Tobias+Burger/_/Mutti+Meint+Es+Gut', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 0, '', '1', 1638594674, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/mutti-meint-es-gut/908629939?i=908629960&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:14'),
(205597268, 'Bau mir ein Boot', 'Bau mir ein Boot', 'bau-mir-ein-boot', 'https://www.last.fm/music/Tobias+Burger/_/bau+mir+ein+boot', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594675, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/bau-mir-ein-boot/205597205?i=205597268&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:15'),
(908629953, 'Worte werden wie Regen sein', 'Worte werden wie Regen sein', 'worte-werden-wie-regen-sein', 'https://www.last.fm/music/Tobias+Burger/_/Worte+werden+wie+Regen+sein', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 0, '', '1', 1638594677, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/worte-werden-wie-regen-sein/908629939?i=908629953&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:17'),
(205597664, 'WiesentrÃ¤ume', 'WiesentrÃ¤ume', 'wiesentr-ume', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594679, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/wiesentr%C3%A4ume/205597205?i=205597664&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:19'),
(908629951, 'Ist das alles', 'Ist das alles', 'ist-das-alles', 'https://www.last.fm/music/Tobias+Burger/_/Ist+das+alles', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 0, '', '1', 1638594680, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/ist-das-alles/908629939?i=908629951&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:20'),
(908629954, 'Diese Erde ist uns heilig', 'Diese Erde ist uns heilig', 'diese-erde-ist-uns-heilig', 'https://www.last.fm/music/Tobias+Burger/_/Diese+Erde+ist+uns+heilig', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 0, '', '1', 1638594682, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/diese-erde-ist-uns-heilig/908629939?i=908629954&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:22'),
(908629965, 'Engelskind', 'Engelskind', 'engelskind', 'https://www.last.fm/music/Tobias+Burger/_/Engelskind', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 0, '', '1', 1638594684, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/engelskind/908629939?i=908629965&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:24'),
(908629952, 'Sommerweg', 'Sommerweg', 'sommerweg', 'https://www.last.fm/music/Tobias+Burger/_/Sommerweg', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 0, '', '1', 1638594687, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/sommerweg/908629939?i=908629952&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:27'),
(205597487, 'Das Paradies', 'Das Paradies', 'das-paradies', 'https://www.last.fm/music/Tobias+Burger/_/das+paradies', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594689, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/das-paradies/205597205?i=205597487&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:29'),
(908629950, 'Bitte sei besser', 'Bitte sei besser', 'bitte-sei-besser', 'https://www.last.fm/music/Tobias+Burger/_/Bitte+sei+besser', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 1, '', '1', 1638594690, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/bitte-sei-besser/908629939?i=908629950&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:30'),
(205598275, 'Rote Sonne du', 'Rote Sonne du', 'rote-sonne-du', 'https://www.last.fm/music/Tobias+Burger/_/rote+sonne+du', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594693, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/rote-sonne-du/205597205?i=205598275&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:33'),
(908629961, 'Knopfdruck-Rag', 'Knopfdruck-Rag', 'knopfdruck-rag', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 0, '', '1', 1638594694, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/knopfdruck-rag/908629939?i=908629961&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:34'),
(908629957, 'Verloren', 'Verloren', 'verloren', 'https://www.last.fm/music/Tobias+Burger/_/Verloren', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 0, '', '1', 1638594695, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/verloren/908629939?i=908629957&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:35'),
(205597210, 'Der Wetterhahn', 'Der Wetterhahn', 'der-wetterhahn', 'https://www.last.fm/music/Tobias+Burger/_/der+wetterhahn', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594697, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/der-wetterhahn/205597205?i=205597210&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:37'),
(205597302, 'Narben', 'Narben', 'narben', 'https://www.last.fm/music/Tobias+Burger/_/narben', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/a4/aa/32/a4aa32c5-5a1b-fd54-7503-8ac50529b7df/source/370x370bb.jpg', 0, '', '1', 1638594700, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/narben/205597205?i=205597302&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:40'),
(908629958, 'Ich muss weiter', 'Ich muss weiter', 'ich-muss-weiter', 'https://www.last.fm/music/Tobias+Burger/_/Ich+muss+weiter', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 0, '', '1', 1638594701, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/ich-muss-weiter/908629939?i=908629958&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:41'),
(908629962, 'Kreuz-Fahrt', 'Kreuz-Fahrt', 'kreuz-fahrt', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music5/v4/95/e6/df/95e6df35-ccaf-7ca1-1542-395380521400/source/370x370bb.jpg', 0, '', '1', 1638594703, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/kreuz-fahrt/908629939?i=908629962&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:11:43'),
(1390486718, 'Ð Ð¾Ð³Ð° (feat. 5 ÐÐ»ÑÑ & Mezza Morta)', 'Ð Ð¾Ð³Ð° (feat. 5 ÐÐ»ÑÑ & Mezza Morta)', '-feat-5-mezza-morta-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/2d/bb/31/2dbb3169-eaee-79b9-700a-df0d61bf9d66/source/370x370bb.jpg', 0, '', '1', 1638594922, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/%D1%80%D0%BE%D0%B3%D0%B0-feat-5-%D0%BF%D0%BB%D1%8E%D1%85-mezza-morta/1390486261?i=1390486718&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:15:22'),
(1592335749, 'Ð¢ÑÐ¼Ð½ÑÐµ Ð¾ÑÐºÐ¸ (feat. Ð¡Ð¼Ð¾ÐºÐ¸ ÐÐ¾, Mezza Morta, ÐÐ¸ÑÐ° ÐÑÑÐ¿Ð¸Ð½, Big D, Bess, BIG & 5 ÐÐ»ÑÑ)', 'Ð¢ÑÐ¼Ð½ÑÐµ Ð¾ÑÐºÐ¸ (feat. Ð¡Ð¼Ð¾ÐºÐ¸ ÐÐ¾, Mezza Morta, ÐÐ¸ÑÐ° ÐÑÑÐ¿Ð¸Ð½, Big D, Bess, BIG & 5 ÐÐ»ÑÑ)', '-feat-mezza-morta-big-d-bess-big-5-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music116/v4/ff/06/fc/ff06fc4a-1f6c-120c-4d2a-1a2f946c73d4/source/370x370bb.jpg', 0, '', '1', 1638594924, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/%D1%82%D1%91%D0%BC%D0%BD%D1%8B%D0%B5-%D0%BE%D1%87%D0%BA%D0%B8-feat-%D1%81%D0%BC%D0%BE%D0%BA%D0%B8-%D0%BC%D0%BE-mezza-morta-%D0%BC%D0%B8%D1%88%D0%B0-%D0%BA%D1%80%D1%83%D0%BF%D0%B8%D0%BD-big/1592335492?i=1592335749&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:15:24'),
(1574206886, '1000 (feat. DJ Nik One, ÐÐ¸ÑÐ° ÐÑÑÐ¿Ð¸Ð½ & ÐÐÐÐÐ)', '1000 (feat. DJ Nik One, ÐÐ¸ÑÐ° ÐÑÑÐ¿Ð¸Ð½ & ÐÐÐÐÐ)', '1000-feat-dj-nik-one-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/df/66/ce/df66ce9e-1dcb-98cc-289d-a4df2f6f722d/source/370x370bb.jpg', 0, '', '1', 1638594926, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://music.apple.com/us/album/1000-feat-dj-nik-one-%D0%BC%D0%B8%D1%88%D0%B0-%D0%BA%D1%80%D1%83%D0%BF%D0%B8%D0%BD-%D0%BC%D0%B5%D0%B7%D0%B7%D0%B0/1574206881?i=1574206886&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:15:26'),
(1501004034, 'Spezzata con grazia', 'Spezzata con grazia', 'spezzata-con-grazia', 'https://www.last.fm/music/Gres/_/Spezzata+con+grazia', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music114/v4/dd/ff/10/ddff10bd-5298-63b5-454b-e22df19cfb0b/source/370x370bb.jpg', 1, '', '1', 1638594928, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/spezzata-con-grazia/1501004030?i=1501004034&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:15:28'),
(1596494449, 'MÃMMÃ HÃ SCÃPÃTÃ UNÃ E-GIRL, Pt. III', 'MÃMMÃ HÃ SCÃPÃTÃ UNÃ E-GIRL, Pt. III', 'm-mm-h-sc-p-t-un-e-girl-pt-iii', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music116/v4/ef/fe/8d/effe8d37-c9b5-7fcc-d0d9-821afbc90aa3/source/370x370bb.jpg', 0, '', '1', 1638594930, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://music.apple.com/us/album/m%C3%A4mm%C3%A4-h%C3%B8-sc%C3%B8p%C3%A4t%C3%B8-un%C3%A4-e-girl-pt-iii/1596494441?i=1596494449&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:15:30'),
(916843364, 'Enfant Terrible (feat. Belzebass & Stereoliez)', 'Enfant Terrible (feat. Belzebass & Stereoliez)', 'enfant-terrible-feat-belzebass-stereoliez-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/c3/04/05/c3040531-2807-e6a2-3505-ad1e1008ab85/source/370x370bb.jpg', 0, '', '1', 1638594932, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/enfant-terrible-feat-belzebass-stereoliez/916840730?i=916843364&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:15:32'),
(421129752, 'Le Streghe', 'Le Streghe', 'le-streghe', 'https://www.last.fm/music/Lando+Fiorini/_/le+streghe', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/5e/bb/39/5ebb3930-39bb-8d86-b69e-71fcbc718142/source/370x370bb.jpg', 0, '', '1', 1638594934, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/le-streghe/421129714?i=421129752&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:15:34'),
(1513025969, 'Le foglie sui miei vestiti sono il sangue del parco', 'Le foglie sui miei vestiti sono il sangue del parco', 'le-foglie-sui-miei-vestiti-sono-il-sangue-del-parco', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/f2/cb/f5/f2cbf5b9-8ed5-a7b9-2b94-fdfd77787128/source/370x370bb.jpg', 0, '', '1', 1638594935, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/le-foglie-sui-miei-vestiti-sono-il-sangue-del-parco/1513025959?i=1513025969&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:15:35'),
(1250823923, 'Vuoi ballare con me (feat. Madh)', 'Vuoi ballare con me (feat. Madh)', 'vuoi-ballare-con-me-feat-madh-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/d6/41/84/d6418463-a17c-ce5b-e680-2767cbcf2d4b/source/370x370bb.jpg', 0, '', '1', 1638594937, 0, 1, '5.0', 0, 0, 2017, '', '', 'https://music.apple.com/us/album/vuoi-ballare-con-me-feat-madh/1250823399?i=1250823923&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:15:37'),
(1086699043, 'Le streghe', 'Le streghe', 'le-streghe', 'https://www.last.fm/music/Lando+Fiorini/_/le+streghe', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music49/v4/c4/09/dc/c409dc4a-3e7e-660c-01ac-3a1aca70454d/source/370x370bb.jpg', 0, '', '1', 1638594939, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/le-streghe/1086697810?i=1086699043&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:15:39'),
(1512822867, 'Le foglie sui miei vestiti sono il sangue del parco', 'Le foglie sui miei vestiti sono il sangue del parco', 'le-foglie-sui-miei-vestiti-sono-il-sangue-del-parco', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music123/v4/93/19/15/93191594-e3ad-96f0-e651-4cbba79d2447/source/370x370bb.jpg', 0, '', '1', 1638594941, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/le-foglie-sui-miei-vestiti-sono-il-sangue-del-parco/1512822859?i=1512822867&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:15:41'),
(294826995, 'Le Streghe', 'Le Streghe', 'le-streghe', 'https://www.last.fm/music/Lando+Fiorini/_/le+streghe', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/28/db/6c/28db6ca9-92bd-92db-5b8d-99ef80a7e5b5/source/370x370bb.jpg', 0, '', '1', 1638594943, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/le-streghe/294826711?i=294826995&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:15:43'),
(987202836, 'Le foglie sui miei vestiti sono il sangue del parco', 'Le foglie sui miei vestiti sono il sangue del parco', 'le-foglie-sui-miei-vestiti-sono-il-sangue-del-parco', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music7/v4/22/42/9b/22429b7d-67f1-9c94-3aeb-983c0def7ebf/source/370x370bb.jpg', 0, '', '1', 1638594946, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/le-foglie-sui-miei-vestiti-sono-il-sangue-del-parco/987202729?i=987202836&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:15:46'),
(1543261460, 'Le foglie sui miei vestiti sono il sangue del parco (demo)', 'Le foglie sui miei vestiti sono il sangue del parco (demo)', 'le-foglie-sui-miei-vestiti-sono-il-sangue-del-parco-demo-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/be/c1/94/bec194fc-664d-07b4-8439-fba9cb949a78/source/370x370bb.jpg', 0, '', '1', 1638594948, 0, 1, '5.0', 0, 0, 2017, '', '', 'https://music.apple.com/us/album/le-foglie-sui-miei-vestiti-sono-il-sangue-del-parco-demo/1543261258?i=1543261460&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:15:48'),
(1439404212, 'El Taxi (feat. Sensato & Osmani Garcia)', 'El Taxi (feat. Sensato & Osmani Garcia)', 'el-taxi-feat-sensato-osmani-garcia-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/b5/84/1b/b5841b45-da55-72ac-794b-a2e942913992/source/370x370bb.jpg', 0, '', '1', 1638595126, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/el-taxi-feat-sensato-osmani-garcia/1439404169?i=1439404212&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:18:46'),
(1439404410, 'Watagatapitusberry (feat. Lil Jon, Sensato, Black Point & El Cata)', 'Watagatapitusberry (feat. Lil Jon, Sensato, Black Point & El Cata)', 'watagatapitusberry-feat-lil-jon-sensato-black-point-el-cata-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music118/v4/0d/10/d7/0d10d71b-4d72-f0ca-39d0-396966979900/source/370x370bb.jpg', 0, '', '1', 1638595128, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/watagatapitusberry-feat-lil-jon-sensato-black-point/1439404242?i=1439404410&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:18:48'),
(1439396364, 'Watagatapitusberry (feat. Lil Jon, Sensato, Black Point & El Cata)', 'Watagatapitusberry (feat. Lil Jon, Sensato, Black Point & El Cata)', 'watagatapitusberry-feat-lil-jon-sensato-black-point-el-cata-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music114/v4/f7/72/be/f772bef3-ffbd-c0e5-2597-092deeb39cd3/source/370x370bb.jpg', 0, '', '1', 1638595129, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/watagatapitusberry-feat-lil-jon-sensato-black-point/1439396129?i=1439396364&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:18:49'),
(737053270, 'Global Warming (feat. Sensato)', 'Global Warming (feat. Sensato)', 'global-warming-feat-sensato-', 'https://www.last.fm/music/Pitbull/_/Global+Warming+Feat+Sensato', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/2d/75/d9/2d75d948-4745-4918-0db9-52e35d3e4a78/source/370x370bb.jpg', 1, '', '1', 1638595132, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/global-warming-feat-sensato/737053237?i=737053270&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:18:52'),
(891373088, 'El Taxi (feat. Osmani Garcia & Sensato)', 'El Taxi (feat. Osmani Garcia & Sensato)', 'el-taxi-feat-osmani-garcia-sensato-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/4e/ff/7a/4eff7a1b-d14b-fa53-fd3f-2b0083d59efa/source/370x370bb.jpg', 0, '', '1', 1638595135, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/el-taxi-feat-osmani-garcia-sensato-extended-mix/891372996?i=891373088&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:18:55'),
(321562874, 'Sensato', 'Sensato', 'sensato', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/67/63/0d/67630dd8-80cb-c7e1-9ef7-d42b79c8ad7e/source/370x370bb.jpg', 0, '', '1', 1638595136, 0, 1, '5.0', 0, 0, 2009, '', '', 'https://music.apple.com/us/album/sensato/321562856?i=321562874&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:18:56'),
(1456118791, 'El Mario\\&#39; de Tu Mujer (feat. Sensato)', 'El Mario\\&#39; de Tu Mujer (feat. Sensato)', 'el-mario-de-tu-mujer-feat-sensato-', 'https://www.last.fm/music/Don+Miguelo/_/El+Mario+De+Tu+Mujer+Feat+Sensato', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/eb/8a/29/eb8a29f4-46db-60e2-ab3c-8ab4d474316e/source/370x370bb.jpg', 0, '', '1', 1638595138, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/el-mario-de-tu-mujer-feat-sensato/1456118789?i=1456118791&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:18:58'),
(1445042297, 'Salud (feat. Reek Rude, Sensato & Wilmer Valderrama)', 'Salud (feat. Reek Rude, Sensato & Wilmer Valderrama)', 'salud-feat-reek-rude-sensato-wilmer-valderrama-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/82/87/81/828781d9-cb20-31e2-4bdf-01b99914757c/source/370x370bb.jpg', 0, '', '1', 1638595140, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/salud-feat-reek-rude-sensato-wilmer-valderrama/1445042071?i=1445042297&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:00'),
(945507935, 'El Taxi (feat. Osmani Garcia & Sensato)', 'El Taxi (feat. Osmani Garcia & Sensato)', 'el-taxi-feat-osmani-garcia-sensato-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music124/v4/48/1d/5c/481d5c2b-dd31-2892-b41d-c8a5493a93c6/source/370x370bb.jpg', 0, '', '1', 1638595141, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/el-taxi-feat-osmani-garcia-sensato/945507889?i=945507935&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:01'),
(1067408101, 'El Taxi (feat. Osmani Garcia & Sensato)', 'El Taxi (feat. Osmani Garcia & Sensato)', 'el-taxi-feat-osmani-garcia-sensato-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/01/b1/7a/01b17ae9-2c44-2ea1-74c0-5b47b9dc93a1/source/370x370bb.jpg', 0, '', '1', 1638595143, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/el-taxi-feat-osmani-garcia-sensato/1067407550?i=1067408101&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:03'),
(1452916590, 'Sensato', 'Sensato', 'sensato', 'https://www.last.fm/music/Lineal/_/Sensato', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/6b/9d/87/6b9d87c0-6dc9-f08c-f51a-88067d363bf2/source/370x370bb.jpg', 0, '', '1', 1638595144, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/sensato/1452916586?i=1452916590&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:04'),
(1439404281, 'Watagatapitusberry (feat. Lil Jon, Sensato, Black Point & El Cata)', 'Watagatapitusberry (feat. Lil Jon, Sensato, Black Point & El Cata)', 'watagatapitusberry-feat-lil-jon-sensato-black-point-el-cata-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/1f/f8/92/1ff892b9-36c1-33a6-fe12-52563c4a4db2/source/370x370bb.jpg', 0, '', '1', 1638595146, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/watagatapitusberry-feat-lil-jon-sensato-black-point/1439404052?i=1439404281&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:06'),
(381719800, 'Que Buena Tu Ta (feat. Black Point, Mozart La Para, Los Pepes, Monkey Black, Sensato \\&#34;Del Patio\\&#34; & Villano Sam) [Chosen Few DR Remix]', 'Que Buena Tu Ta (feat. Black Point, Mozart La Para, Los Pepes, Monkey Black, Sensato \\&#34;Del Patio\\&#34; & Villano Sam) [Chosen Few DR Remix]', 'que-buena-tu-ta-feat-black-point-mozart-la-para-los-pepes-monkey-black-sensato-del-patio-villano-sam-chosen-few-dr-remix-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/9f/e5/9a/9fe59a04-5b5c-2381-00e8-d072886d1c1f/source/370x370bb.jpg', 0, '', '1', 1638595149, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/que-buena-tu-ta-feat-black-point-mozart-la-para-los/381719478?i=381719800&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:09'),
(1574219547, 'Sensato', 'Sensato', 'sensato', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/d2/86/c4/d286c4d8-9986-9167-7369-89a682bff650/source/370x370bb.jpg', 0, '', '1', 1638595150, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://music.apple.com/us/album/sensato-ac%C3%BAstico/1574219543?i=1574219547&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:10'),
(1596414221, 'Sensato', 'Sensato', 'sensato', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music126/v4/81/ba/9c/81ba9cf6-40c9-81e5-a2ca-7f62f2c6c7a9/source/370x370bb.jpg', 0, '', '1', 1638595152, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://music.apple.com/us/album/sensato/1596414220?i=1596414221&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:12'),
(1514662077, 'Sensato', 'Sensato', 'sensato', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/9c/8f/32/9c8f3207-be0b-89d0-d958-bb4bb5b65909/source/370x370bb.jpg', 0, '', '1', 1638595154, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/sensato/1514662073?i=1514662077&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:14'),
(1552536771, 'Sensato', 'Sensato', 'sensato', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music114/v4/d2/12/c9/d212c9c5-db74-c9e4-83a2-a8beb9d45c80/source/370x370bb.jpg', 0, '', '1', 1638595156, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://music.apple.com/us/album/sensato/1552536770?i=1552536771&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:16'),
(1495112751, 'Bello (feat. Sensato Del Patio)', 'Bello (feat. Sensato Del Patio)', 'bello-feat-sensato-del-patio-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/40/5b/d5/405bd5ad-ffbb-074c-159f-f253c5069e64/source/370x370bb.jpg', 0, '', '1', 1638595158, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/bello-feat-sensato-del-patio/1495112749?i=1495112751&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:18'),
(736742086, 'Global Warming (feat. Sensato)', 'Global Warming (feat. Sensato)', 'global-warming-feat-sensato-', 'https://www.last.fm/music/Pitbull/_/Global+Warming+Feat+Sensato', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/91/16/ef/9116ef7d-1a03-5526-dfb0-26c625b3c665/source/370x370bb.jpg', 0, '', '1', 1638595160, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/global-warming-feat-sensato/736742055?i=736742086&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:20'),
(1135440510, 'El Taxi (feat. Osmani Garcia & Sensato)', 'El Taxi (feat. Osmani Garcia & Sensato)', 'el-taxi-feat-osmani-garcia-sensato-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/55/ac/c0/55acc0db-3055-83cd-83a8-871e3daba677/source/370x370bb.jpg', 0, '', '1', 1638595161, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/el-taxi-feat-osmani-garcia-sensato/1135440000?i=1135440510&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:21'),
(1451890594, 'Sensato', 'Sensato', 'sensato', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/38/76/f1/3876f1e5-8883-1459-3b4a-c8e30c676dc5/source/370x370bb.jpg', 0, '', '1', 1638595164, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/sensato/1451890593?i=1451890594&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:24'),
(1505172754, 'Sensato (feat. Primo)', 'Sensato (feat. Primo)', 'sensato-feat-primo-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music113/v4/a5/d5/5c/a5d55c61-ee47-e9c7-64da-029819f56f4e/source/370x370bb.jpg', 0, '', '1', 1638595166, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/sensato-feat-primo/1505172753?i=1505172754&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:26');
INSERT INTO `tbl_songs` (`id`, `song_title`, `keywords`, `song_seo`, `lastfm_url`, `ad_code`, `video_code`, `picture`, `popularity`, `description`, `song_status`, `posted_date`, `latest_one`, `ranking_order`, `rate_song`, `review_count`, `latest`, `song_year`, `amazon_url`, `google_url`, `itunes_url`, `itunes_price`, `refer_seo`, `country`, `currency`, `timeupdated`, `updated_by_itunes`) VALUES
(1444884527, 'Salud (feat. Reek Rude, Sensato & Wilmer Valderrama)', 'Salud (feat. Reek Rude, Sensato & Wilmer Valderrama)', 'salud-feat-reek-rude-sensato-wilmer-valderrama-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music118/v4/71/95/20/7195202d-4bc3-3db5-ac50-8f15b2ed44d0/source/370x370bb.jpg', 0, '', '1', 1638595168, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/salud-feat-reek-rude-sensato-wilmer-valderrama/1444884155?i=1444884527&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:28'),
(466779409, 'Crazy People', 'Crazy People', 'crazy-people', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/02/17/f5/0217f5fe-d1f7-3615-31bf-bacad221041d/source/370x370bb.jpg', 0, '', '1', 1638595170, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/crazy-people/466779391?i=466779409&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:30'),
(1590942524, 'Sensato (feat. Hampa & Rancheroâs Crew)', 'Sensato (feat. Hampa & Rancheroâs Crew)', 'sensato-feat-hampa-ranchero-s-crew-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/36/bd/52/36bd521d-b810-c959-ff6f-3ec01abdea42/source/370x370bb.jpg', 0, '', '1', 1638595172, 0, 1, '8.6', 1, 0, 2021, '', '', 'https://music.apple.com/us/album/sensato-feat-hampa-rancheros-crew/1590942518?i=1590942524&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:32'),
(1423643879, 'Sensato', 'Sensato', 'sensato', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/53/37/14/5337141f-2f37-4438-853f-b559e019d00e/source/370x370bb.jpg', 0, '', '1', 1638595174, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/sensato/1423641093?i=1423643879&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:34'),
(1154134121, 'Sensato', 'Sensato', 'sensato', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music62/v4/e4/2a/5c/e42a5ca3-4ba4-c03e-5f14-adc11d437c80/source/370x370bb.jpg', 0, '', '1', 1638595175, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/sensato/1154133891?i=1154134121&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:35'),
(1557785055, 'Sensato', 'Sensato', 'sensato', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music114/v4/9a/7a/e0/9a7ae054-42d4-96d6-c98c-cf4a2c6074a3/source/370x370bb.jpg', 0, '', '1', 1638595178, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://music.apple.com/us/album/sensato/1557785054?i=1557785055&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:38'),
(1456120303, '123 en 4 (feat. Sensato)', '123 en 4 (feat. Sensato)', '123-en-4-feat-sensato-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music123/v4/bd/44/52/bd445222-0c9c-61de-3ee0-e7c68435490a/source/370x370bb.jpg', 0, '', '1', 1638595179, 0, 1, '5.0', 0, 0, 2017, '', '', 'https://music.apple.com/us/album/123-en-4-feat-sensato/1456120302?i=1456120303&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:39'),
(1596130042, 'Global Warming (feat. Sensato)', 'Global Warming (feat. Sensato)', 'global-warming-feat-sensato-', 'https://www.last.fm/music/Pitbull/_/Global+Warming+Feat+Sensato', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music116/v4/c4/58/25/c458256c-5ce6-bdfe-1964-af8c180c73eb/source/370x370bb.jpg', 0, '', '1', 1638595181, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/global-warming-feat-sensato/1596130037?i=1596130042&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:41'),
(1525234171, 'Sensato', 'Sensato', 'sensato', 'https://www.last.fm/music/Zethae/_/Sensato', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/73/3b/c6/733bc6c9-032e-81ca-fea1-7aa86679a819/source/370x370bb.jpg', 0, '', '1', 1638595182, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/sensato/1525234168?i=1525234171&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:42'),
(1518816993, 'Sensato (feat. Ecologyk)', 'Sensato (feat. Ecologyk)', 'sensato-feat-ecologyk-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/14/84/52/1484525c-149c-8346-c48b-90070f5ed93a/source/370x370bb.jpg', 0, '', '1', 1638595184, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/sensato-feat-ecologyk/1518816978?i=1518816993&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:44'),
(1573661105, 'Sensato', 'Sensato', 'sensato', 'https://www.last.fm/music/Los+Repuestos/_/Sensato', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/f9/fb/5d/f9fb5db4-5cc9-eb2c-3e88-6f35029664a1/source/370x370bb.jpg', 0, '', '1', 1638595186, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://music.apple.com/us/album/sensato/1573661103?i=1573661105&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:46'),
(1439274931, 'El Taxi (feat. Sensato, Osmani Garcia & Lil Jon)', 'El Taxi (feat. Sensato, Osmani Garcia & Lil Jon)', 'el-taxi-feat-sensato-osmani-garcia-lil-jon-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/de/3b/a5/de3ba5d9-f4af-38a1-1b67-e72446223a49/source/370x370bb.jpg', 0, '', '1', 1638595188, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/el-taxi-feat-sensato-osmani-garcia-lil-jon-twrk/1439274571?i=1439274931&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:48'),
(1521553682, 'Sensato', 'Sensato', 'sensato', 'https://www.last.fm/music/Los+Repuestos/_/Sensato', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music113/v4/9e/65/18/9e6518af-adce-3174-fc79-5a48bb3a0224/source/370x370bb.jpg', 0, '', '1', 1638595190, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/sensato/1521553671?i=1521553682&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:50'),
(1517260687, 'Sensato', 'Sensato', 'sensato', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music123/v4/84/b4/ae/84b4ae77-0aab-64c3-929f-84fce56b7be4/source/370x370bb.jpg', 0, '', '1', 1638595192, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/sensato/1517260201?i=1517260687&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:52'),
(1529166058, 'SENSATO', 'SENSATO', 'sensato', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/33/1e/05/331e0573-7509-8e4d-4f92-6d856c78d919/source/370x370bb.jpg', 0, '', '1', 1638595194, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/sensato/1529166051?i=1529166058&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:54'),
(1569720378, 'Sensato (feat. BigCause)', 'Sensato (feat. BigCause)', 'sensato-feat-bigcause-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/6e/56/ab/6e56abf9-758d-113f-5a52-2ab330988023/source/370x370bb.jpg', 0, '', '1', 1638595195, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/sensato-feat-bigcause/1569720377?i=1569720378&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:19:55'),
(1439274928, 'El Taxi (feat. Sensato, Osmani Garcia & Lil Jon)', 'El Taxi (feat. Sensato, Osmani Garcia & Lil Jon)', 'el-taxi-feat-sensato-osmani-garcia-lil-jon-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/de/3b/a5/de3ba5d9-f4af-38a1-1b67-e72446223a49/source/370x370bb.jpg', 0, '', '1', 1638595197, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/el-taxi-feat-sensato-osmani-garcia-lil-jon-santarosa-remix/1439274571?i=1439274928&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:57'),
(1439274927, 'El Taxi (feat. Sensato, Osmani Garcia & Lil Jon)', 'El Taxi (feat. Sensato, Osmani Garcia & Lil Jon)', 'el-taxi-feat-sensato-osmani-garcia-lil-jon-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/de/3b/a5/de3ba5d9-f4af-38a1-1b67-e72446223a49/source/370x370bb.jpg', 0, '', '1', 1638595198, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/el-taxi-feat-sensato-osmani-garcia-lil-jon-machel/1439274571?i=1439274927&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:19:58'),
(541627978, 'Banana (feat. Sensato & Aexxi) [Miami Mix]', 'Banana (feat. Sensato & Aexxi) [Miami Mix]', 'banana-feat-sensato-aexxi-miami-mix-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/04/30/e7/0430e789-fd1f-5178-51c0-3dd524858df9/source/370x370bb.jpg', 0, '', '1', 1638595200, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/banana-feat-sensato-aexxi-miami-mix/541627326?i=541627978&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:20:00'),
(365694805, 'Que Buena Tu Ta (The Official Chosen Few Dr Remix) [feat. Black Point, Mozart La Para, Los Pepes, Monkey Black, Sensato del Patio & Villanosam]', 'Que Buena Tu Ta (The Official Chosen Few Dr Remix) [feat. Black Point, Mozart La Para, Los Pepes, Monkey Black, Sensato del Patio & Villanosam]', 'que-buena-tu-ta-the-official-chosen-few-dr-remix-feat-black-point-mozart-la-para-los-pepes-monkey-black-sensato-del-patio-villanosam-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/73/41/4e/73414ed4-7605-b89f-7395-22a1c66b7839/source/370x370bb.jpg', 0, '', '1', 1638595202, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/que-buena-tu-ta-the-official-chosen-few-dr-remix-feat/365694620?i=365694805&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:20:02'),
(466807002, 'Crazy People', 'Crazy People', 'crazy-people', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/0c/38/a7/0c38a7a2-831c-9423-fa8a-38e9b490e820/source/370x370bb.jpg', 0, '', '1', 1638595204, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/crazy-people/466806954?i=466807002&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:20:04'),
(1439404234, 'Que Lo Que (feat. Pitbull, Papayo & El Chevo)', 'Que Lo Que (feat. Pitbull, Papayo & El Chevo)', 'que-lo-que-feat-pitbull-papayo-el-chevo-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/b5/84/1b/b5841b45-da55-72ac-794b-a2e942913992/source/370x370bb.jpg', 0, '', '1', 1638595206, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/que-lo-que-feat-pitbull-papayo-el-chevo/1439404169?i=1439404234&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:20:06'),
(1439274576, 'El Taxi (feat. Sensato, Osmani Garcia & Lil Jon)', 'El Taxi (feat. Sensato, Osmani Garcia & Lil Jon)', 'el-taxi-feat-sensato-osmani-garcia-lil-jon-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/de/3b/a5/de3ba5d9-f4af-38a1-1b67-e72446223a49/source/370x370bb.jpg', 0, '', '1', 1638595208, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/el-taxi-feat-sensato-osmani-garcia-lil-jon-gregor/1439274571?i=1439274576&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:20:08'),
(1457411304, 'Ponte Sensato (feat. Los Gambinos)', 'Ponte Sensato (feat. Los Gambinos)', 'ponte-sensato-feat-los-gambinos-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music123/v4/7e/fd/54/7efd5463-9457-920e-2fd2-f326a17ab94c/source/370x370bb.jpg', 0, '', '1', 1638595210, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/ponte-sensato-feat-los-gambinos/1457411302?i=1457411304&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:20:10'),
(922881149, 'El Taxi (feat. Osmani Garcia & Sensato)', 'El Taxi (feat. Osmani Garcia & Sensato)', 'el-taxi-feat-osmani-garcia-sensato-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music3/v4/82/ec/7b/82ec7be0-cbf4-b8cb-7550-32cfd9d5651e/source/370x370bb.jpg', 0, '', '1', 1638595211, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/el-taxi-feat-osmani-garcia-sensato/922881081?i=922881149&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:20:11'),
(948775920, 'El Taxi (feat. Osmani Garcia & Sensato)', 'El Taxi (feat. Osmani Garcia & Sensato)', 'el-taxi-feat-osmani-garcia-sensato-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music3/v4/7c/3c/b6/7c3cb6fe-c7e0-29cf-b446-db399b7bbd0c/source/370x370bb.jpg', 0, '', '1', 1638595213, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/el-taxi-feat-osmani-garcia-sensato/948775910?i=948775920&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:20:13'),
(541627977, 'Banana (feat. Sensato & Aexxi) [Ibiza Mix]', 'Banana (feat. Sensato & Aexxi) [Ibiza Mix]', 'banana-feat-sensato-aexxi-ibiza-mix-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/04/30/e7/0430e789-fd1f-5178-51c0-3dd524858df9/source/370x370bb.jpg', 0, '', '1', 1638595214, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/banana-feat-sensato-aexxi-ibiza-mix/541627326?i=541627977&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:20:14'),
(1456682587, 'Que Lo Que (feat. Papayo)', 'Que Lo Que (feat. Papayo)', 'que-lo-que-feat-papayo-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/46/a7/95/46a7957b-afab-1354-65dc-64957a9905c7/source/370x370bb.jpg', 0, '', '1', 1638595216, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/que-lo-que-feat-papayo/1456682581?i=1456682587&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:20:16'),
(1075745452, 'The Finest Hours (2016)', 'The Finest Hours (2016)', 'the-finest-hours-2016-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Video128/v4/0c/db/fe/0cdbfe58-df2c-442b-23f9-21bb1538a324/source/370x370bb.jpg', 0, '', '1', 1638595425, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://itunes.apple.com/us/movie/the-finest-hours-2016/id1075745452?uo=4', 19.99, '', 'USA', 'USD', 0, '2021-12-04 05:23:45'),
(1070058899, 'Monster High: Great Scarrier Reef', 'Monster High: Great Scarrier Reef', 'monster-high-great-scarrier-reef', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Video69/v4/7a/1c/c6/7a1cc6cc-1fa8-1c90-78c6-5ac6fa027063/source/370x370bb.jpg', 0, '', '1', 1638595426, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://itunes.apple.com/us/movie/monster-high-great-scarrier-reef/id1070058899?uo=4', 14.99, '', 'USA', 'USD', 0, '2021-12-04 05:23:46'),
(545924086, 'Life Happens', 'Life Happens', 'life-happens', 'https://www.last.fm/music/Kat+Coiro/_/Life+Happens', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Video/v4/57/4b/9d/574b9d33-1134-cff7-b293-a729810a6bed/source/370x370bb.jpg', 0, '', '1', 1638595428, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://itunes.apple.com/us/movie/life-happens/id545924086?uo=4', 14.99, '', 'USA', 'USD', 0, '2021-12-04 05:23:48'),
(536492036, 'The Deep Blue Sea', 'The Deep Blue Sea', 'the-deep-blue-sea', 'https://www.last.fm/music/Terence+Davies/_/The+Deep+Blue+Sea', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Video/v4/fb/48/ea/fb48eaaf-1df3-5802-3a0a-e9d24ad0b33c/source/370x370bb.jpg', 0, '', '1', 1638595429, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://itunes.apple.com/us/movie/the-deep-blue-sea/id536492036?uo=4', 12.99, '', 'USA', 'USD', 0, '2021-12-04 05:23:49'),
(1018927317, 'Monster High: Boo York, Boo York', 'Monster High: Boo York, Boo York', 'monster-high-boo-york-boo-york', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Video5/v4/29/88/64/298864b6-282e-d991-0b2c-40026a6c84d8/source/370x370bb.jpg', 0, '', '1', 1638595431, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://itunes.apple.com/us/movie/monster-high-boo-york-boo-york/id1018927317?uo=4', 14.99, '', 'USA', 'USD', 0, '2021-12-04 05:23:51'),
(1165626451, 'It Had to Be You', 'It Had to Be You', 'it-had-to-be-you', 'https://www.last.fm/music/Sasha+Gordon/_/It+Had+to+Be+You', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Video71/v4/96/a4/35/96a435f5-79ab-d2bd-0ca5-5d11830d542d/source/370x370bb.jpg', 0, '', '1', 1638595432, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://itunes.apple.com/us/movie/it-had-to-be-you/id1165626451?uo=4', 9.99, '', 'USA', 'USD', 0, '2021-12-04 05:23:52'),
(1227561059, 'Tom and Jerry: Willy Wonka & the Chocolate Factory', 'Tom and Jerry: Willy Wonka & the Chocolate Factory', 'tom-and-jerry-willy-wonka-the-chocolate-factory', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Video127/v4/58/f9/76/58f97664-312e-072d-e53e-8bb56c2184c1/source/370x370bb.jpg', 0, '', '1', 1638595434, 0, 1, '5.0', 0, 0, 2017, '', '', 'https://itunes.apple.com/us/movie/tom-and-jerry-willy-wonka-the-chocolate-factory/id1227561059?uo=4', 14.99, '', 'USA', 'USD', 0, '2021-12-04 05:23:54'),
(376326845, 'Rachel, Rachel', 'Rachel, Rachel', 'rachel-rachel', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Video/v4/1b/3e/d1/1b3ed17f-0808-a769-c403-69cdc28b4ee4/source/370x370bb.jpg', 0, '', '1', 1638595435, 0, 1, '5.0', 0, 0, 1968, '', '', 'https://itunes.apple.com/us/movie/rachel-rachel/id376326845?uo=4', 6.99, '', 'USA', 'USD', 0, '2021-12-04 05:23:55'),
(256295676, 'A Dog\\&#39;s Breakfast', 'A Dog\\&#39;s Breakfast', 'a-dog-s-breakfast', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Video/v4/20/14/1a/20141a9d-a921-8a2f-9b4b-628ae117fc9b/source/370x370bb.jpg', 0, '', '1', 1638595437, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://itunes.apple.com/us/movie/a-dogs-breakfast/id256295676?uo=4', 9.99, '', 'USA', 'USD', 0, '2021-12-04 05:23:57'),
(80078470, 'For Florence-Ellen Bukstel/Kate McDonnell/Siobhan Quinn', 'For Florence-Ellen Bukstel/Kate McDonnell/Siobhan Quinn', 'for-florence-ellen-bukstel-kate-mcdonnell-siobhan-quinn', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/bd/39/19/bd391960-781f-edab-c5c6-7498c5b3a3c2/source/370x370bb.jpg', 0, '', '1', 1638595439, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/for-florence-ellen-bukstel-kate-mcdonnell-siobhan-quinn/80078613?i=80078470&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:23:59'),
(678408133, 'Lost', 'Lost', 'lost', 'https://www.last.fm/music/Rachel+Kate/_/Lost', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music6/v4/2e/16/d7/2e16d7bd-846d-177c-a9eb-a64d59828ebc/source/370x370bb.jpg', 0, '', '1', 1638595441, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/lost/678407922?i=678408133&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:01'),
(678408120, 'Hell Is Your Home', 'Hell Is Your Home', 'hell-is-your-home', 'https://www.last.fm/music/Rachel+Kate/_/Hell+Is+Your+Home', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music6/v4/2e/16/d7/2e16d7bd-846d-177c-a9eb-a64d59828ebc/source/370x370bb.jpg', 0, '', '1', 1638595443, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/hell-is-your-home/678407922?i=678408120&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:03'),
(678408136, 'Dancin\\&#39; Shoes', 'Dancin\\&#39; Shoes', 'dancin-shoes', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music6/v4/2e/16/d7/2e16d7bd-846d-177c-a9eb-a64d59828ebc/source/370x370bb.jpg', 0, '', '1', 1638595444, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/dancin-shoes/678407922?i=678408136&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:04'),
(678408138, 'Nobody\\&#39;s Fool', 'Nobody\\&#39;s Fool', 'nobody-s-fool', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music6/v4/2e/16/d7/2e16d7bd-846d-177c-a9eb-a64d59828ebc/source/370x370bb.jpg', 0, '', '1', 1638595446, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/nobodys-fool/678407922?i=678408138&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:06'),
(678408139, 'Lullaby for Baby Jack and Esme', 'Lullaby for Baby Jack and Esme', 'lullaby-for-baby-jack-and-esme', 'https://www.last.fm/music/Rachel+Kate/_/Lullaby+for+Baby+Jack+and+Esme', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music6/v4/2e/16/d7/2e16d7bd-846d-177c-a9eb-a64d59828ebc/source/370x370bb.jpg', 0, '', '1', 1638595449, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/lullaby-for-baby-jack-and-esme/678407922?i=678408139&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:09'),
(678408135, 'Actress', 'Actress', 'actress', 'https://www.last.fm/music/Rachel+Kate/_/Actress', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music6/v4/2e/16/d7/2e16d7bd-846d-177c-a9eb-a64d59828ebc/source/370x370bb.jpg', 0, '', '1', 1638595451, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/actress/678407922?i=678408135&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:11'),
(678408132, 'My Painting', 'My Painting', 'my-painting', 'https://www.last.fm/music/Rachel+Kate/_/My+Painting', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music6/v4/2e/16/d7/2e16d7bd-846d-177c-a9eb-a64d59828ebc/source/370x370bb.jpg', 0, '', '1', 1638595452, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/my-painting/678407922?i=678408132&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:12'),
(678408134, 'Oh My God', 'Oh My God', 'oh-my-god', 'https://www.last.fm/music/Rachel+Kate/_/Oh+My+God', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music6/v4/2e/16/d7/2e16d7bd-846d-177c-a9eb-a64d59828ebc/source/370x370bb.jpg', 0, '', '1', 1638595454, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/oh-my-god/678407922?i=678408134&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:14'),
(678408137, 'Thanks Cheryl', 'Thanks Cheryl', 'thanks-cheryl', 'https://www.last.fm/music/Rachel+Kate/_/Thanks+Cheryl', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music6/v4/2e/16/d7/2e16d7bd-846d-177c-a9eb-a64d59828ebc/source/370x370bb.jpg', 0, '', '1', 1638595457, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/thanks-cheryl/678407922?i=678408137&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:17'),
(678408130, 'This Institution', 'This Institution', 'this-institution', 'https://www.last.fm/music/Rachel+Kate/_/This+Institution', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music6/v4/2e/16/d7/2e16d7bd-846d-177c-a9eb-a64d59828ebc/source/370x370bb.jpg', 0, '', '1', 1638595459, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/this-institution/678407922?i=678408130&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:19'),
(1537035473, 'Kiss Me, Kate', 'Kiss Me, Kate', 'kiss-me-kate', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Video114/v4/fb/86/a5/fb86a54c-83c4-72e3-ed07-71815aed92ae/source/370x370bb.jpg', 0, '', '1', 1638595461, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://itunes.apple.com/us/movie/kiss-me-kate/id1537035473?uo=4', 9.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:21'),
(1131906732, 'Men Go to Battle', 'Men Go to Battle', 'men-go-to-battle', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Video71/v4/d0/5f/0b/d05f0bcb-23fe-1bcb-72f8-4b90fb4edd98/source/370x370bb.jpg', 0, '', '1', 1638595463, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://itunes.apple.com/us/movie/men-go-to-battle/id1131906732?uo=4', 9.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:23'),
(1042870042, 'A Wonderful Cloud', 'A Wonderful Cloud', 'a-wonderful-cloud', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Video2/v4/1a/b5/f6/1ab5f618-249e-b217-de2f-4ea03769a8d4/source/370x370bb.jpg', 0, '', '1', 1638595464, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://itunes.apple.com/us/movie/a-wonderful-cloud/id1042870042?uo=4', 9.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:24'),
(783801490, 'Rachel & Kate\\&#39;s Spiritual Speak', 'Rachel & Kate\\&#39;s Spiritual Speak', 'rachel-kate-s-spiritual-speak', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Podcasts115/v4/e5/02/84/e50284df-a51d-5ad6-de3c-ca3c3e99fd90/mza_5239954790305440726.jpg/370x370bb.jpg', 0, '', '1', 1638595466, 0, 1, '5.0', 0, 0, 2017, '', '', 'https://podcasts.apple.com/us/podcast/rachel-kates-spiritual-speak/id783801490?uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:24:26'),
(1098011892, 'Hello My Name Is Frank', 'Hello My Name Is Frank', 'hello-my-name-is-frank', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Video7/v4/a8/ed/20/a8ed2029-8652-cf92-0811-118f2e7b6a19/source/370x370bb.jpg', 0, '', '1', 1638595468, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://itunes.apple.com/us/movie/hello-my-name-is-frank/id1098011892?uo=4', 5.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:28'),
(1454457648, 'A Christmas Song (Reprise)', 'A Christmas Song (Reprise)', 'a-christmas-song-reprise-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/60/66/18/606618c0-d223-42a5-b5c2-c344d3737b35/source/370x370bb.jpg', 0, '', '1', 1638595470, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/a-christmas-song-reprise/1454457539?i=1454457648&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:24:30'),
(1525644550, 'The Complex: Lockdown', 'The Complex: Lockdown', 'the-complex-lockdown', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Video124/v4/2c/33/db/2c33dbd9-b2a4-4a40-e81f-f1bc6c4f7ec1/pr_source.jpg/370x370bb.jpg', 0, '', '1', 1638595472, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://itunes.apple.com/us/movie/the-complex-lockdown/id1525644550?uo=4', 9.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:32'),
(1454457651, 'The Story of Buddy the Elf', 'The Story of Buddy the Elf', 'the-story-of-buddy-the-elf', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/60/66/18/606618c0-d223-42a5-b5c2-c344d3737b35/source/370x370bb.jpg', 0, '', '1', 1638595473, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/the-story-of-buddy-the-elf/1454457539?i=1454457651&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:24:33'),
(1547759418, 'First Blush', 'First Blush', 'first-blush', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Video114/v4/c6/11/0c/c6110c7d-83e8-950a-e313-62d245a5c5ec/source/370x370bb.jpg', 0, '', '1', 1638595475, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://itunes.apple.com/us/movie/first-blush/id1547759418?uo=4', 9.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:35'),
(1557559534, 'Quezon\\&#39;s Game', 'Quezon\\&#39;s Game', 'quezon-s-game', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Video114/v4/a9/80/30/a9803050-e5cb-c59f-2a3b-5112595a0ed1/source/370x370bb.jpg', 0, '', '1', 1638595477, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://itunes.apple.com/us/movie/quezons-game/id1557559534?uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:24:37'),
(1128029294, 'The Purgation', 'The Purgation', 'the-purgation', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Video50/v4/6a/76/c8/6a76c832-dd9e-d54b-427e-dc8cbf8b13e6/source/370x370bb.jpg', 0, '', '1', 1638595479, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://itunes.apple.com/us/movie/the-purgation/id1128029294?uo=4', 9.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:39'),
(1141920014, 'Medley: The Black Watch Polka / Stumpie / The Fiddler\\&#39;s Joy / Kate Dalrymple / Rachel Rae / The Battle of the Somme', 'Medley: The Black Watch Polka / Stumpie / The Fiddler\\&#39;s Joy / Kate Dalrymple / Rachel Rae / The Battle of the Somme', 'medley-the-black-watch-polka-stumpie-the-fiddler-s-joy-kate-dalrymple-rachel-rae-the-battle-of-the-somme', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/70/f0/cf/70f0cfd5-113b-2167-974f-ef2f266c0424/source/370x370bb.jpg', 0, '', '1', 1638595481, 0, 1, '5.0', 0, 0, 1971, '', '', 'https://music.apple.com/us/album/medley-the-black-watch-polka-stumpie-the-fiddlers/1141918688?i=1141920014&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:24:41'),
(1556948950, 'Fever (feat. Rachel Kate)', 'Fever (feat. Rachel Kate)', 'fever-feat-rachel-kate-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/7d/4b/2f/7d4b2f3d-afe6-9b9a-d2d8-959cb0effc08/source/370x370bb.jpg', 0, '', '1', 1638595482, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://music.apple.com/us/album/fever-feat-rachel-kate/1556948948?i=1556948950&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:42'),
(1359554319, 'Elsewhere', 'Elsewhere', 'elsewhere', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Video118/v4/c6/7e/29/c67e29be-7f53-b6e0-2cf1-79b502329cda/source/370x370bb.jpg', 0, '', '1', 1638595483, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://itunes.apple.com/us/movie/elsewhere/id1359554319?uo=4', 8.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:43'),
(1387722595, 'In America', 'In America', 'in-america', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/98/29/f9/9829f9d8-ec55-85a1-f264-e454b2e8aaa9/source/370x370bb.jpg', 0, '', '1', 1638595485, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/in-america/1387722298?i=1387722595&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:45'),
(1144266830, 'Medley: The Black Watch Polka / Stumpie / The Fiddler\\&#39;s Joy / Kate Dalrymple / Rachel Rae / The Battle of the Somme', 'Medley: The Black Watch Polka / Stumpie / The Fiddler\\&#39;s Joy / Kate Dalrymple / Rachel Rae / The Battle of the Somme', 'medley-the-black-watch-polka-stumpie-the-fiddler-s-joy-kate-dalrymple-rachel-rae-the-battle-of-the-somme', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music62/v4/8b/82/fb/8b82fbe7-ec1a-2423-fc16-23695a462033/source/370x370bb.jpg', 0, '', '1', 1638595487, 0, 1, '5.0', 0, 0, 1971, '', '', 'https://music.apple.com/us/album/medley-the-black-watch-polka-stumpie-the-fiddlers/1144265808?i=1144266830&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:24:47'),
(1387722599, 'Where Is Love', 'Where Is Love', 'where-is-love', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/98/29/f9/9829f9d8-ec55-85a1-f264-e454b2e8aaa9/source/370x370bb.jpg', 0, '', '1', 1638595488, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/where-is-love/1387722298?i=1387722599&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:48'),
(1387722597, 'My Life Is Mud', 'My Life Is Mud', 'my-life-is-mud', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/98/29/f9/9829f9d8-ec55-85a1-f264-e454b2e8aaa9/source/370x370bb.jpg', 0, '', '1', 1638595490, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/my-life-is-mud/1387722298?i=1387722597&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:50'),
(1387722594, 'Mama\\&#39;s Lullabye', 'Mama\\&#39;s Lullabye', 'mama-s-lullabye', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/98/29/f9/9829f9d8-ec55-85a1-f264-e454b2e8aaa9/source/370x370bb.jpg', 0, '', '1', 1638595492, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/mamas-lullabye/1387722298?i=1387722594&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:52'),
(1387722601, 'Mama Holds the Door', 'Mama Holds the Door', 'mama-holds-the-door', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/98/29/f9/9829f9d8-ec55-85a1-f264-e454b2e8aaa9/source/370x370bb.jpg', 0, '', '1', 1638595494, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/mama-holds-the-door/1387722298?i=1387722601&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:54'),
(1387722598, 'A New Life', 'A New Life', 'a-new-life', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/98/29/f9/9829f9d8-ec55-85a1-f264-e454b2e8aaa9/source/370x370bb.jpg', 0, '', '1', 1638595495, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/a-new-life/1387722298?i=1387722598&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:55'),
(1387722600, 'The Light of My Life', 'The Light of My Life', 'the-light-of-my-life', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/98/29/f9/9829f9d8-ec55-85a1-f264-e454b2e8aaa9/source/370x370bb.jpg', 0, '', '1', 1638595497, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/the-light-of-my-life/1387722298?i=1387722600&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:57'),
(1387722596, 'The Open Sky', 'The Open Sky', 'the-open-sky', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/98/29/f9/9829f9d8-ec55-85a1-f264-e454b2e8aaa9/source/370x370bb.jpg', 0, '', '1', 1638595499, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/the-open-sky/1387722298?i=1387722596&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:24:59'),
(887910136, 'This Little Light of Mine / Go Tell It on the Mountain', 'This Little Light of Mine / Go Tell It on the Mountain', 'this-little-light-of-mine-go-tell-it-on-the-mountain', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/3d/c5/a9/3dc5a9e9-bdd5-cf99-9c20-002900e585d7/source/370x370bb.jpg', 0, '', '1', 1638595501, 0, 1, '5.0', 0, 0, 1998, '', '', 'https://music.apple.com/us/album/this-little-light-of-mine-go-tell-it-on-the-mountain/887905780?i=887910136&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:25:01'),
(1491281501, 'Here in My Heart (Song) [feat. Kate Hume, Charlotte Pourret Wythe, Rachel Bingham, Colin Salmon, Bailey Brooks, Lily Stanley, Hadlee Snow & Tristan Ward]', 'Here in My Heart (Song) [feat. Kate Hume, Charlotte Pourret Wythe, Rachel Bingham, Colin Salmon, Bailey Brooks, Lily Stanley, Hadlee Snow & Tristan Ward]', 'here-in-my-heart-song-feat-kate-hume-charlotte-pourret-wythe-rachel-bingham-colin-salmon-bailey-brooks-lily-stanley-hadlee-snow-tristan-ward-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music123/v4/0b/64/bd/0b64bd82-fd6d-c3ad-56c2-dcd97726acb3/source/370x370bb.jpg', 0, '', '1', 1638595502, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/here-in-my-heart-song-feat-kate-hume-charlotte-pourret/1491281496?i=1491281501&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:25:02'),
(1475795071, 'Myriologues (Laura, Rachel, Annie, Chloe, Maddie, Kate, Dale, Harry, Pete, Et Al.)', 'Myriologues (Laura, Rachel, Annie, Chloe, Maddie, Kate, Dale, Harry, Pete, Et Al.)', 'myriologues-laura-rachel-annie-chloe-maddie-kate-dale-harry-pete-et-al-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music123/v4/28/e7/34/28e73495-c7b8-31b1-dade-ca639fc61bb0/source/370x370bb.jpg', 0, '', '1', 1638595504, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/myriologues-laura-rachel-annie-chloe-maddie-kate-dale/1475794912?i=1475795071&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:25:04'),
(1553813697, 'Stay At Home Mom', 'Stay At Home Mom', 'stay-at-home-mom', 'https://www.last.fm/music/Rachel+Kate/_/Stay+At+Home+Mom', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/58/bf/1c/58bf1c98-87dc-46c9-fdd4-1b54c523ad47/source/370x370bb.jpg', 0, '', '1', 1638595506, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://music.apple.com/us/album/stay-at-home-mom/1553813696?i=1553813697&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:25:06'),
(1530762621, 'The Everything Bagel', 'The Everything Bagel', 'the-everything-bagel', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Podcasts125/v4/11/66/1b/11661b3d-dc28-d196-b974-b7128524fc2f/mza_15076061265392278849.jpg/370x370bb.jpg', 0, '', '1', 1638595507, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://podcasts.apple.com/us/podcast/the-everything-bagel/id1530762621?uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:25:07'),
(1027688258, 'Urban Turban', 'Urban Turban', 'urban-turban', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Video5/v4/fe/a1/d2/fea1d2dc-0225-16d8-70bc-e32b4bae2006/source/370x370bb.jpg', 0, '', '1', 1638595509, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://itunes.apple.com/us/movie/urban-turban/id1027688258?uo=4', 12.99, '', 'USA', 'USD', 0, '2021-12-04 05:25:09'),
(1534969575, 'ABCâs of Dating', 'ABCâs of Dating', 'abc-s-of-dating', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Podcasts115/v4/80/76/43/80764317-50c2-1071-12cb-43f5c8a88f6e/mza_6639952949102079721.jpg/370x370bb.jpg', 0, '', '1', 1638595511, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://podcasts.apple.com/us/podcast/abcs-of-dating/id1534969575?uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:25:11'),
(1445529640, 'Tous les mÃªmes', 'Tous les mÃªmes', 'tous-les-m-mes', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595763, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/tous-les-m%C3%AAmes/1445529165?i=1445529640&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:23'),
(1481586190, 'Mon corps', 'Mon corps', 'mon-corps', 'https://www.last.fm/music/The+Glossy+Sisters/_/Mon+corps', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/14/49/3b/14493ba1-d3a1-7cf8-96df-9a01716344db/source/370x370bb.jpg', 0, 'N/A', '1', 1638595765, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/mon-corps/1481586182?i=1481586190&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:29:25'),
(1445529404, 'Fais-moi mal johnny', 'Fais-moi mal johnny', 'fais-moi-mal-johnny', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595767, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/fais-moi-mal-johnny/1445529165?i=1445529404&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:27'),
(1445529509, 'Rolling in the Deep', 'Rolling in the Deep', 'rolling-in-the-deep', 'https://www.last.fm/music/The+Glossy+Sisters/_/Rolling+in+the+Deep', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595769, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/rolling-in-the-deep/1445529165?i=1445529509&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:29'),
(1093572789, 'L\\&#39;accordÃ©oniste', 'L\\&#39;accordÃ©oniste', 'l-accord-oniste', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music49/v4/74/34/8c/74348c00-b7b5-4893-910d-754e4d49b54f/source/370x370bb.jpg', 0, '', '1', 1638595771, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/laccord%C3%A9oniste/1093572569?i=1093572789&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:31'),
(1093572714, 'I\\&#39;d Rather Be an Old Man\\&#39;s Sweetheart', 'I\\&#39;d Rather Be an Old Man\\&#39;s Sweetheart', 'i-d-rather-be-an-old-man-s-sweetheart', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music49/v4/74/34/8c/74348c00-b7b5-4893-910d-754e4d49b54f/source/370x370bb.jpg', 0, '', '1', 1638595773, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/id-rather-be-an-old-mans-sweetheart/1093572569?i=1093572714&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:33'),
(1093572771, 'I Kissed a Girl', 'I Kissed a Girl', 'i-kissed-a-girl', 'https://www.last.fm/music/The+Glossy+Sisters/_/I+Kissed+a+Girl', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music49/v4/74/34/8c/74348c00-b7b5-4893-910d-754e4d49b54f/source/370x370bb.jpg', 0, '', '1', 1638595775, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/i-kissed-a-girl/1093572569?i=1093572771&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:35'),
(1093572656, 'DÃ©jÃ  vu', 'DÃ©jÃ  vu', 'd-j-vu', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music49/v4/74/34/8c/74348c00-b7b5-4893-910d-754e4d49b54f/source/370x370bb.jpg', 0, '', '1', 1638595777, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/d%C3%A9j%C3%A0-vu/1093572569?i=1093572656&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:37'),
(1093572779, 'J\'me fume', 'J\'me fume', 'jme-fume', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music49/v4/74/34/8c/74348c00-b7b5-4893-910d-754e4d49b54f/source/370x370bb.jpg', 0, 'N/A', '1', 1638595779, 0, 7, '6.4', 2, 1, 2016, '', '', 'https://music.apple.com/us/album/jme-fume/1093572569?i=1093572779&uo=4', 0, '', 'USA', 'USD', 1638669790, '2021-12-04 05:29:39'),
(1093572783, 'Brillant babillage', 'Brillant babillage', 'brillant-babillage', 'https://www.last.fm/music/The+Glossy+Sisters/_/Brillant+babillage', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music49/v4/74/34/8c/74348c00-b7b5-4893-910d-754e4d49b54f/source/370x370bb.jpg', 0, '', '1', 1638595782, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/brillant-babillage/1093572569?i=1093572783&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:42'),
(958725932, 'Sister Wine', 'Sister Wine', 'sister-wine', 'https://www.last.fm/music/Glossy+Jesus/_/Sister+Wine', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music3/v4/f0/73/98/f0739899-1531-d32f-2446-431f4ea003f7/source/370x370bb.jpg', 0, '', '1', 1638595783, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/sister-wine/958725892?i=958725932&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:29:43'),
(1445529615, 'L\\&#39; accordÃ©oniste', 'L\\&#39; accordÃ©oniste', 'l-accord-oniste', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595784, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/l-accord%C3%A9oniste/1445529165?i=1445529615&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:44'),
(1481586555, 'Sale pute, pt. 2', 'Sale pute, pt. 2', 'sale-pute-pt-2', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/14/49/3b/14493ba1-d3a1-7cf8-96df-9a01716344db/source/370x370bb.jpg', 0, '', '1', 1638595786, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/sale-pute-pt-2/1481586182?i=1481586555&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:29:46'),
(1481586202, 'Sale pute, pt. 1', 'Sale pute, pt. 1', 'sale-pute-pt-1', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/14/49/3b/14493ba1-d3a1-7cf8-96df-9a01716344db/source/370x370bb.jpg', 0, '', '1', 1638595788, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/sale-pute-pt-1/1481586182?i=1481586202&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:29:48'),
(1481586185, 'Danse', 'Danse', 'danse', 'https://www.last.fm/music/The+Glossy+Sisters/_/Danse', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/14/49/3b/14493ba1-d3a1-7cf8-96df-9a01716344db/source/370x370bb.jpg', 0, 'N/A', '1', 1638595790, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/danse/1481586182?i=1481586185&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:29:50'),
(1445529496, 'Sale pute', 'Sale pute', 'sale-pute', 'https://www.last.fm/music/The+Glossy+Sisters/_/Sale+pute', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595791, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/sale-pute/1445529165?i=1445529496&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:51'),
(1445529253, 'Mademoiselle', 'Mademoiselle', 'mademoiselle', 'https://www.last.fm/music/The+Glossy+Sisters/_/Mademoiselle', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595793, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/mademoiselle/1445529165?i=1445529253&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:53'),
(1445529635, 'Diamonds Are a Girl\\&#39;s Best Friend', 'Diamonds Are a Girl\\&#39;s Best Friend', 'diamonds-are-a-girl-s-best-friend', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595795, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/diamonds-are-a-girls-best-friend/1445529165?i=1445529635&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:55'),
(1481586192, 'Laisse moi choisir', 'Laisse moi choisir', 'laisse-moi-choisir', 'https://www.last.fm/music/The+Glossy+Sisters/_/Laisse+moi+choisir', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/14/49/3b/14493ba1-d3a1-7cf8-96df-9a01716344db/source/370x370bb.jpg', 0, '', '1', 1638595797, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/laisse-moi-choisir/1481586182?i=1481586192&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:29:57'),
(1445529183, 'Deja Vu', 'Deja Vu', 'deja-vu', 'https://www.last.fm/music/The+Glossy+Sisters/_/Deja+Vu', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595799, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/deja-vu/1445529165?i=1445529183&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:29:59'),
(1445529416, 'I Kissed a Girl', 'I Kissed a Girl', 'i-kissed-a-girl', 'https://www.last.fm/music/The+Glossy+Sisters/_/I+Kissed+a+Girl', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595800, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/i-kissed-a-girl/1445529165?i=1445529416&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:30:00'),
(1445529273, 'The Boy Does Nothing', 'The Boy Does Nothing', 'the-boy-does-nothing', 'https://www.last.fm/music/The+Glossy+Sisters/_/The+Boy+Does+Nothing', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595802, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/the-boy-does-nothing/1445529165?i=1445529273&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:30:02'),
(1481586196, 'Je suis un visage', 'Je suis un visage', 'je-suis-un-visage', 'https://www.last.fm/music/The+Glossy+Sisters/_/Je+suis+un+visage', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/14/49/3b/14493ba1-d3a1-7cf8-96df-9a01716344db/source/370x370bb.jpg', 0, '', '1', 1638595803, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/je-suis-un-visage/1481586182?i=1481586196&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:30:03'),
(1445529624, 'Endangered Species', 'Endangered Species', 'endangered-species', 'https://www.last.fm/music/The+Glossy+Sisters/_/Endangered+Species', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595805, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/endangered-species/1445529165?i=1445529624&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:30:05'),
(1481586551, 'C\\&#39;est pas des maniÃ¨res', 'C\\&#39;est pas des maniÃ¨res', 'c-est-pas-des-mani-res', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/14/49/3b/14493ba1-d3a1-7cf8-96df-9a01716344db/source/370x370bb.jpg', 0, '', '1', 1638595807, 0, 1, '5.0', 0, 1, 2019, '', '', 'https://music.apple.com/us/album/cest-pas-des-mani%C3%A8res/1481586182?i=1481586551&uo=4', 1.29, '', 'USA', 'USD', 1640777140, '2021-12-04 05:30:07'),
(1445529514, 'I\\&#39;d Rather Be an Old Man S Sweetheart', 'I\\&#39;d Rather Be an Old Man S Sweetheart', 'i-d-rather-be-an-old-man-s-sweetheart', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595808, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/id-rather-be-an-old-man-s-sweetheart/1445529165?i=1445529514&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:30:08'),
(1481586204, 'Jalouse', 'Jalouse', 'jalouse', 'https://www.last.fm/music/The+Glossy+Sisters/_/Jalouse', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/14/49/3b/14493ba1-d3a1-7cf8-96df-9a01716344db/source/370x370bb.jpg', 0, '', '1', 1638595810, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/jalouse/1481586182?i=1481586204&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:30:10'),
(1481586565, 'Toi aussi', 'Toi aussi', 'toi-aussi', 'https://www.last.fm/music/The+Glossy+Sisters/_/Toi+aussi', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/14/49/3b/14493ba1-d3a1-7cf8-96df-9a01716344db/source/370x370bb.jpg', 0, '', '1', 1638595812, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/toi-aussi/1481586182?i=1481586565&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:30:12'),
(1481586191, 'Curieuse', 'Curieuse', 'curieuse', 'https://www.last.fm/music/The+Glossy+Sisters/_/Curieuse', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/14/49/3b/14493ba1-d3a1-7cf8-96df-9a01716344db/source/370x370bb.jpg', 0, '', '1', 1638595815, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/curieuse/1481586182?i=1481586191&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:30:15'),
(1445529427, 'J\\&#39;me fume', 'J\\&#39;me fume', 'j-me-fume', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/0c/65/dd/0c65dd01-6049-2e44-f81d-5a3f12485ce7/source/370x370bb.jpg', 0, '', '1', 1638595817, 0, 1, '6.5', 1, 0, 2018, '', '', 'https://music.apple.com/us/album/jme-fume/1445529165?i=1445529427&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:30:17'),
(1481586559, 'Sous tes doigts', 'Sous tes doigts', 'sous-tes-doigts', 'https://www.last.fm/music/The+Glossy+Sisters/_/Sous+tes+doigts', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/14/49/3b/14493ba1-d3a1-7cf8-96df-9a01716344db/source/370x370bb.jpg', 0, '', '1', 1638595820, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/sous-tes-doigts/1481586182?i=1481586559&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:30:20'),
(279537465, 'Import Tuner X-Clusive (feat. Celph Titled & Lexicon)', 'Import Tuner X-Clusive (feat. Celph Titled & Lexicon)', 'import-tuner-x-clusive-feat-celph-titled-lexicon-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music114/v4/12/42/cb/1242cbf5-0d8b-20d1-ced4-95f2bdad085d/source/370x370bb.jpg', 0, '', '1', 1638595927, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/import-tuner-x-clusive-feat-celph-titled-lexicon/279537448?i=279537465&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:07'),
(1017364427, '1950-08-24 - Episode 64 - Trans Pacific Import Export Matter', '1950-08-24 - Episode 64 - Trans Pacific Import Export Matter', '1950-08-24---episode-64---trans-pacific-import-export-matter', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/f1/75/70/f1757006-5486-1bec-98fb-29766a6f2036/source/370x370bb.jpg', 0, '', '1', 1638595929, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/1950-08-24-episode-64-trans-pacific-import-export-matter/1017361703?i=1017364427&uo=4', -1, '', 'USA', 'USD', 0, '2021-12-04 05:32:09');
INSERT INTO `tbl_songs` (`id`, `song_title`, `keywords`, `song_seo`, `lastfm_url`, `ad_code`, `video_code`, `picture`, `popularity`, `description`, `song_status`, `posted_date`, `latest_one`, `ranking_order`, `rate_song`, `review_count`, `latest`, `song_year`, `amazon_url`, `google_url`, `itunes_url`, `itunes_price`, `refer_seo`, `country`, `currency`, `timeupdated`, `updated_by_itunes`) VALUES
(1416237121, 'Pier One Import', 'Pier One Import', 'pier-one-import', 'https://www.last.fm/music/Christian+McBride/_/Pier+One+Import', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/20/e2/ec/20e2ec8b-4964-e244-daf2-a318483069b9/source/370x370bb.jpg', 0, '', '1', 1638595931, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/pier-one-import/1416232780?i=1416237121&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:32:11'),
(376033074, 'Wings of Steel', 'Wings of Steel', 'wings-of-steel', 'https://www.last.fm/music/Collide/_/Wings+of+Steel', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/36/a0/0836a058-1a7e-6775-506b-35ba6e8127b5/source/370x370bb.jpg', 0, '', '1', 1638595934, 0, 1, '5.0', 0, 0, 2000, '', '', 'https://music.apple.com/us/album/wings-of-steel/376032611?i=376033074&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:14'),
(1199127034, 'Sweet Pancello (The Ascending One)', 'Sweet Pancello (The Ascending One)', 'sweet-pancello-the-ascending-one-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/89/bc/5b/89bc5b36-398f-db10-1777-b7f9e258fb09/source/370x370bb.jpg', 0, '', '1', 1646914060, 0, 1, '5.0', 0, 0, 2009, '', '', 'https://music.apple.com/us/album/sweet-pancello-the-ascending-one/1199127031?i=1199127034&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:40'),
(376032639, 'Blacklace', 'Blacklace', 'blacklace', 'https://www.last.fm/music/The+Unknowne/_/Blacklace', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/36/a0/0836a058-1a7e-6775-506b-35ba6e8127b5/source/370x370bb.jpg', 0, '', '1', 1638595937, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/blacklace/376032611?i=376032639&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:17'),
(278667195, 'One More Lie', 'One More Lie', 'one-more-lie', 'https://www.last.fm/music/White+Wolf/_/One+More+Lie', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/af/25/24/af252495-2458-1429-213d-17df0306f2ea/source/370x370bb.jpg', 0, '', '1', 1638595938, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/one-more-lie/278666994?i=278667195&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:18'),
(376033189, 'Monument', 'Monument', 'monument', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/36/a0/0836a058-1a7e-6775-506b-35ba6e8127b5/source/370x370bb.jpg', 0, '', '1', 1638595940, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/monument/376032611?i=376033189&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:20'),
(278667257, 'Price of One', 'Price of One', 'price-of-one', 'https://www.last.fm/music/White+Wolf/_/Price+of+One', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/af/25/24/af252495-2458-1429-213d-17df0306f2ea/source/370x370bb.jpg', 0, '', '1', 1638595942, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/price-of-one/278666994?i=278667257&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:22'),
(376032805, 'Lost', 'Lost', 'lost', 'https://www.last.fm/music/The+Azoic/_/Lost', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/36/a0/0836a058-1a7e-6775-506b-35ba6e8127b5/source/370x370bb.jpg', 0, '', '1', 1638595943, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/lost/376032611?i=376032805&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:23'),
(376032736, 'Queen of Heaven', 'Queen of Heaven', 'queen-of-heaven', 'https://www.last.fm/music/The+Razor+Skyline/_/Queen+of+Heaven', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/36/a0/0836a058-1a7e-6775-506b-35ba6e8127b5/source/370x370bb.jpg', 0, '', '1', 1638595945, 0, 1, '5.0', 0, 0, 1996, '', '', 'https://music.apple.com/us/album/queen-of-heaven/376032611?i=376032736&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:25'),
(376032647, 'Afraid of Gods', 'Afraid of Gods', 'afraid-of-gods', 'https://www.last.fm/music/Genowen/_/Afraid+of+Gods', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/36/a0/0836a058-1a7e-6775-506b-35ba6e8127b5/source/370x370bb.jpg', 0, '', '1', 1638595946, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/afraid-of-gods/376032611?i=376032647&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:26'),
(1450303139, 'One a Day', 'One a Day', 'one-a-day', 'https://www.last.fm/music/Last+Import/_/One+a+Day', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music114/v4/d3/e0/e9/d3e0e9ac-ad03-d1e3-71e2-f769145bce14/source/370x370bb.jpg', 0, '', '1', 1638595948, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/one-a-day/1450303040?i=1450303139&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:28'),
(376032668, 'Her Ghost', 'Her Ghost', 'her-ghost', 'https://www.last.fm/music/Gossamer/_/Her+Ghost', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/36/a0/0836a058-1a7e-6775-506b-35ba6e8127b5/source/370x370bb.jpg', 0, '', '1', 1638595950, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/her-ghost/376032611?i=376032668&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:30'),
(280603235, 'Quiero Saber (Import VersiÃ³n 1)', 'Quiero Saber (Import VersiÃ³n 1)', 'quiero-saber-import-versi-n-1-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/f5/8e/af/f58eaf33-06de-8fc2-5496-7ad9be93e6e3/source/370x370bb.jpg', 0, '', '1', 1638595952, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/quiero-saber-import-versi%C3%B3n-1/280603219?i=280603235&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:32'),
(376032628, 'Below Zero', 'Below Zero', 'below-zero', 'https://www.last.fm/music/Chiwawa/_/Below+Zero', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/36/a0/0836a058-1a7e-6775-506b-35ba6e8127b5/source/370x370bb.jpg', 0, '', '1', 1638595954, 0, 1, '5.0', 0, 0, 1998, '', '', 'https://music.apple.com/us/album/below-zero/376032611?i=376032628&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:34'),
(376033015, 'Serpent\\&#39;s Serenade', 'Serpent\\&#39;s Serenade', 'serpent-s-serenade', 'https://www.last.fm/music/This+Ascension/_/Serpents+Serenade', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/36/a0/0836a058-1a7e-6775-506b-35ba6e8127b5/source/370x370bb.jpg', 0, '', '1', 1638595956, 0, 1, '5.0', 0, 0, 1998, '', '', 'https://music.apple.com/us/album/serpents-serenade/376032611?i=376033015&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:36'),
(376032999, 'Come', 'Come', 'come', 'https://www.last.fm/music/Queen+Mary/_/Come', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/36/a0/0836a058-1a7e-6775-506b-35ba6e8127b5/source/370x370bb.jpg', 0, '', '1', 1638595959, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/come/376032611?i=376032999&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:39'),
(376032808, 'Return', 'Return', 'return', 'https://www.last.fm/music/HMB/_/Return', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/36/a0/0836a058-1a7e-6775-506b-35ba6e8127b5/source/370x370bb.jpg', 0, '', '1', 1638595961, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/return/376032611?i=376032808&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:41'),
(983992507, 'Italian Imports', 'Italian Imports', 'italian-imports', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Video7/v4/ba/e1/77/bae1770d-6c51-8d79-9eb0-58a04bde46a4/source/370x370bb.jpg', 0, '', '1', 1638595963, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://itunes.apple.com/us/tv-season/italian-imports/id983775617?i=983992507&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:43'),
(279927871, 'The Right One', 'The Right One', 'the-right-one', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/f5/1f/bc/f51fbc67-c5ec-a067-8463-f89d416183a9/source/370x370bb.jpg', 0, '', '1', 1638595965, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/the-right-one/279927854?i=279927871&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:45'),
(520662455, 'Together As One (feat. Jonny Kamai)', 'Together As One (feat. Jonny Kamai)', 'together-as-one-feat-jonny-kamai-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/2d/fb/e3/2dfbe3a4-6721-35e9-4a9d-31a66d4c9af7/source/370x370bb.jpg', 0, '', '1', 1638595966, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/together-as-one-feat-jonny-kamai/520662234?i=520662455&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:46'),
(279927869, 'First Sight', 'First Sight', 'first-sight', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/f5/1f/bc/f51fbc67-c5ec-a067-8463-f89d416183a9/source/370x370bb.jpg', 0, '', '1', 1638595969, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/first-sight/279927854?i=279927869&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:49'),
(527740577, 'One More Step (Away from Home)', 'One More Step (Away from Home)', 'one-more-step-away-from-home-', 'https://www.last.fm/music/Absentia/_/One+More+Step+Away+From+Home', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/97/a0/45/97a04565-9556-3de2-0bab-454c04425c9e/source/370x370bb.jpg', 0, '', '1', 1638595970, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/one-more-step-away-from-home/527740405?i=527740577&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:50'),
(283112670, 'First Sight', 'First Sight', 'first-sight', 'https://www.last.fm/music/Joseph+Parsons/_/First+Sight', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/e1/c6/07/e1c607c9-9c7d-a127-39a0-4844aa9064e7/source/370x370bb.jpg', 0, '', '1', 1638595972, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/first-sight/283112617?i=283112670&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:52'),
(251855661, 'Set It Off', 'Set It Off', 'set-it-off', 'https://www.last.fm/music/Import1/_/Set+It+Off', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/6c/1a/56/6c1a56c5-000b-7fdb-5ffd-09752b51a6af/source/370x370bb.jpg', 0, '', '1', 1638595974, 0, 1, '5.0', 0, 0, 2004, '', '', 'https://music.apple.com/us/album/set-it-off/251854638?i=251855661&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:54'),
(1511529527, 'I Want To Know (Import Version 1)', 'I Want To Know (Import Version 1)', 'i-want-to-know-import-version-1-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/dd/a3/7e/dda37e47-3895-5b1b-721f-fa32767fd923/source/370x370bb.jpg', 0, '', '1', 1638595975, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/i-want-to-know-import-version-1/1511529526?i=1511529527&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:32:55'),
(767767346, 'Set It Off (Party Rock)', 'Set It Off (Party Rock)', 'set-it-off-party-rock-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music115/v4/6b/17/42/6b174270-e5f5-be48-8b75-8caa2dc482f7/source/370x370bb.jpg', 0, '', '1', 1638595977, 0, 1, '5.0', 0, 0, 2009, '', '', 'https://music.apple.com/us/album/set-it-off-party-rock/767767232?i=767767346&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:57'),
(336766917, 'Robocop', 'Robocop', 'robocop', 'https://www.last.fm/music/Subsystem/_/Robocop', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/2f/27/99/2f27996f-b406-aff7-bffd-c379bb5f161c/source/370x370bb.jpg', 0, '', '1', 1638595979, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/robocop/336766794?i=336766917&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:32:59'),
(336766892, 'Por la Patria', 'Por la Patria', 'por-la-patria', 'https://www.last.fm/music/Liaisons+D/_/Por+La+Patria', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/2f/27/99/2f27996f-b406-aff7-bffd-c379bb5f161c/source/370x370bb.jpg', 0, '', '1', 1638595981, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/por-la-patria/336766794?i=336766892&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:01'),
(336766910, 'Celeste', 'Celeste', 'celeste', 'https://www.last.fm/music/Subsystem/_/Celeste', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/2f/27/99/2f27996f-b406-aff7-bffd-c379bb5f161c/source/370x370bb.jpg', 0, '', '1', 1638595982, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/celeste/336766794?i=336766910&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:02'),
(193602630, 'One Angry Dwarf and 200 Solemn Faces', 'One Angry Dwarf and 200 Solemn Faces', 'one-angry-dwarf-and-200-solemn-faces', 'https://www.last.fm/music/Ben+Folds+Five/_/One+Angry+Dwarf+and+200+Solemn+Faces', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/4a/45/e9/4a45e99c-5d22-e5bc-267b-d1dadfd707cb/source/370x370bb.jpg', 0, '', '1', 1638595984, 0, 1, '5.0', 0, 0, 1997, '', '', 'https://music.apple.com/us/album/one-angry-dwarf-and-200-solemn-faces/193602597?i=193602630&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:33:04'),
(336172690, 'Set It Off (Party Rock)', 'Set It Off (Party Rock)', 'set-it-off-party-rock-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/f1/f1/93/f1f1939d-c995-c94e-b8ed-4ce5a26bdc44/source/370x370bb.jpg', 0, '', '1', 1638595985, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/set-it-off-party-rock/336172482?i=336172690&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:05'),
(281399713, 'First Reaction', 'First Reaction', 'first-reaction', 'https://www.last.fm/music/The+David+Neil+Cline+Band/_/First+Reaction', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/87/0f/0b/870f0b7d-a920-28b9-1f3b-6209460a12f7/source/370x370bb.jpg', 0, '', '1', 1638595987, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/first-reaction/281399558?i=281399713&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:07'),
(336766893, 'The Oracle', 'The Oracle', 'the-oracle', 'https://www.last.fm/music/Mappa+Mundi/_/The+Oracle', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/2f/27/99/2f27996f-b406-aff7-bffd-c379bb5f161c/source/370x370bb.jpg', 0, '', '1', 1638595991, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/the-oracle/336766794?i=336766893&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:11'),
(336766922, 'He Chilled Out', 'He Chilled Out', 'he-chilled-out', 'https://www.last.fm/music/Liaisons+D/_/He+Chilled+Out', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/2f/27/99/2f27996f-b406-aff7-bffd-c379bb5f161c/source/370x370bb.jpg', 0, '', '1', 1638595993, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/he-chilled-out/336766794?i=336766922&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:13'),
(336766906, 'Real Pain', 'Real Pain', 'real-pain', 'https://www.last.fm/music/Sven+Van+Hees/_/Real+Pain', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/2f/27/99/2f27996f-b406-aff7-bffd-c379bb5f161c/source/370x370bb.jpg', 0, '', '1', 1638595995, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/real-pain/336766794?i=336766906&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:15'),
(804751956, 'One More Day', 'One More Day', 'one-more-day', 'https://www.last.fm/music/Momy+Levy/_/One+More+Day', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/aa/bf/75/aabf75c3-3c61-5c5a-750e-898d4c1acaed/source/370x370bb.jpg', 0, '', '1', 1638595997, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/one-more-day/804751950?i=804751956&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:17'),
(1559707287, '|World\\&#39;s 1st Podcast on Export Import |Exim Show|', '|World\\&#39;s 1st Podcast on Export Import |Exim Show|', '-world-s-1st-podcast-on-export-import-exim-show-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Podcasts124/v4/4d/75/e6/4d75e668-ef42-aa86-1da8-a8b9233edf13/mza_15954743843324871656.jpg/370x370bb.jpg', 0, '', '1', 1638595999, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://podcasts.apple.com/us/podcast/worlds-1st-podcast-on-export-import-exim-show/id1559707287?uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 05:33:19'),
(336766920, 'Mars-x-press', 'Mars-x-press', 'mars-x-press', 'https://www.last.fm/music/Sven+Van+Hees/_/Mars+X+Press', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/2f/27/99/2f27996f-b406-aff7-bffd-c379bb5f161c/source/370x370bb.jpg', 0, '', '1', 1638596001, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/mars-x-press/336766794?i=336766920&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:21'),
(336766914, 'Initial Gain', 'Initial Gain', 'initial-gain', 'https://www.last.fm/music/Liza+N+Eliaz/_/Initial+Gain', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/2f/27/99/2f27996f-b406-aff7-bffd-c379bb5f161c/source/370x370bb.jpg', 0, '', '1', 1638596002, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/initial-gain/336766794?i=336766914&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:22'),
(336766898, 'Frequency Test', 'Frequency Test', 'frequency-test', 'https://www.last.fm/music/Strongheads/_/Frequency+Test', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/2f/27/99/2f27996f-b406-aff7-bffd-c379bb5f161c/source/370x370bb.jpg', 0, '', '1', 1638596004, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/frequency-test/336766794?i=336766898&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:24'),
(336766895, 'Vector (Evacuation Mix)', 'Vector (Evacuation Mix)', 'vector-evacuation-mix-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/2f/27/99/2f27996f-b406-aff7-bffd-c379bb5f161c/source/370x370bb.jpg', 0, '', '1', 1638596006, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/vector-evacuation-mix/336766794?i=336766895&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:26'),
(1476115701, 'Cultural Imports', 'Cultural Imports', 'cultural-imports', 'https://www.last.fm/music/Kris+Bowers/_/Cultural+Imports', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/65/15/61/6515617c-67f0-9caa-c1d2-26e823afc94b/source/370x370bb.jpg', 0, '', '1', 1638596008, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/cultural-imports/1476115685?i=1476115701&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:28'),
(382978145, 'Give It 2 Me 1 Time (John Smith Suave Mix ll) [feat. NU Shooz]', 'Give It 2 Me 1 Time (John Smith Suave Mix ll) [feat. NU Shooz]', 'give-it-2-me-1-time-john-smith-suave-mix-ll-feat-nu-shooz-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/07/f3/e5/07f3e512-113e-faa1-5119-039429c213c6/source/370x370bb.jpg', 0, '', '1', 1638596010, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/give-it-2-me-1-time-john-smith-suave-mix-ll-feat-nu-shooz/382978081?i=382978145&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:30'),
(271422178, 'One Angry Dwarf and 200 Solemn Faces', 'One Angry Dwarf and 200 Solemn Faces', 'one-angry-dwarf-and-200-solemn-faces', 'https://www.last.fm/music/Ben+Folds/_/One+Angry+Dwarf+and+200+Solemn+Faces', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/46/2e/fc/462efc29-aef4-9a76-a429-74ac7d71c322/source/370x370bb.jpg', 0, '', '1', 1638596012, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/one-angry-dwarf-and-200-solemn-faces/271422114?i=271422178&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:33:32'),
(462925560, 'One Angry Dwarf and 200 Solemn Faces', 'One Angry Dwarf and 200 Solemn Faces', 'one-angry-dwarf-and-200-solemn-faces', 'https://www.last.fm/music/Ben+Folds+Five/_/One+Angry+Dwarf+and+200+Solemn+Faces', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music114/v4/0b/9a/c0/0b9ac091-ce7d-fbd9-1f38-28ae1f375ab9/source/370x370bb.jpg', 0, '', '1', 1638596013, 0, 1, '5.0', 0, 0, 1997, '', '', 'https://music.apple.com/us/album/one-angry-dwarf-and-200-solemn-faces/462925530?i=462925560&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:33:33'),
(1342095364, 'One a Day', 'One a Day', 'one-a-day', 'https://www.last.fm/music/Last+Import/_/One+a+Day', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/f3/b7/cc/f3b7cc50-5a57-8b60-2854-24dfb96f3f17/source/370x370bb.jpg', 0, '', '1', 1638596015, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/one-a-day/1342095359?i=1342095364&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:33:35'),
(880470681, 'Jangadeiro', 'Jangadeiro', 'jangadeiro', 'https://www.last.fm/music/Quarteto+Maogani/_/Jangadeiro', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/6a/1b/50/6a1b504b-629e-d99e-4a5a-4c1006fc1a11/source/370x370bb.jpg', 0, '', '1', 1638596128, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/jangadeiro/880470669?i=880470681&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:28'),
(880470692, 'Por Que Sofre?', 'Por Que Sofre?', 'por-que-sofre-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/6a/1b/50/6a1b504b-629e-d99e-4a5a-4c1006fc1a11/source/370x370bb.jpg', 0, '', '1', 1638596130, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/por-que-sofre/880470669?i=880470692&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:30'),
(880470688, 'O Alvorecer', 'O Alvorecer', 'o-alvorecer', 'https://www.last.fm/music/Quarteto+Maogani/_/O+Alvorecer', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/6a/1b/50/6a1b504b-629e-d99e-4a5a-4c1006fc1a11/source/370x370bb.jpg', 0, '', '1', 1638596132, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/o-alvorecer/880470669?i=880470688&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:32'),
(1087978133, 'Requiem para Os Vinte Anos (feat. Quarteto Maogani)', 'Requiem para Os Vinte Anos (feat. Quarteto Maogani)', 'requiem-para-os-vinte-anos-feat-quarteto-maogani-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music49/v4/b6/e7/e0/b6e7e0a5-11d2-e917-6f46-8acf624b130d/source/370x370bb.jpg', 0, '', '1', 1638596133, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/requiem-para-os-vinte-anos-feat-quarteto-maogani/1087977025?i=1087978133&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:33'),
(880470698, 'ResignaÃ§Ã£o', 'ResignaÃ§Ã£o', 'resigna-o', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/6a/1b/50/6a1b504b-629e-d99e-4a5a-4c1006fc1a11/source/370x370bb.jpg', 0, '', '1', 1638596135, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/resigna%C3%A7%C3%A3o/880470669?i=880470698&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:35'),
(880470689, 'Quebra-CabeÃ§a', 'Quebra-CabeÃ§a', 'quebra-cabe-a', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/6a/1b/50/6a1b504b-629e-d99e-4a5a-4c1006fc1a11/source/370x370bb.jpg', 0, '', '1', 1638596138, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/quebra-cabe%C3%A7a/880470669?i=880470689&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:38'),
(880470683, 'Plangente', 'Plangente', 'plangente', 'https://www.last.fm/music/Quarteto+Maogani/_/Plangente', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/6a/1b/50/6a1b504b-629e-d99e-4a5a-4c1006fc1a11/source/370x370bb.jpg', 0, '', '1', 1638596139, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/plangente/880470669?i=880470683&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:39'),
(880470680, 'Espalhafatoso', 'Espalhafatoso', 'espalhafatoso', 'https://www.last.fm/music/Quarteto+Maogani/_/Espalhafatoso', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/6a/1b/50/6a1b504b-629e-d99e-4a5a-4c1006fc1a11/source/370x370bb.jpg', 0, '', '1', 1638596141, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/espalhafatoso/880470669?i=880470680&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:41'),
(880470674, 'Arreliado', 'Arreliado', 'arreliado', 'https://www.last.fm/music/Quarteto+Maogani/_/Arreliado', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/6a/1b/50/6a1b504b-629e-d99e-4a5a-4c1006fc1a11/source/370x370bb.jpg', 0, '', '1', 1638596143, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/arreliado/880470669?i=880470674&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:43'),
(1326812032, 'Timbatuando (feat. Marcos Paiva, Quarteto Maogani & Mauro Senise)', 'Timbatuando (feat. Marcos Paiva, Quarteto Maogani & Mauro Senise)', 'timbatuando-feat-marcos-paiva-quarteto-maogani-mauro-senise-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music114/v4/5f/17/4f/5f174f3a-0189-0dae-09a6-9ef3b086bdd8/source/370x370bb.jpg', 0, '', '1', 1638596144, 0, 1, '5.0', 0, 0, 2000, '', '', 'https://music.apple.com/us/album/timbatuando-feat-marcos-paiva-quarteto-maogani-mauro/1326810744?i=1326812032&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:44'),
(880470675, 'Pairando', 'Pairando', 'pairando', 'https://www.last.fm/music/Quarteto+Maogani/_/Pairando', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/6a/1b/50/6a1b504b-629e-d99e-4a5a-4c1006fc1a11/source/370x370bb.jpg', 0, '', '1', 1638596146, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/pairando/880470669?i=880470675&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:46'),
(880470691, 'Nove de Maio', 'Nove de Maio', 'nove-de-maio', 'https://www.last.fm/music/Quarteto+Maogani/_/Nove+de+Maio', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/6a/1b/50/6a1b504b-629e-d99e-4a5a-4c1006fc1a11/source/370x370bb.jpg', 0, '', '1', 1638596148, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/nove-de-maio/880470669?i=880470691&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:48'),
(1024823775, 'Olhos Castanhos (feat. Quarteto Maogani)', 'Olhos Castanhos (feat. Quarteto Maogani)', 'olhos-castanhos-feat-quarteto-maogani-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music7/v4/8f/c1/74/8fc17457-1072-7dc8-4c9b-7f7a71ce025a/source/370x370bb.jpg', 0, '', '1', 1638596151, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/olhos-castanhos-feat-quarteto-maogani/1024823460?i=1024823775&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:51'),
(1565242423, 'O Adeus (feat. Renato Braz & Quarteto Maogani)', 'O Adeus (feat. Renato Braz & Quarteto Maogani)', 'o-adeus-feat-renato-braz-quarteto-maogani-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music125/v4/7c/93/b6/7c93b655-551f-3a64-361b-b17c4d3040fb/source/370x370bb.jpg', 0, '', '1', 1638596152, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/o-adeus-feat-renato-braz-quarteto-maogani/1565242420?i=1565242423&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:52'),
(880470693, 'Furinga', 'Furinga', 'furinga', 'https://www.last.fm/music/Quarteto+Maogani/_/Furinga', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/6a/1b/50/6a1b504b-629e-d99e-4a5a-4c1006fc1a11/source/370x370bb.jpg', 0, '', '1', 1638596154, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/furinga/880470669?i=880470693&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:54'),
(880470684, 'Cruz, Perigo!', 'Cruz, Perigo!', 'cruz-perigo-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/6a/1b/50/6a1b504b-629e-d99e-4a5a-4c1006fc1a11/source/370x370bb.jpg', 0, '', '1', 1638596156, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/cruz-perigo/880470669?i=880470684&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:35:56'),
(1530760446, 'Menino Hermeto (feat. Quarteto Maogani)', 'Menino Hermeto (feat. Quarteto Maogani)', 'menino-hermeto-feat-quarteto-maogani-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music114/v4/bb/3c/81/bb3c8194-5e51-df29-0401-82b10737a2fb/source/370x370bb.jpg', 0, '', '1', 1638596157, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/menino-hermeto-feat-quarteto-maogani/1530760130?i=1530760446&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:35:57'),
(1482055540, 'Ilustre Desconhecida (feat. Quarteto Maogani)', 'Ilustre Desconhecida (feat. Quarteto Maogani)', 'ilustre-desconhecida-feat-quarteto-maogani-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music123/v4/71/4e/97/714e97cc-25e9-9310-de20-28d3a24c16d9/source/370x370bb.jpg', 0, '', '1', 1638596160, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/ilustre-desconhecida-feat-quarteto-maogani/1482055388?i=1482055540&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:00'),
(668302023, 'ZÃ¡-ZÃ¡-ZÃ¡', 'ZÃ¡-ZÃ¡-ZÃ¡', 'z--z--z-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music6/v4/4e/7e/7b/4e7e7b2c-84c2-aad8-2853-e0e6155d6cbb/source/370x370bb.jpg', 0, '', '1', 1638596161, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/z%C3%A1-z%C3%A1-z%C3%A1/668301977?i=668302023&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:01'),
(668302056, 'Milonga Sentimental', 'Milonga Sentimental', 'milonga-sentimental', 'https://www.last.fm/music/Maogani/_/Milonga+Sentimental', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music6/v4/4e/7e/7b/4e7e7b2c-84c2-aad8-2853-e0e6155d6cbb/source/370x370bb.jpg', 0, '', '1', 1638596164, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/milonga-sentimental/668301977?i=668302056&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:04'),
(668302018, 'BaiÃ£o de Lacan (feat. Leila Pinheiro)', 'BaiÃ£o de Lacan (feat. Leila Pinheiro)', 'bai-o-de-lacan-feat-leila-pinheiro-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music6/v4/4e/7e/7b/4e7e7b2c-84c2-aad8-2853-e0e6155d6cbb/source/370x370bb.jpg', 0, '', '1', 1638596165, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/bai%C3%A3o-de-lacan-feat-leila-pinheiro/668301977?i=668302018&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:05'),
(668302061, 'PalhaÃ§o (feat. ZÃ© Nogueira)', 'PalhaÃ§o (feat. ZÃ© Nogueira)', 'palha-o-feat-z-nogueira-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music6/v4/4e/7e/7b/4e7e7b2c-84c2-aad8-2853-e0e6155d6cbb/source/370x370bb.jpg', 0, '', '1', 1638596167, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/palha%C3%A7o-feat-z%C3%A9-nogueira/668301977?i=668302061&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:07'),
(668302014, 'LÃ´ro', 'LÃ´ro', 'l-ro', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music6/v4/4e/7e/7b/4e7e7b2c-84c2-aad8-2853-e0e6155d6cbb/source/370x370bb.jpg', 0, '', '1', 1638596168, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/l%C3%B4ro/668301977?i=668302014&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:08'),
(668301982, 'Samambaia', 'Samambaia', 'samambaia', 'https://www.last.fm/music/Maogani/_/Samambaia', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music6/v4/4e/7e/7b/4e7e7b2c-84c2-aad8-2853-e0e6155d6cbb/source/370x370bb.jpg', 0, '', '1', 1638596170, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/samambaia/668301977?i=668301982&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:10'),
(668302055, 'CorrupiÃ£o', 'CorrupiÃ£o', 'corrupi-o', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music6/v4/4e/7e/7b/4e7e7b2c-84c2-aad8-2853-e0e6155d6cbb/source/370x370bb.jpg', 0, '', '1', 1638596171, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/corrupi%C3%A3o/668301977?i=668302055&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:11'),
(668302009, 'Cai Dentro', 'Cai Dentro', 'cai-dentro', 'https://www.last.fm/music/Maogani/_/Cai+Dentro', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music6/v4/4e/7e/7b/4e7e7b2c-84c2-aad8-2853-e0e6155d6cbb/source/370x370bb.jpg', 0, '', '1', 1638596173, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/cai-dentro/668301977?i=668302009&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:13'),
(979921245, 'Lamento No Morro', 'Lamento No Morro', 'lamento-no-morro', 'https://www.last.fm/music/Quarteto+Maogani/_/Lamento+No+Morro', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/b4/e6/d4/b4e6d4e3-2ef3-d644-8043-767c1b62706f/source/370x370bb.jpg', 0, '', '1', 1638596176, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/lamento-no-morro/979921235?i=979921245&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:16'),
(156329061, 'Cine Baronesa', 'Cine Baronesa', 'cine-baronesa', 'https://www.last.fm/music/Guinga/_/Cine+Baronesa', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music4/v4/dc/c7/a7/dcc7a765-8602-6729-bd13-fbdcc52eee93/source/370x370bb.jpg', 0, '', '1', 1638596177, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/cine-baronesa/156329022?i=156329061&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:17'),
(1454151750, 'Bananeira', 'Bananeira', 'bananeira', 'https://www.last.fm/music/Quarteto+Maogani/_/Bananeira', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/c9/a5/99/c9a59960-8948-7f18-c55b-fb754cf2b059/source/370x370bb.jpg', 0, '', '1', 1638596179, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/bananeira/1454151708?i=1454151750&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:19'),
(156329116, 'Fox E Trote', 'Fox E Trote', 'fox-e-trote', 'https://www.last.fm/music/Guinga/_/Fox+E+Trote', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music4/v4/dc/c7/a7/dcc7a765-8602-6729-bd13-fbdcc52eee93/source/370x370bb.jpg', 0, '', '1', 1638596180, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/fox-e-trote/156329022?i=156329116&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:20'),
(530873379, 'Sabe Deus (SabrÃ¡ Dios)', 'Sabe Deus (SabrÃ¡ Dios)', 'sabe-deus-sabr-dios-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/68/f8/0d/68f80dc7-6eb8-ec1c-6390-289826198410/source/370x370bb.jpg', 0, '', '1', 1646914264, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/sabe-deus-sabr%C3%A1-dios/530873369?i=530873379&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:11:04'),
(530873385, 'Tu Me Acostumaste (Tu Me Acostumbraste)', 'Tu Me Acostumaste (Tu Me Acostumbraste)', 'tu-me-acostumaste-tu-me-acostumbraste-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/68/f8/0d/68f80dc7-6eb8-ec1c-6390-289826198410/source/370x370bb.jpg', 0, '', '1', 1646914266, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/tu-me-acostumaste-tu-me-acostumbraste/530873369?i=530873385&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:11:06'),
(1454151752, 'Cai dentro', 'Cai dentro', 'cai-dentro', 'https://www.last.fm/music/Quarteto+Maogani/_/Cai+dentro', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/c9/a5/99/c9a59960-8948-7f18-c55b-fb754cf2b059/source/370x370bb.jpg', 0, '', '1', 1638596185, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/cai-dentro/1454151708?i=1454151752&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:25'),
(979921659, 'Derradeira Primavera', 'Derradeira Primavera', 'derradeira-primavera', 'https://www.last.fm/music/Quarteto+Maogani/_/Derradeira+Primavera', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/b4/e6/d4/b4e6d4e3-2ef3-d644-8043-767c1b62706f/source/370x370bb.jpg', 0, '', '1', 1638596187, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/derradeira-primavera/979921235?i=979921659&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:27'),
(979921667, 'Insensatez', 'Insensatez', 'insensatez', 'https://www.last.fm/music/Quarteto+Maogani/_/Insensatez', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/b4/e6/d4/b4e6d4e3-2ef3-d644-8043-767c1b62706f/source/370x370bb.jpg', 0, '', '1', 1638596190, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/insensatez/979921235?i=979921667&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:30'),
(979921247, 'Ãgua de Beber', 'Ãgua de Beber', '-gua-de-beber', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/b4/e6/d4/b4e6d4e3-2ef3-d644-8043-767c1b62706f/source/370x370bb.jpg', 0, '', '1', 1638596192, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/%C3%A1gua-de-beber/979921235?i=979921247&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:32'),
(979921663, 'O Morro NÃ£o Tem Vez', 'O Morro NÃ£o Tem Vez', 'o-morro-n-o-tem-vez', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/b4/e6/d4/b4e6d4e3-2ef3-d644-8043-767c1b62706f/source/370x370bb.jpg', 0, '', '1', 1638596193, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/o-morro-n%C3%A3o-tem-vez/979921235?i=979921663&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:33'),
(664554375, 'Bananeira', 'Bananeira', 'bananeira', 'https://www.last.fm/music/Quarteto+Maogani/_/Bananeira', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/c1/a9/6a/c1a96a28-1395-58c6-87a9-80c1c364d50b/source/370x370bb.jpg', 0, '', '1', 1638596195, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/bananeira/664554331?i=664554375&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:35'),
(664554346, 'Passaredo', 'Passaredo', 'passaredo', 'https://www.last.fm/music/Quarteto+Maogani/_/Passaredo', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/c1/a9/6a/c1a96a28-1395-58c6-87a9-80c1c364d50b/source/370x370bb.jpg', 0, '', '1', 1638596197, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/passaredo/664554331?i=664554346&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:37'),
(977420690, 'While My Guitar Gently Weeps', 'While My Guitar Gently Weeps', 'while-my-guitar-gently-weeps', 'https://www.last.fm/music/Quarteto+Maogani/_/While+My+Guitar+Gently+Weeps', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/fd/b1/c3/fdb1c3a6-51ec-71b2-ae7b-73466a1dc969/source/370x370bb.jpg', 0, '', '1', 1638596199, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/while-my-guitar-gently-weeps/977420679?i=977420690&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:39'),
(1024856974, 'OraciÃ³n Al Remanso', 'OraciÃ³n Al Remanso', 'oraci-n-al-remanso', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/41/d0/3d/41d03d93-7e81-b596-f357-d99bbcbddd77/source/370x370bb.jpg', 0, '', '1', 1638596200, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/oraci%C3%B3n-al-remanso/1024856821?i=1024856974&uo=4', 0.69, '', 'USA', 'USD', 0, '2021-12-04 05:36:40'),
(979921246, 'Imagina', 'Imagina', 'imagina', 'https://www.last.fm/music/Quarteto+Maogani/_/Imagina', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/b4/e6/d4/b4e6d4e3-2ef3-d644-8043-767c1b62706f/source/370x370bb.jpg', 0, '', '1', 1638596202, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/imagina/979921235?i=979921246&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:42'),
(981351189, 'While My Guitar Gently Weeps', 'While My Guitar Gently Weeps', 'while-my-guitar-gently-weeps', 'https://www.last.fm/music/Quarteto+Maogani/_/While+My+Guitar+Gently+Weeps', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music1/v4/f6/f8/42/f6f84205-c5bb-bb48-8388-d9e7b1cf447e/source/370x370bb.jpg', 0, '', '1', 1638596203, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/while-my-guitar-gently-weeps/981350219?i=981351189&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:43'),
(664554341, 'Chovendo na Roseira', 'Chovendo na Roseira', 'chovendo-na-roseira', 'https://www.last.fm/music/Quarteto+Maogani/_/Chovendo+na+Roseira', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/c1/a9/6a/c1a96a28-1395-58c6-87a9-80c1c364d50b/source/370x370bb.jpg', 0, '', '1', 1638596205, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/chovendo-na-roseira/664554331?i=664554341&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:45'),
(979921257, 'Correnteza', 'Correnteza', 'correnteza', 'https://www.last.fm/music/Quarteto+Maogani/_/Correnteza', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/b4/e6/d4/b4e6d4e3-2ef3-d644-8043-767c1b62706f/source/370x370bb.jpg', 0, '', '1', 1638596206, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/correnteza/979921235?i=979921257&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:46'),
(664554334, 'Samba Novo', 'Samba Novo', 'samba-novo', 'https://www.last.fm/music/Quarteto+Maogani/_/Samba+Novo', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/c1/a9/6a/c1a96a28-1395-58c6-87a9-80c1c364d50b/source/370x370bb.jpg', 0, '', '1', 1638596208, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/samba-novo/664554331?i=664554334&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:48'),
(668302013, 'Nigma', 'Nigma', 'nigma', 'https://www.last.fm/music/Maogani/_/Nigma', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music6/v4/4e/7e/7b/4e7e7b2c-84c2-aad8-2853-e0e6155d6cbb/source/370x370bb.jpg', 0, '', '1', 1638596210, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/nigma/668301977?i=668302013&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:50'),
(668302050, 'Lago Puelo (feat. Celia Vaz & Jane Duboc)', 'Lago Puelo (feat. Celia Vaz & Jane Duboc)', 'lago-puelo-feat-celia-vaz-jane-duboc-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music6/v4/4e/7e/7b/4e7e7b2c-84c2-aad8-2853-e0e6155d6cbb/source/370x370bb.jpg', 0, '', '1', 1638596212, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/lago-puelo-feat-celia-vaz-jane-duboc/668301977?i=668302050&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:52'),
(668301985, 'BaiambÃª', 'BaiambÃª', 'baiamb-', 'https://www.last.fm/music/Maogani/_/Baiamb', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music6/v4/4e/7e/7b/4e7e7b2c-84c2-aad8-2853-e0e6155d6cbb/source/370x370bb.jpg', 0, '', '1', 1638596213, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/baiamb%C3%AA/668301977?i=668301985&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:53'),
(668302017, 'Di Menor', 'Di Menor', 'di-menor', 'https://www.last.fm/music/Maogani/_/Di+Menor', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music6/v4/4e/7e/7b/4e7e7b2c-84c2-aad8-2853-e0e6155d6cbb/source/370x370bb.jpg', 0, '', '1', 1638596215, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/di-menor/668301977?i=668302017&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:36:55'),
(1466232496, 'Lo Mismo Que A Usted', 'Lo Mismo Que A Usted', 'lo-mismo-que-a-usted', 'https://www.last.fm/music/Fania+All+Stars/_/Lo+Mismo+Que+A+Usted', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/13/36/7c/13367c66-4a6b-5caa-8fff-4f19ac3608a3/source/370x370bb.jpg', 0, '', '1', 1638596428, 0, 1, '5.0', 0, 0, 1976, '', '', 'https://music.apple.com/us/album/lo-mismo-que-a-usted/1466232137?i=1466232496&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:40:28'),
(1466317499, 'DÃ¡mela Que Tu La Tienes', 'DÃ¡mela Que Tu La Tienes', 'd-mela-que-tu-la-tienes', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596430, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/d%C3%A1mela-que-tu-la-tienes/1466317368?i=1466317499&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:40:30'),
(1464270088, 'Que Memoria Tienes', 'Que Memoria Tienes', 'que-memoria-tienes', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/f6/0d/52/f60d523d-3190-be75-75b4-50286d26fbbf/source/370x370bb.jpg', 0, '', '1', 1638596432, 0, 1, '5.0', 0, 0, 1964, '', '', 'https://music.apple.com/us/album/que-memoria-tienes/1464269943?i=1464270088&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:40:32'),
(295816236, 'Hay Mucho Que Olvidar', 'Hay Mucho Que Olvidar', 'hay-mucho-que-olvidar', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/a4/43/f2/a443f2a6-e164-396e-f201-3b23491aaa81/source/370x370bb.jpg', 0, '', '1', 1638596434, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/hay-mucho-que-olvidar/295816185?i=295816236&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:40:34'),
(295816230, 'El Que Se Fue', 'El Que Se Fue', 'el-que-se-fue', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/a4/43/f2/a443f2a6-e164-396e-f201-3b23491aaa81/source/370x370bb.jpg', 0, '', '1', 1638596436, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/el-que-se-fue/295816185?i=295816230&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:40:36'),
(1464271679, 'El DÃ­a Que Me Quieras', 'El DÃ­a Que Me Quieras', 'el-d-a-que-me-quieras', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/c5/d8/15/c5d815c3-b291-f2b2-28a4-3c6d0ee665c5/source/370x370bb.jpg', 0, '', '1', 1638596438, 0, 1, '5.0', 0, 0, 1967, '', '', 'https://music.apple.com/us/album/el-d%C3%ADa-que-me-quieras/1464270892?i=1464271679&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:40:38'),
(292622169, 'Ãl Que Se Fue', 'Ãl Que Se Fue', '-l-que-se-fue', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/c3/73/1c/c3731c3e-06e8-e09b-2ec9-9d37a9ea8ea3/source/370x370bb.jpg', 0, '', '1', 1638596439, 0, 1, '5.0', 0, 0, 1992, '', '', 'https://music.apple.com/us/album/%C3%A9l-que-se-fue-tributo-a-tito-rodr%C3%ADguez/292622074?i=292622169&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:40:39'),
(1466317993, 'TÃ­rate Que EstÃ¡ Bajito', 'TÃ­rate Que EstÃ¡ Bajito', 't-rate-que-est-bajito', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music123/v4/51/07/d7/5107d721-08ef-17f9-d1a7-47aabd78ccb4/source/370x370bb.jpg', 0, '', '1', 1638596441, 0, 1, '5.0', 0, 0, 1964, '', '', 'https://music.apple.com/us/album/t%C3%ADrate-que-est%C3%A1-bajito/1466317715?i=1466317993&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:40:41'),
(528060867, 'Lo Mismo Que Usted / Como (Live)', 'Lo Mismo Que Usted / Como (Live)', 'lo-mismo-que-usted-como-live-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/f0/d3/95/f0d395f3-3129-f865-2012-8a9dc9ebf5c9/source/370x370bb.jpg', 0, '', '1', 1638596442, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/lo-mismo-que-usted-como-live/528060864?i=528060867&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:40:42'),
(528061429, 'Desvelo de Amor / Ausencia / Dos Letras / Que Te Importa / Campanitas de Cristal / Congoja / Capullito de AlhelÃ­ / Desmayo (Live)', 'Desvelo de Amor / Ausencia / Dos Letras / Que Te Importa / Campanitas de Cristal / Congoja / Capullito de AlhelÃ­ / Desmayo (Live)', 'desvelo-de-amor-ausencia-dos-letras-que-te-importa-campanitas-de-cristal-congoja-capullito-de-alhel-desmayo-live-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/f0/d3/95/f0d395f3-3129-f865-2012-8a9dc9ebf5c9/source/370x370bb.jpg', 0, '', '1', 1638596444, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/desvelo-de-amor-ausencia-dos-letras-que-te-importa/528060864?i=528061429&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:40:44'),
(1464957711, 'Â¡Ay! Que Bueno (feat. Tito Rodriguez And His Orchestra)', 'Â¡Ay! Que Bueno (feat. Tito Rodriguez And His Orchestra)', '-ay-que-bueno-feat-tito-rodriguez-and-his-orchestra-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music123/v4/95/8a/26/958a2657-46c8-00f5-aa21-63820c09ef65/source/370x370bb.jpg', 0, '', '1', 1638596446, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/ay-que-bueno-feat-tito-rodriguez-and-his-orchestra/1464956745?i=1464957711&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:40:46'),
(1018024239, 'Tangerine', 'Tangerine', 'tangerine', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Video1/v4/82/b3/46/82b34640-79b3-0686-ae9f-59faa6e22b17/source/370x370bb.jpg', 0, '', '1', 1638596448, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://itunes.apple.com/us/movie/tangerine/id1018024239?uo=4', 10.99, '', 'USA', 'USD', 0, '2021-12-04 05:40:48'),
(528060868, 'Dime Que Me Quieres (All The Way) [Live]', 'Dime Que Me Quieres (All The Way) [Live]', 'dime-que-me-quieres-all-the-way-live-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/f0/d3/95/f0d395f3-3129-f865-2012-8a9dc9ebf5c9/source/370x370bb.jpg', 0, '', '1', 1638596449, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/dime-que-me-quieres-all-the-way-live/528060864?i=528060868&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:40:49'),
(1466317372, 'Cuando, Cuando, Cuando', 'Cuando, Cuando, Cuando', 'cuando-cuando-cuando', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596451, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/cuando-cuando-cuando/1466317368?i=1466317372&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:40:51'),
(277161796, 'Hay Mucho Que Olvidar', 'Hay Mucho Que Olvidar', 'hay-mucho-que-olvidar', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/4e/76/4f/4e764f6d-6db2-07ce-3215-5377f3fecde3/source/370x370bb.jpg', 0, '', '1', 1638596453, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/hay-mucho-que-olvidar/277161788?i=277161796&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:40:53'),
(1465802205, 'Quiero Que Me Digas (feat. Tito Rodriguez And His Orchestra)', 'Quiero Que Me Digas (feat. Tito Rodriguez And His Orchestra)', 'quiero-que-me-digas-feat-tito-rodriguez-and-his-orchestra-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/08/73/07/08730722-ec58-def6-5d0d-d10fde3a95c5/source/370x370bb.jpg', 0, '', '1', 1638596454, 0, 1, '5.0', 0, 0, 1964, '', '', 'https://music.apple.com/us/album/quiero-que-me-digas-feat-tito-rodriguez-and-his-orchestra/1465801716?i=1465802205&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:40:54'),
(1193443820, 'Lo Mismo Que a Usted', 'Lo Mismo Que a Usted', 'lo-mismo-que-a-usted', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music91/v4/fe/ec/c0/feecc05f-57a5-22b5-a89f-0f3a0599af91/source/370x370bb.jpg', 0, '', '1', 1638596455, 0, 1, '5.0', 0, 0, 1988, '', '', 'https://music.apple.com/us/album/lo-mismo-que-a-usted/1193443271?i=1193443820&uo=4', 0.69, '', 'USA', 'USD', 0, '2021-12-04 05:40:55');
INSERT INTO `tbl_songs` (`id`, `song_title`, `keywords`, `song_seo`, `lastfm_url`, `ad_code`, `video_code`, `picture`, `popularity`, `description`, `song_status`, `posted_date`, `latest_one`, `ranking_order`, `rate_song`, `review_count`, `latest`, `song_year`, `amazon_url`, `google_url`, `itunes_url`, `itunes_price`, `refer_seo`, `country`, `currency`, `timeupdated`, `updated_by_itunes`) VALUES
(1071698832, 'Que Rico', 'Que Rico', 'que-rico', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music69/v4/92/f1/d6/92f1d6e6-cae8-6d7c-d77e-3ca1908234b4/source/370x370bb.jpg', 0, '', '1', 1638596457, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/que-rico/1071698831?i=1071698832&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:40:57'),
(160530730, 'Lo Mismo Que a Usted', 'Lo Mismo Que a Usted', 'lo-mismo-que-a-usted', 'https://www.last.fm/music/Orquesta+Melodia/_/Lo+Mismo+Que+A+Usted', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/43/3d/42/433d42cf-1517-f53c-42d3-f4aa46edad16/source/370x370bb.jpg', 0, '', '1', 1638596459, 0, 1, '5.0', 0, 0, 2009, '', '', 'https://music.apple.com/us/album/lo-mismo-que-a-usted/160530668?i=160530730&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:40:59'),
(1466317507, 'Cara De Payaso', 'Cara De Payaso', 'cara-de-payaso', 'https://www.last.fm/music/Tito+Rodrguez/_/Cara+De+Payaso', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596462, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/cara-de-payaso/1466317368?i=1466317507&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:02'),
(1466232793, 'Vuela La Paloma', 'Vuela La Paloma', 'vuela-la-paloma', 'https://www.last.fm/music/Fania+All+Stars/_/Vuela+La+Paloma', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/13/36/7c/13367c66-4a6b-5caa-8fff-4f19ac3608a3/source/370x370bb.jpg', 0, '', '1', 1638596463, 0, 1, '5.0', 0, 0, 1976, '', '', 'https://music.apple.com/us/album/vuela-la-paloma/1466232137?i=1466232793&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:03'),
(571200600, 'Lo Mismo Que Usted', 'Lo Mismo Que Usted', 'lo-mismo-que-usted', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/cb/d3/90/cbd390a6-f82e-297e-b327-af2c3b568559/source/370x370bb.jpg', 0, '', '1', 1638596465, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/lo-mismo-que-usted/571200401?i=571200600&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:41:05'),
(150786820, 'Los Rodriguez', 'Los Rodriguez', 'los-rodriguez', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music114/v4/2c/49/6f/2c496f74-7341-daf2-63fd-846a7c81ff0f/source/370x370bb.jpg', 0, '', '1', 1638596467, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/los-rodriguez/150786783?i=150786820&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:41:07'),
(1466317626, 'Vuela, La Paloma', 'Vuela, La Paloma', 'vuela-la-paloma', 'https://www.last.fm/music/Tito+Rodrguez/_/Vuela+la+paloma', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596469, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/vuela-la-paloma/1466317368?i=1466317626&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:09'),
(1466232785, 'Los Muchachos De BelÃ©n', 'Los Muchachos De BelÃ©n', 'los-muchachos-de-bel-n', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/13/36/7c/13367c66-4a6b-5caa-8fff-4f19ac3608a3/source/370x370bb.jpg', 0, '', '1', 1638596471, 0, 1, '5.0', 0, 0, 1976, '', '', 'https://music.apple.com/us/album/los-muchachos-de-bel%C3%A9n/1466232137?i=1466232785&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:11'),
(571313396, 'El DÃ­a Que Me Quieras', 'El DÃ­a Que Me Quieras', 'el-d-a-que-me-quieras', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/28/6e/53/286e538a-0936-088c-ad1c-d82bca6323f4/source/370x370bb.jpg', 0, '', '1', 1638596473, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/el-d%C3%ADa-que-me-quieras/571313002?i=571313396&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:41:13'),
(1466232600, 'El Agua De BelÃ©n', 'El Agua De BelÃ©n', 'el-agua-de-bel-n', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/13/36/7c/13367c66-4a6b-5caa-8fff-4f19ac3608a3/source/370x370bb.jpg', 0, '', '1', 1638596476, 0, 1, '5.0', 0, 0, 1976, '', '', 'https://music.apple.com/us/album/el-agua-de-bel%C3%A9n/1466232137?i=1466232600&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:16'),
(1364920542, 'El Que Se Fue', 'El Que Se Fue', 'el-que-se-fue', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music113/v4/1e/1e/23/1e1e2363-0c4d-3503-676e-9c2ef240b689/source/370x370bb.jpg', 0, '', '1', 1638596477, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/el-que-se-fue/1364919188?i=1364920542&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:17'),
(1466232355, 'Inolvidable', 'Inolvidable', 'inolvidable', 'https://www.last.fm/music/Fania+All+Stars/_/Inolvidable', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/13/36/7c/13367c66-4a6b-5caa-8fff-4f19ac3608a3/source/370x370bb.jpg', 0, '', '1', 1638596479, 0, 1, '5.0', 0, 0, 1976, '', '', 'https://music.apple.com/us/album/inolvidable/1466232137?i=1466232355&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:19'),
(1466232616, 'CuÃ¡ndo, CuÃ¡ndo, CuÃ¡ndo', 'CuÃ¡ndo, CuÃ¡ndo, CuÃ¡ndo', 'cu-ndo-cu-ndo-cu-ndo', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/13/36/7c/13367c66-4a6b-5caa-8fff-4f19ac3608a3/source/370x370bb.jpg', 0, '', '1', 1638596480, 0, 1, '5.0', 0, 0, 1976, '', '', 'https://music.apple.com/us/album/cu%C3%A1ndo-cu%C3%A1ndo-cu%C3%A1ndo/1466232137?i=1466232616&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:20'),
(1466232611, 'Cara De Payaso', 'Cara De Payaso', 'cara-de-payaso', 'https://www.last.fm/music/Fania+All+Stars/_/Cara+De+Payaso', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/13/36/7c/13367c66-4a6b-5caa-8fff-4f19ac3608a3/source/370x370bb.jpg', 0, '', '1', 1638596481, 0, 1, '5.0', 0, 0, 1976, '', '', 'https://music.apple.com/us/album/cara-de-payaso/1466232137?i=1466232611&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:21'),
(1466317524, 'Bello Amancer', 'Bello Amancer', 'bello-amancer', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596483, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/bello-amancer/1466317368?i=1466317524&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:23'),
(1466317504, 'Maricusa', 'Maricusa', 'maricusa', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596484, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/maricusa/1466317368?i=1466317504&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:24'),
(1466317515, 'Piensa En Mi', 'Piensa En Mi', 'piensa-en-mi', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596486, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/piensa-en-mi/1466317368?i=1466317515&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:26'),
(1466232504, 'Tiemblas', 'Tiemblas', 'tiemblas', 'https://www.last.fm/music/Fania+All+Stars/_/Tiemblas', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/13/36/7c/13367c66-4a6b-5caa-8fff-4f19ac3608a3/source/370x370bb.jpg', 0, '', '1', 1638596487, 0, 1, '5.0', 0, 0, 1976, '', '', 'https://music.apple.com/us/album/tiemblas/1466232137?i=1466232504&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:27'),
(1466232625, 'Fue En Santiago', 'Fue En Santiago', 'fue-en-santiago', 'https://www.last.fm/music/Fania+All+Stars/_/Fue+En+Santiago', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/13/36/7c/13367c66-4a6b-5caa-8fff-4f19ac3608a3/source/370x370bb.jpg', 0, '', '1', 1638596489, 0, 1, '5.0', 0, 0, 1976, '', '', 'https://music.apple.com/us/album/fue-en-santiago/1466232137?i=1466232625&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:29'),
(1325886529, 'El DÃ­a Que Me Quieras (feat. Tito RodrÃ­guez)', 'El DÃ­a Que Me Quieras (feat. Tito RodrÃ­guez)', 'el-d-a-que-me-quieras-feat-tito-rodr-guez-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/30/a0/e8/30a0e834-4ab4-eccc-173f-d853b6cf04b0/source/370x370bb.jpg', 0, '', '1', 1638596491, 0, 1, '5.0', 0, 0, 2017, '', '', 'https://music.apple.com/us/album/el-d%C3%ADa-que-me-quieras-feat-tito-rodr%C3%ADguez/1325886526?i=1325886529&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:41:31'),
(1466317498, 'Nunca', 'Nunca', 'nunca', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596492, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/nunca/1466317368?i=1466317498&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:32'),
(295816189, 'Mama Guela', 'Mama Guela', 'mama-guela', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/a4/43/f2/a443f2a6-e164-396e-f201-3b23491aaa81/source/370x370bb.jpg', 0, '', '1', 1638596494, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/mama-guela/295816185?i=295816189&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:41:34'),
(1466317374, 'No Te Quedes Con Las Ganas', 'No Te Quedes Con Las Ganas', 'no-te-quedes-con-las-ganas', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596496, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/no-te-quedes-con-las-ganas/1466317368?i=1466317374&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:36'),
(1466317502, 'De Enero, A Enero', 'De Enero, A Enero', 'de-enero-a-enero', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596498, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/de-enero-a-enero/1466317368?i=1466317502&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:38'),
(1466317622, 'El Lechero', 'El Lechero', 'el-lechero', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596499, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/el-lechero/1466317368?i=1466317622&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:39'),
(1466317497, 'Mantequita', 'Mantequita', 'mantequita', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596501, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/mantequita/1466317368?i=1466317497&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:41'),
(1466317519, 'Ponte En Vela', 'Ponte En Vela', 'ponte-en-vela', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596504, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/ponte-en-vela/1466317368?i=1466317519&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:44'),
(1466317511, 'Celoso', 'Celoso', 'celoso', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596505, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/celoso/1466317368?i=1466317511&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:45'),
(1466317618, 'Machacalo', 'Machacalo', 'machacalo', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/b7/97/3d/b7973d04-7c31-70af-5474-662c0e48d7cc/source/370x370bb.jpg', 0, '', '1', 1638596507, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://music.apple.com/us/album/machacalo/1466317368?i=1466317618&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:47'),
(295816197, 'Cuando Cuando', 'Cuando Cuando', 'cuando-cuando', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/a4/43/f2/a443f2a6-e164-396e-f201-3b23491aaa81/source/370x370bb.jpg', 0, '', '1', 1638596508, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/cuando-cuando/295816185?i=295816197&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:41:48'),
(295816192, 'Yambu', 'Yambu', 'yambu', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/a4/43/f2/a443f2a6-e164-396e-f201-3b23491aaa81/source/370x370bb.jpg', 0, '', '1', 1638596510, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/yambu/295816185?i=295816192&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:41:50'),
(697516992, 'Hay Mucho Que Olvidar', 'Hay Mucho Que Olvidar', 'hay-mucho-que-olvidar', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music6/v4/cf/dc/ad/cfdcad1d-cd89-3896-92a6-5e7b06806bf7/source/370x370bb.jpg', 0, '', '1', 1638596511, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/hay-mucho-que-olvidar/697516490?i=697516992&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 05:41:51'),
(1464269952, 'Amor, PerdÃ³name', 'Amor, PerdÃ³name', 'amor-perd-name', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/f6/0d/52/f60d523d-3190-be75-75b4-50286d26fbbf/source/370x370bb.jpg', 0, '', '1', 1638596513, 0, 1, '5.0', 0, 0, 1964, '', '', 'https://music.apple.com/us/album/amor-perd%C3%B3name/1464269943?i=1464269952&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 05:41:53'),
(661758006, 'Swinging Safari', 'Swinging Safari', 'swinging-safari', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Swinging+Safari', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1b/2c/98/1b2c9890-b2a2-10e3-c4ce-7588a1ba67d1/source/370x370bb.jpg', 0, '', '1', 1638600162, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/swinging-safari/661757970?i=661758006&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:42:42'),
(661814552, 'At the Hop', 'At the Hop', 'at-the-hop', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/At+the+Hop', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/6c/bb/89/6cbb897c-72da-0b1c-eed0-2738def5b3ac/source/370x370bb.jpg', 0, '', '1', 1638600164, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/at-the-hop/661813528?i=661814552&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:42:44'),
(661757971, 'Beatles-Medley', 'Beatles-Medley', 'beatles-medley', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/5a/9e/ae/5a9eae74-055d-c5d9-8ec9-655b3cc48274/source/370x370bb.jpg', 0, '', '1', 1638600165, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/beatles-medley/661757724?i=661757971&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:42:45'),
(661814413, 'Hang on Sloopy', 'Hang on Sloopy', 'hang-on-sloopy', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Hang+on+Sloopy', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/6c/bb/89/6cbb897c-72da-0b1c-eed0-2738def5b3ac/source/370x370bb.jpg', 0, '', '1', 1638600167, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/hang-on-sloopy/661813528?i=661814413&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:42:47'),
(661814746, 'Speedy Gonzales', 'Speedy Gonzales', 'speedy-gonzales', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Speedy+Gonzales', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/6c/bb/89/6cbb897c-72da-0b1c-eed0-2738def5b3ac/source/370x370bb.jpg', 0, '', '1', 1638600169, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/speedy-gonzales/661813528?i=661814746&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:42:49'),
(661814550, '63er-Medley', '63er-Medley', '63er-medley', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/6c/bb/89/6cbb897c-72da-0b1c-eed0-2738def5b3ac/source/370x370bb.jpg', 0, '', '1', 1638600171, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/63er-medley/661813528?i=661814550&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:42:51'),
(661755058, 'Huerenaff (Schlag)', 'Huerenaff (Schlag)', 'huerenaff-schlag-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/3e/f1/15/3ef11595-1c61-8e22-8ede-28b94e5c981a/source/370x370bb.jpg', 0, '', '1', 1638600173, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/huerenaff-schlag/661754592?i=661755058&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:42:53'),
(661814099, 'California', 'California', 'california', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/California', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/6c/bb/89/6cbb897c-72da-0b1c-eed0-2738def5b3ac/source/370x370bb.jpg', 0, '', '1', 1638600175, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/california/661813528?i=661814099&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:42:55'),
(661757973, 'Beach Boys-Medley', 'Beach Boys-Medley', 'beach-boys-medley', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/5a/9e/ae/5a9eae74-055d-c5d9-8ec9-655b3cc48274/source/370x370bb.jpg', 0, '', '1', 1638600177, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/beach-boys-medley/661757724?i=661757973&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:42:57'),
(661754960, 'Sloop John', 'Sloop John', 'sloop-john', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Sloop+John', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/3e/f1/15/3ef11595-1c61-8e22-8ede-28b94e5c981a/source/370x370bb.jpg', 0, '', '1', 1638600178, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/sloop-john/661754592?i=661754960&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:42:58'),
(661758336, 'Country Roads', 'Country Roads', 'country-roads', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Country+Roads', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/be/7e/49/be7e4983-ca5d-d2e6-fe1d-8112e54704c1/source/370x370bb.jpg', 0, '', '1', 1638600181, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/country-roads/661757725?i=661758336&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:01'),
(661814336, 'Abba-Medley', 'Abba-Medley', 'abba-medley', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/6c/bb/89/6cbb897c-72da-0b1c-eed0-2738def5b3ac/source/370x370bb.jpg', 0, '', '1', 1638600183, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/abba-medley/661813528?i=661814336&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:03'),
(661754957, 'Entspann Di (Schlag)', 'Entspann Di (Schlag)', 'entspann-di-schlag-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/3e/f1/15/3ef11595-1c61-8e22-8ede-28b94e5c981a/source/370x370bb.jpg', 0, '', '1', 1638600184, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/entspann-di-schlag/661754592?i=661754957&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:04'),
(661757983, 'Fats Domino', 'Fats Domino', 'fats-domino', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Fats+Domino', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/be/7e/49/be7e4983-ca5d-d2e6-fe1d-8112e54704c1/source/370x370bb.jpg', 0, '', '1', 1638600186, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/fats-domino/661757725?i=661757983&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:06'),
(661758247, 'Magarena', 'Magarena', 'magarena', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Magarena', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1b/2c/98/1b2c9890-b2a2-10e3-c4ce-7588a1ba67d1/source/370x370bb.jpg', 0, '', '1', 1638600188, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/magarena/661757970?i=661758247&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:08'),
(661758003, 'Abba', 'Abba', 'abba', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/ABBA', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1b/2c/98/1b2c9890-b2a2-10e3-c4ce-7588a1ba67d1/source/370x370bb.jpg', 0, '', '1', 1638600189, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/abba/661757970?i=661758003&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:09'),
(661757995, 'Hit the Road Jack', 'Hit the Road Jack', 'hit-the-road-jack', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Hit+the+Road+Jack', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1b/2c/98/1b2c9890-b2a2-10e3-c4ce-7588a1ba67d1/source/370x370bb.jpg', 0, '', '1', 1638600191, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/hit-the-road-jack/661757970?i=661757995&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:11'),
(661757992, 'Hawaii Five 0', 'Hawaii Five 0', 'hawaii-five-0', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Hawaii+Five+0', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1b/2c/98/1b2c9890-b2a2-10e3-c4ce-7588a1ba67d1/source/370x370bb.jpg', 0, '', '1', 1638600193, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/hawaii-five-0/661757970?i=661757992&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:13'),
(661757975, 'Eav (erste Allgemeine Verunsicherung)', 'Eav (erste Allgemeine Verunsicherung)', 'eav-erste-allgemeine-verunsicherung-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/5a/9e/ae/5a9eae74-055d-c5d9-8ec9-655b3cc48274/source/370x370bb.jpg', 0, '', '1', 1638600194, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/eav-erste-allgemeine-verunsicherung/661757724?i=661757975&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:14'),
(661757991, 'Gloria', 'Gloria', 'gloria', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Gloria', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/5a/9e/ae/5a9eae74-055d-c5d9-8ec9-655b3cc48274/source/370x370bb.jpg', 0, '', '1', 1638600196, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/gloria/661757724?i=661757991&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:16'),
(661758017, 'Theo', 'Theo', 'theo', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Theo', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1b/2c/98/1b2c9890-b2a2-10e3-c4ce-7588a1ba67d1/source/370x370bb.jpg', 0, '', '1', 1638600198, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/theo/661757970?i=661758017&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:18'),
(661758001, 'Mamma Lou', 'Mamma Lou', 'mamma-lou', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Mamma+Lou', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/be/7e/49/be7e4983-ca5d-d2e6-fe1d-8112e54704c1/source/370x370bb.jpg', 0, '', '1', 1638600199, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/mamma-lou/661757725?i=661758001&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:19'),
(661755057, 'Im Wagen Vor Mir', 'Im Wagen Vor Mir', 'im-wagen-vor-mir', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Im+Wagen+Vor+Mir', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/3e/f1/15/3ef11595-1c61-8e22-8ede-28b94e5c981a/source/370x370bb.jpg', 0, '', '1', 1638600201, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/im-wagen-vor-mir/661754592?i=661755057&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:21'),
(661758030, 'Que Serra', 'Que Serra', 'que-serra', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Que+Serra', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/5a/9e/ae/5a9eae74-055d-c5d9-8ec9-655b3cc48274/source/370x370bb.jpg', 0, '', '1', 1638600203, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/que-serra/661757724?i=661758030&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:23'),
(661754958, 'Eine Reise Ins GlÃ¼ck', 'Eine Reise Ins GlÃ¼ck', 'eine-reise-ins-gl-ck', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/3e/f1/15/3ef11595-1c61-8e22-8ede-28b94e5c981a/source/370x370bb.jpg', 0, '', '1', 1638600205, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/eine-reise-ins-gl%C3%BCck/661754592?i=661754958&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:25'),
(661814462, 'Reggae', 'Reggae', 'reggae', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Reggae', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/6c/bb/89/6cbb897c-72da-0b1c-eed0-2738def5b3ac/source/370x370bb.jpg', 0, '', '1', 1638600207, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/reggae/661813528?i=661814462&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:27'),
(661815070, 'Komm Zeig Mir Die Berge', 'Komm Zeig Mir Die Berge', 'komm-zeig-mir-die-berge', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Komm+Zeig+Mir+Die+Berge', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/6c/bb/89/6cbb897c-72da-0b1c-eed0-2738def5b3ac/source/370x370bb.jpg', 0, '', '1', 1638600209, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/komm-zeig-mir-die-berge/661813528?i=661815070&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:29'),
(661758330, 'Gummi-Tor', 'Gummi-Tor', 'gummi-tor', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1b/2c/98/1b2c9890-b2a2-10e3-c4ce-7588a1ba67d1/source/370x370bb.jpg', 0, '', '1', 1638600211, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/gummi-tor/661757970?i=661758330&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:31'),
(661757978, 'Bellini', 'Bellini', 'bellini', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Bellini', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/5a/9e/ae/5a9eae74-055d-c5d9-8ec9-655b3cc48274/source/370x370bb.jpg', 0, '', '1', 1638600212, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/bellini/661757724?i=661757978&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:32'),
(661755066, 'Anita Mendocino', 'Anita Mendocino', 'anita-mendocino', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Anita+Mendocino', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/3e/f1/15/3ef11595-1c61-8e22-8ede-28b94e5c981a/source/370x370bb.jpg', 0, '', '1', 1638600214, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/anita-mendocino/661754592?i=661755066&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:34'),
(661757993, 'Paul Simon', 'Paul Simon', 'paul-simon', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Paul+Simon', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/be/7e/49/be7e4983-ca5d-d2e6-fe1d-8112e54704c1/source/370x370bb.jpg', 0, '', '1', 1638600216, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/paul-simon/661757725?i=661757993&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:36'),
(661758329, 'Herzilein', 'Herzilein', 'herzilein', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Herzilein', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/be/7e/49/be7e4983-ca5d-d2e6-fe1d-8112e54704c1/source/370x370bb.jpg', 0, '', '1', 1638600217, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/herzilein/661757725?i=661758329&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:37'),
(661757977, 'Auf Dem Mond', 'Auf Dem Mond', 'auf-dem-mond', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Auf+Dem+Mond', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/be/7e/49/be7e4983-ca5d-d2e6-fe1d-8112e54704c1/source/370x370bb.jpg', 0, '', '1', 1638600219, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/auf-dem-mond/661757725?i=661757977&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:39'),
(661755065, 'Holzmichl (+23.02.2006 Vor Em Beck Meile!)', 'Holzmichl (+23.02.2006 Vor Em Beck Meile!)', 'holzmichl-23-02-2006-vor-em-beck-meile-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/3e/f1/15/3ef11595-1c61-8e22-8ede-28b94e5c981a/source/370x370bb.jpg', 0, '', '1', 1638600220, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/holzmichl-23-02-2006-vor-em-beck-meile/661754592?i=661755065&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:40'),
(661755094, 'Drei Finger Auf\\&#39;s Herz', 'Drei Finger Auf\\&#39;s Herz', 'drei-finger-auf-s-herz', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/3e/f1/15/3ef11595-1c61-8e22-8ede-28b94e5c981a/source/370x370bb.jpg', 0, '', '1', 1638600222, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/drei-finger-aufs-herz/661754592?i=661755094&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:42'),
(661758038, 'Greatest Lover', 'Greatest Lover', 'greatest-lover', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Greatest+Lover', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1b/2c/98/1b2c9890-b2a2-10e3-c4ce-7588a1ba67d1/source/370x370bb.jpg', 0, '', '1', 1638600224, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/greatest-lover/661757970?i=661758038&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:44'),
(661758246, 'Sterne', 'Sterne', 'sterne', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Sterne', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/be/7e/49/be7e4983-ca5d-d2e6-fe1d-8112e54704c1/source/370x370bb.jpg', 0, '', '1', 1638600226, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/sterne/661757725?i=661758246&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:46'),
(661758034, 'Bernhardiner', 'Bernhardiner', 'bernhardiner', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Bernhardiner', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/be/7e/49/be7e4983-ca5d-d2e6-fe1d-8112e54704c1/source/370x370bb.jpg', 0, '', '1', 1638600228, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/bernhardiner/661757725?i=661758034&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:48'),
(661757986, 'Wanderer', 'Wanderer', 'wanderer', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Wanderer', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/be/7e/49/be7e4983-ca5d-d2e6-fe1d-8112e54704c1/source/370x370bb.jpg', 0, '', '1', 1638600230, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/wanderer/661757725?i=661757986&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:50'),
(661814882, 'Mexico', 'Mexico', 'mexico', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Mexico', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/6c/bb/89/6cbb897c-72da-0b1c-eed0-2738def5b3ac/source/370x370bb.jpg', 0, '', '1', 1638600232, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/mexico/661813528?i=661814882&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:52'),
(661757996, 'Floral Dance', 'Floral Dance', 'floral-dance', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Floral+Dance', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/5a/9e/ae/5a9eae74-055d-c5d9-8ec9-655b3cc48274/source/370x370bb.jpg', 0, '', '1', 1638600233, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/floral-dance/661757724?i=661757996&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:53'),
(661754956, 'Das Erste Mal Tut\\&#39;s Noch Weh', 'Das Erste Mal Tut\\&#39;s Noch Weh', 'das-erste-mal-tut-s-noch-weh', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/3e/f1/15/3ef11595-1c61-8e22-8ede-28b94e5c981a/source/370x370bb.jpg', 0, '', '1', 1638600235, 0, 1, '5.0', 1, 0, 2013, '', '', 'https://music.apple.com/us/album/das-erste-mal-tuts-noch-weh/661754592?i=661754956&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:55'),
(661754876, 'Wettstein-Marsch', 'Wettstein-Marsch', 'wettstein-marsch', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/3e/f1/15/3ef11595-1c61-8e22-8ede-28b94e5c981a/source/370x370bb.jpg', 0, '', '1', 1638600236, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/wettstein-marsch/661754592?i=661754876&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:56'),
(661758012, 'Rote Lippen', 'Rote Lippen', 'rote-lippen', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Rote+Lippen', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/be/7e/49/be7e4983-ca5d-d2e6-fe1d-8112e54704c1/source/370x370bb.jpg', 0, '', '1', 1638600238, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/rote-lippen/661757725?i=661758012&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:58'),
(661758004, 'Hildegard', 'Hildegard', 'hildegard', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Hildegard', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/5a/9e/ae/5a9eae74-055d-c5d9-8ec9-655b3cc48274/source/370x370bb.jpg', 0, '', '1', 1638600239, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/hildegard/661757724?i=661758004&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:43:59'),
(661758388, 'Noggimarsch', 'Noggimarsch', 'noggimarsch', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Noggimarsch', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/be/7e/49/be7e4983-ca5d-d2e6-fe1d-8112e54704c1/source/370x370bb.jpg', 0, '', '1', 1638600241, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/noggimarsch/661757725?i=661758388&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:44:01'),
(661758020, 'Wunderwalz', 'Wunderwalz', 'wunderwalz', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Wunderwalz', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/5a/9e/ae/5a9eae74-055d-c5d9-8ec9-655b3cc48274/source/370x370bb.jpg', 0, '', '1', 1638600243, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/wunderwalz/661757724?i=661758020&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:44:03'),
(661814484, 'Queen-Medley', 'Queen-Medley', 'queen-medley', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/6c/bb/89/6cbb897c-72da-0b1c-eed0-2738def5b3ac/source/370x370bb.jpg', 0, '', '1', 1638600245, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/queen-medley/661813528?i=661814484&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:44:05'),
(661754916, 'Simply the Best', 'Simply the Best', 'simply-the-best', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Simply+the+Best', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music128/v4/3e/f1/15/3ef11595-1c61-8e22-8ede-28b94e5c981a/source/370x370bb.jpg', 0, '', '1', 1638600247, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/simply-the-best/661754592?i=661754916&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:44:07'),
(661758387, 'Griechischer Wein', 'Griechischer Wein', 'griechischer-wein', 'https://www.last.fm/music/Noggeler+Guuggenmusig+Luzern/_/Griechischer+Wein', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/1b/2c/98/1b2c9890-b2a2-10e3-c4ce-7588a1ba67d1/source/370x370bb.jpg', 0, '', '1', 1638600248, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/griechischer-wein/661757970?i=661758387&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:44:08'),
(87055725, 'A Eme O', 'A Eme O', 'a-eme-o', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/cf/1d/dd/cf1ddd7d-2e7a-901e-5694-483f84ddcfb1/source/370x370bb.jpg', 0, '', '1', 1638600407, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/a-eme-o/87055867?i=87055725&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:46:47'),
(87055636, 'El Album', 'El Album', 'el-album', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/cf/1d/dd/cf1ddd7d-2e7a-901e-5694-483f84ddcfb1/source/370x370bb.jpg', 0, '', '1', 1638600409, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/el-album/87055867?i=87055636&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:46:49'),
(87055818, 'Amortiguador', 'Amortiguador', 'amortiguador', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/cf/1d/dd/cf1ddd7d-2e7a-901e-5694-483f84ddcfb1/source/370x370bb.jpg', 0, '', '1', 1638600410, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/amortiguador/87055867?i=87055818&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:46:50'),
(87055332, 'Pipa de la Paz', 'Pipa de la Paz', 'pipa-de-la-paz', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/cf/1d/dd/cf1ddd7d-2e7a-901e-5694-483f84ddcfb1/source/370x370bb.jpg', 0, '', '1', 1638600412, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/pipa-de-la-paz/87055867?i=87055332&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:46:52'),
(87055402, 'Ya Yo No', 'Ya Yo No', 'ya-yo-no', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/cf/1d/dd/cf1ddd7d-2e7a-901e-5694-483f84ddcfb1/source/370x370bb.jpg', 0, '', '1', 1638600414, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/ya-yo-no/87055867?i=87055402&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:46:54'),
(87055515, 'Menos Mal', 'Menos Mal', 'menos-mal', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/cf/1d/dd/cf1ddd7d-2e7a-901e-5694-483f84ddcfb1/source/370x370bb.jpg', 0, '', '1', 1638600415, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/menos-mal/87055867?i=87055515&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:46:55'),
(1592752372, 'Bolero Falaz (feat. Diamante ElÃ©ctrico, Juan Galeano, Systema Solar, The Mills, Andrea Echeverri, Conector, Pipe Bravo & Alvarezmejia)', 'Bolero Falaz (feat. Diamante ElÃ©ctrico, Juan Galeano, Systema Solar, The Mills, Andrea Echeverri, Conector, Pipe Bravo & Alvarezmejia)', 'bolero-falaz-feat-diamante-el-ctrico-juan-galeano-systema-solar-the-mills-andrea-echeverri-conector-pipe-bravo-alvarezmejia-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music116/v4/d8/a7/56/d8a756c0-7553-0395-7042-b7807cd82322/source/370x370bb.jpg', 0, '', '1', 1638600417, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://music.apple.com/us/album/bolero-falaz-feat-diamante-el%C3%A9ctrico-juan-galeano-systema/1592752369?i=1592752372&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:46:57'),
(566085749, 'Yabo', 'Yabo', 'yabo', 'https://www.last.fm/music/Solomon+Lange/_/Yabo', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600655, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/yabo/566084965?i=566085749&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:50:55'),
(1562966208, 'Lover of My Soul (feat. Solomon Lange)', 'Lover of My Soul (feat. Solomon Lange)', 'lover-of-my-soul-feat-solomon-lange-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/79/9c/a5/799ca537-a9d4-735d-c2de-d703aa3d65f8/source/370x370bb.jpg', 0, '', '1', 1638600657, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/lover-of-my-soul-feat-solomon-lange/1562966207?i=1562966208&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:50:57'),
(928116779, 'Yesu (feat. Benjamin Lange)', 'Yesu (feat. Benjamin Lange)', 'yesu-feat-benjamin-lange-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/9e/5f/bd/9e5fbd6a-b95e-1427-f2a2-e3206cd5f351/source/370x370bb.jpg', 0, '', '1', 1638600659, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/yesu-feat-benjamin-lange/928116684?i=928116779&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:50:59'),
(566085767, 'Imela', 'Imela', 'imela', 'https://www.last.fm/music/Solomon+Lange/_/Imela', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600662, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/imela/566084965?i=566085767&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:02'),
(1554325856, 'Wipe Away Your Tears (feat. solomon lange)', 'Wipe Away Your Tears (feat. solomon lange)', 'wipe-away-your-tears-feat-solomon-lange-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/85/1e/7c/851e7cdd-15c9-e5cc-8d4f-dc157c5e3e8a/source/370x370bb.jpg', 0, '', '1', 1638600663, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/wipe-away-your-tears-feat-solomon-lange/1554325855?i=1554325856&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 06:51:03'),
(566085759, 'Yesu Masoyina', 'Yesu Masoyina', 'yesu-masoyina', 'https://www.last.fm/music/Solomon+Lange/_/Yesu+masoyina', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600665, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/yesu-masoyina/566084965?i=566085759&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:05'),
(1574735985, 'Sunar Yesu Remix (feat. Solomon Lange)', 'Sunar Yesu Remix (feat. Solomon Lange)', 'sunar-yesu-remix-feat-solomon-lange-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/8e/ed/16/8eed166d-827b-3f49-f2b5-529d88f8c280/source/370x370bb.jpg', 0, '', '1', 1638600667, 0, 1, '5.0', 0, 0, 2021, '', '', 'https://music.apple.com/us/album/sunar-yesu-remix-feat-solomon-lange/1574735983?i=1574735985&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:07'),
(566084968, 'God Is Good', 'God Is Good', 'god-is-good', 'https://www.last.fm/music/Solomon+Lange/_/God+is+good', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600669, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/god-is-good/566084965?i=566084968&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:09'),
(566085754, 'Alheri', 'Alheri', 'alheri', 'https://www.last.fm/music/Solomon+Lange/_/Alheri', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600671, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/alheri/566084965?i=566085754&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:11'),
(1364589895, 'You Have Done Me Well (feat. Flora Lange)', 'You Have Done Me Well (feat. Flora Lange)', 'you-have-done-me-well-feat-flora-lange-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music118/v4/5a/65/49/5a6549aa-61fe-a69c-a777-3cb215a182bc/source/370x370bb.jpg', 0, '', '1', 1638600672, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/you-have-done-me-well-feat-flora-lange/1364587521?i=1364589895&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 06:51:12'),
(566085756, 'Papa Jehova', 'Papa Jehova', 'papa-jehova', 'https://www.last.fm/music/Solomon+Lange/_/Papa+Jehova', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600673, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/papa-jehova/566084965?i=566085756&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:13'),
(947563355, 'I Believe in Dreams', 'I Believe in Dreams', 'i-believe-in-dreams', 'https://www.last.fm/music/Solomon+Lange/_/I+believe+in+Dreams', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/10/f8/eb/10f8eb56-4b2d-1cfe-b4f9-3a3097be6f26/source/370x370bb.jpg', 0, '', '1', 1638600675, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/i-believe-in-dreams/947563299?i=947563355&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:15'),
(566085757, 'Na Gode (Remix)', 'Na Gode (Remix)', 'na-gode-remix-', 'https://www.last.fm/music/Solomon+Lange/_/Na+Gode+Remix', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600676, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/na-gode-remix/566084965?i=566085757&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:16'),
(566085761, 'What Else Can I Say (feat. Grandsun)', 'What Else Can I Say (feat. Grandsun)', 'what-else-can-i-say-feat-grandsun-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600677, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/what-else-can-i-say-feat-grandsun/566084965?i=566085761&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:17'),
(566085765, 'Praise Da Lord', 'Praise Da Lord', 'praise-da-lord', 'https://www.last.fm/music/Solomon+Lange/_/Praise+da+Lord', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600679, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/praise-da-lord/566084965?i=566085765&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:19'),
(566085751, 'I Believe (feat. Samsong)', 'I Believe (feat. Samsong)', 'i-believe-feat-samsong-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600680, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/i-believe-feat-samsong/566084965?i=566085751&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:20'),
(566085760, 'Yahweh', 'Yahweh', 'yahweh', 'https://www.last.fm/music/Solomon+Lange/_/Yahweh', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600682, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/yahweh/566084965?i=566085760&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:22'),
(566085755, 'A Gareka Na Dogara (feat. Mista Seth)', 'A Gareka Na Dogara (feat. Mista Seth)', 'a-gareka-na-dogara-feat-mista-seth-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600684, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/a-gareka-na-dogara-feat-mista-seth/566084965?i=566085755&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:24'),
(566085766, 'Papa I Thank You', 'Papa I Thank You', 'papa-i-thank-you', 'https://www.last.fm/music/Solomon+Lange/_/Papa+I+thank+You', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600685, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/papa-i-thank-you/566084965?i=566085766&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:25'),
(566085758, 'Mai Ceto', 'Mai Ceto', 'mai-ceto', 'https://www.last.fm/music/Solomon+Lange/_/Mai+Ceto', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600686, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/mai-ceto/566084965?i=566085758&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:26'),
(566085750, 'Almasihu', 'Almasihu', 'almasihu', 'https://www.last.fm/music/Solomon+Lange/_/Almasihu', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600688, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/almasihu/566084965?i=566085750&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:28'),
(566085768, 'Godiya (feat. Buzu)', 'Godiya (feat. Buzu)', 'godiya-feat-buzu-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600689, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/godiya-feat-buzu/566084965?i=566085768&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:29'),
(566085792, 'Alheri (Remix) [feat. Bouqui]', 'Alheri (Remix) [feat. Bouqui]', 'alheri-remix-feat-bouqui-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music115/v4/d9/19/ca/d919cac0-893a-9792-79b6-51f95c0df924/source/370x370bb.jpg', 0, '', '1', 1638600691, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/alheri-remix-feat-bouqui/566084965?i=566085792&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:31'),
(1462690860, 'Ka Share Hawaye (feat. Solomon lange)', 'Ka Share Hawaye (feat. Solomon lange)', 'ka-share-hawaye-feat-solomon-lange-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music123/v4/75/8c/b6/758cb67e-23af-0ccc-27be-3de0f94c85c3/source/370x370bb.jpg', 0, '', '1', 1638600692, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/ka-share-hawaye-feat-solomon-lange/1462690433?i=1462690860&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:32'),
(1296544269, 'Oche Kao\\&#39;che (feat. Solomon Lange)', 'Oche Kao\\&#39;che (feat. Solomon Lange)', 'oche-kao-che-feat-solomon-lange-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music118/v4/8c/0b/67/8c0b6791-69a8-a348-264c-6b5efd29d064/source/370x370bb.jpg', 0, '', '1', 1638600694, 0, 1, '5.0', 0, 0, 2017, '', '', 'https://music.apple.com/us/album/oche-kaoche-feat-solomon-lange/1296544262?i=1296544269&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:34'),
(1112406589, 'Jehovah Reigns', 'Jehovah Reigns', 'jehovah-reigns', 'https://www.last.fm/music/Solomon+Lange/_/Jehovah+Reigns', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music20/v4/a0/81/8c/a0818cea-4ec2-a8e1-719e-e0f24ebc8fd9/source/370x370bb.jpg', 0, '', '1', 1638600697, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/jehovah-reigns/1112405408?i=1112406589&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:37');
INSERT INTO `tbl_songs` (`id`, `song_title`, `keywords`, `song_seo`, `lastfm_url`, `ad_code`, `video_code`, `picture`, `popularity`, `description`, `song_status`, `posted_date`, `latest_one`, `ranking_order`, `rate_song`, `review_count`, `latest`, `song_year`, `amazon_url`, `google_url`, `itunes_url`, `itunes_price`, `refer_seo`, `country`, `currency`, `timeupdated`, `updated_by_itunes`) VALUES
(1112406586, 'Jesus Makes', 'Jesus Makes', 'jesus-makes', 'https://www.last.fm/music/Solomon+Lange/_/Jesus+Makes', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music20/v4/a0/81/8c/a0818cea-4ec2-a8e1-719e-e0f24ebc8fd9/source/370x370bb.jpg', 0, '', '1', 1638600699, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/jesus-makes/1112405408?i=1112406586&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:39'),
(1367457956, 'Grace', 'Grace', 'grace', 'https://www.last.fm/music/Solomon+Lange/_/Grace', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/6b/4b/b0/6b4bb0b5-c36e-1d9e-8501-3a56d47f7d96/source/370x370bb.jpg', 0, '', '1', 1638600700, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/grace/1367457143?i=1367457956&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 06:51:40'),
(1267477049, 'Salama (feat. Solomon Lange)', 'Salama (feat. Solomon Lange)', 'salama-feat-solomon-lange-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/4d/18/b1/4d18b19b-745d-b7ee-48fa-cb91622b9b6c/source/370x370bb.jpg', 0, '', '1', 1638600701, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/salama-feat-solomon-lange/1267476577?i=1267477049&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:41'),
(947563390, 'Na Gode Pt. 2', 'Na Gode Pt. 2', 'na-gode-pt-2', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/10/f8/eb/10f8eb56-4b2d-1cfe-b4f9-3a3097be6f26/source/370x370bb.jpg', 0, '', '1', 1638600704, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/na-gode-pt-2/947563299?i=947563390&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:44'),
(1112406150, 'My Offering', 'My Offering', 'my-offering', 'https://www.last.fm/music/Solomon+Lange/_/My+offering', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music20/v4/a0/81/8c/a0818cea-4ec2-a8e1-719e-e0f24ebc8fd9/source/370x370bb.jpg', 0, '', '1', 1638600706, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/my-offering/1112405408?i=1112406150&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:46'),
(1582523948, 'Ukulu Lange Kamina (feat. Solomon Mngoni)', 'Ukulu Lange Kamina (feat. Solomon Mngoni)', 'ukulu-lange-kamina-feat-solomon-mngoni-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/68/7d/b6/687db683-798b-98e8-ca01-34d6c1368541/source/370x370bb.jpg', 0, '', '1', 1638600708, 0, 1, '5.0', 0, 0, 2017, '', '', 'https://music.apple.com/us/album/ukulu-lange-kamina-feat-solomon-mngoni-2021-remastered/1582523798?i=1582523948&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:48'),
(1574964802, 'Only Thanks to God (feat. solomon lange)', 'Only Thanks to God (feat. solomon lange)', 'only-thanks-to-god-feat-solomon-lange-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/60/ac/f4/60acf416-f9f4-c8cf-6f1f-8d795c1244a0/source/370x370bb.jpg', 0, '', '1', 1638600710, 0, 1, '9.0', 1, 0, 2021, '', '', 'https://music.apple.com/us/album/only-thanks-to-god-feat-solomon-lange/1574964800?i=1574964802&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 06:51:50'),
(928116749, 'Godiya', 'Godiya', 'godiya', 'https://www.last.fm/music/Solomon+Lange/_/Godiya', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/9e/5f/bd/9e5fbd6a-b95e-1427-f2a2-e3206cd5f351/source/370x370bb.jpg', 0, '', '1', 1638600711, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/godiya/928116684?i=928116749&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:51'),
(928116776, 'Messiah', 'Messiah', 'messiah', 'https://www.last.fm/music/Solomon+Lange/_/Messiah', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/9e/5f/bd/9e5fbd6a-b95e-1427-f2a2-e3206cd5f351/source/370x370bb.jpg', 0, '', '1', 1638600714, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/messiah/928116684?i=928116776&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:54'),
(1112406672, 'Imela (Remix)', 'Imela (Remix)', 'imela-remix-', 'https://www.last.fm/music/Solomon+Lange/_/Imela+Remix', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music20/v4/a0/81/8c/a0818cea-4ec2-a8e1-719e-e0f24ebc8fd9/source/370x370bb.jpg', 0, '', '1', 1638600716, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/imela-remix/1112405408?i=1112406672&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:56'),
(1112406132, 'Alade Ewura', 'Alade Ewura', 'alade-ewura', 'https://www.last.fm/music/Solomon+Lange/_/Alade+Ewura', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music20/v4/a0/81/8c/a0818cea-4ec2-a8e1-719e-e0f24ebc8fd9/source/370x370bb.jpg', 0, '', '1', 1638600718, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/alade-ewura/1112405408?i=1112406132&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:58'),
(1112406417, 'You Are Worthy (feat. Sammie Okposo)', 'You Are Worthy (feat. Sammie Okposo)', 'you-are-worthy-feat-sammie-okposo-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music20/v4/a0/81/8c/a0818cea-4ec2-a8e1-719e-e0f24ebc8fd9/source/370x370bb.jpg', 0, '', '1', 1638600719, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/you-are-worthy-feat-sammie-okposo/1112405408?i=1112406417&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:51:59'),
(928116752, 'Yayi', 'Yayi', 'yayi', 'https://www.last.fm/music/Solomon+Lange/_/Yayi', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/9e/5f/bd/9e5fbd6a-b95e-1427-f2a2-e3206cd5f351/source/370x370bb.jpg', 0, '', '1', 1638600721, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/yayi/928116684?i=928116752&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:52:01'),
(928116750, 'Mai Grima', 'Mai Grima', 'mai-grima', 'https://www.last.fm/music/Solomon+Lange/_/Mai+Grima', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/9e/5f/bd/9e5fbd6a-b95e-1427-f2a2-e3206cd5f351/source/370x370bb.jpg', 0, '', '1', 1638600723, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/mai-grima/928116684?i=928116750&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:52:03'),
(1112406674, 'New Nigeria', 'New Nigeria', 'new-nigeria', 'https://www.last.fm/music/Solomon+Lange/_/New+Nigeria', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music20/v4/a0/81/8c/a0818cea-4ec2-a8e1-719e-e0f24ebc8fd9/source/370x370bb.jpg', 0, '', '1', 1638600725, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/new-nigeria/1112405408?i=1112406674&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:52:05'),
(1112406140, 'Grace', 'Grace', 'grace', 'https://www.last.fm/music/Solomon+Lange/_/Grace', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music20/v4/a0/81/8c/a0818cea-4ec2-a8e1-719e-e0f24ebc8fd9/source/370x370bb.jpg', 0, '', '1', 1638600727, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/grace/1112405408?i=1112406140&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:52:07'),
(947563361, 'Na Gode', 'Na Gode', 'na-gode', 'https://www.last.fm/music/Solomon+Lange/_/Na+Gode', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/10/f8/eb/10f8eb56-4b2d-1cfe-b4f9-3a3097be6f26/source/370x370bb.jpg', 0, '', '1', 1638600729, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/na-gode/947563299?i=947563361&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:52:09'),
(928116759, 'What Else Can I Say', 'What Else Can I Say', 'what-else-can-i-say', 'https://www.last.fm/music/Solomon+Lange/_/What+else+can+I+Say', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music3/v4/9e/5f/bd/9e5fbd6a-b95e-1427-f2a2-e3206cd5f351/source/370x370bb.jpg', 0, '', '1', 1638600730, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/what-else-can-i-say/928116684?i=928116759&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:52:10'),
(1112406594, 'Godiya', 'Godiya', 'godiya', 'https://www.last.fm/music/Solomon+Lange/_/Godiya', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music20/v4/a0/81/8c/a0818cea-4ec2-a8e1-719e-e0f24ebc8fd9/source/370x370bb.jpg', 0, '', '1', 1638600732, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/godiya/1112405408?i=1112406594&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:52:12'),
(1112406303, 'What Can I Say (feat. Chris Morgan)', 'What Can I Say (feat. Chris Morgan)', 'what-can-i-say-feat-chris-morgan-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music20/v4/a0/81/8c/a0818cea-4ec2-a8e1-719e-e0f24ebc8fd9/source/370x370bb.jpg', 0, '', '1', 1638600733, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/what-can-i-say-feat-chris-morgan/1112405408?i=1112406303&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:52:13'),
(947563359, 'Calling Ma Name', 'Calling Ma Name', 'calling-ma-name', 'https://www.last.fm/music/Solomon+Lange/_/Calling+ma+name', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/10/f8/eb/10f8eb56-4b2d-1cfe-b4f9-3a3097be6f26/source/370x370bb.jpg', 0, '', '1', 1638600735, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/calling-ma-name/947563299?i=947563359&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:52:15'),
(1545793450, 'Yesu (feat. Solomon Lange)', 'Yesu (feat. Solomon Lange)', 'yesu-feat-solomon-lange-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/31/0c/86/310c86c9-f358-3473-88e7-05976fbc6c86/source/370x370bb.jpg', 0, '', '1', 1638600737, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/yesu-feat-solomon-lange/1545793449?i=1545793450&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:52:17'),
(1597742834, 'Champions Roar (feat. Solomon Lange)', 'Champions Roar (feat. Solomon Lange)', 'champions-roar-feat-solomon-lange-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music116/v4/33/ce/3b/33ce3bc0-7d25-b487-2451-408ea8d4c79b/source/370x370bb.jpg', 0, '', '1', 1638600738, 0, 1, '7.0', 1, 0, 2021, '', '', 'https://music.apple.com/us/album/champions-roar-feat-solomon-lange/1597742833?i=1597742834&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:52:18'),
(1503242309, 'My Praise (feat. Solomon Lange)', 'My Praise (feat. Solomon Lange)', 'my-praise-feat-solomon-lange-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/d5/14/2c/d5142c43-63dc-00c0-1809-96ec41e6c48f/source/370x370bb.jpg', 0, '', '1', 1638600740, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/my-praise-feat-solomon-lange/1503242308?i=1503242309&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:52:20'),
(1444070173, 'Duke of Iron', 'Duke of Iron', 'duke-of-iron', 'https://www.last.fm/music/Sonny+Rollins/_/Duke+Of+Iron', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/60/a0/b1/60a0b1d5-9556-999f-6b46-9b2d884f5526/source/370x370bb.jpg', 0, '', '1', 1638601104, 0, 1, '5.0', 0, 0, 1987, '', '', 'https://music.apple.com/us/album/duke-of-iron/1444069970?i=1444070173&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 06:58:24'),
(1443229371, 'Duke of Iron', 'Duke of Iron', 'duke-of-iron', 'https://www.last.fm/music/Sonny+Rollins/_/Duke+Of+Iron', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/01/ce/9c/01ce9c77-0bcc-7a4c-a764-24be189e96fd/source/370x370bb.jpg', 0, '', '1', 1638601106, 0, 1, '5.0', 0, 0, 1987, '', '', 'https://music.apple.com/us/album/duke-of-iron/1443229001?i=1443229371&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 06:58:26'),
(1447132901, 'Duke Of Iron', 'Duke Of Iron', 'duke-of-iron', 'https://www.last.fm/music/Sonny+Rollins/_/Duke+Of+Iron', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/97/3c/2f/973c2fdf-8cb2-cb95-0136-9ef1a17d9a20/source/370x370bb.jpg', 0, '', '1', 1638601108, 0, 1, '5.0', 0, 0, 1987, '', '', 'https://music.apple.com/us/album/duke-of-iron/1447132747?i=1447132901&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 06:58:28'),
(1502752169, 'Duke of Iron (Live) [feat. Scott Wenzel]', 'Duke of Iron (Live) [feat. Scott Wenzel]', 'duke-of-iron-live-feat-scott-wenzel-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music113/v4/f7/17/0c/f7170c2f-943d-ff40-597f-a98c3df41739/source/370x370bb.jpg', 0, '', '1', 1638601109, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/duke-of-iron-live-feat-scott-wenzel/1502752163?i=1502752169&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:29'),
(608579820, 'Duke of Iron (feat. Wojciech Rajski, Andrzej Jagodzinski, Czeslaw \\&#39;Maly\\&#39; Bartkowski, Adam Cegielski & Polish Chamber Philharmonic Orchestra Sopot)', 'Duke of Iron (feat. Wojciech Rajski, Andrzej Jagodzinski, Czeslaw \\&#39;Maly\\&#39; Bartkowski, Adam Cegielski & Polish Chamber Philharmonic Orchestra Sopot)', 'duke-of-iron-feat-wojciech-rajski-andrzej-jagodzinski-czeslaw-maly-bartkowski-adam-cegielski-polish-chamber-philharmonic-orchestra-sopot-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/d0/aa/7f/d0aa7f94-a85a-3265-35a9-0c48e8007cc6/source/370x370bb.jpg', 0, '', '1', 1638601111, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/duke-of-iron-feat-wojciech-rajski-andrzej/608579698?i=608579820&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:31'),
(306809633, 'Duke of Iron', 'Duke of Iron', 'duke-of-iron', 'https://www.last.fm/music/Emanuele+Cisi+Quartet/_/Duke+Of+Iron', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/b7/e0/43/b7e043a5-1858-9ef8-8dfc-d86c1ac3a883/source/370x370bb.jpg', 0, '', '1', 1638601113, 0, 1, '5.0', 0, 0, 2009, '', '', 'https://music.apple.com/us/album/duke-of-iron/306809550?i=306809633&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 06:58:33'),
(133747082, 'Duke of Iron', 'Duke of Iron', 'duke-of-iron', 'https://www.last.fm/music/Gert+Olie/_/Duke+of+Iron', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/40/8f/a0/408fa0ad-53d3-fe70-f31b-8201b86ca5e1/source/370x370bb.jpg', 0, '', '1', 1638601114, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/duke-of-iron/133746429?i=133747082&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:34'),
(716283877, 'Scrap Iron', 'Scrap Iron', 'scrap-iron', 'https://www.last.fm/music/Duke+Pearson/_/Scrap+Iron', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/e5/b6/4f/e5b64f1d-a82f-69df-ab11-6bcca5275f07/source/370x370bb.jpg', 0, '', '1', 1638601116, 0, 1, '5.0', 0, 0, 1967, '', '', 'https://music.apple.com/us/album/scrap-iron/716282540?i=716283877&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 06:58:36'),
(513998452, 'I Let a Song Go Out of My Heart', 'I Let a Song Go Out of My Heart', 'i-let-a-song-go-out-of-my-heart', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/05/46/62/054662fe-cff7-f2a2-ec51-0de478a1f830/source/370x370bb.jpg', 0, '', '1', 1638601118, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/i-let-a-song-go-out-of-my-heart/513998096?i=513998452&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:38'),
(343492046, 'The Iron Duke March', 'The Iron Duke March', 'the-iron-duke-march', 'https://www.last.fm/music/The+Band+of+the+Coldstream+Guards/_/The+Iron+Duke+March', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/d5/a6/5b/d5a65ba1-0b82-fed4-4b54-f2720fc7edc3/source/370x370bb.jpg', 0, '', '1', 1638601119, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/the-iron-duke-march/343491909?i=343492046&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:39'),
(2472696, 'Iron Duke in the Land', 'Iron Duke in the Land', 'iron-duke-in-the-land', 'https://www.last.fm/music/Julian+Whiterose/_/Iron+Duke+in+the+Land', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/80/e4/1a/80e41aa5-62fc-5a50-cc4f-2b722f1bbebe/source/370x370bb.jpg', 0, '', '1', 1638601121, 0, 1, '5.0', 0, 0, 1989, '', '', 'https://music.apple.com/us/album/iron-duke-in-the-land/2472760?i=2472696&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:41'),
(2514763, 'Ugly Woman', 'Ugly Woman', 'ugly-woman', 'https://www.last.fm/music/The+Duke+Of+Iron/_/Ugly+Woman', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/4d/07/ac/4d07ac0b-052d-a06a-d02c-fede5748acbe/source/370x370bb.jpg', 0, '', '1', 1638601122, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/ugly-woman/2514815?i=2514763&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:42'),
(495891392, 'The Iron Duke March', 'The Iron Duke March', 'the-iron-duke-march', 'https://www.last.fm/music/The+Band+of+the+Coldstream+Guards/_/The+Iron+Duke+March', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/ed/1a/ac/ed1aac9b-d149-1ca6-b1c2-95d4f454d6e8/source/370x370bb.jpg', 0, '', '1', 1638601124, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/the-iron-duke-march/495891272?i=495891392&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:44'),
(325093330, 'Ugly Woman', 'Ugly Woman', 'ugly-woman', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/20/48/16/2048162f-ec58-d182-3cea-e7fad8603893/source/370x370bb.jpg', 0, '', '1', 1638601125, 0, 1, '5.0', 0, 0, 2009, '', '', 'https://music.apple.com/us/album/ugly-woman/325091888?i=325093330&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:45'),
(1469308568, 'You\\&#39;re the One I Adore (feat. The Pleasure Kings & Ron Levy)', 'You\\&#39;re the One I Adore (feat. The Pleasure Kings & Ron Levy)', 'you-re-the-one-i-adore-feat-the-pleasure-kings-ron-levy-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music124/v4/2f/09/31/2f093175-4adb-3e82-8b80-91f01fa79716/source/370x370bb.jpg', 0, '', '1', 1638601127, 0, 1, '5.0', 0, 0, 1988, '', '', 'https://music.apple.com/us/album/youre-the-one-i-adore-feat-the-pleasure-kings-ron-levy/1469308328?i=1469308568&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 06:58:47'),
(1186385798, 'My Dogz (feat. B.G., Duke, Scoop-A-Star, Taz & Will Lean)', 'My Dogz (feat. B.G., Duke, Scoop-A-Star, Taz & Will Lean)', 'my-dogz-feat-b-g-duke-scoop-a-star-taz-will-lean-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music122/v4/dc/6e/e1/dc6ee16c-7a81-c9bd-637a-29f351c1c8e5/source/370x370bb.jpg', 0, '', '1', 1638601129, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/my-dogz-feat-b-g-duke-scoop-a-star-taz-will-lean/1186385716?i=1186385798&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:49'),
(710024561, 'The Iron Duke', 'The Iron Duke', 'the-iron-duke', 'https://www.last.fm/music/Judicator/_/The+Iron+Duke', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/99/65/73/9965734c-e537-a1bb-4e3d-af4bdaadcfce/source/370x370bb.jpg', 0, '', '1', 1638601131, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/the-iron-duke/710024134?i=710024561&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:51'),
(281570824, 'Man Smart, Woman Smarter', 'Man Smart, Woman Smarter', 'man-smart-woman-smarter', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/5e/63/7a/5e637a2a-6973-be37-2305-0f2da0c4533d/source/370x370bb.jpg', 0, '', '1', 1638601133, 0, 1, '5.0', 0, 0, 1956, '', '', 'https://music.apple.com/us/album/man-smart-woman-smarter/281570823?i=281570824&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:53'),
(282280249, 'The Iron Duke March', 'The Iron Duke March', 'the-iron-duke-march', 'https://www.last.fm/music/The+Band+of+the+Coldstream+Guards/_/The+Iron+Duke+March', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/dd/b6/4a/ddb64ab0-1eaa-bb0a-e461-bbfc693e9d96/source/370x370bb.jpg', 0, '', '1', 1638601135, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/the-iron-duke-march/282280079?i=282280249&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:55'),
(278335630, 'Brooklyn, Brooklyn!', 'Brooklyn, Brooklyn!', 'brooklyn-brooklyn-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/e2/92/1e/e2921e98-f031-68c6-2864-2180d75ec1c3/source/370x370bb.jpg', 0, '', '1', 1638601137, 0, 1, '5.0', 0, 0, 1955, '', '', 'https://music.apple.com/us/album/brooklyn-brooklyn/278335624?i=278335630&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:57'),
(82038708, 'Me One Alone', 'Me One Alone', 'me-one-alone', 'https://www.last.fm/music/Lord+Invader/_/Me+One+Alone', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/48/14/60/481460f9-ba7d-ff8c-0b32-12f49f8d340b/source/370x370bb.jpg', 0, '', '1', 1638601139, 0, 1, '5.0', 0, 0, 2000, '', '', 'https://music.apple.com/us/album/me-one-alone/82039312?i=82038708&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:58:59'),
(2514741, 'Calypso Invasion', 'Calypso Invasion', 'calypso-invasion', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/4d/07/ac/4d07ac0b-052d-a06a-d02c-fede5748acbe/source/370x370bb.jpg', 0, 'N/A', '1', 1638601141, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/calypso-invasion/2514815?i=2514741&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:01'),
(1107142836, 'Iron on My Lap (feat. Duke)', 'Iron on My Lap (feat. Duke)', 'iron-on-my-lap-feat-duke-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music60/v4/97/fb/4e/97fb4eb5-fe90-f4bb-846a-c39d53eb40b6/source/370x370bb.jpg', 0, '', '1', 1638601143, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/iron-on-my-lap-feat-duke/1107142730?i=1107142836&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:03'),
(464208122, 'Iron Duke in the Land', 'Iron Duke in the Land', 'iron-duke-in-the-land', 'https://www.last.fm/music/Julian+Whiterose/_/Iron+Duke+in+the+Land', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/43/f4/1d/43f41d67-e693-6f4d-60be-80f2407a1185/source/370x370bb.jpg', 0, '', '1', 1638601145, 0, 1, '5.0', 0, 0, 1930, '', '', 'https://music.apple.com/us/album/iron-duke-in-the-land/464208113?i=464208122&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:05'),
(2514810, 'Edward VIII', 'Edward VIII', 'edward-viii', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/4d/07/ac/4d07ac0b-052d-a06a-d02c-fede5748acbe/source/370x370bb.jpg', 0, '', '1', 1638601147, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/edward-viii/2514815?i=2514810&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:07'),
(281537885, 'The Duke of Calypso', 'The Duke of Calypso', 'the-duke-of-calypso', 'https://www.last.fm/music/The+Duke+Of+Iron/_/The+Duke+of+Calypso', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/11/8d/fa/118dfa08-0180-f59e-5c7c-deb04283d5d1/source/370x370bb.jpg', 0, '', '1', 1638601148, 0, 1, '5.0', 0, 0, 1957, '', '', 'https://music.apple.com/us/album/the-duke-of-calypso/281537872?i=281537885&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:08'),
(2514784, 'Three Friends\\&#39; Advice', 'Three Friends\\&#39; Advice', 'three-friends-advice', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/4d/07/ac/4d07ac0b-052d-a06a-d02c-fede5748acbe/source/370x370bb.jpg', 0, '', '1', 1638601150, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/three-friends-advice/2514815?i=2514784&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:10'),
(300056996, 'New York Mets', 'New York Mets', 'new-york-mets', 'https://www.last.fm/music/The+Duke+Of+Iron/_/New+York+Mets', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/6c/f9/3e/6cf93e27-10d0-970f-6b06-bb587dc3a006/source/370x370bb.jpg', 0, '', '1', 1638601152, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/new-york-mets/300056866?i=300056996&uo=4', 0.69, '', 'USA', 'USD', 0, '2021-12-04 06:59:12'),
(2514788, 'Happy Land of Canaan', 'Happy Land of Canaan', 'happy-land-of-canaan', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/4d/07/ac/4d07ac0b-052d-a06a-d02c-fede5748acbe/source/370x370bb.jpg', 0, '', '1', 1638601154, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/happy-land-of-canaan/2514815?i=2514788&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:14'),
(2514758, 'Introduction to \\&#34;Ugly Woman\\&#34;', 'Introduction to \\&#34;Ugly Woman\\&#34;', 'introduction-to-ugly-woman-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/4d/07/ac/4d07ac0b-052d-a06a-d02c-fede5748acbe/source/370x370bb.jpg', 0, '', '1', 1638601156, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/introduction-to-ugly-woman/2514815?i=2514758&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:16'),
(281570831, 'The Lost Watch', 'The Lost Watch', 'the-lost-watch', 'https://www.last.fm/music/The+Duke+Of+Iron/_/The+Lost+Watch', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/5e/63/7a/5e637a2a-6973-be37-2305-0f2da0c4533d/source/370x370bb.jpg', 0, '', '1', 1638601157, 0, 1, '5.0', 0, 0, 1956, '', '', 'https://music.apple.com/us/album/the-lost-watch/281570823?i=281570831&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:17'),
(2514808, 'Introduction to \\&#34;Edward VIII\\&#34;', 'Introduction to \\&#34;Edward VIII\\&#34;', 'introduction-to-edward-viii-', 'https://www.last.fm/music/The+Duke+Of+Iron/_/Introduction+to+Edward+VIII', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/4d/07/ac/4d07ac0b-052d-a06a-d02c-fede5748acbe/source/370x370bb.jpg', 0, '', '1', 1638601159, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/introduction-to-edward-viii/2514815?i=2514808&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:19'),
(2514782, 'Introduction to \\&#34;Three Friends\\&#39; Advice\\&#34;', 'Introduction to \\&#34;Three Friends\\&#39; Advice\\&#34;', 'introduction-to-three-friends-advice-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/4d/07/ac/4d07ac0b-052d-a06a-d02c-fede5748acbe/source/370x370bb.jpg', 0, '', '1', 1638601161, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/introduction-to-three-friends-advice/2514815?i=2514782&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:21'),
(366974986, 'Brooklyn, Brooklyn', 'Brooklyn, Brooklyn', 'brooklyn-brooklyn', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/08/00/ba/0800ba9b-6ed3-caeb-51c0-0cabfe9b0df4/source/370x370bb.jpg', 0, '', '1', 1638601163, 0, 1, '5.0', 0, 0, 2004, '', '', 'https://music.apple.com/us/album/brooklyn-brooklyn/366974937?i=366974986&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:23'),
(281537876, 'Bambouche', 'Bambouche', 'bambouche', 'https://www.last.fm/music/The+Duke+Of+Iron/_/Bambouche', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/11/8d/fa/118dfa08-0180-f59e-5c7c-deb04283d5d1/source/370x370bb.jpg', 0, '', '1', 1638601165, 0, 1, '5.0', 0, 0, 1957, '', '', 'https://music.apple.com/us/album/bambouche/281537872?i=281537876&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:25'),
(300056998, 'Everybody Merengue', 'Everybody Merengue', 'everybody-merengue', 'https://www.last.fm/music/The+Duke+Of+Iron/_/Everybody+Merengue', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/6c/f9/3e/6cf93e27-10d0-970f-6b06-bb587dc3a006/source/370x370bb.jpg', 0, '', '1', 1638601167, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/everybody-merengue/300056866?i=300056998&uo=4', 0.69, '', 'USA', 'USD', 0, '2021-12-04 06:59:27'),
(1225141446, 'Coconut Woman (feat. Duke of Iron)', 'Coconut Woman (feat. Duke of Iron)', 'coconut-woman-feat-duke-of-iron-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music122/v4/d1/c5/de/d1c5def1-21a3-3d44-d77f-bffa2a2adb08/source/370x370bb.jpg', 0, '', '1', 1638601169, 0, 1, '5.0', 0, 0, 2017, '', '', 'https://music.apple.com/us/album/coconut-woman-feat-duke-of-iron/1225141251?i=1225141446&uo=4', 0, '', 'USA', 'USD', 0, '2021-12-04 06:59:29'),
(5264703, 'Patty Duke Y\\&#39;All', 'Patty Duke Y\\&#39;All', 'patty-duke-y-all', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/90/9c/ef/909cefbb-15b5-1540-8af3-9f5584e9ab39/source/370x370bb.jpg', 0, '', '1', 1638601171, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/patty-duke-yall/5264731?i=5264703&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:31'),
(1462822192, 'Brooklyn, Brooklyn', 'Brooklyn, Brooklyn', 'brooklyn-brooklyn', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music113/v4/aa/7d/e9/aa7de948-48c1-d937-83f3-3f0c9cf06d41/source/370x370bb.jpg', 0, '', '1', 1638601172, 0, 1, '5.0', 0, 0, 1956, '', '', 'https://music.apple.com/us/album/brooklyn-brooklyn/1462822018?i=1462822192&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:32'),
(300057000, 'Out de Fire', 'Out de Fire', 'out-de-fire', 'https://www.last.fm/music/The+Duke+Of+Iron/_/Out+De+Fire', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/6c/f9/3e/6cf93e27-10d0-970f-6b06-bb587dc3a006/source/370x370bb.jpg', 0, '', '1', 1638601174, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/out-de-fire/300056866?i=300057000&uo=4', 0.69, '', 'USA', 'USD', 0, '2021-12-04 06:59:34'),
(367245242, 'Scott Skinner Selection: _Duke of Fife\\&#39;s Welcome to Deeside - The Iron Man - The Glengrant - The Gladstone', 'Scott Skinner Selection: _Duke of Fife\\&#39;s Welcome to Deeside - The Iron Man - The Glengrant - The Gladstone', 'scott-skinner-selection-duke-of-fife-s-welcome-to-deeside---the-iron-man---the-glengrant---the-gladstone', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/8b/55/0c/8b550c92-d4cf-7aec-4add-1135a175265f/source/370x370bb.jpg', 0, '', '1', 1638601176, 0, 1, '5.0', 0, 0, 1994, '', '', 'https://music.apple.com/us/album/scott-skinner-selection-duke-of-fifes-welcome-to/367245183?i=367245242&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:36'),
(281537877, 'Fifty Cents', 'Fifty Cents', 'fifty-cents', 'https://www.last.fm/music/The+Duke+Of+Iron/_/Fifty+Cents', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/11/8d/fa/118dfa08-0180-f59e-5c7c-deb04283d5d1/source/370x370bb.jpg', 0, '', '1', 1638601178, 0, 1, '5.0', 0, 0, 1957, '', '', 'https://music.apple.com/us/album/fifty-cents/281537872?i=281537877&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:38'),
(1154086463, 'The Lost Watch', 'The Lost Watch', 'the-lost-watch', 'https://www.last.fm/music/The+Duke+Of+Iron/_/The+Lost+Watch', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music71/v4/1d/7b/4b/1d7b4b98-7f18-c0d9-16b0-3fe0d887ff93/source/370x370bb.jpg', 0, '', '1', 1638601180, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/the-lost-watch/1154085675?i=1154086463&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:40'),
(1554709577, 'Brooklyn Brooklyn', 'Brooklyn Brooklyn', 'brooklyn-brooklyn', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/bb/5a/3e/bb5a3e89-b09e-a92a-e513-6ab75a19783c/source/370x370bb.jpg', 0, '', '1', 1638601182, 0, 1, '5.0', 0, 0, 1956, '', '', 'https://music.apple.com/us/album/brooklyn-brooklyn/1554709372?i=1554709577&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 06:59:42'),
(281570832, 'Loving Woman Is Waste of Time', 'Loving Woman Is Waste of Time', 'loving-woman-is-waste-of-time', 'https://www.last.fm/music/The+Duke+Of+Iron/_/Loving+Woman+Is+Waste+of+Time', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/5e/63/7a/5e637a2a-6973-be37-2305-0f2da0c4533d/source/370x370bb.jpg', 0, '', '1', 1638601184, 0, 1, '5.0', 0, 0, 1956, '', '', 'https://music.apple.com/us/album/loving-woman-is-waste-of-time/281570823?i=281570832&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:44'),
(281537878, 'Katie', 'Katie', 'katie', 'https://www.last.fm/music/The+Duke+Of+Iron/_/Katie', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/11/8d/fa/118dfa08-0180-f59e-5c7c-deb04283d5d1/source/370x370bb.jpg', 0, '', '1', 1638601186, 0, 1, '5.0', 0, 0, 1957, '', '', 'https://music.apple.com/us/album/katie/281537872?i=281537878&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:46'),
(281570829, 'Last Train', 'Last Train', 'last-train', 'https://www.last.fm/music/The+Duke+Of+Iron/_/Last+Train', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/5e/63/7a/5e637a2a-6973-be37-2305-0f2da0c4533d/source/370x370bb.jpg', 0, '', '1', 1638601188, 0, 1, '5.0', 0, 0, 1956, '', '', 'https://music.apple.com/us/album/last-train/281570823?i=281570829&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:48'),
(281537881, 'Calypsonian Invasion', 'Calypsonian Invasion', 'calypsonian-invasion', 'https://www.last.fm/music/The+Duke+Of+Iron/_/Calypsonian+Invasion', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/11/8d/fa/118dfa08-0180-f59e-5c7c-deb04283d5d1/source/370x370bb.jpg', 0, '', '1', 1638601189, 0, 1, '5.0', 0, 0, 1957, '', '', 'https://music.apple.com/us/album/calypsonian-invasion/281537872?i=281537881&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:49'),
(281570827, 'Creole Girl', 'Creole Girl', 'creole-girl', 'https://www.last.fm/music/The+Duke+Of+Iron/_/Creole+Girl', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/5e/63/7a/5e637a2a-6973-be37-2305-0f2da0c4533d/source/370x370bb.jpg', 0, '', '1', 1638601191, 0, 1, '5.0', 0, 0, 1956, '', '', 'https://music.apple.com/us/album/creole-girl/281570823?i=281570827&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 06:59:51'),
(879094652, 'Stand', 'Stand', 'stand', 'https://www.last.fm/music/Donnie+McClurkin/_/Stand', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music6/v4/dc/c8/35/dcc8359f-b997-65ef-6d7a-75b026b1150d/source/370x370bb.jpg', 0, '', '1', 1638601217, 0, 1, '5.0', 0, 0, 1996, '', '', 'https://music.apple.com/us/album/stand/879094298?i=879094652&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:00:17'),
(879094671, 'Speak to My Heart', 'Speak to My Heart', 'speak-to-my-heart', 'https://www.last.fm/music/Donnie+McClurkin/_/Speak+To+My+Heart', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music6/v4/dc/c8/35/dcc8359f-b997-65ef-6d7a-75b026b1150d/source/370x370bb.jpg', 0, '', '1', 1638601219, 0, 1, '5.0', 0, 0, 1996, '', '', 'https://music.apple.com/us/album/speak-to-my-heart/879094298?i=879094671&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:00:19'),
(879094658, 'Holy, Holy, Holy', 'Holy, Holy, Holy', 'holy-holy-holy', 'https://www.last.fm/music/Donnie+McClurkin/_/Holy+Holy+Holy', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music6/v4/dc/c8/35/dcc8359f-b997-65ef-6d7a-75b026b1150d/source/370x370bb.jpg', 0, '', '1', 1638601221, 0, 1, '5.0', 0, 0, 1996, '', '', 'https://music.apple.com/us/album/holy-holy-holy/879094298?i=879094658&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:00:21'),
(879094692, 'Yes, We Can, Can', 'Yes, We Can, Can', 'yes-we-can-can', 'https://www.last.fm/music/Donnie+McClurkin/_/Yes+We+Can+Can', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music6/v4/dc/c8/35/dcc8359f-b997-65ef-6d7a-75b026b1150d/source/370x370bb.jpg', 0, '', '1', 1638601223, 0, 1, '5.0', 0, 0, 1996, '', '', 'https://music.apple.com/us/album/yes-we-can-can/879094298?i=879094692&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:00:23'),
(879094667, 'Jesus, The Mention of Your Name', 'Jesus, The Mention of Your Name', 'jesus-the-mention-of-your-name', 'https://www.last.fm/music/Donnie+McClurkin/_/JESUS+THE+MENTION+OF+YOUR+NAME', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music6/v4/dc/c8/35/dcc8359f-b997-65ef-6d7a-75b026b1150d/source/370x370bb.jpg', 0, '', '1', 1638601224, 0, 1, '5.0', 0, 0, 1996, '', '', 'https://music.apple.com/us/album/jesus-the-mention-of-your-name/879094298?i=879094667&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:00:24'),
(879094664, 'Search Me, Lord', 'Search Me, Lord', 'search-me-lord', 'https://www.last.fm/music/Donnie+McClurkin/_/Search+Me,+Lord', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music6/v4/dc/c8/35/dcc8359f-b997-65ef-6d7a-75b026b1150d/source/370x370bb.jpg', 0, '', '1', 1638601226, 0, 1, '5.0', 0, 0, 1996, '', '', 'https://music.apple.com/us/album/search-me-lord/879094298?i=879094664&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:00:26'),
(879094690, 'Here With You', 'Here With You', 'here-with-you', 'https://www.last.fm/music/Donnie+McClurkin/_/Here+With+You', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music6/v4/dc/c8/35/dcc8359f-b997-65ef-6d7a-75b026b1150d/source/370x370bb.jpg', 0, '', '1', 1638601228, 0, 1, '5.0', 0, 0, 1996, '', '', 'https://music.apple.com/us/album/here-with-you/879094298?i=879094690&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:00:28'),
(879094654, 'Just a Little Talk With Jesus', 'Just a Little Talk With Jesus', 'just-a-little-talk-with-jesus', 'https://www.last.fm/music/Donnie+McClurkin/_/Just+a+Little+Talk+With+Jesus', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music6/v4/dc/c8/35/dcc8359f-b997-65ef-6d7a-75b026b1150d/source/370x370bb.jpg', 0, '', '1', 1638601230, 0, 1, '5.0', 0, 0, 1996, '', '', 'https://music.apple.com/us/album/just-a-little-talk-with-jesus/879094298?i=879094654&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:00:30'),
(879094699, 'We Expect You', 'We Expect You', 'we-expect-you', 'https://www.last.fm/music/Donnie+McClurkin/_/We+Expect+You', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music6/v4/dc/c8/35/dcc8359f-b997-65ef-6d7a-75b026b1150d/source/370x370bb.jpg', 0, '', '1', 1638601232, 0, 1, '5.0', 0, 0, 1996, '', '', 'https://music.apple.com/us/album/we-expect-you/879094298?i=879094699&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:00:32'),
(1170847939, 'Living, He Loved Me (One Day) / Send It On Down / Power, Lord / Yes, Lord [feat. Donnie McClurkin]', 'Living, He Loved Me (One Day) / Send It On Down / Power, Lord / Yes, Lord [feat. Donnie McClurkin]', 'living-he-loved-me-one-day-send-it-on-down-power-lord-yes-lord-feat-donnie-mcclurkin-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/1a/b4/68/1ab468f0-a79f-b11e-f0a0-d7b30516dbb2/source/370x370bb.jpg', 0, '', '1', 1638601234, 0, 1, '5.0', 0, 0, 1997, '', '', 'https://music.apple.com/us/album/living-he-loved-me-one-day-send-it-on-down-power-lord/1170847773?i=1170847939&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:00:34'),
(209983845, 'God Is Faithful (feat. Donnie McClurkin)', 'God Is Faithful (feat. Donnie McClurkin)', 'god-is-faithful-feat-donnie-mcclurkin-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/99/11/f3/9911f3e7-5306-524a-3ef0-faf490b52a99/source/370x370bb.jpg', 0, '', '1', 1638601235, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/god-is-faithful-feat-donnie-mcclurkin-featuring-donnie/209983737?i=209983845&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:00:35'),
(919206741, 'Bless Me (feat. Donnie McClurkin)', 'Bless Me (feat. Donnie McClurkin)', 'bless-me-feat-donnie-mcclurkin-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/89/a8/98/89a89876-52cd-23f6-29b9-6eb1cb9cc1f4/source/370x370bb.jpg', 0, '', '1', 1638601237, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/bless-me-feat-donnie-mcclurkin-radio-edit/919206665?i=919206741&uo=4', 0.69, '', 'USA', 'USD', 0, '2021-12-04 07:00:37'),
(1592420959, 'Donnie Mcclurkin', 'Donnie Mcclurkin', 'donnie-mcclurkin', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music126/v4/b8/37/20/b8372082-cac0-cb26-8401-035d1db83aa5/source/370x370bb.jpg', 0, '', '1', 1638601239, 0, 1, '7.3', 3, 0, 2021, '', '', 'https://music.apple.com/us/album/donnie-mcclurkin/1592420952?i=1592420959&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:00:39'),
(1165982868, 'Lord Send Your Annointing (feat. Donnie McClurkin)', 'Lord Send Your Annointing (feat. Donnie McClurkin)', 'lord-send-your-annointing-feat-donnie-mcclurkin-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music71/v4/20/51/d9/2051d928-d36c-3489-3883-d5fdf7723e59/source/370x370bb.jpg', 0, '', '1', 1638601241, 0, 1, '5.0', 0, 0, 1997, '', '', 'https://music.apple.com/us/album/lord-send-your-annointing-feat-donnie-mcclurkin-ult/1165982843?i=1165982868&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:00:41'),
(271455255, 'Create In Me a Clean Heart', 'Create In Me a Clean Heart', 'create-in-me-a-clean-heart', 'https://www.last.fm/music/Donnie+McClurkin/_/Create+In+Me+a+Clean+Heart', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/49/3d/52/493d52a4-1878-af8e-681b-2ec58e826d6c/source/370x370bb.jpg', 0, ' <a href=&#34;http://www.last.fm/music/Donnie+McClurkin/_/Create+In+Me+a+Clean+Heart&#34;>Read more on Last.fm</a>.', '1', 1638601243, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/create-in-me-a-clean-heart/271455176?i=271455255&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:00:43'),
(271455265, 'I\\&#39;m Walking', 'I\\&#39;m Walking', 'i-m-walking', 'https://www.last.fm/music/Donnie+McClurkin/_/I%27m+Walking', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/49/3d/52/493d52a4-1878-af8e-681b-2ec58e826d6c/source/370x370bb.jpg', 0, '', '1', 1638601244, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/im-walking/271455176?i=271455265&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:00:44'),
(644395975, 'Breakthrough (feat. Donnie McClurkin)', 'Breakthrough (feat. Donnie McClurkin)', 'breakthrough-feat-donnie-mcclurkin-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/cf/cf/28/cfcf2849-527d-cdf3-3997-3cfa88ccea07/source/370x370bb.jpg', 0, '', '1', 1638601246, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/breakthrough-feat-donnie-mcclurkin/644395657?i=644395975&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:00:46'),
(271455246, 'Holy', 'Holy', 'holy', 'https://www.last.fm/music/Donnie+McClurkin/_/Holy', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/49/3d/52/493d52a4-1878-af8e-681b-2ec58e826d6c/source/370x370bb.jpg', 0, '', '1', 1638601248, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/holy/271455176?i=271455246&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:00:48'),
(906432447, 'Bless Me (feat. Donnie McClurkin)', 'Bless Me (feat. Donnie McClurkin)', 'bless-me-feat-donnie-mcclurkin-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music4/v4/fd/3f/3d/fd3f3dac-485b-5379-932e-4c825b6c0f5b/source/370x370bb.jpg', 0, '', '1', 1638601250, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/bless-me-feat-donnie-mcclurkin-radio-edit/906432444?i=906432447&uo=4', 0.69, '', 'USA', 'USD', 0, '2021-12-04 07:00:50'),
(487702485, 'Church Medley', 'Church Medley', 'church-medley', 'https://www.last.fm/music/Donnie+McClurkin/_/Church+Medley', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/77/63/b6/7763b66d-9a18-625b-11aa-5c9bf4e41d42/source/370x370bb.jpg', 0, '', '1', 1638601252, 0, 1, '5.0', 0, 0, 2004, '', '', 'https://music.apple.com/us/album/church-medley-live/487702483?i=487702485&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:00:52'),
(271455204, 'The Prayer', 'The Prayer', 'the-prayer', 'https://www.last.fm/music/Donnie+McClurkin/_/The+Prayer', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/49/3d/52/493d52a4-1878-af8e-681b-2ec58e826d6c/source/370x370bb.jpg', 0, '', '1', 1638601254, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/the-prayer/271455176?i=271455204&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:00:54'),
(532235548, 'Church Medley (feat. Donnie McClurkin, Mary Mary, Marvin Sapp & Bishop Paul S. Morton)', 'Church Medley (feat. Donnie McClurkin, Mary Mary, Marvin Sapp & Bishop Paul S. Morton)', 'church-medley-feat-donnie-mcclurkin-mary-mary-marvin-sapp-bishop-paul-s-morton-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/3c/99/a7/3c99a728-a6ac-027b-1269-000fea9b2f57/source/370x370bb.jpg', 0, '', '1', 1638601256, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/church-medley-feat-donnie-mcclurkin-mary-mary-marvin/532235336?i=532235548&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:00:56'),
(1170847938, 'Intro To Donnie Mcclurkin', 'Intro To Donnie Mcclurkin', 'intro-to-donnie-mcclurkin', 'https://www.last.fm/music/Carlton+Pearson/_/Intro+to+Donnie+McClurkin', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/1a/b4/68/1ab468f0-a79f-b11e-f0a0-d7b30516dbb2/source/370x370bb.jpg', 0, '', '1', 1638601258, 0, 1, '5.0', 0, 0, 1997, '', '', 'https://music.apple.com/us/album/intro-to-donnie-mcclurkin-live/1170847773?i=1170847938&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:00:58'),
(919206718, 'Bless Me (feat. Donnie McClurkin & Greg Kirkland)', 'Bless Me (feat. Donnie McClurkin & Greg Kirkland)', 'bless-me-feat-donnie-mcclurkin-greg-kirkland-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/89/a8/98/89a89876-52cd-23f6-29b9-6eb1cb9cc1f4/source/370x370bb.jpg', 0, '', '1', 1638601260, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/bless-me-feat-donnie-mcclurkin-greg-kirkland/919206665?i=919206718&uo=4', 0.69, '', 'USA', 'USD', 0, '2021-12-04 07:01:00'),
(271455228, 'Yes You Can', 'Yes You Can', 'yes-you-can', 'https://www.last.fm/music/Donnie+McClurkin/_/You+You+Can', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/49/3d/52/493d52a4-1878-af8e-681b-2ec58e826d6c/source/370x370bb.jpg', 0, '', '1', 1638601262, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/yes-you-can/271455176?i=271455228&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:02'),
(532235545, 'Just Another Day (feat. Delores \\&#34;Mom\\&#34; Winans & Donnie McClurkin)', 'Just Another Day (feat. Delores \\&#34;Mom\\&#34; Winans & Donnie McClurkin)', 'just-another-day-feat-delores-mom-winans-donnie-mcclurkin-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/3c/99/a7/3c99a728-a6ac-027b-1269-000fea9b2f57/source/370x370bb.jpg', 0, '', '1', 1638601264, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/just-another-day-feat-delores-mom-winans-donnie-mcclurkin/532235336?i=532235545&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:01:04'),
(79018878, 'Lift Him Up (Featuring Donnie McClurkin and Mary Mary)', 'Lift Him Up (Featuring Donnie McClurkin and Mary Mary)', 'lift-him-up-featuring-donnie-mcclurkin-and-mary-mary-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music114/v4/c1/88/5e/c1885ed2-ca28-dc52-a451-9f77ad40ecc3/source/370x370bb.jpg', 0, '', '1', 1638601265, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/lift-him-up-featuring-donnie-mcclurkin-and-mary-mary/79018907?i=79018878&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:05'),
(271455193, 'Again', 'Again', 'again', 'https://www.last.fm/music/Donnie+McClurkin/_/Again', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/49/3d/52/493d52a4-1878-af8e-681b-2ec58e826d6c/source/370x370bb.jpg', 0, '', '1', 1638601267, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/again/271455176?i=271455193&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:07'),
(271455216, 'All I Ever Really Wanted', 'All I Ever Really Wanted', 'all-i-ever-really-wanted', 'https://www.last.fm/music/Donnie+McClurkin/_/All+I+Ever+Really+Wanted', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/49/3d/52/493d52a4-1878-af8e-681b-2ec58e826d6c/source/370x370bb.jpg', 0, '', '1', 1638601269, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/all-i-ever-really-wanted/271455176?i=271455216&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:09'),
(487702487, 'Great Is Your Mercy', 'Great Is Your Mercy', 'great-is-your-mercy', 'https://www.last.fm/music/Donnie+McClurkin/_/Great+Is+Your+Mercy', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/77/63/b6/7763b66d-9a18-625b-11aa-5c9bf4e41d42/source/370x370bb.jpg', 0, '', '1', 1638601270, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/great-is-your-mercy-live/487702483?i=487702487&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:01:10'),
(271455236, 'Special Gift', 'Special Gift', 'special-gift', 'https://www.last.fm/music/Donnie+McClurkin/_/Special+Gift', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/49/3d/52/493d52a4-1878-af8e-681b-2ec58e826d6c/source/370x370bb.jpg', 0, '', '1', 1638601272, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/special-gift/271455176?i=271455236&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:01:12'),
(271455293, 'So In Love', 'So In Love', 'so-in-love', 'https://www.last.fm/music/Donnie+McClurkin/_/So+In+Love', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/49/3d/52/493d52a4-1878-af8e-681b-2ec58e826d6c/source/370x370bb.jpg', 0, '', '1', 1638601273, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/so-in-love/271455176?i=271455293&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:13'),
(271455305, 'He\\&#39;s Calling You', 'He\\&#39;s Calling You', 'he-s-calling-you', 'https://www.last.fm/music/Donnie+McClurkin/_/Hes+calling+you', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/49/3d/52/493d52a4-1878-af8e-681b-2ec58e826d6c/source/370x370bb.jpg', 0, '', '1', 1638601276, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/hes-calling-you/271455176?i=271455305&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:16'),
(1533683726, 'That Great Day (feat. Donnie McClurkin & Tye Tribbett)', 'That Great Day (feat. Donnie McClurkin & Tye Tribbett)', 'that-great-day-feat-donnie-mcclurkin-tye-tribbett-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/ca/d3/23/cad323b1-e8c5-0bd8-d3e7-cce8fae30be9/source/370x370bb.jpg', 0, '', '1', 1638601277, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/that-great-day-feat-donnie-mcclurkin-tye-tribbett/1533683481?i=1533683726&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:01:17'),
(271455276, 'Heart to Soul', 'Heart to Soul', 'heart-to-soul', 'https://www.last.fm/music/Donnie+McClurkin/_/Heart+to+Soul', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/49/3d/52/493d52a4-1878-af8e-681b-2ec58e826d6c/source/370x370bb.jpg', 0, '', '1', 1638601280, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/heart-to-soul/271455176?i=271455276&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:20');
INSERT INTO `tbl_songs` (`id`, `song_title`, `keywords`, `song_seo`, `lastfm_url`, `ad_code`, `video_code`, `picture`, `popularity`, `description`, `song_status`, `posted_date`, `latest_one`, `ranking_order`, `rate_song`, `review_count`, `latest`, `song_year`, `amazon_url`, `google_url`, `itunes_url`, `itunes_price`, `refer_seo`, `country`, `currency`, `timeupdated`, `updated_by_itunes`) VALUES
(487702549, 'I Call You Faithful', 'I Call You Faithful', 'i-call-you-faithful', 'https://www.last.fm/music/Donnie+McClurkin/_/I+Call+You+Faithful', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/77/63/b6/7763b66d-9a18-625b-11aa-5c9bf4e41d42/source/370x370bb.jpg', 0, '', '1', 1638601282, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/i-call-you-faithful-live/487702483?i=487702549&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:01:22'),
(487702554, 'Victory Chant (Hail Jesus) [Live]', 'Victory Chant (Hail Jesus) [Live]', 'victory-chant-hail-jesus-live-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/77/63/b6/7763b66d-9a18-625b-11aa-5c9bf4e41d42/source/370x370bb.jpg', 0, '', '1', 1638601283, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/victory-chant-hail-jesus-live/487702483?i=487702554&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:23'),
(487702552, 'Agnus Dei', 'Agnus Dei', 'agnus-dei', 'https://www.last.fm/music/Donnie+McClurkin/_/Agnus+Dei', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/77/63/b6/7763b66d-9a18-625b-11aa-5c9bf4e41d42/source/370x370bb.jpg', 0, '', '1', 1638601285, 0, 1, '5.0', 0, 0, 2004, '', '', 'https://music.apple.com/us/album/agnus-dei-live/487702483?i=487702552&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:25'),
(487702553, 'Create In Me a Clean Heart', 'Create In Me a Clean Heart', 'create-in-me-a-clean-heart', 'https://www.last.fm/music/Donnie+McClurkin/_/Create+In+Me+a+Clean+Heart', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/77/63/b6/7763b66d-9a18-625b-11aa-5c9bf4e41d42/source/370x370bb.jpg', 0, ' <a href=&#34;http://www.last.fm/music/Donnie+McClurkin/_/Create+In+Me+a+Clean+Heart&#34;>Read more on Last.fm</a>.', '1', 1638601287, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/create-in-me-a-clean-heart-live/487702483?i=487702553&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:27'),
(487702550, 'Great and Mighty Is Our God', 'Great and Mighty Is Our God', 'great-and-mighty-is-our-god', 'https://www.last.fm/music/Donnie+McClurkin/_/Great+And+Mighty+Is+Our+God', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/77/63/b6/7763b66d-9a18-625b-11aa-5c9bf4e41d42/source/370x370bb.jpg', 0, '', '1', 1638601289, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/great-and-mighty-is-our-god-live/487702483?i=487702550&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:29'),
(1566257114, 'Donnie Mcclurkin', 'Donnie Mcclurkin', 'donnie-mcclurkin', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/e3/d2/a9/e3d2a967-5907-a35b-a892-fab737f03305/source/370x370bb.jpg', 0, '', '1', 1638601292, 0, 1, '7.0', 2, 0, 2021, '', '', 'https://music.apple.com/us/album/donnie-mcclurkin/1566257109?i=1566257114&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:01:32'),
(1444120927, 'Oh Come All Ye Faithful (feat. Ragsdale, BeBe Winans, Shirley Murdock, The Williams Bros. & Donnie McClurkin)', 'Oh Come All Ye Faithful (feat. Ragsdale, BeBe Winans, Shirley Murdock, The Williams Bros. & Donnie McClurkin)', 'oh-come-all-ye-faithful-feat-ragsdale-bebe-winans-shirley-murdock-the-williams-bros-donnie-mcclurkin-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/d3/dc/ff/d3dcffc9-bd13-29e5-4384-39f6dba23ed6/source/370x370bb.jpg', 0, '', '1', 1638601294, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/oh-come-all-ye-faithful-feat-ragsdale-bebe-winans-shirley/1444120206?i=1444120927&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:01:34'),
(487702486, 'We Fall Down', 'We Fall Down', 'we-fall-down', 'https://www.last.fm/music/Donnie+McClurkin/_/We+Fall+Down', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/77/63/b6/7763b66d-9a18-625b-11aa-5c9bf4e41d42/source/370x370bb.jpg', 0, '', '1', 1638601295, 0, 1, '5.0', 0, 0, 2000, '', '', 'https://music.apple.com/us/album/we-fall-down-live/487702483?i=487702486&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:35'),
(487702484, 'The Great I Am', 'The Great I Am', 'the-great-i-am', 'https://www.last.fm/music/Donnie+McClurkin/_/The+Great+I+Am', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/77/63/b6/7763b66d-9a18-625b-11aa-5c9bf4e41d42/source/370x370bb.jpg', 0, '', '1', 1638601297, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/the-great-i-am-live/487702483?i=487702484&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:37'),
(487702488, 'Wait On the Lord', 'Wait On the Lord', 'wait-on-the-lord', 'https://www.last.fm/music/Donnie+McClurkin/_/Wait+On+The+Lord', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music125/v4/77/63/b6/7763b66d-9a18-625b-11aa-5c9bf4e41d42/source/370x370bb.jpg', 0, '', '1', 1638601298, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/wait-on-the-lord-live/487702483?i=487702488&uo=4', 0.99, '', 'USA', 'USD', 0, '2021-12-04 07:01:38'),
(1205372266, 'Speak to My Heart (feat. Donnie McClurkin, Angie Winans & Debbie Winans)', 'Speak to My Heart (feat. Donnie McClurkin, Angie Winans & Debbie Winans)', 'speak-to-my-heart-feat-donnie-mcclurkin-angie-winans-debbie-winans-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/cd/ba/81/cdba81f3-83f0-38d8-5093-cce25e6c65ee/source/370x370bb.jpg', 0, '', '1', 1638601299, 0, 1, '5.0', 0, 0, 2017, '', '', 'https://music.apple.com/us/album/speak-to-my-heart-feat-donnie-mcclurkin-angie-winans/1205372155?i=1205372266&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:39'),
(904752662, 'Stand Still (feat. Donnie McClurkin)', 'Stand Still (feat. Donnie McClurkin)', 'stand-still-feat-donnie-mcclurkin-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/74/4c/df/744cdfdb-6494-fdf9-ee03-36ed64aa7110/source/370x370bb.jpg', 0, '', '1', 1638601301, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/stand-still-feat-donnie-mcclurkin/904752640?i=904752662&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:41'),
(382741958, 'I Speak Life (feat. Donnie McClurkin)', 'I Speak Life (feat. Donnie McClurkin)', 'i-speak-life-feat-donnie-mcclurkin-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music60/v4/85/eb/82/85eb82ff-9497-b831-74a2-af8ee3b9758d/source/370x370bb.jpg', 0, '', '1', 1638601303, 0, 1, '5.0', 0, 0, 2004, '', '', 'https://music.apple.com/us/album/i-speak-life-feat-donnie-mcclurkin/382741759?i=382741958&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:43'),
(1205372583, 'What Is This? (feat. Donnie McClurkin)', 'What Is This? (feat. Donnie McClurkin)', 'what-is-this-feat-donnie-mcclurkin-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music128/v4/cd/ba/81/cdba81f3-83f0-38d8-5093-cce25e6c65ee/source/370x370bb.jpg', 0, '', '1', 1638601305, 0, 1, '5.0', 0, 0, 2017, '', '', 'https://music.apple.com/us/album/what-is-this-feat-donnie-mcclurkin/1205372155?i=1205372583&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:45'),
(941896926, 'Write My Name (with Donnie McClurkin)', 'Write My Name (with Donnie McClurkin)', 'write-my-name-with-donnie-mcclurkin-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/6a/e7/f8/6ae7f832-30a4-cb13-e5c1-286ceb8b5a09/source/370x370bb.jpg', 0, '', '1', 1638601306, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/write-my-name-with-donnie-mcclurkin/941896904?i=941896926&uo=4', 1.29, '', 'USA', 'USD', 0, '2021-12-04 07:01:46'),
(347582945, 'I\\&#39;m Still Here', 'I\\&#39;m Still Here', 'i-m-still-here', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/Im+Still+Here', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911838, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/im-still-here/347582692?i=347582945&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:30:38'),
(347582955, 'Nobody Like Jesus', 'Nobody Like Jesus', 'nobody-like-jesus', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/Nobody+like+Jesus', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911840, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/nobody-like-jesus/347582692?i=347582955&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:30:40'),
(347582800, 'I\\&#39;m Coming Out', 'I\\&#39;m Coming Out', 'i-m-coming-out', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911842, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/im-coming-out/347582692?i=347582800&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:30:42'),
(347582901, 'You Can\\&#39;t Hurry God', 'You Can\\&#39;t Hurry God', 'you-can-t-hurry-god', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911844, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/you-cant-hurry-god/347582692?i=347582901&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:30:44'),
(347582753, 'No Not One', 'No Not One', 'no-not-one', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/No+Not+One', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911846, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/no-not-one/347582692?i=347582753&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:30:46'),
(347582956, 'You Don\\&#39;t Have to Leave Here', 'You Don\\&#39;t Have to Leave Here', 'you-don-t-have-to-leave-here', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911850, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/you-dont-have-to-leave-here/347582692?i=347582956&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:30:50'),
(347582854, 'You Can\\&#39;t Take My Joy', 'You Can\\&#39;t Take My Joy', 'you-can-t-take-my-joy', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911852, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/you-cant-take-my-joy/347582692?i=347582854&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:30:52'),
(347582730, 'If It Had Not Been for the Lord', 'If It Had Not Been for the Lord', 'if-it-had-not-been-for-the-lord', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/If+It+Had+Not+Been+for+the+Lord', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911854, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/if-it-had-not-been-for-the-lord/347582692?i=347582730&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:30:54'),
(347582818, 'I\\&#39;m Coming Out (Reprise)', 'I\\&#39;m Coming Out (Reprise)', 'i-m-coming-out-reprise-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911856, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/im-coming-out-reprise/347582692?i=347582818&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:30:56'),
(347582959, 'You Don\\&#39;t Have to Leave Here (Reprise)', 'You Don\\&#39;t Have to Leave Here (Reprise)', 'you-don-t-have-to-leave-here-reprise-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911858, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/you-dont-have-to-leave-here-reprise/347582692?i=347582959&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:30:58'),
(347582960, 'You Can', 'You Can', 'you-can', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/You+Can', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911860, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/you-can/347582692?i=347582960&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:31:00'),
(347582873, 'Show Me the Way', 'Show Me the Way', 'show-me-the-way', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/Show+Me+the+Way', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911861, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/show-me-the-way/347582692?i=347582873&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:31:01'),
(347582921, 'It\\&#39;s Not Me', 'It\\&#39;s Not Me', 'it-s-not-me', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911863, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/its-not-me/347582692?i=347582921&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:31:03'),
(347582961, 'You Need Him', 'You Need Him', 'you-need-him', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/You+Need+Him', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/e4/88/ee/e488ee56-0d13-bbcb-7c25-fe514312ab7b/source/370x370bb.jpg', 0, '', '1', 1646911865, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/you-need-him/347582692?i=347582961&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:31:05'),
(303096308, 'Hero (with Dorinda Clark-Cole)', 'Hero (with Dorinda Clark-Cole)', 'hero-with-dorinda-clark-cole-', 'https://www.last.fm/music/Kirk+Franklin/_/Hero+With+Dorinda+Clark+Cole', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/6b/de/ce/6bdece0e-da01-24e3-f855-c221f068855e/source/370x370bb.jpg', 0, '', '1', 1646911867, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/hero-with-dorinda-clark-cole/303096289?i=303096308&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:07'),
(1170847943, 'Going To Heaven To Meet the King (feat. Dorinda Clark-Cole)', 'Going To Heaven To Meet the King (feat. Dorinda Clark-Cole)', 'going-to-heaven-to-meet-the-king-feat-dorinda-clark-cole-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music115/v4/1a/b4/68/1ab468f0-a79f-b11e-f0a0-d7b30516dbb2/source/370x370bb.jpg', 0, '', '1', 1646911868, 0, 1, '5.0', 0, 0, 1997, '', '', 'https://music.apple.com/us/album/going-to-heaven-to-meet-the-king-feat-dorinda-clark-cole-live/1170847773?i=1170847943&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:08'),
(533588246, 'The Prayers (feat. Hezekiah Walker, LFC & Dorinda Clark-Cole)', 'The Prayers (feat. Hezekiah Walker, LFC & Dorinda Clark-Cole)', 'the-prayers-feat-hezekiah-walker-lfc-dorinda-clark-cole-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music115/v4/a8/f9/5e/a8f95ee5-5763-e2b8-3894-59b67ee9a5c1/source/370x370bb.jpg', 0, '', '1', 1646911870, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/the-prayers-feat-hezekiah-walker-lfc-dorinda-clark-cole/533587880?i=533588246&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:10'),
(1144192733, 'The Hymn \\&#34;I\\&#39;m In His Arms\\&#34; (feat. Dorinda Clark-Cole)', 'The Hymn \\&#34;I\\&#39;m In His Arms\\&#34; (feat. Dorinda Clark-Cole)', 'the-hymn-i-m-in-his-arms-feat-dorinda-clark-cole-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music62/v4/04/4a/2d/044a2d1a-e314-8ddd-9ba8-de607fa12fa4/source/370x370bb.jpg', 0, '', '1', 1646911872, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/the-hymn-im-in-his-arms-feat-dorinda-clark-cole-live/1144192661?i=1144192733&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:12'),
(716125104, 'He Knows (feat. Dorinda Clark Cole)', 'He Knows (feat. Dorinda Clark Cole)', 'he-knows-feat-dorinda-clark-cole-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music4/v4/ee/7e/8b/ee7e8bbe-c610-94f7-d197-5f04dc42c560/source/370x370bb.jpg', 0, '', '1', 1646911873, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/he-knows-feat-dorinda-clark-cole/716124694?i=716125104&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:13'),
(394012922, 'YRM (Your Righteous Mind) [feat. Dorinda Clark Cole]', 'YRM (Your Righteous Mind) [feat. Dorinda Clark Cole]', 'yrm-your-righteous-mind-feat-dorinda-clark-cole-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/38/10/4a/38104ab6-770e-b801-74ec-e7452278f96b/source/370x370bb.jpg', 0, '', '1', 1646911876, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/yrm-your-righteous-mind-feat-dorinda-clark-cole/394012871?i=394012922&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:16'),
(495938953, 'YRM (Your Righteous Mind) [feat. Dorinda Clark Cole]', 'YRM (Your Righteous Mind) [feat. Dorinda Clark Cole]', 'yrm-your-righteous-mind-feat-dorinda-clark-cole-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/ed/8b/4e/ed8b4e23-9c7e-d07c-8c8a-2eb7acacf902/source/370x370bb.jpg', 0, '', '1', 1646911877, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/yrm-your-righteous-mind-feat-dorinda-clark-cole/495938788?i=495938953&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:17'),
(450148527, 'YRM (Your Righteous Mind) [feat. Dorinda Clark Cole]', 'YRM (Your Righteous Mind) [feat. Dorinda Clark Cole]', 'yrm-your-righteous-mind-feat-dorinda-clark-cole-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/f7/9e/9f/f79e9f9f-47d8-eeb6-61bf-2f18a24be8a5/source/370x370bb.jpg', 0, '', '1', 1646911879, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/yrm-your-righteous-mind-feat-dorinda-clark-cole/450148484?i=450148527&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:19'),
(325445559, 'Still Mighty, Still Strong (feat. Dorinda Clark Cole)', 'Still Mighty, Still Strong (feat. Dorinda Clark Cole)', 'still-mighty-still-strong-feat-dorinda-clark-cole-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music124/v4/26/e5/d7/26e5d756-4135-2f5b-b828-bb6f8f686d87/source/370x370bb.jpg', 0, '', '1', 1646911882, 0, 1, '5.0', 0, 0, 2009, '', '', 'https://music.apple.com/us/album/still-mighty-still-strong-feat-dorinda-clark-cole/325444804?i=325445559&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:31:22'),
(1080795032, 'Forever Settled (feat. Dorinda Clark-Cole)', 'Forever Settled (feat. Dorinda Clark-Cole)', 'forever-settled-feat-dorinda-clark-cole-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/c0/eb/d8/c0ebd83c-5de4-c967-b5eb-c5dd188dcdac/source/370x370bb.jpg', 0, '', '1', 1646911884, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/forever-settled-feat-dorinda-clark-cole/1080794834?i=1080795032&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:24'),
(813752105, 'Let It Go (feat. Dorinda Clark-Cole)', 'Let It Go (feat. Dorinda Clark-Cole)', 'let-it-go-feat-dorinda-clark-cole-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/92/c2/26/92c22615-cf60-d8e9-dc7c-bdf4aa235642/source/370x370bb.jpg', 0, '', '1', 1646911886, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/let-it-go-feat-dorinda-clark-cole/813752084?i=813752105&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:26'),
(813752101, 'Write My Name (feat. Dorinda Clark-Cole)', 'Write My Name (feat. Dorinda Clark-Cole)', 'write-my-name-feat-dorinda-clark-cole-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/92/c2/26/92c22615-cf60-d8e9-dc7c-bdf4aa235642/source/370x370bb.jpg', 0, '', '1', 1646911888, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/write-my-name-feat-dorinda-clark-cole/813752084?i=813752101&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:28'),
(1357803247, 'He Got Up (feat. Dorinda Clark-Cole, Sean Tillery & Changed)', 'He Got Up (feat. Dorinda Clark-Cole, Sean Tillery & Changed)', 'he-got-up-feat-dorinda-clark-cole-sean-tillery-changed-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/58/12/05/581205d0-ffc3-4c2a-46ca-3f782f94a385/source/370x370bb.jpg', 0, '', '1', 1646911889, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/he-got-up-feat-dorinda-clark-cole-sean-tillery-changed/1357803231?i=1357803247&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:29'),
(220159537, 'Higher Ground (feat. Dorinda Clark-Cole, Kim Burrell, Mary Mary, Missy Elliott & Yolanda Adams)', 'Higher Ground (feat. Dorinda Clark-Cole, Kim Burrell, Mary Mary, Missy Elliott & Yolanda Adams)', 'higher-ground-feat-dorinda-clark-cole-kim-burrell-mary-mary-missy-elliott-yolanda-adams-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/87/3d/1e/873d1e27-ce50-0d35-203b-0729b0aa6402/source/370x370bb.jpg', 0, '', '1', 1646911891, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/higher-ground-feat-dorinda-clark-cole-kim-burrell-mary/220159096?i=220159537&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:31'),
(982539704, 'My City (feat. Dorinda Clark-Cole, Karen Clark Sheard, Fred Hammond, Kierra Sheard, Kem, J. Moss, 21:03, Clareta Haddon & Shelby 5)', 'My City (feat. Dorinda Clark-Cole, Karen Clark Sheard, Fred Hammond, Kierra Sheard, Kem, J. Moss, 21:03, Clareta Haddon & Shelby 5)', 'my-city-feat-dorinda-clark-cole-karen-clark-sheard-fred-hammond-kierra-sheard-kem-j-moss-21-03-clareta-haddon-shelby-5-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music1/v4/90/33/a1/9033a1ea-70e1-4b74-a691-c748572a2f72/source/370x370bb.jpg', 0, '', '1', 1646911893, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/my-city-feat-dorinda-clark-cole-karen-clark-sheard/982539697?i=982539704&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:33'),
(447837950, 'I\\&#39;m Still Here', 'I\\&#39;m Still Here', 'i-m-still-here', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/Im+Still+Here', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/9b/df/e3/9bdfe3c8-6d8c-c4c6-9c61-988ed8b14355/source/370x370bb.jpg', 0, '', '1', 1646911894, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/im-still-here-live/447837936?i=447837950&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:34'),
(941896919, 'Bless This House', 'Bless This House', 'bless-this-house', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/Bless+This+House', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/6a/e7/f8/6ae7f832-30a4-cb13-e5c1-286ceb8b5a09/source/370x370bb.jpg', 0, '', '1', 1646911896, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/bless-this-house/941896904?i=941896919&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:36'),
(447837955, 'I\\&#39;ve Got a Reason', 'I\\&#39;ve Got a Reason', 'i-ve-got-a-reason', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/9b/df/e3/9bdfe3c8-6d8c-c4c6-9c61-988ed8b14355/source/370x370bb.jpg', 0, '', '1', 1646911898, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/ive-got-a-reason-live/447837936?i=447837955&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:38'),
(781795559, 'The Prayers (feat. Hezekiah Walker, LFC & Dorinda Clark-Cole)', 'The Prayers (feat. Hezekiah Walker, LFC & Dorinda Clark-Cole)', 'the-prayers-feat-hezekiah-walker-lfc-dorinda-clark-cole-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/41/df/11/41df1139-a17d-d3c9-4281-a1992e72407c/source/370x370bb.jpg', 0, '', '1', 1646911899, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/the-prayers-feat-hezekiah-walker-lfc-dorinda-clark-cole/781795508?i=781795559&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:39'),
(355274289, 'Are You Listening (Kirk Franklin Presents Artists United for Haiti)', 'Are You Listening (Kirk Franklin Presents Artists United for Haiti)', 'are-you-listening-kirk-franklin-presents-artists-united-for-haiti-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/cd/47/63/cd476385-836d-a61f-135a-63324db70c40/source/370x370bb.jpg', 0, '', '1', 1646911901, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/are-you-listening-kirk-franklin-presents-artists-united/355274287?i=355274289&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:41'),
(447837957, 'Nobody But God', 'Nobody But God', 'nobody-but-god', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/Nobody+But+God', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/9b/df/e3/9bdfe3c8-6d8c-c4c6-9c61-988ed8b14355/source/370x370bb.jpg', 0, '', '1', 1646911903, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/nobody-but-god-live/447837936?i=447837957&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:43'),
(454449657, 'We Believe', 'We Believe', 'we-believe', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/We+Believe', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/ee/45/f3/ee45f3ac-270c-f480-2c97-990f2df760ae/source/370x370bb.jpg', 0, '', '1', 1646911905, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/we-believe/454449644?i=454449657&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:31:45'),
(447837952, 'I\\&#39;m Coming Out', 'I\\&#39;m Coming Out', 'i-m-coming-out', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/9b/df/e3/9bdfe3c8-6d8c-c4c6-9c61-988ed8b14355/source/370x370bb.jpg', 0, '', '1', 1646911906, 0, 1, '5.0', 0, 0, 2002, '', '', 'https://music.apple.com/us/album/im-coming-out-live/447837936?i=447837952&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:46'),
(941896921, 'Save Me Now', 'Save Me Now', 'save-me-now', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music115/v4/6a/e7/f8/6ae7f832-30a4-cb13-e5c1-286ceb8b5a09/source/370x370bb.jpg', 0, '', '1', 1646911908, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/save-me-now/941896904?i=941896921&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:48'),
(314756156, 'I\\&#39;m Wrapped In You', 'I\\&#39;m Wrapped In You', 'i-m-wrapped-in-you', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/e8/39/4d/e8394de4-4a7f-043a-5778-52b5da202243/source/370x370bb.jpg', 0, '', '1', 1646911909, 0, 1, '5.0', 0, 0, 2009, '', '', 'https://music.apple.com/us/album/im-wrapped-in-you-feat-dorinda-clark-cole/314755890?i=314756156&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:31:49'),
(1607193207, 'Who\\&#39;s On the Lord\\&#39;s Side (feat. Dorinda Clark-Cole)', 'Who\\&#39;s On the Lord\\&#39;s Side (feat. Dorinda Clark-Cole)', 'who-s-on-the-lord-s-side-feat-dorinda-clark-cole-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music126/v4/47/38/e4/4738e42b-6672-4865-f7f7-5fc19b1a6f41/source/370x370bb.jpg', 0, '', '1', 1646911911, 0, 1, '5.0', 0, 0, 2022, '', '', 'https://music.apple.com/us/album/whos-on-the-lords-side-feat-dorinda-clark-cole/1607193206?i=1607193207&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:51'),
(295704569, 'Jesus Lifted Me (feat. Dorinda Clark Cole)', 'Jesus Lifted Me (feat. Dorinda Clark Cole)', 'jesus-lifted-me-feat-dorinda-clark-cole-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/35/b0/c0/35b0c07e-8043-99ea-cf52-4cf59493ed75/source/370x370bb.jpg', 0, '', '1', 1646911913, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/jesus-lifted-me-feat-dorinda-clark-cole/295704562?i=295704569&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:31:53'),
(447837953, 'Everything He Promised', 'Everything He Promised', 'everything-he-promised', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/Everything+He+Promised', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/9b/df/e3/9bdfe3c8-6d8c-c4c6-9c61-988ed8b14355/source/370x370bb.jpg', 0, '', '1', 1646911915, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/everything-he-promised-live/447837936?i=447837953&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:55'),
(572543133, 'God\\&#39;s Got a Blessing for You (feat. Myron Williams & Dorinda Clark Cole)', 'God\\&#39;s Got a Blessing for You (feat. Myron Williams & Dorinda Clark Cole)', 'god-s-got-a-blessing-for-you-feat-myron-williams-dorinda-clark-cole-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/4d/f2/f3/4df2f38a-dd32-b634-5e32-7e29fdfeca73/source/370x370bb.jpg', 0, '', '1', 1646911917, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/gods-got-a-blessing-for-you-feat-myron-williams/572542517?i=572543133&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:31:57'),
(447837994, 'So Many Times', 'So Many Times', 'so-many-times', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/So+Many+Times', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/9b/df/e3/9bdfe3c8-6d8c-c4c6-9c61-988ed8b14355/source/370x370bb.jpg', 0, '', '1', 1646911919, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/so-many-times-live/447837936?i=447837994&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:31:59'),
(447837964, 'For the Rest of My Life', 'For the Rest of My Life', 'for-the-rest-of-my-life', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/For+the+Rest+of+My+Life', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/9b/df/e3/9bdfe3c8-6d8c-c4c6-9c61-988ed8b14355/source/370x370bb.jpg', 0, '', '1', 1646911921, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/for-the-rest-of-my-life-live/447837936?i=447837964&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:32:01'),
(447837966, 'You Can\\&#39;t Hurry God', 'You Can\\&#39;t Hurry God', 'you-can-t-hurry-god', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/9b/df/e3/9bdfe3c8-6d8c-c4c6-9c61-988ed8b14355/source/370x370bb.jpg', 0, '', '1', 1646911923, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/you-cant-hurry-god-live/447837936?i=447837966&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:32:03'),
(447837959, 'Worked Out for My Good', 'Worked Out for My Good', 'worked-out-for-my-good', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/Worked+Out+For+My+Good', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/9b/df/e3/9bdfe3c8-6d8c-c4c6-9c61-988ed8b14355/source/370x370bb.jpg', 0, '', '1', 1646911924, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/worked-out-for-my-good-live/447837936?i=447837959&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:32:04'),
(447837941, 'Great Is the Lord', 'Great Is the Lord', 'great-is-the-lord', 'https://www.last.fm/music/Dorinda+Clark-Cole/_/Great+Is+The+Lord', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/9b/df/e3/9bdfe3c8-6d8c-c4c6-9c61-988ed8b14355/source/370x370bb.jpg', 0, '', '1', 1646911926, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/great-is-the-lord-live/447837936?i=447837941&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:32:06'),
(840454975, 'Blessing Me (feat. Dorinda Clark Cole)', 'Blessing Me (feat. Dorinda Clark Cole)', 'blessing-me-feat-dorinda-clark-cole-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/37/5a/ab/375aabea-e53c-4753-05d9-341aebe0f591/source/370x370bb.jpg', 0, '', '1', 1646911928, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/blessing-me-feat-dorinda-clark-cole/840454954?i=840454975&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 11:32:08'),
(1508239320, 'Who\\&#39;s On the Lord\\&#39;s Side (feat. Byron Cage)', 'Who\\&#39;s On the Lord\\&#39;s Side (feat. Byron Cage)', 'who-s-on-the-lord-s-side-feat-byron-cage-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music123/v4/fc/54/b5/fc54b52b-7b4d-2b80-187b-fa6b8f8dd96f/source/370x370bb.jpg', 0, '', '1', 1646911930, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/whos-on-the-lords-side-feat-byron-cage/1508239318?i=1508239320&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 11:32:10'),
(1199127037, 'Bombs', 'Bombs', 'bombs', 'https://www.last.fm/music/Elle+Macho/_/Bombs', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/89/bc/5b/89bc5b36-398f-db10-1777-b7f9e258fb09/source/370x370bb.jpg', 0, '', '1', 1646914048, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/bombs/1199127031?i=1199127037&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:28'),
(1199127035, 'This Is Not a Love Song', 'This Is Not a Love Song', 'this-is-not-a-love-song', 'https://www.last.fm/music/Elle+Macho/_/This+Is+Not+a+Love+Song', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/89/bc/5b/89bc5b36-398f-db10-1777-b7f9e258fb09/source/370x370bb.jpg', 0, '', '1', 1646914050, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/this-is-not-a-love-song/1199127031?i=1199127035&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:30'),
(1199127131, 'Sleep Through It', 'Sleep Through It', 'sleep-through-it', 'https://www.last.fm/music/Elle+Macho/_/Sleep+Through+It', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/89/bc/5b/89bc5b36-398f-db10-1777-b7f9e258fb09/source/370x370bb.jpg', 0, '', '1', 1646914052, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/sleep-through-it/1199127031?i=1199127131&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:32'),
(1199127040, 'Hey Dude', 'Hey Dude', 'hey-dude', 'https://www.last.fm/music/Elle+Macho/_/Hey+Dude', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/89/bc/5b/89bc5b36-398f-db10-1777-b7f9e258fb09/source/370x370bb.jpg', 0, '', '1', 1646914054, 0, 1, '5.0', 0, 0, 2009, '', '', 'https://music.apple.com/us/album/hey-dude/1199127031?i=1199127040&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:34'),
(1199127038, 'The Offbeats', 'The Offbeats', 'the-offbeats', 'https://www.last.fm/music/Elle+Macho/_/The+Offbeats', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/89/bc/5b/89bc5b36-398f-db10-1777-b7f9e258fb09/source/370x370bb.jpg', 0, '', '1', 1646914056, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/the-offbeats/1199127031?i=1199127038&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:36'),
(1199127132, 'Car Crash', 'Car Crash', 'car-crash', 'https://www.last.fm/music/Elle+Macho/_/Car+Crash', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/89/bc/5b/89bc5b36-398f-db10-1777-b7f9e258fb09/source/370x370bb.jpg', 0, '', '1', 1646914058, 0, 1, '5.0', 0, 0, 2009, '', '', 'https://music.apple.com/us/album/car-crash/1199127031?i=1199127132&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:38'),
(1199127133, 'Conquistador', 'Conquistador', 'conquistador', 'https://www.last.fm/music/Elle+Macho/_/Conquistador', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/89/bc/5b/89bc5b36-398f-db10-1777-b7f9e258fb09/source/370x370bb.jpg', 0, '', '1', 1646914062, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/conquistador/1199127031?i=1199127133&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:42'),
(1199127039, 'Allez La Danse', 'Allez La Danse', 'allez-la-danse', 'https://www.last.fm/music/Elle+Macho/_/Allez+La+Danse', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/89/bc/5b/89bc5b36-398f-db10-1777-b7f9e258fb09/source/370x370bb.jpg', 0, '', '1', 1646914064, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/allez-la-danse/1199127031?i=1199127039&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:44'),
(1199127036, 'Glow in the Dark', 'Glow in the Dark', 'glow-in-the-dark', 'https://www.last.fm/music/Elle+Macho/_/Glow+In+The+Dark', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/89/bc/5b/89bc5b36-398f-db10-1777-b7f9e258fb09/source/370x370bb.jpg', 0, '', '1', 1646914066, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/glow-in-the-dark/1199127031?i=1199127036&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:46'),
(1175875525, 'Miss Mali', 'Miss Mali', 'miss-mali', 'https://www.last.fm/music/Elle+Macho/_/Miss+Mali', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music71/v4/d9/07/a5/d907a548-37c5-ac9f-615f-8910a7177192/source/370x370bb.jpg', 0, '', '1', 1646914068, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/miss-mali/1175875380?i=1175875525&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:48'),
(1175875522, 'Always on My Mind', 'Always on My Mind', 'always-on-my-mind', 'https://www.last.fm/music/Elle+Macho/_/Always+on+My+Mind', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music71/v4/d9/07/a5/d907a548-37c5-ac9f-615f-8910a7177192/source/370x370bb.jpg', 0, '', '1', 1646914070, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/always-on-my-mind/1175875380?i=1175875522&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:50'),
(1175875524, 'Global Line Dance', 'Global Line Dance', 'global-line-dance', 'https://www.last.fm/music/Elle+Macho/_/Global+Line+Dance', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music71/v4/d9/07/a5/d907a548-37c5-ac9f-615f-8910a7177192/source/370x370bb.jpg', 0, '', '1', 1646914072, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/global-line-dance/1175875380?i=1175875524&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:52'),
(1175875526, 'Your Sister Called', 'Your Sister Called', 'your-sister-called', 'https://www.last.fm/music/Elle+Macho/_/Your+Sister+Called', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music71/v4/d9/07/a5/d907a548-37c5-ac9f-615f-8910a7177192/source/370x370bb.jpg', 0, '', '1', 1646914074, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/your-sister-called/1175875380?i=1175875526&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:54'),
(1175875523, 'The Chancer', 'The Chancer', 'the-chancer', 'https://www.last.fm/music/Elle+Macho/_/The+Chancer', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music71/v4/d9/07/a5/d907a548-37c5-ac9f-615f-8910a7177192/source/370x370bb.jpg', 0, '', '1', 1646914076, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/the-chancer/1175875380?i=1175875523&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:56'),
(1114812392, 'Une femme recherche-t-elle un macho ?', 'Une femme recherche-t-elle un macho ?', 'une-femme-recherche-t-elle-un-macho-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music30/v4/28/4a/10/284a10c5-54c8-693a-a06c-fb344cdaa562/source/370x370bb.jpg', 0, '', '1', 1646914077, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/une-femme-recherche-t-elle-un-macho/1114812245?i=1114812392&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:07:57'),
(530873387, 'Noite de Ronda (Noche de Ronda)', 'Noite de Ronda (Noche de Ronda)', 'noite-de-ronda-noche-de-ronda-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/68/f8/0d/68f80dc7-6eb8-ec1c-6390-289826198410/source/370x370bb.jpg', 0, '', '1', 1646914268, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/noite-de-ronda-noche-de-ronda/530873369?i=530873387&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:11:08'),
(57830321, 'TOYFRIEND (Featuring Domenic Marte)', 'TOYFRIEND (Featuring Domenic Marte)', 'toyfriend-featuring-domenic-marte-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/e0/3d/76/e03d7624-7fd0-dab7-7b81-bbe2e11519d4/source/370x370bb.jpg', 0, '', '1', 1646914305, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/toyfriend-featuring-domenic-marte/57830348?i=57830321&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:11:45'),
(57830340, 'Touch Me All Over (UK Trance Anthem Mix)', 'Touch Me All Over (UK Trance Anthem Mix)', 'touch-me-all-over-uk-trance-anthem-mix-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/e0/3d/76/e03d7624-7fd0-dab7-7b81-bbe2e11519d4/source/370x370bb.jpg', 0, '', '1', 1646914307, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/touch-me-all-over-uk-trance-anthem-mix/57830348?i=57830340&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:11:47'),
(57830332, 'Drop Those Pants!', 'Drop Those Pants!', 'drop-those-pants-', 'https://www.last.fm/music/Bylli+Crayone/_/Drop+Those+Pants', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/e0/3d/76/e03d7624-7fd0-dab7-7b81-bbe2e11519d4/source/370x370bb.jpg', 0, '', '1', 1646914309, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/drop-those-pants/57830348?i=57830332&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:11:49'),
(57830336, 'Baja los Pantelones', 'Baja los Pantelones', 'baja-los-pantelones', 'https://www.last.fm/music/Bylli+Crayone/_/Baja+Los+Pantelones', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/e0/3d/76/e03d7624-7fd0-dab7-7b81-bbe2e11519d4/source/370x370bb.jpg', 0, '', '1', 1646914311, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/baja-los-pantelones/57830348?i=57830336&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:11:51'),
(57830330, 'Touch Me All Over', 'Touch Me All Over', 'touch-me-all-over', 'https://www.last.fm/music/Bylli+Crayone/_/Touch+Me+All+Over', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/e0/3d/76/e03d7624-7fd0-dab7-7b81-bbe2e11519d4/source/370x370bb.jpg', 0, '', '1', 1646914313, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/touch-me-all-over/57830348?i=57830330&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:11:53'),
(57830338, 'Touch Me All Over (Old School Flavor Mix)', 'Touch Me All Over (Old School Flavor Mix)', 'touch-me-all-over-old-school-flavor-mix-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/e0/3d/76/e03d7624-7fd0-dab7-7b81-bbe2e11519d4/source/370x370bb.jpg', 0, '', '1', 1646914316, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/touch-me-all-over-old-school-flavor-mix/57830348?i=57830338&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:11:56'),
(57830328, 'Mi Corazon Belongs to You', 'Mi Corazon Belongs to You', 'mi-corazon-belongs-to-you', 'https://www.last.fm/music/Bylli+Crayone/_/Mi+Corazon+Belongs+To+You', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/e0/3d/76/e03d7624-7fd0-dab7-7b81-bbe2e11519d4/source/370x370bb.jpg', 0, '', '1', 1646914318, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/mi-corazon-belongs-to-you/57830348?i=57830328&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:11:58'),
(57830342, 'I Wanna Taste You (Seeing Is Believing Mix)', 'I Wanna Taste You (Seeing Is Believing Mix)', 'i-wanna-taste-you-seeing-is-believing-mix-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/e0/3d/76/e03d7624-7fd0-dab7-7b81-bbe2e11519d4/source/370x370bb.jpg', 0, '', '1', 1646914320, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/i-wanna-taste-you-seeing-is-believing-mix/57830348?i=57830342&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:00'),
(57830334, 'Can\\&#39;t Fight the Attraction!', 'Can\\&#39;t Fight the Attraction!', 'can-t-fight-the-attraction-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/e0/3d/76/e03d7624-7fd0-dab7-7b81-bbe2e11519d4/source/370x370bb.jpg', 0, '', '1', 1646914322, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/cant-fight-the-attraction/57830348?i=57830334&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:02'),
(57830326, 'I Wanna Taste You', 'I Wanna Taste You', 'i-wanna-taste-you', 'https://www.last.fm/music/Bylli+Crayone/_/I+Wanna+Taste+You', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/e0/3d/76/e03d7624-7fd0-dab7-7b81-bbe2e11519d4/source/370x370bb.jpg', 0, '', '1', 1646914325, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/i-wanna-taste-you/57830348?i=57830326&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:05'),
(57830346, 'DJ SKY MegaMixx', 'DJ SKY MegaMixx', 'dj-sky-megamixx', 'https://www.last.fm/music/Bylli+Crayone/_/DJ+SKY+MegaMixx', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/e0/3d/76/e03d7624-7fd0-dab7-7b81-bbe2e11519d4/source/370x370bb.jpg', 0, '', '1', 1646914327, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/dj-sky-megamixx/57830348?i=57830346&uo=4', -1, '', 'USA', 'USD', 0, '2022-03-10 12:12:07'),
(57830344, 'I Wanna Taste You (Full Intention Mix)', 'I Wanna Taste You (Full Intention Mix)', 'i-wanna-taste-you-full-intention-mix-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/e0/3d/76/e03d7624-7fd0-dab7-7b81-bbe2e11519d4/source/370x370bb.jpg', 0, '', '1', 1646914329, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/i-wanna-taste-you-full-intention-mix/57830348?i=57830344&uo=4', -1, '', 'USA', 'USD', 0, '2022-03-10 12:12:09'),
(542976575, 'Thunder N Lightning (feat. Bylli Crayone & Loida)', 'Thunder N Lightning (feat. Bylli Crayone & Loida)', 'thunder-n-lightning-feat-bylli-crayone-loida-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/bb/bf/71/bbbf7160-6881-489a-f6fc-3b11ff3c803a/source/370x370bb.jpg', 0, '', '1', 1646914330, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/thunder-n-lightning-feat-bylli-crayone-loida/542976569?i=542976575&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:10'),
(165050158, 'SKIT: THIS IS BYLLI CRAYONE', 'SKIT: THIS IS BYLLI CRAYONE', 'skit-this-is-bylli-crayone', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914332, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/skit-this-is-bylli-crayone/165049253?i=165050158&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:12'),
(1069997052, 'Prove Your Love', 'Prove Your Love', 'prove-your-love', 'https://www.last.fm/music/Bylli+Crayone/_/Prove+Your+Love', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914334, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/prove-your-love/1069993954?i=1069997052&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:14'),
(1069995619, 'Boy Next Door (feat. Domenic Marte)', 'Boy Next Door (feat. Domenic Marte)', 'boy-next-door-feat-domenic-marte-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914336, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/boy-next-door-feat-domenic-marte/1069993954?i=1069995619&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:16'),
(1069995637, 'Dizzy Boi', 'Dizzy Boi', 'dizzy-boi', 'https://www.last.fm/music/Bylli+Crayone/_/Dizzy+Boi', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914339, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/dizzy-boi/1069993954?i=1069995637&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:19'),
(1069997071, 'Mystery Boy', 'Mystery Boy', 'mystery-boy', 'https://www.last.fm/music/Bylli+Crayone/_/Mystery+Boy', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914342, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/mystery-boy/1069993954?i=1069997071&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:22'),
(1069994697, 'Touch Me All Over', 'Touch Me All Over', 'touch-me-all-over', 'https://www.last.fm/music/Bylli+Crayone/_/Touch+Me+All+Over', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914344, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/touch-me-all-over/1069993954?i=1069994697&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:24'),
(1069996560, 'Presto', 'Presto', 'presto', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914346, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/presto/1069993954?i=1069996560&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:26'),
(1069994704, 'Drop Those Pants', 'Drop Those Pants', 'drop-those-pants', 'https://www.last.fm/music/Bylli+Crayone/_/Drop+Those+Pants', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914348, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/drop-those-pants/1069993954?i=1069994704&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:28'),
(1069995627, 'Waste of Time', 'Waste of Time', 'waste-of-time', 'https://www.last.fm/music/Bylli+Crayone/_/Waste+of+Time', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914350, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/waste-of-time/1069993954?i=1069995627&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:30'),
(1069996187, 'It\\&#39;s Okay Boy (feat. Tiffany)', 'It\\&#39;s Okay Boy (feat. Tiffany)', 'it-s-okay-boy-feat-tiffany-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914352, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/its-okay-boy-feat-tiffany/1069993954?i=1069996187&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:32');
INSERT INTO `tbl_songs` (`id`, `song_title`, `keywords`, `song_seo`, `lastfm_url`, `ad_code`, `video_code`, `picture`, `popularity`, `description`, `song_status`, `posted_date`, `latest_one`, `ranking_order`, `rate_song`, `review_count`, `latest`, `song_year`, `amazon_url`, `google_url`, `itunes_url`, `itunes_price`, `refer_seo`, `country`, `currency`, `timeupdated`, `updated_by_itunes`) VALUES
(1069996558, 'He Winked At Me', 'He Winked At Me', 'he-winked-at-me', 'https://www.last.fm/music/Bylli+Crayone/_/He+Winked+At+Me', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914353, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/he-winked-at-me/1069993954?i=1069996558&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:33'),
(1069995630, 'Click Those Heels', 'Click Those Heels', 'click-those-heels', 'https://www.last.fm/music/Bylli+Crayone/_/Click+Those+Heels', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914355, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/click-those-heels/1069993954?i=1069995630&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:35'),
(1069994694, 'Girl Hang It Up!', 'Girl Hang It Up!', 'girl-hang-it-up-', 'https://www.last.fm/music/Bylli+Crayone/_/Girl+Hang+It+Up', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914358, 0, 1, '5.0', 0, 0, 1991, '', '', 'https://music.apple.com/us/album/girl-hang-it-up/1069993954?i=1069994694&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:38'),
(1069996182, 'Boy Crush (feat. Daluzion)', 'Boy Crush (feat. Daluzion)', 'boy-crush-feat-daluzion-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914360, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/boy-crush-feat-daluzion/1069993954?i=1069996182&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:40'),
(1069995612, 'Baja los Pantelones', 'Baja los Pantelones', 'baja-los-pantelones', 'https://www.last.fm/music/Bylli+Crayone/_/Baja+Los+Pantelones', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music69/v4/77/cb/e9/77cbe9a5-5a0d-95a5-c52a-ab2dd29cdcb9/source/370x370bb.jpg', 0, '', '1', 1646914362, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/baja-los-pantelones/1069993954?i=1069995612&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:42'),
(165050368, 'BAJA los PANTELONES (Merengue Mix)', 'BAJA los PANTELONES (Merengue Mix)', 'baja-los-pantelones-merengue-mix-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914364, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/baja-los-pantelones-merengue-mix/165049253?i=165050368&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:44'),
(316838169, 'Toyfriend (feat. Domenic Marte)', 'Toyfriend (feat. Domenic Marte)', 'toyfriend-feat-domenic-marte-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/3f/d9/ac/3fd9ac98-bd54-6a44-78ca-f31213e01476/source/370x370bb.jpg', 0, '', '1', 1646914365, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/toyfriend-feat-domenic-marte/316838130?i=316838169&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:45'),
(316838160, 'Boy Crush (feat. Daluzion)', 'Boy Crush (feat. Daluzion)', 'boy-crush-feat-daluzion-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/3f/d9/ac/3fd9ac98-bd54-6a44-78ca-f31213e01476/source/370x370bb.jpg', 0, '', '1', 1646914367, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/boy-crush-feat-daluzion/316838130?i=316838160&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:47'),
(316838164, 'Change of Heart', 'Change of Heart', 'change-of-heart', 'https://www.last.fm/music/Bylli+Crayone/_/Change+of+Heart', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/3f/d9/ac/3fd9ac98-bd54-6a44-78ca-f31213e01476/source/370x370bb.jpg', 0, '', '1', 1646914369, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/change-of-heart/316838130?i=316838164&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:49'),
(316838158, 'Dizzy Boi (OrangeFuzzz Extended Remix)', 'Dizzy Boi (OrangeFuzzz Extended Remix)', 'dizzy-boi-orangefuzzz-extended-remix-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/3f/d9/ac/3fd9ac98-bd54-6a44-78ca-f31213e01476/source/370x370bb.jpg', 0, '', '1', 1646914372, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/dizzy-boi-orangefuzzz-extended-remix/316838130?i=316838158&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:52'),
(316838174, 'Drop Those Pants (Extended Club Version)', 'Drop Those Pants (Extended Club Version)', 'drop-those-pants-extended-club-version-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/3f/d9/ac/3fd9ac98-bd54-6a44-78ca-f31213e01476/source/370x370bb.jpg', 0, '', '1', 1646914373, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/drop-those-pants-extended-club-version/316838130?i=316838174&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:53'),
(316838203, 'Click Those Heels', 'Click Those Heels', 'click-those-heels', 'https://www.last.fm/music/Bylli+Crayone/_/Click+Those+Heels', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/3f/d9/ac/3fd9ac98-bd54-6a44-78ca-f31213e01476/source/370x370bb.jpg', 0, '', '1', 1646914376, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/click-those-heels/316838130?i=316838203&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:56'),
(316838167, 'Girl Hang It Up!', 'Girl Hang It Up!', 'girl-hang-it-up-', 'https://www.last.fm/music/Bylli+Crayone/_/Girl+Hang+It+Up', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/3f/d9/ac/3fd9ac98-bd54-6a44-78ca-f31213e01476/source/370x370bb.jpg', 0, '', '1', 1646914377, 0, 1, '5.0', 0, 0, 1991, '', '', 'https://music.apple.com/us/album/girl-hang-it-up/316838130?i=316838167&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:57'),
(165049639, 'TOUCH ME ALL OVER (Old School Flavor Mix)', 'TOUCH ME ALL OVER (Old School Flavor Mix)', 'touch-me-all-over-old-school-flavor-mix-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914379, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/touch-me-all-over-old-school-flavor-mix/165049253?i=165049639&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:12:59'),
(165049775, 'CUTE BOYS (Democrates Post Modern Scandal Mix) [Featuring Lil St', 'CUTE BOYS (Democrates Post Modern Scandal Mix) [Featuring Lil St', 'cute-boys-democrates-post-modern-scandal-mix-featuring-lil-st', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914381, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/cute-boys-democrates-post-modern-scandal-mix-featuring/165049253?i=165049775&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:01'),
(316838207, 'Touch Me All Over', 'Touch Me All Over', 'touch-me-all-over', 'https://www.last.fm/music/Bylli+Crayone/_/Touch+Me+All+Over', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/3f/d9/ac/3fd9ac98-bd54-6a44-78ca-f31213e01476/source/370x370bb.jpg', 0, '', '1', 1646914383, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/touch-me-all-over/316838130?i=316838207&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:03'),
(316838208, 'Tomorrow Is Too Late (1990 Demo Version)', 'Tomorrow Is Too Late (1990 Demo Version)', 'tomorrow-is-too-late-1990-demo-version-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/3f/d9/ac/3fd9ac98-bd54-6a44-78ca-f31213e01476/source/370x370bb.jpg', 0, '', '1', 1646914385, 0, 1, '5.0', 0, 0, 2009, '', '', 'https://music.apple.com/us/album/tomorrow-is-too-late-1990-demo-version/316838130?i=316838208&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:05'),
(316838162, 'Touch Me All Over (ThePhlexican Remix)', 'Touch Me All Over (ThePhlexican Remix)', 'touch-me-all-over-thephlexican-remix-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/3f/d9/ac/3fd9ac98-bd54-6a44-78ca-f31213e01476/source/370x370bb.jpg', 0, '', '1', 1646914387, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/touch-me-all-over-thephlexican-remix/316838130?i=316838162&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:07'),
(165049432, 'DIZZY BOI (DJ Dayer Multi-Edit 12 Dizzy Mix)', 'DIZZY BOI (DJ Dayer Multi-Edit 12 Dizzy Mix)', 'dizzy-boi-dj-dayer-multi-edit-12-dizzy-mix-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914389, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/dizzy-boi-dj-dayer-multi-edit-12-dizzy-mix/165049253?i=165049432&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:09'),
(165050230, 'DROP THOSE PANTS (Extended Club Version)', 'DROP THOSE PANTS (Extended Club Version)', 'drop-those-pants-extended-club-version-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914391, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/drop-those-pants-extended-club-version/165049253?i=165050230&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:11'),
(165050027, 'TOYFRIEND (Autocad Remix) [Featuring Domenic Marte]', 'TOYFRIEND (Autocad Remix) [Featuring Domenic Marte]', 'toyfriend-autocad-remix-featuring-domenic-marte-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914392, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/toyfriend-autocad-remix-featuring-domenic-marte/165049253?i=165050027&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:12'),
(165050497, 'TOUCH ME ALL OVER (Freestyle Radio Mix)', 'TOUCH ME ALL OVER (Freestyle Radio Mix)', 'touch-me-all-over-freestyle-radio-mix-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914395, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/touch-me-all-over-freestyle-radio-mix/165049253?i=165050497&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:15'),
(165050380, 'I WANNA TASTE YOU (Radio Edit)', 'I WANNA TASTE YOU (Radio Edit)', 'i-wanna-taste-you-radio-edit-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914397, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/i-wanna-taste-you-radio-edit/165049253?i=165050380&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:17'),
(165049328, 'BOY NEXT DOOR (Spin.Kidd Remix) [Featuring Domenic Marte]', 'BOY NEXT DOOR (Spin.Kidd Remix) [Featuring Domenic Marte]', 'boy-next-door-spin-kidd-remix-featuring-domenic-marte-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914398, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/boy-next-door-spin-kidd-remix-featuring-domenic-marte/165049253?i=165049328&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:18'),
(165049862, 'I WANNA TASTE YOU (Spin.Kidd Remix)', 'I WANNA TASTE YOU (Spin.Kidd Remix)', 'i-wanna-taste-you-spin-kidd-remix-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914400, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/i-wanna-taste-you-spin-kidd-remix/165049253?i=165049862&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:20'),
(165049801, 'DIZZY BOI (DJ Scorpio\\&#39;s UK Club Mix)', 'DIZZY BOI (DJ Scorpio\\&#39;s UK Club Mix)', 'dizzy-boi-dj-scorpio-s-uk-club-mix-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914402, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/dizzy-boi-dj-scorpios-uk-club-mix/165049253?i=165049801&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:22'),
(165049602, 'SKIT: FREESTYLE NOW', 'SKIT: FREESTYLE NOW', 'skit-freestyle-now', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/00/15/fe/0015fe0e-28a6-06cf-2ba3-d73f6f1f20e5/source/370x370bb.jpg', 0, '', '1', 1646914404, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/skit-freestyle-now/165049253?i=165049602&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:13:24'),
(270867903, 'Patty Duke', 'Patty Duke', 'patty-duke', 'https://www.last.fm/music/Bobby+Morganstein/_/Patty+Duke', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/2b/fc/a7/2bfca7db-842b-b7cf-b8cb-1d2dc84abca6/source/370x370bb.jpg', 0, '', '1', 1646914451, 0, 1, '5.0', 0, 0, 2000, '', '', 'https://music.apple.com/us/album/patty-duke/270867847?i=270867903&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:14:11'),
(1451134722, 'Patty Duke', 'Patty Duke', 'patty-duke', 'https://www.last.fm/music/cloud+1/_/Patty+Duke', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music114/v4/6d/bc/6d/6dbc6d88-699c-5add-c647-2d1d34e2ab50/source/370x370bb.jpg', 0, '', '1', 1646914454, 0, 1, '5.0', 0, 0, 1979, '', '', 'https://music.apple.com/us/album/patty-duke-extended-dj-mix/1451134437?i=1451134722&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:14:14'),
(519980727, 'Patty Duke', 'Patty Duke', 'patty-duke', 'https://www.last.fm/music/Cloud+One/_/Patty+Duke', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/80/0b/ba/800bba4d-3c69-e377-a47f-f4ebad2429a5/source/370x370bb.jpg', 0, '', '1', 1646914456, 0, 1, '5.0', 0, 0, 1979, '', '', 'https://music.apple.com/us/album/patty-duke/519980586?i=519980727&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:14:16'),
(1191631040, 'Patty Duke', 'Patty Duke', 'patty-duke', 'https://www.last.fm/music/Cloud+One/_/Patty+Duke', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music111/v4/38/9d/c3/389dc3d5-66b4-339d-0c5d-4c34ddfc8909/source/370x370bb.jpg', 0, '', '1', 1646914458, 0, 1, '5.0', 0, 0, 1979, '', '', 'https://music.apple.com/us/album/patty-duke/1191630912?i=1191631040&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:18'),
(1170284334, 'Patty Duke', 'Patty Duke', 'patty-duke', 'https://www.last.fm/music/Cloud+One/_/Patty+Duke', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music19/v4/e0/5c/74/e05c747f-aaa5-6e56-b29c-d83179c8c81a/source/370x370bb.jpg', 0, '', '1', 1646914460, 0, 1, '5.0', 0, 0, 1979, '', '', 'https://music.apple.com/us/album/patty-duke/1170282607?i=1170284334&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:20'),
(1464628428, 'Patty Duke', 'Patty Duke', 'patty-duke', 'https://www.last.fm/music/Cloud+One/_/Patty+Duke', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music123/v4/bf/a4/ca/bfa4ca8d-f4a7-8d48-7b83-7e3ef0c4fb0d/source/370x370bb.jpg', 0, '', '1', 1646914461, 0, 1, '5.0', 0, 0, 1979, '', '', 'https://music.apple.com/us/album/patty-duke/1464627696?i=1464628428&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:21'),
(265174791, 'Patty Duke', 'Patty Duke', 'patty-duke', 'https://www.last.fm/music/Organic+Mode/_/Patty+Duke', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music/v4/2f/b3/a2/2fb3a27a-64c6-52a5-0622-bbc1ef51a5b8/source/370x370bb.jpg', 0, '', '1', 1646914463, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://music.apple.com/us/album/patty-duke/265174214?i=265174791&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:14:23'),
(209360160, 'Patty Duke', 'Patty Duke', 'patty-duke', 'https://www.last.fm/music/Autumn/_/Patty+Duke', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music/v4/b2/21/fc/b221fc76-f174-b60c-b2db-d3aa8cf9a572/source/370x370bb.jpg', 0, '', '1', 1646914465, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/patty-duke/209359773?i=209360160&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:14:25'),
(282014597, 'Valley of the Dolls', 'Valley of the Dolls', 'valley-of-the-dolls', 'https://www.last.fm/music/Mark+Robson/_/Valley+of+the+Dolls', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Video/v4/f7/00/71/f70071d9-3268-9595-0b1c-3fee95cac878/source/370x370bb.jpg', 0, '', '1', 1646914467, 0, 1, '5.0', 0, 0, 1967, '', '', 'https://itunes.apple.com/us/movie/valley-of-the-dolls/id282014597?uo=4', 9.99, '', 'USA', 'USD', 0, '2022-03-10 12:14:27'),
(257896048, 'The Miracle Worker', 'The Miracle Worker', 'the-miracle-worker', 'https://www.last.fm/music/Arthur+Penn/_/The+Miracle+Worker', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Video4/v4/7d/9e/48/7d9e484b-c811-2cc3-17c5-daeba93c07b3/source/370x370bb.jpg', 0, '', '1', 1646914469, 0, 1, '5.0', 0, 0, 1962, '', '', 'https://itunes.apple.com/us/movie/the-miracle-worker/id257896048?uo=4', 14.99, '', 'USA', 'USD', 0, '2022-03-10 12:14:29'),
(1191595851, 'Patty Duke', 'Patty Duke', 'patty-duke', 'https://www.last.fm/music/Cloud+One/_/Patty+Duke', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/59/59/59/5959598d-5229-223d-fb89-88778bb6f3fc/source/370x370bb.jpg', 0, '', '1', 1646914471, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/patty-duke/1191595295?i=1191595851&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:31'),
(1506989865, 'Patty Duke', 'Patty Duke', 'patty-duke', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music113/v4/38/e7/43/38e74311-4147-be04-4a94-665c4ec25ac5/source/370x370bb.jpg', 0, '', '1', 1646914472, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/patty-duke/1506989861?i=1506989865&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:14:32'),
(1443460690, 'The Patty Duke Show Theme', 'The Patty Duke Show Theme', 'the-patty-duke-show-theme', 'https://www.last.fm/music/The+Hit+Crew/_/The+Patty+Duke+Show+Theme', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music118/v4/9d/3b/a9/9d3ba95a-7257-2cc2-78b5-8d1d0b974d68/source/370x370bb.jpg', 0, '', '1', 1646914474, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/the-patty-duke-show-theme/1443460668?i=1443460690&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:34'),
(1530395032, 'Patty Duke', 'Patty Duke', 'patty-duke', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/22/72/f3/2272f32c-c62a-966a-6cb7-bae15c56129e/source/370x370bb.jpg', 0, '', '1', 1646914476, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/patty-duke/1530395021?i=1530395032&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:14:36'),
(889055363, 'A Killer Among Friends', 'A Killer Among Friends', 'a-killer-among-friends', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Video1/v4/4d/d2/e3/4dd2e3e8-1c65-8e15-abf9-5d7cb0ae69b9/source/370x370bb.jpg', 0, '', '1', 1646914478, 0, 1, '5.0', 0, 0, 1992, '', '', 'https://itunes.apple.com/us/movie/a-killer-among-friends/id889055363?uo=4', 14.99, '', 'USA', 'USD', 0, '2022-03-10 12:14:38'),
(446823892, 'Unanswered Prayers', 'Unanswered Prayers', 'unanswered-prayers', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Video/v4/0d/e6/2f/0de62fd6-34e7-a660-4689-4ecc69e02beb/source/370x370bb.jpg', 0, '', '1', 1646914479, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://itunes.apple.com/us/movie/unanswered-prayers/id446823892?uo=4', 12.99, '', 'USA', 'USD', 0, '2022-03-10 12:14:39'),
(716048411, 'Don\\&#39;t Just Stand There', 'Don\\&#39;t Just Stand There', 'don-t-just-stand-there', 'https://www.last.fm/music/Patty+Duke/_/Dont+Just+Stand+There', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music124/v4/04/f3/4a/04f34a7e-ec83-70a8-0217-a3bd7c4bbdc2/source/370x370bb.jpg', 0, '', '1', 1646914481, 0, 1, '5.0', 0, 0, 1996, '', '', 'https://music.apple.com/us/album/dont-just-stand-there/716047559?i=716048411&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:41'),
(1444071508, 'Don\\&#39;t Just Stand There', 'Don\\&#39;t Just Stand There', 'don-t-just-stand-there', 'https://www.last.fm/music/Patty+Duke/_/Dont+Just+Stand+There', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/9e/78/52/9e7852e3-2a31-c9f7-76e0-e2413389e697/source/370x370bb.jpg', 0, '', '1', 1646914483, 0, 1, '5.0', 0, 0, 1965, '', '', 'https://music.apple.com/us/album/dont-just-stand-there/1444071495?i=1444071508&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:43'),
(320478702, 'Miracle On the Mountain: The Kincaid Family Story', 'Miracle On the Mountain: The Kincaid Family Story', 'miracle-on-the-mountain-the-kincaid-family-story', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Video/v4/c3/9b/a6/c39ba696-5ac5-33f9-16e8-715f4a16618f/source/370x370bb.jpg', 0, '', '1', 1646914484, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://itunes.apple.com/us/movie/miracle-on-the-mountain-the-kincaid-family-story/id320478702?uo=4', 12.99, '', 'USA', 'USD', 0, '2022-03-10 12:14:44'),
(1443551315, 'Puff the Magic Dragon', 'Puff the Magic Dragon', 'puff-the-magic-dragon', 'https://www.last.fm/music/Patty+Duke/_/Puff+The+Magic+Dragon', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', 0, '', '1', 1646914487, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/puff-the-magic-dragon/1443551247?i=1443551315&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:47'),
(1443551302, 'The Cruel War', 'The Cruel War', 'the-cruel-war', 'https://www.last.fm/music/Patty+Duke/_/The+Cruel+War', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', 0, '', '1', 1646914489, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/the-cruel-war/1443551247?i=1443551302&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:49'),
(1443745673, 'I Love How You Love Me', 'I Love How You Love Me', 'i-love-how-you-love-me', 'https://www.last.fm/music/Patty+Duke/_/I+Love+How+You+Love+Me', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/23/81/e5/2381e5b5-9efd-7f99-2eeb-91c77d2214ef/source/370x370bb.jpg', 0, '', '1', 1646914490, 0, 1, '5.0', 0, 0, 1966, '', '', 'https://music.apple.com/us/album/i-love-how-you-love-me/1443745124?i=1443745673&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:50'),
(1443551409, 'Blowin\\&#39; in the Wind', 'Blowin\\&#39; in the Wind', 'blowin-in-the-wind', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', 0, '', '1', 1646914492, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/blowin-in-the-wind/1443551247?i=1443551409&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:52'),
(1443745686, 'Sure Gonna Miss Him', 'Sure Gonna Miss Him', 'sure-gonna-miss-him', 'https://www.last.fm/music/Patty+Duke/_/Sure+Gonna+Miss+Him', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/23/81/e5/2381e5b5-9efd-7f99-2eeb-91c77d2214ef/source/370x370bb.jpg', 0, '', '1', 1646914494, 0, 1, '5.0', 0, 0, 1966, '', '', 'https://music.apple.com/us/album/sure-gonna-miss-him/1443745124?i=1443745686&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:54'),
(1443551395, 'Dona Dona', 'Dona Dona', 'dona-dona', 'https://www.last.fm/music/Patty+Duke/_/dona+dona', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', 0, '', '1', 1646914495, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/dona-dona/1443551247?i=1443551395&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:55'),
(1443551392, 'Time to Move On', 'Time to Move On', 'time-to-move-on', 'https://www.last.fm/music/Patty+Duke/_/Time+to+Move+On', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', 0, '', '1', 1646914497, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/time-to-move-on/1443551247?i=1443551392&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:57'),
(1443745851, 'All I Have to Do Is Dream', 'All I Have to Do Is Dream', 'all-i-have-to-do-is-dream', 'https://www.last.fm/music/Patty+Duke/_/All+I+Have+To+Do+Is+Dream', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/23/81/e5/2381e5b5-9efd-7f99-2eeb-91c77d2214ef/source/370x370bb.jpg', 0, '', '1', 1646914499, 0, 1, '5.0', 0, 0, 1966, '', '', 'https://music.apple.com/us/album/all-i-have-to-do-is-dream/1443745124?i=1443745851&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:14:59'),
(1443551407, 'Johnny I Hardly Knew Ye', 'Johnny I Hardly Knew Ye', 'johnny-i-hardly-knew-ye', 'https://www.last.fm/music/Patty+Duke/_/Johnny+I+Hardly+Knew+Ye', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', 0, '', '1', 1646914501, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/johnny-i-hardly-knew-ye/1443551247?i=1443551407&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:01'),
(1443745497, 'Whenever She Holds You', 'Whenever She Holds You', 'whenever-she-holds-you', 'https://www.last.fm/music/Patty+Duke/_/Whenever+She+Holds+You', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/23/81/e5/2381e5b5-9efd-7f99-2eeb-91c77d2214ef/source/370x370bb.jpg', 0, '', '1', 1646914503, 0, 1, '5.0', 0, 0, 1966, '', '', 'https://music.apple.com/us/album/whenever-she-holds-you/1443745124?i=1443745497&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:03'),
(1443745664, 'One Kiss Away', 'One Kiss Away', 'one-kiss-away', 'https://www.last.fm/music/Patty+Duke/_/One+Kiss+Away', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/23/81/e5/2381e5b5-9efd-7f99-2eeb-91c77d2214ef/source/370x370bb.jpg', 0, '', '1', 1646914505, 0, 1, '5.0', 0, 0, 1966, '', '', 'https://music.apple.com/us/album/one-kiss-away/1443745124?i=1443745664&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:05'),
(1443551402, 'The Housewife\\&#39;s Lament', 'The Housewife\\&#39;s Lament', 'the-housewife-s-lament', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', 0, '', '1', 1646914507, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/the-housewifes-lament/1443551247?i=1443551402&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:07'),
(1443551398, 'Shine for Me', 'Shine for Me', 'shine-for-me', 'https://www.last.fm/music/Patty+Duke/_/Shine+For+Me', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', 0, '', '1', 1646914508, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/shine-for-me/1443551247?i=1443551398&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:08'),
(1443551381, 'The Bells of Rhymney', 'The Bells of Rhymney', 'the-bells-of-rhymney', 'https://www.last.fm/music/Patty+Duke/_/The+Bells+Of+Rhymney', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', 0, '', '1', 1646914510, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/the-bells-of-rhymney/1443551247?i=1443551381&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:10'),
(1443551293, 'Colors', 'Colors', 'colors', 'https://www.last.fm/music/Patty+Duke/_/Colors', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', 0, '', '1', 1646914512, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/colors/1443551247?i=1443551293&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:12'),
(1443551311, 'And We Were Strangers', 'And We Were Strangers', 'and-we-were-strangers', 'https://www.last.fm/music/Patty+Duke/_/And+We+Were+Strangers', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', 0, '', '1', 1646914514, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/and-we-were-strangers/1443551247?i=1443551311&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:14'),
(1443551308, 'The Best Is Yet to Come', 'The Best Is Yet to Come', 'the-best-is-yet-to-come', 'https://www.last.fm/music/Patty+Duke/_/The+Best+Is+Yet+To+Come', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music118/v4/c9/8a/5d/c98a5d41-8c0b-230b-d6d4-1d18ad84bde7/source/370x370bb.jpg', 0, '', '1', 1646914516, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/the-best-is-yet-to-come/1443551247?i=1443551308&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:16'),
(1443745506, 'Little Things Mean a Lot', 'Little Things Mean a Lot', 'little-things-mean-a-lot', 'https://www.last.fm/music/Patty+Duke/_/Little+Things+Mean+A+Lot', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/23/81/e5/2381e5b5-9efd-7f99-2eeb-91c77d2214ef/source/370x370bb.jpg', 0, '', '1', 1646914518, 0, 1, '5.0', 0, 0, 1966, '', '', 'https://music.apple.com/us/album/little-things-mean-a-lot/1443745124?i=1443745506&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:18'),
(1443745143, 'Yesterday', 'Yesterday', 'yesterday', 'https://www.last.fm/music/Patty+Duke/_/Yesterday', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/23/81/e5/2381e5b5-9efd-7f99-2eeb-91c77d2214ef/source/370x370bb.jpg', 0, '', '1', 1646914520, 0, 1, '5.0', 0, 0, 1966, '', '', 'https://music.apple.com/us/album/yesterday/1443745124?i=1443745143&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:20'),
(1444071774, 'Say Something Funny', 'Say Something Funny', 'say-something-funny', 'https://www.last.fm/music/Patty+Duke/_/Say+Something+Funny', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/9e/78/52/9e7852e3-2a31-c9f7-76e0-e2413389e697/source/370x370bb.jpg', 0, '', '1', 1646914521, 0, 1, '5.0', 0, 0, 1965, '', '', 'https://music.apple.com/us/album/say-something-funny/1444071495?i=1444071774&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:21'),
(1434386896, 'React (feat. Patty Duke & Prince Omar)', 'React (feat. Patty Duke & Prince Omar)', 'react-feat-patty-duke-prince-omar-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music128/v4/3f/55/41/3f554127-2496-43f2-f232-ea06fba0ac15/source/370x370bb.jpg', 0, '', '1', 1646914523, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/react-feat-patty-duke-prince-omar/1434386497?i=1434386896&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:15:23'),
(1443745482, 'All Through the Day', 'All Through the Day', 'all-through-the-day', 'https://www.last.fm/music/Patty+Duke/_/All+Through+The+Day', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/23/81/e5/2381e5b5-9efd-7f99-2eeb-91c77d2214ef/source/370x370bb.jpg', 0, '', '1', 1646914526, 0, 1, '5.0', 0, 0, 1966, '', '', 'https://music.apple.com/us/album/all-through-the-day/1443745124?i=1443745482&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:26'),
(1443745135, 'The World Is Watching Us', 'The World Is Watching Us', 'the-world-is-watching-us', 'https://www.last.fm/music/Patty+Duke/_/The+World+Is+Watching+Us', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/23/81/e5/2381e5b5-9efd-7f99-2eeb-91c77d2214ef/source/370x370bb.jpg', 0, '', '1', 1646914528, 0, 1, '5.0', 0, 0, 1966, '', '', 'https://music.apple.com/us/album/the-world-is-watching-us/1443745124?i=1443745135&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:28'),
(1444072018, 'The End of the World', 'The End of the World', 'the-end-of-the-world', 'https://www.last.fm/music/Patty+Duke/_/The+End+Of+The+World', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/9e/78/52/9e7852e3-2a31-c9f7-76e0-e2413389e697/source/370x370bb.jpg', 0, '', '1', 1646914530, 0, 1, '5.0', 0, 0, 1965, '', '', 'https://music.apple.com/us/album/the-end-of-the-world/1444071495?i=1444072018&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:30'),
(1443745864, 'Nothing But You', 'Nothing But You', 'nothing-but-you', 'https://www.last.fm/music/Patty+Duke/_/Nothing+But+You', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music128/v4/23/81/e5/2381e5b5-9efd-7f99-2eeb-91c77d2214ef/source/370x370bb.jpg', 0, '', '1', 1646914532, 0, 1, '5.0', 0, 0, 1966, '', '', 'https://music.apple.com/us/album/nothing-but-you/1443745124?i=1443745864&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:32'),
(298237798, 'Billie', 'Billie', 'billie', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Video/v4/73/83/04/7383042b-ba9e-e154-a05a-231fcaee2b31/source/370x370bb.jpg', 0, '', '1', 1646914534, 0, 1, '5.0', 0, 0, 1965, '', '', 'https://itunes.apple.com/us/movie/billie/id298237798?uo=4', 14.99, '', 'USA', 'USD', 0, '2022-03-10 12:15:34'),
(1448002704, 'Harvest of Fire', 'Harvest of Fire', 'harvest-of-fire', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Video113/v4/8a/56/f6/8a56f6ab-3979-f2b3-8224-6ff87c6fe9ff/pr_source.png/370x370bb.jpg', 0, '', '1', 1646914535, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://itunes.apple.com/us/movie/harvest-of-fire/id1448002704?uo=4', 7.99, '', 'USA', 'USD', 0, '2022-03-10 12:15:35'),
(1526194372, 'Me LevantarÃ© (feat. Danny Rivera, Yolanda Duke, William Duvall, Break Out The Crazy, Diomary La Mala, Melina LeÃ³n, Adalgisa Pantaleon, Patty Rosario, Charlie Mosquea, Marcos Caminero, Samuel Gonzalez, Sophy, Lucrecia, Waddys JÃ¡quez, Kevin Ceballo, Cruz', 'Me LevantarÃ© (feat. Danny Rivera, Yolanda Duke, William Duvall, Break Out The Crazy, Diomary La Mala, Melina LeÃ³n, Adalgisa Pantaleon, Patty Rosario, Charlie Mosquea, Marcos Caminero, Samuel Gonzalez, Sophy, Lucrecia, Waddys JÃ¡quez, Kevin Ceballo, Cruz', 'me-levantar-feat-danny-rivera-yolanda-duke-william-duvall-break-out-the-crazy-diomary-la-mala-melina-le-n-adalgisa-pantaleon-patty-rosario-charlie-mosquea-marcos-caminero-samuel-gonzalez-sophy-lucrecia-waddys-j-quez-kevin-ceballo-cruzmonty-pedro-morales-t', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music124/v4/0b/d1/e9/0bd1e96a-56f7-cdd2-3fe5-04694cc82b90/source/370x370bb.jpg', 0, '', '1', 1646914537, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/me-levantar%C3%A9-feat-danny-rivera-yolanda-duke-william/1526194365?i=1526194372&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:15:37'),
(1444071658, 'Downtown', 'Downtown', 'downtown', 'https://www.last.fm/music/Patty+Duke/_/Downtown', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/9e/78/52/9e7852e3-2a31-c9f7-76e0-e2413389e697/source/370x370bb.jpg', 0, '', '1', 1646914538, 0, 1, '5.0', 0, 0, 1965, '', '', 'https://music.apple.com/us/album/downtown/1444071495?i=1444071658&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:38'),
(1444071767, 'Everything But Love', 'Everything But Love', 'everything-but-love', 'https://www.last.fm/music/Patty+Duke/_/Everything+But+Love', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/9e/78/52/9e7852e3-2a31-c9f7-76e0-e2413389e697/source/370x370bb.jpg', 0, '', '1', 1646914540, 0, 1, '5.0', 0, 0, 1965, '', '', 'https://music.apple.com/us/album/everything-but-love/1444071495?i=1444071767&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:40'),
(1444071669, 'Danke Schoen', 'Danke Schoen', 'danke-schoen', 'https://www.last.fm/music/Patty+Duke/_/Danke+Schoen', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/9e/78/52/9e7852e3-2a31-c9f7-76e0-e2413389e697/source/370x370bb.jpg', 0, '', '1', 1646914542, 0, 1, '5.0', 0, 0, 1965, '', '', 'https://music.apple.com/us/album/danke-schoen/1444071495?i=1444071669&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:15:42'),
(575220433, 'Si Yo Fuera TÃº', 'Si Yo Fuera TÃº', 'si-yo-fuera-t-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914659, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/si-yo-fuera-t%C3%BA/575220205?i=575220433&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:17:39'),
(575220368, 'El Ãltimo BolÃ©ro', 'El Ãltimo BolÃ©ro', 'el-ltimo-bol-ro', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914661, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/el-%C3%BAltimo-bol%C3%A9ro/575220205?i=575220368&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:17:41'),
(575220344, 'EstÃ¡s AhÃ­', 'EstÃ¡s AhÃ­', 'est-s-ah-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914663, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/est%C3%A1s-ah%C3%AD/575220205?i=575220344&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:17:43'),
(575220439, 'Guerra FrÃ­a', 'Guerra FrÃ­a', 'guerra-fr-a', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914665, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/guerra-fr%C3%ADa/575220205?i=575220439&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:17:45'),
(575220434, 'Amores del Pasado', 'Amores del Pasado', 'amores-del-pasado', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Amores+Del+Pasado', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914667, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/amores-del-pasado/575220205?i=575220434&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:17:47'),
(575220441, 'La Cremita (feat. Guaco)', 'La Cremita (feat. Guaco)', 'la-cremita-feat-guaco-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914668, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/la-cremita-feat-guaco/575220205?i=575220441&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:17:48'),
(575220366, 'Derroche', 'Derroche', 'derroche', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Derroche', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914670, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/derroche/575220205?i=575220366&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:17:50'),
(575220435, 'Si Te Vas, Te Vas', 'Si Te Vas, Te Vas', 'si-te-vas-te-vas', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914672, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/si-te-vas-te-vas/575220205?i=575220435&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:17:52'),
(575220364, 'QuiÃ©n Te Va a Querer', 'QuiÃ©n Te Va a Querer', 'qui-n-te-va-a-querer', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914673, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/qui%C3%A9n-te-va-a-querer/575220205?i=575220364&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:17:53'),
(575220436, 'Cuando a Ti Te de la Gana', 'Cuando a Ti Te de la Gana', 'cuando-a-ti-te-de-la-gana', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Cuando+A+Ti+Te+De+La+Gana', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914677, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/cuando-a-ti-te-de-la-gana/575220205?i=575220436&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:17:57'),
(575220429, 'Como Hay Gente en la Calle', 'Como Hay Gente en la Calle', 'como-hay-gente-en-la-calle', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Como+Hay+Gente+En+La+Calle', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914679, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/como-hay-gente-en-la-calle/575220205?i=575220429&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:17:59'),
(575220440, 'DÃ©jala Bailar', 'DÃ©jala Bailar', 'd-jala-bailar', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914680, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/d%C3%A9jala-bailar/575220205?i=575220440&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:00'),
(575220365, 'A Medio CorazÃ³n', 'A Medio CorazÃ³n', 'a-medio-coraz-n', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/24/8c/64/248c6459-926d-1ec8-f228-ca45e275b347/source/370x370bb.jpg', 0, '', '1', 1646914682, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/a-medio-coraz%C3%B3n/575220205?i=575220365&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:02'),
(893420377, 'En la Oscuridad (feat. Gilberto Santa Rosa)', 'En la Oscuridad (feat. Gilberto Santa Rosa)', 'en-la-oscuridad-feat-gilberto-santa-rosa-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music/v4/bb/e2/f1/bbe2f14a-2e80-f13e-056c-abae561e483c/source/370x370bb.jpg', 0, '', '1', 1646914684, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/en-la-oscuridad-feat-gilberto-santa-rosa-versi%C3%B3n-salsa/893420353?i=893420377&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:04'),
(383750064, 'PerdÃ³name', 'PerdÃ³name', 'perd-name', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Perdname', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914686, 0, 1, '5.0', 0, 0, 1990, '', '', 'https://music.apple.com/us/album/perd%C3%B3name/383749881?i=383750064&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:06'),
(383750023, 'Conciencia', 'Conciencia', 'conciencia', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Conciencia', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914688, 0, 1, '5.0', 0, 0, 1991, '', '', 'https://music.apple.com/us/album/conciencia/383749881?i=383750023&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:08'),
(438693932, 'Te Veo Venir Soledad (feat. Gilberto Santa Rosa) [Live]', 'Te Veo Venir Soledad (feat. Gilberto Santa Rosa) [Live]', 'te-veo-venir-soledad-feat-gilberto-santa-rosa-live-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music114/v4/22/a4/ee/22a4ee6f-1831-da2e-5938-d53a173680a7/source/370x370bb.jpg', 0, '', '1', 1646914689, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/te-veo-venir-soledad-feat-gilberto-santa-rosa-live/438693839?i=438693932&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:09'),
(383750142, 'Amor Mio No Te Vayas', 'Amor Mio No Te Vayas', 'amor-mio-no-te-vayas', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Amor+Mio+No+Te+Vayas', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914691, 0, 1, '5.0', 0, 0, 1991, '', '', 'https://music.apple.com/us/album/amor-mio-no-te-vayas/383749881?i=383750142&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:11'),
(383749945, 'Vivir Sin Ella', 'Vivir Sin Ella', 'vivir-sin-ella', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Vivir+Sin+Ella', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914693, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/vivir-sin-ella/383749881?i=383749945&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:13'),
(383750246, 'No Pense Enamorarme Otra Vez', 'No Pense Enamorarme Otra Vez', 'no-pense-enamorarme-otra-vez', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/No+Pense+Enamorarme+Otra+Vez', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914696, 0, 1, '5.0', 0, 0, 1998, '', '', 'https://music.apple.com/us/album/no-pense-enamorarme-otra-vez-bolero/383749881?i=383750246&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:16'),
(383750027, 'Te Propongo', 'Te Propongo', 'te-propongo', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Te+Propongo', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914698, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/te-propongo/383749881?i=383750027&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:18'),
(383750304, 'Dos SoÃ±Ã©ros', 'Dos SoÃ±Ã©ros', 'dos-so-ros', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914700, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/dos-so%C3%B1%C3%A9ros-live-version/383749881?i=383750304&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:20'),
(383749915, 'Que Manera de Quererte', 'Que Manera de Quererte', 'que-manera-de-quererte', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Que+Manera+De+Quererte', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914702, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/que-manera-de-quererte/383749881?i=383749915&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:22'),
(383750108, 'Por Mas Que Intento', 'Por Mas Que Intento', 'por-mas-que-intento', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Por+Mas+Que+Intento', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914704, 0, 1, '5.0', 0, 0, 1998, '', '', 'https://music.apple.com/us/album/por-mas-que-intento-balada/383749881?i=383750108&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:24'),
(383750112, 'Quien Lo Diria', 'Quien Lo Diria', 'quien-lo-diria', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Quien+Lo+Diria', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914705, 0, 1, '5.0', 0, 0, 1998, '', '', 'https://music.apple.com/us/album/quien-lo-diria-live-version/383749881?i=383750112&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:25'),
(383749950, 'Caballo VÃ­ejo', 'Caballo VÃ­ejo', 'caballo-v-ejo', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914707, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/caballo-v%C3%ADejo-live-version/383749881?i=383749950&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:27'),
(383750059, 'Que Alguien Me Diga', 'Que Alguien Me Diga', 'que-alguien-me-diga', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Que+Alguien+Me+Diga', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914709, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://music.apple.com/us/album/que-alguien-me-diga-live-version/383749881?i=383750059&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:29'),
(383750299, 'Dime Porque', 'Dime Porque', 'dime-porque', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Dime+Porque', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914711, 0, 1, '5.0', 0, 0, 1996, '', '', 'https://music.apple.com/us/album/dime-porque-live-version/383749881?i=383750299&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:31'),
(495508297, 'Un Amor para la Historia', 'Un Amor para la Historia', 'un-amor-para-la-historia', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Un+amor+para+la+Historia', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914713, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/un-amor-para-la-historia-bolero-balada/495508054?i=495508297&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:33'),
(383750119, 'Me VolvÃ­eron a Hablar de Ella', 'Me VolvÃ­eron a Hablar de Ella', 'me-volv-eron-a-hablar-de-ella', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2f/9c/e4/2f9ce445-7aab-889c-b224-9efc7ff78587/source/370x370bb.jpg', 0, '', '1', 1646914715, 0, 1, '5.0', 0, 0, 1989, '', '', 'https://music.apple.com/us/album/me-volv%C3%ADeron-a-hablar-de-ella/383749881?i=383750119&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:35'),
(956617631, 'En la Oscuridad (feat. Gilberto Santa Rosa)', 'En la Oscuridad (feat. Gilberto Santa Rosa)', 'en-la-oscuridad-feat-gilberto-santa-rosa-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/64/04/49/640449e8-0a25-df20-b67f-aef6eef94841/source/370x370bb.jpg', 0, '', '1', 1646914717, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/en-la-oscuridad-feat-gilberto-santa-rosa-versi%C3%B3n-salsa/956617619?i=956617631&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:37');
INSERT INTO `tbl_songs` (`id`, `song_title`, `keywords`, `song_seo`, `lastfm_url`, `ad_code`, `video_code`, `picture`, `popularity`, `description`, `song_status`, `posted_date`, `latest_one`, `ranking_order`, `rate_song`, `review_count`, `latest`, `song_year`, `amazon_url`, `google_url`, `itunes_url`, `itunes_price`, `refer_seo`, `country`, `currency`, `timeupdated`, `updated_by_itunes`) VALUES
(721218231, 'Me EquivoquÃ© (feat. Gilberto Santarosa)', 'Me EquivoquÃ© (feat. Gilberto Santarosa)', 'me-equivoqu-feat-gilberto-santarosa-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music123/v4/84/ce/e7/84cee7a4-8356-1eef-d439-0da950df5a93/source/370x370bb.jpg', 0, '', '1', 1646914719, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/me-equivoqu%C3%A9-feat-gilberto-santarosa/721217836?i=721218231&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:39'),
(495508060, 'Que Alguien Me Diga', 'Que Alguien Me Diga', 'que-alguien-me-diga', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Que+Alguien+Me+Diga', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914722, 0, 1, '5.0', 0, 0, 1999, '', '', 'https://music.apple.com/us/album/que-alguien-me-diga-balada/495508054?i=495508060&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:42'),
(1472341879, 'Paso la Vida Pensando (feat. Gilberto Santa Rosa)', 'Paso la Vida Pensando (feat. Gilberto Santa Rosa)', 'paso-la-vida-pensando-feat-gilberto-santa-rosa-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/c6/d9/75/c6d97598-ce31-4af7-9b7a-1688203d3376/source/370x370bb.jpg', 0, '', '1', 1646914724, 0, 1, '5.0', 0, 0, 2014, '', '', 'https://music.apple.com/us/album/paso-la-vida-pensando-feat-gilberto-santa-rosa/1472341875?i=1472341879&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:18:44'),
(578051326, 'Te Veo Venir Soledad (feat. Gilberto Santa Rosa)', 'Te Veo Venir Soledad (feat. Gilberto Santa Rosa)', 'te-veo-venir-soledad-feat-gilberto-santa-rosa-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/9c/93/4e/9c934e4a-beaf-ae4b-2b6b-654eb76d109f/source/370x370bb.jpg', 0, '', '1', 1646914727, 0, 1, '5.0', 0, 0, 2011, '', '', 'https://music.apple.com/us/album/te-veo-venir-soledad-feat-gilberto-santa-rosa-live/578051190?i=578051326&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:47'),
(1358755132, 'Salsa Pa\\&#39; Olvidar las Penas (feat. Gilberto Santa Rosa)', 'Salsa Pa\\&#39; Olvidar las Penas (feat. Gilberto Santa Rosa)', 'salsa-pa-olvidar-las-penas-feat-gilberto-santa-rosa-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music115/v4/c0/74/3a/c0743a2e-2687-e5d8-5609-a1c099b604b4/source/370x370bb.jpg', 0, '', '1', 1646914728, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/salsa-pa-olvidar-las-penas-feat-gilberto-santa-rosa/1358755128?i=1358755132&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:48'),
(495508303, 'No PensÃ© Enamorarme Otra Vez', 'No PensÃ© Enamorarme Otra Vez', 'no-pens-enamorarme-otra-vez', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/No+pens+enamorarme+otra+vez', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914730, 0, 1, '5.0', 0, 0, 1998, '', '', 'https://music.apple.com/us/album/no-pens%C3%A9-enamorarme-otra-vez-bolero/495508054?i=495508303&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:50'),
(495508066, 'Pueden Decir', 'Pueden Decir', 'pueden-decir', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Pueden+Decir', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914732, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/pueden-decir-balada/495508054?i=495508066&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:52'),
(495508299, 'Como He Podido Estar Sin Ti', 'Como He Podido Estar Sin Ti', 'como-he-podido-estar-sin-ti', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Como+He+Podido+Estar+Sin+Ti', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914734, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/como-he-podido-estar-sin-ti-balada/495508054?i=495508299&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:54'),
(495508237, 'Por Mas Que Intento', 'Por Mas Que Intento', 'por-mas-que-intento', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Por+Mas+Que+Intento', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914736, 0, 1, '5.0', 0, 0, 1998, '', '', 'https://music.apple.com/us/album/por-mas-que-intento-balada/495508054?i=495508237&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:18:56'),
(21478913, 'El Apartamento (feat. Gilberto Santa Rosa)', 'El Apartamento (feat. Gilberto Santa Rosa)', 'el-apartamento-feat-gilberto-santa-rosa-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music/v4/4f/09/f6/4f09f653-86dd-728f-384c-b624df92e332/source/370x370bb.jpg', 0, '', '1', 1646914738, 0, 1, '5.0', 0, 0, 2000, '', '', 'https://music.apple.com/us/album/el-apartamento-feat-gilberto-santa-rosa/21478955?i=21478913&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:18:58'),
(495508301, 'SerÃ¡', 'SerÃ¡', 'ser-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914740, 0, 1, '5.0', 0, 0, 2003, '', '', 'https://music.apple.com/us/album/ser%C3%A1-balada/495508054?i=495508301&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:19:00'),
(495508064, 'En la Oscuridad', 'En la Oscuridad', 'en-la-oscuridad', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/En+La+Oscuridad', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914742, 0, 1, '5.0', 0, 0, 1992, '', '', 'https://music.apple.com/us/album/en-la-oscuridad/495508054?i=495508064&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:19:02'),
(1443653795, 'Eramos NiÃ±os (feat. Tito \\&#34;El Bambino\\&#34; & Gilberto Santa Rosa)', 'Eramos NiÃ±os (feat. Tito \\&#34;El Bambino\\&#34; & Gilberto Santa Rosa)', 'eramos-ni-os-feat-tito-el-bambino-gilberto-santa-rosa-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music125/v4/1f/63/2f/1f632f06-603f-d0e8-217d-8dea6a2e7e55/source/370x370bb.jpg', 0, '', '1', 1646914744, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/eramos-ni%C3%B1os-feat-tito-el-bambino-gilberto-santa-rosa/1443653215?i=1443653795&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:19:04'),
(495508058, 'Tiemblas', 'Tiemblas', 'tiemblas', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Tiemblas', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914746, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/tiemblas/495508054?i=495508058&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:19:06'),
(495508300, 'En La SolÃ©dad', 'En La SolÃ©dad', 'en-la-sol-dad', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914747, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/en-la-sol%C3%A9dad/495508054?i=495508300&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:19:07'),
(495508062, 'Hablando Claro', 'Hablando Claro', 'hablando-claro', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/Hablando+claro', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914749, 0, 1, '5.0', 0, 0, 2006, '', '', 'https://music.apple.com/us/album/hablando-claro-balada-version/495508054?i=495508062&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:19:09'),
(495508068, 'Amiga MÃ­a', 'Amiga MÃ­a', 'amiga-m-a', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914751, 0, 1, '5.0', 0, 0, 1998, '', '', 'https://music.apple.com/us/album/amiga-m%C3%ADa/495508054?i=495508068&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:19:11'),
(495508298, 'A la Distancia de un Te Quiero', 'A la Distancia de un Te Quiero', 'a-la-distancia-de-un-te-quiero', 'https://www.last.fm/music/Gilberto+Santa+Rosa/_/A+La+Distancia+De+Un+Te+Quiero', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/2b/97/37/2b973764-35cf-4e38-c83b-0433327b255a/source/370x370bb.jpg', 0, '', '1', 1646914753, 0, 1, '5.0', 0, 0, 2001, '', '', 'https://music.apple.com/us/album/a-la-distancia-de-un-te-quiero/495508054?i=495508298&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:19:13'),
(1545427049, 'El Que Siempre SonÌoÌ (feat. Gilberto Santarosa)', 'El Que Siempre SonÌoÌ (feat. Gilberto Santarosa)', 'el-que-siempre-son-o-feat-gilberto-santarosa-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music114/v4/9e/af/a9/9eafa94c-af78-a672-d76f-710cd8f8153a/source/370x370bb.jpg', 0, '', '1', 1646914755, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/el-que-siempre-son-o-feat-gilberto-santarosa/1545426732?i=1545427049&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:19:15'),
(1392900449, 'Incredibles 2', 'Incredibles 2', 'incredibles-2', 'https://www.last.fm/music/Brad+Bird/_/Incredibles+2', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Video113/v4/08/77/ba/0877ba2c-9a63-3835-9f03-cd6918178a0f/pr_source.lsr/370x370bb.jpg', 0, '', '1', 1646914844, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://itunes.apple.com/us/movie/incredibles-2/id1392900449?uo=4', 9.99, '', 'USA', 'USD', 0, '2022-03-10 12:20:44'),
(279598771, 'The Devil\\&#39;s Advocate', 'The Devil\\&#39;s Advocate', 'the-devil-s-advocate', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Video/v4/22/f8/71/22f871d4-9b42-aad6-ebb6-d69418b424e1/source/370x370bb.jpg', 0, '', '1', 1646914846, 0, 1, '5.0', 0, 0, 1998, '', '', 'https://itunes.apple.com/us/movie/the-devils-advocate/id279598771?uo=4', 12.99, '', 'USA', 'USD', 0, '2022-03-10 12:20:46'),
(635516747, 'Worshiper In Me (feat. Jonathan Nelson)', 'Worshiper In Me (feat. Jonathan Nelson)', 'worshiper-in-me-feat-jonathan-nelson-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music2/v4/fb/4b/17/fb4b1733-c9c8-8e52-fbe2-5e8064d7b450/source/370x370bb.jpg', 0, '', '1', 1646914848, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/worshiper-in-me-feat-jonathan-nelson-live/635516729?i=635516747&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:20:48'),
(635516917, 'Worshiper In Me (feat. Jonathan Nelson)', 'Worshiper In Me (feat. Jonathan Nelson)', 'worshiper-in-me-feat-jonathan-nelson-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music/v4/7e/d0/df/7ed0df3f-5cd0-7047-f272-7b1ce11e1ca4/source/370x370bb.jpg', 0, '', '1', 1646914850, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/worshiper-in-me-feat-jonathan-nelson-live/635516772?i=635516917&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:20:50'),
(296577996, 'An All Dogs Christmas Carol', 'An All Dogs Christmas Carol', 'an-all-dogs-christmas-carol', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Video71/v4/bd/ae/23/bdae2323-f3d8-2a18-4c00-9c08215bbb28/source/370x370bb.jpg', 0, '', '1', 1646914852, 0, 1, '5.0', 0, 0, 1998, '', '', 'https://itunes.apple.com/us/movie/an-all-dogs-christmas-carol/id296577996?uo=4', 14.99, '', 'USA', 'USD', 0, '2022-03-10 12:20:52'),
(641301975, 'My Name Is Victory', 'My Name Is Victory', 'my-name-is-victory', 'https://www.last.fm/music/Jonathan+Nelson/_/My+Name+Is+Victory', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/8c/5d/a1/8c5da1c3-43c9-defe-1d95-1a18f7e3b883/source/370x370bb.jpg', 0, '', '1', 1646914853, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/my-name-is-victory/641301970?i=641301975&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:20:53'),
(641301985, 'How Great Is Our God', 'How Great Is Our God', 'how-great-is-our-god', 'https://www.last.fm/music/Jonathan+Nelson/_/How+Great+Is+Our+God', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/8c/5d/a1/8c5da1c3-43c9-defe-1d95-1a18f7e3b883/source/370x370bb.jpg', 0, '', '1', 1646914855, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/how-great-is-our-god/641301970?i=641301985&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:20:55'),
(635516771, 'Worshiper In Me (Radio Edit) [feat. Jonathan Nelson]', 'Worshiper In Me (Radio Edit) [feat. Jonathan Nelson]', 'worshiper-in-me-radio-edit-feat-jonathan-nelson-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music2/v4/fb/4b/17/fb4b1733-c9c8-8e52-fbe2-5e8064d7b450/source/370x370bb.jpg', 0, '', '1', 1646914857, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/worshiper-in-me-radio-edit-feat-jonathan-nelson-live/635516729?i=635516771&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:20:57'),
(885867125, 'Great Is Our God (feat. Jonathan Nelson, Myron Butler & De Wayne Woods)', 'Great Is Our God (feat. Jonathan Nelson, Myron Butler & De Wayne Woods)', 'great-is-our-god-feat-jonathan-nelson-myron-butler-de-wayne-woods-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music114/v4/d8/44/91/d844914b-5c7b-7b55-79b6-9e1ca20bbae3/source/370x370bb.jpg', 0, '', '1', 1646914859, 0, 1, '5.0', 0, 0, 2009, '', '', 'https://music.apple.com/us/album/great-is-our-god-feat-jonathan-nelson-myron-butler/885867060?i=885867125&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:20:59'),
(1369305015, 'Faith for That (feat. Jonathan Nelson)', 'Faith for That (feat. Jonathan Nelson)', 'faith-for-that-feat-jonathan-nelson-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music125/v4/43/4d/75/434d7550-9464-1086-22e0-2fdee3d72ade/source/370x370bb.jpg', 0, '', '1', 1646914860, 0, 1, '5.0', 0, 0, 2018, '', '', 'https://music.apple.com/us/album/faith-for-that-feat-jonathan-nelson/1369304814?i=1369305015&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:00'),
(1443857977, 'Finish Strong (Strong Finish) [feat. Purpose]', 'Finish Strong (Strong Finish) [feat. Purpose]', 'finish-strong-strong-finish-feat-purpose-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/a7/e5/58/a7e55880-7b2f-aac6-4448-70e512cfdf69/source/370x370bb.jpg', 0, '', '1', 1646914863, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/finish-strong-strong-finish-feat-purpose/1443857963?i=1443857977&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:03'),
(572198240, 'Wait (Reprise) [feat. Jonathan Nelson]', 'Wait (Reprise) [feat. Jonathan Nelson]', 'wait-reprise-feat-jonathan-nelson-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music114/v4/b6/16/37/b61637dd-49d5-717a-1f20-4c652f9f5b63/source/370x370bb.jpg', 0, '', '1', 1646914865, 0, 1, '5.0', 0, 0, 2012, '', '', 'https://music.apple.com/us/album/wait-reprise-feat-jonathan-nelson/572198190?i=572198240&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:21:05'),
(1080795039, 'Jesus Chant (feat. Jason Nelson)', 'Jesus Chant (feat. Jason Nelson)', 'jesus-chant-feat-jason-nelson-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/c0/eb/d8/c0ebd83c-5de4-c967-b5eb-c5dd188dcdac/source/370x370bb.jpg', 0, '', '1', 1646914867, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/jesus-chant-feat-jason-nelson/1080794834?i=1080795039&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:07'),
(1443859080, 'Free (feat. Purpose & Jade Milan Nelson)', 'Free (feat. Purpose & Jade Milan Nelson)', 'free-feat-purpose-jade-milan-nelson-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music128/v4/a7/e5/58/a7e55880-7b2f-aac6-4448-70e512cfdf69/source/370x370bb.jpg', 0, '', '1', 1646914868, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/free-feat-purpose-jade-milan-nelson/1443857963?i=1443859080&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:08'),
(1080795035, 'Amazing Love (feat. Jade Nelson)', 'Amazing Love (feat. Jade Nelson)', 'amazing-love-feat-jade-nelson-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/c0/eb/d8/c0ebd83c-5de4-c967-b5eb-c5dd188dcdac/source/370x370bb.jpg', 0, '', '1', 1646914870, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/amazing-love-feat-jade-nelson/1080794834?i=1080795035&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:10'),
(715764460, 'The Dukes of Hazzard: The Beginning (Unrated)', 'The Dukes of Hazzard: The Beginning (Unrated)', 'the-dukes-of-hazzard-the-beginning-unrated-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Video3/v4/e5/81/de/e581de3e-9cda-a43c-ff02-3b075f49a061/source/370x370bb.jpg', 0, '', '1', 1646914872, 0, 1, '5.0', 0, 0, 2007, '', '', 'https://itunes.apple.com/us/movie/the-dukes-of-hazzard-the-beginning-unrated/id715764460?uo=4', 9.99, '', 'USA', 'USD', 0, '2022-03-10 12:21:12'),
(626635471, 'Expect the Great', 'Expect the Great', 'expect-the-great', 'https://www.last.fm/music/Jonathan+Nelson/_/Expect+the+Great', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/84/fc/11/84fc118e-e5b3-c3d8-8788-e186e0901e87/source/370x370bb.jpg', 0, '', '1', 1646914873, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/expect-the-great/626635233?i=626635471&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:13'),
(1080795034, 'I Believe (Island Medley) [So Long Bye Bye]', 'I Believe (Island Medley) [So Long Bye Bye]', 'i-believe-island-medley-so-long-bye-bye-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/c0/eb/d8/c0ebd83c-5de4-c967-b5eb-c5dd188dcdac/source/370x370bb.jpg', 0, '', '1', 1646914875, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/i-believe-island-medley-so-long-bye-bye/1080794834?i=1080795034&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:15'),
(626635472, 'Called to Be', 'Called to Be', 'called-to-be', 'https://www.last.fm/music/Jonathan+Nelson/_/Called+to+Be', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/84/fc/11/84fc118e-e5b3-c3d8-8788-e186e0901e87/source/370x370bb.jpg', 0, '', '1', 1646914877, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/called-to-be/626635233?i=626635472&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:17'),
(641301977, 'Right Now Praise', 'Right Now Praise', 'right-now-praise', 'https://www.last.fm/music/Jonathan+Nelson/_/Right+Now+Praise', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/8c/5d/a1/8c5da1c3-43c9-defe-1d95-1a18f7e3b883/source/370x370bb.jpg', 0, '', '1', 1646914879, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/right-now-praise/641301970?i=641301977&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:19'),
(641301981, 'Fill My Cup Lord I Need Thee Every Hour', 'Fill My Cup Lord I Need Thee Every Hour', 'fill-my-cup-lord-i-need-thee-every-hour', 'https://www.last.fm/music/Jonathan+Nelson/_/Fill+My+Cup+Lord+I+Need+Thee+Every+Hour', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/8c/5d/a1/8c5da1c3-43c9-defe-1d95-1a18f7e3b883/source/370x370bb.jpg', 0, '', '1', 1646914881, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/fill-my-cup-lord-i-need-thee-every-hour-medley/641301970?i=641301981&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:21'),
(635516774, 'Worshiper In Me (feat. Jonathan Nelson)', 'Worshiper In Me (feat. Jonathan Nelson)', 'worshiper-in-me-feat-jonathan-nelson-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Video2/v4/cf/47/24/cf47242f-6458-5702-3e81-fa5c6da080b5/source/370x370bb.jpg', 0, '', '1', 1646914882, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/music-video/worshiper-in-me-feat-jonathan-nelson-live/635516774?uo=4', 1.99, '', 'USA', 'USD', 0, '2022-03-10 12:21:22'),
(626635469, 'Draw Me Nearer/ Agnus Dei/ Smile', 'Draw Me Nearer/ Agnus Dei/ Smile', 'draw-me-nearer-agnus-dei-smile', 'https://www.last.fm/music/Jonathan+Nelson/_/draw+me+nearer+agnus+dei+smile', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/84/fc/11/84fc118e-e5b3-c3d8-8788-e186e0901e87/source/370x370bb.jpg', 0, '', '1', 1646914884, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/draw-me-nearer-agnus-dei-smile/626635233?i=626635469&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:24'),
(1022630811, 'Jesus My Rock (Radio Edit) [feat. Pamela Westbrook & Jonathan Nelson]', 'Jesus My Rock (Radio Edit) [feat. Pamela Westbrook & Jonathan Nelson]', 'jesus-my-rock-radio-edit-feat-pamela-westbrook-jonathan-nelson-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music2/v4/7f/f3/93/7ff393a3-dc3f-26be-fcd5-559a64c63afe/source/370x370bb.jpg', 0, '', '1', 1646914886, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/jesus-my-rock-radio-edit-feat-pamela-westbrook-jonathan/1022630573?i=1022630811&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:21:26'),
(1526626742, 'The Standard', 'The Standard', 'the-standard', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Video124/v4/73/a4/6a/73a46ace-be57-5671-c932-eea8fad2598b/source/370x370bb.jpg', 0, '', '1', 1646914887, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://itunes.apple.com/us/movie/the-standard/id1526626742?uo=4', 9.99, '', 'USA', 'USD', 0, '2022-03-10 12:21:27'),
(1437879587, 'The Dukes of Hazzard (Unrated)', 'The Dukes of Hazzard (Unrated)', 'the-dukes-of-hazzard-unrated-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Video128/v4/b4/15/06/b41506e1-4fa3-b5ee-4ad5-32d0bb22c003/source/370x370bb.jpg', 0, '', '1', 1646914889, 0, 1, '5.0', 0, 0, 2005, '', '', 'https://itunes.apple.com/us/movie/the-dukes-of-hazzard-unrated/id1437879587?uo=4', 12.99, '', 'USA', 'USD', 0, '2022-03-10 12:21:29'),
(1533827139, 'Expect the Great (feat. Purpose)', 'Expect the Great (feat. Purpose)', 'expect-the-great-feat-purpose-', '', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music126/v4/bf/ac/7e/bfac7e8f-1faa-a441-8e41-3e9d0b772b89/source/370x370bb.jpg', 0, '', '1', 1646914890, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/expect-the-great-feat-purpose/1533827136?i=1533827139&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:30'),
(796521878, 'Finish Strong', 'Finish Strong', 'finish-strong', 'https://www.last.fm/music/Jonathan+Nelson/_/Finish+Strong', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music4/v4/56/e7/2a/56e72a89-33b5-fde4-be51-5a3f09366bb2/source/370x370bb.jpg', 0, '', '1', 1646914892, 0, 1, '5.0', 0, 0, 2013, '', '', 'https://music.apple.com/us/album/finish-strong/796521856?i=796521878&uo=4', -1, '', 'USA', 'USD', 0, '2022-03-10 12:21:32'),
(626635467, 'I Am Your Song', 'I Am Your Song', 'i-am-your-song', 'https://www.last.fm/music/Jonathan+Nelson/_/I+Am+Your+Song', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/84/fc/11/84fc118e-e5b3-c3d8-8788-e186e0901e87/source/370x370bb.jpg', 0, '', '1', 1646914894, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/i-am-your-song/626635233?i=626635467&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:34'),
(1080795026, 'Anything Can Happen', 'Anything Can Happen', 'anything-can-happen', 'https://www.last.fm/music/Jonathan+Nelson/_/Anything+Can+Happen', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/c0/eb/d8/c0ebd83c-5de4-c967-b5eb-c5dd188dcdac/source/370x370bb.jpg', 0, '', '1', 1646914895, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/anything-can-happen/1080794834?i=1080795026&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:35'),
(1521621354, 'City of God (Live) [feat. Jonathan Nelson]', 'City of God (Live) [feat. Jonathan Nelson]', 'city-of-god-live-feat-jonathan-nelson-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/d5/6c/e2/d56ce228-f89a-027d-27cb-42d2d8d6799a/source/370x370bb.jpg', 0, '', '1', 1646914897, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/city-of-god-live-feat-jonathan-nelson/1521621336?i=1521621354&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:21:37'),
(1521621362, 'City of God Reprise (Live) [feat. Jonathan Nelson]', 'City of God Reprise (Live) [feat. Jonathan Nelson]', 'city-of-god-reprise-live-feat-jonathan-nelson-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/d5/6c/e2/d56ce228-f89a-027d-27cb-42d2d8d6799a/source/370x370bb.jpg', 0, '', '1', 1646914899, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/city-of-god-reprise-live-feat-jonathan-nelson/1521621336?i=1521621362&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:21:39'),
(1470690037, 'Fire Prayer (feat. Jonathan Nelson & STEMS)', 'Fire Prayer (feat. Jonathan Nelson & STEMS)', 'fire-prayer-feat-jonathan-nelson-stems-', '', '', '', 'https://is1-ssl.mzstatic.com/image/thumb/Music124/v4/97/5a/e8/975ae8fb-2ba1-bf35-078b-33fccf393a87/source/370x370bb.jpg', 0, '', '1', 1646914901, 0, 1, '5.0', 0, 0, 2019, '', '', 'https://music.apple.com/us/album/fire-prayer-feat-jonathan-nelson-stems/1470690034?i=1470690037&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:41'),
(1516873255, 'I Need You (feat. John P. Kee, Todd Dulaney, Tank, Jonathan McReynolds, Jacquees, Travis Greene, Ginuwine, Byron Cage, Montell Jordan, Raheem DeVaughn, Jason Nelson, Major, PJ Morton, Musiq Soulchild, Brian Courtney Wilson, Bobby V & Eric Dawkins)', 'I Need You (feat. John P. Kee, Todd Dulaney, Tank, Jonathan McReynolds, Jacquees, Travis Greene, Ginuwine, Byron Cage, Montell Jordan, Raheem DeVaughn, Jason Nelson, Major, PJ Morton, Musiq Soulchild, Brian Courtney Wilson, Bobby V & Eric Dawkins)', 'i-need-you-feat-john-p-kee-todd-dulaney-tank-jonathan-mcreynolds-jacquees-travis-greene-ginuwine-byron-cage-montell-jordan-raheem-devaughn-jason-nelson-major-pj-morton-musiq-soulchild-brian-courtney-wilson-bobby-v-eric-dawkins-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music113/v4/4a/4c/31/4a4c3124-3113-0773-bd56-1144da9db135/source/370x370bb.jpg', 0, '', '1', 1646914903, 0, 1, '5.0', 0, 0, 2020, '', '', 'https://music.apple.com/us/album/i-need-you-feat-john-p-kee-todd-dulaney-tank-jonathan/1516873253?i=1516873255&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:43'),
(641301988, 'Healed', 'Healed', 'healed', 'https://www.last.fm/music/Jonathan+Nelson/_/Healed', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/8c/5d/a1/8c5da1c3-43c9-defe-1d95-1a18f7e3b883/source/370x370bb.jpg', 0, '', '1', 1646914905, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/healed-bonus-track/641301970?i=641301988&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:45'),
(641301983, 'Only You', 'Only You', 'only-you', 'https://www.last.fm/music/Jonathan+Nelson/_/Only+You', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/8c/5d/a1/8c5da1c3-43c9-defe-1d95-1a18f7e3b883/source/370x370bb.jpg', 0, '', '1', 1646914907, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/only-you/641301970?i=641301983&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:47'),
(1080795040, 'I Give You Glory (feat. Tye Tribbett)', 'I Give You Glory (feat. Tye Tribbett)', 'i-give-you-glory-feat-tye-tribbett-', '', '', '', 'https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/c0/eb/d8/c0ebd83c-5de4-c967-b5eb-c5dd188dcdac/source/370x370bb.jpg', 0, '', '1', 1646914909, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/i-give-you-glory-feat-tye-tribbett/1080794834?i=1080795040&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:49'),
(1160005122, 'Baba (Live) [feat. Jonathan Nelson]', 'Baba (Live) [feat. Jonathan Nelson]', 'baba-live-feat-jonathan-nelson-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music71/v4/2e/98/9e/2e989e89-9ec2-3bb1-c703-213b610a03de/source/370x370bb.jpg', 0, '', '1', 1646914911, 0, 1, '5.0', 0, 0, 2016, '', '', 'https://music.apple.com/us/album/baba-live-feat-jonathan-nelson/1160004980?i=1160005122&uo=4', -1, '', 'USA', 'USD', 0, '2022-03-10 12:21:51'),
(641301978, 'Bettah', 'Bettah', 'bettah', 'https://www.last.fm/music/Jonathan+Nelson/_/Bettah', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/8c/5d/a1/8c5da1c3-43c9-defe-1d95-1a18f7e3b883/source/370x370bb.jpg', 0, '', '1', 1646914912, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/bettah/641301970?i=641301978&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:52'),
(641301986, 'Great and Mighty', 'Great and Mighty', 'great-and-mighty', 'https://www.last.fm/music/Jonathan+Nelson/_/Great+And+Mighty', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/8c/5d/a1/8c5da1c3-43c9-defe-1d95-1a18f7e3b883/source/370x370bb.jpg', 0, '', '1', 1646914914, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/great-and-mighty/641301970?i=641301986&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:54'),
(1022631062, 'The Fight Is Over (feat. Jonathan Nelson)', 'The Fight Is Over (feat. Jonathan Nelson)', 'the-fight-is-over-feat-jonathan-nelson-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music2/v4/7f/f3/93/7ff393a3-dc3f-26be-fcd5-559a64c63afe/source/370x370bb.jpg', 0, '', '1', 1646914916, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/the-fight-is-over-feat-jonathan-nelson/1022630573?i=1022631062&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:21:56'),
(626635466, 'Praise Saved My Life', 'Praise Saved My Life', 'praise-saved-my-life', 'https://www.last.fm/music/Jonathan+Nelson/_/Praise+Saved+My+Life', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/84/fc/11/84fc118e-e5b3-c3d8-8788-e186e0901e87/source/370x370bb.jpg', 0, '', '1', 1646914918, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/praise-saved-my-life/626635233?i=626635466&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:21:58'),
(626635470, 'Another Way', 'Another Way', 'another-way', 'https://www.last.fm/music/Jonathan+Nelson/_/Another+Way', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/84/fc/11/84fc118e-e5b3-c3d8-8788-e186e0901e87/source/370x370bb.jpg', 0, '', '1', 1646914920, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/another-way/626635233?i=626635470&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:22:00'),
(1022630808, 'We Win (feat. Jonathan Nelson)', 'We Win (feat. Jonathan Nelson)', 'we-win-feat-jonathan-nelson-', '', '', '', 'https://is2-ssl.mzstatic.com/image/thumb/Music2/v4/7f/f3/93/7ff393a3-dc3f-26be-fcd5-559a64c63afe/source/370x370bb.jpg', 0, '', '1', 1646914921, 0, 1, '5.0', 0, 0, 2015, '', '', 'https://music.apple.com/us/album/we-win-feat-jonathan-nelson/1022630573?i=1022630808&uo=4', 0.99, '', 'USA', 'USD', 0, '2022-03-10 12:22:01'),
(626635464, 'Better Days', 'Better Days', 'better-days', 'https://www.last.fm/music/Jonathan+Nelson/_/Better+Days', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/84/fc/11/84fc118e-e5b3-c3d8-8788-e186e0901e87/source/370x370bb.jpg', 0, '', '1', 1646914923, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/better-days/626635233?i=626635464&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:22:03'),
(626635465, 'Cry Holy', 'Cry Holy', 'cry-holy', 'https://www.last.fm/music/Jonathan+Nelson/_/Cry+Holy', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/84/fc/11/84fc118e-e5b3-c3d8-8788-e186e0901e87/source/370x370bb.jpg', 0, '', '1', 1646914925, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/cry-holy/626635233?i=626635465&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:22:05'),
(641301974, 'Champions', 'Champions', 'champions', 'https://www.last.fm/music/Jonathan+Nelson/_/Champions', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/8c/5d/a1/8c5da1c3-43c9-defe-1d95-1a18f7e3b883/source/370x370bb.jpg', 0, '', '1', 1646914927, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/champions/641301970?i=641301974&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:22:07'),
(641301982, 'Capacity (Breathe)', 'Capacity (Breathe)', 'capacity-breathe-', '', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/8c/5d/a1/8c5da1c3-43c9-defe-1d95-1a18f7e3b883/source/370x370bb.jpg', 0, '', '1', 1646914929, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/capacity-breathe/641301970?i=641301982&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:22:09'),
(641301980, 'Yes Out There', 'Yes Out There', 'yes-out-there', 'https://www.last.fm/music/Jonathan+Nelson/_/Yes+Out+There', '', '', 'https://is4-ssl.mzstatic.com/image/thumb/Music2/v4/8c/5d/a1/8c5da1c3-43c9-defe-1d95-1a18f7e3b883/source/370x370bb.jpg', 0, '', '1', 1646914932, 0, 1, '5.0', 0, 0, 2008, '', '', 'https://music.apple.com/us/album/yes-out-there/641301970?i=641301980&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:22:12'),
(626635473, 'Performance', 'Performance', 'performance', 'https://www.last.fm/music/Jonathan+Nelson/_/Performance', '', '', 'https://is5-ssl.mzstatic.com/image/thumb/Music124/v4/84/fc/11/84fc118e-e5b3-c3d8-8788-e186e0901e87/source/370x370bb.jpg', 0, '', '1', 1646914934, 0, 1, '5.0', 0, 0, 2010, '', '', 'https://music.apple.com/us/album/performance/626635233?i=626635473&uo=4', 1.29, '', 'USA', 'USD', 0, '2022-03-10 12:22:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_songs_artist`
--

CREATE TABLE `tbl_songs_artist` (
  `id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `posted_date` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `display_status` int(11) NOT NULL,
  `cron_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_songs_artist`
--

INSERT INTO `tbl_songs_artist` (`id`, `song_id`, `artist_id`, `posted_date`, `status`, `display_status`, `cron_status`) VALUES
(1, 587008166, 18200208, 1638594507, 1, 1, 0),
(2, 587008157, 18200208, 1638594508, 1, 1, 0),
(3, 587008160, 18200208, 1638594510, 1, 1, 0),
(4, 587008162, 18200208, 1638594511, 1, 1, 0),
(5, 587008151, 18200208, 1638594513, 1, 1, 0),
(6, 587008167, 18200208, 1638594515, 1, 1, 0),
(7, 587008158, 18200208, 1638594516, 1, 1, 0),
(8, 587008159, 18200208, 1638594518, 1, 1, 0),
(9, 587008161, 18200208, 1638594520, 1, 1, 0),
(10, 587008149, 18200208, 1638594521, 1, 1, 0),
(11, 587008165, 18200208, 1638594523, 1, 1, 0),
(12, 587008169, 18200208, 1638594525, 1, 1, 0),
(13, 587008153, 18200208, 1638594527, 1, 1, 0),
(14, 587008008, 18200208, 1638594528, 1, 1, 0),
(15, 587008168, 18200208, 1638594530, 1, 1, 0),
(16, 587008152, 18200208, 1638594532, 1, 1, 0),
(17, 587008164, 18200208, 1638594534, 1, 1, 0),
(18, 587008170, 18200208, 1638594536, 1, 1, 0),
(19, 587008154, 18200208, 1638594539, 1, 1, 0),
(20, 587008163, 18200208, 1638594541, 1, 1, 0),
(21, 587008155, 18200208, 1638594543, 1, 1, 0),
(22, 587008171, 18200208, 1638594544, 1, 1, 0),
(23, 587008150, 18200208, 1638594546, 1, 1, 0),
(24, 1404474308, 18200208, 1638594548, 1, 1, 0),
(25, 1404475192, 18200208, 1638594550, 1, 1, 0),
(26, 645888558, 26365705, 1638594552, 1, 1, 0),
(27, 645888557, 26365705, 1638594553, 1, 1, 0),
(28, 579455444, 18200208, 1638594555, 1, 1, 0),
(29, 645888556, 26365705, 1638594557, 1, 1, 0),
(30, 645888551, 26365705, 1638594559, 1, 1, 0),
(31, 569402537, 18200208, 1638594560, 1, 1, 0),
(32, 324216398, 323820642, 1638594563, 1, 1, 0),
(33, 1404486186, 18200208, 1638594565, 1, 1, 0),
(34, 579455431, 18200208, 1638594567, 1, 1, 0),
(35, 596330906, 62743472, 1638594569, 1, 1, 0),
(36, 569402544, 18200208, 1638594570, 1, 1, 0),
(37, 569402800, 18200208, 1638594572, 1, 1, 0),
(38, 579455448, 18200208, 1638594574, 1, 1, 0),
(39, 579455438, 18200208, 1638594576, 1, 1, 0),
(40, 569402792, 18200208, 1638594577, 1, 1, 0),
(41, 569402536, 18200208, 1638594579, 1, 1, 0),
(42, 569402794, 18200208, 1638594581, 1, 1, 0),
(43, 1459462576, 566009830, 1638594653, 1, 1, 0),
(44, 1150633286, 1379012280, 1638594655, 1, 1, 0),
(45, 1564102921, 725077219, 1638594656, 1, 1, 0),
(46, 205597604, 205597208, 1638594658, 1, 1, 0),
(47, 908629959, 205597208, 1638594660, 1, 1, 0),
(48, 205597311, 205597208, 1638594662, 1, 1, 0),
(49, 205598245, 205597208, 1638594663, 1, 1, 0),
(50, 205597745, 205597208, 1638594665, 1, 1, 0),
(51, 908629966, 205597208, 1638594667, 1, 1, 0),
(52, 205598191, 205597208, 1638594668, 1, 1, 0),
(53, 205598254, 205597208, 1638594670, 1, 1, 0),
(54, 205597253, 205597208, 1638594671, 1, 1, 0),
(55, 908629960, 205597208, 1638594675, 1, 1, 0),
(56, 205597268, 205597208, 1638594676, 1, 1, 0),
(57, 908629953, 205597208, 1638594678, 1, 1, 0),
(58, 205597664, 205597208, 1638594680, 1, 1, 0),
(59, 908629951, 205597208, 1638594681, 1, 1, 0),
(60, 908629954, 205597208, 1638594683, 1, 1, 0),
(61, 908629965, 205597208, 1638594686, 1, 1, 0),
(62, 908629952, 205597208, 1638594688, 1, 1, 0),
(63, 205597487, 205597208, 1638594690, 1, 1, 0),
(64, 908629950, 205597208, 1638594692, 1, 1, 0),
(65, 205598275, 205597208, 1638594694, 1, 1, 0),
(66, 908629961, 205597208, 1638594695, 1, 1, 0),
(67, 908629957, 205597208, 1638594696, 1, 1, 0),
(68, 205597210, 205597208, 1638594699, 1, 1, 0),
(69, 205597302, 205597208, 1638594701, 1, 1, 0),
(70, 908629958, 205597208, 1638594703, 1, 1, 0),
(71, 908629962, 205597208, 1638594704, 1, 1, 0),
(72, 1390486718, 430626563, 1638594923, 1, 1, 0),
(73, 1592335749, 1189937543, 1638594925, 1, 1, 0),
(74, 1574206886, 455576259, 1638594927, 1, 1, 0),
(75, 1501004034, 1498392450, 1638594929, 1, 1, 0),
(76, 1596494449, 1565970076, 1638594931, 1, 1, 0),
(77, 916843364, 41729021, 1638594933, 1, 1, 0),
(78, 421129752, 125369309, 1638594935, 1, 1, 0),
(79, 1513025969, 593452546, 1638594937, 1, 1, 0),
(80, 1250823923, 575910990, 1638594938, 1, 1, 0),
(81, 1086699043, 125369309, 1638594940, 1, 1, 0),
(82, 1512822867, 593452546, 1638594942, 1, 1, 0),
(83, 294826995, 125369309, 1638594945, 1, 1, 0),
(84, 987202836, 593452546, 1638594947, 1, 1, 0),
(85, 1543261460, 593452546, 1638594949, 1, 1, 0),
(86, 1439404212, 27044968, 1638595127, 1, 1, 0),
(87, 1439404410, 27044968, 1638595129, 1, 1, 0),
(88, 1439396364, 27044968, 1638595131, 1, 1, 0),
(89, 737053270, 27044968, 1638595134, 1, 1, 0),
(90, 891373088, 27044968, 1638595136, 1, 1, 0),
(91, 321562874, 321562857, 1638595137, 1, 1, 0),
(92, 1456118791, 129181816, 1638595139, 1, 1, 0),
(93, 1445042297, 67745826, 1638595141, 1, 1, 0),
(94, 945507935, 27044968, 1638595142, 1, 1, 0),
(95, 1067408101, 27044968, 1638595144, 1, 1, 0),
(96, 1452916590, 300842104, 1638595146, 1, 1, 0),
(97, 1439404281, 27044968, 1638595148, 1, 1, 0),
(98, 381719800, 723715352, 1638595150, 1, 1, 0),
(99, 1574219547, 1517484324, 1638595151, 1, 1, 0),
(100, 1596414221, 1533161762, 1638595153, 1, 1, 0),
(101, 1514662077, 1448542620, 1638595155, 1, 1, 0),
(102, 1552536771, 1505278036, 1638595158, 1, 1, 0),
(103, 1495112751, 630178833, 1638595159, 1, 1, 0),
(104, 736742086, 27044968, 1638595161, 1, 1, 0),
(105, 1135440510, 27044968, 1638595163, 1, 1, 0),
(106, 1451890594, 1450952759, 1638595165, 1, 1, 0),
(107, 1505172754, 1458195578, 1638595167, 1, 1, 0),
(108, 1444884527, 67745826, 1638595169, 1, 1, 0),
(109, 466779409, 272692452, 1638595171, 1, 1, 0),
(110, 1590942524, 1590707965, 1638595173, 1, 1, 0),
(111, 1423643879, 726378861, 1638595175, 1, 1, 0),
(112, 1154134121, 1154134085, 1638595177, 1, 1, 0),
(113, 1557785055, 1471553684, 1638595179, 1, 1, 0),
(114, 1456120303, 129181816, 1638595180, 1, 1, 0),
(115, 1596130042, 27044968, 1638595182, 1, 1, 0),
(116, 1525234171, 1403433600, 1638595184, 1, 1, 0),
(117, 1518816993, 1317501306, 1638595186, 1, 1, 0),
(118, 1573661105, 1521552116, 1638595188, 1, 1, 0),
(119, 1439274931, 27044968, 1638595190, 1, 1, 0),
(120, 1521553682, 1521552116, 1638595191, 1, 1, 0),
(121, 1517260687, 1516567641, 1638595193, 1, 1, 0),
(122, 1529166058, 1506020787, 1638595195, 1, 1, 0),
(123, 1569720378, 1516118499, 1638595196, 1, 1, 0),
(124, 1439274928, 27044968, 1638595198, 1, 1, 0),
(125, 1439274927, 27044968, 1638595199, 1, 1, 0),
(126, 541627978, 65905778, 1638595202, 1, 1, 0),
(127, 365694805, 723715352, 1638595204, 1, 1, 0),
(128, 466807002, 272692452, 1638595205, 1, 1, 0),
(129, 1439404234, 272692452, 1638595208, 1, 1, 0),
(130, 1439274576, 27044968, 1638595209, 1, 1, 0),
(131, 1457411304, 272692452, 1638595211, 1, 1, 0),
(132, 922881149, 27044968, 1638595212, 1, 1, 0),
(133, 948775920, 27044968, 1638595214, 1, 1, 0),
(134, 541627977, 65905778, 1638595215, 1, 1, 0),
(135, 1456682587, 272692452, 1638595217, 1, 1, 0),
(136, 80078470, 3950736, 1638595440, 1, 1, 0),
(137, 678408133, 678408114, 1638595442, 1, 1, 0),
(138, 678408120, 678408114, 1638595444, 1, 1, 0),
(139, 678408136, 678408114, 1638595446, 1, 1, 0),
(140, 678408138, 678408114, 1638595448, 1, 1, 0),
(141, 678408139, 678408114, 1638595450, 1, 1, 0),
(142, 678408135, 678408114, 1638595452, 1, 1, 0),
(143, 678408132, 678408114, 1638595454, 1, 1, 0),
(144, 678408134, 678408114, 1638595456, 1, 1, 0),
(145, 678408137, 678408114, 1638595458, 1, 1, 0),
(146, 678408130, 678408114, 1638595460, 1, 1, 0),
(147, 1454457648, 948064445, 1638595471, 1, 1, 0),
(148, 1454457651, 6853442, 1638595474, 1, 1, 0),
(149, 1141920014, 633402928, 1638595481, 1, 1, 0),
(150, 1556948950, 1497557126, 1638595483, 1, 1, 0),
(151, 1387722595, 406829008, 1638595486, 1, 1, 0),
(152, 1144266830, 633402928, 1638595488, 1, 1, 0),
(153, 1387722599, 406829008, 1638595489, 1, 1, 0),
(154, 1387722597, 406829008, 1638595491, 1, 1, 0),
(155, 1387722594, 406829008, 1638595493, 1, 1, 0),
(156, 1387722601, 406829008, 1638595495, 1, 1, 0),
(157, 1387722598, 406829008, 1638595496, 1, 1, 0),
(158, 1387722600, 406829008, 1638595498, 1, 1, 0),
(159, 1387722596, 406829008, 1638595500, 1, 1, 0),
(160, 887910136, 224312, 1638595502, 1, 1, 0),
(161, 1491281501, 623600456, 1638595503, 1, 1, 0),
(162, 1475795071, 733881080, 1638595505, 1, 1, 0),
(163, 1553813697, 678408114, 1638595507, 1, 1, 0),
(164, 1445529640, 1093572611, 1638595764, 1, 1, 0),
(165, 1481586190, 1093572611, 1638595767, 1, 1, 0),
(166, 1445529404, 1093572611, 1638595769, 1, 1, 0),
(167, 1445529509, 1093572611, 1638595771, 1, 1, 0),
(168, 1093572789, 1093572611, 1638595772, 1, 1, 0),
(169, 1093572714, 1093572611, 1638595774, 1, 1, 0),
(170, 1093572771, 1093572611, 1638595777, 1, 1, 0),
(171, 1093572656, 1093572611, 1638595778, 1, 1, 0),
(547, 1093572779, 1093572611, 1638669834, 1, 0, 0),
(173, 1093572783, 1093572611, 1638595782, 1, 1, 0),
(174, 958725932, 392602622, 1638595784, 1, 1, 0),
(175, 1445529615, 1093572611, 1638595786, 1, 1, 0),
(176, 1481586555, 1093572611, 1638595788, 1, 1, 0),
(177, 1481586202, 1093572611, 1638595789, 1, 1, 0),
(178, 1481586185, 1093572611, 1638595791, 1, 1, 0),
(179, 1445529496, 1093572611, 1638595792, 1, 1, 0),
(180, 1445529253, 1093572611, 1638595794, 1, 1, 0),
(181, 1445529635, 1093572611, 1638595796, 1, 1, 0),
(182, 1481586192, 1093572611, 1638595798, 1, 1, 0),
(183, 1445529183, 1093572611, 1638595799, 1, 1, 0),
(184, 1445529416, 1093572611, 1638595801, 1, 1, 0),
(185, 1445529273, 1093572611, 1638595803, 1, 1, 0),
(186, 1481586196, 1093572611, 1638595804, 1, 1, 0),
(187, 1445529624, 1093572611, 1638595806, 1, 1, 0),
(188, 1481586551, 1093572611, 1638595808, 1, 1, 0),
(189, 1445529514, 1093572611, 1638595810, 1, 1, 0),
(190, 1481586204, 1093572611, 1638595812, 1, 1, 0),
(191, 1481586565, 1093572611, 1638595815, 1, 1, 0),
(192, 1481586191, 1093572611, 1638595816, 1, 1, 0),
(193, 1445529427, 1093572611, 1638595819, 1, 1, 0),
(194, 1481586559, 1093572611, 1638595821, 1, 1, 0),
(195, 279537465, 3633561, 1638595928, 1, 1, 0),
(196, 1017364427, 262300172, 1638595930, 1, 1, 0),
(197, 1416237121, 46261, 1638595932, 1, 1, 0),
(198, 376033074, 5042938, 1638595934, 1, 1, 0),
(199, 1199127034, 334618707, 1646914061, 1, 1, 0),
(200, 376032639, 376032640, 1638595938, 1, 1, 0),
(201, 278667195, 4226592, 1638595939, 1, 1, 0),
(202, 376033189, 15661235, 1638595941, 1, 1, 0),
(203, 278667257, 4226592, 1638595943, 1, 1, 0),
(204, 376032805, 4607434, 1638595944, 1, 1, 0),
(205, 376032736, 78404829, 1638595946, 1, 1, 0),
(206, 376032647, 376032648, 1638595948, 1, 1, 0),
(207, 1450303139, 1342095361, 1638595949, 1, 1, 0),
(208, 376032668, 4607412, 1638595951, 1, 1, 0),
(209, 280603235, 63689592, 1638595953, 1, 1, 0),
(210, 376032628, 4271931, 1638595955, 1, 1, 0),
(211, 376033015, 5985493, 1638595958, 1, 1, 0),
(212, 376032999, 285014065, 1638595960, 1, 1, 0),
(213, 376032808, 1490159438, 1638595962, 1, 1, 0),
(214, 983992507, 983775616, 1638595964, 1, 1, 0),
(215, 279927871, 279927860, 1638595966, 1, 1, 0),
(216, 520662455, 411758505, 1638595968, 1, 1, 0),
(217, 279927869, 279927860, 1638595970, 1, 1, 0),
(218, 527740577, 296612051, 1638595971, 1, 1, 0),
(219, 283112670, 21300101, 1638595973, 1, 1, 0),
(220, 251855661, 251856196, 1638595975, 1, 1, 0),
(221, 1511529527, 282704336, 1638595976, 1, 1, 0),
(222, 767767346, 129942319, 1638595978, 1, 1, 0),
(223, 336766917, 14763008, 1638595980, 1, 1, 0),
(224, 336766892, 216657963, 1638595981, 1, 1, 0),
(225, 336766910, 14763008, 1638595983, 1, 1, 0),
(226, 193602630, 814572, 1638595985, 1, 1, 0),
(227, 336172690, 129942319, 1638595986, 1, 1, 0),
(228, 281399713, 281399584, 1638595991, 1, 1, 0),
(229, 336766893, 963842106, 1638595992, 1, 1, 0),
(230, 336766922, 216657963, 1638595994, 1, 1, 0),
(231, 336766906, 135077842, 1638595996, 1, 1, 0),
(232, 804751956, 385843003, 1638595998, 1, 1, 0),
(233, 336766920, 135077842, 1638596002, 1, 1, 0),
(234, 336766914, 255273792, 1638596004, 1, 1, 0),
(235, 336766898, 255455869, 1638596005, 1, 1, 0),
(236, 336766895, 269040180, 1638596007, 1, 1, 0),
(237, 1476115701, 396377227, 1638596009, 1, 1, 0),
(238, 382978145, 57830323, 1638596011, 1, 1, 0),
(239, 271422178, 463277, 1638596013, 1, 1, 0),
(240, 462925560, 814572, 1638596014, 1, 1, 0),
(241, 1342095364, 1342095361, 1638596016, 1, 1, 0),
(242, 880470681, 99953189, 1638596130, 1, 1, 0),
(243, 880470692, 99953189, 1638596131, 1, 1, 0),
(244, 880470688, 99953189, 1638596132, 1, 1, 0),
(245, 1087978133, 1087977038, 1638596135, 1, 1, 0),
(246, 880470698, 99953189, 1638596137, 1, 1, 0),
(247, 880470689, 99953189, 1638596139, 1, 1, 0),
(248, 880470683, 99953189, 1638596140, 1, 1, 0),
(249, 880470680, 99953189, 1638596142, 1, 1, 0),
(250, 880470674, 99953189, 1638596144, 1, 1, 0),
(251, 1326812032, 718110948, 1638596146, 1, 1, 0),
(252, 880470675, 99953189, 1638596147, 1, 1, 0),
(253, 880470691, 99953189, 1638596150, 1, 1, 0),
(254, 1024823775, 117320263, 1638596151, 1, 1, 0),
(255, 1565242423, 368551172, 1638596153, 1, 1, 0),
(256, 880470693, 99953189, 1638596155, 1, 1, 0),
(257, 880470684, 99953189, 1638596157, 1, 1, 0),
(258, 1530760446, 99952647, 1638596159, 1, 1, 0),
(259, 1482055540, 1202059821, 1638596161, 1, 1, 0),
(260, 668302023, 4587835, 1638596163, 1, 1, 0),
(261, 668302056, 4587835, 1638596165, 1, 1, 0),
(262, 668302018, 4587835, 1638596166, 1, 1, 0),
(263, 668302061, 4587835, 1638596168, 1, 1, 0),
(264, 668302014, 4587835, 1638596169, 1, 1, 0),
(265, 668301982, 4587835, 1638596171, 1, 1, 0),
(266, 668302055, 4587835, 1638596172, 1, 1, 0),
(267, 668302009, 4587835, 1638596175, 1, 1, 0),
(268, 979921245, 99953189, 1638596177, 1, 1, 0),
(269, 156329061, 219485, 1638596178, 1, 1, 0),
(270, 1454151750, 99953189, 1638596180, 1, 1, 0),
(271, 156329116, 219485, 1638596182, 1, 1, 0),
(272, 530873379, 24828478, 1646914266, 1, 1, 0),
(273, 530873385, 24828478, 1646914267, 1, 1, 0),
(274, 1454151752, 99953189, 1638596186, 1, 1, 0),
(275, 979921659, 99953189, 1638596189, 1, 1, 0),
(276, 979921667, 99953189, 1638596191, 1, 1, 0),
(277, 979921247, 99953189, 1638596193, 1, 1, 0),
(278, 979921663, 99953189, 1638596195, 1, 1, 0),
(279, 664554375, 99953189, 1638596197, 1, 1, 0),
(280, 664554346, 99953189, 1638596198, 1, 1, 0),
(281, 977420690, 99953189, 1638596200, 1, 1, 0),
(282, 1024856974, 99953189, 1638596201, 1, 1, 0),
(283, 979921246, 99953189, 1638596203, 1, 1, 0),
(284, 981351189, 99953189, 1638596204, 1, 1, 0),
(285, 664554341, 99953189, 1638596206, 1, 1, 0),
(286, 979921257, 99953189, 1638596207, 1, 1, 0),
(287, 664554334, 99953189, 1638596209, 1, 1, 0),
(288, 668302013, 4587835, 1638596211, 1, 1, 0),
(289, 668302050, 4587835, 1638596213, 1, 1, 0),
(290, 668301985, 4587835, 1638596215, 1, 1, 0),
(291, 668302017, 4587835, 1638596216, 1, 1, 0),
(292, 1466232496, 273552433, 1638596430, 1, 1, 0),
(293, 1466317499, 321987, 1638596431, 1, 1, 0),
(294, 1464270088, 91655044, 1638596433, 1, 1, 0),
(295, 295816236, 321987, 1638596435, 1, 1, 0),
(296, 295816230, 321987, 1638596437, 1, 1, 0),
(297, 1464271679, 321987, 1638596439, 1, 1, 0),
(298, 292622169, 1311894, 1638596440, 1, 1, 0),
(299, 1466317993, 30903196, 1638596442, 1, 1, 0),
(300, 528060867, 321987, 1638596443, 1, 1, 0),
(301, 528061429, 321987, 1638596445, 1, 1, 0),
(302, 1464957711, 73944251, 1638596447, 1, 1, 0),
(303, 528060868, 321987, 1638596451, 1, 1, 0),
(304, 1466317372, 321987, 1638596452, 1, 1, 0),
(305, 277161796, 321987, 1638596454, 1, 1, 0),
(306, 1465802205, 133539433, 1638596455, 1, 1, 0),
(307, 1193443820, 321987, 1638596457, 1, 1, 0),
(308, 1071698832, 321987, 1638596458, 1, 1, 0),
(309, 160530730, 40867148, 1638596461, 1, 1, 0),
(310, 1466317507, 321987, 1638596463, 1, 1, 0),
(311, 1466232793, 273552433, 1638596464, 1, 1, 0),
(312, 571200600, 321987, 1638596467, 1, 1, 0),
(313, 150786820, 1490992837, 1638596468, 1, 1, 0),
(314, 1466317626, 321987, 1638596470, 1, 1, 0),
(315, 1466232785, 273552433, 1638596472, 1, 1, 0),
(316, 571313396, 321987, 1638596475, 1, 1, 0),
(317, 1466232600, 273552433, 1638596476, 1, 1, 0),
(318, 1364920542, 321987, 1638596478, 1, 1, 0),
(319, 1466232355, 273552433, 1638596480, 1, 1, 0),
(320, 1466232616, 273552433, 1638596481, 1, 1, 0),
(321, 1466232611, 273552433, 1638596482, 1, 1, 0),
(322, 1466317524, 321987, 1638596484, 1, 1, 0),
(323, 1466317504, 321987, 1638596485, 1, 1, 0),
(324, 1466317515, 321987, 1638596487, 1, 1, 0),
(325, 1466232504, 273552433, 1638596489, 1, 1, 0),
(326, 1466232625, 273552433, 1638596490, 1, 1, 0),
(327, 1325886529, 132280, 1638596492, 1, 1, 0),
(328, 1466317498, 321987, 1638596494, 1, 1, 0),
(329, 295816189, 321987, 1638596495, 1, 1, 0),
(330, 1466317374, 321987, 1638596497, 1, 1, 0),
(331, 1466317502, 321987, 1638596499, 1, 1, 0),
(332, 1466317622, 321987, 1638596501, 1, 1, 0),
(333, 1466317497, 321987, 1638596503, 1, 1, 0),
(334, 1466317519, 321987, 1638596505, 1, 1, 0),
(335, 1466317511, 321987, 1638596506, 1, 1, 0),
(336, 1466317618, 321987, 1638596508, 1, 1, 0),
(337, 295816197, 321987, 1638596509, 1, 1, 0),
(338, 295816192, 321987, 1638596511, 1, 1, 0),
(339, 697516992, 321987, 1638596513, 1, 1, 0),
(340, 1464269952, 91655044, 1638596515, 1, 1, 0),
(341, 661758006, 331537959, 1638600163, 1, 1, 0),
(342, 661814552, 331537959, 1638600165, 1, 1, 0),
(343, 661757971, 331537959, 1638600167, 1, 1, 0),
(344, 661814413, 331537959, 1638600169, 1, 1, 0),
(345, 661814746, 331537959, 1638600171, 1, 1, 0),
(346, 661814550, 331537959, 1638600172, 1, 1, 0),
(347, 661755058, 331537959, 1638600174, 1, 1, 0),
(348, 661814099, 331537959, 1638600176, 1, 1, 0),
(349, 661757973, 331537959, 1638600178, 1, 1, 0),
(350, 661754960, 331537959, 1638600180, 1, 1, 0),
(351, 661758336, 331537959, 1638600182, 1, 1, 0),
(352, 661814336, 331537959, 1638600184, 1, 1, 0),
(353, 661754957, 331537959, 1638600185, 1, 1, 0),
(354, 661757983, 331537959, 1638600187, 1, 1, 0),
(355, 661758247, 331537959, 1638600189, 1, 1, 0),
(356, 661758003, 331537959, 1638600191, 1, 1, 0),
(357, 661757995, 331537959, 1638600192, 1, 1, 0),
(358, 661757992, 331537959, 1638600194, 1, 1, 0),
(359, 661757975, 331537959, 1638600196, 1, 1, 0),
(360, 661757991, 331537959, 1638600197, 1, 1, 0),
(361, 661758017, 331537959, 1638600199, 1, 1, 0),
(362, 661758001, 331537959, 1638600201, 1, 1, 0),
(363, 661755057, 331537959, 1638600203, 1, 1, 0),
(364, 661758030, 331537959, 1638600204, 1, 1, 0),
(365, 661754958, 331537959, 1638600206, 1, 1, 0),
(366, 661814462, 331537959, 1638600208, 1, 1, 0),
(367, 661815070, 331537959, 1638600210, 1, 1, 0),
(368, 661758330, 331537959, 1638600212, 1, 1, 0),
(369, 661757978, 331537959, 1638600213, 1, 1, 0),
(370, 661755066, 331537959, 1638600215, 1, 1, 0),
(371, 661757993, 331537959, 1638600217, 1, 1, 0),
(372, 661758329, 331537959, 1638600219, 1, 1, 0),
(373, 661757977, 331537959, 1638600220, 1, 1, 0),
(374, 661755065, 331537959, 1638600222, 1, 1, 0),
(375, 661755094, 331537959, 1638600223, 1, 1, 0),
(376, 661758038, 331537959, 1638600225, 1, 1, 0),
(377, 661758246, 331537959, 1638600227, 1, 1, 0),
(378, 661758034, 331537959, 1638600229, 1, 1, 0),
(379, 661757986, 331537959, 1638600231, 1, 1, 0),
(380, 661814882, 331537959, 1638600232, 1, 1, 0),
(381, 661757996, 331537959, 1638600234, 1, 1, 0),
(382, 661754956, 331537959, 1638600236, 1, 1, 0),
(383, 661754876, 331537959, 1638600237, 1, 1, 0),
(384, 661758012, 331537959, 1638600239, 1, 1, 0),
(385, 661758004, 331537959, 1638600240, 1, 1, 0),
(386, 661758388, 331537959, 1638600243, 1, 1, 0),
(387, 661758020, 331537959, 1638600244, 1, 1, 0),
(388, 661814484, 331537959, 1638600246, 1, 1, 0),
(389, 661754916, 331537959, 1638600248, 1, 1, 0),
(390, 661758387, 331537959, 1638600250, 1, 1, 0),
(391, 87055725, 87055334, 1638600408, 1, 1, 0),
(392, 87055636, 87055334, 1638600410, 1, 1, 0),
(393, 87055818, 87055334, 1638600412, 1, 1, 0),
(394, 87055332, 87055334, 1638600413, 1, 1, 0),
(395, 87055402, 87055334, 1638600415, 1, 1, 0),
(396, 87055515, 87055334, 1638600417, 1, 1, 0),
(397, 1592752372, 296208, 1638600418, 1, 1, 0),
(398, 566085749, 365790486, 1638600657, 1, 1, 0),
(399, 1562966208, 1562824394, 1638600659, 1, 1, 0),
(400, 928116779, 365790486, 1638600661, 1, 1, 0),
(401, 566085767, 365790486, 1638600663, 1, 1, 0),
(402, 1554325856, 1032937894, 1638600665, 1, 1, 0),
(403, 566085759, 365790486, 1638600667, 1, 1, 0),
(404, 1574735985, 1553098970, 1638600668, 1, 1, 0),
(405, 566084968, 365790486, 1638600670, 1, 1, 0),
(406, 566085754, 365790486, 1638600671, 1, 1, 0),
(407, 1364589895, 365790486, 1638600673, 1, 1, 0),
(408, 566085756, 365790486, 1638600674, 1, 1, 0),
(409, 947563355, 365790486, 1638600676, 1, 1, 0),
(410, 566085757, 365790486, 1638600677, 1, 1, 0),
(411, 566085761, 365790486, 1638600678, 1, 1, 0),
(412, 566085765, 365790486, 1638600680, 1, 1, 0),
(413, 566085751, 365790486, 1638600682, 1, 1, 0),
(414, 566085760, 365790486, 1638600683, 1, 1, 0),
(415, 566085755, 365790486, 1638600684, 1, 1, 0),
(416, 566085766, 365790486, 1638600686, 1, 1, 0),
(417, 566085758, 365790486, 1638600687, 1, 1, 0),
(418, 566085750, 365790486, 1638600689, 1, 1, 0),
(419, 566085768, 365790486, 1638600690, 1, 1, 0),
(420, 566085792, 365790486, 1638600692, 1, 1, 0),
(421, 1462690860, 1436995840, 1638600693, 1, 1, 0),
(422, 1296544269, 1557668166, 1638600696, 1, 1, 0),
(423, 1112406589, 365790486, 1638600698, 1, 1, 0),
(424, 1112406586, 365790486, 1638600700, 1, 1, 0),
(425, 1367457956, 365790486, 1638600701, 1, 1, 0),
(426, 1267477049, 254029430, 1638600704, 1, 1, 0),
(427, 947563390, 365790486, 1638600705, 1, 1, 0),
(428, 1112406150, 365790486, 1638600708, 1, 1, 0),
(429, 1582523948, 1582523803, 1638600709, 1, 1, 0),
(430, 1574964802, 1475489613, 1638600711, 1, 1, 0),
(431, 928116749, 365790486, 1638600713, 1, 1, 0),
(432, 928116776, 365790486, 1638600715, 1, 1, 0),
(433, 1112406672, 365790486, 1638600717, 1, 1, 0),
(434, 1112406132, 365790486, 1638600719, 1, 1, 0),
(435, 1112406417, 365790486, 1638600721, 1, 1, 0),
(436, 928116752, 365790486, 1638600723, 1, 1, 0),
(437, 928116750, 365790486, 1638600724, 1, 1, 0),
(438, 1112406674, 365790486, 1638600727, 1, 1, 0),
(439, 1112406140, 365790486, 1638600728, 1, 1, 0),
(440, 947563361, 365790486, 1638600730, 1, 1, 0),
(441, 928116759, 365790486, 1638600731, 1, 1, 0),
(442, 1112406594, 365790486, 1638600733, 1, 1, 0),
(443, 1112406303, 365790486, 1638600734, 1, 1, 0),
(444, 947563359, 365790486, 1638600736, 1, 1, 0),
(445, 1545793450, 1538246853, 1638600738, 1, 1, 0),
(446, 1597742834, 909085051, 1638600739, 1, 1, 0),
(447, 1503242309, 1094496173, 1638600741, 1, 1, 0),
(448, 1444070173, 37020, 1638601105, 1, 1, 0),
(449, 1443229371, 37020, 1638601107, 1, 1, 0),
(450, 1447132901, 37020, 1638601109, 1, 1, 0),
(451, 1502752169, 264855033, 1638601110, 1, 1, 0),
(452, 608579820, 129013451, 1638601112, 1, 1, 0),
(453, 306809633, 306809554, 1638601114, 1, 1, 0),
(454, 133747082, 79893258, 1638601116, 1, 1, 0),
(455, 716283877, 5652847, 1638601117, 1, 1, 0),
(456, 513998452, 513621150, 1638601119, 1, 1, 0),
(457, 343492046, 205847538, 1638601120, 1, 1, 0),
(458, 2472696, 2472698, 1638601122, 1, 1, 0),
(459, 2514763, 2514765, 1638601123, 1, 1, 0),
(460, 495891392, 205847538, 1638601124, 1, 1, 0),
(461, 325093330, 277838353, 1638601126, 1, 1, 0),
(462, 1469308568, 2489744, 1638601128, 1, 1, 0),
(463, 1186385798, 1903801, 1638601131, 1, 1, 0),
(464, 710024561, 660106105, 1638601132, 1, 1, 0),
(465, 281570824, 2514765, 1638601134, 1, 1, 0),
(466, 282280249, 205847538, 1638601136, 1, 1, 0),
(467, 278335630, 2514790, 1638601139, 1, 1, 0),
(468, 82038708, 2514790, 1638601140, 1, 1, 0),
(469, 2514741, 2514743, 1638601142, 1, 1, 0),
(470, 1107142836, 323789182, 1638601144, 1, 1, 0),
(471, 464208122, 2472698, 1638601146, 1, 1, 0),
(472, 2514810, 2514750, 1638601148, 1, 1, 0),
(473, 281537885, 2514765, 1638601150, 1, 1, 0),
(474, 2514784, 2514765, 1638601152, 1, 1, 0),
(475, 300056996, 2514765, 1638601153, 1, 1, 0),
(476, 2514788, 2579903, 1638601155, 1, 1, 0),
(477, 2514758, 548945, 1638601157, 1, 1, 0),
(478, 281570831, 2514765, 1638601159, 1, 1, 0),
(479, 2514808, 2514765, 1638601161, 1, 1, 0),
(480, 2514782, 548945, 1638601163, 1, 1, 0),
(481, 366974986, 2514775, 1638601164, 1, 1, 0),
(482, 281537876, 2514765, 1638601166, 1, 1, 0),
(483, 300056998, 2514765, 1638601168, 1, 1, 0),
(484, 1225141446, 1225141256, 1638601170, 1, 1, 0),
(485, 5264703, 5264698, 1638601172, 1, 1, 0),
(486, 1462822192, 2514790, 1638601174, 1, 1, 0),
(487, 300057000, 2514765, 1638601175, 1, 1, 0),
(488, 367245242, 182221122, 1638601177, 1, 1, 0),
(489, 281537877, 2514765, 1638601179, 1, 1, 0),
(490, 1154086463, 2514765, 1638601181, 1, 1, 0),
(491, 1554709577, 2514790, 1638601183, 1, 1, 0),
(492, 281570832, 2514765, 1638601185, 1, 1, 0),
(493, 281537878, 2514765, 1638601187, 1, 1, 0),
(494, 281570829, 2514765, 1638601189, 1, 1, 0),
(495, 281537881, 2514765, 1638601191, 1, 1, 0),
(496, 281570827, 2514765, 1638601193, 1, 1, 0),
(497, 879094652, 631332, 1638601219, 1, 1, 0),
(498, 879094671, 631332, 1638601220, 1, 1, 0),
(499, 879094658, 631332, 1638601222, 1, 1, 0),
(500, 879094692, 631332, 1638601224, 1, 1, 0),
(501, 879094667, 631332, 1638601226, 1, 1, 0),
(502, 879094664, 631332, 1638601228, 1, 1, 0),
(503, 879094690, 631332, 1638601229, 1, 1, 0),
(504, 879094654, 631332, 1638601231, 1, 1, 0),
(505, 879094699, 631332, 1638601233, 1, 1, 0),
(506, 1170847939, 710464, 1638601235, 1, 1, 0),
(507, 209983845, 134154, 1638601236, 1, 1, 0),
(508, 919206741, 269841410, 1638601238, 1, 1, 0),
(509, 1592420959, 804393312, 1638601241, 1, 1, 0),
(510, 1165982868, 2225587, 1638601242, 1, 1, 0),
(511, 271455255, 631332, 1638601244, 1, 1, 0),
(512, 271455265, 631332, 1638601246, 1, 1, 0),
(513, 644395975, 3301442, 1638601248, 1, 1, 0),
(514, 271455246, 631332, 1638601249, 1, 1, 0),
(515, 906432447, 269841410, 1638601251, 1, 1, 0),
(516, 487702485, 631332, 1638601254, 1, 1, 0),
(517, 271455204, 631332, 1638601256, 1, 1, 0),
(518, 532235548, 152584334, 1638601257, 1, 1, 0),
(519, 1170847938, 710464, 1638601259, 1, 1, 0),
(520, 919206718, 269841410, 1638601261, 1, 1, 0),
(521, 271455228, 631332, 1638601263, 1, 1, 0),
(522, 532235545, 152584334, 1638601265, 1, 1, 0),
(523, 79018878, 149651, 1638601266, 1, 1, 0),
(524, 271455193, 631332, 1638601268, 1, 1, 0),
(525, 271455216, 631332, 1638601270, 1, 1, 0),
(526, 487702487, 631332, 1638601271, 1, 1, 0),
(527, 271455236, 631332, 1638601273, 1, 1, 0),
(528, 271455293, 631332, 1638601275, 1, 1, 0),
(529, 271455305, 631332, 1638601277, 1, 1, 0),
(530, 1533683726, 152634195, 1638601279, 1, 1, 0),
(531, 271455276, 631332, 1638601281, 1, 1, 0),
(532, 487702549, 631332, 1638601283, 1, 1, 0),
(533, 487702554, 631332, 1638601285, 1, 1, 0),
(534, 487702552, 631332, 1638601286, 1, 1, 0),
(535, 487702553, 631332, 1638601288, 1, 1, 0),
(536, 487702550, 631332, 1638601291, 1, 1, 0),
(537, 1566257114, 1541104502, 1638601293, 1, 1, 0),
(538, 1444120927, 134154, 1638601295, 1, 1, 0),
(539, 487702486, 631332, 1638601296, 1, 1, 0),
(540, 487702484, 631332, 1638601297, 1, 1, 0),
(541, 487702488, 631332, 1638601299, 1, 1, 0),
(542, 1205372266, 152092, 1638601300, 1, 1, 0),
(543, 904752662, 18756715, 1638601302, 1, 1, 0),
(544, 382741958, 35305279, 1638601304, 1, 1, 0),
(545, 1205372583, 152092, 1638601305, 1, 1, 0),
(546, 941896926, 454449646, 1638601308, 1, 1, 0),
(548, 347582945, 454449646, 1646911839, 1, 1, 0),
(549, 347582955, 454449646, 1646911841, 1, 1, 0),
(550, 347582800, 454449646, 1646911844, 1, 1, 0),
(551, 347582901, 454449646, 1646911845, 1, 1, 0),
(552, 347582753, 454449646, 1646911849, 1, 1, 0),
(553, 347582956, 454449646, 1646911852, 1, 1, 0),
(554, 347582854, 454449646, 1646911853, 1, 1, 0),
(555, 347582730, 454449646, 1646911855, 1, 1, 0),
(556, 347582818, 454449646, 1646911858, 1, 1, 0),
(557, 347582959, 454449646, 1646911859, 1, 1, 0),
(558, 347582960, 454449646, 1646911861, 1, 1, 0),
(559, 347582873, 454449646, 1646911863, 1, 1, 0),
(560, 347582921, 454449646, 1646911865, 1, 1, 0),
(561, 347582961, 454449646, 1646911866, 1, 1, 0),
(562, 303096308, 3293094, 1646911868, 1, 1, 0),
(563, 1170847943, 710464, 1646911870, 1, 1, 0),
(564, 533588246, 72304519, 1646911871, 1, 1, 0),
(565, 1144192733, 1144192675, 1646911873, 1, 1, 0),
(566, 716125104, 790180, 1646911875, 1, 1, 0),
(567, 394012922, 293864931, 1646911877, 1, 1, 0),
(568, 495938953, 293864931, 1646911878, 1, 1, 0),
(569, 450148527, 293864931, 1646911881, 1, 1, 0),
(570, 325445559, 5281405, 1646911884, 1, 1, 0),
(571, 1080795032, 35305616, 1646911886, 1, 1, 0),
(572, 813752105, 631332, 1646911887, 1, 1, 0),
(573, 813752101, 631332, 1646911889, 1, 1, 0),
(574, 1357803247, 181477913, 1646911891, 1, 1, 0),
(575, 220159537, 790180, 1646911892, 1, 1, 0),
(576, 982539704, 18756715, 1646911894, 1, 1, 0),
(577, 447837950, 454449646, 1646911895, 1, 1, 0),
(578, 941896919, 454449646, 1646911898, 1, 1, 0),
(579, 447837955, 454449646, 1646911899, 1, 1, 0),
(580, 781795559, 72304519, 1646911901, 1, 1, 0),
(581, 355274289, 3293094, 1646911902, 1, 1, 0),
(582, 447837957, 454449646, 1646911904, 1, 1, 0),
(583, 454449657, 454449646, 1646911906, 1, 1, 0),
(584, 447837952, 454449646, 1646911907, 1, 1, 0),
(585, 941896921, 454449646, 1646911909, 1, 1, 0),
(586, 314756156, 21769797, 1646911911, 1, 1, 0),
(587, 1607193207, 86375370, 1646911913, 1, 1, 0),
(588, 295704569, 654696, 1646911915, 1, 1, 0),
(589, 447837953, 454449646, 1646911916, 1, 1, 0),
(590, 572543133, 185248271, 1646911919, 1, 1, 0),
(591, 447837994, 454449646, 1646911920, 1, 1, 0),
(592, 447837964, 454449646, 1646911922, 1, 1, 0),
(593, 447837966, 454449646, 1646911924, 1, 1, 0),
(594, 447837959, 454449646, 1646911925, 1, 1, 0),
(595, 447837941, 454449646, 1646911927, 1, 1, 0),
(596, 840454975, 415355556, 1646911930, 1, 1, 0),
(597, 1508239320, 840454972, 1646911931, 1, 1, 0),
(598, 1199127037, 334618707, 1646914049, 1, 1, 0),
(599, 1199127035, 334618707, 1646914051, 1, 1, 0),
(600, 1199127131, 334618707, 1646914053, 1, 1, 0),
(601, 1199127040, 334618707, 1646914055, 1, 1, 0),
(602, 1199127038, 334618707, 1646914057, 1, 1, 0),
(603, 1199127132, 334618707, 1646914059, 1, 1, 0),
(604, 1199127133, 334618707, 1646914063, 1, 1, 0),
(605, 1199127039, 334618707, 1646914065, 1, 1, 0),
(606, 1199127036, 334618707, 1646914067, 1, 1, 0),
(607, 1175875525, 334618707, 1646914070, 1, 1, 0),
(608, 1175875522, 334618707, 1646914071, 1, 1, 0),
(609, 1175875524, 334618707, 1646914073, 1, 1, 0),
(610, 1175875526, 334618707, 1646914075, 1, 1, 0),
(611, 1175875523, 334618707, 1646914077, 1, 1, 0),
(612, 1114812392, 723153447, 1646914079, 1, 1, 0),
(613, 530873387, 24828478, 1646914269, 1, 1, 0),
(614, 57830321, 57830323, 1646914306, 1, 1, 0),
(615, 57830340, 57830323, 1646914309, 1, 1, 0),
(616, 57830332, 57830323, 1646914311, 1, 1, 0),
(617, 57830336, 57830323, 1646914313, 1, 1, 0),
(618, 57830330, 57830323, 1646914315, 1, 1, 0),
(619, 57830338, 57830323, 1646914317, 1, 1, 0),
(620, 57830328, 57830323, 1646914320, 1, 1, 0),
(621, 57830342, 57830323, 1646914322, 1, 1, 0),
(622, 57830334, 57830323, 1646914324, 1, 1, 0),
(623, 57830326, 57830323, 1646914326, 1, 1, 0),
(624, 57830346, 57830323, 1646914328, 1, 1, 0),
(625, 57830344, 57830323, 1646914330, 1, 1, 0),
(626, 542976575, 542976570, 1646914332, 1, 1, 0),
(627, 165050158, 57830323, 1646914334, 1, 1, 0),
(628, 1069997052, 57830323, 1646914336, 1, 1, 0),
(629, 1069995619, 57830323, 1646914338, 1, 1, 0),
(630, 1069995637, 57830323, 1646914341, 1, 1, 0),
(631, 1069997071, 57830323, 1646914344, 1, 1, 0),
(632, 1069994697, 57830323, 1646914345, 1, 1, 0),
(633, 1069996560, 57830323, 1646914347, 1, 1, 0),
(634, 1069994704, 57830323, 1646914349, 1, 1, 0),
(635, 1069995627, 57830323, 1646914351, 1, 1, 0),
(636, 1069996187, 57830323, 1646914353, 1, 1, 0),
(637, 1069996558, 57830323, 1646914355, 1, 1, 0),
(638, 1069995630, 57830323, 1646914357, 1, 1, 0),
(639, 1069994694, 57830323, 1646914359, 1, 1, 0),
(640, 1069996182, 57830323, 1646914361, 1, 1, 0),
(641, 1069995612, 57830323, 1646914363, 1, 1, 0),
(642, 165050368, 57830323, 1646914365, 1, 1, 0),
(643, 316838169, 57830323, 1646914367, 1, 1, 0),
(644, 316838160, 57830323, 1646914369, 1, 1, 0),
(645, 316838164, 57830323, 1646914371, 1, 1, 0),
(646, 316838158, 57830323, 1646914373, 1, 1, 0),
(647, 316838174, 57830323, 1646914375, 1, 1, 0),
(648, 316838203, 57830323, 1646914377, 1, 1, 0),
(649, 316838167, 57830323, 1646914379, 1, 1, 0),
(650, 165049639, 57830323, 1646914381, 1, 1, 0),
(651, 165049775, 57830323, 1646914383, 1, 1, 0),
(652, 316838207, 57830323, 1646914384, 1, 1, 0),
(653, 316838208, 57830323, 1646914386, 1, 1, 0),
(654, 316838162, 57830323, 1646914388, 1, 1, 0),
(655, 165049432, 57830323, 1646914390, 1, 1, 0),
(656, 165050230, 57830323, 1646914392, 1, 1, 0),
(657, 165050027, 57830323, 1646914394, 1, 1, 0),
(658, 165050497, 57830323, 1646914396, 1, 1, 0),
(659, 165050380, 57830323, 1646914398, 1, 1, 0),
(660, 165049328, 57830323, 1646914400, 1, 1, 0),
(661, 165049862, 57830323, 1646914401, 1, 1, 0),
(662, 165049801, 57830323, 1646914403, 1, 1, 0),
(663, 165049602, 57830323, 1646914405, 1, 1, 0),
(664, 270867903, 270673722, 1646914453, 1, 1, 0),
(665, 1451134722, 1291580524, 1646914455, 1, 1, 0),
(666, 519980727, 150450003, 1646914457, 1, 1, 0),
(667, 1191631040, 150450003, 1646914459, 1, 1, 0),
(668, 1170284334, 150450003, 1646914461, 1, 1, 0),
(669, 1464628428, 150450003, 1646914463, 1, 1, 0),
(670, 265174791, 265174222, 1646914465, 1, 1, 0),
(671, 209360160, 1490127540, 1646914466, 1, 1, 0),
(672, 1191595851, 150450003, 1646914472, 1, 1, 0),
(673, 1506989865, 1483009880, 1646914473, 1, 1, 0),
(674, 1443460690, 73359636, 1646914475, 1, 1, 0),
(675, 1530395032, 1530395025, 1646914477, 1, 1, 0),
(676, 716048411, 5264698, 1646914482, 1, 1, 0),
(677, 1444071508, 5264698, 1646914484, 1, 1, 0),
(678, 1443551315, 5264698, 1646914488, 1, 1, 0),
(679, 1443551302, 5264698, 1646914490, 1, 1, 0),
(680, 1443745673, 5264698, 1646914491, 1, 1, 0),
(681, 1443551409, 5264698, 1646914493, 1, 1, 0),
(682, 1443745686, 5264698, 1646914495, 1, 1, 0),
(683, 1443551395, 5264698, 1646914497, 1, 1, 0),
(684, 1443551392, 5264698, 1646914499, 1, 1, 0),
(685, 1443745851, 5264698, 1646914501, 1, 1, 0),
(686, 1443551407, 5264698, 1646914502, 1, 1, 0),
(687, 1443745497, 5264698, 1646914504, 1, 1, 0),
(688, 1443745664, 5264698, 1646914506, 1, 1, 0),
(689, 1443551402, 5264698, 1646914508, 1, 1, 0),
(690, 1443551398, 5264698, 1646914509, 1, 1, 0),
(691, 1443551381, 5264698, 1646914511, 1, 1, 0),
(692, 1443551293, 5264698, 1646914513, 1, 1, 0),
(693, 1443551311, 5264698, 1646914515, 1, 1, 0),
(694, 1443551308, 5264698, 1646914517, 1, 1, 0),
(695, 1443745506, 5264698, 1646914519, 1, 1, 0),
(696, 1443745143, 5264698, 1646914521, 1, 1, 0),
(697, 1444071774, 5264698, 1646914523, 1, 1, 0),
(698, 1434386896, 5131176, 1646914525, 1, 1, 0),
(699, 1443745482, 5264698, 1646914527, 1, 1, 0),
(700, 1443745135, 5264698, 1646914529, 1, 1, 0),
(701, 1444072018, 5264698, 1646914531, 1, 1, 0),
(702, 1443745864, 5264698, 1646914533, 1, 1, 0),
(703, 1526194372, 1526194368, 1646914538, 1, 1, 0),
(704, 1444071658, 5264698, 1646914540, 1, 1, 0),
(705, 1444071767, 5264698, 1646914541, 1, 1, 0),
(706, 1444071669, 5264698, 1646914543, 1, 1, 0),
(707, 575220433, 1311894, 1646914661, 1, 1, 0),
(708, 575220368, 1311894, 1646914662, 1, 1, 0),
(709, 575220344, 1311894, 1646914664, 1, 1, 0),
(710, 575220439, 1311894, 1646914666, 1, 1, 0),
(711, 575220434, 1311894, 1646914668, 1, 1, 0),
(712, 575220441, 1311894, 1646914670, 1, 1, 0),
(713, 575220366, 1311894, 1646914671, 1, 1, 0),
(714, 575220435, 1311894, 1646914673, 1, 1, 0),
(715, 575220364, 1311894, 1646914676, 1, 1, 0),
(716, 575220436, 1311894, 1646914678, 1, 1, 0),
(717, 575220429, 1311894, 1646914680, 1, 1, 0),
(718, 575220440, 1311894, 1646914682, 1, 1, 0),
(719, 575220365, 1311894, 1646914683, 1, 1, 0),
(720, 893420377, 72929426, 1646914685, 1, 1, 0),
(721, 383750064, 1311894, 1646914687, 1, 1, 0),
(722, 383750023, 1311894, 1646914689, 1, 1, 0),
(723, 438693932, 32849, 1646914690, 1, 1, 0),
(724, 383750142, 1311894, 1646914693, 1, 1, 0),
(725, 383749945, 1311894, 1646914696, 1, 1, 0),
(726, 383750246, 1311894, 1646914697, 1, 1, 0),
(727, 383750027, 1311894, 1646914699, 1, 1, 0),
(728, 383750304, 1311894, 1646914701, 1, 1, 0),
(729, 383749915, 1311894, 1646914703, 1, 1, 0),
(730, 383750108, 1311894, 1646914705, 1, 1, 0),
(731, 383750112, 1311894, 1646914707, 1, 1, 0),
(732, 383749950, 1311894, 1646914708, 1, 1, 0),
(733, 383750059, 1311894, 1646914711, 1, 1, 0),
(734, 383750299, 1311894, 1646914713, 1, 1, 0),
(735, 495508297, 1311894, 1646914715, 1, 1, 0),
(736, 383750119, 1311894, 1646914717, 1, 1, 0),
(737, 956617631, 72929426, 1646914719, 1, 1, 0),
(738, 721218231, 363394668, 1646914722, 1, 1, 0),
(739, 495508060, 1311894, 1646914724, 1, 1, 0),
(740, 1472341879, 3500477, 1646914726, 1, 1, 0),
(741, 578051326, 32849, 1646914728, 1, 1, 0),
(742, 1358755132, 4190895, 1646914730, 1, 1, 0),
(743, 495508303, 1311894, 1646914732, 1, 1, 0),
(744, 495508066, 1311894, 1646914734, 1, 1, 0),
(745, 495508299, 1311894, 1646914735, 1, 1, 0),
(746, 495508237, 1311894, 1646914737, 1, 1, 0),
(747, 21478913, 104489, 1646914739, 1, 1, 0),
(748, 495508301, 1311894, 1646914742, 1, 1, 0),
(749, 495508064, 1311894, 1646914743, 1, 1, 0),
(750, 1443653795, 270528403, 1646914745, 1, 1, 0),
(751, 495508058, 1311894, 1646914747, 1, 1, 0),
(752, 495508300, 1311894, 1646914749, 1, 1, 0),
(753, 495508062, 1311894, 1646914750, 1, 1, 0),
(754, 495508068, 1311894, 1646914752, 1, 1, 0),
(755, 495508298, 1311894, 1646914754, 1, 1, 0),
(756, 1545427049, 3267375, 1646914756, 1, 1, 0),
(757, 635516747, 6630759, 1646914849, 1, 1, 0),
(758, 635516917, 6630759, 1646914851, 1, 1, 0),
(759, 641301975, 35305616, 1646914855, 1, 1, 0),
(760, 641301985, 35305616, 1646914857, 1, 1, 0),
(761, 635516771, 6630759, 1646914858, 1, 1, 0),
(762, 885867125, 198012194, 1646914860, 1, 1, 0),
(763, 1369305015, 14956406, 1646914862, 1, 1, 0),
(764, 1443857977, 35305616, 1646914865, 1, 1, 0),
(765, 572198240, 1582234774, 1646914866, 1, 1, 0),
(766, 1080795039, 35305616, 1646914868, 1, 1, 0),
(767, 1443859080, 35305616, 1646914870, 1, 1, 0),
(768, 1080795035, 35305616, 1646914871, 1, 1, 0),
(769, 626635471, 35305616, 1646914875, 1, 1, 0),
(770, 1080795034, 35305616, 1646914876, 1, 1, 0),
(771, 626635472, 35305616, 1646914878, 1, 1, 0),
(772, 641301977, 35305616, 1646914880, 1, 1, 0),
(773, 641301981, 35305616, 1646914882, 1, 1, 0),
(774, 635516774, 6630759, 1646914883, 1, 1, 0),
(775, 626635469, 35305616, 1646914885, 1, 1, 0),
(776, 1022630811, 1022630798, 1646914887, 1, 1, 0),
(777, 1533827139, 35305616, 1646914892, 1, 1, 0),
(778, 796521878, 35305616, 1646914893, 1, 1, 0),
(779, 626635467, 35305616, 1646914895, 1, 1, 0),
(780, 1080795026, 35305616, 1646914897, 1, 1, 0),
(781, 1521621354, 530052763, 1646914899, 1, 1, 0),
(782, 1521621362, 530052763, 1646914901, 1, 1, 0),
(783, 1470690037, 181477913, 1646914902, 1, 1, 0),
(784, 1516873255, 419348639, 1646914905, 1, 1, 0),
(785, 641301988, 35305616, 1646914907, 1, 1, 0),
(786, 641301983, 35305616, 1646914908, 1, 1, 0),
(787, 1080795040, 35305616, 1646914910, 1, 1, 0),
(788, 1160005122, 306425429, 1646914912, 1, 1, 0),
(789, 641301978, 35305616, 1646914914, 1, 1, 0),
(790, 641301986, 35305616, 1646914916, 1, 1, 0),
(791, 1022631062, 1022630798, 1646914917, 1, 1, 0),
(792, 626635466, 35305616, 1646914919, 1, 1, 0),
(793, 626635470, 35305616, 1646914921, 1, 1, 0),
(794, 1022630808, 1022630798, 1646914922, 1, 1, 0),
(795, 626635464, 35305616, 1646914924, 1, 1, 0),
(796, 626635465, 35305616, 1646914926, 1, 1, 0),
(797, 641301974, 35305616, 1646914928, 1, 1, 0),
(798, 641301982, 35305616, 1646914931, 1, 1, 0),
(799, 641301980, 35305616, 1646914933, 1, 1, 0),
(800, 626635473, 35305616, 1646914935, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_songs_artist_album`
--

CREATE TABLE `tbl_songs_artist_album` (
  `id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `posted_date` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `display_status` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `ranking_order` int(11) NOT NULL,
  `deletion` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_songs_artist_album`
--

INSERT INTO `tbl_songs_artist_album` (`id`, `song_id`, `artist_id`, `posted_date`, `status`, `display_status`, `album_id`, `ranking_order`, `deletion`) VALUES
(1, 587008166, 18200208, 1638594507, 1, 1, 587008000, 0, 0),
(2, 587008157, 18200208, 1638594508, 1, 1, 587008000, 0, 0),
(3, 587008160, 18200208, 1638594510, 1, 1, 587008000, 0, 0),
(4, 587008162, 18200208, 1638594511, 1, 1, 587008000, 0, 0),
(5, 587008151, 18200208, 1638594513, 1, 1, 587008000, 0, 0),
(6, 587008167, 18200208, 1638594515, 1, 1, 587008000, 0, 0),
(7, 587008158, 18200208, 1638594516, 1, 1, 587008000, 0, 0),
(8, 587008159, 18200208, 1638594518, 1, 1, 587008000, 0, 0),
(9, 587008161, 18200208, 1638594520, 1, 1, 587008000, 0, 0),
(10, 587008149, 18200208, 1638594521, 1, 1, 587008000, 0, 0),
(11, 587008165, 18200208, 1638594523, 1, 1, 587008000, 0, 0),
(12, 587008169, 18200208, 1638594525, 1, 1, 587008000, 0, 0),
(13, 587008153, 18200208, 1638594527, 1, 1, 587008000, 0, 0),
(14, 587008008, 18200208, 1638594528, 1, 1, 587008000, 0, 0),
(15, 587008168, 18200208, 1638594530, 1, 1, 587008000, 0, 0),
(16, 587008152, 18200208, 1638594532, 1, 1, 587008000, 0, 0),
(17, 587008164, 18200208, 1638594534, 1, 1, 587008000, 0, 0),
(18, 587008170, 18200208, 1638594536, 1, 1, 587008000, 0, 0),
(19, 587008154, 18200208, 1638594539, 1, 1, 587008000, 0, 0),
(20, 587008163, 18200208, 1638594541, 1, 1, 587008000, 0, 0),
(21, 587008155, 18200208, 1638594543, 1, 1, 587008000, 0, 0),
(22, 587008171, 18200208, 1638594544, 1, 1, 587008000, 0, 0),
(23, 587008150, 18200208, 1638594546, 1, 1, 587008000, 0, 0),
(24, 1404474308, 18200208, 1638594548, 1, 1, 1404474296, 0, 0),
(25, 1404475192, 18200208, 1638594550, 1, 1, 1404474296, 0, 0),
(26, 645888558, 26365705, 1638594552, 1, 1, 645888293, 0, 0),
(27, 645888557, 26365705, 1638594553, 1, 1, 645888293, 0, 0),
(28, 579455444, 18200208, 1638594555, 1, 1, 579455085, 0, 0),
(29, 645888556, 26365705, 1638594557, 1, 1, 645888293, 0, 0),
(30, 645888551, 26365705, 1638594559, 1, 1, 645888293, 0, 0),
(31, 569402537, 18200208, 1638594560, 1, 1, 569402530, 0, 0),
(32, 324216398, 323820642, 1638594563, 1, 1, 324215423, 0, 0),
(33, 1404486186, 18200208, 1638594565, 1, 1, 1404486164, 0, 0),
(34, 579455431, 18200208, 1638594567, 1, 1, 579455085, 0, 0),
(35, 596330906, 62743472, 1638594569, 1, 1, 596330870, 0, 0),
(36, 569402544, 18200208, 1638594570, 1, 1, 569402530, 0, 0),
(37, 569402800, 18200208, 1638594572, 1, 1, 569402530, 0, 0),
(38, 579455448, 18200208, 1638594574, 1, 1, 579455085, 0, 0),
(39, 579455438, 18200208, 1638594576, 1, 1, 579455085, 0, 0),
(40, 569402792, 18200208, 1638594577, 1, 1, 569402530, 0, 0),
(41, 569402536, 18200208, 1638594579, 1, 1, 569402530, 0, 0),
(42, 569402794, 18200208, 1638594581, 1, 1, 569402530, 0, 0),
(43, 1459462576, 566009830, 1638594653, 1, 1, 1459462562, 0, 0),
(44, 1150633286, 1379012280, 1638594655, 1, 1, 1150632557, 0, 0),
(45, 1564102921, 725077219, 1638594656, 1, 1, 1564102912, 0, 0),
(46, 205597604, 205597208, 1638594658, 1, 1, 205597205, 0, 0),
(47, 908629959, 205597208, 1638594660, 1, 1, 908629939, 0, 0),
(48, 205597311, 205597208, 1638594662, 1, 1, 205597205, 0, 0),
(49, 205598245, 205597208, 1638594663, 1, 1, 205597205, 0, 0),
(50, 205597745, 205597208, 1638594665, 1, 1, 205597205, 0, 0),
(51, 908629966, 205597208, 1638594667, 1, 1, 908629939, 0, 0),
(52, 205598191, 205597208, 1638594668, 1, 1, 205597205, 0, 0),
(53, 205598254, 205597208, 1638594670, 1, 1, 205597205, 0, 0),
(54, 205597253, 205597208, 1638594671, 1, 1, 205597205, 0, 0),
(55, 908629960, 205597208, 1638594675, 1, 1, 908629939, 0, 0),
(56, 205597268, 205597208, 1638594676, 1, 1, 205597205, 0, 0),
(57, 908629953, 205597208, 1638594678, 1, 1, 908629939, 0, 0),
(58, 205597664, 205597208, 1638594680, 1, 1, 205597205, 0, 0),
(59, 908629951, 205597208, 1638594681, 1, 1, 908629939, 0, 0),
(60, 908629954, 205597208, 1638594683, 1, 1, 908629939, 0, 0),
(61, 908629965, 205597208, 1638594686, 1, 1, 908629939, 0, 0),
(62, 908629952, 205597208, 1638594688, 1, 1, 908629939, 0, 0),
(63, 205597487, 205597208, 1638594690, 1, 1, 205597205, 0, 0),
(64, 908629950, 205597208, 1638594692, 1, 1, 908629939, 0, 0),
(65, 205598275, 205597208, 1638594694, 1, 1, 205597205, 0, 0),
(66, 908629961, 205597208, 1638594695, 1, 1, 908629939, 0, 0),
(67, 908629957, 205597208, 1638594696, 1, 1, 908629939, 0, 0),
(68, 205597210, 205597208, 1638594699, 1, 1, 205597205, 0, 0),
(69, 205597302, 205597208, 1638594701, 1, 1, 205597205, 0, 0),
(70, 908629958, 205597208, 1638594703, 1, 1, 908629939, 0, 0),
(71, 908629962, 205597208, 1638594704, 1, 1, 908629939, 0, 0),
(72, 1390486718, 430626563, 1638594923, 1, 1, 1390486261, 0, 0),
(73, 1592335749, 1189937543, 1638594925, 1, 1, 1592335492, 0, 0),
(74, 1574206886, 455576259, 1638594927, 1, 1, 1574206881, 0, 0),
(75, 1501004034, 1498392450, 1638594929, 1, 1, 1501004030, 0, 0),
(76, 1596494449, 1565970076, 1638594931, 1, 1, 1596494441, 0, 0),
(77, 916843364, 41729021, 1638594933, 1, 1, 916840730, 0, 0),
(78, 421129752, 125369309, 1638594935, 1, 1, 421129714, 0, 0),
(79, 1513025969, 593452546, 1638594937, 1, 1, 1513025959, 0, 0),
(80, 1250823923, 575910990, 1638594938, 1, 1, 1250823399, 0, 0),
(81, 1086699043, 125369309, 1638594940, 1, 1, 1086697810, 0, 0),
(82, 1512822867, 593452546, 1638594942, 1, 1, 1512822859, 0, 0),
(83, 294826995, 125369309, 1638594945, 1, 1, 294826711, 0, 0),
(84, 987202836, 593452546, 1638594947, 1, 1, 987202729, 0, 0),
(85, 1543261460, 593452546, 1638594949, 1, 1, 1543261258, 0, 0),
(86, 1439404212, 27044968, 1638595127, 1, 1, 1439404169, 0, 0),
(87, 1439404410, 27044968, 1638595129, 1, 1, 1439404242, 0, 0),
(88, 1439396364, 27044968, 1638595131, 1, 1, 1439396129, 0, 0),
(89, 737053270, 27044968, 1638595134, 1, 1, 737053237, 0, 0),
(90, 891373088, 27044968, 1638595136, 1, 1, 891372996, 0, 0),
(91, 321562874, 321562857, 1638595137, 1, 1, 321562856, 0, 0),
(92, 1456118791, 129181816, 1638595139, 1, 1, 1456118789, 0, 0),
(93, 1445042297, 67745826, 1638595141, 1, 1, 1445042071, 0, 0),
(94, 945507935, 27044968, 1638595142, 1, 1, 945507889, 0, 0),
(95, 1067408101, 27044968, 1638595144, 1, 1, 1067407550, 0, 0),
(96, 1452916590, 300842104, 1638595146, 1, 1, 1452916586, 0, 0),
(97, 1439404281, 27044968, 1638595148, 1, 1, 1439404052, 0, 0),
(98, 381719800, 723715352, 1638595150, 1, 1, 381719478, 0, 0),
(99, 1574219547, 1517484324, 1638595151, 1, 1, 1574219543, 0, 0),
(100, 1596414221, 1533161762, 1638595153, 1, 1, 1596414220, 0, 0),
(101, 1514662077, 1448542620, 1638595155, 1, 1, 1514662073, 0, 0),
(102, 1552536771, 1505278036, 1638595158, 1, 1, 1552536770, 0, 0),
(103, 1495112751, 630178833, 1638595159, 1, 1, 1495112749, 0, 0),
(104, 736742086, 27044968, 1638595161, 1, 1, 736742055, 0, 0),
(105, 1135440510, 27044968, 1638595163, 1, 1, 1135440000, 0, 0),
(106, 1451890594, 1450952759, 1638595165, 1, 1, 1451890593, 0, 0),
(107, 1505172754, 1458195578, 1638595167, 1, 1, 1505172753, 0, 0),
(108, 1444884527, 67745826, 1638595169, 1, 1, 1444884155, 0, 0),
(109, 466779409, 272692452, 1638595171, 1, 1, 466779391, 0, 0),
(110, 1590942524, 1590707965, 1638595173, 1, 1, 1590942518, 0, 0),
(111, 1423643879, 726378861, 1638595175, 1, 1, 1423641093, 0, 0),
(112, 1154134121, 1154134085, 1638595177, 1, 1, 1154133891, 0, 0),
(113, 1557785055, 1471553684, 1638595179, 1, 1, 1557785054, 0, 0),
(114, 1456120303, 129181816, 1638595180, 1, 1, 1456120302, 0, 0),
(115, 1596130042, 27044968, 1638595182, 1, 1, 1596130037, 0, 0),
(116, 1525234171, 1403433600, 1638595184, 1, 1, 1525234168, 0, 0),
(117, 1518816993, 1317501306, 1638595186, 1, 1, 1518816978, 0, 0),
(118, 1573661105, 1521552116, 1638595188, 1, 1, 1573661103, 0, 0),
(119, 1439274931, 27044968, 1638595190, 1, 1, 1439274571, 0, 0),
(120, 1521553682, 1521552116, 1638595191, 1, 1, 1521553671, 0, 0),
(121, 1517260687, 1516567641, 1638595193, 1, 1, 1517260201, 0, 0),
(122, 1529166058, 1506020787, 1638595195, 1, 1, 1529166051, 0, 0),
(123, 1569720378, 1516118499, 1638595196, 1, 1, 1569720377, 0, 0),
(124, 1439274928, 27044968, 1638595198, 1, 1, 1439274571, 0, 0),
(125, 1439274927, 27044968, 1638595199, 1, 1, 1439274571, 0, 0),
(126, 541627978, 65905778, 1638595202, 1, 1, 541627326, 0, 0),
(127, 365694805, 723715352, 1638595204, 1, 1, 365694620, 0, 0),
(128, 466807002, 272692452, 1638595205, 1, 1, 466806954, 0, 0),
(129, 1439404234, 272692452, 1638595208, 1, 1, 1439404169, 0, 0),
(130, 1439274576, 27044968, 1638595209, 1, 1, 1439274571, 0, 0),
(131, 1457411304, 272692452, 1638595211, 1, 1, 1457411302, 0, 0),
(132, 922881149, 27044968, 1638595212, 1, 1, 922881081, 0, 0),
(133, 948775920, 27044968, 1638595214, 1, 1, 948775910, 0, 0),
(134, 541627977, 65905778, 1638595215, 1, 1, 541627326, 0, 0),
(135, 1456682587, 272692452, 1638595217, 1, 1, 1456682581, 0, 0),
(136, 80078470, 3950736, 1638595440, 1, 1, 80078613, 0, 0),
(137, 678408133, 678408114, 1638595442, 1, 1, 678407922, 0, 0),
(138, 678408120, 678408114, 1638595444, 1, 1, 678407922, 0, 0),
(139, 678408136, 678408114, 1638595446, 1, 1, 678407922, 0, 0),
(140, 678408138, 678408114, 1638595448, 1, 1, 678407922, 0, 0),
(141, 678408139, 678408114, 1638595450, 1, 1, 678407922, 0, 0),
(142, 678408135, 678408114, 1638595452, 1, 1, 678407922, 0, 0),
(143, 678408132, 678408114, 1638595454, 1, 1, 678407922, 0, 0),
(144, 678408134, 678408114, 1638595456, 1, 1, 678407922, 0, 0),
(145, 678408137, 678408114, 1638595458, 1, 1, 678407922, 0, 0),
(146, 678408130, 678408114, 1638595460, 1, 1, 678407922, 0, 0),
(147, 1454457648, 948064445, 1638595471, 1, 1, 1454457539, 0, 0),
(148, 1454457651, 6853442, 1638595474, 1, 1, 1454457539, 0, 0),
(149, 1141920014, 633402928, 1638595481, 1, 1, 1141918688, 0, 0),
(150, 1556948950, 1497557126, 1638595483, 1, 1, 1556948948, 0, 0),
(151, 1387722595, 406829008, 1638595486, 1, 1, 1387722298, 0, 0),
(152, 1144266830, 633402928, 1638595488, 1, 1, 1144265808, 0, 0),
(153, 1387722599, 406829008, 1638595489, 1, 1, 1387722298, 0, 0),
(154, 1387722597, 406829008, 1638595491, 1, 1, 1387722298, 0, 0),
(155, 1387722594, 406829008, 1638595493, 1, 1, 1387722298, 0, 0),
(156, 1387722601, 406829008, 1638595495, 1, 1, 1387722298, 0, 0),
(157, 1387722598, 406829008, 1638595496, 1, 1, 1387722298, 0, 0),
(158, 1387722600, 406829008, 1638595498, 1, 1, 1387722298, 0, 0),
(159, 1387722596, 406829008, 1638595500, 1, 1, 1387722298, 0, 0),
(160, 887910136, 224312, 1638595502, 1, 1, 887905780, 0, 0),
(161, 1491281501, 623600456, 1638595503, 1, 1, 1491281496, 0, 0),
(162, 1475795071, 733881080, 1638595505, 1, 1, 1475794912, 0, 0),
(163, 1553813697, 678408114, 1638595507, 1, 1, 1553813696, 0, 0),
(164, 1445529640, 1093572611, 1638595764, 1, 1, 1445529165, 0, 0),
(165, 1481586190, 1093572611, 1638595767, 1, 1, 1481586182, 0, 0),
(166, 1445529404, 1093572611, 1638595769, 1, 1, 1445529165, 0, 0),
(167, 1445529509, 1093572611, 1638595771, 1, 1, 1445529165, 0, 0),
(168, 1093572789, 1093572611, 1638595772, 1, 1, 1093572569, 0, 0),
(169, 1093572714, 1093572611, 1638595774, 1, 1, 1093572569, 0, 0),
(170, 1093572771, 1093572611, 1638595777, 1, 1, 1093572569, 0, 0),
(171, 1093572656, 1093572611, 1638595778, 1, 1, 1093572569, 0, 0),
(172, 1093572779, 1093572611, 1638595781, 1, 1, 1093572569, 0, 0),
(173, 1093572783, 1093572611, 1638595782, 1, 1, 1093572569, 0, 0),
(174, 958725932, 392602622, 1638595784, 1, 1, 958725892, 0, 0),
(175, 1445529615, 1093572611, 1638595786, 1, 1, 1445529165, 0, 0),
(176, 1481586555, 1093572611, 1638595788, 1, 1, 1481586182, 0, 0),
(177, 1481586202, 1093572611, 1638595789, 1, 1, 1481586182, 0, 0),
(178, 1481586185, 1093572611, 1638595791, 1, 1, 1481586182, 0, 0),
(179, 1445529496, 1093572611, 1638595792, 1, 1, 1445529165, 0, 0),
(180, 1445529253, 1093572611, 1638595794, 1, 1, 1445529165, 0, 0),
(181, 1445529635, 1093572611, 1638595796, 1, 1, 1445529165, 0, 0),
(182, 1481586192, 1093572611, 1638595798, 1, 1, 1481586182, 0, 0),
(183, 1445529183, 1093572611, 1638595799, 1, 1, 1445529165, 0, 0),
(184, 1445529416, 1093572611, 1638595801, 1, 1, 1445529165, 0, 0),
(185, 1445529273, 1093572611, 1638595803, 1, 1, 1445529165, 0, 0),
(186, 1481586196, 1093572611, 1638595804, 1, 1, 1481586182, 0, 0),
(187, 1445529624, 1093572611, 1638595806, 1, 1, 1445529165, 0, 0),
(188, 1481586551, 1093572611, 1638595808, 1, 1, 1481586182, 0, 0),
(189, 1445529514, 1093572611, 1638595810, 1, 1, 1445529165, 0, 0),
(190, 1481586204, 1093572611, 1638595812, 1, 1, 1481586182, 0, 0),
(191, 1481586565, 1093572611, 1638595815, 1, 1, 1481586182, 0, 0),
(192, 1481586191, 1093572611, 1638595816, 1, 1, 1481586182, 0, 0),
(193, 1445529427, 1093572611, 1638595819, 1, 1, 1445529165, 0, 0),
(194, 1481586559, 1093572611, 1638595821, 1, 1, 1481586182, 0, 0),
(195, 279537465, 3633561, 1638595928, 1, 1, 279537448, 0, 0),
(196, 1017364427, 262300172, 1638595930, 1, 1, 1017361703, 0, 0),
(197, 1416237121, 46261, 1638595932, 1, 1, 1416232780, 0, 0),
(198, 376033074, 5042938, 1638595934, 1, 1, 376032611, 0, 0),
(199, 1199127034, 334618707, 1646914061, 1, 1, 1199127031, 0, 0),
(200, 376032639, 376032640, 1638595938, 1, 1, 376032611, 0, 0),
(201, 278667195, 4226592, 1638595939, 1, 1, 278666994, 0, 0),
(202, 376033189, 15661235, 1638595941, 1, 1, 376032611, 0, 0),
(203, 278667257, 4226592, 1638595943, 1, 1, 278666994, 0, 0),
(204, 376032805, 4607434, 1638595944, 1, 1, 376032611, 0, 0),
(205, 376032736, 78404829, 1638595946, 1, 1, 376032611, 0, 0),
(206, 376032647, 376032648, 1638595948, 1, 1, 376032611, 0, 0),
(207, 1450303139, 1342095361, 1638595949, 1, 1, 1450303040, 0, 0),
(208, 376032668, 4607412, 1638595951, 1, 1, 376032611, 0, 0),
(209, 280603235, 63689592, 1638595953, 1, 1, 280603219, 0, 0),
(210, 376032628, 4271931, 1638595955, 1, 1, 376032611, 0, 0),
(211, 376033015, 5985493, 1638595958, 1, 1, 376032611, 0, 0),
(212, 376032999, 285014065, 1638595960, 1, 1, 376032611, 0, 0),
(213, 376032808, 1490159438, 1638595962, 1, 1, 376032611, 0, 0),
(214, 983992507, 983775616, 1638595964, 1, 1, 983775617, 0, 0),
(215, 279927871, 279927860, 1638595966, 1, 1, 279927854, 0, 0),
(216, 520662455, 411758505, 1638595968, 1, 1, 520662234, 0, 0),
(217, 279927869, 279927860, 1638595970, 1, 1, 279927854, 0, 0),
(218, 527740577, 296612051, 1638595971, 1, 1, 527740405, 0, 0),
(219, 283112670, 21300101, 1638595973, 1, 1, 283112617, 0, 0),
(220, 251855661, 251856196, 1638595975, 1, 1, 251854638, 0, 0),
(221, 1511529527, 282704336, 1638595976, 1, 1, 1511529526, 0, 0),
(222, 767767346, 129942319, 1638595978, 1, 1, 767767232, 0, 0),
(223, 336766917, 14763008, 1638595980, 1, 1, 336766794, 0, 0),
(224, 336766892, 216657963, 1638595981, 1, 1, 336766794, 0, 0),
(225, 336766910, 14763008, 1638595983, 1, 1, 336766794, 0, 0),
(226, 193602630, 814572, 1638595985, 1, 1, 193602597, 0, 0),
(227, 336172690, 129942319, 1638595986, 1, 1, 336172482, 0, 0),
(228, 281399713, 281399584, 1638595991, 1, 1, 281399558, 0, 0),
(229, 336766893, 963842106, 1638595992, 1, 1, 336766794, 0, 0),
(230, 336766922, 216657963, 1638595994, 1, 1, 336766794, 0, 0),
(231, 336766906, 135077842, 1638595996, 1, 1, 336766794, 0, 0),
(232, 804751956, 385843003, 1638595998, 1, 1, 804751950, 0, 0),
(233, 336766920, 135077842, 1638596002, 1, 1, 336766794, 0, 0),
(234, 336766914, 255273792, 1638596004, 1, 1, 336766794, 0, 0),
(235, 336766898, 255455869, 1638596005, 1, 1, 336766794, 0, 0),
(236, 336766895, 269040180, 1638596007, 1, 1, 336766794, 0, 0),
(237, 1476115701, 396377227, 1638596009, 1, 1, 1476115685, 0, 0),
(238, 382978145, 57830323, 1638596011, 1, 1, 382978081, 0, 0),
(239, 271422178, 463277, 1638596013, 1, 1, 271422114, 0, 0),
(240, 462925560, 814572, 1638596014, 1, 1, 462925530, 0, 0),
(241, 1342095364, 1342095361, 1638596016, 1, 1, 1342095359, 0, 0),
(242, 880470681, 99953189, 1638596130, 1, 1, 880470669, 0, 0),
(243, 880470692, 99953189, 1638596131, 1, 1, 880470669, 0, 0),
(244, 880470688, 99953189, 1638596132, 1, 1, 880470669, 0, 0),
(245, 1087978133, 1087977038, 1638596135, 1, 1, 1087977025, 0, 0),
(246, 880470698, 99953189, 1638596137, 1, 1, 880470669, 0, 0),
(247, 880470689, 99953189, 1638596139, 1, 1, 880470669, 0, 0),
(248, 880470683, 99953189, 1638596140, 1, 1, 880470669, 0, 0),
(249, 880470680, 99953189, 1638596142, 1, 1, 880470669, 0, 0),
(250, 880470674, 99953189, 1638596144, 1, 1, 880470669, 0, 0),
(251, 1326812032, 718110948, 1638596146, 1, 1, 1326810744, 0, 0),
(252, 880470675, 99953189, 1638596147, 1, 1, 880470669, 0, 0),
(253, 880470691, 99953189, 1638596150, 1, 1, 880470669, 0, 0),
(254, 1024823775, 117320263, 1638596151, 1, 1, 1024823460, 0, 0),
(255, 1565242423, 368551172, 1638596153, 1, 1, 1565242420, 0, 0),
(256, 880470693, 99953189, 1638596155, 1, 1, 880470669, 0, 0),
(257, 880470684, 99953189, 1638596157, 1, 1, 880470669, 0, 0),
(258, 1530760446, 99952647, 1638596159, 1, 1, 1530760130, 0, 0),
(259, 1482055540, 1202059821, 1638596161, 1, 1, 1482055388, 0, 0),
(260, 668302023, 4587835, 1638596163, 1, 1, 668301977, 0, 0),
(261, 668302056, 4587835, 1638596165, 1, 1, 668301977, 0, 0),
(262, 668302018, 4587835, 1638596166, 1, 1, 668301977, 0, 0),
(263, 668302061, 4587835, 1638596168, 1, 1, 668301977, 0, 0),
(264, 668302014, 4587835, 1638596169, 1, 1, 668301977, 0, 0),
(265, 668301982, 4587835, 1638596171, 1, 1, 668301977, 0, 0),
(266, 668302055, 4587835, 1638596172, 1, 1, 668301977, 0, 0),
(267, 668302009, 4587835, 1638596175, 1, 1, 668301977, 0, 0),
(268, 979921245, 99953189, 1638596177, 1, 1, 979921235, 0, 0),
(269, 156329061, 219485, 1638596178, 1, 1, 156329022, 0, 0),
(270, 1454151750, 99953189, 1638596180, 1, 1, 1454151708, 0, 0),
(271, 156329116, 219485, 1638596182, 1, 1, 156329022, 0, 0),
(272, 530873379, 24828478, 1646914266, 1, 1, 530873369, 0, 0),
(273, 530873385, 24828478, 1646914267, 1, 1, 530873369, 0, 0),
(274, 1454151752, 99953189, 1638596186, 1, 1, 1454151708, 0, 0),
(275, 979921659, 99953189, 1638596189, 1, 1, 979921235, 0, 0),
(276, 979921667, 99953189, 1638596191, 1, 1, 979921235, 0, 0),
(277, 979921247, 99953189, 1638596193, 1, 1, 979921235, 0, 0),
(278, 979921663, 99953189, 1638596195, 1, 1, 979921235, 0, 0),
(279, 664554375, 99953189, 1638596197, 1, 1, 664554331, 0, 0),
(280, 664554346, 99953189, 1638596198, 1, 1, 664554331, 0, 0),
(281, 977420690, 99953189, 1638596200, 1, 1, 977420679, 0, 0),
(282, 1024856974, 99953189, 1638596201, 1, 1, 1024856821, 0, 0),
(283, 979921246, 99953189, 1638596203, 1, 1, 979921235, 0, 0),
(284, 981351189, 99953189, 1638596204, 1, 1, 981350219, 0, 0),
(285, 664554341, 99953189, 1638596206, 1, 1, 664554331, 0, 0),
(286, 979921257, 99953189, 1638596207, 1, 1, 979921235, 0, 0),
(287, 664554334, 99953189, 1638596209, 1, 1, 664554331, 0, 0),
(288, 668302013, 4587835, 1638596211, 1, 1, 668301977, 0, 0),
(289, 668302050, 4587835, 1638596213, 1, 1, 668301977, 0, 0),
(290, 668301985, 4587835, 1638596215, 1, 1, 668301977, 0, 0),
(291, 668302017, 4587835, 1638596216, 1, 1, 668301977, 0, 0),
(292, 1466232496, 273552433, 1638596430, 1, 1, 1466232137, 0, 0),
(293, 1466317499, 321987, 1638596431, 1, 1, 1466317368, 0, 0),
(294, 1464270088, 91655044, 1638596433, 1, 1, 1464269943, 0, 0),
(295, 295816236, 321987, 1638596435, 1, 1, 295816185, 0, 0),
(296, 295816230, 321987, 1638596437, 1, 1, 295816185, 0, 0),
(297, 1464271679, 321987, 1638596439, 1, 1, 1464270892, 0, 0),
(298, 292622169, 1311894, 1638596440, 1, 1, 292622074, 0, 0),
(299, 1466317993, 30903196, 1638596442, 1, 1, 1466317715, 0, 0),
(300, 528060867, 321987, 1638596443, 1, 1, 528060864, 0, 0),
(301, 528061429, 321987, 1638596445, 1, 1, 528060864, 0, 0),
(302, 1464957711, 73944251, 1638596447, 1, 1, 1464956745, 0, 0),
(303, 528060868, 321987, 1638596451, 1, 1, 528060864, 0, 0),
(304, 1466317372, 321987, 1638596452, 1, 1, 1466317368, 0, 0),
(305, 277161796, 321987, 1638596454, 1, 1, 277161788, 0, 0),
(306, 1465802205, 133539433, 1638596455, 1, 1, 1465801716, 0, 0),
(307, 1193443820, 321987, 1638596457, 1, 1, 1193443271, 0, 0),
(308, 1071698832, 321987, 1638596458, 1, 1, 1071698831, 0, 0),
(309, 160530730, 40867148, 1638596461, 1, 1, 160530668, 0, 0),
(310, 1466317507, 321987, 1638596463, 1, 1, 1466317368, 0, 0),
(311, 1466232793, 273552433, 1638596464, 1, 1, 1466232137, 0, 0),
(312, 571200600, 321987, 1638596467, 1, 1, 571200401, 0, 0),
(313, 150786820, 1490992837, 1638596468, 1, 1, 150786783, 0, 0),
(314, 1466317626, 321987, 1638596470, 1, 1, 1466317368, 0, 0),
(315, 1466232785, 273552433, 1638596472, 1, 1, 1466232137, 0, 0),
(316, 571313396, 321987, 1638596475, 1, 1, 571313002, 0, 0),
(317, 1466232600, 273552433, 1638596476, 1, 1, 1466232137, 0, 0),
(318, 1364920542, 321987, 1638596478, 1, 1, 1364919188, 0, 0),
(319, 1466232355, 273552433, 1638596480, 1, 1, 1466232137, 0, 0),
(320, 1466232616, 273552433, 1638596481, 1, 1, 1466232137, 0, 0),
(321, 1466232611, 273552433, 1638596482, 1, 1, 1466232137, 0, 0),
(322, 1466317524, 321987, 1638596484, 1, 1, 1466317368, 0, 0),
(323, 1466317504, 321987, 1638596485, 1, 1, 1466317368, 0, 0),
(324, 1466317515, 321987, 1638596487, 1, 1, 1466317368, 0, 0),
(325, 1466232504, 273552433, 1638596489, 1, 1, 1466232137, 0, 0),
(326, 1466232625, 273552433, 1638596490, 1, 1, 1466232137, 0, 0),
(327, 1325886529, 132280, 1638596492, 1, 1, 1325886526, 0, 0),
(328, 1466317498, 321987, 1638596494, 1, 1, 1466317368, 0, 0),
(329, 295816189, 321987, 1638596495, 1, 1, 295816185, 0, 0),
(330, 1466317374, 321987, 1638596497, 1, 1, 1466317368, 0, 0),
(331, 1466317502, 321987, 1638596499, 1, 1, 1466317368, 0, 0),
(332, 1466317622, 321987, 1638596501, 1, 1, 1466317368, 0, 0),
(333, 1466317497, 321987, 1638596503, 1, 1, 1466317368, 0, 0),
(334, 1466317519, 321987, 1638596505, 1, 1, 1466317368, 0, 0),
(335, 1466317511, 321987, 1638596506, 1, 1, 1466317368, 0, 0),
(336, 1466317618, 321987, 1638596508, 1, 1, 1466317368, 0, 0),
(337, 295816197, 321987, 1638596509, 1, 1, 295816185, 0, 0),
(338, 295816192, 321987, 1638596511, 1, 1, 295816185, 0, 0),
(339, 697516992, 321987, 1638596513, 1, 1, 697516490, 0, 0),
(340, 1464269952, 91655044, 1638596515, 1, 1, 1464269943, 0, 0),
(341, 661758006, 331537959, 1638600163, 1, 1, 661757970, 0, 0),
(342, 661814552, 331537959, 1638600165, 1, 1, 661813528, 0, 0),
(343, 661757971, 331537959, 1638600167, 1, 1, 661757724, 0, 0),
(344, 661814413, 331537959, 1638600169, 1, 1, 661813528, 0, 0),
(345, 661814746, 331537959, 1638600171, 1, 1, 661813528, 0, 0),
(346, 661814550, 331537959, 1638600172, 1, 1, 661813528, 0, 0),
(347, 661755058, 331537959, 1638600174, 1, 1, 661754592, 0, 0),
(348, 661814099, 331537959, 1638600176, 1, 1, 661813528, 0, 0),
(349, 661757973, 331537959, 1638600178, 1, 1, 661757724, 0, 0),
(350, 661754960, 331537959, 1638600180, 1, 1, 661754592, 0, 0),
(351, 661758336, 331537959, 1638600182, 1, 1, 661757725, 0, 0),
(352, 661814336, 331537959, 1638600184, 1, 1, 661813528, 0, 0),
(353, 661754957, 331537959, 1638600185, 1, 1, 661754592, 0, 0),
(354, 661757983, 331537959, 1638600187, 1, 1, 661757725, 0, 0),
(355, 661758247, 331537959, 1638600189, 1, 1, 661757970, 0, 0),
(356, 661758003, 331537959, 1638600191, 1, 1, 661757970, 0, 0),
(357, 661757995, 331537959, 1638600192, 1, 1, 661757970, 0, 0),
(358, 661757992, 331537959, 1638600194, 1, 1, 661757970, 0, 0),
(359, 661757975, 331537959, 1638600196, 1, 1, 661757724, 0, 0),
(360, 661757991, 331537959, 1638600197, 1, 1, 661757724, 0, 0),
(361, 661758017, 331537959, 1638600199, 1, 1, 661757970, 0, 0),
(362, 661758001, 331537959, 1638600201, 1, 1, 661757725, 0, 0),
(363, 661755057, 331537959, 1638600203, 1, 1, 661754592, 0, 0),
(364, 661758030, 331537959, 1638600204, 1, 1, 661757724, 0, 0),
(365, 661754958, 331537959, 1638600206, 1, 1, 661754592, 0, 0),
(366, 661814462, 331537959, 1638600208, 1, 1, 661813528, 0, 0),
(367, 661815070, 331537959, 1638600210, 1, 1, 661813528, 0, 0),
(368, 661758330, 331537959, 1638600212, 1, 1, 661757970, 0, 0),
(369, 661757978, 331537959, 1638600213, 1, 1, 661757724, 0, 0),
(370, 661755066, 331537959, 1638600215, 1, 1, 661754592, 0, 0),
(371, 661757993, 331537959, 1638600217, 1, 1, 661757725, 0, 0),
(372, 661758329, 331537959, 1638600219, 1, 1, 661757725, 0, 0),
(373, 661757977, 331537959, 1638600220, 1, 1, 661757725, 0, 0),
(374, 661755065, 331537959, 1638600222, 1, 1, 661754592, 0, 0),
(375, 661755094, 331537959, 1638600223, 1, 1, 661754592, 0, 0),
(376, 661758038, 331537959, 1638600225, 1, 1, 661757970, 0, 0),
(377, 661758246, 331537959, 1638600227, 1, 1, 661757725, 0, 0),
(378, 661758034, 331537959, 1638600229, 1, 1, 661757725, 0, 0),
(379, 661757986, 331537959, 1638600231, 1, 1, 661757725, 0, 0),
(380, 661814882, 331537959, 1638600232, 1, 1, 661813528, 0, 0),
(381, 661757996, 331537959, 1638600234, 1, 1, 661757724, 0, 0),
(382, 661754956, 331537959, 1638600236, 1, 1, 661754592, 0, 0),
(383, 661754876, 331537959, 1638600237, 1, 1, 661754592, 0, 0),
(384, 661758012, 331537959, 1638600239, 1, 1, 661757725, 0, 0),
(385, 661758004, 331537959, 1638600240, 1, 1, 661757724, 0, 0),
(386, 661758388, 331537959, 1638600243, 1, 1, 661757725, 0, 0),
(387, 661758020, 331537959, 1638600244, 1, 1, 661757724, 0, 0),
(388, 661814484, 331537959, 1638600246, 1, 1, 661813528, 0, 0),
(389, 661754916, 331537959, 1638600248, 1, 1, 661754592, 0, 0),
(390, 661758387, 331537959, 1638600250, 1, 1, 661757970, 0, 0),
(391, 87055725, 87055334, 1638600408, 1, 1, 87055867, 0, 0),
(392, 87055636, 87055334, 1638600410, 1, 1, 87055867, 0, 0),
(393, 87055818, 87055334, 1638600412, 1, 1, 87055867, 0, 0),
(394, 87055332, 87055334, 1638600413, 1, 1, 87055867, 0, 0),
(395, 87055402, 87055334, 1638600415, 1, 1, 87055867, 0, 0),
(396, 87055515, 87055334, 1638600417, 1, 1, 87055867, 0, 0),
(397, 1592752372, 296208, 1638600418, 1, 1, 1592752369, 0, 0),
(398, 566085749, 365790486, 1638600657, 1, 1, 566084965, 0, 0),
(399, 1562966208, 1562824394, 1638600659, 1, 1, 1562966207, 0, 0),
(400, 928116779, 365790486, 1638600661, 1, 1, 928116684, 0, 0),
(401, 566085767, 365790486, 1638600663, 1, 1, 566084965, 0, 0),
(402, 1554325856, 1032937894, 1638600665, 1, 1, 1554325855, 0, 0),
(403, 566085759, 365790486, 1638600667, 1, 1, 566084965, 0, 0),
(404, 1574735985, 1553098970, 1638600668, 1, 1, 1574735983, 0, 0),
(405, 566084968, 365790486, 1638600670, 1, 1, 566084965, 0, 0),
(406, 566085754, 365790486, 1638600671, 1, 1, 566084965, 0, 0),
(407, 1364589895, 365790486, 1638600673, 1, 1, 1364587521, 0, 0),
(408, 566085756, 365790486, 1638600674, 1, 1, 566084965, 0, 0),
(409, 947563355, 365790486, 1638600676, 1, 1, 947563299, 0, 0),
(410, 566085757, 365790486, 1638600677, 1, 1, 566084965, 0, 0),
(411, 566085761, 365790486, 1638600678, 1, 1, 566084965, 0, 0),
(412, 566085765, 365790486, 1638600680, 1, 1, 566084965, 0, 0),
(413, 566085751, 365790486, 1638600682, 1, 1, 566084965, 0, 0),
(414, 566085760, 365790486, 1638600683, 1, 1, 566084965, 0, 0),
(415, 566085755, 365790486, 1638600684, 1, 1, 566084965, 0, 0),
(416, 566085766, 365790486, 1638600686, 1, 1, 566084965, 0, 0),
(417, 566085758, 365790486, 1638600687, 1, 1, 566084965, 0, 0),
(418, 566085750, 365790486, 1638600689, 1, 1, 566084965, 0, 0),
(419, 566085768, 365790486, 1638600690, 1, 1, 566084965, 0, 0),
(420, 566085792, 365790486, 1638600692, 1, 1, 566084965, 0, 0),
(421, 1462690860, 1436995840, 1638600693, 1, 1, 1462690433, 0, 0),
(422, 1296544269, 1557668166, 1638600696, 1, 1, 1296544262, 0, 0),
(423, 1112406589, 365790486, 1638600698, 1, 1, 1112405408, 0, 0),
(424, 1112406586, 365790486, 1638600700, 1, 1, 1112405408, 0, 0),
(425, 1367457956, 365790486, 1638600701, 1, 1, 1367457143, 0, 0),
(426, 1267477049, 254029430, 1638600704, 1, 1, 1267476577, 0, 0),
(427, 947563390, 365790486, 1638600705, 1, 1, 947563299, 0, 0),
(428, 1112406150, 365790486, 1638600708, 1, 1, 1112405408, 0, 0),
(429, 1582523948, 1582523803, 1638600709, 1, 1, 1582523798, 0, 0),
(430, 1574964802, 1475489613, 1638600711, 1, 1, 1574964800, 0, 0),
(431, 928116749, 365790486, 1638600713, 1, 1, 928116684, 0, 0),
(432, 928116776, 365790486, 1638600715, 1, 1, 928116684, 0, 0),
(433, 1112406672, 365790486, 1638600717, 1, 1, 1112405408, 0, 0),
(434, 1112406132, 365790486, 1638600719, 1, 1, 1112405408, 0, 0),
(435, 1112406417, 365790486, 1638600721, 1, 1, 1112405408, 0, 0),
(436, 928116752, 365790486, 1638600723, 1, 1, 928116684, 0, 0),
(437, 928116750, 365790486, 1638600724, 1, 1, 928116684, 0, 0),
(438, 1112406674, 365790486, 1638600727, 1, 1, 1112405408, 0, 0),
(439, 1112406140, 365790486, 1638600728, 1, 1, 1112405408, 0, 0),
(440, 947563361, 365790486, 1638600730, 1, 1, 947563299, 0, 0),
(441, 928116759, 365790486, 1638600731, 1, 1, 928116684, 0, 0),
(442, 1112406594, 365790486, 1638600733, 1, 1, 1112405408, 0, 0),
(443, 1112406303, 365790486, 1638600734, 1, 1, 1112405408, 0, 0),
(444, 947563359, 365790486, 1638600736, 1, 1, 947563299, 0, 0),
(445, 1545793450, 1538246853, 1638600738, 1, 1, 1545793449, 0, 0),
(446, 1597742834, 909085051, 1638600739, 1, 1, 1597742833, 0, 0),
(447, 1503242309, 1094496173, 1638600741, 1, 1, 1503242308, 0, 0),
(448, 1444070173, 37020, 1638601105, 1, 1, 1444069970, 0, 0),
(449, 1443229371, 37020, 1638601107, 1, 1, 1443229001, 0, 0),
(450, 1447132901, 37020, 1638601109, 1, 1, 1447132747, 0, 0),
(451, 1502752169, 264855033, 1638601110, 1, 1, 1502752163, 0, 0),
(452, 608579820, 129013451, 1638601112, 1, 1, 608579698, 0, 0),
(453, 306809633, 306809554, 1638601114, 1, 1, 306809550, 0, 0),
(454, 133747082, 79893258, 1638601116, 1, 1, 133746429, 0, 0),
(455, 716283877, 5652847, 1638601117, 1, 1, 716282540, 0, 0),
(456, 513998452, 513621150, 1638601119, 1, 1, 513998096, 0, 0),
(457, 343492046, 205847538, 1638601120, 1, 1, 343491909, 0, 0),
(458, 2472696, 2472698, 1638601122, 1, 1, 2472760, 0, 0),
(459, 2514763, 2514765, 1638601123, 1, 1, 2514815, 0, 0),
(460, 495891392, 205847538, 1638601124, 1, 1, 495891272, 0, 0),
(461, 325093330, 277838353, 1638601126, 1, 1, 325091888, 0, 0),
(462, 1469308568, 2489744, 1638601128, 1, 1, 1469308328, 0, 0),
(463, 1186385798, 1903801, 1638601131, 1, 1, 1186385716, 0, 0),
(464, 710024561, 660106105, 1638601132, 1, 1, 710024134, 0, 0),
(465, 281570824, 2514765, 1638601134, 1, 1, 281570823, 0, 0),
(466, 282280249, 205847538, 1638601136, 1, 1, 282280079, 0, 0),
(467, 278335630, 2514790, 1638601139, 1, 1, 278335624, 0, 0),
(468, 82038708, 2514790, 1638601140, 1, 1, 82039312, 0, 0),
(469, 2514741, 2514743, 1638601142, 1, 1, 2514815, 0, 0),
(470, 1107142836, 323789182, 1638601144, 1, 1, 1107142730, 0, 0),
(471, 464208122, 2472698, 1638601146, 1, 1, 464208113, 0, 0),
(472, 2514810, 2514750, 1638601148, 1, 1, 2514815, 0, 0),
(473, 281537885, 2514765, 1638601150, 1, 1, 281537872, 0, 0),
(474, 2514784, 2514765, 1638601152, 1, 1, 2514815, 0, 0),
(475, 300056996, 2514765, 1638601153, 1, 1, 300056866, 0, 0),
(476, 2514788, 2579903, 1638601155, 1, 1, 2514815, 0, 0),
(477, 2514758, 548945, 1638601157, 1, 1, 2514815, 0, 0),
(478, 281570831, 2514765, 1638601159, 1, 1, 281570823, 0, 0),
(479, 2514808, 2514765, 1638601161, 1, 1, 2514815, 0, 0),
(480, 2514782, 548945, 1638601163, 1, 1, 2514815, 0, 0),
(481, 366974986, 2514775, 1638601164, 1, 1, 366974937, 0, 0),
(482, 281537876, 2514765, 1638601166, 1, 1, 281537872, 0, 0),
(483, 300056998, 2514765, 1638601168, 1, 1, 300056866, 0, 0),
(484, 1225141446, 1225141256, 1638601170, 1, 1, 1225141251, 0, 0),
(485, 5264703, 5264698, 1638601172, 1, 1, 5264731, 0, 0),
(486, 1462822192, 2514790, 1638601174, 1, 1, 1462822018, 0, 0),
(487, 300057000, 2514765, 1638601175, 1, 1, 300056866, 0, 0),
(488, 367245242, 182221122, 1638601177, 1, 1, 367245183, 0, 0),
(489, 281537877, 2514765, 1638601179, 1, 1, 281537872, 0, 0),
(490, 1154086463, 2514765, 1638601181, 1, 1, 1154085675, 0, 0),
(491, 1554709577, 2514790, 1638601183, 1, 1, 1554709372, 0, 0),
(492, 281570832, 2514765, 1638601185, 1, 1, 281570823, 0, 0),
(493, 281537878, 2514765, 1638601187, 1, 1, 281537872, 0, 0),
(494, 281570829, 2514765, 1638601189, 1, 1, 281570823, 0, 0),
(495, 281537881, 2514765, 1638601191, 1, 1, 281537872, 0, 0),
(496, 281570827, 2514765, 1638601193, 1, 1, 281570823, 0, 0),
(497, 879094652, 631332, 1638601219, 1, 1, 879094298, 0, 0),
(498, 879094671, 631332, 1638601220, 1, 1, 879094298, 0, 0),
(499, 879094658, 631332, 1638601222, 1, 1, 879094298, 0, 0),
(500, 879094692, 631332, 1638601224, 1, 1, 879094298, 0, 0),
(501, 879094667, 631332, 1638601226, 1, 1, 879094298, 0, 0),
(502, 879094664, 631332, 1638601228, 1, 1, 879094298, 0, 0),
(503, 879094690, 631332, 1638601229, 1, 1, 879094298, 0, 0),
(504, 879094654, 631332, 1638601231, 1, 1, 879094298, 0, 0),
(505, 879094699, 631332, 1638601233, 1, 1, 879094298, 0, 0),
(506, 1170847939, 710464, 1638601235, 1, 1, 1170847773, 0, 0),
(507, 209983845, 134154, 1638601236, 1, 1, 209983737, 0, 0),
(508, 919206741, 269841410, 1638601238, 1, 1, 919206665, 0, 0),
(509, 1592420959, 804393312, 1638601241, 1, 1, 1592420952, 0, 0),
(510, 1165982868, 2225587, 1638601242, 1, 1, 1165982843, 0, 0),
(511, 271455255, 631332, 1638601244, 1, 1, 271455176, 0, 0),
(512, 271455265, 631332, 1638601246, 1, 1, 271455176, 0, 0),
(513, 644395975, 3301442, 1638601248, 1, 1, 644395657, 0, 0),
(514, 271455246, 631332, 1638601249, 1, 1, 271455176, 0, 0),
(515, 906432447, 269841410, 1638601251, 1, 1, 906432444, 0, 0),
(516, 487702485, 631332, 1638601254, 1, 1, 487702483, 0, 0),
(517, 271455204, 631332, 1638601256, 1, 1, 271455176, 0, 0),
(518, 532235548, 152584334, 1638601257, 1, 1, 532235336, 0, 0),
(519, 1170847938, 710464, 1638601259, 1, 1, 1170847773, 0, 0),
(520, 919206718, 269841410, 1638601261, 1, 1, 919206665, 0, 0),
(521, 271455228, 631332, 1638601263, 1, 1, 271455176, 0, 0),
(522, 532235545, 152584334, 1638601265, 1, 1, 532235336, 0, 0),
(523, 79018878, 149651, 1638601266, 1, 1, 79018907, 0, 0),
(524, 271455193, 631332, 1638601268, 1, 1, 271455176, 0, 0),
(525, 271455216, 631332, 1638601270, 1, 1, 271455176, 0, 0),
(526, 487702487, 631332, 1638601271, 1, 1, 487702483, 0, 0),
(527, 271455236, 631332, 1638601273, 1, 1, 271455176, 0, 0),
(528, 271455293, 631332, 1638601275, 1, 1, 271455176, 0, 0),
(529, 271455305, 631332, 1638601277, 1, 1, 271455176, 0, 0),
(530, 1533683726, 152634195, 1638601279, 1, 1, 1533683481, 0, 0),
(531, 271455276, 631332, 1638601281, 1, 1, 271455176, 0, 0),
(532, 487702549, 631332, 1638601283, 1, 1, 487702483, 0, 0),
(533, 487702554, 631332, 1638601285, 1, 1, 487702483, 0, 0),
(534, 487702552, 631332, 1638601286, 1, 1, 487702483, 0, 0),
(535, 487702553, 631332, 1638601288, 1, 1, 487702483, 0, 0),
(536, 487702550, 631332, 1638601291, 1, 1, 487702483, 0, 0),
(537, 1566257114, 1541104502, 1638601293, 1, 1, 1566257109, 0, 0),
(538, 1444120927, 134154, 1638601295, 1, 1, 1444120206, 0, 0),
(539, 487702486, 631332, 1638601296, 1, 1, 487702483, 0, 0),
(540, 487702484, 631332, 1638601297, 1, 1, 487702483, 0, 0),
(541, 487702488, 631332, 1638601299, 1, 1, 487702483, 0, 0),
(542, 1205372266, 152092, 1638601300, 1, 1, 1205372155, 0, 0),
(543, 904752662, 18756715, 1638601302, 1, 1, 904752640, 0, 0),
(544, 382741958, 35305279, 1638601304, 1, 1, 382741759, 0, 0),
(545, 1205372583, 152092, 1638601305, 1, 1, 1205372155, 0, 0),
(546, 941896926, 454449646, 1638601308, 1, 1, 941896904, 0, 0),
(547, 347582945, 454449646, 1646911839, 1, 1, 347582692, 0, 0),
(548, 347582955, 454449646, 1646911841, 1, 1, 347582692, 0, 0),
(549, 347582800, 454449646, 1646911844, 1, 1, 347582692, 0, 0),
(550, 347582901, 454449646, 1646911845, 1, 1, 347582692, 0, 0),
(551, 347582753, 454449646, 1646911849, 1, 1, 347582692, 0, 0),
(552, 347582956, 454449646, 1646911852, 1, 1, 347582692, 0, 0),
(553, 347582854, 454449646, 1646911853, 1, 1, 347582692, 0, 0),
(554, 347582730, 454449646, 1646911855, 1, 1, 347582692, 0, 0),
(555, 347582818, 454449646, 1646911858, 1, 1, 347582692, 0, 0),
(556, 347582959, 454449646, 1646911859, 1, 1, 347582692, 0, 0),
(557, 347582960, 454449646, 1646911861, 1, 1, 347582692, 0, 0),
(558, 347582873, 454449646, 1646911863, 1, 1, 347582692, 0, 0),
(559, 347582921, 454449646, 1646911865, 1, 1, 347582692, 0, 0),
(560, 347582961, 454449646, 1646911866, 1, 1, 347582692, 0, 0),
(561, 303096308, 3293094, 1646911868, 1, 1, 303096289, 0, 0),
(562, 1170847943, 710464, 1646911870, 1, 1, 1170847773, 0, 0),
(563, 533588246, 72304519, 1646911871, 1, 1, 533587880, 0, 0),
(564, 1144192733, 1144192675, 1646911873, 1, 1, 1144192661, 0, 0),
(565, 716125104, 790180, 1646911875, 1, 1, 716124694, 0, 0),
(566, 394012922, 293864931, 1646911877, 1, 1, 394012871, 0, 0),
(567, 495938953, 293864931, 1646911878, 1, 1, 495938788, 0, 0),
(568, 450148527, 293864931, 1646911881, 1, 1, 450148484, 0, 0),
(569, 325445559, 5281405, 1646911884, 1, 1, 325444804, 0, 0),
(570, 1080795032, 35305616, 1646911886, 1, 1, 1080794834, 0, 0),
(571, 813752105, 631332, 1646911887, 1, 1, 813752084, 0, 0),
(572, 813752101, 631332, 1646911889, 1, 1, 813752084, 0, 0),
(573, 1357803247, 181477913, 1646911891, 1, 1, 1357803231, 0, 0),
(574, 220159537, 790180, 1646911892, 1, 1, 220159096, 0, 0),
(575, 982539704, 18756715, 1646911894, 1, 1, 982539697, 0, 0),
(576, 447837950, 454449646, 1646911895, 1, 1, 447837936, 0, 0),
(577, 941896919, 454449646, 1646911898, 1, 1, 941896904, 0, 0),
(578, 447837955, 454449646, 1646911899, 1, 1, 447837936, 0, 0),
(579, 781795559, 72304519, 1646911901, 1, 1, 781795508, 0, 0),
(580, 355274289, 3293094, 1646911902, 1, 1, 355274287, 0, 0),
(581, 447837957, 454449646, 1646911904, 1, 1, 447837936, 0, 0),
(582, 454449657, 454449646, 1646911906, 1, 1, 454449644, 0, 0),
(583, 447837952, 454449646, 1646911907, 1, 1, 447837936, 0, 0),
(584, 941896921, 454449646, 1646911909, 1, 1, 941896904, 0, 0),
(585, 314756156, 21769797, 1646911911, 1, 1, 314755890, 0, 0),
(586, 1607193207, 86375370, 1646911913, 1, 1, 1607193206, 0, 0),
(587, 295704569, 654696, 1646911915, 1, 1, 295704562, 0, 0),
(588, 447837953, 454449646, 1646911916, 1, 1, 447837936, 0, 0),
(589, 572543133, 185248271, 1646911919, 1, 1, 572542517, 0, 0),
(590, 447837994, 454449646, 1646911920, 1, 1, 447837936, 0, 0),
(591, 447837964, 454449646, 1646911922, 1, 1, 447837936, 0, 0),
(592, 447837966, 454449646, 1646911924, 1, 1, 447837936, 0, 0),
(593, 447837959, 454449646, 1646911925, 1, 1, 447837936, 0, 0),
(594, 447837941, 454449646, 1646911927, 1, 1, 447837936, 0, 0),
(595, 840454975, 415355556, 1646911930, 1, 1, 840454954, 0, 0),
(596, 1508239320, 840454972, 1646911931, 1, 1, 1508239318, 0, 0),
(597, 1199127037, 334618707, 1646914049, 1, 1, 1199127031, 0, 0),
(598, 1199127035, 334618707, 1646914051, 1, 1, 1199127031, 0, 0),
(599, 1199127131, 334618707, 1646914053, 1, 1, 1199127031, 0, 0),
(600, 1199127040, 334618707, 1646914055, 1, 1, 1199127031, 0, 0),
(601, 1199127038, 334618707, 1646914057, 1, 1, 1199127031, 0, 0),
(602, 1199127132, 334618707, 1646914059, 1, 1, 1199127031, 0, 0),
(603, 1199127133, 334618707, 1646914063, 1, 1, 1199127031, 0, 0),
(604, 1199127039, 334618707, 1646914065, 1, 1, 1199127031, 0, 0),
(605, 1199127036, 334618707, 1646914067, 1, 1, 1199127031, 0, 0),
(606, 1175875525, 334618707, 1646914070, 1, 1, 1175875380, 0, 0),
(607, 1175875522, 334618707, 1646914071, 1, 1, 1175875380, 0, 0),
(608, 1175875524, 334618707, 1646914073, 1, 1, 1175875380, 0, 0),
(609, 1175875526, 334618707, 1646914075, 1, 1, 1175875380, 0, 0),
(610, 1175875523, 334618707, 1646914077, 1, 1, 1175875380, 0, 0),
(611, 1114812392, 723153447, 1646914079, 1, 1, 1114812245, 0, 0),
(612, 530873387, 24828478, 1646914269, 1, 1, 530873369, 0, 0),
(613, 57830321, 57830323, 1646914306, 1, 1, 57830348, 0, 0),
(614, 57830340, 57830323, 1646914309, 1, 1, 57830348, 0, 0),
(615, 57830332, 57830323, 1646914311, 1, 1, 57830348, 0, 0),
(616, 57830336, 57830323, 1646914313, 1, 1, 57830348, 0, 0),
(617, 57830330, 57830323, 1646914315, 1, 1, 57830348, 0, 0),
(618, 57830338, 57830323, 1646914317, 1, 1, 57830348, 0, 0),
(619, 57830328, 57830323, 1646914320, 1, 1, 57830348, 0, 0),
(620, 57830342, 57830323, 1646914322, 1, 1, 57830348, 0, 0),
(621, 57830334, 57830323, 1646914324, 1, 1, 57830348, 0, 0),
(622, 57830326, 57830323, 1646914326, 1, 1, 57830348, 0, 0),
(623, 57830346, 57830323, 1646914328, 1, 1, 57830348, 0, 0),
(624, 57830344, 57830323, 1646914330, 1, 1, 57830348, 0, 0),
(625, 542976575, 542976570, 1646914332, 1, 1, 542976569, 0, 0),
(626, 165050158, 57830323, 1646914334, 1, 1, 165049253, 0, 0),
(627, 1069997052, 57830323, 1646914336, 1, 1, 1069993954, 0, 0),
(628, 1069995619, 57830323, 1646914338, 1, 1, 1069993954, 0, 0),
(629, 1069995637, 57830323, 1646914341, 1, 1, 1069993954, 0, 0),
(630, 1069997071, 57830323, 1646914344, 1, 1, 1069993954, 0, 0),
(631, 1069994697, 57830323, 1646914345, 1, 1, 1069993954, 0, 0),
(632, 1069996560, 57830323, 1646914347, 1, 1, 1069993954, 0, 0),
(633, 1069994704, 57830323, 1646914349, 1, 1, 1069993954, 0, 0),
(634, 1069995627, 57830323, 1646914351, 1, 1, 1069993954, 0, 0),
(635, 1069996187, 57830323, 1646914353, 1, 1, 1069993954, 0, 0),
(636, 1069996558, 57830323, 1646914355, 1, 1, 1069993954, 0, 0),
(637, 1069995630, 57830323, 1646914357, 1, 1, 1069993954, 0, 0),
(638, 1069994694, 57830323, 1646914359, 1, 1, 1069993954, 0, 0),
(639, 1069996182, 57830323, 1646914361, 1, 1, 1069993954, 0, 0),
(640, 1069995612, 57830323, 1646914363, 1, 1, 1069993954, 0, 0),
(641, 165050368, 57830323, 1646914365, 1, 1, 165049253, 0, 0),
(642, 316838169, 57830323, 1646914367, 1, 1, 316838130, 0, 0),
(643, 316838160, 57830323, 1646914369, 1, 1, 316838130, 0, 0),
(644, 316838164, 57830323, 1646914371, 1, 1, 316838130, 0, 0),
(645, 316838158, 57830323, 1646914373, 1, 1, 316838130, 0, 0),
(646, 316838174, 57830323, 1646914375, 1, 1, 316838130, 0, 0),
(647, 316838203, 57830323, 1646914377, 1, 1, 316838130, 0, 0),
(648, 316838167, 57830323, 1646914379, 1, 1, 316838130, 0, 0),
(649, 165049639, 57830323, 1646914381, 1, 1, 165049253, 0, 0),
(650, 165049775, 57830323, 1646914383, 1, 1, 165049253, 0, 0),
(651, 316838207, 57830323, 1646914384, 1, 1, 316838130, 0, 0),
(652, 316838208, 57830323, 1646914386, 1, 1, 316838130, 0, 0),
(653, 316838162, 57830323, 1646914388, 1, 1, 316838130, 0, 0),
(654, 165049432, 57830323, 1646914390, 1, 1, 165049253, 0, 0),
(655, 165050230, 57830323, 1646914392, 1, 1, 165049253, 0, 0),
(656, 165050027, 57830323, 1646914394, 1, 1, 165049253, 0, 0),
(657, 165050497, 57830323, 1646914396, 1, 1, 165049253, 0, 0),
(658, 165050380, 57830323, 1646914398, 1, 1, 165049253, 0, 0),
(659, 165049328, 57830323, 1646914400, 1, 1, 165049253, 0, 0),
(660, 165049862, 57830323, 1646914401, 1, 1, 165049253, 0, 0),
(661, 165049801, 57830323, 1646914403, 1, 1, 165049253, 0, 0),
(662, 165049602, 57830323, 1646914405, 1, 1, 165049253, 0, 0),
(663, 270867903, 270673722, 1646914453, 1, 1, 270867847, 0, 0),
(664, 1451134722, 1291580524, 1646914455, 1, 1, 1451134437, 0, 0),
(665, 519980727, 150450003, 1646914457, 1, 1, 519980586, 0, 0),
(666, 1191631040, 150450003, 1646914459, 1, 1, 1191630912, 0, 0),
(667, 1170284334, 150450003, 1646914461, 1, 1, 1170282607, 0, 0),
(668, 1464628428, 150450003, 1646914463, 1, 1, 1464627696, 0, 0),
(669, 265174791, 265174222, 1646914465, 1, 1, 265174214, 0, 0),
(670, 209360160, 1490127540, 1646914466, 1, 1, 209359773, 0, 0),
(671, 1191595851, 150450003, 1646914472, 1, 1, 1191595295, 0, 0),
(672, 1506989865, 1483009880, 1646914473, 1, 1, 1506989861, 0, 0),
(673, 1443460690, 73359636, 1646914475, 1, 1, 1443460668, 0, 0),
(674, 1530395032, 1530395025, 1646914477, 1, 1, 1530395021, 0, 0),
(675, 716048411, 5264698, 1646914482, 1, 1, 716047559, 0, 0),
(676, 1444071508, 5264698, 1646914484, 1, 1, 1444071495, 0, 0),
(677, 1443551315, 5264698, 1646914488, 1, 1, 1443551247, 0, 0),
(678, 1443551302, 5264698, 1646914490, 1, 1, 1443551247, 0, 0),
(679, 1443745673, 5264698, 1646914491, 1, 1, 1443745124, 0, 0),
(680, 1443551409, 5264698, 1646914493, 1, 1, 1443551247, 0, 0),
(681, 1443745686, 5264698, 1646914495, 1, 1, 1443745124, 0, 0),
(682, 1443551395, 5264698, 1646914497, 1, 1, 1443551247, 0, 0),
(683, 1443551392, 5264698, 1646914499, 1, 1, 1443551247, 0, 0),
(684, 1443745851, 5264698, 1646914501, 1, 1, 1443745124, 0, 0),
(685, 1443551407, 5264698, 1646914502, 1, 1, 1443551247, 0, 0),
(686, 1443745497, 5264698, 1646914504, 1, 1, 1443745124, 0, 0),
(687, 1443745664, 5264698, 1646914506, 1, 1, 1443745124, 0, 0),
(688, 1443551402, 5264698, 1646914508, 1, 1, 1443551247, 0, 0),
(689, 1443551398, 5264698, 1646914509, 1, 1, 1443551247, 0, 0),
(690, 1443551381, 5264698, 1646914511, 1, 1, 1443551247, 0, 0),
(691, 1443551293, 5264698, 1646914513, 1, 1, 1443551247, 0, 0),
(692, 1443551311, 5264698, 1646914515, 1, 1, 1443551247, 0, 0),
(693, 1443551308, 5264698, 1646914517, 1, 1, 1443551247, 0, 0),
(694, 1443745506, 5264698, 1646914519, 1, 1, 1443745124, 0, 0),
(695, 1443745143, 5264698, 1646914521, 1, 1, 1443745124, 0, 0),
(696, 1444071774, 5264698, 1646914523, 1, 1, 1444071495, 0, 0),
(697, 1434386896, 5131176, 1646914525, 1, 1, 1434386497, 0, 0),
(698, 1443745482, 5264698, 1646914527, 1, 1, 1443745124, 0, 0),
(699, 1443745135, 5264698, 1646914529, 1, 1, 1443745124, 0, 0),
(700, 1444072018, 5264698, 1646914531, 1, 1, 1444071495, 0, 0),
(701, 1443745864, 5264698, 1646914533, 1, 1, 1443745124, 0, 0),
(702, 1526194372, 1526194368, 1646914538, 1, 1, 1526194365, 0, 0),
(703, 1444071658, 5264698, 1646914540, 1, 1, 1444071495, 0, 0),
(704, 1444071767, 5264698, 1646914541, 1, 1, 1444071495, 0, 0),
(705, 1444071669, 5264698, 1646914543, 1, 1, 1444071495, 0, 0),
(706, 575220433, 1311894, 1646914661, 1, 1, 575220205, 0, 0),
(707, 575220368, 1311894, 1646914662, 1, 1, 575220205, 0, 0),
(708, 575220344, 1311894, 1646914664, 1, 1, 575220205, 0, 0),
(709, 575220439, 1311894, 1646914666, 1, 1, 575220205, 0, 0),
(710, 575220434, 1311894, 1646914668, 1, 1, 575220205, 0, 0),
(711, 575220441, 1311894, 1646914670, 1, 1, 575220205, 0, 0),
(712, 575220366, 1311894, 1646914671, 1, 1, 575220205, 0, 0),
(713, 575220435, 1311894, 1646914673, 1, 1, 575220205, 0, 0),
(714, 575220364, 1311894, 1646914676, 1, 1, 575220205, 0, 0),
(715, 575220436, 1311894, 1646914678, 1, 1, 575220205, 0, 0),
(716, 575220429, 1311894, 1646914680, 1, 1, 575220205, 0, 0),
(717, 575220440, 1311894, 1646914682, 1, 1, 575220205, 0, 0),
(718, 575220365, 1311894, 1646914683, 1, 1, 575220205, 0, 0),
(719, 893420377, 72929426, 1646914685, 1, 1, 893420353, 0, 0),
(720, 383750064, 1311894, 1646914687, 1, 1, 383749881, 0, 0),
(721, 383750023, 1311894, 1646914689, 1, 1, 383749881, 0, 0),
(722, 438693932, 32849, 1646914690, 1, 1, 438693839, 0, 0),
(723, 383750142, 1311894, 1646914693, 1, 1, 383749881, 0, 0),
(724, 383749945, 1311894, 1646914696, 1, 1, 383749881, 0, 0),
(725, 383750246, 1311894, 1646914697, 1, 1, 383749881, 0, 0),
(726, 383750027, 1311894, 1646914699, 1, 1, 383749881, 0, 0),
(727, 383750304, 1311894, 1646914701, 1, 1, 383749881, 0, 0),
(728, 383749915, 1311894, 1646914703, 1, 1, 383749881, 0, 0),
(729, 383750108, 1311894, 1646914705, 1, 1, 383749881, 0, 0),
(730, 383750112, 1311894, 1646914707, 1, 1, 383749881, 0, 0),
(731, 383749950, 1311894, 1646914708, 1, 1, 383749881, 0, 0),
(732, 383750059, 1311894, 1646914711, 1, 1, 383749881, 0, 0),
(733, 383750299, 1311894, 1646914713, 1, 1, 383749881, 0, 0),
(734, 495508297, 1311894, 1646914715, 1, 1, 495508054, 0, 0),
(735, 383750119, 1311894, 1646914717, 1, 1, 383749881, 0, 0),
(736, 956617631, 72929426, 1646914719, 1, 1, 956617619, 0, 0),
(737, 721218231, 363394668, 1646914722, 1, 1, 721217836, 0, 0),
(738, 495508060, 1311894, 1646914724, 1, 1, 495508054, 0, 0),
(739, 1472341879, 3500477, 1646914726, 1, 1, 1472341875, 0, 0),
(740, 578051326, 32849, 1646914728, 1, 1, 578051190, 0, 0),
(741, 1358755132, 4190895, 1646914730, 1, 1, 1358755128, 0, 0),
(742, 495508303, 1311894, 1646914732, 1, 1, 495508054, 0, 0),
(743, 495508066, 1311894, 1646914734, 1, 1, 495508054, 0, 0),
(744, 495508299, 1311894, 1646914735, 1, 1, 495508054, 0, 0),
(745, 495508237, 1311894, 1646914737, 1, 1, 495508054, 0, 0),
(746, 21478913, 104489, 1646914739, 1, 1, 21478955, 0, 0),
(747, 495508301, 1311894, 1646914742, 1, 1, 495508054, 0, 0),
(748, 495508064, 1311894, 1646914743, 1, 1, 495508054, 0, 0),
(749, 1443653795, 270528403, 1646914745, 1, 1, 1443653215, 0, 0),
(750, 495508058, 1311894, 1646914747, 1, 1, 495508054, 0, 0),
(751, 495508300, 1311894, 1646914749, 1, 1, 495508054, 0, 0),
(752, 495508062, 1311894, 1646914750, 1, 1, 495508054, 0, 0),
(753, 495508068, 1311894, 1646914752, 1, 1, 495508054, 0, 0),
(754, 495508298, 1311894, 1646914754, 1, 1, 495508054, 0, 0),
(755, 1545427049, 3267375, 1646914756, 1, 1, 1545426732, 0, 0),
(756, 635516747, 6630759, 1646914849, 1, 1, 635516729, 0, 0),
(757, 635516917, 6630759, 1646914851, 1, 1, 635516772, 0, 0),
(758, 641301975, 35305616, 1646914855, 1, 1, 641301970, 0, 0),
(759, 641301985, 35305616, 1646914857, 1, 1, 641301970, 0, 0),
(760, 635516771, 6630759, 1646914858, 1, 1, 635516729, 0, 0),
(761, 885867125, 198012194, 1646914860, 1, 1, 885867060, 0, 0),
(762, 1369305015, 14956406, 1646914862, 1, 1, 1369304814, 0, 0),
(763, 1443857977, 35305616, 1646914865, 1, 1, 1443857963, 0, 0),
(764, 572198240, 1582234774, 1646914866, 1, 1, 572198190, 0, 0),
(765, 1080795039, 35305616, 1646914868, 1, 1, 1080794834, 0, 0),
(766, 1443859080, 35305616, 1646914870, 1, 1, 1443857963, 0, 0),
(767, 1080795035, 35305616, 1646914871, 1, 1, 1080794834, 0, 0),
(768, 626635471, 35305616, 1646914875, 1, 1, 626635233, 0, 0),
(769, 1080795034, 35305616, 1646914876, 1, 1, 1080794834, 0, 0),
(770, 626635472, 35305616, 1646914878, 1, 1, 626635233, 0, 0),
(771, 641301977, 35305616, 1646914880, 1, 1, 641301970, 0, 0),
(772, 641301981, 35305616, 1646914882, 1, 1, 641301970, 0, 0),
(773, 635516774, 6630759, 1646914883, 1, 1, 635516729, 0, 0),
(774, 626635469, 35305616, 1646914885, 1, 1, 626635233, 0, 0),
(775, 1022630811, 1022630798, 1646914887, 1, 1, 1022630573, 0, 0),
(776, 1533827139, 35305616, 1646914892, 1, 1, 1533827136, 0, 0),
(777, 796521878, 35305616, 1646914893, 1, 1, 796521856, 0, 0),
(778, 626635467, 35305616, 1646914895, 1, 1, 626635233, 0, 0),
(779, 1080795026, 35305616, 1646914897, 1, 1, 1080794834, 0, 0),
(780, 1521621354, 530052763, 1646914899, 1, 1, 1521621336, 0, 0),
(781, 1521621362, 530052763, 1646914901, 1, 1, 1521621336, 0, 0),
(782, 1470690037, 181477913, 1646914902, 1, 1, 1470690034, 0, 0),
(783, 1516873255, 419348639, 1646914905, 1, 1, 1516873253, 0, 0),
(784, 641301988, 35305616, 1646914907, 1, 1, 641301970, 0, 0),
(785, 641301983, 35305616, 1646914908, 1, 1, 641301970, 0, 0),
(786, 1080795040, 35305616, 1646914910, 1, 1, 1080794834, 0, 0),
(787, 1160005122, 306425429, 1646914912, 1, 1, 1160004980, 0, 0),
(788, 641301978, 35305616, 1646914914, 1, 1, 641301970, 0, 0),
(789, 641301986, 35305616, 1646914916, 1, 1, 641301970, 0, 0),
(790, 1022631062, 1022630798, 1646914917, 1, 1, 1022630573, 0, 0),
(791, 626635466, 35305616, 1646914919, 1, 1, 626635233, 0, 0),
(792, 626635470, 35305616, 1646914921, 1, 1, 626635233, 0, 0),
(793, 1022630808, 1022630798, 1646914922, 1, 1, 1022630573, 0, 0),
(794, 626635464, 35305616, 1646914924, 1, 1, 626635233, 0, 0),
(795, 626635465, 35305616, 1646914926, 1, 1, 626635233, 0, 0),
(796, 641301974, 35305616, 1646914928, 1, 1, 641301970, 0, 0),
(797, 641301982, 35305616, 1646914931, 1, 1, 641301970, 0, 0),
(798, 641301980, 35305616, 1646914933, 1, 1, 641301970, 0, 0),
(799, 626635473, 35305616, 1646914935, 1, 1, 626635233, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_store_img`
--

CREATE TABLE `tbl_store_img` (
  `store_id` int(11) NOT NULL,
  `store_title` varchar(255) NOT NULL,
  `store_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_store_img`
--

INSERT INTO `tbl_store_img` (`store_id`, `store_title`, `store_img`) VALUES
(1, 'Itunes', '258949735_icon_itune.png'),
(2, 'Amazon', '433144192_Amazon - Buy Button.png'),
(3, 'Google', '541147405_');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_seo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Male',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `region` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_added` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_date` bigint(20) NOT NULL,
  `active_counter` bigint(20) NOT NULL DEFAULT 0,
  `is_top_member` int(11) NOT NULL,
  `last_review` int(11) NOT NULL,
  `last_comment` int(11) NOT NULL,
  `fb_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oauth_provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_oauth_uid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `like_count` int(11) NOT NULL,
  `post_count` int(11) NOT NULL,
  `review_count` int(11) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`user_id`, `user_name`, `user_seo`, `fname`, `lname`, `gender`, `email`, `password`, `country_id`, `region`, `about_me`, `date_added`, `status`, `profile_image`, `activation_code`, `last_login_date`, `active_counter`, `is_top_member`, `last_review`, `last_comment`, `fb_id`, `oauth_provider`, `google_oauth_uid`, `link`, `like_count`, `post_count`, `review_count`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', NULL, NULL, 'Male', 'admin@tailem.com', '$2y$10$mFpRXdJ80ZM9Ysknx3rQp.CoeXrln76lZ2Fb6CNmZd02NPFCUs5Bq', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'eTLVEpAPSQdxVr61xF0aSTUbR6VdeQRWH053kEswnScR2utfiJmMLLr81Lgq', '2021-08-23 00:13:44', '2021-08-23 00:13:44'),
(2, 'muxiq', 'muxiq', NULL, NULL, 'Male', 'rasysuwy@mailinator.com', '$2y$10$qG4TvD1SUcwTWH.lX61Z7OelpVRb.VO1o9jilPhy8iOn0EmCSDcaK', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-08-23 00:21:14', '2021-08-23 00:21:14'),
(3, 'itzadnan', 'itzadnan', NULL, NULL, 'Male', 'itzadnanhussain@gmail.com', '$2y$10$tu48db23Oe9xzMQSpjBcV.gN8pql3Y/XaJ8FKgZTanYYIUlzKIFyC', NULL, NULL, NULL, 0, 1, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 'OoHuygaQN7GzdSNbHscfLvK8QQX61Ij9SyoQkOVaMJbSEcodR2sfW6DexvBr', '2021-08-23 00:26:40', '2021-08-23 00:28:21'),
(74, 'qahuloqik', 'qahuloqik', NULL, NULL, 'Male', 'joluko@mailinator.com', '$2y$10$WksiaDLGDKtmBeGd5RMFgOPLbuRtRTk8.fi7J8hux2tKrZL2dIUMC', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-11-10 06:41:02', '2021-11-10 06:39:50'),
(75, 'juxejuvi', 'juxejuvi', NULL, NULL, 'Male', 'zasu@mailinator.com', '$2y$10$mdF4WQX9Lrh3u1L9AufNf.Ji79ZDlvW49kvtOa3VmBVRV7lL3IAJq', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-11-10 06:41:02', '2021-11-10 06:39:50'),
(76, 'zokywelem', 'zokywelem', NULL, NULL, 'Male', 'xunih@mailinator.com', '$2y$10$iq54nSA1VWxYpCFWvyN/Ge0Me6xT8qAbpuwA93vG1hhKnMJPUdLzq', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-11-10 06:41:02', '2021-11-10 06:39:50'),
(77, 'jetig', 'jetig', NULL, NULL, 'Male', 'wefu@mailinator.com', '$2y$10$e84YhR4uueq3tip3YBhfvO.xg6qWyb6HVxCHAbjwMyKKXeqE65I.a', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-11-10 06:41:02', '2021-11-10 06:40:26'),
(78, 'xyjelafo', 'xyjelafo', NULL, NULL, 'Male', 'negoxiwij@mailinator.com', '$2y$10$POPVx2qS4.1wirPRNyJpLeFM.fdMf6rNHZBcj1RlW.A4xKXGpuaRK', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-11-10 06:41:14', '2021-11-10 06:41:14'),
(79, 'fevej', 'fevej', NULL, NULL, 'Male', 'tojux@mailinator.com', '$2y$10$rNWtecks9HBul2QV1oiCKO81XkvdFli3pAqy0Cb/FlO7G9tiBiuiS', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-11-10 06:45:42', '2021-11-10 06:45:42'),
(80, 'cykunyjud', 'cykunyjud', NULL, NULL, 'Male', 'koguzafuxa@mailinator.com', '$2y$10$dyaH.fxAPhYioeQXvpCsweftTw380D8E2Mt0PrhPCRO.9uf22HSJu', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-11-10 07:12:40', '2021-11-10 07:12:40'),
(81, 'user one', 'user-one', NULL, NULL, 'Male', 'userone@gmail.com', '$2y$10$G4H7I0.w4XGEgC6YjchYW.jrj2HTBYGP7msr11/lU8t85ESyn5GZi', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-11-12 06:25:11', '2021-11-12 06:25:11'),
(82, 'user two', 'user-two', NULL, NULL, 'Male', 'usertwo@gmail.com', '$2y$10$uMI8IBzxHBnJNftkOfLPNOgg6A3b411GLhgYTX3.7MbEymZl.Ybgi', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 3, 1, NULL, NULL, '2021-11-16 10:17:01', '2021-11-16 10:17:01'),
(84, 'tailemaaa', 'tailemaaa', NULL, NULL, 'Male', 'tailemaaa@tailem.com', '$2y$10$JI6gHYvszzljXX9XU0hku.WquYo7YGUgmkX2rt571MoPfvmNzKqu6', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-12-05 02:07:16', '2021-12-05 02:07:16'),
(85, 'tailemcccd', 'tailemcccd', NULL, NULL, 'Male', 'tailembbb@tailem.com', '$2y$10$nkcybPq8tLf9qHPl6zLXtOAM5JdbndtbM5iuIplrYKkGqUNZai8Eq', NULL, NULL, NULL, 0, 0, '941335674_Giorgio Gaber.jpg', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-12-05 02:08:47', '2021-12-05 02:08:47'),
(86, 'tailemccc', 'tailemccc', NULL, NULL, 'Male', 'tailemccc@tailem.com', '$2y$10$Pprsh2h9J0F46Z/9UljkU.HHNjjGSXCZLUcZuV.Q0ML.9WePygT0q', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-12-05 02:11:39', '2021-12-05 02:11:39'),
(87, 'dunky bol', 'dunky-bol', NULL, NULL, 'Male', 'nogul@mailinator.com', '$2y$10$bMRrhJW32IVlFoUfYHYXh.1q6fmA7KSdsvSGmM5gTudboFUQs72Py', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-12-08 07:13:31', '2021-12-08 07:13:31'),
(88, 'Adnan Hussain', 'adnan-hussain', 'Adnan', 'Hussain', 'Male', 'itzadnantech@gmail.com', '$2y$10$laMaFdzyGFi7l55KEO4Zj.Kubi9lpiVmKjpw.hlP9pFonvk.nRAlC', NULL, NULL, NULL, 0, 0, 'Adnan_1640240682.png', NULL, 0, 0, 0, 0, 0, NULL, 'google', '101712734810625184364', NULL, 0, 0, 0, NULL, NULL, '2021-12-23 06:14:30', '2021-12-23 06:14:30'),
(89, 'tatix', 'tatix', NULL, NULL, 'Male', 'gohudewira@mailinator.com', '$2y$10$HERT7Pw1nTYjhiR/tgKUweKr5M7Bd4SACDj/BLEWcSepuaf3uH6iu', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-12-28 05:42:45', '2021-12-28 05:42:45'),
(90, 'testddd', 'testddd', NULL, NULL, 'Male', 'testddd@tailem.com', '$2y$10$dtUQEgpcQNStj2q2BuaIoegm.m2umMv8yHwkb4MX81UcbKHwYJOqa', NULL, NULL, NULL, 0, 0, '1873748521_Wilsons Prom Sunset.jpg', NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 0, 2, NULL, NULL, '2021-12-28 11:14:47', '2021-12-28 11:14:47'),
(91, 'testeee', 'testeee', NULL, NULL, 'Male', 'testeee@tailem.com', '$2y$10$4Gn8aTTnIvPbj2ch6HGn2Og//kHjQ7Y1orbCumj306TAnIPIn2ZW.', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2021-12-29 07:16:01', '2021-12-29 07:16:01'),
(92, 'testhhh', 'testhhh', NULL, NULL, 'Male', 'testhhh@tailem.com', '$2y$10$ugFGC20ZnFD4s25YqdGj0uRflLzXOchIFxd8p8UcSbnL1rggjlqzG', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2022-01-02 03:07:58', '2022-01-02 03:07:58'),
(93, 'mahnoor', 'mahnoor', NULL, NULL, 'Male', 'mahnoorshawal11@gmai.com', '$2y$10$e8d7Kwy.GjZT.w4PaeX43OEYjQwd0XWM4aN3KxGr402gR/SKFmTJS', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2022-01-02 14:21:44', '2022-01-02 14:21:44'),
(94, 'testfff', 'testfff', NULL, NULL, 'Male', 'testfff@tailem.com', '$2y$10$EWVqR/8L.rdGPB8q93PSX.4919rb3Ew6lQOcTRWGojVh2FOXDKBxS', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 1, 1, 3, NULL, NULL, '2022-01-23 21:20:04', '2022-01-23 21:20:04'),
(95, 'user thress', 'user-thress', NULL, NULL, 'Male', 'userthree@gmail.com', '$2y$10$BrW6GGD5l7NZ8GIidxvQSOtKzrx2eW.nE65HRj1gGMiPs.rom0OXm', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 1, NULL, NULL, '2022-01-29 06:32:50', '2022-01-29 06:32:50'),
(96, 'necccccc', 'necccccc', NULL, NULL, 'Male', 'smtptestonly@yahoo.com', '$2y$10$Zmv09xDqbgMTCKMm9P2VcOQWUhAmGuP/4iGTLsvcPFjvj1kj2aAYG', NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, NULL, '2022-02-17 17:41:30', '2022-02-17 17:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_playlist`
--

CREATE TABLE `tbl_user_playlist` (
  `id` int(11) NOT NULL,
  `title_playlist` varchar(255) NOT NULL,
  `title_playlist_seo` varchar(255) NOT NULL,
  `user_id_playlist` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `posted_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_playlist`
--

INSERT INTO `tbl_user_playlist` (`id`, `title_playlist`, `title_playlist_seo`, `user_id_playlist`, `song_id`, `artist_id`, `posted_date`) VALUES
(81, 'test', 'test', 1, 254307210, 18200208, '2021-09-27 05:32:33'),
(82, 'thdf', 'thdf', 1, 254307210, 18200208, '2021-09-27 05:33:39'),
(83, 'sadsadsa', 'sadsadsa', 1, 254307210, 18200208, '2021-09-27 05:38:43'),
(84, 'test', 'test', 3, 254307210, 18200208, '2021-10-21 10:09:47'),
(85, 'test', 'test', 75, 254307210, 18200208, '2021-11-10 06:22:42'),
(86, 'test', 'test', 81, 697365691, 321987, '2021-11-17 10:58:59'),
(87, 'one', 'one', 81, 254307210, 18200208, '2021-11-29 10:48:09'),
(88, 'Great playlist', 'great-playlist', 85, 1592420959, 804393312, '2021-12-05 02:21:07'),
(89, 'woo', 'woo', 85, 1597742834, 909085051, '2021-12-05 02:22:50'),
(90, 'playlist-1', 'playlist1', 82, 661754956, 331537959, '2021-12-16 05:23:18'),
(91, 'adnan', 'adnan', 81, 661757995, 331537959, '2021-12-16 05:31:05'),
(92, 'Great', 'great', 82, 587008151, 18200208, '2021-12-28 05:40:09'),
(93, 'Great', 'great', 89, 587008151, 18200208, '2021-12-28 05:43:01'),
(94, 'Playslits 2 3', 'playslits-2-3', 90, 579455444, 18200208, '2021-12-29 06:51:41'),
(95, 'plas', 'plas', 90, 579455448, 18200208, '2021-12-29 07:09:36'),
(96, 'fsfsfs', 'fsfsfs', 91, 587008158, 18200208, '2021-12-29 07:21:42'),
(97, 'fsfsfsd adad', 'fsfsfsd-adad', 91, 587008158, 18200208, '2021-12-29 07:21:52');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_playlist_songs`
--

CREATE TABLE `tbl_user_playlist_songs` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `p_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_playlist_songs`
--

INSERT INTO `tbl_user_playlist_songs` (`id`, `playlist_id`, `user_id`, `song_id`, `artist_id`, `p_date`) VALUES
(239, 81, 1, 254307210, 18200208, '2021-09-27 05:33:29'),
(240, 84, 3, 254307210, 18200208, '2021-10-21 10:09:57'),
(241, 85, 75, 254307210, 18200208, '2021-11-10 06:22:49'),
(242, 86, 81, 697365691, 321987, '2021-11-17 10:59:03'),
(243, 87, 81, 254307210, 18200208, '2021-11-29 10:48:15'),
(244, 86, 81, 813752109, 631332, '2021-11-29 11:14:53'),
(245, 88, 85, 1592420959, 804393312, '2021-12-05 02:21:14'),
(246, 89, 85, 1597742834, 909085051, '2021-12-05 02:22:51'),
(248, 89, 85, 1093572779, 1093572611, '2021-12-05 02:43:03'),
(249, 90, 82, 661754956, 331537959, '2021-12-16 05:23:21'),
(250, 87, 81, 661754956, 331537959, '2021-12-16 05:30:24'),
(251, 91, 81, 661757995, 331537959, '2021-12-16 05:31:09'),
(255, 92, 82, 661754956, 331537959, '2021-12-28 05:41:27'),
(256, 93, 89, 587008151, 18200208, '2021-12-28 05:43:08'),
(257, 94, 90, 579455444, 18200208, '2021-12-29 06:51:44'),
(258, 94, 90, 1481586190, 1093572611, '2021-12-29 06:51:54'),
(260, 94, 90, 645888558, 26365705, '2021-12-29 07:08:37'),
(261, 94, 90, 587008158, 18200208, '2021-12-29 07:09:15'),
(262, 95, 90, 579455448, 18200208, '2021-12-29 07:09:38'),
(263, 96, 91, 587008158, 18200208, '2021-12-29 07:21:44'),
(264, 97, 91, 587008158, 18200208, '2021-12-29 07:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_social_profile`
--

CREATE TABLE `tbl_user_social_profile` (
  `icon_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `icon_type` enum('Facebook','Twitter','Instagram') NOT NULL,
  `social_link` text NOT NULL,
  `icon_image` text NOT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_social_profile`
--

INSERT INTO `tbl_user_social_profile` (`icon_id`, `user_id`, `icon_type`, `social_link`, `icon_image`, `updated_at`) VALUES
(2, 81, 'Facebook', 'testfacebooklink', 'ico_fb.png', '2021-11-22 05:13:56'),
(3, 81, 'Twitter', 'testtwitter', '', '2021-12-15 05:56:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  ADD PRIMARY KEY (`ad_id`);

--
-- Indexes for table `tbl_artists`
--
ALTER TABLE `tbl_artists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genere_cat` (`genere_cat`),
  ADD KEY `artist_status` (`artist_status`),
  ADD KEY `popular_artist` (`popular_artist`),
  ADD KEY `artist_seo` (`artist_seo`),
  ADD KEY `artist_name` (`artist_name`);
ALTER TABLE `tbl_artists` ADD FULLTEXT KEY `artist_name_2` (`artist_name`);

--
-- Indexes for table `tbl_artist_album`
--
ALTER TABLE `tbl_artist_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `album_artist_id` (`album_artist_id`),
  ADD KEY `album_status` (`album_status`),
  ADD KEY `popular_album` (`popular_album`),
  ADD KEY `ranking_order` (`ranking_order`),
  ADD KEY `album_title` (`album_title`);
ALTER TABLE `tbl_artist_album` ADD FULLTEXT KEY `album_title_2` (`album_title`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`cat_id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`country_id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `tbl_emailtemplets`
--
ALTER TABLE `tbl_emailtemplets`
  ADD PRIMARY KEY (`etemp_id`);

--
-- Indexes for table `tbl_featured_artist_assocs`
--
ALTER TABLE `tbl_featured_artist_assocs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gcomment_report`
--
ALTER TABLE `tbl_gcomment_report`
  ADD PRIMARY KEY (`gc_report_id`);

--
-- Indexes for table `tbl_general_comments`
--
ALTER TABLE `tbl_general_comments`
  ADD PRIMARY KEY (`gcomment_id`);

--
-- Indexes for table `tbl_general_comments_likes`
--
ALTER TABLE `tbl_general_comments_likes`
  ADD PRIMARY KEY (`g_comment_like_id`);

--
-- Indexes for table `tbl_general_review`
--
ALTER TABLE `tbl_general_review`
  ADD PRIMARY KEY (`g_review_id`),
  ADD KEY `g_review_title` (`g_review_title`(255)),
  ADD KEY `g_review_rating` (`g_review_rating`),
  ADD KEY `g_review_user_id` (`g_review_user_id`),
  ADD KEY `greview_image` (`greview_image`(255)),
  ADD KEY `g_review_post_date` (`g_review_post_date`);

--
-- Indexes for table `tbl_general_setting`
--
ALTER TABLE `tbl_general_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `tbl_latest_songs`
--
ALTER TABLE `tbl_latest_songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_likes`
--
ALTER TABLE `tbl_likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login_logs`
--
ALTER TABLE `tbl_login_logs`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `tbl_moderator_logs`
--
ALTER TABLE `tbl_moderator_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `tbl_moderator_rights`
--
ALTER TABLE `tbl_moderator_rights`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`page_id`,`page_name`);

--
-- Indexes for table `tbl_reports_checkbox`
--
ALTER TABLE `tbl_reports_checkbox`
  ADD PRIMARY KEY (`report_chk_box_id`);

--
-- Indexes for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `tbl_review_report`
--
ALTER TABLE `tbl_review_report`
  ADD PRIMARY KEY (`r_report_id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `tbl_social_icons`
--
ALTER TABLE `tbl_social_icons`
  ADD PRIMARY KEY (`icon_id`);

--
-- Indexes for table `tbl_social_links`
--
ALTER TABLE `tbl_social_links`
  ADD PRIMARY KEY (`links_id`);

--
-- Indexes for table `tbl_social_username`
--
ALTER TABLE `tbl_social_username`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_songs`
--
ALTER TABLE `tbl_songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ranking_order` (`ranking_order`),
  ADD KEY `song_status` (`song_status`),
  ADD KEY `song_seo` (`song_seo`),
  ADD KEY `timeupdated` (`timeupdated`),
  ADD KEY `song_title` (`song_title`),
  ADD KEY `song_title_4` (`song_title`),
  ADD KEY `ranking_order_2` (`ranking_order`),
  ADD KEY `timeupdated_2` (`timeupdated`);
ALTER TABLE `tbl_songs` ADD FULLTEXT KEY `song_title_2` (`song_title`);
ALTER TABLE `tbl_songs` ADD FULLTEXT KEY `song_title_3` (`song_title`);
ALTER TABLE `tbl_songs` ADD FULLTEXT KEY `song_title_5` (`song_title`);
ALTER TABLE `tbl_songs` ADD FULLTEXT KEY `FullText` (`song_title`);
ALTER TABLE `tbl_songs` ADD FULLTEXT KEY `song_title_6` (`song_title`);

--
-- Indexes for table `tbl_songs_artist`
--
ALTER TABLE `tbl_songs_artist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `song_id` (`song_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `status` (`status`),
  ADD KEY `display_status` (`display_status`);

--
-- Indexes for table `tbl_songs_artist_album`
--
ALTER TABLE `tbl_songs_artist_album`
  ADD PRIMARY KEY (`id`),
  ADD KEY `song_id` (`song_id`),
  ADD KEY `artist_id` (`artist_id`),
  ADD KEY `status` (`status`),
  ADD KEY `display_status` (`display_status`),
  ADD KEY `album_id` (`album_id`),
  ADD KEY `ranking_order` (`ranking_order`),
  ADD KEY `song_id_2` (`song_id`),
  ADD KEY `album_id_2` (`album_id`),
  ADD KEY `ranking_order_2` (`ranking_order`);

--
-- Indexes for table `tbl_store_img`
--
ALTER TABLE `tbl_store_img`
  ADD PRIMARY KEY (`store_id`),
  ADD KEY `store_title` (`store_title`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `tbl_users_email_unique` (`email`);

--
-- Indexes for table `tbl_user_playlist`
--
ALTER TABLE `tbl_user_playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_playlist_songs`
--
ALTER TABLE `tbl_user_playlist_songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user_social_profile`
--
ALTER TABLE `tbl_user_social_profile`
  ADD PRIMARY KEY (`icon_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_advertisement`
--
ALTER TABLE `tbl_advertisement`
  MODIFY `ad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_artists`
--
ALTER TABLE `tbl_artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1590707966;

--
-- AUTO_INCREMENT for table `tbl_artist_album`
--
ALTER TABLE `tbl_artist_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1607193207;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50000094;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT for table `tbl_emailtemplets`
--
ALTER TABLE `tbl_emailtemplets`
  MODIFY `etemp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_featured_artist_assocs`
--
ALTER TABLE `tbl_featured_artist_assocs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_gcomment_report`
--
ALTER TABLE `tbl_gcomment_report`
  MODIFY `gc_report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_general_comments`
--
ALTER TABLE `tbl_general_comments`
  MODIFY `gcomment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_general_comments_likes`
--
ALTER TABLE `tbl_general_comments_likes`
  MODIFY `g_comment_like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_general_review`
--
ALTER TABLE `tbl_general_review`
  MODIFY `g_review_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_general_setting`
--
ALTER TABLE `tbl_general_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_latest_songs`
--
ALTER TABLE `tbl_latest_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1607193208;

--
-- AUTO_INCREMENT for table `tbl_likes`
--
ALTER TABLE `tbl_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_login_logs`
--
ALTER TABLE `tbl_login_logs`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4301;

--
-- AUTO_INCREMENT for table `tbl_moderator_logs`
--
ALTER TABLE `tbl_moderator_logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_moderator_rights`
--
ALTER TABLE `tbl_moderator_rights`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_notifications`
--
ALTER TABLE `tbl_notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `page_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_reports_checkbox`
--
ALTER TABLE `tbl_reports_checkbox`
  MODIFY `report_chk_box_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=334;

--
-- AUTO_INCREMENT for table `tbl_review_report`
--
ALTER TABLE `tbl_review_report`
  MODIFY `r_report_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_social_icons`
--
ALTER TABLE `tbl_social_icons`
  MODIFY `icon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_social_links`
--
ALTER TABLE `tbl_social_links`
  MODIFY `links_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_social_username`
--
ALTER TABLE `tbl_social_username`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_songs`
--
ALTER TABLE `tbl_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1607193208;

--
-- AUTO_INCREMENT for table `tbl_songs_artist`
--
ALTER TABLE `tbl_songs_artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT for table `tbl_songs_artist_album`
--
ALTER TABLE `tbl_songs_artist_album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=800;

--
-- AUTO_INCREMENT for table `tbl_store_img`
--
ALTER TABLE `tbl_store_img`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `tbl_user_playlist`
--
ALTER TABLE `tbl_user_playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `tbl_user_playlist_songs`
--
ALTER TABLE `tbl_user_playlist_songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `tbl_user_social_profile`
--
ALTER TABLE `tbl_user_social_profile`
  MODIFY `icon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
