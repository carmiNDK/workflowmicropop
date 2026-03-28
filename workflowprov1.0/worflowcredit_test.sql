-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 07 Juillet 2025 à 12:14
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `worflowcredit_test`
--

-- --------------------------------------------------------

--
-- Structure de la table `assignationdossiercredit`
--

CREATE TABLE IF NOT EXISTS `assignationdossiercredit` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IDBranche` int(11) NOT NULL,
  `IDsuperviseur` int(11) NOT NULL,
  `IDProduitCredit` int(11) NOT NULL,
  `IDAnalysteDossierCredit` int(11) NOT NULL,
  `IDAssignateur` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  `IdClientD` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=127 ;

--
-- Contenu de la table `assignationdossiercredit`
--

INSERT INTO `assignationdossiercredit` (`Id`, `IDBranche`, `IDsuperviseur`, `IDProduitCredit`, `IDAnalysteDossierCredit`, `IDAssignateur`, `NumDossierCre`, `IdClientD`) VALUES
(32, 1, 21, 6, 47, 20, '09263', 23),
(33, 1, 21, 3, 17, 20, '46437', 14),
(34, 1, 53, 3, 48, 20, '66776', 15),
(35, 1, 21, 4, 28, 20, '77829', 24),
(38, 1, 21, 3, 62, 20, '15939', 16),
(39, 1, 21, 4, 62, 20, '88721', 18),
(40, 2, 61, 4, 36, 23, '23401', 25),
(41, 1, 21, 3, 33, 20, '58355', 26),
(42, 1, 53, 4, 62, 20, '33457', 19),
(44, 1, 21, 2, 33, 20, '11973', 29),
(45, 1, 21, 6, 28, 20, '09804', 49),
(47, 1, 21, 4, 62, 20, '05776', 39),
(48, 1, 21, 6, 17, 20, '12780', 36),
(49, 1, 21, 3, 47, 20, '16424', 55),
(50, 1, 21, 4, 28, 20, '38625', 20),
(51, 1, 21, 3, 62, 20, '39620', 43),
(52, 1, 21, 3, 62, 20, '53837', 40),
(53, 1, 21, 3, 62, 20, '54122', 46),
(55, 1, 53, 3, 48, 20, '59686', 47),
(56, 1, 53, 3, 48, 20, '60198', 50),
(57, 1, 21, 3, 62, 20, '64281', 31),
(58, 1, 21, 3, 62, 20, '70495', 53),
(60, 1, 21, 6, 62, 20, '91730', 42),
(61, 1, 21, 3, 28, 20, '98277', 38),
(62, 1, 21, 4, 62, 20, '24682', 68),
(63, 1, 21, 4, 28, 20, '19956', 65),
(64, 1, 21, 3, 33, 20, '97984', 57),
(65, 1, 21, 4, 33, 20, '12335', 59),
(67, 1, 53, 3, 48, 20, '32238', 66),
(68, 1, 21, 4, 33, 20, '73520', 70),
(69, 1, 21, 3, 62, 20, '26649', 74),
(70, 1, 21, 3, 33, 20, '37183', 79),
(71, 5, 43, 3, 67, 45, '52533', 75),
(72, 5, 43, 3, 67, 45, '52652', 82),
(73, 1, 21, 4, 47, 20, '29320', 69),
(74, 1, 21, 3, 47, 20, '45588', 77),
(75, 1, 21, 6, 47, 20, '29972', 81),
(76, 5, 43, 4, 67, 45, '61600', 83),
(77, 5, 43, 6, 67, 45, '08487', 86),
(79, 1, 21, 3, 28, 68, '61963', 61),
(80, 1, 21, 4, 62, 68, '28171', 63),
(81, 1, 53, 4, 48, 20, '94912', 95),
(82, 1, 21, 3, 47, 68, '88366', 73),
(83, 1, 21, 3, 62, 20, '02733', 106),
(84, 1, 21, 5, 47, 20, '93333', 108),
(85, 1, 21, 4, 28, 20, '66703', 85),
(86, 1, 53, 4, 48, 20, '11965', 87),
(87, 1, 53, 3, 48, 20, '83739', 88),
(88, 1, 21, 3, 33, 20, '09275', 90),
(89, 1, 21, 3, 33, 20, '22267', 93),
(90, 1, 21, 4, 28, 20, '09927', 78),
(91, 1, 21, 3, 62, 20, '47399', 89),
(92, 1, 21, 3, 62, 20, '19807', 94),
(93, 1, 21, 3, 62, 20, '06622', 96),
(95, 1, 21, 3, 33, 20, '14659', 102),
(97, 1, 21, 4, 62, 20, '29113', 107),
(98, 1, 21, 3, 62, 20, '20414', 104),
(99, 5, 43, 2, 67, 45, '01222', 17),
(100, 5, 43, 3, 67, 45, '55237', 30),
(101, 5, 43, 3, 67, 45, '75098', 110),
(102, 1, 21, 6, 47, 20, '70099', 109),
(103, 1, 21, 3, 28, 20, '57566', 91),
(104, 1, 21, 3, 28, 20, '56869', 97),
(105, 1, 21, 6, 28, 20, '14781', 98),
(106, 1, 21, 3, 28, 20, '38945', 99),
(107, 2, 60, 3, 38, 69, '69063', 27),
(108, 2, 60, 3, 38, 69, '11416', 34),
(109, 2, 60, 3, 36, 69, '78641', 35),
(110, 2, 60, 4, 36, 69, '14985', 37),
(111, 2, 60, 3, 38, 69, '89232', 41),
(112, 2, 60, 3, 36, 69, '64109', 100),
(113, 5, 43, 3, 67, 45, '27427', 111),
(114, 1, 21, 3, 62, 20, '41837', 113),
(115, 1, 21, 3, 17, 20, '69155', 92),
(116, 1, 21, 3, 47, 20, '76759', 114),
(117, 1, 21, 3, 47, 20, '53970', 112),
(118, 1, 21, 3, 17, 20, '61950', 116),
(119, 1, 21, 3, 33, 20, '09437', 115),
(120, 5, 70, 3, 66, 45, '24583', 117),
(121, 5, 70, 6, 66, 45, '82910', 118),
(122, 1, 21, 3, 47, 20, '32961', 119),
(123, 1, 21, 3, 17, 20, '62537', 120),
(124, 5, 70, 3, 67, 45, '47968', 121),
(125, 1, 21, 6, 47, 20, '77990', 134),
(126, 1, 21, 3, 17, 20, '47472', 139);

-- --------------------------------------------------------

--
-- Structure de la table `branche`
--

CREATE TABLE IF NOT EXISTS `branche` (
  `IdBranche` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleBranche` varchar(200) NOT NULL,
  `AdresseBranche` varchar(200) NOT NULL,
  `Telephone` varchar(30) NOT NULL,
  `Province` varchar(100) NOT NULL,
  `ResponsableAgence` varchar(50) NOT NULL,
  PRIMARY KEY (`IdBranche`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `branche`
--

INSERT INTO `branche` (`IdBranche`, `LibelleBranche`, `AdresseBranche`, `Telephone`, `Province`, `ResponsableAgence`) VALUES
(1, 'Victoire', 'NA', 'NA', 'KINSHASA', 'Bopol'),
(2, 'Ozone', 'NA', 'NA', 'KINSHASA', 'NA'),
(3, 'Goma', 'NA', 'NA', 'GOMA', 'NA'),
(4, 'Lubumbashi', 'NA', 'NA', 'Haut Katanga', 'NA'),
(5, 'Masina', 'NA', 'NA', 'KINSHASA', 'NA'),
(6, 'Direction Generale', 'NA', 'NA', 'KINSHASA', 'NA');

-- --------------------------------------------------------

--
-- Structure de la table `businessclient`
--

CREATE TABLE IF NOT EXISTS `businessclient` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nombusiness` varchar(500) NOT NULL,
  `AdresseBusiness` varchar(500) NOT NULL,
  `DureeBussnessAdresse` int(11) NOT NULL,
  `DureeBussness` int(11) NOT NULL,
  `TypeBussness` varchar(300) NOT NULL,
  `FormJuridique` varchar(500) NOT NULL,
  `SecteurActivite` varchar(500) NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCredit` varchar(300) NOT NULL,
  `DocAdmin` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Contenu de la table `businessclient`
--

INSERT INTO `businessclient` (`Id`, `Nombusiness`, `AdresseBusiness`, `DureeBussnessAdresse`, `DureeBussness`, `TypeBussness`, `FormJuridique`, `SecteurActivite`, `IdClientD`, `NumDossierCredit`, `DocAdmin`) VALUES
(13, 'MAISON KONGOLO', 'MARCHE DE LA LIBARATION', 2017, 2017, 'VENTE ACCESSOIRES DU MENAGE', 'Entreprise individuelle', 'KIT MENAGERS', 14, '46437', 'Autorisation_Ouverture'),
(14, 'Malachie4', 'Av/Kiyimbi num 6 Q/ MoloC/Lemba', 2024, 2023, 'Vente des jus en plastique', 'Entreprise individuelle', 'Commerce', 15, '66776', 'RCCM'),
(15, 'MAISON RACHEL BUSINESS', 'LUANZA 10 C/MAKALA', 2024, 2024, 'DEPOT JUS ET COUTURE ', 'Entreprise individuelle', 'COMMERCE ', 16, '15939', 'Aucun'),
(16, 'BIKU BISINESS', '2 D KITIMBU Q/VIVI C/MATETE', 2023, 2023, 'SHOP', 'Entreprise individuelle', 'TELECOMMUNICATION', 17, '01222', 'Autorisation_Ouverture'),
(17, 'KIESSE NA KIESSE', 'POPOKABA A11 Q/MATONGE 2 C/KALAMU', 2010, 2000, 'LOUNGE BAR ET HOTEL', 'Entreprise individuelle', 'NA', 18, '88721', 'RCCM'),
(18, 'HOTEL ESPACE NDEKA ', 'MBANDAKA 4 C/MAKALA', 2020, 2004, 'HOTEL', 'Entreprise individuelle', 'NA', 19, '33457', 'Aucun'),
(19, 'EARTH BUSINESS', 'ANCIENNE GALLERIE PRESIDENTIELLE LOCAL RCM 16', 2019, 2016, 'IMPRIMERIE ET AGENCE DE VOYAGE ', 'Entreprise individuelle', 'NA', 20, '38625', 'RCCM'),
(22, 'OPPROSE', '45 LISALA Q/KATANGA C/KASA VUBU', 2010, 2010, 'VENTE DIVERS', 'Entreprise individuelle', 'COMMERCE ', 23, '09263', 'RCCM'),
(23, 'LIFE COMPAGNIE', '159 ITAGA C/KINSHASA REF ITAGA FOOD MARKET ANCIEN BIAC', 2024, 2022, 'FABRICATION SAVON ET DIVERS', 'Entreprise individuelle', 'INDUSTRIEL', 24, '77829', 'RCCM'),
(24, '3H LES KAS', '17 DU FLEUVE Q/CPA MUSHIE C/ MONT NGAFULA', 7, 15, 'DEPOT JUS ET DIVERS', 'Entreprise individuelle', 'COMMERCE', 25, '23401', 'Autorisation_Ouverture'),
(25, 'EMMANUEL LUFU', '18 MUEMALIO Q/MOMBELE C/LIMETE', 2014, 2014, 'VENTE MECHES ET DIVERS', 'Entreprise individuelle', 'DIVERS', 26, '58355', 'Patente'),
(26, 'GENERATION FACEBOOK', 'DE L''ECOLE  148 Q/KINSUKA PECHEUR C/NGALIEMA', 8, 10, 'TERRASSE ', 'Entreprise individuelle', 'COMMERCE', 27, '69063', 'Autorisation_Ouverture'),
(28, 'NA', '11 MBANKANA Q/MOMBELE C/LIMETE', 2007, 2007, 'BOUTIQUE', 'Entreprise individuelle', 'ALIMENTATION', 29, '11973', 'Patente'),
(29, 'PLAN B ESPACE ARENA ', 'DE LA PAIX 131 Q/NSOLA C/KINSENSO  ', 2023, 2023, 'RESTAURANT', 'Entreprise individuelle', 'NA', 30, '55237', 'RCCM'),
(30, 'JOEL BUSINESS', '62 KIKWIT Q/YOLO SUD C/KALAMU', 2023, 2023, 'BOUTIQUE', 'Entreprise individuelle', 'ALIMENTATION', 31, '64281', 'Autorisation_Ouverture'),
(33, 'MAISON DE PEINTURE CHEZ ELIOT', 'AV NSUALA NÂ°12  Q/MFINDA C/NGALIEMA', 1, 6, 'MAISON DE PIENTURE ET PRODUIT CHIMIQUE', 'Entreprise individuelle', 'PIENTURE', 34, '11416', 'Autorisation_Ouverture'),
(34, 'MAISON DIEU EST GRAND', 'AV NSUALA NÂ°12  Q/MFINDA C/NGALIEMA', 17, 17, 'DEPOT JUS ET DIVERS', 'Entreprise individuelle', 'COMMERCE', 35, '78641', 'Autorisation_Ouverture'),
(35, 'MR SHONDA KOLOKADI LIKAL', '70 INGA Q/LUBUDI C/BANDALUNGWA', 2010, 2010, 'AGRICULTURE ET DIVERS', 'Entreprise individuelle', 'AGRICOLE', 36, '12780', 'RCCM'),
(36, 'LUYALA ET FILS ', 'MWEBA 1 Q/MAMA YEMO C/NGALIEMA ', 2023, 2022, 'QUINCAILLERIE', 'Entreprise individuelle', 'NA', 37, '14985', 'RCCM'),
(37, 'LES ETOILES BRILLANTES', '257 NYANGWE Q/LA VOIX DU PEUPLE C/LINGWALA', 2010, 2010, 'DEPOT BOISSON', 'Entreprise individuelle', 'CONSOMMATION', 38, '98277', 'Autorisation_Ouverture'),
(38, 'BOUTIQUE DU CIEL', 'FRONTIERE 3 Q/KAUKA C/KALAMU', 2009, 2009, 'BOUTIQUE', 'Entreprise individuelle', 'Commerce', 39, '05776', 'Autorisation_Ouverture'),
(39, 'LA FORTITUDE', '1 VICTOIRE Q/MATONGE C/KALAMU', 2020, 2015, 'VENTE TELEPHONE ACCESSOIRE ET DIVERS', 'Entreprise individuelle', 'COMMERCE', 40, '53837', 'RCCM'),
(40, 'MAISON KATIA', '80 OWALE Q/CPA C/MONT NGAFULA', 2, 5, 'DEPOT JUS ET BOISSONS', 'Entreprise individuelle', '8', 41, '89232', 'Autorisation_Ouverture'),
(41, 'AUTO EMILE', '50, VICTOIRE Q/KAUKA C/KALAMU', 2012, 2012, 'VENTE DE PIECE DE RECHANGE ', 'Entreprise individuelle', 'COMMERCE', 42, '91730', 'Autorisation_Ouverture'),
(42, 'CHEZ BIBI ', 'GAMA 1BIS Q/YOLO SUD C/KALAMU ', 2017, 2017, 'VIVRE FRAIS', 'Entreprise individuelle', 'NA ', 43, '39620', 'Autorisation_Ouverture'),
(43, 'SKY TEAM ONGLERIE ET COIFFURE', '09 BOMPETE Q/JAMAIQUE C/KINTAMBO', 2024, 2024, 'COIFFURE ET RESTAURATION', 'Entreprise individuelle', 'DIVERS', 44, '35731', 'Autorisation_Ouverture'),
(45, 'TONTON FUKA', 'CENTRAL 24 Q/KAUKA C/KALAMU', 2008, 1991, 'DEPOT TERASSE', 'Entreprise individuelle', 'NA', 46, '54122', 'Autorisation_Ouverture'),
(46, 'NA', 'Boulevard Salongo 7025 commune lemba', 2022, 2022, 'Revenus locatifs', 'Privee', 'Immobilier', 47, '59686', 'Aucun'),
(47, 'AICHA', 'Avenue DILOLO 88 Q/PENDE C/KINSHASA', 2014, 2014, 'Quincaillerie ', 'Entreprise individuelle', 'Prive', 49, '09804', 'RCCM'),
(48, 'ETS CARREFOUR XL', 'By pass numero 1311 commune de lembq', 2019, 2019, 'Salle de fete', 'Entreprise individuelle', 'Service', 50, '60198', 'RCCM'),
(49, 'OSCAR CENTER', 'MPOZO A 34', 2017, 2014, 'QUINCAILLERIE', 'Entreprise individuelle', 'NA', 53, '70495', 'Autorisation_Ouverture'),
(51, 'MLB', 'Av.Lodja 20, Q/Lodja, C/Kasa-vubu', 2024, 2004, 'Terrasse et restaurant ', 'Entreprise individuelle', 'Commerce ', 55, '16424', 'Autorisation_Ouverture'),
(53, 'BOUTIQUE FILS K', '1 MUKILA Q/NZADI C/LIMETE', 2019, 2019, 'BOUTIQUE', 'Entreprise individuelle', 'COMMERCE', 57, '97984', 'Autorisation_Ouverture'),
(55, 'ETS KITUMAINI', 'C/ Limete 15 ieme Rue Q/ industriel', 2021, 2020, 'Boulangerie', 'Entreprise individuelle', 'Commerce', 59, '12335', 'RCCM'),
(57, 'BOUTIQUE', 'KIDODA/BUKAMA C/LINGWALA', 2022, 2022, 'BOUTIQUE', 'Entreprise individuelle', 'ALIMENTAIRE', 61, '61963', 'Autorisation_Ouverture'),
(58, 'MAISON ADONAI ', 'DE LA NATION 11 Q/REVOLUTION C/GOMBE ', 2022, 2015, 'VENTE DE JUS ', 'Entreprise individuelle', 'NA ', 62, '63194', 'Autorisation_Ouverture'),
(59, 'DIASO AGRO GROUPE', 'YUMBI 2 Q/IMMO CONGO C/KALAMU', 2023, 2022, 'AGRO-INDUSTRIE', 'Entreprise individuelle', 'NA', 63, '28171', 'RCCM'),
(61, 'MONTAGNE GARIZIME', 'BAS CONGO 917 C/GOMBE REF/DERRIERE L''IMMEUBLE EQUITY BCDC BOULEVARD DU 30 JUIN', 2025, 2014, 'VENTE TAPIS EXPLOITATION MINIERE ', 'Entreprise individuelle', 'NA', 65, '19956', 'RCCM'),
(62, 'ETABLISSEMENT GB PRO', 'LOMBI 7 Q/MOLO C/LEMBA REF/STATION SALONGO', 2018, 2014, 'AGENCE DE COMMUNICATION ET DIVERS ', 'Entreprise individuelle', 'NA', 66, '32238', 'RCCM'),
(63, 'Hotel 4 saisons', 'Av du stade n 28 Q/Matonge C/kalamu', 25, 25, 'Terrasse et hotel', 'Entreprise individuelle', 'Hotelerie', 68, '24682', 'Autorisation_Ouverture'),
(64, 'Obiloy motors ', 'Av.Eyala 43, Q/Ancien combattant,  C/kasa-vubu', 2014, 2000, 'Ventes piÃ¨ces de rechange ', 'Entreprise individuelle', 'Commerce ', 69, '29320', 'RCCM'),
(65, 'DANNY BUSINESS', 'DU FLEUVE 2 Q/MOTEL FIKIN C/LIMETE ', 2019, 2019, 'TRANSPORT ', 'Entreprise individuelle', 'NA', 70, '73520', 'Aucun'),
(68, 'MAISON MAMIE', '23 IKELEMBA Q/ANCIEN COMBATTANT C/KASA VUBU DIRECTION ETSHOPIE ', 2016, 2013, 'VIVRES FRAIS', 'Entreprise individuelle', 'COMMERCE ', 73, '88366', 'Autorisation_Ouverture'),
(69, 'ETS BASI ', 'LUANZA 15 Q/MIKASI C/MAKALA ', 2024, 2021, 'QUINCAILLERIE ', 'Entreprise individuelle', 'NA', 74, '26649', 'RCCM'),
(70, 'BENI KABELO', 'TOMBA NÂ°9689/MARCHE DE MATETE. REF: ROND-POINT EKEKO Ã? CÃ?TÃ? DE LA RAWBANK', 2021, 2015, 'Maison kabelo et divers', 'Privee', 'Matete', 75, '52533', 'Autorisation_Ouverture'),
(71, 'SMAK graphic', 'Av. Victoire 78 bis, Q/Salongo,  C/Kasa-vubu', 2017, 2007, 'Imprimerie et art graphique ', 'Entreprise individuelle', 'Commerce ', 77, '45588', 'RCCM'),
(72, 'ETS LA GRACE', 'GALERIE DU GRAND MARCHE CROISEMENT COMMERCE DU MARRAIN', 2024, 2024, 'VENTE TISSUS, VESTE ET TAPIS', 'Entreprise individuelle', 'DIVERS', 78, '09927', 'RCCM'),
(73, 'NERI BUSINESS', '23628 8 EME RUE', 2014, 2014, 'VENTE HUILE DE PALME', 'Entreprise individuelle', 'INDUSTRIEL', 79, '37183', 'Patente'),
(75, 'EloÃ¯m', 'Av. Maringa 01, Q/AC, C/Kasa-vubu, 2e Lopori 01, Matongue, C/kalamu ', 2019, 2016, 'vente des accessoires telephone et jeux videos.', 'Entreprise individuelle', 'Commerce ', 81, '29972', 'RCCM'),
(76, 'Maison  MONT-HOREB', 'NDJOKO N 01 Q NGAMPANI', 2020, 2020, 'Vente Aliment pour Betail', 'Privee', 'KIMBANSEKE ', 82, '52652', 'Patente'),
(77, 'Maison Ã?lectronique La GrÃ¢ce Divine ', 'BVD LUNUNGU N 46 Q SANS FIL C MAS', 2023, 2015, 'Maison Ã?lectronique ', 'Privee', 'Masina', 83, '61600', 'Autorisation_Ouverture'),
(79, 'CHEZ MAMAN DETTY ', 'JUSTICE 2838 C/GOMBE ', 2024, 2023, 'DEPOT BOISSON', 'Entreprise individuelle', 'NA', 85, '66703', 'Autorisation_Ouverture'),
(80, 'FLAT HOTEL  ET  COLLEGE LES PETITS JOYEUX  COMPLEXE SCOLAIRE REAL UNIVERS ', 'AV MONTALI N 16 Q TALANGAI C NSELE AV KIBOBA N 5 Q LEGOS C NSELE', 2014, 2010, 'ECOLES ET FLAT HOTEL', 'Privee', 'NSELE', 86, '08487', 'Autorisation_Ouverture'),
(81, 'COOP NDE MERDI', 'Av. Okito 13, Q/résidentiel.', 2024, 2024, 'SALON DE COIFFURE', 'Entreprise individuelle', 'COIFFURE', 87, '11965', 'RCCM'),
(82, 'SHOP ABDIAS', '38 BAY PASS', 2018, 2018, 'SHOP', 'Entreprise individuelle', 'TELECOMMUNICATION', 88, '83739', 'Autorisation_Ouverture'),
(83, 'DIEU MERCI', '02 BOLIA Q/MATONGE C/KALAMU', 2020, 2020, 'BOUTIQUE', 'Entreprise individuelle', 'ALIMENTATION', 89, '47399', 'Autorisation_Ouverture'),
(84, 'BISEBA BUSINESS', '356 PETIT BOULEVARD Q/RESIDENTIEL C/LIMETE', 2021, 2021, 'DEPOT POISSON, RESTAURATION', 'Entreprise individuelle', 'ALIMENTATION', 90, '09275', 'RCCM'),
(85, 'ONCTION DIVINE ', 'KATO 52 Q/MADIMBA C/KINSHASA ', 2022, 2021, 'VENTE BASKET HOMME ET FEMME', 'Entreprise individuelle', 'NA', 91, '57566', 'RCCM'),
(86, 'GRANDEUR PLUS', 'KULUMBA 81 Q/MI NDOMBE C/BUMBU ', 2024, 2022, 'PHARMACIE', 'Entreprise individuelle', 'NA', 92, '69155', 'Autorisation_Ouverture'),
(87, 'BOUTIQUE SS SHOPING ', 'KINGABWA 3117 Q/KINGABWA C/LIMETE ', 2024, 2017, 'BOUTIQUE ', 'Entreprise individuelle', 'NA ', 93, '22267', 'Autorisation_Ouverture'),
(88, 'J-KA FOOD', 'CYPRES 34 BIS Q/KAUKA C/KALAMU', 2022, 2016, 'BOUTIQUE ET DIVERS ', 'Entreprise individuelle', 'NA', 94, '19807', 'RCCM'),
(89, 'Salon Dada', 'Lushasha numero 84/115', 2020, 2009, 'Salon de coiffure', 'Entreprise individuelle', 'Service', 95, '94912', 'RCCM'),
(90, 'HB', 'LUKUMBE 24 Q/YOLO SUD C/KALAMU', 2025, 2021, 'SHOP DEPOT JUS ET DIVERS', 'Entreprise individuelle', 'NA', 96, '06622', 'Autorisation_Ouverture'),
(91, 'PSAUMES 23', '68 ITAGA Q/MADIMBA C/KINSHASA', 2020, 2020, 'VENTE CHAUSSURES DAMES', 'Entreprise individuelle', 'HABILLEMENT', 97, '56869', 'Autorisation_Ouverture'),
(92, 'BOUTIQUE DERICK', '64 LAC MOERO Q/MADIMBA C/KINSHASA', 2015, 2015, 'BOUTIQUE', 'Entreprise individuelle', 'HABILEMENT', 98, '14781', 'Autorisation_Ouverture'),
(93, 'CHEZ MERE ABE', '91 KATO C/KINSHASA', 2018, 2012, 'VENTE BABOUCHES ', 'Entreprise individuelle', 'COMMERCE ', 99, '38945', 'RCCM'),
(94, 'MAISON EBENZER', 'AV NATIONS UNIES NÂ°8 Q/MAMAN MOBUTU C/MONT NGAFULA', 2, 2, 'TERRASSE ET DIVERS', 'Entreprise individuelle', 'ALIMENTAIRE', 100, '64109', 'Autorisation_Ouverture'),
(96, 'SHOP DIEU MERCIE', '21 BIS FORGERON Q/INDUSTRIEL C/LIMETE ', 2023, 2023, 'SHOP ', 'Entreprise individuelle', 'COMMERCE', 102, '14659', 'Autorisation_Ouverture'),
(98, 'Vente jus exode 14 ,14', 'Av dispensaire n 19 Q/kauka c/kalamu', 2024, 2024, 'Vente de juset divers', 'Entreprise individuelle', 'Commerce', 104, '20414', 'Autorisation_Ouverture'),
(99, 'London city', 'Av Mbidi n 5744 Q/lingwala C/Bandalungwa', 2019, 2010, 'Terrasse et hotel', 'Entreprise individuelle', 'Commerce', 106, '02733', 'Autorisation_Ouverture'),
(100, 'H PRO', 'IREBU A9 Q/MATONGE C/KALAMU ', 2025, 2024, 'VENTE MOTOS ', 'Entreprise individuelle', 'NA', 107, '29113', 'RCCM'),
(101, 'AMAB Motors', 'Av. Lopori 46, AC, Kasa-vubu', 2000, 2000, 'Ventes piÃ¨ces de rechange ', 'Entreprise individuelle', 'Commerce ', 108, '93333', 'RCCM'),
(102, 'MAISON JEMERA', '98 KATO', 2021, 2021, 'VENTE BABOUCHES DAMES ET BASKETS', 'Entreprise individuelle', 'HABILLEMENT', 109, '70099', 'Autorisation_Ouverture'),
(103, 'GUYSIE ET FILS', 'A L INTERIEUR DE L ABATTOIR KIOSQUE 1 AV MOBUTU C MASINA', 2014, 2011, 'TERRASSE ', 'Entreprise individuelle', 'MASINA ', 110, '75098', 'RCCM'),
(104, 'MAISON JDT', 'TOMBA N 9689/MARCHE DE MATETE. REF: ROND-POINT EKEKO A COTE DE LA RAWBANK', 2023, 2008, 'Vente KABELO ', 'Entreprise individuelle', 'Matete', 111, '27427', 'Autorisation_Ouverture'),
(105, 'SHOP LIFE MUTLTI SERVICE', '152 KOLA Q/SAIO C/NGIRI NGIRI', 2024, 2018, 'SHOP', 'Entreprise individuelle', 'COMMERCE', 112, '53970', 'Autorisation_Ouverture'),
(106, 'TA GRACE ME SUFFIT', '22 KAPELA Q/YOLO NORD C/KALAMU', 2023, 2023, 'DEPOT JUS', 'Entreprise individuelle', 'DIVERS', 113, '41837', 'RCCM'),
(107, 'MAISON DU BONHEUR', '34 BUSU MELO C/KASA VUBU', 2024, 2024, 'TERRASSE', 'Entreprise individuelle', 'DIVERS', 114, '76759', 'Autorisation_Ouverture'),
(108, 'NA', 'NDJOKU 25 BIS Q/NDANU C/LIMETE', 2015, 2015, 'IMMOBILIER', 'Entreprise individuelle', 'NA', 115, '09437', 'Fiche_ParcelLaire'),
(109, 'TERRASSE CHEZ ROLEX', '234 BIS BUNGU Q/MAKELELE C/BANDALUGWA', 2020, 2020, 'TERRASSE', 'Entreprise individuelle', 'DIVERS', 116, '61950', 'Autorisation_Ouverture'),
(110, 'Ã?vangile de lâ??Ã©ternel', 'Av.dispensaire nÂ°83 Q/2C/masina', 6, 25, 'Vivre frais ', 'Entreprise individuelle', 'Alimentaire ', 117, '24583', 'Autorisation_Ouverture'),
(111, 'Boulangerie Tina la grace ', 'Zola nÂ°6 Q.malonda c. Kimbanseke', 10, 10, 'Boulangerie ', 'Entreprise individuelle', 'Production ', 118, '82910', 'Autorisation_Ouverture'),
(112, 'EST KOKIBALI', 'BOLIA 50 Q/MATONGE C/KALAMU', 2018, 2018, 'TERASSE ', 'Entreprise individuelle', 'NA', 119, '32961', 'RCCM'),
(113, 'IMMOBILIER', '52 KULUMBA Q/UBANGI C/BUMBU', 2024, 2024, 'IMMOBILIER', 'Entreprise individuelle', 'IMMOBILIER', 120, '62537', 'Fiche_ParcelLaire'),
(114, 'HUGO BUSINESS ', 'AV KISANTU 3 N 57 Q 1 C NDJILI', 2022, 2010, 'Entreprise de sous traitance', 'Entreprise individuelle', 'NDJILI ', 121, '47968', 'Autorisation_Ouverture'),
(115, 'DEGALION', 'ITAGA 86 C/KINSHASA', 2020, 2020, 'VENTE HABITS', 'Entreprise individuelle', 'NA', 122, '68514', 'RCCM'),
(116, 'CAROLE-G', '22 TROIS VALLEES Q/JOLIE PARC C/NGALIEMA', 2023, 2023, 'TRANSPORT', 'Entreprise individuelle', 'TRANSPORT', 123, '93990', 'RCCM'),
(117, 'MERCI POUR TOUT BOUTIQUE ', '76 BAMBOMA Q/BISENGO C/BANDALUNGWA ', 2023, 2015, 'BOUTIQUE ET VIVRES FRAIS', 'Entreprise individuelle', 'COMMERCE ', 124, '74556', 'Autorisation_Ouverture'),
(118, 'MERVEIL BUSINESS', 'KABINDA 66 Q/BOYOMA C/KINSHASA', 2023, 2023, 'VENTE DES HABITS ET TERASSE', 'Entreprise individuelle', 'NA', 125, '86196', 'RCCM'),
(119, 'MAISON BON PRIX', '9 MITELE Q/RESIDENTIEL 13EME RUE C/LIMETE ', 2023, 2023, 'ALIMENTATION', 'Entreprise individuelle', 'COMMERCE', 126, '71631', 'Autorisation_Ouverture'),
(120, 'MONGALA BUSINESS', '02 LUKALA Q/RIGHINI C/LEMBA', 2022, 2022, 'ALIMENTATION', 'Entreprise individuelle', 'COMMERCE', 127, '83113', 'RCCM'),
(121, 'BETS MARJIM BUSINESS', 'IMMEUBLE EMPIRE AV/LIBERATION 8481', 2021, 2021, 'SALON DE BEAUTE', 'Entreprise individuelle', 'NA', 128, '44860', 'RCCM'),
(122, 'BOUTIQUE ETOILE DU MONDE', 'FORGERON 2 Q/INDUSTRIEL C/LIMETE', 2024, 2024, 'BOUTIQUE ', 'Entreprise individuelle', 'NA', 129, '22350', 'Autorisation_Ouverture'),
(123, 'NA', '102 BIS PANZI Q/ASSOSSA C/NGIRI NGIRI ', 2018, 2018, 'LOYER PERCU', 'Entreprise individuelle', 'COMMERCE', 130, '65565', 'Fiche_ParcelLaire'),
(124, 'BOUTIQUE DIEU AGIT', 'TONGANI 2 Q/MOSOSO C/LIMETE', 2008, 2005, 'BOUTIQUE', 'Entreprise individuelle', 'NA', 131, '02898', 'Autorisation_Ouverture'),
(125, 'DEPOT KBG', 'VUNDULU 59 Q/KONDE C/SELEMBAO', 1996, 1996, 'VENTE BOIS', 'Entreprise individuelle', 'NA', 132, '43876', 'Autorisation_Ouverture'),
(126, 'ETS NS ', 'BOLOBO 110 Q/PENDE Q/KINSHASA', 2024, 2024, 'VENTE JUS EN PLASTIQUE', 'Entreprise individuelle', 'NA', 133, '14558', 'Autorisation_Ouverture'),
(127, 'JOUMA', 'KATO 101, Q/MADIMBA, C/KINSHASA', 2018, 2007, 'VENTE PAGNES NEUFS', 'Entreprise individuelle', 'COMMERCE', 134, '77990', 'RCCM'),
(128, 'L ARBRE DE VIE', '28 LOPORI Q/ANCIEN COMBATTANT C/KASA VUBU ', 2020, 2020, 'CHAMBRE FROIDE ', 'Entreprise individuelle', 'COMMERCE', 135, '77660', 'Autorisation_Ouverture'),
(129, 'ESPACE PATRICK NGOYO', 'AV NTOTO N 2 Q KINGASANI C KIMBANSEKE NON LOIN DE LA MAISON COMMUNALE DE KIMBANSEKE ', 2023, 2019, 'TERRASSE ET DIVERS ', 'Entreprise individuelle', 'KIMBANSEKE ', 136, '80759', 'Autorisation_Ouverture'),
(130, 'LES DEUX SOEURS', 'BLVD LUMUMBA N 23 Q CICOTRA LOKALI C NSELE ARRET  SABRINA', 2023, 2013, 'DEPOT ET TERRASSE ', 'Entreprise individuelle', 'NSELE', 137, '55524', 'Autorisation_Ouverture'),
(131, 'HOTEL LA GLOIRE ', 'AV WAMBA N 38 Q NTUENGE C MASINA PASCAL ', 2015, 2015, 'HOTEL ', 'Entreprise individuelle', 'MASINA ', 138, '50275', 'Autorisation_Ouverture'),
(132, 'MB BUSINESS', '16th street, Limete', 2016, 2014, 'BOUTIQUE', 'Entreprise individuelle', 'AUTRES', 139, '47472', 'Autorisation_Ouverture'),
(133, 'MB BUSINESS', '16th street, Limete', 2014, 2013, 'BOUTIQUE', 'Entreprise individuelle', 'AUTRES', 140, '26809', 'Autorisation_Ouverture'),
(134, 'MB BUSINESS', '16th street, Limete', 2016, 2013, 'BOUTIQUE', 'Entreprise individuelle', 'AUTRES', 141, '40789', 'RCCM');

-- --------------------------------------------------------

--
-- Structure de la table `businessoneachatproduitprincipaux`
--

CREATE TABLE IF NOT EXISTS `businessoneachatproduitprincipaux` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleProduitPrincipaux` varchar(200) NOT NULL,
  `FrequenceMensuelle` int(11) NOT NULL,
  `QteParAchat` int(11) NOT NULL,
  `AchatMensuel` double NOT NULL,
  `VenteMensuel` double NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  `PA` double NOT NULL,
  `PV` double NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=94 ;

--
-- Contenu de la table `businessoneachatproduitprincipaux`
--

INSERT INTO `businessoneachatproduitprincipaux` (`Id`, `LibelleProduitPrincipaux`, `FrequenceMensuelle`, `QteParAchat`, `AchatMensuel`, `VenteMensuel`, `IdClientD`, `NumDossierCre`, `PA`, `PV`) VALUES
(5, 'Inox', 8, 5, 2400, 3800, 49, '09804', 60, 95),
(6, 'Moto pompe', 4, 2, 960, 1600, 49, '09804', 120, 200),
(7, 'Cable deux demi', 16, 10, 3200, 4800, 49, '09804', 20, 30),
(8, 'Cable un demi', 16, 10, 2400, 3200, 49, '09804', 15, 20),
(9, 'Eau', 2, 50, 200, 300, 16, '15939', 2, 3),
(10, 'Jus', 2, 50, 200, 400, 16, '15939', 2, 4),
(11, 'Semoules Master', 8, 120, 12480, 17280, 23, '09263', 13, 18),
(12, 'Huile avena', 4, 16, 2560, 2880, 23, '09263', 40, 45),
(13, 'Lait bondia', 2, 100, 20600, 23000, 23, '09263', 103, 115),
(14, 'Huile simba', 1, 180, 8100, 8820, 23, '09263', 45, 49),
(15, 'Semoule rosibien', 3, 100, 3000, 5400, 23, '09263', 10, 18),
(16, 'PERUQUE LONGUE ROUGE', 4, 13, 4940, 6240, 75, '52533', 95, 120),
(17, 'CATALINA MAYI', 3, 20, 900, 1200, 75, '52533', 15, 20),
(18, 'PETIT BOUCLE MOYEN', 2, 18, 2160, 2520, 75, '52533', 60, 70),
(19, 'PLANTES', 1, 55, 440, 550, 75, '52533', 8, 10),
(20, 'CLOSIR', 1, 25, 150, 250, 75, '52533', 6, 10),
(21, 'ASPIRINE', 1, 80, 400, 640, 75, '52533', 5, 8),
(22, 'KIKI ET MAYI', 1, 6, 780, 900, 75, '52533', 130, 150),
(23, 'MAYI COURTE', 1, 13, 390, 520, 75, '52533', 30, 40),
(24, 'VIETNAM', 1, 8, 640, 800, 75, '52533', 80, 100),
(25, 'Son de bleu', 4, 20, 400, 560, 82, '52652', 5, 7),
(26, 'Son de mais', 4, 15, 600, 1200, 82, '52652', 10, 20),
(27, 'Aliment poulet', 4, 12, 960, 1056, 82, '52652', 20, 22),
(28, 'Poso ya nguba', 4, 5, 200, 260, 82, '52652', 10, 13),
(29, 'AIMA120W', 2, 9, 270, 360, 83, '61600', 15, 20),
(30, 'BAFFLE RETOUR', 2, 3, 600, 960, 83, '61600', 100, 160),
(31, 'DRUME', 2, 3, 1800, 2400, 83, '61600', 300, 400),
(32, 'EQUALISEUR', 2, 7, 1050, 1400, 83, '61600', 75, 100),
(33, 'MICRO VHF 555', 2, 6, 600, 840, 83, '61600', 50, 70),
(34, 'MICRO VOCAL', 2, 3, 240, 420, 83, '61600', 40, 70),
(35, 'POWER 5500', 1, 3, 1200, 1500, 83, '61600', 400, 500),
(36, 'POWER 6600', 1, 9, 4500, 5850, 83, '61600', 500, 650),
(37, 'TAMTAM', 1, 3, 1050, 1275, 83, '61600', 350, 425),
(38, 'QUIDARD SOLO', 1, 4, 400, 600, 83, '61600', 100, 150),
(39, 'QUIDARD BASS', 1, 2, 220, 350, 83, '61600', 110, 175),
(40, 'BATTERIE 120 A', 2, 40, 5760, 8640, 69, '29320', 72, 108),
(41, 'BATTERIE 90 A', 1, 50, 2700, 4050, 69, '29320', 54, 81),
(42, 'BATTERIE 150 A', 1, 60, 5400, 8100, 69, '29320', 90, 135),
(43, 'POMPE A HUILE', 2, 200, 16000, 28000, 69, '29320', 40, 70),
(44, 'TRANSMISSION', 2, 150, 4200, 11100, 69, '29320', 14, 37),
(47, 'LIKOFI', 8, 10, 1200, 1680, 55, '16424', 15, 21),
(48, 'PETIT COCA', 12, 12, 1584, 1728, 55, '16424', 11, 12),
(49, 'GRAND COCA', 4, 10, 480, 840, 55, '16424', 12, 21),
(50, 'NKOYI', 8, 12, 1440, 1824, 55, '16424', 15, 19),
(51, 'Jus', 2, 100, 400, 600, 31, '64281', 2, 3),
(52, 'Eau', 2, 100, 400, 600, 104, '20414', 2, 3),
(53, 'Jus', 3, 100, 600, 1200, 104, '20414', 2, 4),
(54, 'Epices', 8, 1, 800, 1200, 104, '20414', 100, 150),
(55, '33 EXPORT', 4, 11, 836, 1100, 30, '55237', 19, 25),
(56, 'CASTEL', 4, 11, 836, 1100, 30, '55237', 19, 25),
(57, 'NKOYI', 2, 15, 420, 510, 30, '55237', 14, 17),
(58, 'TEMBO', 1, 11, 187, 231, 30, '55237', 17, 21),
(59, 'TURBO', 2, 10, 320, 420, 30, '55237', 16, 21),
(60, 'DOPEL', 1, 7, 133, 175, 30, '55237', 19, 25),
(61, 'COCA', 2, 6, 144, 252, 30, '55237', 12, 21),
(62, 'CD PLAY 4', 1, 200, 2400, 5000, 81, '29972', 12, 25),
(63, 'PLAY 3', 4, 20, 4000, 12800, 81, '29972', 50, 160),
(64, 'DISPLAY IPHONE 11 PROMAX', 1, 150, 750, 1050, 81, '29972', 5, 7),
(65, 'DISPLAY CAMON 30', 1, 300, 1800, 3300, 81, '29972', 6, 11),
(66, 'DISPLAY TECHNO', 1, 300, 1800, 2700, 81, '29972', 6, 9),
(67, 'COMPRESSEUR BALLON', 1, 18, 6300, 15120, 108, '93333', 350, 840),
(68, 'MOTEUR TURBO RANGE ROVER EVOC', 1, 6, 4200, 9600, 108, '93333', 700, 1600),
(69, 'RADIATEUR 2014', 1, 15, 2700, 5475, 108, '93333', 180, 365),
(70, 'TURBO RV TDI 300', 1, 12, 4440, 9360, 108, '93333', 370, 780),
(71, 'casiers bierre', 15, 500, 112500, 150000, 18, '88721', 15, 20),
(72, 'casiers sucre', 20, 300, 60000, 78000, 18, '88721', 10, 13),
(73, 'Carton Mipazi', 24, 1380, 761760, 828000, 117, '24583', 23, 25),
(74, 'Mikongo', 24, 640, 245760, 291840, 117, '24583', 16, 19),
(75, 'Cuise', 24, 810, 388800, 447120, 117, '24583', 20, 23),
(76, 'Carton Mipazi', 12, 1380, 380880, 414000, 117, '24583', 23, 25),
(77, 'Castel', 20, 5, 1800, 2200, 106, '02733', 18, 22),
(78, 'SANDALE HERMOSA', 8, 20, 28800, 33600, 109, '70099', 180, 210),
(79, 'BABOUCHE ADDIDAS', 12, 20, 12000, 15600, 109, '70099', 50, 65),
(80, 'SANDALE BAIZOLE', 8, 10, 9600, 12000, 109, '70099', 120, 150),
(81, 'SANDALE JT5037H', 12, 24, 30240, 38880, 109, '70099', 105, 135),
(82, 'SANDALE JT5529 A-1', 12, 12, 17280, 21600, 109, '70099', 120, 150),
(83, 'DEMI-SUPER', 12, 13, 1560, 1872, 134, '77990', 10, 12),
(84, 'WAX HOLLANDAISE', 12, 15, 2160, 2700, 134, '77990', 12, 15),
(85, 'GRAND SUPER', 16, 20, 5120, 6400, 134, '77990', 16, 20),
(86, 'PAGNE EDITION', 16, 22, 4224, 5280, 134, '77990', 12, 15),
(87, 'GRAND SUPER VLISCO', 12, 12, 2592, 3600, 134, '77990', 18, 25),
(88, 'BEAUFORT', 16, 10, 2880, 3840, 119, '32961', 18, 24),
(89, 'CASTEL', 16, 5, 1440, 1920, 119, '32961', 18, 24),
(90, 'TURBO', 12, 6, 1080, 1512, 119, '32961', 15, 21),
(91, 'LEGENDE', 16, 8, 2304, 2688, 119, '32961', 18, 21),
(92, 'NKOYI', 12, 7, 1092, 1428, 119, '32961', 13, 17),
(93, 'LAIT NIDO', 12, 5, 900, 1080, 139, '47472', 15, 18);

-- --------------------------------------------------------

--
-- Structure de la table `businessoneactifdette`
--

CREATE TABLE IF NOT EXISTS `businessoneactifdette` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CashBusiness` int(11) NOT NULL,
  `CashBanque` int(11) NOT NULL,
  `DetteCourTerme` int(11) NOT NULL,
  `Meubles` int(11) NOT NULL,
  `Vehicule` int(11) NOT NULL,
  `Autres` int(11) NOT NULL,
  `CashMaison` int(11) NOT NULL,
  `Creances` int(11) NOT NULL,
  `DetteLongTerme` int(11) NOT NULL,
  `Equipementoutils` int(11) NOT NULL,
  `LocalCommercial` int(11) NOT NULL,
  `IdclientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Contenu de la table `businessoneactifdette`
--

INSERT INTO `businessoneactifdette` (`Id`, `CashBusiness`, `CashBanque`, `DetteCourTerme`, `Meubles`, `Vehicule`, `Autres`, `CashMaison`, `Creances`, `DetteLongTerme`, `Equipementoutils`, `LocalCommercial`, `IdclientD`, `NumDossierCre`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 142, 0, 200, 420, 16, '15939'),
(2, 0, 0, 0, 0, 0, 1500, 850, 0, 0, 0, 0, 49, '09804'),
(3, 120, 0, 0, 0, 0, 0, 0, 0, 0, 500, 1350, 15, '66776'),
(4, 1500, 0, 0, 2500, 8500, 0, 0, 0, 0, 2600, 0, 68, '24682'),
(5, 0, 0, 0, 1500, 4000, 0, 0, 0, 0, 1000, 0, 47, '59686'),
(6, 1158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, '09263'),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 3700, 75, '52533'),
(8, 1500, 0, 0, 0, 0, 0, 250, 0, 0, 0, 600, 82, '52652'),
(9, 2500, 0, 0, 0, 0, 0, 0, 0, 0, 600, 0, 83, '61600'),
(10, 750, 0, 0, 0, 0, 2100, 0, 0, 0, 800, 0, 69, '29320'),
(11, 0, 0, 0, 800, 0, 0, 0, 0, 0, 0, 0, 50, '60198'),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1622, 0, 55, '16424'),
(13, 0, 0, 0, 60, 0, 0, 500, 0, 0, 1200, 0, 31, '64281'),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15400, 0, 77, '45588'),
(15, 300, 0, 0, 2, 0, 640, 0, 0, 0, 200, 0, 104, '20414'),
(16, 0, 0, 0, 500, 0, 0, 250, 0, 0, 600, 0, 110, '75098'),
(17, 380, 0, 0, 0, 0, 0, 0, 0, 0, 580, 0, 81, '29972'),
(18, 280, 0, 0, 0, 0, 2400, 0, 0, 6645, 750, 0, 108, '93333'),
(19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, '27427'),
(20, 750, 303, 0, 4600, 0, 0, 0, 0, 0, 4000, 0, 18, '88721'),
(21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, '55237'),
(22, 0, 4000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, '08487'),
(23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 117, '24583'),
(24, 0, 0, 0, 0, 3000, 0, 0, 0, 0, 0, 0, 121, '47968'),
(25, 0, 2000, 0, 1800, 0, 0, 0, 0, 0, 600, 0, 106, '02733'),
(26, 8850, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109, '70099'),
(27, 2500, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 134, '77990'),
(28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1340, 0, 119, '32961'),
(29, 100, 200, 0, 3000, 0, 0, 15, 0, 0, 1000, 1000, 139, '47472');

-- --------------------------------------------------------

--
-- Structure de la table `businessoneautrestock`
--

CREATE TABLE IF NOT EXISTS `businessoneautrestock` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleProduitAS` varchar(200) NOT NULL,
  `QteProduitAS` int(11) NOT NULL,
  `PrixAchatAS` double NOT NULL,
  `PrixVenteAS` double NOT NULL,
  `MargeAS` double NOT NULL,
  `ValeurStockAS` double NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `businessoneautrestock`
--

INSERT INTO `businessoneautrestock` (`Id`, `LibelleProduitAS`, `QteProduitAS`, `PrixAchatAS`, `PrixVenteAS`, `MargeAS`, `ValeurStockAS`, `IdClientD`, `NumDossierCre`) VALUES
(1, 'GlaciÃ¨re ', 52, 27, 35, 0.22857142857142854, 1404, 23, '09263'),
(2, 'GlaciÃ¨re petit ', 12, 17, 25, 0.31999999999999995, 204, 23, '09263'),
(3, 'Chaises Ã©lÃ©phants ', 39, 7, 13, 0.46153846153846156, 273, 23, '09263'),
(4, 'Petit bassin ', 27, 5, 11, 0.5454545454545454, 135, 23, '09263'),
(5, 'Marmite complet ', 17, 43, 67, 0.35820895522388063, 731, 23, '09263'),
(6, 'Assiettes belle vie', 66, 53, 75, 0.29333333333333333, 3498, 23, '09263'),
(7, 'Thermos grd ', 26, 2, 5, 0.6, 52, 23, '09263'),
(8, 'pochette samsung S128', 264, 3, 7, 0.5714285714285714, 792, 81, '29972'),
(9, 'BATTERIE IPHONE12', 164, 8, 22, 0.6363636363636364, 1312, 81, '29972'),
(10, 'BATTERIE IPHONE 13 PRO MAX', 96, 11, 25, 0.56, 1056, 81, '29972'),
(11, 'BATTERIE IPHONE 10', 247, 4, 12, 0.6666666666666667, 988, 81, '29972'),
(12, 'BATTERIE INFINIX HOPE 10', 128, 6, 24, 0.75, 768, 81, '29972'),
(13, 'DISPLAY INFINIX HOP 10', 136, 3, 15, 0.8, 408, 81, '29972'),
(14, 'DISPLAY SAMSUNG A 36', 89, 65, 145, 0.5517241379310345, 5785, 81, '29972'),
(21, 'Autres bierres', 10, 100, 170, 0.4117647058823529, 1000, 106, '02733'),
(22, 'SANDALE AT8901-1', 120, 125, 150, 0.16666666666666663, 15000, 109, '70099'),
(23, 'SANDALE AT 8901-3', 45, 180, 200, 0.09999999999999998, 8100, 109, '70099'),
(24, 'SANDALE AT 3005-8', 55, 180, 200, 0.09999999999999998, 9900, 109, '70099'),
(25, 'BABOUCHE K-61', 22, 57, 60, 0.050000000000000044, 1254, 109, '70099'),
(26, 'BABOUCHE K-62', 37, 57, 60, 0.050000000000000044, 2109, 109, '70099'),
(27, 'DEMI-SUPER', 3020, 10, 12, 0.16666666666666663, 30200, 134, '77990'),
(28, 'WAX HOLLANDAISE', 1540, 9, 11, 0.18181818181818177, 13860, 134, '77990'),
(29, 'HEINEKEN PETIT', 22, 18, 21, 0.1428571428571429, 396, 119, '32961'),
(30, 'TEMBO', 18, 15, 21, 0.2857142857142857, 270, 119, '32961'),
(31, 'GRD HEINEKEN', 17, 18, 21, 0.1428571428571429, 306, 119, '32961');

-- --------------------------------------------------------

--
-- Structure de la table `businessoneclientd`
--

CREATE TABLE IF NOT EXISTS `businessoneclientd` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ActiviteDepuis` int(11) NOT NULL,
  `LieuDepuis` int(11) NOT NULL,
  `NbrPointVente` int(11) NOT NULL,
  `ProprieteLocaux` varchar(200) NOT NULL,
  `NomBailleur` varchar(100) NOT NULL,
  `DateVisite` varchar(100) NOT NULL,
  `HeureVisite` varchar(10) NOT NULL,
  `IdClientd` int(11) NOT NULL,
  `NumDossiercredi` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Contenu de la table `businessoneclientd`
--

INSERT INTO `businessoneclientd` (`Id`, `ActiviteDepuis`, `LieuDepuis`, `NbrPointVente`, `ProprieteLocaux`, `NomBailleur`, `DateVisite`, `HeureVisite`, `IdClientd`, `NumDossiercredi`) VALUES
(1, 2, 1, 1, 'locataire', 'Papa  bola', '2025-06-04', '10h', 16, '15939'),
(2, 2014, 2014, 1, 'locataire', 'Ferdinand POSO', '2025-06-06', '10 heures ', 49, '09804'),
(3, 2023, 2023, 1, 'locataire', 'Nico Tshiamala', '2025-06-06', '10h', 15, '66776'),
(4, 1980, 1980, 1, 'proprietaire', 'Na', '2025-06-03', '10h 30', 68, '24682'),
(5, 2022, 2022, 0, 'proprietaire', 'NA', '2025-06-03', '9h', 47, '59686'),
(6, 2010, 2010, 3, 'locataire', 'NA', '2025-06-07', '11h', 23, '09263'),
(7, 2020, 2020, 1, 'locataire', 'MASUA VALERIE', '2025-06-10', '13H', 75, '52533'),
(8, 2020, 0, 1, 'locataire', 'Bernard  Mombutsi ', '2025-06-04', '10h', 82, '52652'),
(9, 2015, 0, 1, 'locataire', 'NA', '2025-06-12', '13H ', 83, '61600'),
(10, 2014, 11, 1, 'locataire', 'NSIKU OYELE KUYA', '2025-06-11', '11H10', 69, '29320'),
(11, 2019, 2019, 1, 'proprietaire', 'Patshely', '2025-06-03', '12h', 50, '60198'),
(12, 2004, 2024, 1, 'locataire', 'NA', '2025-06-05', '14H10', 55, '16424'),
(13, 2020, 2023, 1, 'proprietaire', 'Na', '2025-06-02', '12h 30', 31, '64281'),
(14, 2018, 2020, 1, 'locataire', 'CONGO CLUB BUSINESS', '2025-06-05', '14H10', 77, '45588'),
(15, 2022, 2024, 1, 'locataire', 'Zidan mutemba', '2025-06-02', '13 h 20', 104, '20414'),
(16, 2011, 2014, 1, 'locataire', 'MAMAN ODILE', '2025-06-21', '17h', 110, '75098'),
(17, 2016, 2016, 1, 'locataire', 'MIKE KAMUABU MUANZA', '2025-06-05', '14H10', 81, '29972'),
(18, 2005, 2013, 1, 'locataire', 'LOUVAIN LUVUALU', '2025-06-20', '13H35', 108, '93333'),
(19, 2008, 2023, 1, 'locataire', 'NA', '2025-06-23', '11h', 111, '27427'),
(20, 2015, 2015, 1, 'locataire', 'FILLIPE KASAMBA', '2025-06-05', '11H10', 18, '88721'),
(21, 2023, 2023, 1, 'locataire', 'PAMBU MUINI THOMAS', '2025-06-21', '16h', 30, '55237'),
(22, 2014, 2014, 2, 'proprietaire', 'KILUBU BEMBO', '2025-06-16', '17h', 86, '08487'),
(23, 10, 5, 1, 'locataire', 'Nguya marie', '2025-06-23', '14h', 117, '24583'),
(24, 2015, 2022, 1, 'locataire', 'NA', '2025-06-24', '13h', 121, '47968'),
(25, 15, 6, 2, 'locataire', 'Na', '2025-06-27', '13 h 20', 106, '02733'),
(26, 2021, 2021, 1, 'locataire', 'MADAME GISELE/243819770672', '2025-07-02', '11H40', 109, '70099'),
(27, 2007, 2018, 2, 'locataire', 'ANTOINE', '2025-07-02', '12H10', 134, '77990'),
(28, 2005, 2005, 1, 'famille', 'NA', '2025-07-02', '09H', 119, '32961'),
(29, 0, 0, 0, 'proprietaire', 'NA', '2025-07-07', '12h30', 139, '47472');

-- --------------------------------------------------------

--
-- Structure de la table `businessonerisquesprincipaux`
--

CREATE TABLE IF NOT EXISTS `businessonerisquesprincipaux` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleRisque` varchar(200) NOT NULL,
  `Mitigation` varchar(200) NOT NULL,
  `IdclientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=88 ;

--
-- Contenu de la table `businessonerisquesprincipaux`
--

INSERT INTO `businessonerisquesprincipaux` (`Id`, `LibelleRisque`, `Mitigation`, `IdclientD`, `NumDossierCre`) VALUES
(1, 'Fraute', 'Le client s''occupe lui mÃªme de son busness', 16, '15939'),
(2, 'Incendie', 'Le client doit se procurer un instincteur', 16, '15939'),
(3, 'Vol', 'Quelqu''un passe nuit au busness', 16, '15939'),
(4, 'Vol', 'La cliente gÃ¨re le business avec son mari', 49, '09804'),
(5, 'Faible vente ', 'La cliente fournie aussi aux sociÃ©tÃ©s ', 49, '09804'),
(6, 'Concurrence ', 'La cliente a une grande notoriÃ©tÃ© dans ce domaine ', 49, '09804'),
(7, 'Vol', 'Lâ??emplacement estsecurisÃ©', 15, '66776'),
(8, 'Incendie', 'La cliente doit se procurer un extincteur', 15, '66776'),
(9, 'Megestion', 'La cliente fait des contrÃ´les reguliers', 15, '66776'),
(10, 'Fraute', 'Le client a des gerants pour son busness', 68, '24682'),
(11, 'Incendie', 'Le client doit se procurer un instincteur', 68, '24682'),
(12, 'Vol', 'Il ya un poste de police en diagonal', 68, '24682'),
(13, 'Incendie', 'Le client doit se procurer un extincteur', 47, '59686'),
(14, 'Detournement', 'Il y aura des visites pour verifier l affectation des fonds', 47, '59686'),
(15, 'NA', 'NA', 47, '59686'),
(16, 'Vol', 'La cliente vend elle-mÃªme et accompagnÃ©e d''une vendeuse ', 23, '09263'),
(17, 'Rupture de stock ', 'La cliente sâ??approvisionne chez plusieurs fournisseurs locaux ', 23, '09263'),
(18, 'Baisse des ventes ', 'La cliente se trouve dans un coin mouvementÃ©, les ventes sont trÃ¨s fluides ', 23, '09263'),
(19, 'Vole ', 'Le client doit bien securiser son business en cherchant quelqu un de confiance qui va commencer a  dormir a  l interieur de la boutique pour plus de securite', 75, '52533'),
(20, 'Incendie ', 'Le client doit acheter un extincteur ', 75, '52533'),
(21, 'Trouble ', 'Le client doit eviter de faire sortir beaucoup des marchandises  a la exterieure ', 75, '52533'),
(22, 'Vole ', 'La cliente doit bien securiser son business en cherchant quelqu un de confiance qui va commencer a  dormir a  l interieur de la boutique pour plus de securite', 82, '52652'),
(23, 'Incendie ', 'Le client doit acheter un extincteur ', 82, '52652'),
(24, 'Trouble ', 'Le client doit eviter de faire sortir beaucoup des marchandises  a la exterieure ', 82, '52652'),
(25, 'Vole ', 'Le client doit bien securiser son business en cherchant quelqu un de confiance qui va commencer a  dormir a  l interieur de la boutique pour plus de securite', 83, '61600'),
(26, 'Incendie ', 'Le client doit acheter un extincteur ', 83, '61600'),
(27, 'Trouble ', 'Le client doit eviter de faire sortir beaucoup des marchandises  a la exterieure ', 83, '61600'),
(28, 'vol', 'le client est au quotidien dans un business', 69, '29320'),
(29, 'rupture du stock', 'le client possÃ¨de plusieurs fournisseurs (ANNA JIBO MOTORS et d''autres d''Ã©trangers)', 69, '29320'),
(30, 'Baisse des ventes', 'le client se trouve dans un bon emplacement des ventes, et possÃ¨de Ã©galement des clients fidÃ¨les.', 69, '29320'),
(31, 'Incendie', 'Le client doit se procurer un extincteur', 50, '60198'),
(32, 'Detournement', 'Un suivi post decaissement sera assure', 50, '60198'),
(33, 'Megestion', 'Il fait des controles reguliers', 50, '60198'),
(34, 'vol', 'le client est au quotidien dans un business', 55, '16424'),
(35, 'rupture du stock', 'le client possÃ¨de plusieurs fournisseurs dont BRACONGO et BRALIMA', 55, '16424'),
(36, 'Baisse des ventes', 'le client se trouve dans un bon emplacement des ventes, et possÃ¨de Ã©galement des clients fidÃ¨les.', 55, '16424'),
(37, 'Me vente', 'La cliente se trouve dans la principale', 31, '64281'),
(38, 'Incendie', 'La cliente doit se doter d un instincteur', 31, '64281'),
(39, 'Vol', 'La client habite la meme parcelle que l activite', 31, '64281'),
(40, 'vol', 'le client est au quotidien dans un business', 77, '45588'),
(41, 'INCENDIE', 'le client dispose d''un extincteur', 77, '45588'),
(42, 'Baisse des ventes', 'le client reÃ§oit des commandes tous les jours', 77, '45588'),
(43, 'Vol', 'La cliente s''occupe elle meme de son busness', 104, '20414'),
(44, 'Mevente', 'La clente fourni a d autres boutique des jus', 104, '20414'),
(45, 'Rupture de stock', 'La clente s approvisionne regulierement', 104, '20414'),
(46, 'Vole ', 'Le client doit bien securiser son business en cherchant quelqu un de confiance qui va commencer a  dormir a  l interieur de la boutique pour plus de securite', 110, '75098'),
(47, 'Incendie ', 'Le client doit acheter un extincteur ', 110, '75098'),
(48, 'RUPTURE DE STOCK ', 'La cliente doit surveiller son stock quotidiennement ', 110, '75098'),
(49, 'vol', 'le client est au quotidien dans un business', 81, '29972'),
(50, 'INCENDIE', 'le client dispose compte acheter un extincteur', 81, '29972'),
(51, 'Baisse des ventes', 'le client fait les commandes tous les mois en chine, dubai et localement et se trouve dans un bon emplacement pour le business', 81, '29972'),
(52, 'vol', 'le client est au quotidien dans un business', 108, '93333'),
(53, 'INCENDIE', 'le travailleur dors dans le business pour securiser la maison', 108, '93333'),
(54, 'Baisse des ventes', 'le client fait les commandes tous les mois au Nigeria et se trouve dans un bon emplacement pour le business', 108, '93333'),
(55, 'Vole ', 'Le client doit bien securiser son business en cherchant quelqu un de confiance qui va commencer a  dormir a  l interieur de la boutique pour plus de securite', 111, '27427'),
(56, 'Incendie ', 'Le client doit acheter un extincteur ', 111, '27427'),
(57, 'Trouble ', 'Le client doit eviter de faire sortir beaucoup des marchandises  a la exterieure ', 111, '27427'),
(58, 'vol', 'le client est permanent dans le business et travaille avec le gerant', 18, '88721'),
(59, 'insecurite', 'il y a des gardes et sentinelle dans le business', 18, '88721'),
(60, 'mevente ', 'l activite est florissante', 18, '88721'),
(61, 'Vole ', 'Le client doit bien securiser son business en cherchant quelqu un de confiance qui va commencer a  dormir a  l interieur du business pour plus de securite', 30, '55237'),
(62, 'Incendie ', 'Le client doit acheter un extincteur ', 30, '55237'),
(63, 'RUPTURE DE STOCK ', 'Le client doit surveiller son stock quotidiennement ', 30, '55237'),
(64, 'Vole ', 'Le client doit bien securiser son business en engageant un vigile pour plus de securite', 86, '08487'),
(65, 'Incendie ', 'Le client doit acheter un extincteur ', 86, '08487'),
(66, 'NA', 'NA', 86, '08487'),
(67, 'Electricite ', 'La cliente doit acheter le groupe electrogene ', 117, '24583'),
(68, 'Rupture de stocks ', 'La cliente doit avoir plusieurs fournisseurs ', 117, '24583'),
(69, 'Vol', 'La cliente doit etre prudente', 117, '24583'),
(70, 'Vole ', 'Le client doit bien securiser son business en cherchant quelqu un de confiance qui va commencer a dormir au bureau pour plus de securite', 121, '47968'),
(71, 'Incendie ', 'Le client doit acheter un extincteur ', 121, '47968'),
(72, 'NA', 'NA', 121, '47968'),
(73, 'Vol', 'Le client gère lui même son activité et a un gerant pour son hotel', 106, '02733'),
(74, 'Rupture de stock', 'Le client s''approvisionne regulièrement et est dans un bon emplacement', 106, '02733'),
(75, 'Secheresse à cause de la saison', 'Le client organise des actions commerciales', 106, '02733'),
(76, 'vol', 'le client est au quotidien dans un business', 109, '70099'),
(77, 'INCENDIE', 'Il n y a pas delectricte dans le business', 109, '70099'),
(78, 'Baisse des ventes', 'le client se trouve dans un bon emplacement des ventes, et possède également des clients fidèles.', 109, '70099'),
(79, 'vol', 'la cliente est au quotidien dans son business', 134, '77990'),
(80, 'INCENDIE', 'Il n y a pas delectricte dans le business', 134, '77990'),
(81, 'Baisse des ventes', 'le client se trouve dans un bon emplacement des ventes, et possède également des clients fidèles.', 134, '77990'),
(82, 'vol', 'la cliente  surveille son activite tout le soir', 119, '32961'),
(83, 'rupture du stock', 'la cliente s approvisionne tous les jours', 119, '32961'),
(84, 'Baisse des ventes', 'le client se trouve dans un bon emplacement des ventes, et possède également des clients fidèles.', 119, '32961'),
(85, 'Vol', 'le client doit securiser son activité', 139, '47472'),
(86, 'Incendie', 'Achat d''extincteur', 139, '47472'),
(87, 'Rupture de stock', 'approvisionnement regulier', 139, '47472');

-- --------------------------------------------------------

--
-- Structure de la table `businessonestockprincipal`
--

CREATE TABLE IF NOT EXISTS `businessonestockprincipal` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleProduit` varchar(200) NOT NULL,
  `QteProduit` int(11) NOT NULL,
  `PrixAchat` double NOT NULL,
  `PrixVente` double NOT NULL,
  `Marge` double NOT NULL,
  `ValeurStock` double NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  `Observation` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=185 ;

--
-- Contenu de la table `businessonestockprincipal`
--

INSERT INTO `businessonestockprincipal` (`Id`, `LibelleProduit`, `QteProduit`, `PrixAchat`, `PrixVente`, `Marge`, `ValeurStock`, `IdClientD`, `NumDossierCre`, `Observation`) VALUES
(4, 'Moto pompe', 25, 120, 200, 0.4, 3000, 49, '09804', 'Principal'),
(5, 'Cable un demi', 20, 15, 20, 0.25, 300, 49, '09804', 'Principal'),
(6, 'Cable deux demi', 30, 20, 30, 0.33, 600, 49, '09804', 'Principal'),
(7, 'Inox', 120, 60, 95, 0.37, 7200, 49, '09804', 'Principal'),
(8, 'Van pousse', 60, 50, 85, 0.41, 3000, 49, '09804', 'Simple'),
(9, 'Tuyau inox', 40, 48, 70, 0.31, 1920, 49, '09804', 'Simple'),
(10, 'Lame de scie', 250, 9, 20, 0.55, 2250, 49, '09804', 'Simple'),
(12, 'Eau swissta', 30, 1.38, 1.72, 0.2, 41.4, 15, '66776', 'Principal'),
(13, 'American eau', 200, 1.38, 1.72, 0.2, 276, 15, '66776', 'Principal'),
(14, 'Eau Aquafina', 60, 1.38, 1.72, 0.2, 82.8, 15, '66776', 'Principal'),
(15, 'Pepsi', 50, 2.87, 3.45, 0.17, 143.5, 15, '66776', 'Principal'),
(16, 'Festa energy', 40, 2.3, 2.75, 0.16, 92, 15, '66776', 'Principal'),
(17, 'American power', 120, 1.44, 1.72, 0.16, 172.79, 15, '66776', 'Principal'),
(18, 'Festa jus', 30, 1.44, 1.72, 0.16, 43.19, 15, '66776', 'Principal'),
(19, 'Jus bora', 80, 1.44, 1.72, 0.16, 115.19, 15, '66776', 'Principal'),
(20, 'American juice', 100, 1.44, 1.72, 0.16, 144, 15, '66776', 'Principal'),
(21, 'Semoules Master ', 48, 13, 18, 0.28, 624, 23, '09263', 'Principal'),
(22, 'Semoule rosibien ', 79, 10, 18, 0.44, 790, 23, '09263', 'Principal'),
(23, 'Riz lion', 86, 21, 25, 0.16, 1806, 23, '09263', 'Principal'),
(24, 'Spaghetti bravo', 142, 7, 13, 0.46, 994, 23, '09263', 'Principal'),
(25, 'Huile simba', 163, 45, 49, 0.08, 7335, 23, '09263', 'Principal'),
(26, 'Huile avena', 103, 40, 45, 0.11, 4120, 23, '09263', 'Principal'),
(27, 'Lait bondia ', 98, 103, 115, 0.1, 10094, 23, '09263', 'Principal'),
(28, 'Jus', 100, 2, 4, 0.5, 200, 16, '15939', 'Principal'),
(29, 'Eau', 50, 2, 3, 0.33, 100, 16, '15939', 'Principal'),
(30, 'PERUQUE LONGUE ROUGE', 21, 95, 120, 0.21, 1995, 75, '52533', 'Principal'),
(31, 'PETIT BOUCLE MOYEN', 15, 60, 70, 0.14, 900, 75, '52533', 'Principal'),
(32, 'VIETNAM ', 11, 80, 100, 0.2, 880, 75, '52533', 'Principal'),
(33, 'KIKI ET MAYI', 7, 130, 150, 0.13, 910, 75, '52533', 'Principal'),
(34, 'CATALINA MAYI', 40, 15, 20, 0.25, 600, 75, '52533', 'Principal'),
(35, 'COUPE CARREE', 30, 18, 30, 0.4, 540, 75, '52533', 'Principal'),
(36, 'MAYI COURTE', 22, 30, 40, 0.25, 660, 75, '52533', 'Principal'),
(37, 'CLOSIR', 50, 6, 10, 0.4, 300, 75, '52533', 'Principal'),
(38, 'ASPIRINE', 102, 5, 8, 0.38, 510, 75, '52533', 'Principal'),
(39, 'PLANTES', 90, 8, 10, 0.2, 720, 75, '52533', 'Principal'),
(40, 'Son de bleu', 500, 5, 7, 0.29, 2500, 82, '52652', 'Principal'),
(41, 'Son de mais', 50, 10, 20, 0.5, 500, 82, '52652', 'Principal'),
(42, 'Aliment poulet ', 25, 20, 22, 0.09, 500, 82, '52652', 'Principal'),
(43, 'Poso ya nguba', 15, 10, 13, 0.23, 150, 82, '52652', 'Principal'),
(44, 'DRUME', 4, 300, 400, 0.25, 1200, 83, '61600', 'Principal'),
(45, 'QUIDARD SOLO', 6, 100, 150, 0.33, 600, 83, '61600', 'Principal'),
(46, 'QUIDARD BASS', 4, 110, 175, 0.37, 440, 83, '61600', 'Principal'),
(47, 'TAMTAM', 3, 350, 425, 0.18, 1050, 83, '61600', 'Principal'),
(48, 'BAFFLE RETOUR', 4, 100, 160, 0.38, 400, 83, '61600', 'Principal'),
(49, 'MICRO VHF 555', 9, 50, 70, 0.29, 450, 83, '61600', 'Principal'),
(50, 'MICRO VOCAL', 5, 40, 70, 0.43, 200, 83, '61600', 'Principal'),
(51, 'AIMA120W', 13, 15, 20, 0.25, 195, 83, '61600', 'Principal'),
(52, 'EQUALISEUR', 10, 75, 100, 0.25, 750, 83, '61600', 'Principal'),
(53, 'POWER 5500', 4, 400, 500, 0.2, 1600, 83, '61600', 'Principal'),
(54, 'POWER 6600', 11, 500, 650, 0.23, 5500, 83, '61600', 'Principal'),
(55, 'BATTERIE 180 A', 43, 108, 162, 0.33, 4644, 69, '29320', 'Principal'),
(56, 'BATTERIE 150 A', 96, 90, 135, 0.33, 8640, 69, '29320', 'Principal'),
(57, 'BATTERIE 120 A', 42, 72, 108, 0.33, 3024, 69, '29320', 'Principal'),
(58, 'BATTERIE 90 A', 38, 54, 81, 0.33, 2052, 69, '29320', 'Principal'),
(59, 'TRANSMISSION', 275, 14, 37, 0.62, 3850, 69, '29320', 'Principal'),
(60, 'POMPE A HUILE', 426, 40, 70, 0.43, 17040, 69, '29320', 'Principal'),
(61, 'PLAQUETTES', 355, 3, 7, 0.57, 1065, 69, '29320', 'Simple'),
(62, 'TANDER', 308, 23, 56, 0.59, 7084, 69, '29320', 'Simple'),
(63, 'AMORTISSEURS', 146, 10, 27, 0.63, 1460, 69, '29320', 'Simple'),
(64, 'POMPE A INJECTION', 180, 29, 66, 0.56, 5220, 69, '29320', 'Simple'),
(65, 'MALTINA', 13, 12, 13, 0.08, 156, 55, '16424', 'Principal'),
(66, 'GRAND COCA', 24, 12, 21, 0.43, 288, 55, '16424', 'Principal'),
(67, 'NKOYI', 22, 15, 19, 0.21, 330, 55, '16424', 'Principal'),
(68, 'LIKOFI', 26, 15, 21, 0.29, 390, 55, '16424', 'Principal'),
(69, 'CASTEL', 9, 18, 31, 0.42, 162, 55, '16424', 'Principal'),
(70, 'BEAUFORT', 21, 18, 28, 0.36, 378, 55, '16424', 'Principal'),
(71, 'TEMBO', 19, 16, 25, 0.36, 304, 55, '16424', 'Simple'),
(72, 'HEINEKEN', 23, 18, 28, 0.36, 414, 55, '16424', 'Simple'),
(73, 'VITALO', 24, 12, 21, 0.43, 288, 55, '16424', 'Simple'),
(74, 'PETIT COCA', 27, 11, 12, 0.08, 297, 55, '16424', 'Principal'),
(75, 'Jus', 100, 2, 3, 0.33, 200, 31, '64281', 'Principal'),
(76, 'Boisson sucrÃ©', 10, 12, 15, 0.2, 120, 31, '64281', 'Principal'),
(77, 'Eau', 100, 2, 3, 0.33, 200, 31, '64281', 'Principal'),
(78, 'MANETTE JEUX VIDEOS PLAY 3', 145, 5, 15, 0.67, 725, 81, '29972', 'Principal'),
(79, 'MANETTE JEUX VIDEOS PLAY 4', 96, 8, 25, 0.68, 768, 81, '29972', 'Principal'),
(80, 'MANETTE JEUX VIDEOS PLAY 5', 42, 20, 50, 0.6, 840, 81, '29972', 'Principal'),
(81, 'MANETTE XBOX', 21, 25, 55, 0.55, 525, 81, '29972', 'Simple'),
(82, 'DISPLAY IPHONE 11 PROMAX', 140, 5, 7, 0.29, 700, 81, '29972', 'Principal'),
(83, 'DISPLAY CAMON 30', 246, 6, 11, 0.45, 1476, 81, '29972', 'Principal'),
(84, 'DISPLAY TECHNO', 247, 6, 9, 0.33, 1482, 81, '29972', 'Principal'),
(85, 'DISPLAY INFINIX S12', 223, 7, 10, 0.3, 1561, 81, '29972', 'Principal'),
(86, 'CD PLAY 4', 112, 12, 25, 0.52, 1344, 81, '29972', 'Principal'),
(87, 'POCHETTE IPHONE', 124, 3, 6, 0.5, 372, 81, '29972', 'Simple'),
(88, 'DISPLAY SAMSUNG ', 24, 36, 125, 0.71, 864, 81, '29972', 'Simple'),
(89, 'BETTERIE ITEL', 56, 4, 6, 0.33, 224, 81, '29972', 'Principal'),
(90, 'PLAY 3', 7, 50, 160, 0.69, 350, 81, '29972', 'Principal'),
(91, 'Jus', 100, 2, 4, 0.5, 200, 104, '20414', 'Principal'),
(92, 'Eau', 100, 2, 3, 0.33, 200, 104, '20414', 'Principal'),
(93, 'Epices', 1, 100, 150, 0.33, 100, 104, '20414', 'Principal'),
(94, 'Produits de la boutique', 1, 200, 230, 0.13, 200, 104, '20414', 'Simple'),
(95, 'TOP', 15, 9, 12, 0.25, 135, 110, '75098', 'Principal'),
(96, 'LIKOFI', 25, 15, 17, 0.12, 375, 110, '75098', 'Principal'),
(97, 'TEMBO', 25, 17, 23, 0.26, 425, 110, '75098', 'Principal'),
(98, 'CASTEL ', 15, 19, 25, 0.24, 285, 110, '75098', 'Principal'),
(99, 'HEINEKEN ', 25, 19, 25, 0.24, 475, 110, '75098', 'Principal'),
(100, 'COCA', 15, 12, 21, 0.43, 180, 110, '75098', 'Principal'),
(101, 'NKOYI', 20, 14, 17, 0.18, 280, 110, '75098', 'Principal'),
(102, 'NKOYI', 20, 14, 17, 0.18, 280, 30, '55237', 'Principal'),
(103, 'LIKOFI', 25, 16, 21, 0.24, 400, 30, '55237', 'Principal'),
(104, 'TURBO', 20, 16, 21, 0.24, 320, 30, '55237', 'Principal'),
(105, 'CASTEL ', 20, 19, 25, 0.24, 380, 30, '55237', 'Principal'),
(106, 'TEMBO', 20, 17, 21, 0.19, 340, 30, '55237', 'Principal'),
(107, 'LEGENDE ', 15, 19, 25, 0.24, 285, 30, '55237', 'Principal'),
(108, 'DOPEL', 9, 19, 25, 0.24, 171, 30, '55237', 'Principal'),
(109, '33 EXPORT', 7, 19, 25, 0.24, 133, 30, '55237', 'Principal'),
(110, 'COCA', 9, 12, 21, 0.43, 108, 30, '55237', 'Principal'),
(111, 'FANTA', 6, 12, 21, 0.43, 72, 30, '55237', 'Principal'),
(112, 'ENERGY', 8, 11, 21, 0.48, 88, 30, '55237', 'Principal'),
(113, 'MALTINA', 7, 11, 21, 0.48, 77, 30, '55237', 'Principal'),
(114, 'MOTEUR TURBO RANGE ROVER EVOC', 12, 700, 1600, 0.56, 8400, 108, '93333', 'Principal'),
(115, 'TURBO RANGE ROVER SPORT', 16, 700, 1750, 0.6, 11200, 108, '93333', 'Principal'),
(116, 'TURBO RV TDI 300', 24, 370, 780, 0.53, 8880, 108, '93333', 'Principal'),
(117, 'COMPRESSEUR BALLON', 46, 350, 840, 0.58, 16100, 108, '93333', 'Principal'),
(118, 'TRANSMISSSION LONGUE 2014', 67, 170, 385, 0.56, 11390, 108, '93333', 'Simple'),
(119, 'TRANSMISSION COURTE 2014', 98, 150, 340, 0.56, 14700, 108, '93333', 'Simple'),
(120, 'RADIATEUR 5.0', 74, 180, 320, 0.44, 13320, 108, '93333', 'Principal'),
(121, 'RADIATEUR 2014', 21, 180, 365, 0.51, 3780, 108, '93333', 'Principal'),
(122, 'DEMAREURE EVOC', 17, 260, 385, 0.32, 4420, 108, '93333', 'Simple'),
(123, 'TRANSMISSION CENTRALE', 78, 350, 500, 0.3, 27300, 108, '93333', 'Simple'),
(124, 'PERUQUE LONGUE ROUGE ', 15, 95, 120, 0.21, 1425, 111, '27427', 'Principal'),
(125, 'PETIT BOUCLE MOYEN', 20, 60, 70, 0.14, 1200, 111, '27427', 'Principal'),
(126, 'VIETNAM ', 12, 80, 100, 0.2, 960, 111, '27427', 'Principal'),
(127, '6', 8, 130, 150, 0.13, 1040, 111, '27427', 'Principal'),
(128, 'COUPE CARREE', 40, 15, 20, 0.25, 600, 111, '27427', 'Principal'),
(129, 'CATALINA MAYI', 30, 18, 30, 0.4, 540, 111, '27427', 'Principal'),
(130, 'MAYI COURTE', 20, 30, 40, 0.25, 600, 111, '27427', 'Principal'),
(131, 'CLOSIR', 55, 6, 10, 0.4, 330, 111, '27427', 'Principal'),
(132, 'ASPIRINE', 100, 6, 10, 0.4, 600, 111, '27427', 'Principal'),
(133, 'PLANTES SIMPLE ', 100, 8, 10, 0.2, 800, 111, '27427', 'Principal'),
(134, 'PLANTES INDIENNES', 7, 40, 65, 0.38, 280, 111, '27427', 'Principal'),
(135, 'casiers bierre', 100, 15, 20, 0.25, 1500, 18, '88721', 'Principal'),
(136, 'casiers sucre', 50, 10, 13, 0.23, 500, 18, '88721', 'Principal'),
(137, 'casino', 1, 1, 500, 1, 500, 18, '88721', 'Simple'),
(138, 'bouteille vin et champagne', 13, 100, 150, 0.33, 1300, 18, '88721', 'Simple'),
(139, 'Carton Mipazi', 70, 23, 25, 0.08, 1610, 117, '24583', 'Principal'),
(140, 'Mikongo', 40, 16, 19, 0.16, 640, 117, '24583', 'Principal'),
(141, 'Cuise', 40, 20, 23, 0.13, 800, 117, '24583', 'Principal'),
(142, 'Mbisi', 10, 56, 58, 0.03, 560, 117, '24583', 'Principal'),
(143, 'Poulet ', 15, 28, 31, 0.1, 420, 117, '24583', 'Principal'),
(144, 'Castel', 6, 18, 22, 0.18, 108, 106, '02733', 'Principal'),
(145, 'Likofi', 8, 15, 19, 0.21, 120, 106, '02733', 'Principal'),
(146, 'Nkoy', 10, 15, 19, 0.21, 150, 106, '02733', 'Principal'),
(147, 'Coca/fanta', 12, 13, 19, 0.32, 156, 106, '02733', 'Principal'),
(148, 'Top', 10, 12, 16, 0.25, 120, 106, '02733', 'Principal'),
(149, 'SANDALE HERMOSA', 40, 180, 210, 0.14, 7200, 109, '70099', 'Principal'),
(150, 'SANDALE BAIZOLE', 50, 120, 150, 0.2, 6000, 109, '70099', 'Principal'),
(151, 'BABOUCHE ADDIDAS', 70, 50, 65, 0.23, 3500, 109, '70099', 'Principal'),
(152, 'SANDALE K-73', 20, 50, 60, 0.17, 1000, 109, '70099', 'Principal'),
(153, 'SANDALE JT5529 A-1', 102, 120, 150, 0.2, 12240, 109, '70099', 'Principal'),
(154, 'BABOUCHE T-37', 22, 40, 45, 0.11, 880, 109, '70099', 'Principal'),
(155, 'BABOUCHET-38', 22, 47, 52, 0.1, 1034, 109, '70099', 'Principal'),
(156, 'SANDALE JT5037H', 162, 105, 135, 0.22, 17010, 109, '70099', 'Principal'),
(157, 'PAGNE EDITION', 200, 12, 15, 0.2, 2400, 134, '77990', 'Principal'),
(158, 'DEMI-SUPER', 3020, 10, 12, 0.17, 30200, 134, '77990', 'Principal'),
(159, 'WAX HOLLANDAISE', 1540, 12, 15, 0.2, 18480, 134, '77990', 'Principal'),
(160, 'GRAND SUPER', 200, 16, 20, 0.2, 3200, 134, '77990', 'Principal'),
(161, 'GRAND SUPER VLISCO', 100, 18, 25, 0.28, 1800, 134, '77990', 'Principal'),
(162, 'SUPER WAX', 100, 100, 120, 0.17, 10000, 134, '77990', 'Simple'),
(163, 'JAVA', 100, 9, 11, 0.18, 900, 134, '77990', 'Simple'),
(164, 'KENTA ', 50, 12, 15, 0.2, 600, 134, '77990', 'Simple'),
(165, 'BELLE DAME', 500, 4, 5, 0.2, 2000, 134, '77990', 'Simple'),
(166, 'PETIT HOLLANDAIS', 50, 7, 10, 0.3, 350, 134, '77990', 'Simple'),
(167, 'GOLD DORE', 100, 7, 10, 0.3, 700, 134, '77990', 'Simple'),
(168, 'TURBO', 5, 15, 21, 0.29, 75, 119, '32961', 'Principal'),
(169, 'MUTZIG', 3, 18, 21, 0.14, 54, 119, '32961', 'Simple'),
(170, 'LEGENDE', 6, 18, 21, 0.14, 108, 119, '32961', 'Principal'),
(171, 'NKOYI', 8, 13, 17, 0.24, 104, 119, '32961', 'Principal'),
(172, 'BEAUFORT', 9, 18, 24, 0.25, 162, 119, '32961', 'Principal'),
(173, 'CASTEL', 11, 18, 24, 0.25, 198, 119, '32961', 'Principal'),
(174, 'GRD FANTA', 5, 12, 21, 0.43, 60, 119, '32961', 'Principal'),
(175, 'PETIT FANTA', 8, 10, 17, 0.41, 80, 119, '32961', 'Principal'),
(176, 'PETIT COCA', 7, 10, 17, 0.41, 70, 119, '32961', 'Principal'),
(177, 'PETIT VITALO', 4, 10, 17, 0.41, 40, 119, '32961', 'Principal'),
(178, 'GRD VITALO', 5, 12, 21, 0.43, 60, 119, '32961', 'Simple'),
(179, 'SPRITE', 3, 10, 17, 0.41, 30, 119, '32961', 'Simple'),
(180, 'MALTINA', 2, 11, 17, 0.35, 22, 119, '32961', 'Simple'),
(181, 'ENERGY MALTE', 7, 11, 17, 0.35, 77, 119, '32961', 'Principal'),
(182, 'XXL ENERGY', 5, 11, 17, 0.35, 55, 119, '32961', 'Principal'),
(183, 'LAIT NIDO', 15, 15, 18, 0.17, 225, 139, '47472', 'Principal'),
(184, 'SARDINE ANNY', 20, 20, 25, 0.2, 400, 139, '47472', 'Simple');

-- --------------------------------------------------------

--
-- Structure de la table `businessoneventeachat`
--

CREATE TABLE IF NOT EXISTS `businessoneventeachat` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RegistreVente` varchar(10) NOT NULL,
  `NbrJourOuvrableParMois` int(11) NOT NULL,
  `CategorieVjLundi` varchar(20) NOT NULL,
  `MontantVjLundi` int(11) NOT NULL,
  `CategorieVjMardi` varchar(20) NOT NULL,
  `MontantVjMardi` int(11) NOT NULL,
  `CategorieVjMercredi` varchar(20) NOT NULL,
  `MontantVjMercredi` int(11) NOT NULL,
  `CategorieVjJeudi` varchar(20) NOT NULL,
  `MontantVjJeudi` int(11) NOT NULL,
  `CategorieVjVendredi` varchar(20) NOT NULL,
  `MontantVjVendredi` int(11) NOT NULL,
  `CategorieVjSamedi` varchar(20) NOT NULL,
  `MontantVjSamedi` int(11) NOT NULL,
  `CategorieVjDimanche` varchar(20) NOT NULL,
  `MontantVjDimanche` int(11) NOT NULL,
  `TotalSemaine` int(11) NOT NULL,
  `dernierJour1` varchar(20) NOT NULL,
  `VenteDernierJour1` double NOT NULL,
  `dernierJour2` varchar(20) NOT NULL,
  `VenteDernierJour2` double NOT NULL,
  `dernierJour3` varchar(20) NOT NULL,
  `VenteDernierJour3` double NOT NULL,
  `VenteJourTOdays` double NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  `VenteMensuelMinMax` double NOT NULL,
  `VenteMensuelTroisDernierJours` double NOT NULL,
  `jour1` varchar(50) NOT NULL,
  `jour2` varchar(50) NOT NULL,
  `jour3` varchar(50) NOT NULL,
  `mntjour1` double NOT NULL,
  `mntjour2` double NOT NULL,
  `mntjour3` double NOT NULL,
  `mntToDaysJour` double NOT NULL,
  `VenteTotalJourDernier` double NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Contenu de la table `businessoneventeachat`
--

INSERT INTO `businessoneventeachat` (`Id`, `RegistreVente`, `NbrJourOuvrableParMois`, `CategorieVjLundi`, `MontantVjLundi`, `CategorieVjMardi`, `MontantVjMardi`, `CategorieVjMercredi`, `MontantVjMercredi`, `CategorieVjJeudi`, `MontantVjJeudi`, `CategorieVjVendredi`, `MontantVjVendredi`, `CategorieVjSamedi`, `MontantVjSamedi`, `CategorieVjDimanche`, `MontantVjDimanche`, `TotalSemaine`, `dernierJour1`, `VenteDernierJour1`, `dernierJour2`, `VenteDernierJour2`, `dernierJour3`, `VenteDernierJour3`, `VenteJourTOdays`, `IdClientD`, `NumDossierCre`, `VenteMensuelMinMax`, `VenteMensuelTroisDernierJours`, `jour1`, `jour2`, `jour3`, `mntjour1`, `mntjour2`, `mntjour3`, `mntToDaysJour`, `VenteTotalJourDernier`) VALUES
(1, 'Non', 26, 'Normal', 105, 'Normal', 100, 'Normal', 110, 'Normal', 110, 'Bien', 150, 'Bien', 170, 'Normal', 0, 745, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 16, '15939', 2980, 0, 'Samedi', 'Lundi', 'Mardi', 78, 29, 20, 50, 1100.67),
(3, 'Oui', 28, 'Bien', 1050, 'Bien', 1000, 'Normal', 750, 'Mauvais', 500, 'Normal', 800, 'Bien', 1000, 'Normal', 750, 5850, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 49, '09804', 23400, 0, 'Dimanche', 'Lundi', 'Mardi', 750, 1050, 1000, 750, 26133.33),
(4, 'Non', 24, 'Mauvais', 1150, 'Mauvais', 1020, 'Bien', 1750, 'Bien', 1540, 'Normal', 1260, 'Normal', 1300, 'Normal', 0, 8020, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 23, '09263', 32080, 0, 'Mercredi', 'Jeudi', 'Vendredi', 1750, 1540, 1260, 1300, 36400),
(5, 'Oui', 30, 'Mauvais', 230, 'Normal', 370, 'Normal', 360, 'Normal', 380, 'Bien', 450, 'Bien', 450, 'Bien', 450, 2690, 'Mars', 10200, 'Avril', 10500, 'Mai', 9300, 0, 68, '24682', 10760, 10000, 'Dimanche', 'Lundi', 'Mardi', 480, 206, 243, 140, 9290),
(6, 'Oui', 30, 'Normal', 0, 'Normal', 0, 'Normal', 0, 'Normal', 0, 'Normal', 0, 'Normal', 0, 'Normal', 0, 0, 'Fevrier', 1445, 'Mars', 1445, 'Avril', 1445, 1445, 47, '59686', 0, 1445, 'Lundi', 'Jeudi', 'Samedi', 0, 0, 0, 0, 0),
(7, 'Non', 26, 'Bien', 800, 'Bien', 755, 'Bien', 580, 'Bien', 565, 'Bien', 650, 'Normal', 400, 'Normal', 0, 3750, 'Mars', 1490, 'Avril', 1365, 'Mai', 12980, 6490, 75, '52533', 15000, 5278.33, 'Lundi', 'Samedi', 'Vendredi', 755, 480, 580, 390, 15730),
(8, 'Non', 26, 'Bien', 285, 'Bien', 250, 'Bien', 235, 'Bien', 260, 'Bien', 210, 'Normal', 160, 'Normal', 0, 1400, 'Mars', 5560, 'Avril', 5354, 'Mai', 5498, 2380, 82, '52652', 5600, 5470.67, 'Samedi', 'Lundi', 'Mardi', 170, 280, 250, 82, 6066.67),
(9, 'Non', 26, 'Bien', 650, 'Bien', 700, 'Bien', 740, 'Bien', 810, 'Bien', 795, 'Normal', 500, 'Normal', 0, 4195, 'Mars', 15780, 'Avril', 16350, 'Mai', 15585, 8390, 83, '61600', 16780, 15905, 'Samedi', 'Lundi', 'Mardi', 720, 985, 950, 580, 23010),
(10, 'Oui', 24, 'Bien', 3416, 'Bien', 1745, 'Mauvais', 750, 'Normal', 1000, 'Normal', 1187, 'Mauvais', 991, 'Normal', 0, 9089, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 69, '29320', 36356, 0, 'Samedi', 'Lundi', 'Mardi', 991, 3416, 1745, 750, 49216),
(11, 'Oui', 30, 'Normal', 0, 'Normal', 0, 'Normal', 0, 'Normal', 0, 'Normal', 0, 'Normal', 0, 'Normal', 0, 0, 'Janvier', 1550, 'Fevrier', 1500, 'Mars', 1280, 0, 50, '60198', 0, 1443.33, 'Lundi', 'Mardi', 'Mercredi', 0, 0, 0, 0, 0),
(12, 'Non', 26, 'Normal', 210, 'Normal', 280, 'Normal', 340, 'Normal', 300, 'Normal', 250, 'Normal', 380, 'Normal', 0, 1760, 'Janvier', 0, 'Fevrier', 0, 'Mars', 0, 0, 15, '66776', 7040, 0, 'Jeudi', 'Vendredi', 'Samedi', 215, 300, 320, 120, 7236.67),
(13, 'Non', 28, 'Normal', 100, 'Normal', 150, 'Normal', 190, 'Normal', 130, 'Normal', 170, 'Normal', 180, 'Normal', 200, 1120, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 55, '16424', 4480, 0, 'Vendredi', 'Samedi', 'Dimanche', 170, 180, 200, 100, 5133.33),
(14, 'Non', 28, 'Normal', 80, 'Normal', 80, 'Normal', 80, 'Normal', 80, 'Bien', 100, 'Bien', 100, 'Bien', 120, 640, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 31, '64281', 2560, 0, 'Jeudi', 'Vendredi', 'Samedi', 80, 100, 100, 80, 2613.33),
(15, 'Non', 28, 'Normal', 320, 'Normal', 350, 'Mauvais', 150, 'Normal', 300, 'Normal', 270, 'Normal', 280, 'Normal', 0, 1670, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 77, '45588', 6680, 0, 'Samedi', 'Lundi', 'Mardi', 280, 320, 350, 150, 8866.67),
(16, 'Non', 28, 'Normal', 320, 'Normal', 350, 'Normal', 150, 'Normal', 270, 'Normal', 300, 'Normal', 280, 'Normal', 310, 1980, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 77, '45588', 7920, 0, 'Samedi', 'Lundi', 'Mardi', 280, 320, 350, 150, 8866.67),
(17, 'Non', 28, 'Mauvais', 120, 'Normal', 150, 'Normal', 150, 'Normal', 150, 'Bien', 180, 'Bien', 200, 'Normal', 180, 1130, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 104, '20414', 4520, 0, 'Jeudi', 'Vendredi', 'Samedi', 150, 200, 280, 300, 5880),
(18, 'Oui', 28, 'Normal', 300, 'Normal', 280, 'Normal', 150, 'Normal', 180, 'Normal', 230, 'Normal', 250, 'Normal', 200, 1590, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 77, '45588', 6360, 0, 'Dimanche', 'Lundi', 'Mardi', 200, 300, 280, 150, 7280),
(19, 'Non', 30, 'Normal', 295, 'Normal', 250, 'Normal', 280, 'Normal', 320, 'Bien', 380, 'Bien', 390, 'Bien', 385, 2300, 'Mars', 2100, 'Avril', 2250, 'Mai', 2300, 1350, 110, '75098', 9200, 2216.67, 'Mercredi', 'Jeudi', 'Vendredi', 280, 320, 380, 0, 9800),
(20, 'Oui', 30, 'Normal', 310, 'Normal', 300, 'Normal', 290, 'Normal', 260, 'Normal', 320, 'Normal', 400, 'Normal', 350, 2230, 'Mars', 2110, 'Avril', 2230, 'Mai', 2250, 1515, 30, '55237', 8920, 2196.67, 'Mercredi', 'Jeudi', 'Vendredi', 290, 260, 320, 160, 8700),
(21, 'Non', 24, 'Normal', 290, 'Normal', 400, 'Normal', 350, 'Normal', 460, 'Normal', 380, 'Normal', 300, 'Normal', 0, 2180, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 81, '29972', 8720, 0, 'Mardi', 'Mercredi', 'Jeudi', 400, 350, 460, 380, 9680),
(22, 'Oui', 24, 'Normal', 693, 'Normal', 1500, 'Normal', 1506, 'Normal', 610, 'Normal', 1784, 'Normal', 600, 'Normal', 0, 6693, 'Mars', 2250, 'Avril', 2950, 'Mai', 24564, 1636, 108, '93333', 26772, 9921.33, 'Mardi', 'Mercredi', 'Jeudi', 1500, 1506, 610, 1784, 28928),
(23, 'Non', 26, 'Normal', 400, 'Normal', 450, 'Normal', 480, 'Normal', 390, 'Normal', 470, 'Normal', 490, 'Normal', 0, 2680, 'Mars', 10720, 'Avril', 9750, 'Mai', 10520, 7360, 111, '27427', 10720, 10330, 'Jeudi', 'Vendredi', 'Samedi', 390, 480, 490, 0, 11786.67),
(24, 'Non', 30, 'Normal', 1000, 'Normal', 1100, 'Normal', 1250, 'Normal', 1200, 'Bien', 1250, 'Bien', 1450, 'Bien', 1350, 8600, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 18, '88721', 34400, 0, 'Jeudi', 'Vendredi', 'Vendredi', 1200, 1250, 1250, 0, 37000),
(25, 'Non', 24, 'Mauvais', 1053, 'Normal', 1300, 'Normal', 1400, 'Normal', 1500, 'Bien', 1754, 'Bien', 1754, 'Normal', 0, 8761, 'Mars', 37000, 'Avril', 36500, 'Mai', 36000, 35000, 117, '24583', 35044, 36500, 'Mardi', 'Mercredi', 'Jeudi', 1300, 1400, 1500, 1754, 33600),
(26, 'Oui', 26, 'Normal', 535, 'Normal', 535, 'Normal', 535, 'Normal', 535, 'Normal', 535, 'Normal', 535, 'Normal', 0, 3210, 'Mars', 13910, 'Avril', 13910, 'Mai', 13910, 0, 86, '08487', 12840, 13910, 'Lundi', 'Mardi', 'Mercredi', 535, 535, 535, 0, 13910),
(27, 'Non', 24, 'Mauvais', 1000, 'Normal', 1200, 'Normal', 1250, 'Normal', 1300, 'Normal', 1350, 'Normal', 1400, 'Normal', 0, 7500, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 117, '24583', 30000, 0, 'Mercredi', 'Jeudi', 'Vendredi', 1250, 1300, 1350, 1400, 31200),
(28, 'Non', 28, 'Mauvais', 230, 'Normal', 310, 'Normal', 310, 'Normal', 310, 'Bien', 385, 'Bien', 395, 'Bien', 380, 2320, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 106, '02733', 9280, 0, 'Jeudi', 'Vendredi', 'Samedi', 265, 373, 408, 100, 9762.67),
(29, 'Non', 24, 'Normal', 0, 'Bien', 8700, 'Bien', 12500, 'Normal', 14000, 'Bien', 11000, 'Mauvais', 6000, 'Normal', 0, 52200, 'Mai', 0, 'Juin', 0, 'Juillet', 0, 0, 109, '70099', 208800, 0, 'Vendredi', 'Samedi', 'Mardi', 11000, 9800, 8700, 8850, 236000),
(30, 'Non', 24, 'Normal', 6000, 'Normal', 8850, 'Normal', 6900, 'Normal', 7000, 'Normal', 7300, 'Normal', 6850, 'Normal', 0, 42900, 'Avril', 0, 'Mai', 0, 'Juin', 0, 0, 109, '70099', 171600, 0, 'Vendredi', 'Samedi', 'Lundi', 7300, 6800, 6000, 8850, 160800),
(31, 'Non', 24, 'Normal', 3000, 'Normal', 3950, 'Normal', 2900, 'Normal', 3200, 'Normal', 3250, 'Normal', 3600, 'Normal', 0, 19900, 'Avril', 0, 'Mai', 0, 'Juin', 0, 0, 109, '70099', 79600, 0, 'Vendredi', 'Samedi', 'Lundi', 3250, 3600, 3000, 3950, 78800),
(32, 'Oui', 24, 'Normal', 3042, 'Normal', 2350, 'Normal', 1500, 'Normal', 2441, 'Normal', 2389, 'Normal', 1537, 'Normal', 0, 13259, 'Avril', 0, 'Mai', 0, 'Juin', 0, 0, 134, '77990', 53036, 0, 'Samedi', 'Lundi', 'Mardi', 1537, 3042, 2350, 2500, 55432),
(33, 'Non', 28, 'Normal', 140, 'Normal', 150, 'Normal', 180, 'Normal', 190, 'Normal', 235, 'Normal', 220, 'Normal', 260, 1375, 'Avril', 0, 'Mai', 0, 'Juin', 0, 0, 119, '32961', 5500, 0, 'Samedi', 'Lundi', 'Mardi', 220, 140, 170, 0, 4946.67),
(34, 'Non', 28, 'Normal', 210, 'Normal', 200, 'Normal', 225, 'Normal', 280, 'Normal', 300, 'Normal', 290, 'Normal', 320, 1825, 'Avril', 0, 'Mai', 0, 'Juin', 0, 0, 119, '32961', 7300, 0, 'Dimanche', 'Lundi', 'Mardi', 320, 210, 200, 0, 6813.33),
(35, 'Oui', 26, 'Normal', 180, 'Mauvais', 60, 'Normal', 180, 'Bien', 200, 'Normal', 180, 'Bien', 200, 'Mauvais', 0, 1000, 'Avril', 1500, 'Mai', 1200, 'Juin', 1800, 500, 139, '47472', 4000, 1500, 'Jeudi', 'Vendredi', 'Samedi', 200, 180, 200, 120, 5026.67);

-- --------------------------------------------------------

--
-- Structure de la table `businessthreecoutproduction`
--

CREATE TABLE IF NOT EXISTS `businessthreecoutproduction` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleProduit` varchar(50) NOT NULL,
  `QteProductionMateriel` int(11) NOT NULL,
  `LibelleMaterielUtilise` varchar(50) NOT NULL,
  `PrixAchatParUnite` double NOT NULL,
  `CoutTotal` double NOT NULL,
  `NbrUniteProduit` int(11) NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `businessthreemargebrutemoyennepondere`
--

CREATE TABLE IF NOT EXISTS `businessthreemargebrutemoyennepondere` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleProduit` varchar(200) NOT NULL,
  `CoutParUnite` double NOT NULL,
  `PrixVente` double NOT NULL,
  `MargeProduit` double NOT NULL,
  `QteVendueParMois` int(11) NOT NULL,
  `CoutMensuel` double NOT NULL,
  `VenteMensuel` double NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `businesstwoautresrevenu`
--

CREATE TABLE IF NOT EXISTS `businesstwoautresrevenu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DescriptionActivite` varchar(200) NOT NULL,
  `AnneeDepuis` int(11) NOT NULL,
  `RevenuMensuel` double NOT NULL,
  `IdclientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `businesstwoautresrevenu`
--

INSERT INTO `businesstwoautresrevenu` (`Id`, `DescriptionActivite`, `AnneeDepuis`, `RevenuMensuel`, `IdclientD`, `NumDossierCre`) VALUES
(1, 'Moto en activitÃ©', 2024, 150, 16, '15939'),
(2, 'Salaire', 2023, 300, 15, '66776'),
(3, 'Revenu locative', 2010, 1900, 68, '24682'),
(4, 'Versement moto', 2025, 300, 16, '15939'),
(5, 'Loyer percue', 2020, 100, 31, '64281'),
(6, 'Moto 3 pneus', 0, 450, 104, '20414'),
(7, 'Ras', 0, 0, 117, '24583'),
(8, 'Hotel', 2020, 300, 106, '02733'),
(10, 'LOYERS', 2007, 350, 119, '32961');

-- --------------------------------------------------------

--
-- Structure de la table `businesstwodepensesoperationnelles`
--

CREATE TABLE IF NOT EXISTS `businesstwodepensesoperationnelles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TransportJournalierLieuActivite` double NOT NULL,
  `TransportCoutVoyageAchat` double NOT NULL,
  `Loyer` double NOT NULL,
  `communication` double NOT NULL,
  `salaire` double NOT NULL,
  `services` double NOT NULL,
  `taxes` double NOT NULL,
  `autres` double NOT NULL,
  `depenseInvestsixmoisdernier` double NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  `commentaireDop` varchar(5000) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `businesstwodepensesoperationnelles`
--

INSERT INTO `businesstwodepensesoperationnelles` (`Id`, `TransportJournalierLieuActivite`, `TransportCoutVoyageAchat`, `Loyer`, `communication`, `salaire`, `services`, `taxes`, `autres`, `depenseInvestsixmoisdernier`, `IdClientD`, `NumDossierCre`, `commentaireDop`) VALUES
(1, 10, 0, 70, 10, 0, 5, 5, 0, 0, 16, '15939', 'Pour le transport des marchandises le client est sur le macadam et les marchandises lui sont deposÃ© directement'),
(2, 50, 240, 250, 50, 80, 10, 75, 100, 0, 49, '09804', 'Na'),
(3, 7, 0, 150, 10, 80, 12, 5, 0, 0, 15, '66776', 'La cliente possÃ¨de un dÃ©pot de jus et a un travailleur, elle passe trois fois l1 semaine pour faire un contrÃ´le.'),
(4, 50, 0, 0, 20, 2100, 20, 30, 500, 3500, 68, '24682', 'Il a renovÃ© 3 chambres en l''ajoutant dans la liste de ses chambres vip'),
(5, 0, 0, 0, 20, 0, 10, 318, 0, 0, 47, '59686', 'Le client percoit les loyers, ilâ??effectue des travaux de construction. Ses depenses operationnelles sont plus constitues de l IRL (22%) du loyer percu.'),
(6, 25, 816, 950, 50, 240, 20, 25, 0, 23000, 23, '09263', 'La cliente venait rÃ©cemment de la Chine et a dÃ©penser 23000$ au total pour les achats et coÃ»ts de transport plus billets dâ??avion et sÃ©jours.  '),
(7, 10, 0, 550, 10, 0, 5, 5, 20, 0, 75, '52533', 'NA'),
(8, 10, 10, 100, 15, 0, 5, 5, 20, 0, 82, '52652', 'NA'),
(9, 1, 0, 200, 20, 0, 10, 5, 30, 0, 83, '61600', 'NA'),
(10, 70, 3860, 350, 40, 150, 15, 75, 0, 0, 69, '29320', 'Le client fait ses appro Ã  l''Ã©tranger et Ã  Kinshasa. Pour ce qui est de l''Ã©tranger, il dÃ©pense tous les 3 mois 11220$ pour les frais de douane et fret, plus l''allocation conteneur. A Kinshasa, le client fait une dÃ©pense de 120$ chaque mois pour son approvisionnement. Ce qui nous fait un total de 3680$ en ramenant les charges par mensualitÃ©.'),
(11, 20, 0, 0, 10, 150, 10, 10, 0, 0, 50, '60198', 'Le client possede une salle de fete et nâ??a pas beaucoup de depenses operationnelles.'),
(12, 30, 121, 130, 15, 50, 15, 10, 0, 0, 55, '16424', 'La cliente est souvent permanent dans son activite, mais elle a aussi un travailleur qui vend pour elle, qui lui paie 50$ tous les mois.'),
(13, 0, 0, 0, 10, 0, 10, 10, 0, 0, 31, '64281', 'La cliente se trouve a la principale il ya donc pas de cout de voyage marchandise. La cliente est dans la parcelle familiale il ny a pas de loyer a payer. Et elle meme et sa mere tiennent le busness'),
(14, 10, 0, 0, 25, 6237, 0, 0, 100, 0, 86, '08487', 'NA'),
(15, 0, 20, 80, 10, 0, 10, 10, 0, 0, 104, '20414', 'Na'),
(16, 30, 100, 200, 40, 750, 150, 10, 0, 900, 77, '45588', 'Le client paie ses travailleurs une somme de 750$ chaque mois, il a recemment achete une machine a presse  a hauteur de 900$.'),
(17, 15, 10, 60, 30, 30, 20, 5, 10, 0, 110, '75098', 'NA'),
(18, 15, 10, 60, 20, 30, 10, 5, 10, 0, 30, '55237', 'NA'),
(19, 15, 20, 70, 20, 71, 5, 5, 10, 0, 30, '55237', 'NA'),
(20, 30, 450, 250, 25, 60, 20, 25, 0, 0, 81, '29972', 'Le client paie 450$ chaque mois pour lapprovisionnement de ses marchandises.\r\n'),
(22, 30, 3000, 400, 40, 600, 25, 120, 2215, 0, 108, '93333', 'le client fait ses appro au Nigeria tous les 5 mois il depenses 15000$ quant il sapprovisionne, toutes les charges comprises. il a un credit de 23128$ encours chez BAOBAB, il rembourse 2215$ chaque mois et il lui reste 3 mois. Nous avons insrer sa mensualite dans les autres charges operationnelles et son capital restant du dans le bilan.'),
(23, 20, 0, 1900, 20, 1150, 30, 50, 0, 2000, 18, '88721', 'rehabilitation boite ViP'),
(24, 20, 30, 120, 20, 0, 5, 5, 10, 0, 117, '24583', 'Ras'),
(25, 30, 50, 120, 30, 0, 10, 10, 200, 0, 117, '24583', 'Ras'),
(26, 10, 0, 70, 15, 210, 5, 5, 20, 0, 121, '47968', 'NA'),
(27, 20, 0, 0, 10, 100, 10, 20, 0, 0, 106, '02733', 'Na'),
(28, 120, 2317, 600, 25, 120, 0, 60, 0, 0, 109, '70099', 'Le client depense en moyenne 145$ par appro, il fait 4 fois la semaine, ce qui nous donne un total de 2317$ le mois.'),
(29, 120, 3411, 600, 50, 200, 0, 80, 0, 0, 109, '70099', 'le client depense en moyenne 213 $ par appro, il fait 4 fois la semaine et 16 fois le mois. ce qui nous donne un total de 3411$.'),
(30, 20, 1245, 850, 50, 600, 0, 120, 152, 0, 134, '77990', 'la cliente depense 62.25$ par appro, elle fait 5 fois la semaine, ce qui nous donne un total de 1245$ le mois. En plus de cela, elle depense une manutention de 38$ par semaine, ce qui nous un total de 152$ le mois.'),
(31, 40, 50, 0, 25, 140, 25, 15, 0, 0, 119, '32961', 'la cliente paie ses deux agents avec une somme de 140$, elle ne paie pas le loyer de l activite car elle utilise la parcelle familiale.'),
(32, 30, 0, 0, 15, 60, 15, 10, 0, 0, 119, '32961', 'NA');

-- --------------------------------------------------------

--
-- Structure de la table `businesstworeference`
--

CREATE TABLE IF NOT EXISTS `businesstworeference` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NomsReferenceB2` varchar(200) NOT NULL,
  `TypeRelationB2` varchar(200) NOT NULL,
  `Telephone` varchar(30) NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Contenu de la table `businesstworeference`
--

INSERT INTO `businesstworeference` (`Id`, `NomsReferenceB2`, `TypeRelationB2`, `Telephone`, `IdClientD`, `NumDossierCre`) VALUES
(1, 'Papa bola', '+243838429680', 'Bailleur', 16, '15939'),
(2, 'Badibanga caÃ¯s', '+243899167339', 'Frere', 16, '15939'),
(3, 'NZAZI ACTUR', '243895731070', 'Proche ', 49, '09804'),
(4, 'SAMBA KE', '243841533890', 'Mualime', 49, '09804'),
(5, 'Victoria kitoko', '097987473', 'Gerante', 15, '66776'),
(6, 'Tresor kadima', '0896229087', 'Grand frere', 15, '66776'),
(7, 'Henriette Engombe', '0972669470', 'Soeur', 47, '59686'),
(8, 'Kisalu Basile', '0998297178', 'Ami', 47, '59686'),
(9, 'ArsÃ¨ne ', '243904927360', 'Vendeur ', 23, '09263'),
(10, 'NA', 'NA', 'NA', 23, '09263'),
(11, 'Sarive Biyasela', '243898918893', 'Ami', 75, '52533'),
(12, 'Caroline Malo', '243800208253', 'Travailleur', 75, '52533'),
(13, 'Bruno Tafuntu', '243817378725', 'Fournisseur ', 82, '52652'),
(14, 'Djo Basele', '243844248815', 'Ami', 82, '52652'),
(15, 'GEORGE', '243810621500', 'AMI', 83, '61600'),
(16, 'MESSO LUTEMBENA', '243906021060', 'SOEUR', 83, '61600'),
(17, 'LENS KUMBI', '243895140083', 'TRAVAILLEUR', 69, '29320'),
(18, 'CHINEDY CHUKWUMA', '243985403243', 'GERANT', 69, '29320'),
(19, 'Serge Naki', '0823238451', 'Ami', 50, '60198'),
(20, 'Laurien yawili', '0814264252', 'Collegue de service', 50, '60198'),
(21, 'TSHILUMBA BEYA', '243818793632', 'AMIE/GARANTE', 55, '16424'),
(22, 'KATY MBOMBO', 'NA', 'PETITE SOEUR', 55, '16424'),
(23, 'COORDON KIDINDA PAUL', '243906573966', 'Enseignant petit joyeux ', 86, '08487'),
(24, 'NA', 'NA', '0', 86, '08487'),
(25, 'Muaba Cedric', '243 998749228', 'Berger chapel des vain', 104, '20414'),
(26, ' Malemba Benita', '243 824827584', 'Petite soeur', 104, '20414'),
(27, 'ANNIE', '243818366682', 'COUSINE ', 110, '75098'),
(28, 'YANNICK', '243858360291', 'TRAVAILLEUR', 110, '75098'),
(29, 'ANNIE', '243818366682', 'COUSINE ', 30, '55237'),
(30, 'YANNICK', '243858360291', 'TRAVAILLEUR', 30, '55237'),
(31, 'ANDRE MPIULUMO', '243898936955', 'TRAVAILLEUR', 108, '93333'),
(32, 'MARTIN MBADUGHA', '243898904495', 'GERANT/FILS', 108, '93333'),
(33, 'ORDY', '243853464271', 'TRAVAILLEURE', 81, '29972'),
(34, 'NDIAYI', '243999048657', 'AGENT', 81, '29972'),
(35, 'YURHI MANGUNGU ', '243 896070469', 'GERANT', 18, '88721'),
(36, 'JEAN ROBERT TSHITOKO', '23 893067306', 'PASTEUR', 18, '88721'),
(37, 'BELESI BODRICK', '243899931227', 'Voisin  du business ', 111, '27427'),
(38, 'IVETTE NDUKA', '243975437901', 'Belle soeur', 111, '27427'),
(39, 'Esperance sala', '0895865496', 'Fille ', 117, '24583'),
(40, 'Gaitha Mukiapeye', '0893933711', 'Fils', 117, '24583'),
(41, 'Tandy Mayala', '243 891353068', 'Gerant', 106, '02733'),
(42, 'Makaya André', '243 982684991', 'Voisin', 106, '02733'),
(43, 'NGUMBA ATANAS GLOIRE', '243991558690', 'GRANBD FRERE', 109, '70099'),
(44, 'GIRESSE', '243890354493', 'GERANT', 109, '70099'),
(45, 'LANDRY', '243834652915', 'AGENT', 134, '77990'),
(46, 'GUERSON', '243904701957', 'AMI/BUSINESS', 134, '77990'),
(47, 'MANEGA CIANGOLO', '243826298845', 'TRAVAILLEUR', 119, '32961'),
(48, 'SAM BOKOLE', '243810357442', 'TRAVAILLEUR', 119, '32961');

-- --------------------------------------------------------

--
-- Structure de la table `businesstwosaisonnalitevente`
--

CREATE TABLE IF NOT EXISTS `businesstwosaisonnalitevente` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MontantJanvierSV` double NOT NULL,
  `MontantFevrierSV` double NOT NULL,
  `MontantMarsSV` double NOT NULL,
  `MontantAvrilSV` double NOT NULL,
  `MontantMaiSV` double NOT NULL,
  `MontantJuinSV` double NOT NULL,
  `MontantJuilletSV` double NOT NULL,
  `MontantAoutSV` double NOT NULL,
  `MontantSeptembreSV` double NOT NULL,
  `MontantOctobreSV` double NOT NULL,
  `MontantNovembreSV` double NOT NULL,
  `MontantDecembreSV` double NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `businesstwosaisonnalitevente`
--

INSERT INTO `businesstwosaisonnalitevente` (`Id`, `MontantJanvierSV`, `MontantFevrierSV`, `MontantMarsSV`, `MontantAvrilSV`, `MontantMaiSV`, `MontantJuinSV`, `MontantJuilletSV`, `MontantAoutSV`, `MontantSeptembreSV`, `MontantOctobreSV`, `MontantNovembreSV`, `MontantDecembreSV`, `IdClientD`, `NumDossierCre`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, '15939'),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, '09804'),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, '66776'),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 47, '59686'),
(5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, '09263'),
(6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 75, '52533'),
(7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 82, '52652'),
(8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 83, '61600'),
(9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 69, '29320'),
(10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 50, '60198'),
(11, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 55, '16424'),
(12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 86, '08487'),
(13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 104, '20414'),
(14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 110, '75098'),
(15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 30, '55237'),
(16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 108, '93333'),
(17, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 81, '29972'),
(18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 18, '88721'),
(19, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 111, '27427'),
(20, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 117, '24583'),
(21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 106, '02733'),
(22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 109, '70099'),
(23, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 134, '77990'),
(24, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 119, '32961');

-- --------------------------------------------------------

--
-- Structure de la table `businesstwoventemensuellesmoyen`
--

CREATE TABLE IF NOT EXISTS `businesstwoventemensuellesmoyen` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleMois` varchar(200) NOT NULL,
  `Appreciation` varchar(500) NOT NULL,
  `Montant` double NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `businesstwoventemensuellesmoyen`
--

INSERT INTO `businesstwoventemensuellesmoyen` (`Id`, `LibelleMois`, `Appreciation`, `Montant`, `IdClientD`, `NumDossierCre`) VALUES
(1, '0', 'Bon', 0, 16, '15939'),
(2, 'Na', 'Bon', 0, 16, '15939'),
(3, 'Pour les trois derniers mois ', 'Bon', 11150, 75, '52533'),
(4, 'Pour les trois derniers mois ', 'Bon', 11150, 75, '52533'),
(5, 'Pour les trois derniers mois ', 'Bon', 4800, 82, '52652'),
(6, 'Pour les trois mois passes ', 'Bon', 15905, 83, '61600'),
(7, 'Mars', 'Bon', 2100, 110, '75098'),
(8, 'AVRIL ', 'Bon', 2250, 110, '75098'),
(9, 'Mai', 'Bon', 2300, 110, '75098'),
(10, 'MARS', 'Bon', 1500, 139, '47472');

-- --------------------------------------------------------

--
-- Structure de la table `clientd`
--

CREATE TABLE IF NOT EXISTS `clientd` (
  `idclient` int(11) NOT NULL AUTO_INCREMENT,
  `IdCbsCli` int(11) NOT NULL,
  `cycleCliCbs` int(11) NOT NULL,
  `AgeMajeurplus` varchar(10) NOT NULL,
  `PropActiviteCom` varchar(10) NOT NULL,
  `ExerceActuelActiv` varchar(10) NOT NULL,
  `ActivZoneExclus` varchar(10) NOT NULL,
  `CongolaisEtrangerPays` varchar(10) NOT NULL,
  `ActiviteZoneOperationel` varchar(10) NOT NULL,
  `ActiviteExerceplussixmois` varchar(10) NOT NULL,
  `ActiviteEnregLegal` varchar(10) NOT NULL,
  `NomCli` varchar(30) NOT NULL,
  `PostNomCli` varchar(30) DEFAULT NULL,
  `PrenomCli` varchar(30) NOT NULL,
  `DateNaissanceCli` varchar(30) NOT NULL,
  `TypePieceIdentite` varchar(300) NOT NULL,
  `NumPieceIdentite` varchar(100) NOT NULL,
  `SexeCli` varchar(20) NOT NULL,
  `NationaliteCli` varchar(50) NOT NULL,
  `EtatCivilCli` varchar(50) NOT NULL,
  `NomsConjointCli` varchar(500) DEFAULT NULL,
  `DateNaissanceConjointCli` varchar(20) DEFAULT NULL,
  `AdresseDomicileCli` varchar(500) NOT NULL,
  `TelephoneCli` varchar(30) NOT NULL,
  `EmailCli` varchar(50) NOT NULL,
  `TelephoneConjointCli` varchar(50) DEFAULT NULL,
  `ReferenceAdresseClient` varchar(500) NOT NULL,
  `photos` varchar(500) NOT NULL,
  PRIMARY KEY (`idclient`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=142 ;

--
-- Contenu de la table `clientd`
--

INSERT INTO `clientd` (`idclient`, `IdCbsCli`, `cycleCliCbs`, `AgeMajeurplus`, `PropActiviteCom`, `ExerceActuelActiv`, `ActivZoneExclus`, `CongolaisEtrangerPays`, `ActiviteZoneOperationel`, `ActiviteExerceplussixmois`, `ActiviteEnregLegal`, `NomCli`, `PostNomCli`, `PrenomCli`, `DateNaissanceCli`, `TypePieceIdentite`, `NumPieceIdentite`, `SexeCli`, `NationaliteCli`, `EtatCivilCli`, `NomsConjointCli`, `DateNaissanceConjointCli`, `AdresseDomicileCli`, `TelephoneCli`, `EmailCli`, `TelephoneConjointCli`, `ReferenceAdresseClient`, `photos`) VALUES
(14, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'TUTALA', 'KONGOLO', 'TUTALA', '1992-01-01', 'Carte Electeur', '30329550744', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '52 BIS KIMBUDI Q/MATADI C/BUMBU', '243904190735', 'NANANANANANANANA', '', 'ARRET STATION SELEMBAO', 'WIN_20250522_12_37_39_Pro.jpg'),
(15, 127453, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MUNTU', 'NGOMA', 'RODIG STEPHANIE', '1991-08-18', 'Carte Electeur', '30252343781', 'Feminin', 'Congolaise', 'Celibataire', '', '', '9 ieme rue, av/Promesse num 5 Q/industruiel C/Limete', '243827375570', 'NA', '', '9 ieme rue Limete', '20250522_110322.jpg'),
(16, 126903, 2, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'TUJIBIKILE', 'BADIBANGA', 'CELESTIN', '1974-12-26', 'Carte Electeur', '30328745191', 'Masculin', 'CONGOLAISE ', 'Marie', 'MATONDO MUANZA RACHEL', '1986-10-01', 'MANGA MENGA 6 Q/ELENGESA C/MAKALA', '243894562809', 'NA', 'NA', 'MAISON COMMUNALE ', 'TUJIBIKILE BADIBANGA.PNG'),
(17, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MAKIONA', 'DIKU', 'JULES', '2003-01-01', 'Carte Electeur', '30397758939', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '37 A BATENDE Q/VIVI C/MATETE', '243853008379', 'NA ', '', 'BARRE VITA IMANA', 'WIN_20250523_13_36_26_Pro.jpg'),
(18, 102773, 6, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KIESSE', 'MAMPUYA', 'REAGAN', '1987-05-16', 'Carte Electeur', '30052653657', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', 'BARUNDI 20 Q/YOLO-SUD C/KALAMU', '243824705871', 'NA', '', 'EGLISE SAINT GABRIEL', 'Mr REAGAN.PNG'),
(19, 103030, 3, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NDEKE', 'NDEKE', 'GUSTAVE', '1975-11-05', 'Passport', 'OP1831775', 'Masculin', 'CONGOLAISE', 'Marie', 'BIATA KABEYA RACHEL', '', 'TSHELA 124 Q/DJALO C/KINSHASA ', '243821984368', 'NA', 'NA', 'NA', 'NDEKE NDEKE GUSTAVE.PNG'),
(20, 103030, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KINKWONO', 'OBOMON', 'FABRICE', '1975-11-05', 'Passport', 'OP1383386', 'Masculin', 'CONGOLAISE ', 'Marie', 'NZAMBA KIMBESE CELESTINE ', '1991-09-16', 'MBAYA 05 Q/BAMBILA C/MONT NGAFULA', '243820045030', 'fabricekinwono@gmail.com', '243810212628', 'ROUTE DE LA PAIX / ARRET ANCIEN COMBATTANT ', 'CLIENT KINKWONO OBOMON_0001.jpg'),
(23, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'TEMO', 'MBOMA', 'JUNETTE', '1980-07-03', 'Carte Electeur', '30327346634', 'Feminin', 'CONGOLAISE', 'Celibataire', '', '', '155 BAMBILI Q/ SAIO C/NGIRI NGIRI', '243899170639', 'NA', '', 'BOULANGERIE UPAK', 'TEMO JUNETTE.jpg'),
(24, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'TOLI', 'KALOMBO', 'JEAN DE DIEU', '1997-12-25', 'Carte Electeur', '35967619312', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '179BIS TSHUAPA Q/PLZ C/LINGWALA', '243894844101', 'NA', '', 'HUILLERIE FOOD MARKET ITAGA', 'TOLI JEAN DE DIEU.jpg'),
(25, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KUPANGI', 'KALOMBO', 'BEBE-MARIE-THERESE', '1967-03-03', 'Passport', '0P08888797', 'Feminin', 'CONGOLAISE', 'Veuf(ve)', '', '', '46 SANKURU Q/MAZAL C/MONT NGAFULA', '0815132662', 'NAN', '', 'NAN', 'WIN_20250526_11_05_22_Pro.jpg'),
(26, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MAMBWANMBWA', 'MBONGO', 'EMMANUEL', '1976-10-20', 'Carte Electeur', '30273161095', 'Masculin', 'CONGOLAISE', 'Marie', 'MULOYI YVETTE', '1978-12-08', '18 MUEMALIO Q/MOMBELE C/LIMETE', '243823363830', 'NA', '243898335555', 'ARRET 13 EME RUE', 'WIN_20250527_12_18_15_Pro.jpg'),
(27, 200173, 4, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MBUMBA', 'MAHIO', 'ESTHER', '1976-12-25', 'Carte Electeur', '30095527757', 'Feminin', 'congolaise', 'Marie', 'PAMBU KITAWIZI RUBENS', '1970-12-25', '5 KITUNA Q/MALEMBA KULU C/ SELEMBAO', '0850131198', 'NAN', '0998219366', 'NAN', 'WIN_20250527_13_24_42_Pro.jpg'),
(29, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MITUTU', 'MINSIE', 'PRUDENCE', '1993-06-10', 'Carte Electeur', '30277737596', 'Feminin', 'CONGOLAISE', 'Marie', 'MPANI ALAIN', '1980-08-13', '14 KIMANGULU Q/MOMBELE C/LIMETE', '243839848332', 'NA ', '243904401271', '13 RUE LIMETE', 'WIN_20250528_10_51_11_Pro.jpg'),
(30, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'BILONGO', 'BINKONKO', 'ENOCK', '1999-06-27', 'Passport', 'OP1282826', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', 'MB 15D Q/QLOKELE C/MATETE', '243840859768', 'NA', '', 'MB', 'CLIENT BILONGO BINKONKO ENOCK_0001.jpg'),
(31, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'AMBENGA', 'MUMPAMBU', 'JOELLE', '1988-05-25', 'Passport', 'OP1125732', 'Feminin', 'CONGOLAISE', 'Marie', 'BANSUA CLOVIS', '1983-09-27', '62 KIKWIT Q/YOLO SUD C/KALAMU', '243971480036', 'NA', '0898666688', 'ARRET KIKWIT (DIRECTION MARCHE EZO)', 'WIN_20250528_13_31_43_Pro.jpg'),
(34, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KADIMUA', 'MAYILA', 'ELIOT', '1991-03-24', 'Carte Electeur', '30118728991', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', 'AV SCORTE 01 Q/MUSEY C/NGALIEMA', '0893470112', 'NAN', '', 'NAN', 'WIN_20250531_10_18_03_Pro.jpg'),
(35, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MBAKATA', 'IFUTU', 'TANIA', '1989-03-21', 'Carte Electeur', '30024330228', 'Feminin', 'CONGOLAISE', 'Marie', 'ALBERT KALONJI MUKEBA', '1985-06-30', '19 CORBEAU Q/JAMAIQUE C/KITAMBO', '0891559603', 'NAN', '0891559603', 'NAN', 'WIN_20250530_09_43_22_Pro.jpg'),
(36, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'SHONDA', 'KOLOKADI', 'CLAUDE', '1960-12-31', 'Carte Electeur', '30034524142', 'Masculin', 'CONGOLAISE', 'Marie', 'LOBOTA APILAWA MARTINE', '1971-09-22', '70 INGA Q/LUBUDI C/BANDALUNGWA', '243997500725', 'NA', '24399843996', 'INGA BANDAL', 'WIN_20250602_10_10_37_Pro.jpg'),
(37, 128013, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'LUYALA', 'KISEMA', 'LEVI', '1993-01-31', 'Passport', 'OP1064808', 'Masculin', 'CONGOLAISE ', 'Marie', 'KUNDU ', '1996-03-18', 'KIKUSA 66 Q/BINZA UPN C/NGALIEMA ', '243817390066', 'NA', '243897375743', 'STATION VERKIS', 'CLIENT LUYALA  KISEMA_0001.jpg'),
(38, 2, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'SHUNGU', 'SHEKA', 'PATIENCE', '1985-04-22', 'Carte Electeur', '30027331493', 'Feminin', 'CONGOLAISE', 'Celibataire', '', '', '257 NYANGWE Q/LA VOIX DU PEUPLE C/LINGWALA', '243810088344', 'NA', '', 'NYANGWE DES AMOUREUX', 'WIN_20250602_14_46_38_Pro.jpg'),
(39, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NDUBULA', 'MUTALA', 'REBECCA', '1987-04-04', 'Carte Electeur', '30050337921', 'Feminin', 'Congolaise', 'Celibataire', '', '', 'LOKOLENGE 38 BIS KIMANGU 2 C/KALAMU', '243987590566', 'NA', '', 'MOPONO', 'Madame Rebecca.jpg'),
(40, 116301, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KANYINDA', 'MBUYI', 'ANDY', '1991-06-25', 'Carte Electeur', '30057931957', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '42 VISTA Q/MATONGE 2 C/KALAMU', '243819194444', 'NA', '', 'ADI CONSTRUTION ', 'KANYINDA ANDY.jpg'),
(41, 209228, 4, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'WENAYETO', 'KATIA', 'KATIA', '1996-01-20', 'Carte Electeur', '30306149123', 'Feminin', 'CONGOLAISE', 'Celibataire', '', '', '08 OWALE Q/CPA C/MONT NGAFULA', '0821613025', 'NAN', '', 'NAN', 'WIN_20250603_09_46_25_Pro.jpg'),
(42, 106820, 5, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MPINDA', 'TSHIALU', 'EMILE', '1981-12-06', 'Passport', 'OP0808249', 'Masculin', 'CONGOLAISE', 'Marie', 'KAMUANYA MPINDA NELLY', '1983-05-12', '167, 5EME RUE Q/DEBONHOMME C/MATETE', '243852124033', 'NA', '243851455153', 'ARRET MA CREVETTE ', 'MPINDA EMILE.jpeg'),
(43, 126434, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'ASELE', 'MBATHU', 'EUGENIE', '1974-03-28', 'Carte Electeur', '30819330926', 'Feminin', 'CONGOLAISE ', 'Marie', 'MBATHU BIN MBATHU COLIN ROGER', '1972-12-12', 'NGALIEMA 141 Q/ITIMBIRI C/KINTAMBO', '243906761325', 'NA', '243897176541', 'HOPITAL VELODROME ', 'ASELE MBATU_0001.jpg'),
(44, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'IYESA', 'WETSHY', 'JONAS', '1993-04-24', 'Carte Electeur', '30205752502', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '04 MUANO Q/JAMAIQUE C/KINTAMBO', '243821266745', 'NA', '', 'AARET MABAYA', 'WIN_20250604_11_12_16_Pro.jpg'),
(46, 126390, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NZOMVUAMA', 'MATUNU', 'HORTANCE', '1970-08-03', 'Carte Electeur', '30068142396', 'Feminin', 'CONGOLAISE', 'Marie', 'YAMBA LAURENT ', '1961-10-08', 'BOKOTE 56 Q/MATONGE 2 C/KALAMU', '243853187643', 'NA', '243897600410', 'STADE 20 MAI', 'NZOMVUAMA.jpg'),
(47, 128100, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KAPELA', 'DUDA-MBONGO', 'YVETTE', '1971-10-07', 'Carte Electeur', '30248135704', 'Feminin', 'Congolaise', 'Marie', 'Kivule Ngoma Daddy', '1958-11-25', 'Boulevard salongo 7025 Q Salongo C lemba', '0902076208', 'NA', '0816059695', 'Boulevard salongo', '20250603_112313.jpg'),
(49, 125619, 2, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'ITEPELE', 'BAKOTO', 'AHICHA', '1979-07-05', 'Passport', 'OP1269162', 'Feminin', 'Congolais ', 'Marie', 'IYANZA TRAORE CHEKINAH', '1974-06-16', 'Av. KONGOLO 86 Q/PENDE C/ KINSHASA ', '243850037212', 'Na', '243979363555', 'Avenue du marais', 'Screenshot_20250605-175000.jpg'),
(50, 110766, 5, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NDUDI', 'THANDU', 'JOSEPH', '1991-09-30', 'Carte Electeur', '30402150209', 'Masculin', 'Congolaise', 'Celibataire', '', '', 'Avenue Paka numero 1 bis Quartier Masano commune de Lemba', '0827643227', 'NA', '', 'Super lemba', '1749117510483.jpg'),
(52, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MUTEBA ', 'MUKENDI', 'MARCEL', '1975-12-18', 'Carte Electeur', '30185738765', 'Masculin', 'CONGOLAISE', 'Marie', 'META NTUMBA MEDA', '1993-12-25', '3111 SAINT CHRISTOPHE Q/ FUNA C/LIMETE', '243995053683', 'NA', '243971956839', 'PASTEUR WALO CROISEMENT SAINT CHRISTOPHE ET FORGERON', 'MUTEBA MUKENDI MARCEL.jpeg'),
(53, 213632, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MAYINGA', 'RODENGO', 'OSCAR', '1982-09-20', 'Carte Electeur', '35712405875', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', 'MPOZO A44 Q/MATONGE C/KALAMU', '243840764136', 'NA', '', 'EP 1 MATONGE', 'CLIENT MAYINGA_0001.jpg'),
(55, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KAPINGA', 'TSHILUMBA', 'Marie-Louise', '1977-11-02', 'Passport', 'OP0808863', 'Feminin', 'Congolaise ', 'Celibataire', '', '', 'Av.Ingende 155, Q/24 Nov, C/Ngiri-Ngiri', '24397345564', 'NA', '', 'Boulangerie UPAK, Saio ', 'Screenshot_20250606-104943_Gallery.jpg'),
(56, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'YUNGA ', 'BAENDE ', 'SISCA', '1968-12-25', 'Carte Electeur', '30074325045', 'Feminin', 'CONGOLAISE ', 'Veuf(ve)', '', '', 'POPOKABAKA 22 Q/LODJA C/KASA-VUBU', '243898963813', 'NA', '', 'DIRECTION ETHIOPIE', 'yunga.jpg'),
(57, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'non', 'KABEYA', 'TSHIMUENEKA', 'FILS', '1987-06-05', 'Carte Electeur', '30275736936', 'Masculin', 'CONGOLAISE', 'Marie', 'KAPINGA NGOYI ASTRID', '1996-12-11', '1 MUKILA Q/NZADI C/LIMETE', '243852704533', 'NA', '243843173939', 'POINT CHAUD TERRAIN WAYA WAYA', 'KABEYA FILS.jpg'),
(59, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KYOMBA', 'KALUNGA', 'AGNES', '1962-10-17', 'Carte Electeur', '30323237347', 'Feminin', 'Congolaise', 'Marie', 'RUGENGE BINEGO BIENFAIT', '1960-04-24', 'Cataractes 4 bis Binza Pigeon C/ Ngaliema', '243815620105', 'NA', '243822221757', 'Arret KANANGA', 'CLIENTE AGNE.jpg'),
(61, 112088, 4, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'TSHIMANGA', 'KADIATA', 'JEAN', '1984-11-23', 'Carte Electeur', '30247790921', 'Masculin', 'CONGOLAISE', 'Marie', 'MUJINGA ILUNGA JEANINE', '1986-03-26', '29 BIS MWEPU Q/NDANU C/LIMETE', '243852752333', 'NA', '243893819040', 'ECOLE SAINT BERNARD', 'WIN_20250611_10_06_14_Pro.jpg'),
(63, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'DIASOLUNA ', 'NZOYIFUANI', 'DANIEL', '2004-08-12', 'Carte Electeur', 'OP1805848', 'Masculin', 'CONGOLAISE ', 'Celibataire', '', '', 'YUMBI 2 Q/IMMO CONGO C/KALAMU', '243â?¯993â?¯867â?¯498', 'NA', '', 'ECOLE MOSENGO', 'CLIENT DANIEL_0001.jpg'),
(65, 309842, 3, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'INDU', 'KIPARAMOTO', 'ESPERANT', '1974-12-06', 'Carte Electeur', '32724263412', 'Masculin', 'CONGOLAISE ', 'Marie', 'KASERA REBECCA GISELLE ', '1988-12-02', 'CPA AV/MENGI 10 Q/POMPAGE C/MONT NGAFULA', '243810235840', 'NA', '243816060188', 'CPA', 'CLIENT ESPERANT.jpg'),
(66, 203396, 7, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'TSHISUAKA', 'NTONKU', 'EVARISTE', '1987-03-09', 'Carte Electeur', '30294544186', 'Masculin', 'CONGOLAISE  ', 'Marie', 'AMANI MIRAMBO DEBORAH', '1995-12-28', 'UBANGI 12 Q/SALONGO C/LEMBA ', '243â?¯813â?¯200â?¯342', 'NA', '243816677828', 'ROND POINT NGABA', 'CLIENT EVARISTE.jpg'),
(68, 113846, 5, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'YALA', 'NDOFUNSU', 'BERRY', '1963-03-05', 'Carte Electeur', '30302971177', 'Masculin', 'Congolaise', 'Marie', 'Ntete Nadine Nadine', '1972-06-15', 'Av kalambayi n 10 Q/sebo C/Mont ngafula', '+243906980129', '0', '+243852182998', 'Eglise catholique sainte rita', '20250604_165410.jpg'),
(69, 122334, 3, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'CHUKWUMA', '', 'ALOYSIUS', '1966-07-16', 'Passport', 'B50549826', 'Masculin', 'NIGERIAN', 'Celibataire', '', '', 'Av. Bolafa 14, Q/Khartoum, C/Ngiri-Ngiri', '243996586526', 'NA', '', 'Rond point ngambela ', '20250611_125001.jpg'),
(70, 128074, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KANDE', 'KASANGU', 'DANNY', '1977-11-25', 'Passport', 'OP0945829', 'Masculin', 'CONGOLAISE ', 'Marie', 'MPUTU TSHIPAMBA FRANCINE ', '1982-05-26', 'DU FLEUVE 2 Q/MOTEL FIKIN C/LIMETE ', '243990192937', 'NA', '243971456369', 'MOTEL FIKIN', 'CLIENT KANDE_0001.jpg'),
(73, 123899, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'OKONGO', 'SENGA', 'MAMIE', '1979-05-24', 'Carte Electeur', '30069344083', 'Feminin', 'CONGOLAISE', 'Marie', 'YETA KINGOMBE JEAN', '1972-01-01', 'ONATRA 7EME RUE C/LIMETE', '243901541757', 'NA', '243894377080', 'REF DEPOT DIESER', 'OKONGO MAMIE.jpeg'),
(74, 128033, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'BASISUA', 'BALANDISA', 'PAULINE', '1963-07-16', 'Carte Electeur', '30061729338', 'Feminin', 'CONGOLAISE', 'Divorce', '', '', 'ZONGO 21 Q/KIMBANGU 3 C/KALAMU ', '243899403963', 'NA ', '', 'DIRECTION SAMSON ', 'CLIENTE PAULINE_0001.jpg'),
(75, 500452, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'BELESI', 'MUZANGA', 'BODRICK', '1987-05-05', 'Carte Electeur', '30293543718', 'Masculin', 'Congolaise ', 'Marie', 'MBEMBA PEMBA BENEDICTE ', '1989-07-30', 'AV. MOBA N 2 Q/ KIMPWANZA C/LEMBA/VILLE PROVENCE DE KINSHASA', '243899931227', 'NA', '243853362277', 'Igota nzambi', 'IMG-20250611-WA0018.jpg'),
(76, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'LOSANGA', 'NKOSO', 'BIENVENU', '1974-05-20', 'Carte Electeur', '30151941149', 'Masculin', 'Congolaise ', 'Marie', 'MUHIKA DIMBU GEORGINE', '1978-01-12', 'AV ARC BLEU N 1 Q/ ABATTOIR C/ MASINA', '0910395566', 'NA', 'NA', 'Petro Congo  2 paillote ', '20250605_160624.jpg'),
(77, 123604, 2, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MALEKO', 'NKOKO', 'SERGE', '1977-12-26', 'Carte Electeur', '30069139341', 'Masculin', 'Congolaise ', 'Marie', '', '1988-11-02', 'Av. Bosobolo 26 bis, Q/Ancien combattant, C/Kasa-vubu', '243895666704', 'NA', 'NA', 'NA', '20250611_145741.jpg'),
(78, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MPONGO', 'BAOSSO', 'TINO', '1986-09-09', 'Carte Electeur', '30264049244', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '11 KOMBE Q/YOLO SUD C/KALAMU', '243815955000', 'NA', '', 'ARRET MABANGA', 'WIN_20250613_11_03_24_Pro.jpg'),
(79, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MUKANYA', 'TSHOWA', 'OLIVIER', '1986-05-02', 'Carte Electeur', '30278540256', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '23628 8 EME RUE', '243998773640', 'kumukanya@gmail.com', '', 'EN FACE DE MINISTERE AMEN', 'WIN_20250613_13_38_20_Pro.jpg'),
(81, 125055, 2, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KANIKI', 'KANIKI', 'RIGUEN', '1991-01-01', 'Carte Electeur', '30029344115', 'Masculin', 'Congolaise ', 'Marie', 'Lorine lokomba moseka', '1998-01-16', 'Av. Okito 13, Q/résidentiel, C/ Limete', '243890222275', 'NA', '243854730368', '2e rue petit boulevard,  Ã?lÃ©phant ', '17498259993329041809314472793701.jpg'),
(82, 500469, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'LOBUMBWA ', 'BOYAMBA ', 'BRIGITTE ', '1967-12-31', 'Carte Electeur', '3042536902', 'Feminin', 'Congolaise ', 'Veuf(ve)', '', '', 'AV LUNUNGU N03 Q NGAMPANI C KIMBANSEKE', '0990188554', 'NA', '', 'Avant entrÃ©e Mikondo', 'bRIGITTE.jpeg'),
(83, 116783, 3, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'TSHITA', 'MUBEMBA', 'POMPON', '1978-06-09', 'Carte Electeur', '30164331396', 'Masculin', 'Congolaise ', 'Marie', 'DARLING TOWO EKUTSHU', '1984-03-04', 'AV BAGATA N 46 Q Ã?QUATEUR C MASINA ', '243999178486', 'NA', '243897088737', 'Betani', 'ponpon.jpeg'),
(85, 128004, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MPENGE', 'IKWA', 'DETTY', '1981-01-13', 'Carte Electeur', '30257936953', 'Feminin', 'CONGOLAISE ', 'Marie', 'BIKOPO DAUPHIN ', '1975-01-10', 'MFUMUNGI 27 Q/KIMWENZA GARE C/MONT NGAFULA ', '243830771411', 'NA', '243829161840', 'KIMWENZA GARE ', 'CLIENTE MPENGE IKWA_0001.jpg'),
(86, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KILUBU', 'BEMBO', 'SAMUEL ', '1968-12-25', 'Carte Electeur', '35734015809', 'Masculin', 'Congolaise ', 'Marie', 'TOKO MBONGA GRÃ?CE ', '1978-06-07', 'AV LIBOKE N 11 Q SALONGO C LIMETE', '243814292264', 'NA', '243980948516', 'Debonhome', 'KIBULU.jpeg'),
(87, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'DIAKIESE', 'NGITUKULU', 'MERDINE', '1992-09-09', 'Passport', 'OP1280600', 'Feminin', 'CONGOLAISE', 'Celibataire', '', '', '19 MBINGU Q/ECHEANGEUR C/LEMBA', '243859393805', 'NA', '', 'ESPACE NGUNDU', 'WIN_20250617_11_39_50_Pro.jpg'),
(88, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'BUAPUA', 'NTUMBA', 'BOB', '1990-10-25', 'Carte Electeur', '30245942059', 'Masculin', 'CONGOLAISE', 'Marie', 'TSHISEKEDI MUTUDIEMU MARTHE', '1990-10-25', '02 KIBUL Q/SALONGO C/LEMBA', '243898813250', 'NA', '243813924173', 'ARRET PAROISSE', 'WIN_20250617_12_08_23_Pro.jpg'),
(89, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KAMUANYA', 'TSHIBANZA', 'ANNY', '1967-07-01', 'Carte Electeur', '30053341163', 'Feminin', 'CONGOLAISE', 'Veuf(ve)', '', '', '13 CONTONIER Q/KAUKA C/KALAMU', '24359321861', 'NA', '', 'MAYI YA KALAMU', 'WIN_20250617_12_26_40_Pro.jpg'),
(90, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'BISEBA', 'MATAMBA', 'YVAN', '1976-01-02', 'Carte Electeur', '30368148215', 'Masculin', 'CONGOLAISE', 'Divorce', '', '', '1291 REVOLUTION Q/RESIDENTIEL C/LIMETE', '243838826199', 'NA', '', 'ARRET KIN MARCHE', 'WIN_20250617_14_18_47_Pro.jpg'),
(91, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'PANDA ', 'NGANDU', 'SOURIA', '2000-06-25', 'Passport', 'OP1374663', 'Feminin', 'CONGOLAISE ', 'Marie', 'BIOLA KAYEMBE JOEL', '1994-12-02', 'KITOMESA 02 Q/BINZA VILLAGE C/NGALIEMA ', '243821573200', 'NA', '243814439039', 'ARRET KITOMESA PRES DE GRAMALIQUE ', 'MADAME PANDA.jpg'),
(92, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NZITISI ', 'NTONDELE', 'GOTRAN', '1984-03-15', 'Carte Electeur', '30087334099', 'Masculin', 'CONGOLAISE ', 'Marie', '  NTUMBA MBALA LEADRINE ', '1993-04-10', 'KIMBONGO 60 Q/ROKORO C/BUMBU ', '243899595662', 'NA', '243840761276', 'CHABA GAMBELA', 'MR NZITISI_0001.jpg'),
(93, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'TSHIBEMBA', 'TSHIBANGU', 'SYLVAIN ', '1979-07-20', 'Carte Electeur', '30243098941', 'Masculin', 'CONGOLAISE ', 'Marie', 'AZABIK SANDRA', '1981-12-31', 'KINGABWA 5232 Q/KINGABWA C/LIMETE ', '243973233874', 'NA', '243899709016', 'TP KINGABWA ', 'CLIENT SYLVAIN_0001.jpg'),
(94, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'LUMINGU TSHIMANGA ', 'KANYINDA ', 'JEAN KANY ', '1978-11-07', 'Carte Electeur', '35367391824', 'Masculin', 'CONGOLAISE ', 'Marie', 'MBUYI NSANA EVODIE ', '2022-11-22', 'CENTRAL 6 Q/KAUKA C/KALAMU ', '243816608482', 'NA', '243999073611', 'ENTREE KAUKA ', 'JEAN KANY.jpg'),
(95, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NTANA', 'DADA', 'BELANGE', '1986-08-22', 'Passport', 'OP0752414', 'Feminin', 'Congolaise', 'Celibataire', '', '', 'Mungayi 26 D Q/lodja C/Kasa vubu', '0812726511', 'NA', '', 'Rond point Victoire', '17502464128712203462929632601587.jpg'),
(96, 106274, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MBUYA', 'KYONGO', 'IRENE', '1976-02-05', 'Carte Electeur', '30061127255', 'Feminin', 'CONGOLAISE ', 'Marie', 'BABILE KIAKU HUGUES', '1970-10-20', 'LUKUMBE 24 Q/YOLO SUD C/KALAMU ', '243992632295', 'NA', '243891522833', 'MARCHE EZO  ', 'MBUYA IRENE_0001.jpg'),
(97, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NSINA', 'KITOKO', 'BLAISE', '1980-11-11', 'Carte Electeur', '3001535151619', 'Masculin', 'CONGOLAISE', 'Marie', 'KENDI NZABA KELLY', '1989-11-18', '24 BANANA Q/KINSUKA C/NGALIEMA', '243899981757', 'NA', '243900963498', 'BRIKIN', 'WIN_20250618_14_22_42_Pro.jpg'),
(98, 0, 1, 'non', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KADIMA', 'KALALA', 'DERRICK', '1987-04-16', 'Carte Electeur', '30079733434', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '65 MBAU Q/DIOMI C/NGIRINGIRI', '243900023100', 'NA', '', 'CROISEMENT SHABA DIOMI', 'WIN_20250619_11_49_59_Pro.jpg'),
(99, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NGANTSHO', 'BIEBIE', 'ALBERTINE', '1969-08-18', 'Passport', 'OP1110037', 'Feminin', 'CONGOLAISE', 'Celibataire', '', '', '4C Q/KINZAZI C/MATETE', '243998543272', 'NA', '', 'ARRET TSHILOMBO', 'NGANTSHO ALBERTINE_0001.jpg'),
(100, 212086, 2, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'FEZA', 'NAWEZA', 'MENDA', '1989-12-29', 'Carte Electeur', '30309572892', 'Feminin', 'CONGOLAISE', 'Celibataire', '', '', 'AV BAS KONGO NÂ°32 Q/MAMAN MOBUTU C/MONT NGAFULA', '243902486547', 'NAN', '', 'NAN', 'WIN_20250619_11_41_10_Pro.jpg'),
(102, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'WEMAMBOLO', 'HIOSO', 'SAMSON', '1986-04-18', 'Carte Electeur', '30279958671', 'Masculin', 'CONGOLAISE ', 'Celibataire', '', '', '19 FORGERON Q/INDUSTRIEL C/LIMETE ', '243818052159', 'NA', '', 'HOPITAL HJ', 'WEMAMBOLO.jpg'),
(104, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KATEMA', 'MAFUTA', 'BELLANGE', '1987-12-12', 'Carte Electeur', '30054325768', 'Feminin', 'Congolaise', 'Divorce', '', '', 'Av Beladone n 49 Q/kauka C/kalamu', '+243907767946', 'Na', '', 'Arret dispensaire route kimwenza', '20250604_153342.jpg'),
(106, 108284, 4, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MAYEMBA', 'MANKONGO', 'FRANCIS', '1980-09-22', 'Passport', 'OP1749856', 'Masculin', 'Congolaise', 'Marie', 'MANGASE IYENGA NAOMIE', '2002-06-06', 'Av maringa n 10 Q/ancien combattant C/kasavubu', '243895928420', 'Na', '243835613951', 'Prince kasavubu maringa', '20250620_102912.jpg'),
(107, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'LOLEKA', 'ELEKE', 'HUGUES', '1990-05-30', 'Passport', 'OP0892134', 'Masculin', 'CONGOLAISE ', 'Celibataire', '', '', 'YANDONGE 26 Q/PIGEON C/NGALIEMA', '243818602268', 'NA', '', 'ARRET SK', 'LOLEKA ELEKE.jpg'),
(108, 128131, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MBADUGHA', '', 'AUGUSTINE', '1959-08-28', 'Passport', 'B51279742', 'Masculin', 'NIGERIAN', 'Celibataire', '', '', 'Av. Dibaya 29, Lodja, kasa-vubu', '243898918558', 'NA', '', 'NA', 'mbadugha.jpg'),
(109, 124237, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MUSUKU', 'MVUNZI', 'TRESOR', '1992-12-12', 'Passport', 'OP1385373', 'Masculin', 'CONGOLAISE', 'Marie', 'KIBANDA AYOLE JULIE', '1994-03-04', '300 YOLO Q/RESIDENTIEL C/LIMETE', '243896602246', 'NA', '243898509344', 'EN FACE FLET ALTITUDE', 'WIN_20250621_09_08_53_Pro.jpg'),
(110, 500506, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KHOMBI', 'SUKUSA', 'GUYSLAINE', '1968-03-19', 'Passport', 'OP1547601', 'Feminin', 'Congolaise ', 'Veuf(ve)', '', '', 'LOKALI N 29 C MASINA Q3 REF ECOLE YA MPILA', '243856462789', 'NA', '', 'ECOLE YA MPILA', '20250621_111540.jpeg'),
(111, 123299, 3, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'BATWALANA', 'BATANTU', 'JUDITH', '1975-05-02', 'Carte Electeur', '30169752319', 'Feminin', 'Congolaise ', 'Veuf(ve)', '', '', 'AV DES ANTENNES N 10 Q SANS FIL C MASINA ', '243970661592', 'NA', '', 'APOCALYPSE ', '20250623_092650.jpg'),
(112, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'ALAIN KOYI', 'LOKWA', 'BENI', '1998-04-24', 'Carte Electeur', '30089736499', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '151 KOLA Q/SAIO C/NGIRI NGIRI', '243897815821', 'NA', '', 'REF SAIO NGIRI NGIRI', 'ALAIN KOYI LOKWA BENI_0001.jpg'),
(113, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MASSAKA', 'MUISANGI', 'MAMY', '1976-07-27', 'Carte Electeur', '30236135720', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '04 BIS BOMENGE Q/YOLO SUD C/KALAMU', '243858880411', 'NA', '', 'KIMWENZA MOPONO', 'WIN_20250623_13_42_40_Pro.jpg'),
(114, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MUTANGILAYI', 'KAMUINA', 'MOISE', '1987-02-14', 'Carte Electeur', '30072341313', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '34 BUSU MELO C/KASA VUBU', '243853662479', 'NA', '', 'BUSU MELO/GAMBELA', 'WIN_20250623_14_46_02_Pro.jpg'),
(115, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'ENONGA', 'OKITO', 'ANDRE', '1979-09-17', 'Carte Electeur', '30263155841', 'Masculin', 'CONGOLAISE', 'Marie', 'ANDEKA-LUFUNGE ', '1982-01-01', 'NDJOKU 25 Q/NDANU C/LIMETE', '243818602536', 'NA', '243812309069', 'ECOLE ROMANIE 17eme RUE ', 'CLIENT ENONGA_0001.jpg'),
(116, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NGHA', 'ELILANGU', 'RACHEL', '1987-05-04', 'Passport', 'OP1373874', 'Feminin', 'CONGOLAISE', 'Celibataire', '', '', '32 BUKALA Q/PETRO CONGO C/MASINA', '243811476418', 'NA', '', 'ABATOIRE', 'WIN_20250624_12_16_32_Pro.jpg'),
(117, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'Kiboko', 'Munzidi', 'Dela chance', '1973-05-16', 'Carte Electeur', '30198030474', 'Feminin', 'Congolaise ', 'Marie', 'Pianzi kisala remi', '1961-06-03', 'Av.de lâ??Ã©cole nÂ°13 Q.Bibwa C.nsele', '0891460170', 'Na', '0900916264', 'Saint Alexis ', '17508716862475176905584225031316.jpg'),
(118, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KAYA', 'KAMBABA', 'Tina', '1973-04-22', 'Carte Electeur', '30469551134', 'Feminin', 'Congolaise ', 'Marie', 'Tshibemba bukasa jean-marie ', '1953-10-03', 'Av.zola nÂ°6 Q/malonda c/kimbanseke', '0898228715', 'Na', '0903623672', 'Weze mokali', 'IMG-20250625-WA0043.jpg'),
(119, 103872, 6, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KOKIBALI', 'MPEMBISEKA', 'DENISE', '1954-01-30', 'Carte Electeur', '30273347063', 'Feminin', 'CONGOLAISE', 'Celibataire', '', '', 'TOKO 22 Q/MASIALA C/LIMETE ', '243812900269', 'NA', '', 'MOTEL FIKIN', 'CLIENTE KOKIBALI.PNG'),
(120, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'LIONGO', 'MBONGO', 'LEVIEUX', '1966-03-17', 'Carte Electeur', '30013125483', 'Masculin', 'CONGOLAISE', 'Marie', 'MBO BIELA NICOLE', '0001-01-01', '52 KULUMBA Q/UBANGI C/BUMBU', '243899862597', 'NA', '243900089170', 'COMMUNE DE BUMBU', 'WIN_20250626_14_27_52_Pro.jpg'),
(121, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KAPENDA', 'BAKWATUENA', 'HUGO', '1970-07-15', 'Carte Electeur', '30186344688', 'Masculin', 'Congolaise', 'Marie', 'MASENGI UMBA NADIA', '1980-11-26', 'AV LAIC N 30 BIS Q 12 C NDJILI', '243991430774', 'NA', 'NA', 'Betani non loin de la rawbank', '20250624_124224.jpg'),
(122, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'LIONDJE', 'MPONDA', 'ROLLY', '1993-09-02', 'Carte Electeur', '30094752499', 'Masculin', 'CONGOLAISE', 'Marie', 'NGEREZA SHOTSHA LEA', '1993-03-23', 'BAYEU 45 JOLI-PARC C/NGALIEMA', '243897444271', 'NA', '243978920010', 'ENTREE MONT FLEURY', 'PHOTO.jpg'),
(123, 128130, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'SUAKO', 'VANGU', 'GELAIN', '1999-04-20', 'Passport', 'OP1370127', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '26B NGUFU C/MATETE', '243810126940', 'suakomarcel@gmail.com', '', 'Rond poin MUSUJA', 'WIN_20250627_13_11_24_Pro.jpg'),
(124, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MBIYA', 'KAYEMBE', 'GASPARD', '1985-11-06', 'Carte Electeur', '30038124504', 'Masculin', 'CONGOLAISE ', 'Marie', 'NDAYA TSHIMANGA FRANCINE', '1996-01-09', '6 LUOZI Q/LUBUDI C/BANDAL', '243856285588', 'NA', '243856203990', 'WENZE YA BALUBA ', 'GASPARD.jpg'),
(125, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NSILU', 'MAVAMBU', 'MERVEIL', '1998-01-04', 'Carte Electeur', '30057337151', 'Masculin', 'CONGOLAISE', 'Marie', 'MASA LUNDA GRACE', '1992-09-21', 'NIANZA 1415 Q/BONMARCHE C/BARUMBU', '243896076403', 'NA', '243850020590', 'STATION CROIX ROUGE', 'client merveil.jpg'),
(126, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KAZADI', 'MULUMBA', 'PATRICK', '1996-08-04', 'Carte Electeur', '30259948767', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '8 MITELE Q/RESIDENTIEL 13EME RUE C/LIMETE ', '243808451230', 'NA', '', 'LA POLICE ', 'PATRICK_0001.jpg'),
(127, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MODJUKE', 'ENGOMBA', 'BLAISE', '1979-04-19', 'Carte Electeur', '30338745406', 'Masculin', 'CONGOLAISE ', 'Marie', 'NSIMBA WUMBA KEVINE', '1996-07-05', '27 MANZENGELE Q/SALONGO C/MAKALA', '243903333050', 'NA', '243901178950', 'REF BUREAU TVS MANZENGELE ', 'BLAISE.jpg'),
(128, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'IYOKO', 'BIYENGA', 'EVODIE', '1996-08-23', 'Passport', 'OP1412551', 'Feminin', 'CONGOLAISE ', 'Celibataire', '', '', 'TABALA 4 Q/SALONGO C/LIMETE', '243825721562', 'NA', '', 'EGLISE SHEKINAH', 'CLIENTE EVODIE.jpg'),
(129, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MBONGO', 'MUNGOMA', 'TRIOMPHE', '1994-01-16', 'Passport', 'OP1864897', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', 'FORGERON 23 BIS Q/INDUSTRIEL C/LIMETE', '243817943353', 'NA', '', 'ECOLE BANDEKO', 'CLIENT MBONGO.jpg'),
(130, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NDUAKULU', 'MENAYAME', 'MENA', '1982-04-14', 'Carte Electeur', '30086139124', 'Feminin', 'CONGOLAISE', 'Marie', 'MUKUNA KABONGO JEAN CLAUDE ', '1976-05-09', '141 A KIBUNDA BIRMANI C/BUMBU', '243898637251', 'NA', 'NA', 'BIRMANI ENTRE KIBUNDA ', 'MENA_0001.jpg'),
(131, 108414, 6, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KAMBA', 'MUKENDI', 'OMER', '1980-05-26', 'Carte Electeur', '20137825100', 'Masculin', 'CONGOLAISE', 'Marie', 'MUNANGA KATUNKOKI BETTY', '1986-09-09', 'WENZE 27 Q/FUMUSUKA C/MASINA', '243978945905', 'NA', '243900167011', 'TERMINUS SEP', 'client kamba.jpg'),
(132, 113541, 5, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'LOSO', 'LUBENDA', 'ISIDORE', '1956-12-17', 'Carte Electeur', '30370146616', 'Masculin', 'CONGOLAISE', 'Marie', 'KENGE FUTI ANNY', '1966-08-08', 'VUNDULU 59 Q/KONDE C/SELEMBAO', '243901822440', 'NA', '243902247547', 'DEPOT BOIS /KITOKIMOSI', 'CLIENT LOSO.jpg'),
(133, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MAMPASI', 'SALOBOKO', 'JHON', '1980-01-21', 'Carte Electeur', '30024105109', 'Masculin', 'CONGOLAISE ', 'Marie', 'MBIYA FIDELE', '1982-04-12', 'BOLOBO 110 Q/PENDE C/KINSHASA ', '243899899330', 'NA', '243896899922', 'STATION ESSENCE ', 'CLIENT MAMPASI_0001.jpg'),
(134, 122551, 3, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MWASITI', 'ADBALA', 'MWANA', '1981-04-12', 'Carte Electeur', '30013539118', 'Feminin', 'CONGOLAISE', 'Marie', 'ASANI YUMA ASY', '1971-02-12', 'LOWA 119, Q/NGWAKA, C/KINSHASA', '243811777629', 'NA', '243810525813', 'PRINCE KASA-VUBU-LOWA', '20250702_142358.jpg'),
(135, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MUSANDA', 'NLANDU', 'PATRICK', '1984-04-18', 'Carte Electeur', '30069743717', 'Masculin', 'CONGOLAISE ', 'Marie', 'KATASI KUSALA ROSINE', '1992-06-17', '23 DU STADE Q/MATONGE C/KALAMU', '243898498154', 'NA', '243819878756', 'CROISEMENT COULOIR DJAKARTA ', 'PATRICK MUSANDA.jpg'),
(136, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NGOYO', 'LUSIEMO', 'PATRICK', '1983-07-13', 'Carte Electeur', '30215738259', 'Masculin', 'Congolaise ', 'Marie', 'LIHAU MASONGI NICHA', '1990-08-28', 'AV BASUMELO N A7 C KALAMU Q MATONGE 2', '243895000984', 'NA', 'NA', 'NA', '1751626301512766978416445553143.jpg'),
(137, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KABU', 'BUANA', 'ALPHONSINE', '1990-08-06', 'Passport', 'OP1858', 'Feminin', 'Congolaise', 'Celibataire', '', '', 'AV KATONGA N 17 Q MARSHALL C KIMBANSEKE ', '243827143716', 'NA', '', 'ENTREE MIKONDO ', '20250702_114834.jpg'),
(138, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KINKUTU', 'MPIA', 'CHARLES', '1976-12-26', 'Passport', 'OP1485314', 'Masculin', 'Congolaise ', 'Celibataire', '', '', 'AV MALEMBE N 57 Q NTUENGE C MASINA PASCAL Q2', '243821090858', 'NA', '', 'PASSERELLE DE PASCAL ', '20250703_121724.jpg'),
(139, 121750, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KAPINGA', 'MWAMBA', 'MARIE CLAIRE', '1968-07-22', 'Carte Electeur', '35356859975', 'Feminin', 'Congolaise', 'Marie', 'Vaspy FUNDI', '1983-07-07', 'Des generaux, number 14, Q/Musey, C/Ngaliema', '0816410272', 'fundilola@gmail.com', '0816577806', 'arret mabay', 'test.png'),
(140, 125225, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'LENGI', 'MOISE', 'PLAMEDI', '1999-10-03', 'Carte Electeur', '326565845', 'Masculin', 'Congolaise', 'Celibataire', '', '', 'Des generaux, number 14, Q/Musey, C/Ngaliema', '0816410272', 'NA', '', 'Des generaux, number 14, Q/Musey, C/Ngaliema', 'test.png'),
(141, 125225, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MOISE LENGI', 'MOISE', 'PLAMEDI', '1999-10-03', 'Passport', '22553655', 'Masculin', 'Congolaise', 'Celibataire', '', '', '16th street, Limete', '0816577807', 'NA', '', 'NA', 'test.png');

-- --------------------------------------------------------

--
-- Structure de la table `comite`
--

CREATE TABLE IF NOT EXISTS `comite` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DateComiteCredit` varchar(50) NOT NULL,
  `DecisionComite` varchar(300) NOT NULL,
  `MontantCreditValider` double NOT NULL,
  `NbrEcheancierValide` int(11) NOT NULL,
  `ButPret` varchar(300) NOT NULL,
  `FraisSms` double NOT NULL,
  `Caution` double NOT NULL,
  `FraisDossier` double NOT NULL,
  `TauxInteret` double NOT NULL,
  `assurance` double NOT NULL,
  `MembreParticipe` varchar(500) NOT NULL,
  `NbrMembreComite` int(11) NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  `IDProduitCreditComite` int(11) NOT NULL,
  `commentaireComite` varchar(5000) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `comite`
--

INSERT INTO `comite` (`Id`, `DateComiteCredit`, `DecisionComite`, `MontantCreditValider`, `NbrEcheancierValide`, `ButPret`, `FraisSms`, `Caution`, `FraisDossier`, `TauxInteret`, `assurance`, `MembreParticipe`, `NbrMembreComite`, `IdClientD`, `NumDossierCre`, `IDProduitCreditComite`, `commentaireComite`) VALUES
(1, '2025-06-16', 'Passer Sans Condition', 3000, 7, 'Besoin de fonds roulement', 7, 600, 112.5, 62.4, 21.6, 'BENESHA MUPINGANYI GAYLORD', 3, 75, '52533', 3, 'Dossier passÃ© sans condition.\r\nLe client doit ramener 600 USD pour la caution, 22 USD pour l''assurance, 7 USD SMS Alerte, 9 USD carnet de procuration, 15 USD frais de retrait, 123 USD pour le frais de dossier.'),
(2, '2025-06-18', 'Passer Sans Condition', 1200, 10, 'Investissement', 10, 240, 45, 62.4, 8.64, 'NDINGA MENDI', 4, 50, '60198', 3, 'Le client est a son 5e cycle et a un bon  historique credit, il gagne environ 1500 USD en termes de revenus avec la location de la salle de fete et sollicite un credit pour renover la salle et ajouter des chaises en plastique   '),
(4, '2025-06-18', 'Passer Sans Condition', 2000, 6, 'Investissement', 6, 400, 75, 62.4, 14.4, 'NDINGA LEMBI MAINDI', 3, 47, '59686', 3, 'NA'),
(8, '2025-06-20', 'Passer Sans Condition', 5000, 10, 'Investissement', 10, 1000, 187.5, 62.4, 36, 'BENESHA GAYLORD', 2, 83, '61600', 3, 'Na'),
(9, '2025-06-20', 'Passer Sans Condition', 2000, 10, 'Investissement', 10, 400, 75, 62.4, 14.4, 'MUTEBA WA MUTEBA GLODI', 2, 82, '52652', 3, 'NA'),
(10, '2025-06-18', 'Passer Sans Condition', 1000, 6, 'Besoin de fonds roulement', 6, 200, 37.5, 68.4, 7.2, 'NDINGA MAINDI', 3, 15, '66776', 2, 'Le client est a son premier cycle et sollicite un prét pour  augmenter et diversifier son stock .'),
(11, '2025-06-23', 'Passer Sans Condition', 1500, 6, 'Besoin de fonds roulement', 6, 300, 56.25, 62.4, 10.8, 'ENGIONGO MBIANGO TARQUIN', 2, 110, '75098', 3, 'ok pour comite '),
(15, '2025-06-26', 'Passer Sans Condition', 8000, 7, 'Besoin de fonds roulement', 7, 1600, 300, 54, 57.6, 'KAVUNGA KARL', 3, 69, '29320', 4, 'Ok pour decaissement !!!'),
(16, '2025-06-27', 'Passer Sans Condition', 9900, 8, 'Besoin de fonds roulement', 8, 1980, 371.25, 54, 71.28, 'KAVUNGA KARL', 3, 108, '93333', 4, 'ok pour le decaissement !!!'),
(17, '2025-06-27', 'Passer Sans Condition', 7000, 8, 'Besoin de fonds roulement', 8, 1400, 262.5, 54, 50.4, 'KAVUNGA KARL', 3, 81, '29972', 4, 'ok pour decaissement !!'),
(19, '2025-07-02', 'Passer Sans Condition', 9900, 12, 'Besoin de fonds roulement', 12, 1980, 371.25, 54, 71.28, 'Karl KAVUNGA TAMBU', 1, 68, '24682', 4, 'Besoin en fonds de roulement. '),
(20, '2025-07-03', 'Passer Sans Condition', 2000, 8, 'Besoin de fonds roulement', 8, 400, 75, 62.4, 14.4, 'DAVID CHIZA', 3, 106, '02733', 3, 'Veuillez compléter ces éléments avant d''évoluer avec le dossier :\r\n1. Absence registre des recettes journalière de l''Hôtel et Terrasse\r\n2. Le stock surévalué \r\n3. Harmoniser avec le salaire de garant\r\n4. La capacité de paiement du client est supérieure à la demande d''où le client peut s''autofinancer sans faire recours à un prêt. \r\n\r\nAprès avoir répondu à nos préoccupations, nous pouvons évoluer avec le dossier.');

-- --------------------------------------------------------

--
-- Structure de la table `commentairerp`
--

CREATE TABLE IF NOT EXISTS `commentairerp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire1` varchar(5000) NOT NULL,
  `commentaire2` varchar(5000) NOT NULL,
  `commentaire3` varchar(5000) NOT NULL,
  `NumDossierCre` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Contenu de la table `commentairerp`
--

INSERT INTO `commentairerp` (`id`, `commentaire1`, `commentaire2`, `commentaire3`, `NumDossierCre`) VALUES
(1, 'Na', 'Na', 'le levier financier ne respecte pas la norme car le client manque le liquidite due a une commande ', '15939'),
(2, 'Le client presente une capacite de paiement de 812 dollars.', 'Son bilan est plus constitue de ses avoirs vu la nature de l activite.', 'Le client percoit des loyers d ou la non cohenrence de certains ratios', '59686'),
(3, 'NA', 'NA', 'NA', '52533'),
(4, 'NA', 'NA', 'NA', '52652'),
(5, 'NA', 'Il y a une variation positive significative de la situation financiere de monsieur MUBEMBA POMPON ', 'L analyse qualitative a ete effectuee avec succes en respectant les regles de l art ', '61600'),
(6, 'Le client est à  son 3e cycle chez MICROPOP SA. Lors de son précèdent cycle, il a travaillÃ© avec zÃ©ro jour de retard, un comportement très appréciable. Actuellement, le client veut Ã  nouveau Ãªtre accompagner par l''institution pour un montant de 8000$ pour dÃ©douaner ses marchandises en provenance de DUBAI. Rappelons que nous avons constater une augmentation du chiffre d''affaire du business du client au prÃ¨s de 55%, mais aussi ses ventes moyennes. Ce qui lui permet d''augmenter aussi sa capacite de paiement Ã  plus de 68%, comparativement Ã  son cycle prÃ©cÃ©dent. \r\nNous avons calculÃ© le chiffre d''affaire du business du client sur base de la mÃ©thode max-min des ventes journaliÃ¨res de 7 derniers jours, ce qui nous a donnÃ© 36356$; Son CMV est de 25986$; Nous avons par aprÃ¨s dÃ©duit toutes les charges opérationnelles et prives, ce qui nous permis de degage une capacite de paiement de 5214$.', 'Le jour de l''analyse, nous avons trouver le client avec 750$ en main comme vente du jour; et avons considerer 800$ de la valeur des équipements et outils aprés l''amortissement; et ensuite nous avons egalement tenu compte de ses 2100$ de garantie qu''il posse¨de auprÃ¨s de son bailleur du local commercial. Ce qui nous a donnÃ© un capital propre de 56979$.', 'Sur la rotation du stock, ce ratio ne peut remplir la norme car Ã  priori, les activitÃ©s ou les piÃ¨ces de rechanges tourne un peu de maniÃ¨re lente, mais possÃ¨de une liquiditÃ© consÃ©quente pour couvrir le crÃ©dit.', '29320'),
(7, 'Le client possede une salle de fete. Apres deduction de toutes les charges, il presente une capacite de paiement de 898 dollars.', 'Le client  possede 200 chaises en plastique dont la valeur est estime a 800 dollars.', 'Le client est dans le service, il possede une salle de fete dâ??ou lâ??incoherence et le non respect de certains ratio.', '60198'),
(8, 'Nous avons obtenu le chiffre d''affaire du business de la cliente sur base des ventes de 3 derniers jours, qui fait un total de 5133$. Son CMV revient a 3583$; En deduisant ses depenses privees et operationnelles, nous obtenons une capacite de paiement de 900$.', 'Le jour de la visite, nous avons trouve la cliente avec zero dollars en main; le total de ses equiepements et outils font 1622$; son capital propre revient a 4629$.', 'Tous les ratios sont bons.', '16424'),
(9, 'Nous avons obtenu son CA sur base des ventes min-max du client; ce qui nous a donne un total de 6360$, en deduisant toutes les charges, nous obtenons une capacite de paiement de 2937$.', 'Le jour de la visite, nous avons trouver le client avec 0$, le total des equipements font 15400$.', 'Nous sommes face a une activite de service et certains ratios ne peuvent respecter les normes.', '45588'),
(10, 'le client est a son 2e cycle, il solicite un pret de 15000$; nous avons calcule son chiffre daffaire sur base des ventes journalieres min-max qui nous a donne un total de 8720$ et son coup de marchandise vendue a 4750$; en deduisant toutes les charges privees et operationnelles, nous degageaons une capacite de paiement de 3293$. ', 'Le jour de l''analyse, nous avons trouve le client avec 380$ en main.', 'Tous les ratios sont bons, a lexception de celui de la rotation de stock car nous sommes face a une activte ou les produits secoulent a pas de tortue.', '29972'),
(11, 'Nous avons calcule le chiffre daffaire du client sur base des ventes journalieres min-max, qui nous a degagÃ© un total de 26772$, son CMV a donne 14579$. En deduisant toutes les charges privees et operationnelles, sa capacite de paiement degagee est de 5137$.', 'Le jour de la visite, nous avons trouve le client avec 280$ en main, son stock evalue a hauteur de 119490$; son capital propre est de 98090$.', 'Dans ces genres dactivite, certains ratios ne peuvent respecter la norme car nous sommes face a une activite ou les marchandises secoulent pas assez rapidement et prenne un peu du temps avant un nouveau appro, cest par exemple la rotation de stock.', '93333'),
(13, 'Na', 'Na', 'Le ratio du levier financier ne respecte pas la norme pas la norme parceque le pret micropop doit etre inferieur a l actif circulant qui est compose generalement de la liquidite et du stock qui est faible parceque c est la location (le service) qui rapportent beaucoup et au moment des analyses l argent est remis au proprietaire le  matin apres inventaire', '88721'),
(14, 'NA', 'NA\r\n', 'NA', '55237'),
(16, 'Na', 'Na', 'Le ratio du levier financier et de la liquidité ne correspondent pas à la norme parceque le capital propre du client et son  actif circulant sont inférieur au prêt workflow. C''est ça même la raison de la demande de la cliente pour augmenter son capital propre et son fond de roulement', '20414');

-- --------------------------------------------------------

--
-- Structure de la table `compositionfamiliale`
--

CREATE TABLE IF NOT EXISTS `compositionfamiliale` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdclientD` int(11) NOT NULL,
  `Nom` varchar(100) NOT NULL,
  `Age` int(11) NOT NULL,
  `LienParente` varchar(100) NOT NULL,
  `localisation` varchar(50) NOT NULL,
  `Profession` varchar(100) NOT NULL,
  `NumDossierCredit` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Contenu de la table `compositionfamiliale`
--

INSERT INTO `compositionfamiliale` (`Id`, `IdclientD`, `Nom`, `Age`, `LienParente`, `localisation`, `Profession`, `NumDossierCredit`) VALUES
(1, 16, 'Matondo mwanza rachel', 1986, 'Epouse', 'oui', 'CouturiÃ¨re', '15939'),
(2, 16, 'Malu tina', 5, 'Enfant', 'oui', 'Eleve', '15939'),
(3, 16, 'Mutianeta maria', 5, 'Enfant', 'oui', 'Eleve', '15939'),
(4, 15, 'Muntu', 34, 'Cliente', 'oui', 'Entrepreneur', '66776'),
(5, 49, 'HAWA ITEPELE TRAORE', 23, 'Fils', 'oui', 'Eleve', '09804'),
(8, 49, 'MIRIAM TELEMIE', 19, 'Fille ', 'oui', 'Eleve', '09804'),
(9, 49, 'ISSA ITEPELE', 17, 'Fille ', 'oui', 'Eleve ', '09804'),
(10, 49, 'FATOU ITEPELE', 14, 'Fille ', 'oui', 'Eleve ', '09804'),
(11, 49, 'IYANZA TRAORE ', 51, 'epoux', 'oui', 'Commercant', '09804'),
(12, 47, 'Yvette Kapela', 54, 'Cliente', 'oui', 'Cliente', '59686'),
(13, 47, 'Daddy Kivule', 67, 'Epoux', 'oui', 'Entrepreneur', '59686'),
(14, 23, 'Djodjo NKEKO', 15, 'Enfant ', 'oui', 'Ã?lÃ¨ve', '09263'),
(15, 23, 'Fleurgi NKEKO', 18, 'Enfant ', 'oui', 'Ã?lÃ¨ve', '09263'),
(16, 23, 'Charonne NKEKO ', 11, 'Enfant ', 'oui', 'Ã?lÃ¨ve ', '09263'),
(17, 68, 'Ndete', 59, 'Epouse', 'oui', 'Menagere', '24682'),
(18, 75, 'BELESI BEDRING', 13, 'Fille ', 'oui', 'Ã?lÃ¨ve', '52533'),
(19, 75, 'BELESI PRECANA', 10, 'Fils', 'oui', 'Ã?lÃ¨ve', '52533'),
(20, 75, 'BELESI PRECANA', 10, 'Fils', 'oui', 'Ã?lÃ¨ve', '52533'),
(21, 75, 'BELESI PREVINA', 10, 'Fils', 'oui', 'Eleve', '52533'),
(22, 75, 'BELESI BENVIE ', 5, 'Fille ', 'oui', 'Eleve', '52533'),
(23, 75, 'BELESI PROJELI ', 2, 'Fils', 'oui', 'NA', '52533'),
(24, 82, 'Wanet Vital', 41, 'Fils', 'non', 'Commercant ', '52652'),
(25, 82, 'Nadine Bomanga Ifaso', 36, 'Fille ', 'non', 'Menagere', '52652'),
(26, 82, 'Jemima Bosala', 24, 'Fille ', 'oui', 'Commercante', '52652'),
(27, 83, 'TOWO EKUTSHU DARLING', 41, 'EPOUSE', 'oui', 'Menagere', '61600'),
(28, 83, 'ALFRED TSHITA KITARA', 15, 'FILS', 'oui', 'ELEVE ', '61600'),
(29, 83, 'PRECIEUSE TSHITA MASENGO', 12, 'FILLE ', 'oui', 'ELEVE ', '61600'),
(30, 69, 'CHUKWUMA ALOYSIUS', 59, 'CLIENT', 'oui', 'COMMERCANT', '29320'),
(31, 69, 'CHINEDY CHUKWUMA', 28, 'ENFANT', 'oui', 'LIBERALE', '29320'),
(32, 50, 'Joseph Ndudi', 34, 'Client', 'oui', 'Entrepreneur', '60198'),
(33, 50, 'Joseph Ndudi', 34, 'Client', 'oui', 'Entrepreneur', '60198'),
(34, 86, 'DIEU KILUBU', 35, 'FILS', 'non', 'NA', '08487'),
(35, 86, 'GENAL KILUBU', 24, 'FILS', 'oui', 'NA', '08487'),
(36, 86, 'SHADAYI KILUBU', 20, 'FILS', 'oui', 'NA', '08487'),
(37, 86, 'JUNIACE KILUBU', 17, 'FILS', 'oui', 'ELEVE ', '08487'),
(38, 86, 'SERAPHIN KILUBU ', 14, 'FILS', 'oui', 'ELEVE ', '08487'),
(39, 86, 'ADONAI KILUBU ', 11, 'FILS', 'oui', 'ELEVE ', '08487'),
(40, 86, 'BILIVE KILUBU ', 2, 'FILLE ', 'oui', 'NA', '08487'),
(41, 55, 'KAPINGA TSHILUMBA Marie-Louise', 48, 'cliente', 'oui', 'COMMERCANTE', '16424'),
(42, 55, 'ANDY MUTEBA', 20, 'ENFANT', 'oui', 'ETUDIANT', '16424'),
(43, 31, 'Bansua clonel', 10, 'Fils', 'oui', 'Eleve', '64281'),
(44, 31, 'Bansua el joyce', 8, 'Fille', 'oui', 'Eleve', '64281'),
(45, 31, 'Bansua emmanuela', 3, 'Fille', 'oui', 'Eleve', '64281'),
(46, 31, 'Bansua prunel', 2, 'Fils', 'oui', 'Eleve', '64281'),
(47, 81, 'KANIKI KANIKI RIGUEN', 34, 'CLIENT', 'oui', 'COMMERCANT', '29972'),
(48, 81, 'LOKOMBA MOSEKA LORINE', 31, 'EPOUSE', 'oui', 'LIBERALE', '29972'),
(49, 81, 'ELOHIM NDONA KANIKI', 5, 'ENFANT', 'oui', 'ELEVE', '29972'),
(50, 81, 'ANAYAS MOLONEA KANIKI', 3, 'ENFANT', 'oui', 'LIBER', '29972'),
(51, 77, 'MALEKO NKOKO SERGE', 48, 'CLIENT', 'oui', 'COMMERCANT', '45588'),
(52, 77, 'SANKISHA KAMBALA CHARLOTTE', 37, 'EPOUSE', 'oui', 'LIBERALE', '45588'),
(53, 77, 'MALEKO BARON', 17, 'ENFANT', 'oui', 'ELEVE', '45588'),
(54, 77, 'MALEKO MIRIAM', 14, 'ENFANT', 'oui', 'ELEVE', '45588'),
(55, 77, 'MALEKO HERMELINE', 9, 'ENFANT', 'oui', 'ELEVE', '45588'),
(56, 77, 'MELEKO HERLY', 4, 'ENFANT', 'oui', 'ELEVE', '45588'),
(57, 104, 'Elanga Jule', 9, 'Fils', 'oui', 'Eleve', '20414'),
(58, 104, 'Lumande Beldie', 5, 'Fille', 'oui', 'Eleve', '20414'),
(59, 30, 'BILONGO DEGAUL', 56, 'PERE', 'non', 'MECANICIEN CHEZ AFRO AMERICAIN ', '55237'),
(60, 30, 'SYLVIE BILONGO', 44, 'MERE', 'non', 'COMMERCANTE', '55237'),
(61, 30, 'FALONE BILONGO ', 32, 'GRANDE SÅ?UR ', 'non', 'COMMERCANCE', '55237'),
(62, 30, 'JOSELINE BILONGO ', 30, 'GRANDE SÅ?UR ', 'non', 'COMMERCANTE', '55237'),
(63, 30, 'NATAN BILONGO', 17, 'PETIT FRERE ', 'non', 'ETUDIANT', '55237'),
(64, 110, 'LAMBERT ', 33, 'FILS', 'non', 'INGENIEUR ', '75098'),
(65, 110, 'SERAPHIN ', 26, 'FILS', 'oui', 'ENTREPRENEUR ', '75098'),
(66, 110, 'GREBER', 22, 'FILS', 'oui', 'ETUDIANT', '75098'),
(67, 108, 'MARTIN MBADUGHA', 30, 'ENFANT', 'oui', 'COMMERANT', '93333'),
(68, 108, 'MBADUGHA AUGUSTINE', 65, 'CLIENT', 'oui', 'COMMERANT', '93333'),
(69, 111, 'Mata Mamitchou', 33, 'PETITE SOEUR', 'non', 'Commercante', '27427'),
(70, 111, 'LUBONDO MARIE', 61, 'MERE', 'oui', 'COMMERCANTE', '27427'),
(71, 111, 'MAKENGO GARBA', 73, 'Pere ', 'oui', 'NA', '27427'),
(72, 18, 'kiesse nickson', 18, 'fils', 'oui', 'ETUDIANT', '88721'),
(73, 18, 'kiesse chris', 9, 'fils', 'oui', 'eleve', '88721'),
(74, 117, 'Kiboko Munzidi dela chance', 52, 'Cliente', 'oui', 'CommerÃ§ante ', '24583'),
(75, 117, 'Mpianzi remi', 60, 'Mari', 'oui', 'Technicien Ã  la rtn', '24583'),
(76, 117, 'Mpiazi', 30, 'Fils', 'oui', 'Na', '24583'),
(77, 117, 'EspÃ©rance sala', 22, 'Fille', 'oui', 'Ras', '24583'),
(78, 117, 'Gaitha Mukiapeye', 19, 'Fils', 'oui', 'Ras', '24583'),
(79, 121, 'LUXEL KAPENDA', 9, 'FILS', 'oui', 'ELEVE ', '47968'),
(80, 121, 'LESMI KAPENDA ', 7, 'FILS', 'oui', 'ELEVE ', '47968'),
(81, 121, 'DOXA KAPENDA ', 3, 'FILS', 'oui', 'NA', '47968'),
(82, 106, 'Mayemba francis', 45, 'Lui meme', 'oui', 'Entrepreneur', '02733'),
(83, 106, 'Mangase naomie', 23, 'Epouse', 'oui', 'Menagère', '02733'),
(84, 106, 'Mayemba francianna', 6, 'Fille', 'non', 'Eleve', '02733'),
(85, 109, 'MUSUKU MVUNZI TRESOR', 33, 'CLIENT', 'oui', 'COMMERCANT', '70099'),
(86, 109, 'KIMBANDA AYONE JULIE', 31, 'EPOUSE', 'oui', 'LIBERALE', '70099'),
(87, 134, 'MWASITI ADBALA MWANA', 44, 'cliente', 'oui', 'COMMERCANTE', '77990'),
(88, 134, 'ASANI YUMA ASY', 54, 'EPOUX', 'oui', 'LIBERALE', '77990'),
(89, 134, 'AMISI ASANI', 24, 'ENFANT', 'oui', 'ETUDIANT', '77990'),
(90, 134, 'TIBA ASANI', 20, 'ENFANT', 'oui', 'ETUDIANT', '77990'),
(91, 134, 'MEDI ASANI', 16, 'ENFANT', 'oui', 'ELEVE', '77990'),
(92, 134, 'JOUMA ASANI', 12, 'ENFANT', 'oui', 'ELEVE', '77990'),
(93, 134, 'ADBALA ASANI', 7, 'ENFANT', 'oui', 'ELEVE', '77990'),
(94, 119, 'KOKIBALI MPEMBISEKA DENISE', 71, 'cliente', 'oui', 'COMMERCANTE', '32961'),
(95, 119, 'JOLI BOLA', 49, 'ENFANT', 'non', 'MARIE', '32961'),
(96, 119, 'SERGE BOLA', 41, 'ENFANT', 'non', 'MARIE', '32961'),
(97, 119, 'DENISE BOLA', 40, 'ENFANT', 'oui', 'MARIE', '32961'),
(98, 139, 'VASPY FUNDI', 50, 'MARI', 'oui', 'FONCTIONNAIRE', '47472'),
(99, 139, 'GLOIRE FUNDI', 12, 'FILS', 'oui', 'Eleve', '47472');

-- --------------------------------------------------------

--
-- Structure de la table `demandecreditrecommandepar`
--

CREATE TABLE IF NOT EXISTS `demandecreditrecommandepar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NumDossierCre` varchar(300) NOT NULL,
  `Noms` varchar(100) NOT NULL,
  `Telephone` varchar(30) NOT NULL,
  `FonctionR` varchar(50) NOT NULL,
  `AgentMcpop` varchar(20) NOT NULL,
  `AdresseR` varchar(300) NOT NULL,
  `Relation` varchar(100) NOT NULL,
  `Noms2` varchar(100) NOT NULL,
  `Telephone2` varchar(50) NOT NULL,
  `FonctionR2` varchar(50) NOT NULL,
  `AgentMcpop2` varchar(50) NOT NULL,
  `AdresseR2` varchar(500) NOT NULL,
  `Relation2` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=135 ;

--
-- Contenu de la table `demandecreditrecommandepar`
--

INSERT INTO `demandecreditrecommandepar` (`Id`, `NumDossierCre`, `Noms`, `Telephone`, `FonctionR`, `AgentMcpop`, `AdresseR`, `Relation`, `Noms2`, `Telephone2`, `FonctionR2`, `AgentMcpop2`, `AdresseR2`, `Relation2`) VALUES
(13, '46437', 'NA', 'NA', 'NA', 'Oui', 'NA', 'NA', 'NA', 'NA', 'NA', 'Oui', 'NA', 'NA'),
(14, '66776', 'Niko Tshamale', '243811767239', 'Pasteur', 'Non', 'Rond point kimpuanza', 'Pasteur', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(15, '15939', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(16, '01222', 'PROPHETE KODE', 'NA', 'PASTEUR', 'Non', '14 Ã¨me RUE LIMETE', 'FIDELE ET PASTEUR', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(17, '88721', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(18, '33457', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(19, '38625', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(20, '78069', 'NONO MBIYA', '243816054031', 'PASTEUR', 'Non', '180 NGEBA Q/MATADI C/BUMBU EGLISE LES VRAIS ADORATEURS ', 'PASTEUR ET FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(22, '09263', 'JEREMIE TSHIBANGU', '243851603292', 'PASTEUR', 'Non', '21 VICTOIRE Q/ANCIEN COMBATTANT C/KASA VUBU ', 'PASTEUR ET FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(23, '77829', 'DADY KABANGU', '243814696037', 'PASTEUR ', 'Non', '1 MANIEMA C/KINTAMBO DIRECTION KOMORIKO REF ECOLE AURORE', 'PASTEUR ET FIDELE', 'NA', 'NA ', 'NA', 'Non', 'NA', 'NA'),
(24, '23401', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN'),
(25, '58355', 'MBALA JESUS', 'NA', 'PASTEUR', 'Non', 'INTENDANCE EGLISE ALLIANCE TABERNACLE', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(26, '69063', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN'),
(28, '11973', 'MAVUANCHA CHRISTOPHE', 'NA', 'PASTEUR', 'Non', '10 EME RUE LIMETE NUMERO 32 A', 'FIDELE ET PASTEUR', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(29, '55237', 'BATUZEYI PAPY', '243815254243', 'COORDON', 'Non', 'BAUMBU 1 41F C/MATETE', 'BERGER', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(30, '64281', 'MANGAYA EMMANUEL', 'NA', 'PASTEUR', 'Non', 'KIKWIT UNIVERSITE', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(33, '11416', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN'),
(34, '78641', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN'),
(35, '12780', 'ABBE MVUDI', 'NA', 'PRETE CATHOLIQUE', 'Non', 'PAROISSE SAINT MICHEL', 'BERGER ET FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(36, '14985', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(37, '98277', 'EZABO MEYAR', 'NA', 'PASTEUR', 'Non', 'MAVUNGU Q/INGA C/BANDALUNGWA', 'PASTEUR FIDELE', 'NA', 'NA', 'NAANA', 'Non', 'NA', 'NA'),
(38, '05776', 'NA', '0', 'NA', 'Non', 'NA', 'NA', 'NA', '0', 'NA', 'Non', 'NA', 'NA'),
(39, '53837', 'LEONARD KAYUMBI BEYA', '243816005555', 'PASTEUR ', 'Non', '35 BOLOBO C/LINGWALA REF STATION BOLOBO', 'PASTEUR ET FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(40, '89232', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN'),
(41, '91730', 'KABEYA TSHUNZA TUBEYA', '243850027357', 'PASTEUR', 'Non', 'KULUMBA 127 Q/BAKATA C/MASINA', 'PASTEUR ET FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(42, '39620', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(43, '35731', 'MARCELO TUNASI', 'NA', 'PASTEUR', 'Oui', 'NA', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(45, '54122', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(46, '59686', 'Venant Madidi', '0813180212', 'Pasteur', 'Non', 'Mulumba kashi quarier Righini commune Lemba', 'Pasteur', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(47, '09804', 'SAMBA KE', '243841533890', 'CommerÃ§ant ', 'Non', 'Croisement ISOKI et Du marchÃ© C/KINSHASA ', 'Mualime', 'Na', 'Na', 'Na', 'Non', 'Na', 'Na'),
(48, '60198', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(49, '70495', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(51, '16424', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(53, '97984', 'KALENGA ALPHA', '243', 'PASTEUR ', 'Non', '19 POTO POTO Q/PASCAL C/KIMBANSEKE ', 'PASTEUR COLLABORATEUR', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(55, '12335', 'NA', '0', 'NA', 'Non', 'NA', 'NA', 'NA', '0', 'NA', 'Non', 'NA', 'NA'),
(57, '61963', 'LUBUELE SERGE', '243891093964', 'PASTEUR', 'Non', 'EGLISE NOUVELAPOSTOLAT AUTHENTIQUE/DERIERE SAINT BERNAD', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(59, '28171', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(61, '19956', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(62, '32238', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(63, '24682', 'Na', '0', 'Na', 'Non', '0', 'Na', 'Na', '0', 'Na', 'Non', 'Na', 'Na'),
(64, '29320', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(65, '73520', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(68, '88366', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(69, '26649', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(70, '52533', 'KELLY KESSO', '243852134471', 'AC', 'Oui', 'NA', 'Ami', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(71, '45588', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(72, '09927', 'TRESOR TSHETSHE', 'NA', 'PATSUER', 'Non', '21 NKUMU C/LIMETE', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(73, '37183', 'MANZANGA CHRISTIAN', 'NA', 'PASTEUR CHRISTIAN', 'Non', ' BOBOZO', 'PASTEUR ASSOSSIE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(75, '29972', 'Kali kasende', '243990303434', 'Pasteur', 'Non', 'NA', 'FidÃ¨le ', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(76, '52652', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(77, '61600', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(79, '66703', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(80, '08487', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(81, '11965', 'HENRY PAPA', 'NA', 'PASTEUR', 'Oui', '629 BEGONIAS Q/RESIDENTIEL C/LIMETE', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(82, '83739', 'RUBIN MULUMBA', '243819106669', 'PASTEUR', 'Oui', 'GOSHEN TABERNACLE, 7EME RUE YOLO MEDICALE', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(83, '47399', 'TSHIMANGA MAURICE', 'NA', 'PASTEUR', 'Non', '33 BOLOBO PLATEU C/KINSHASA', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(84, '09275', 'MAMAN NSIMBA', 'NA', 'PASTEUR', 'Oui', '10 EME RUE/ PAROLE DE VIE', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(85, '57566', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(86, '69155', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(87, '22267', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(88, '19807', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(89, '94912', 'Pasteur Moise', '0820533016', 'Pasteur', 'Non', 'NA', 'Pasteur', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(90, '06622', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(91, '56869', 'NTUMBA HONORE', '243990310366', 'RECTEUR', 'Non', '252 KASONGOLUNDA C/LINGWALA', 'BERGERET FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(92, '14781', 'PASTEUR ONESIME', 'NA', 'PASTEUR', 'Oui', '30 BONGOLO Q/KIMBANGU C/KALAMU', 'PASTEUR', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(93, '38945', 'MPUTU KIRINDI ', '243892072477', 'MEMBRE DE L EGLISE KIMBANGUISTE ', 'Non', '57 KINZAZI C/MATETE ', 'ENCADREUR SPIRITUEL', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA '),
(94, '64109', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN'),
(96, '14659', 'MARTIN BASELE', '243824656848', 'DACRE', 'Non', '22 FORGERON Q/INDUSTRIEL C/LIMETE ', 'DACRE ET FIDEL', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(98, '20414', 'Na', 'Na', 'Na', 'Non', 'Na', 'Na', 'Na', 'Na', 'Na', 'Non', 'Na', 'Na'),
(99, '02733', 'PAPA HERVE BATATA', '243899961482', 'Eglise Vie Nouvelle ', 'Non', 'NA', 'Partenaire Vie Nouvelle', 'Na', 'Na', 'Na', 'Non', 'Na', 'Na'),
(100, '29113', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(101, '93333', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(102, '70099', 'PASTEUR BLAISE', '243895594096', 'PASTEUR', 'Non', '75 MUKILA Q/3  C/MASINA ', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(103, '75098', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', ' NA ', 'NA', 'NA', 'Non', 'NA', 'NA'),
(104, '27427', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(105, '53970', 'AIME LUKUMU', '243898622327', 'PASTEUR ', 'Non', '238 FESHIE Q/KASAI C/BUMBU  ', 'PASTEUR ET FIDELE ', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(106, '41837', 'PASTEUR MBUNGU', 'NA', 'PASTEUR', 'Oui', 'NA', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(107, '76759', 'ISRAEL PANGANGA', 'NA', 'PASTEUR', 'Non', '6 EME RUE LIMETE INDUSTRIEL/ARC EN CIEL TABERNACLE', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(108, '09437', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(109, '61950', 'PASTEUR DADDY NGINAYEVUVU', '243976599882', 'PASTEUR', 'Oui', '77 BAMBILI Q/ASSOSA C/NGIRI NGIRI/EGLISE CHRIST NOTRE VIE', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(110, '24583', 'dieu merci', '0', 'Pasteur ', 'Non', 'Na', 'Croyante', 'Na', '0', 'Na', 'Non', 'Na', 'Na'),
(111, '82910', 'Jean', '0903922857', 'Pasteur', 'Non', 'Na', 'Croyant ', 'Na', '0', 'Na', 'Non', 'Na', 'Na'),
(112, '32961', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(113, '62537', 'PASTEUR MOISE', '243898970451', 'PASTEUR', 'Oui', '77 BAMBILI Q/ASSOSA C/NGIRI NGIRI/EGLISE CHRIST NOTRE VIE', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(114, '47968', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(115, '68514', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(116, '93990', 'PASTEUR KEN LUAMBA', 'NA', 'PASTEUR', 'Oui', 'DE LA SCIENCE C/GOMBE', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(117, '74556', 'KAYEMBE ELISEE', '243973984142', 'PASTEUR ', 'Non', 'MAKANZA ELENGESA EGLISE EVANGELIQUE APOSTOLIQUE ', 'PASTEUR ', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(118, '86196', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(119, '71631', 'DEO GRACIAS BILUKI', 'NA', 'ANCIEN', 'Non', '1 RUE FORGERON Q/FUNA C/LIMETE', 'ANCIEN ', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(120, '83113', 'NA', 'NA', 'NA', 'Non', 'NA ', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA ', 'NA'),
(121, '44860', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(122, '22350', 'MONSIEUR KALOMBO KELVIN', '243816633612', 'RESPONSABLE ADJOINT SALUBRITE', 'Non', '2 eme RUE 6 EGLISE LA COMPASSION ', 'RESPONSABLE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(123, '65565', 'PASTEUR MIZUA', 'NA', 'PASTEUR ', 'Non', 'FARAGE KASAVUBU EGLSE KIMBANGUSTE ', 'PASTEUR  ET FIDELE ', 'NA', 'NA', 'NA', 'Non', 'NA ', 'NA'),
(124, '02898', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(125, '43876', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(126, '14558', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(127, '77990', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(128, '77660', 'EDO ', '242068092644', 'EVANGELISTE', 'Non', '52 KANDA KANDA Q/LODJA C/KASA VUBU REF ETSHOPIE GAMBELA ', 'PARRAIN ET FILLEULE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(129, '80759', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(130, '55524', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(131, '50275', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(132, '47472', 'MOISE LENGI', '81559458755', 'PASTEUR', 'Non', '17th street, Limete', 'FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(133, '26809', 'NA', 'NZ', 'NZ', 'Non', 'NA', 'NZ', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(134, '40789', 'PAUL MIRABEL', '816655685', 'Pasteur', 'Non', '16th street, Limete', 'fidele', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA');

-- --------------------------------------------------------

--
-- Structure de la table `depensefamiliale`
--

CREATE TABLE IF NOT EXISTS `depensefamiliale` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nourriture` int(11) NOT NULL,
  `Combustiblecuisson` int(11) NOT NULL,
  `loyer` int(11) NOT NULL,
  `transport` int(11) NOT NULL,
  `communication` int(11) NOT NULL,
  `habillement` int(11) NOT NULL,
  `education` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `soinmedicaux` int(11) NOT NULL,
  `autresdepense` int(11) NOT NULL,
  `imprevu` int(11) NOT NULL,
  `loisir` int(11) NOT NULL,
  `autredepenseprive` int(11) NOT NULL,
  `TotalGeneralDF` int(11) NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCredit` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Contenu de la table `depensefamiliale`
--

INSERT INTO `depensefamiliale` (`Id`, `Nourriture`, `Combustiblecuisson`, `loyer`, `transport`, `communication`, `habillement`, `education`, `service`, `soinmedicaux`, `autresdepense`, `imprevu`, `loisir`, `autredepenseprive`, `TotalGeneralDF`, `IdClientD`, `NumDossierCredit`) VALUES
(1, 120, 20, 70, 21, 10, 20, 0, 0, 15, 0, 10, 0, 10, 296, 16, '15939'),
(2, 150, 10, 200, 10, 10, 20, 0, 10, 10, 0, 0, 0, 0, 420, 15, '66776'),
(3, 300, 40, 300, 50, 40, 45, 175, 15, 40, 50, 20, 25, 20, 1120, 49, '09804'),
(4, 200, 10, 0, 20, 20, 10, 0, 5, 20, 0, 0, 0, 0, 285, 47, '59686'),
(5, 300, 15, 0, 50, 25, 50, 120, 20, 40, 0, 15, 0, 50, 685, 23, '09263'),
(6, 200, 20, 0, 30, 20, 20, 0, 10, 30, 20, 20, 0, 0, 370, 68, '24682'),
(7, 150, 30, 200, 20, 20, 20, 100, 20, 20, 30, 30, 10, 30, 630, 75, '52533'),
(8, 150, 30, 0, 10, 15, 20, 0, 10, 20, 20, 20, 0, 10, 305, 82, '52652'),
(9, 210, 20, 200, 30, 20, 20, 45, 20, 20, 20, 30, 0, 0, 635, 83, '61600'),
(10, 180, 25, 210, 35, 30, 40, 0, 20, 30, 0, 0, 25, 0, 595, 69, '29320'),
(11, 100, 10, 180, 20, 10, 10, 0, 5, 10, 0, 0, 0, 0, 345, 50, '60198'),
(12, 200, 40, 300, 40, 50, 30, 100, 20, 30, 20, 50, 0, 0, 880, 86, '08487'),
(13, 124, 15, 0, 40, 15, 20, 25, 10, 20, 0, 0, 10, 0, 279, 55, '16424'),
(14, 200, 20, 0, 20, 10, 20, 25, 10, 25, 0, 0, 0, 0, 330, 31, '64281'),
(15, 300, 15, 200, 30, 20, 30, 21, 15, 30, 0, 15, 0, 0, 676, 81, '29972'),
(16, 350, 15, 100, 25, 25, 50, 120, 10, 50, 0, 20, 20, 0, 785, 77, '45588'),
(17, 150, 10, 170, 0, 10, 15, 10, 5, 20, 0, 0, 0, 0, 390, 104, '20414'),
(18, 550, 30, 160, 60, 40, 100, 233, 15, 40, 0, 0, 15, 0, 1243, 77, '45588'),
(19, 60, 25, 80, 65, 25, 30, 0, 20, 20, 0, 30, 0, 15, 370, 30, '55237'),
(20, 200, 20, 0, 20, 20, 50, 30, 10, 10, 0, 20, 0, 10, 390, 110, '75098'),
(21, 250, 10, 250, 30, 25, 20, 0, 15, 25, 0, 0, 0, 0, 625, 108, '93333'),
(22, 150, 25, 0, 20, 20, 20, 0, 5, 10, 10, 15, 0, 10, 285, 111, '27427'),
(23, 200, 10, 100, 30, 20, 20, 60, 10, 30, 0, 100, 0, 0, 580, 18, '88721'),
(24, 200, 20, 0, 10, 20, 20, 0, 5, 10, 20, 5, 5, 5, 320, 117, '24583'),
(25, 150, 30, 0, 10, 20, 20, 80, 10, 15, 10, 20, 0, 0, 365, 121, '47968'),
(26, 100, 10, 1250, 20, 20, 20, 0, 10, 20, 0, 0, 0, 0, 1450, 106, '02733'),
(27, 180, 25, 200, 100, 25, 25, 0, 15, 25, 0, 15, 0, 0, 610, 109, '70099'),
(28, 300, 25, 200, 100, 25, 25, 0, 15, 25, 0, 15, 0, 0, 730, 109, '70099'),
(29, 550, 25, 500, 50, 25, 100, 138, 20, 50, 0, 20, 25, 70, 1573, 134, '77990'),
(30, 180, 10, 500, 30, 25, 10, 0, 25, 20, 70, 0, 0, 0, 870, 119, '32961'),
(31, 250, 20, 0, 30, 10, 20, 45, 15, 20, 20, 20, 10, 40, 500, 139, '47472');

-- --------------------------------------------------------

--
-- Structure de la table `documentbusiness`
--

CREATE TABLE IF NOT EXISTS `documentbusiness` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DateEnregistrementDoc` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `FichierUrl` varchar(500) NOT NULL,
  `IdclientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=472 ;

--
-- Contenu de la table `documentbusiness`
--

INSERT INTO `documentbusiness` (`Id`, `DateEnregistrementDoc`, `Description`, `FichierUrl`, `IdclientD`, `NumDossierCre`) VALUES
(2, '2025-06-04', 'Autorisation douverture', '20250604_095123.jpg', 16, '15939'),
(4, '2025-06-04', 'Document moto autre source de revenu', '20250604_095145.jpg', 16, '15939'),
(5, '2025-06-04', 'Document verso moto autre source de revenu', '20250604_095133.jpg', 16, '15939'),
(9, '2025-06-12', 'Document de commerce', 'berry document de commerce.pdf', 68, '24682'),
(12, '2025-06-12', 'Piece d identite', '20250606_170322.jpg', 68, '24682'),
(13, '2025-06-12', 'Piece d identite epouse', '20250606_170237.jpg', 68, '24682'),
(14, '2025-06-12', 'Documents paiement taxes', 'berry photos taxes.pdf', 68, '24682'),
(15, '2025-06-12', 'Paiement taxes suite', 'berry suite taxes.pdf', 68, '24682'),
(16, '2025-06-12', 'Photos activitÃ©', 'berry photos activitÃ©.pdf', 68, '24682'),
(17, '2025-06-12', 'Photos activitÃ© suite', 'berry photo activitÃ© suite.pdf', 68, '24682'),
(18, '2025-06-12', 'Photos domicile', 'berry photos domicile.pdf', 68, '24682'),
(19, '2025-06-12', 'Autre source de revenu loyer', 'berry fin autre source de revenu.pdf', 68, '24682'),
(20, '2025-06-12', 'Autre source de revenu suite', 'berry suite autre source de revenu.pdf', 68, '24682'),
(21, '2025-06-12', 'Autre source de revenu fin', 'berry fin autre source de revenu.pdf', 68, '24682'),
(22, '2025-06-12', 'Piece d indentite garant', '20250604_165456.jpg', 68, '24682'),
(23, '2025-06-12', 'Document de commerce garant', '20250604_165514.jpg', 68, '24682'),
(24, '2025-06-12', 'Document de commerce garant', '20250604_165535.jpg', 68, '24682'),
(25, '2025-06-12', 'Identites client et co debiteur', 'identitÃ©s clients_0001.pdf', 47, '59686'),
(26, '2025-06-12', 'Procuration et fiche de paie', 'procuration et fiche p_0001.pdf', 47, '59686'),
(27, '2025-06-12', 'Documents garant', 'documents garants_0001.pdf', 47, '59686'),
(28, '2025-06-12', 'Devis des travaux', 'DEVIS DE TRAVAUX_0001.pdf', 47, '59686'),
(29, '2025-06-12', 'Contrat de bail', 'CONTRAT DE BAIL 1_0001.pdf', 47, '59686'),
(30, '2025-06-12', 'Contrat de bail', 'contrat de bail 2_0001.pdf', 47, '59686'),
(31, '2025-06-12', 'Contrat de bail', 'contrat de bail 3_0001.pdf', 47, '59686'),
(32, '2025-06-12', 'Contrat de bail', 'contrat de bail 4_0001.pdf', 47, '59686'),
(33, '2025-06-12', 'Contrat de bail', 'contrat de bail 5_0001.pdf', 47, '59686'),
(34, '2025-06-12', 'Contrat de bail', 'contrat de bail 6_0001.pdf', 47, '59686'),
(35, '2025-06-12', 'Contrat de bail', 'contrat de bail 7_0001.pdf', 47, '59686'),
(36, '2025-06-12', 'Contrat de bail', 'contrat de bail 8_0001.pdf', 47, '59686'),
(37, '2025-06-12', 'Contrat de bail', 'contrat de bail 9_0001.pdf', 47, '59686'),
(38, '2025-06-13', 'Photos', 'IMG-20250612-WA0050.jpg', 75, '52533'),
(39, '2025-06-13', 'Congelateur ', 'IMG-20250612-WA0060.jpg', 75, '52533'),
(40, '2025-06-13', 'Vitrine ', 'IMG-20250612-WA0043.jpg', 75, '52533'),
(41, '2025-06-13', 'Table salon', 'IMG-20250612-WA0044.jpg', 75, '52533'),
(42, '2025-06-13', 'Ventilateur ', 'IMG-20250612-WA0052.jpg', 75, '52533'),
(43, '2025-06-13', 'Ventilateur 2', 'IMG-20250612-WA0046.jpg', 75, '52533'),
(44, '2025-06-13', 'Cuisiniere', 'IMG-20250612-WA0042.jpg', 75, '52533'),
(45, '2025-06-14', 'Business ', '20250604_173814.jpg', 75, '52533'),
(46, '2025-06-14', 'Business ', '20250604_173810.jpg', 75, '52533'),
(47, '2025-06-14', 'Business ', '20250604_173820.jpg', 75, '52533'),
(48, '2025-06-14', 'Autorisation d ouverture ', '20250614_111634.jpg', 75, '52533'),
(49, '2025-06-14', 'Fiche de visite IL', '20250614_111502.jpg', 75, '52533'),
(50, '2025-06-14', 'Fiche de visite pre comite', '20250614_111600.jpg', 75, '52533'),
(51, '2025-06-14', 'Identification nationale ', '20250614_111649.jpg', 75, '52533'),
(52, '2025-06-14', 'Piece d identite de l epouse du client ', 'IMG-20250614-WA0064.jpg', 83, '61600'),
(53, '2025-06-15', 'Autorisation d ouverture du client ', 'IMG-20250614-WA0065.jpg', 83, '61600'),
(54, '2025-06-15', 'Piece d identite du client ', 'IMG-20250613-WA0171.jpg', 83, '61600'),
(55, '2025-06-15', 'Business ', 'IMG-20250614-WA0080.jpg', 83, '61600'),
(56, '2025-06-15', 'Business photo ', 'IMG-20250614-WA0082.jpg', 83, '61600'),
(57, '2025-06-15', 'Vente du jour de la visite  a 13h', 'IMG-20250614-WA0079.jpg', 83, '61600'),
(58, '2025-06-15', 'Vente du jour de la visite ', 'IMG-20250614-WA0079.jpg', 83, '61600'),
(59, '2025-06-15', 'Business ', 'IMG-20250614-WA0081.jpg', 83, '61600'),
(60, '2025-06-15', 'Business ', 'IMG-20250614-WA0066.jpg', 83, '61600'),
(61, '2025-06-15', 'Business ', 'IMG-20250614-WA0070.jpg', 83, '61600'),
(62, '2025-06-15', 'Business ', 'IMG-20250614-WA0069.jpg', 83, '61600'),
(63, '2025-06-15', 'Business ', 'IMG-20250614-WA0066.jpg', 83, '61600'),
(64, '2025-06-15', 'Business ', 'IMG-20250614-WA0077.jpg', 83, '61600'),
(65, '2025-06-15', 'Piece d identite de la garante', 'IMG-20250615-WA0004.jpg', 83, '61600'),
(66, '2025-06-15', 'Autorisation d  ouverture de la garante', 'IMG-20250615-WA0010.jpg', 83, '61600'),
(67, '2025-06-15', 'Business de la garante ', 'IMG-20250615-WA0002.jpg', 83, '61600'),
(68, '2025-06-15', 'Business de la garante ', 'IMG-20250615-WA0014.jpg', 83, '61600'),
(69, '2025-06-15', 'Business de la garante ', 'IMG-20250615-WA0016.jpg', 83, '61600'),
(70, '2025-06-15', 'Business de la garante ', 'IMG-20250615-WA0012.jpg', 83, '61600'),
(71, '2025-06-15', 'DÃ©nomination du business de la garante ', 'IMG-20250615-WA0007.jpg', 83, '61600'),
(72, '2025-06-16', 'Fiche de visite pre comite  BM', '20250616_110615.jpg', 75, '52533'),
(73, '2025-06-16', 'Fiche de visite pre comite BMA', '20250616_110554.jpg', 75, '52533'),
(81, '2025-06-17', 'Recu de 3 derniers mois d activites', 'PHOTO DE RECUS.pdf', 50, '60198'),
(82, '2025-06-17', 'Preuve de paiements loyers', 'preuves paiement loyers_0001.pdf', 50, '60198'),
(83, '2025-06-17', 'Loyers', 'preuve paiement loyer_0001.pdf', 50, '60198'),
(84, '2025-06-17', 'Document client', 'identites et documents clients_0001.pdf', 50, '60198'),
(85, '2025-06-17', 'Document garant', 'documents garant_0001.pdf', 50, '60198'),
(86, '2025-06-17', 'Chaises mises en location', '1749117510467.jpg', 50, '60198'),
(87, '2025-06-17', 'Table salon', '1749117510501.jpg', 50, '60198'),
(88, '2025-06-17', 'Machine a laver', '1749117510517.jpg', 50, '60198'),
(89, '2025-06-17', 'Machine a laver', '1749117510517.jpg', 50, '60198'),
(90, '2025-06-17', 'Television', '1749117510534.jpg', 50, '60198'),
(91, '2025-06-17', 'Vu de l activite', '1749117510436.jpg', 50, '60198'),
(101, '2025-06-18', 'PASSEPORT CLIENT', 'PIECE IDENTITE CLIENT.jpg', 69, '29320'),
(102, '2025-06-18', 'Paiement loyer', 'Loyer..pdf', 15, '66776'),
(104, '2025-06-18', 'PASSEPORT CLIENT 2', 'PIECE IDENTITE CLIENT 2.jpg', 69, '29320'),
(106, '2025-06-18', 'PASSEPORT GARANT', 'PASSEPORT GARANT.jpg', 69, '29320'),
(107, '2025-06-18', 'Releve Bancaire', 'ReleveÌs bancaires.pdf', 15, '66776'),
(109, '2025-06-18', 'Cash disponible', '1748361222035.jpg', 15, '66776'),
(110, '2025-06-18', 'RCCM CLIENT 2', 'RCCM CLIENT 2.jpg', 69, '29320'),
(111, '2025-06-18', 'Photo activite', '1748361222167.jpg', 15, '66776'),
(112, '2025-06-18', 'ID NATIONAL CLIENT', 'ID N CLIENT.jpg', 69, '29320'),
(113, '2025-06-18', 'Stocks', '1748361222101.jpg', 15, '66776'),
(114, '2025-06-18', 'ID NATIONAL GARANT', 'ID N GARANT.jpg', 69, '29320'),
(115, '2025-06-18', 'Stocks 2', '1748361222079.jpg', 15, '66776'),
(116, '2025-06-18', 'Bien mis en gage congelateur', '1748361221950.jpg', 15, '66776'),
(117, '2025-06-18', 'Television', '1748361221459.jpg', 15, '66776'),
(118, '2025-06-18', 'CAHIER DE VENTE CLIENT', 'CAHIER DE VENTE JUIN.jpg', 69, '29320'),
(119, '2025-06-18', 'CAHIER DE VENTE ', 'VENTE JUIN 2.jpg', 69, '29320'),
(120, '2025-06-18', 'Climatiseur', '1748361221426.jpg', 15, '66776'),
(121, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 3.jpg', 69, '29320'),
(122, '2025-06-18', 'Canape', '1748361221344.jpg', 15, '66776'),
(123, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 4.jpg', 69, '29320'),
(124, '2025-06-18', 'Horloge', '1748361221396.jpg', 15, '66776'),
(125, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 5.jpg', 69, '29320'),
(126, '2025-06-18', 'Ventilateur', '1748361221368.jpg', 15, '66776'),
(127, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 6.jpg', 69, '29320'),
(128, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 7.jpg', 69, '29320'),
(129, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 8.jpg', 69, '29320'),
(130, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 9.jpg', 69, '29320'),
(131, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 10.jpg', 69, '29320'),
(132, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 11.jpg', 69, '29320'),
(133, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 12.jpg', 69, '29320'),
(134, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 14.jpg', 69, '29320'),
(135, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 13.jpg', 69, '29320'),
(136, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 15.jpg', 69, '29320'),
(137, '2025-06-18', 'CAHIER DE VENTE', 'VENTE JUIN 16.jpg', 69, '29320'),
(138, '2025-06-18', 'CONTRAT DE BAIL ACTIVITE', 'CONTRAT DE BAIL ACTIITE.jpg', 69, '29320'),
(139, '2025-06-18', 'CONTRAT DE BAIL SUITE', 'CONTRAT DE BAIL SUITE.jpg', 69, '29320'),
(140, '2025-06-18', 'FACADE BUSINESS', 'FACADE BUSINESS.jpg', 69, '29320'),
(141, '2025-06-18', 'FACTURE D''ACHAT', 'FACTURE D''ACHAT.jpg', 69, '29320'),
(142, '2025-06-18', 'FACTURE D''ACHAT', 'FACTURE D''ACHAT 2.jpg', 69, '29320'),
(143, '2025-06-18', 'FACTURE D''ACHAT', 'FACTURE D''ACHAT 3.jpg', 69, '29320'),
(144, '2025-06-18', 'CASH BUSINESS', 'CASH BUSNESS.jpg', 69, '29320'),
(145, '2025-06-18', 'CASH BUSINESS', 'CASH BUSINESS 2.jpg', 69, '29320'),
(146, '2025-06-18', 'CARNET LOYER', 'CARNET LOYER.jpg', 69, '29320'),
(147, '2025-06-18', 'Autrecsource de revenu moto', 'moto autre source de revenu.pdf', 16, '15939'),
(148, '2025-06-18', 'Photo activite', 'celestin photo activite.pdf', 16, '15939'),
(149, '2025-06-18', 'Photo domicile', 'photo domicile.pdf', 16, '15939'),
(150, '2025-06-18', 'Preuve paiement loyer activite et domicile', 'paiement loyer activite et domicile.pdf', 16, '15939'),
(151, '2025-06-18', 'Garant doc et preuve salaire', 'garant doc et preuve salaire.pdf', 16, '15939'),
(152, '2025-06-18', 'Autre document activite', 'autre document de l''activite.pdf', 16, '15939'),
(153, '2025-06-18', 'Co debitrice', '20250606_104833.jpg', 16, '15939'),
(154, '2025-06-18', 'FICHE VISITE AC ET SUP', 'VISITE NDUDI_0001.pdf', 50, '60198'),
(155, '2025-06-18', 'CONTRATS SIGNES ', 'CONTRATS NDUDI_0001.pdf', 50, '60198'),
(156, '2025-06-18', 'Bien 1', 'IMAGE 1.jpeg', 47, '59686'),
(157, '2025-06-18', 'bien 2', 'IMAGE 2.jpeg', 47, '59686'),
(158, '2025-06-18', 'bien 3', 'IMAGE 3.jpeg', 47, '59686'),
(159, '2025-06-18', 'bien 4', 'IMAGE 4.jpeg', 47, '59686'),
(160, '2025-06-18', 'bien 5', 'IMAGE 5.jpeg', 47, '59686'),
(161, '2025-06-18', 'bien 6', 'IMAGE 6.jpeg', 47, '59686'),
(162, '2025-06-18', 'bien 7', 'IMAGE 7.jpeg', 47, '59686'),
(163, '2025-06-18', 'Fiche visite terrain', 'Fiche de visite KAPELA YVETTE  .pdf', 47, '59686'),
(164, '2025-06-18', 'Contrat Signer ', 'DOSSIERS BELESI MUZANGA BODRICK_0001.pdf', 75, '52533'),
(165, '2025-06-18', 'PASSEPORT CLIENTE', 'passeport client.jpg', 55, '16424'),
(166, '2025-06-18', 'CARTE DELECTEUR GARANTE', 'carte delecteur garante.jpg', 55, '16424'),
(167, '2025-06-18', 'CARTE DE SERVICE GARANTE', 'CARTE DE SERVICE GARANTE.jpg', 55, '16424'),
(168, '2025-06-18', 'IDENTIFICATION NATIONALE CLIENTE', 'IDENTIFICATION NATIONAL CLIENTE.jpg', 55, '16424'),
(169, '2025-06-18', 'RELEVE DE PAIE GARANTE', 'RELEVE PAIE GARANT.jpg', 55, '16424'),
(170, '2025-06-18', 'RELEVE DE PAIE GARANTE', 'RELEVE GARANTE.jpg', 55, '16424'),
(171, '2025-06-18', 'RELEVE DE PAIE GARANTE', 'RELEVE GARANT 2.jpg', 55, '16424'),
(172, '2025-06-18', 'FACTURE LOYER CLIENTE', 'facture loyer business.jpg', 55, '16424'),
(173, '2025-06-19', 'FICHE TERRAIN\r\n', 'fiche terrain.jpg', 55, '16424'),
(174, '2025-06-19', 'FICHE VISITE', 'fiche visite.jpg', 55, '16424'),
(181, '2025-06-19', 'FICHE DE PAIE GARANT', 'FICHE DE PAIE MAI 2025 GARANT_0001.pdf', 47, '59686'),
(182, '2025-06-19', 'PHOTO EPOUX ET GARANT KAPELA ', 'PHOTO EPOUX ET GARANT KAPELA_0001.pdf', 47, '59686'),
(183, '2025-06-19', 'Table et salon kapela', 'Table et salon kapela.jpeg', 47, '59686'),
(184, '2025-06-20', 'CASH BUSINESS', 'CASH BUSNESS.jpg', 69, '29320'),
(185, '2025-06-20', 'ECHEANCIER CYCLE PASSE', 'CYCLE PRECEDENT.jpg', 69, '29320'),
(186, '2025-06-20', 'FICHE TERRAIN BM', 'FICHE VISITE TERRAIN BM.jpg', 69, '29320'),
(187, '2025-06-20', 'FICHE TERRAIN SUP', 'FICHE VISITE TERRAIN SUP.jpg', 69, '29320'),
(188, '2025-06-20', 'STOCK', 'STOCK.jpg', 69, '29320'),
(189, '2025-06-20', 'STOCK ', 'STOCK 2.jpg', 69, '29320'),
(190, '2025-06-20', 'STOCK ', 'STOCK 3.jpg', 69, '29320'),
(193, '2025-06-21', 'MAPS', 'MAPS.jpg', 69, '29320'),
(195, '2025-06-21', 'Autorisation d ouverture ', '20250621_143912.jpg', 30, '55237'),
(196, '2025-06-21', 'Restaurant ', '20250621_154700.jpg', 30, '55237'),
(197, '2025-06-21', 'Restaurant ', '20250621_154603.jpg', 30, '55237'),
(198, '2025-06-21', 'Boisson ', '20250621_154532.jpg', 30, '55237'),
(199, '2025-06-21', 'Contrat signer brigitte', 'DOSSIERS LOBUMBWA BOYAMBA BRIGITTE POUR WORKFLO_0001.pdf', 82, '52652'),
(200, '2025-06-21', 'Contrat Signer Ponpon', 'dossiers TSHITA MUBEMBA POMPON POUR WORKFLO_0001.pdf', 83, '61600'),
(201, '2025-06-22', 'Vehicule mise en gage', '20250621_161837.jpg', 30, '55237'),
(202, '2025-06-22', 'VEHICULE MISE EN GAGE', '20250621_161823.jpg', 30, '55237'),
(203, '2025-06-22', 'PHOTO DU CLIENT', '20250621_154455.jpg', 30, '55237'),
(204, '2025-06-22', 'PATENTE COMMERCIALE DE LA CLIENTE ', 'IMG-20250612-WA0073.jpg', 82, '52652'),
(205, '2025-06-22', 'LA CLIENTE AU NIVEAU DE L ACTIVITE', '20250602_131823.jpg', 82, '52652'),
(206, '2025-06-22', 'LE CO DEBUTEUR DE LA CLIENTE AU NIVEAU DE L ACTIVITE', '20250602_131807.jpg', 82, '52652'),
(207, '2025-06-22', 'LA DENOMINATION DE L ACTIVITE ', '20250602_131748.jpg', 82, '52652'),
(208, '2025-06-22', 'LA PIECE D IDENTITE DE LA CLIENTE ', '20250602_125312.jpg', 82, '52652'),
(209, '2025-06-22', 'LA PIECE D IDENTITE DU CO DEBUTEUR ', '20250602_130006.jpg', 82, '52652'),
(210, '2025-06-22', 'LA PIECE D IDENTITE DE LA GARANTE ', 'IMG-20250610-WA0042.jpg', 82, '52652'),
(211, '2025-06-22', 'LA CARTE DE SERVICE DE LA GARANTE ', 'IMG-20250610-WA0043.jpg', 82, '52652'),
(212, '2025-06-22', 'CARTE RAUSE DU CO DEBUTEUR ', 'IMG-20250604-WA0000.jpg', 82, '52652'),
(213, '2025-06-22', 'KETCH DU CO DEBUTEUR ', 'IMG-20250604-WA0002.jpg', 82, '52652'),
(214, '2025-06-22', 'KETCH ', 'IMG-20250604-WA0001.jpg', 82, '52652'),
(215, '2025-06-22', 'SALON DU CO DEBUTEUR ', 'IMG-20250610-WA0023.jpg', 82, '52652'),
(216, '2025-06-22', 'LA GARANTE ', 'IMG-20250610-WA0027.jpg', 82, '52652'),
(217, '2025-06-22', 'VERSO DE LA CARTE DE SERVICE ', 'IMG-20250610-WA0044.jpg', 82, '52652'),
(218, '2025-06-22', 'La cliente ', 'IMG-20250610-WA0032.jpg', 82, '52652'),
(219, '2025-06-22', 'Domicile cl5', 'IMG-20250610-WA0032.jpg', 82, '52652'),
(220, '2025-06-22', 'Business ', '20250602_131832.jpg', 82, '52652'),
(221, '2025-06-22', 'Domicile du client ', '20250621_161651.jpg', 30, '55237'),
(222, '2025-06-22', 'DOMICILE DU CLIENT ', '20250621_161640.jpg', 30, '55237'),
(223, '2025-06-22', 'Business ', '20250621_154519.jpg', 30, '55237'),
(224, '2025-06-22', 'Business ', '20250621_154634.jpg', 30, '55237'),
(225, '2025-06-22', 'TERRASSE ', '20250621_154226.jpg', 30, '55237'),
(226, '2025-06-22', 'TERRASSE ', '20250621_154324.jpg', 30, '55237'),
(227, '2025-06-22', 'FACTURES D ACHATS ', '20250621_151909.jpg', 30, '55237'),
(228, '2025-06-22', 'PASSEPORT DU CLIENT ', '20250621_143859.jpg', 30, '55237'),
(229, '2025-06-22', 'La denomination de l activite', '20250621_154735.jpg', 30, '55237'),
(230, '2025-06-22', 'Terrasse ', '20250621_154232.jpg', 30, '55237'),
(231, '2025-06-22', 'Factures d achats ', '20250621_152051.jpg', 30, '55237'),
(232, '2025-06-23', 'CARTE D''''ELECTEUR CLIENT', 'CARTE DELECTEUR CLIENT.jpg', 77, '45588'),
(233, '2025-06-23', 'CARTE D''''ELECTEUR EPOUSE CLIENT', 'CARTE DELECTEUR EPOUSE.jpg', 77, '45588'),
(234, '2025-06-23', 'CARTE D''''ELECTEUR GARANT', 'CARTE DELECTEUR GARANT.jpg', 77, '45588'),
(235, '2025-06-23', 'IDENTIFICATION NATIONALE CLIENT', 'IDENTIFICATION NATIONALE CLIENT.jpg', 77, '45588'),
(236, '2025-06-23', 'RCCM CLIENT', 'RCCM CLIENT.jpg', 77, '45588'),
(237, '2025-06-23', 'RCCM CLIENT', 'RCCM CLIENT 2.jpg', 77, '45588'),
(238, '2025-06-23', 'IDENTIFICATION NATIONALE GARANT', 'IDENTIFICATION GARANT.jpg', 77, '45588'),
(239, '2025-06-23', 'RCCM GARANT', 'RCCM GARANT.jpg', 77, '45588'),
(240, '2025-06-23', 'RCCM GARANT', 'RCCM GARANT 2.jpg', 77, '45588'),
(241, '2025-06-23', 'AUTORISATION DOUVERTURE CLIENT', 'AUTO DOUVERTURE CLIENT.jpg', 77, '45588'),
(242, '2025-06-23', 'FACTURE LOYER ACTIVITE', 'FACTURE LOEYR BUSINESS.jpg', 77, '45588'),
(243, '2025-06-23', 'CAHIER LOYER DOMICILE', 'CAHIER LOYER DOMICILE.jpg', 77, '45588'),
(244, '2025-06-23', 'CAHIER LOYER DOMICILE', 'CAHIER LOYER 2.jpg', 77, '45588'),
(245, '2025-06-23', 'FACTURE D''''ACHAT', 'FACTURE DACHAT.jpg', 77, '45588'),
(246, '2025-06-23', 'FICHE VISITE AGENT', 'FICHE VISITE AGENT.jpg', 77, '45588'),
(247, '2025-06-23', 'FICHE VISITE SUPERVISEUR', 'FICHE VISITE SUPERVISEUR.jpg', 77, '45588'),
(248, '2025-06-23', 'MAPS', 'MAPS CLIENT.jpg', 77, '45588'),
(249, '2025-06-23', 'HISTORIQUE 1ER CYCLE', 'HISTORIQUE CYCLE 1ER CYCLE.jpg', 77, '45588'),
(251, '2025-06-23', 'PASSEPORT DU GARANT', '20250623_132500.jpg', 110, '75098'),
(252, '2025-06-23', 'PASSEPORT DE LA CLIENTE ', '20250623_132411.jpg', 110, '75098'),
(253, '2025-06-23', 'Activite', '20250623_132606.jpg', 110, '75098'),
(254, '2025-06-23', 'Pre comite', '20250623_132951.jpg', 110, '75098'),
(255, '2025-06-23', 'Domicile cliente ', '20250623_132720.jpg', 110, '75098'),
(256, '2025-06-23', 'Bulletin de paye du garant ', '20250623_132550.jpg', 110, '75098'),
(257, '2025-06-23', 'Bulletin de paye du garant ', '20250623_132550.jpg', 110, '75098'),
(258, '2025-06-23', 'RCCM DE LA CLIENTE ', '20250623_132425.jpg', 110, '75098'),
(259, '2025-06-23', 'RCCM', '20250623_132437.jpg', 110, '75098'),
(260, '2025-06-23', 'Activite', '20250623_132631.jpg', 110, '75098'),
(261, '2025-06-23', 'Activite ', '20250623_132625.jpg', 110, '75098'),
(262, '2025-06-23', 'Cahier de loyer business ', '20250623_132803.jpg', 110, '75098'),
(263, '2025-06-23', 'Activite ', '20250623_132650.jpg', 110, '75098'),
(264, '2025-06-23', 'Fiche superviseur ', '20250623_133020.jpg', 110, '75098'),
(265, '2025-06-23', 'Cahier', '20250623_132834.jpg', 110, '75098'),
(267, '2025-06-23', 'Fiche analyse comparative', 'Historique CHUKWUMA ALOYSIUS OBILOY.xlsx', 69, '29320'),
(268, '2025-06-23', 'Contrat signer ok', 'POUR WORLKFLO KHOMBI GUYSLAINE_0001.pdf', 110, '75098'),
(269, '2025-06-23', 'FICHE ANALYSE COMPARER CYCLE', 'KANIKI REAGAN COMPARER.xlsx', 81, '29972'),
(270, '2025-06-24', 'IDENTIFICATION CLIENT', 'IDENTIFICATION CLIENT.jpg', 81, '29972'),
(271, '2025-06-24', 'AUTORISATION CLIENT', 'AUTORISATION DOUVERTURE CLIENT.jpg', 81, '29972'),
(272, '2025-06-24', 'PIECE IDENTITE CLIENT', 'CARTE DELECTEUR CLIENT.jpg', 81, '29972'),
(273, '2025-06-24', 'RCCM CLIENT', 'RCCM CLIENT 1.jpg', 81, '29972'),
(274, '2025-06-24', 'RCCM CLIENT', 'RCCM CLIENT.jpg', 81, '29972'),
(275, '2025-06-24', 'RCCM GARANT', 'RCCM GARANT.jpg', 81, '29972'),
(276, '2025-06-24', 'RCCM GARANT', 'RCCM GARANT FIN.jpg', 81, '29972'),
(277, '2025-06-24', 'PASSEPORT GARANT', 'PASSEPORT GARANT.jpg', 81, '29972'),
(278, '2025-06-24', 'AUTORISATION GARANT', 'AUTORISATION DOUVERTURE GARANT.jpg', 81, '29972'),
(279, '2025-06-24', 'PASSEPORT EPOUSE CLIENT', 'PASSEPORT EPOUSE.jpg', 81, '29972'),
(280, '2025-06-24', 'LOYER ACTIVITE CLIENT BUSINESS', 'LOYER BUSINESS.jpg', 81, '29972'),
(281, '2025-06-24', 'LOYER DOMICILE', 'CAHIER DE LOYER DOMICILE 1.jpg', 81, '29972'),
(282, '2025-06-24', 'LOYER DOMICILE', 'CAHIER DE LOYER DOMICILE.jpg', 81, '29972'),
(283, '2025-06-24', 'LOEYR BUSINESS', 'CAHIER DE LOYER BUSINESS.jpg', 81, '29972'),
(284, '2025-06-24', 'CASH BUSINESS', 'CASH BUSINESS 2.jpg', 81, '29972'),
(285, '2025-06-24', 'CASH BUSINESS', 'CASH BUSINESS 2.jpg', 81, '29972'),
(286, '2025-06-24', 'CASH BUSINESS', 'CASH BUSINESS.jpg', 81, '29972'),
(287, '2025-06-24', 'FACTURE APPRO', 'FACTURE DACHAT 1.jpg', 81, '29972'),
(288, '2025-06-24', 'FACTURE APPRO', 'FACTURE DACHAT 2.jpg', 81, '29972'),
(289, '2025-06-24', 'FACTURE APPRO', 'FACTURE DACHAT 3.jpg', 81, '29972'),
(290, '2025-06-24', 'FACTURE APPRO', 'FACTURE DACHAT 4.jpg', 81, '29972'),
(291, '2025-06-24', 'FACTURE APPRO', 'FACURE DACHAT SUITE 3.jpg', 81, '29972'),
(292, '2025-06-24', 'FICHE VISITE AGENT', 'FICHE VISITE AGENT.jpg', 81, '29972'),
(293, '2025-06-24', 'FICHE VISITE BM', 'FICHE VISITE BM.jpg', 81, '29972'),
(294, '2025-06-24', 'FICHE VISITE SUP', 'FICHE VISITE SUP.jpg', 81, '29972'),
(295, '2025-06-24', 'HISTORIQUE DERNIER PRET', 'HISTORIQUE 1ER CYCLE.jpg', 81, '29972'),
(296, '2025-06-24', 'MAPS', 'MAPS.jpg', 81, '29972'),
(297, '2025-06-24', 'RCCM CLIENT', 'RCCM CLIENT.jpg', 108, '93333'),
(298, '2025-06-24', 'RCCM CLIENT', 'RCCM CLIENT SUITE.jpg', 108, '93333'),
(299, '2025-06-24', 'PASSEPORT CLIENT', 'PASSEPORT CLIENT.jpg', 108, '93333'),
(300, '2025-06-24', 'PASSEPORT CLIENT', 'PASSEPORT CLIENT 2.jpg', 108, '93333'),
(301, '2025-06-24', 'IDENTIFICATION NATIONALE CLIENT', 'ID CLIENT.jpg', 108, '93333'),
(302, '2025-06-24', 'RCCM GARANT', 'RCCM GARANT.jpg', 108, '93333'),
(303, '2025-06-24', 'IDENTIFICATION ANTIONALE GARANT', 'ID GARANT.jpg', 108, '93333'),
(304, '2025-06-24', 'AUTO GARANT', 'AUTORISATIO DOUVERTURE GARANT.jpg', 108, '93333'),
(305, '2025-06-24', 'CARTE DELECTEUR GARANT', 'CARTE DELECTEUR GARANT.jpg', 108, '93333'),
(306, '2025-06-24', 'CASH EN MAIN', 'CASH BUSINESS.jpg', 108, '93333'),
(307, '2025-06-24', 'CONTRAT DE BAIL ACTIVITE', 'CONTRAT DE BAIL ACTIVITE.jpg', 108, '93333'),
(308, '2025-06-24', 'CONTRAT DE BAIL ACTIVITE 2', 'CONTRAT DE BAIL.jpg', 108, '93333'),
(309, '2025-06-24', 'ECHEANCIER BAOBAB', 'ECHEANCIER BAOBAB.jpg', 108, '93333'),
(310, '2025-06-24', 'FACTURE APPRO', 'FACTURE APPRO 2.jpg', 108, '93333'),
(311, '2025-06-24', 'FACTURE APPRO', 'FACTURE APPRO 3.jpg', 108, '93333'),
(312, '2025-06-24', 'FACTURE APPRO', 'FACTURE APPRO 4.jpg', 108, '93333'),
(313, '2025-06-24', 'FACTURE APPRO', 'FACTURE APPRO 5.jpg', 108, '93333'),
(314, '2025-06-24', 'FACTURE APPRO', 'FACTURE APPRO 6.jpg', 108, '93333'),
(315, '2025-06-24', 'FACTURE APPRO', 'FACTURE APPRO 7.jpg', 108, '93333'),
(316, '2025-06-24', 'FACTURE APPRO', 'FACTURE APPRO.jpg', 108, '93333'),
(317, '2025-06-24', 'Documents client', 'Doc client-1.pdf', 15, '66776'),
(319, '2025-06-24', 'CAHIER DE VENTE', 'CAHIER DE VENTE 1.jpg', 108, '93333'),
(320, '2025-06-24', 'CAHIER DE VENTE', 'CAHIER DE VENTE 2.jpg', 108, '93333'),
(321, '2025-06-24', 'CAHIER DE VENTE', 'CAHIER DE VENTE 3.jpg', 108, '93333'),
(322, '2025-06-24', 'CAHIER DE VENTE', 'CAHIER DE VENTE 4.jpg', 108, '93333'),
(323, '2025-06-24', 'FICHE DE STOCK', 'FICHE DE STOCK.jpg', 108, '93333'),
(324, '2025-06-24', 'MAPS', 'MAPS.jpg', 108, '93333'),
(325, '2025-06-24', 'PIECE D IDENTITE DE LA CLIENTE ', '20250623_094050.jpg', 111, '27427'),
(326, '2025-06-24', 'CLIENTE ', '20250623_092650.jpg', 111, '27427'),
(327, '2025-06-24', 'Domicile cliente ', '20250623_111531.jpg', 111, '27427'),
(328, '2025-06-24', 'Memo pour le nom de la garante', '1750784148886.jpg', 15, '66776'),
(329, '2025-06-25', 'FICHE DE STOCK', 'FICHE DE STOCK.jpg', 81, '29972'),
(330, '2025-06-25', 'FICHE VISITE BM', 'FICHE VISITE BM.jpg', 108, '93333'),
(331, '2025-06-25', 'FICHE VISITE AGENT DE CREDIT', 'FICHE VISITE AC.jpg', 108, '93333'),
(332, '2025-06-25', 'analyse comparative', 'YALA NDOFUNSU BERRY.xlsx', 68, '24682'),
(333, '2025-06-25', 'Autorisation d ouverture du garant ', 'IMG-20250623-WA0010.jpg', 86, '08487'),
(334, '2025-06-25', 'Piece d identite du garant ', 'IMG-20250623-WA0009.jpg', 86, '08487'),
(335, '2025-06-25', 'Photo du garant au niveau de l activite ', '20250624_134305.jpg', 86, '08487'),
(336, '2025-06-25', 'Activite du garant ', '20250624_134309.jpg', 86, '08487'),
(337, '2025-06-25', 'Activite du garant', '20250624_134359.jpg', 86, '08487'),
(338, '2025-06-25', 'La denomination de l activite du garant ', '20250624_134340.jpg', 86, '08487'),
(339, '2025-06-25', 'Cahier des ventes du garant ', '20250624_140332.jpg', 86, '08487'),
(340, '2025-06-25', 'Cahier des ventes du garant ', '20250624_140305.jpg', 86, '08487'),
(341, '2025-06-25', 'ECOLE REAL UNIVERS ', '20250616_173547.jpg', 86, '08487'),
(342, '2025-06-25', 'COLLEGE PETITS JOYEUX ', '20250616_181158.jpg', 86, '08487'),
(343, '2025-06-25', 'Vehicule du client ', '20250616_173559.jpg', 86, '08487'),
(344, '2025-06-25', 'Vehicule du client ', '20250616_173646.jpg', 86, '08487'),
(345, '2025-06-25', 'Carte rose du client ', '20250617_170517.jpg', 86, '08487'),
(346, '2025-06-25', 'REAL UNIVERS ', '20250616_173421.jpg', 86, '08487'),
(347, '2025-06-25', 'REAL UNIVERS ', '20250616_173448.jpg', 86, '08487'),
(348, '2025-06-25', 'LA PARCELLE MISE EN GARANTIE', '20250617_154938.jpg', 86, '08487'),
(349, '2025-06-25', 'LA PARCELLE MISE EN GARANTIE', '20250617_154947.jpg', 86, '08487'),
(350, '2025-06-25', 'Le client ', '20250616_172544.jpg', 86, '08487'),
(351, '2025-06-26', 'HISTORIQUE KIESSE', 'HISTORIQUE KIESSE REAGAN.xlsx', 18, '88721'),
(352, '2025-06-26', 'Salle Ã  manger ', '20250623_111606.jpg', 111, '27427'),
(353, '2025-06-26', 'PIECE D IDENTITE DU GARANT', 'IMG-20250625-WA0015.jpg', 111, '27427'),
(354, '2025-06-26', 'CNOM DU GARANT ', 'IMG-20250625-WA0016.jpg', 111, '27427'),
(355, '2025-06-26', 'Piece d identite', '29522292-429e-483a-821f-c94339904ee3.jpg', 18, '88721'),
(356, '2025-06-26', 'Document activite', '728c9d7b-b18c-4efd-a4e3-2adc5c8d9ed1.jpg', 18, '88721'),
(357, '2025-06-26', 'Photo domicile', 'photo domicile.pdf', 18, '88721'),
(358, '2025-06-26', 'Preuve paiement loyer', 'preuve paiement loyer.pdf', 18, '88721'),
(359, '2025-06-26', 'Contrat de bail', 'contrat de bail.pdf', 18, '88721'),
(360, '2025-06-26', 'Garant doc et identite', 'garant document et identite.pdf', 18, '88721'),
(361, '2025-06-26', 'Photo cash en banque', '20250625_101133.jpg', 18, '88721'),
(362, '2025-06-26', 'AVIS DU RISQUE', 'AVIS DU RISQUE CHUKWUMA.pdf', 69, '29320'),
(363, '2025-06-26', 'ACTIVITE', '20250611_124817.jpg', 18, '88721'),
(364, '2025-06-26', 'PHOTO ACT', 'PHOTO ACT.jpg', 18, '88721'),
(365, '2025-06-26', 'AVIS DU RISQUE KANIKI', 'AVIS DU RISQUE KANIKI.pdf', 81, '29972'),
(366, '2025-06-26', 'AVIS DU RISQUE', 'AVIS DU RISQUE MBADUGHA.pdf', 108, '93333'),
(367, '2025-06-26', 'PHOTO ACTIVITE', 'photo act 2.pdf', 18, '88721'),
(368, '2025-06-26', 'PHOTO ACTIVITE', 'photo act 3.pdf', 18, '88721'),
(369, '2025-06-26', 'PHOTO', 'photo act 4.pdf', 18, '88721'),
(370, '2025-06-26', 'ACT PHOTO', 'act 1.pdf', 18, '88721'),
(371, '2025-06-26', 'Activite ', '20250610_131911.jpg', 111, '27427'),
(372, '2025-06-26', 'Activite ', '20250610_131903.jpg', 111, '27427'),
(373, '2025-06-26', 'Activite ', '20250604_173653.jpg', 111, '27427'),
(374, '2025-06-26', 'Autorisation d ouverture de la cliente ', 'IMG-20250626-WA0010.jpg', 111, '27427'),
(375, '2025-06-26', 'Armoire ', '20250623_111531.jpg', 111, '27427'),
(376, '2025-06-26', 'Bulletin de Paie du garant avril 2025', 'IMG-20250626-WA0021.jpg', 30, '55237'),
(377, '2025-06-26', 'Bulletin de paie du garant mars 2025', 'IMG-20250626-WA0020.jpg', 30, '55237'),
(378, '2025-06-26', 'Bulletin de paie du garant mai 2025', 'IMG-20250626-WA0019.jpg', 30, '55237'),
(379, '2025-06-26', 'PIECE D IDENTITE DU GARANT', 'IMG-20250623-WA0000.jpg', 30, '55237'),
(380, '2025-06-26', 'Carte rose du vehicule mise en gage', 'IMG-20250626-WA0023.jpg', 30, '55237'),
(381, '2025-06-26', 'Carte rose', 'IMG-20250626-WA0024.jpg', 30, '55237'),
(382, '2025-06-26', 'Acte de vente du vehicule ', 'IMG-20250626-WA0026.jpg', 30, '55237'),
(383, '2025-06-26', 'LA PIECE D IDENTITE DU PERE BIOLOGIQUE DU CLIENT', 'IMG-20250623-WA0001.jpg', 30, '55237'),
(384, '2025-06-26', 'Bureau du client ', '20250624_114845.jpg', 121, '47968'),
(385, '2025-06-27', 'Autorisation d execution de travaux ', '20250624_112255.jpg', 121, '47968'),
(386, '2025-06-27', 'Lettre de la commune', '20250624_112308.jpg', 121, '47968'),
(387, '2025-06-27', 'PASSEPORT DU GARANT ', 'IMG-20250625-WA0020.jpg', 121, '47968'),
(388, '2025-06-27', 'AUTORISATION D OUVERTURE DU GARANT ', 'IMG-20250625-WA0021.jpg', 121, '47968'),
(389, '2025-06-27', 'FICHE PARCELLAIRE DU CLIENT', '20250624_112351.jpg', 121, '47968'),
(390, '2025-06-27', 'RCCM DU CLIENT ', '20250624_110903.jpg', 121, '47968'),
(391, '2025-06-27', 'Carte dâ??electeurs ', 'IMG_20250620_133424_784.jpg', 117, '24583'),
(392, '2025-06-27', 'Autorisation dâ??ouverture client', 'IMG_20250620_133424_784.jpg', 117, '24583'),
(393, '2025-06-27', 'Attestation du titre de propriete d enregistrement ', '20250617_164012.jpg', 86, '08487'),
(394, '2025-06-27', 'Attestation ', '20250617_164114.jpg', 86, '08487'),
(395, '2025-06-27', 'Arreter ministeriel PETITS JOYEUX  page 1', '20250617_164238.jpg', 86, '08487'),
(396, '2025-06-27', 'HOTEL DU CLIENT ', '20250617_150546.jpg', 86, '08487'),
(397, '2025-06-27', 'ARRETE REAL UNIVERS page 1', '20250617_164324.jpg', 86, '08487'),
(398, '2025-06-27', 'Fiche de visite et map', 'fiches de visite et MAPS.pdf', 15, '66776'),
(399, '2025-06-27', 'avis du risque', '17_Grille analyste_YALA_NDOFUNSU_BERRY.pdf', 68, '24682'),
(400, '2025-06-27', 'identité', 'ID CLIENT.jpg', 31, '64281'),
(401, '2025-06-27', 'co debiteur', 'CO DEBITEUR.jpg', 31, '64281'),
(402, '2025-06-27', 'CO DEBITEUR CLAIRE', 'mr CLOVIS.jpg', 31, '64281'),
(403, '2025-06-27', 'REVENU DU CONJOINT', 'revenu conjoint.pdf', 31, '64281'),
(404, '2025-06-27', 'PHOTO ACT', 'joelle photo act.pdf', 31, '64281'),
(405, '2025-06-27', 'PHOTO ACTIVITE', 'joelle photo activite.pdf', 31, '64281'),
(406, '2025-06-27', 'PHOTO DOMICILE', 'joelle photo domicile.pdf', 31, '64281'),
(407, '2025-06-27', 'DOCUMENT COMMERCE', 'doc commerce.pdf', 31, '64281'),
(408, '2025-06-27', 'AUTRE SOURCE DE REVENU ', 'autre source de revenu.pdf', 31, '64281'),
(409, '2025-06-27', 'IDENTITE GARANT', 'ID JAY.jpg', 31, '64281'),
(410, '2025-06-27', 'CARTE DE SERVICE GARANT', 'JAY CARTE DE SERVICE.jpg', 31, '64281'),
(411, '2025-06-27', 'PREUVE SALAIRE GARANT', 'PAIEMENT SALAIRE JAY.pdf', 31, '64281'),
(412, '2025-06-27', 'id client', 'id bellange.pdf', 104, '20414'),
(413, '2025-06-27', 'doc commerce belange', 'belange document de commerce.pdf', 104, '20414'),
(414, '2025-06-27', 'photo activite belange', 'bellange photo act.pdf', 104, '20414'),
(415, '2025-06-27', 'photo dom bellange', 'domicile bellange.pdf', 104, '20414'),
(416, '2025-06-27', 'paiement loyer bellange', 'bellange paiement loyer act et dom.pdf', 104, '20414'),
(417, '2025-06-27', 'id et doc garant', 'gesly id et doc commerce.pdf', 104, '20414'),
(418, '2025-06-27', 'autre source de revenu', 'belange autre source de revenu.pdf', 104, '20414'),
(419, '2025-06-28', 'Photos chukwuma', '20250611_125001.jpg', 69, '29320'),
(420, '2025-06-28', 'BM CLIENT', 'BM CLIENT.jpg', 69, '29320'),
(421, '2025-06-28', 'BM GARANT', 'BM GARANT.jpg', 69, '29320'),
(422, '2025-06-28', 'BM', 'BM GARANT 2.jpg', 69, '29320'),
(423, '2025-06-28', 'CONTRATS SIGNES ', 'CONTRATS CHUKWUMA ALOYSIUS_0001.pdf', 69, '29320'),
(424, '2025-06-28', 'MEMO ET RAPPORT DE VISITE AC ', 'MEMO DOCUMENT CLIENT ET RAPPORT DE VISITE AC_0001.pdf', 69, '29320'),
(425, '2025-06-28', 'PASSEPORT GARANT', 'PASSEPORT GARANT.jpg', 108, '93333'),
(426, '2025-06-28', 'FICHE VISITE SUP', 'FICHE VISITE SUP.jpg', 108, '93333'),
(427, '2025-06-28', 'LETTRE D OFFRE CORRIGER ', 'LETTRE D''OFFRE VRAI CHUKWUMA_0001.pdf', 69, '29320'),
(428, '2025-06-28', 'CONTRATS SIGNES', 'MBADUGHU AUGUSTINE (1).pdf', 108, '93333'),
(429, '2025-07-01', 'PHOTOS EPOUSE ET GARANT DU CLIENT KANIKI', 'PHOTO EPOUSE ET GARANT KANIKI_0001.jpg', 81, '29972'),
(430, '2025-07-01', 'CONTRATS DU CLIENT KANIKI', 'CONTRATS SIGNE CLIENT KANIKI_0001.pdf', 81, '29972'),
(431, '2025-07-02', 'Id client', 'IMG_8207.jpeg', 106, '02733'),
(432, '2025-07-02', 'Co debitrice', '20250616_123707.jpg', 106, '02733'),
(433, '2025-07-02', 'Photo activité', 'photo activité fr 1.pdf', 106, '02733'),
(434, '2025-07-02', 'Photo activité 2', 'photo act 2 fr.pdf', 106, '02733'),
(435, '2025-07-02', 'Photo domicile', 'photo domicile fr.pdf', 106, '02733'),
(436, '2025-07-02', 'Preuve paiement snl/ regideso', 'preuve paiement regideso et snl fr.pdf', 106, '02733'),
(437, '2025-07-02', 'Preuve paiement loyer', 'preuve paiement loyer fr.pdf', 106, '02733'),
(438, '2025-07-02', 'Preuve paiement loyer', 'preuve paiement loyer fr.pdf', 106, '02733'),
(439, '2025-07-02', 'Cash en banque', 'preuve cash banque fr.pdf', 106, '02733'),
(440, '2025-07-02', 'Id garant et preuve salaire', 'garant junior id et preuve salaire.pdf', 106, '02733'),
(441, '2025-07-02', 'Autre source de revenu hotel', 'autre source de revenu hotel f.pdf', 106, '02733'),
(442, '2025-07-02', 'Autre source de revenu hotel', 'autre source de revenu hotel fr.pdf', 106, '02733'),
(443, '2025-07-02', 'Document de commerce', 'doc commerce fr.pdf', 106, '02733'),
(444, '2025-07-02', 'Paiement taxes', 'taxes fr.pdf', 106, '02733'),
(445, '2025-07-03', 'Documents garante', 'Documents garante.pdf', 15, '66776'),
(446, '2025-07-03', 'Photo codebitrice', '20250703_123130.jpg', 68, '24682'),
(447, '2025-07-03', 'Photo garant', '20250604_165435.jpg', 68, '24682'),
(448, '2025-07-03', 'Maps', '20250703_131918.jpg', 68, '24682'),
(449, '2025-07-03', 'maps joseph', 'Maps Joseph Ndudi.pdf', 50, '60198'),
(450, '2025-07-03', 'DOCUMENTS M. YALA BERRY', 'DOCUMETS M. YALA BERRY_0001.pdf', 68, '24682'),
(452, '2025-07-03', 'CONTRATS M. YALA NDOFUNSU BERRY', 'CONTRATS M. YALA BERRY_0001.pdf', 68, '24682'),
(453, '2025-07-03', 'Recettes hotel', 'recettes hotel.pdf', 106, '02733'),
(454, '2025-07-03', 'Recettes hotel suite', 'recettes hotel suite.pdf', 106, '02733'),
(455, '2025-07-03', 'Activites garante', 'Photos activités garant.pdf', 15, '66776'),
(456, '2025-07-03', 'Map fiche yvette', 'Maps Yvette Kapela.pdf', 47, '59686'),
(457, '2025-07-04', 'Ancien document garante', 'ancien document garant.pdf', 15, '66776'),
(458, '2025-07-04', 'Maps', '20250704_124603.jpg', 106, '02733'),
(459, '2025-07-04', 'Chek liste', '20250704_124741.jpg', 106, '02733'),
(460, '2025-07-04', 'Fiche terrain ac', '20250704_124720.jpg', 106, '02733'),
(461, '2025-07-04', 'Fiche terrain sup', '20250704_124701.jpg', 106, '02733'),
(462, '2025-07-04', 'Photo garant', '20250704_134210.jpg', 106, '02733'),
(463, '2025-07-04', 'Photo garant', '20250704_134210.jpg', 106, '02733'),
(464, '2025-07-04', 'Carte garant originale', '20250704_134120.jpg', 106, '02733'),
(465, '2025-07-04', 'Photo epouse', '20250704_134218.jpg', 106, '02733'),
(466, '2025-07-04', 'Carte epouse originale', '20250704_134043.jpg', 106, '02733'),
(467, '2025-07-04', 'DOCUMENTS CLIENTE', 'DOCUMENTS MADAME MUNTU NGOMA_0001.pdf', 15, '66776'),
(468, '2025-07-04', 'PV COMITE ', 'PV COMITE MAYEMBA FRANCIS_0001.pdf', 106, '02733'),
(469, '2025-07-04', 'PHOTO GARANTE', 'GARANTE MUNTU_0001.jpg', 15, '66776'),
(470, '2025-07-04', 'CONTRATS SIGNES DU CLIENT MAYEMBA ', 'CONTRATS MAYEMBA FRANCIS_0001.pdf', 106, '02733'),
(471, '2025-07-04', 'CONTRATS CLIENTE MUTU NGOMA', 'CONTRATS CLIENTE MUTU NGOMA RODIG_0001.pdf', 15, '66776');

-- --------------------------------------------------------

--
-- Structure de la table `documentpvcomite`
--

CREATE TABLE IF NOT EXISTS `documentpvcomite` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DateEnregistrementDoc` varchar(25) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `FichierUrl` varchar(500) NOT NULL,
  `NumDossierCre` varchar(500) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `documentpvcomite`
--

INSERT INTO `documentpvcomite` (`Id`, `DateEnregistrementDoc`, `Description`, `FichierUrl`, `NumDossierCre`) VALUES
(1, '2025-06-16', 'PV ComitÃ©', 'PV DE COMITE CREDIT DE BELESI MUZANGA BODRICK.pdf', '52533'),
(2, '2025-06-18', 'PV COMITE JOSEPH NDUDI', 'PV COMITE JOSEPH NDUDI.jpg', '60198'),
(3, '2025-06-18', 'Pv Comite Kapela yvette', 'Pv comiteÌ KAPELA  YVETTE .pdf', '59686'),
(4, '2025-06-19', 'PV Lobumbwa', 'PV Lobumbwa.jpg', '52652'),
(5, '2025-06-20', 'PV Pompon\r\n', 'pv tshita.jpg', '61600'),
(6, '2025-06-20', 'PV COMITE', 'PV_MUNTU_0001[1].pdf', '66776'),
(7, '2025-06-23', 'PV Ghislain', 'PV Ghislain.jpg', '75098'),
(8, '2025-06-28', 'PV comité', 'PV COMITE Mr CHUKWUMA_0001.pdf', '29320'),
(9, '2025-06-28', 'PV Comité', 'PV COMITE Mr KANIKI_0001[1].pdf', '29972'),
(10, '2025-06-28', 'pv Augustine', 'PV COMITE Mr MBADUGHA_0001[1].pdf', '93333'),
(11, '2025-07-02', 'PV comité berry ', 'PV COMITE YALA BERRY_0001.pdf', '24682');

-- --------------------------------------------------------

--
-- Structure de la table `dossiercredit`
--

CREATE TABLE IF NOT EXISTS `dossiercredit` (
  `NumDossierCredit` varchar(10) NOT NULL,
  `DateDossier` varchar(50) NOT NULL,
  `MontantDemande` double NOT NULL,
  `DureePret` int(11) NOT NULL,
  `CapacitePayementMensuel` int(11) NOT NULL,
  `ButInvestissment` varchar(500) NOT NULL,
  `PrecisionSiAutre` varchar(300) DEFAULT NULL,
  `AvoirUnAutrePret` varchar(500) NOT NULL,
  `InstututionPretAnterieur` varchar(500) DEFAULT NULL,
  `EtatDossierCredit` varchar(100) NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `DossierinitiePar` int(11) NOT NULL,
  `DtFluxCreation` varchar(50) DEFAULT '0',
  `DtFluxAssignation` varchar(50) DEFAULT '0',
  `DtFluxAnalyse` varchar(50) DEFAULT '0',
  `DtFluxComite` varchar(50) DEFAULT '0',
  `DtFluxVerification` varchar(50) DEFAULT '0',
  `DtFluxPostage` varchar(50) DEFAULT '0',
  `DtFluxTermine` varchar(50) DEFAULT '0',
  `analyste` varchar(500) DEFAULT 'NAN',
  PRIMARY KEY (`NumDossierCredit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `dossiercredit`
--

INSERT INTO `dossiercredit` (`NumDossierCredit`, `DateDossier`, `MontantDemande`, `DureePret`, `CapacitePayementMensuel`, `ButInvestissment`, `PrecisionSiAutre`, `AvoirUnAutrePret`, `InstututionPretAnterieur`, `EtatDossierCredit`, `IdClientD`, `DossierinitiePar`, `DtFluxCreation`, `DtFluxAssignation`, `DtFluxAnalyse`, `DtFluxComite`, `DtFluxVerification`, `DtFluxPostage`, `DtFluxTermine`, `analyste`) VALUES
('01222', '2025-05-23', 1000, 6, 200, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 17, 44, '2025-05-23', '2025-05-23', '2025-06-20', '0', '0', '0', '0', 'KADAKA MUANDA Omar'),
('02733', '2025-05-26', 2000, 8, 250, 'Besoin de fonds roulement', '', 'Non', '', 'Terminer', 106, 62, '2025-06-20', '2025-06-20', '2025-06-20', '2025-07-04', '2025-07-03', '2025-07-04', '2025-07-04', 'FUMUNGUMBA BIKEM Divine'),
('02898', '2025-07-02', 5000, 12, 400, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'MICROPOP SA', 'Assignation', 131, 54, '2025-07-02', '2025-07-02', '0', '0', '0', '0', '0', 'NAN'),
('05776', '2025-05-30', 10000, 12, 900, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 39, 54, '2025-06-02', '2025-06-02', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('06622', '2025-06-18', 2000, 9, 200, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 96, 54, '2025-06-18', '2025-06-18', '2025-06-20', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('08487', '2025-06-12', 17000, 12, 1500, 'Autres', 'NA', 'Oui,j''avais', 'VISIONFUND', 'Comite', 86, 67, '2025-06-17', '2025-06-17', '2025-06-17', '2025-06-27', '0', '0', '0', 'KADAKA MUANDA Omar'),
('09263', '2024-01-01', 17500, 15, 2000, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'BAOBAB', 'Analyse', 23, 51, '2025-05-26', '2025-05-26', '2025-05-26', '0', '0', '0', '0', 'BAZOMBWA BELI FRANK'),
('09275', '2025-06-17', 3500, 10, 300, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 90, 50, '2025-06-17', '2025-06-17', '2025-06-20', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('09437', '2025-06-24', 3000, 10, 400, 'Investissement', '', 'Non', '', 'Analyse', 115, 54, '2025-06-24', '2025-06-24', '2025-06-24', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('09804', '2025-06-04', 15000, 12, 2000, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 49, 28, '2025-06-05', '2025-06-05', '2025-06-05', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('09927', '2025-06-13', 8000, 6, 1200, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 78, 50, '2025-06-13', '2025-06-13', '2025-06-20', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('11416', '2025-05-31', 3000, 8, 400, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 34, 59, '2025-05-31', '2025-05-31', '2025-06-21', '0', '0', '0', '0', 'SABWA TSHIBANGU PATRICK'),
('11965', '2025-06-17', 10000, 12, 500, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 87, 50, '2025-06-17', '2025-06-17', '2025-06-20', '0', '0', '0', '0', 'MANKWE MALAIKA CYNTHIA'),
('11973', '2025-05-28', 500, 6, 70, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 29, 50, '2025-05-28', '2025-05-28', '2025-05-28', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('12335', '2025-06-09', 7000, 12, 500, 'Investissement', '', 'Non', '', 'Analyse', 59, 54, '2025-06-09', '2025-06-09', '2025-06-13', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('12780', '2025-06-01', 30000, 15, 2500, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 36, 50, '2025-06-02', '2025-06-02', '2025-06-06', '0', '0', '0', '0', 'MATUNGA LUKOMBO Gervais'),
('14558', '2025-07-02', 6000, 12, 500, 'Investissement', '', 'Non', '', 'Assignation', 133, 54, '2025-07-02', '2025-07-02', '0', '0', '0', '0', '0', 'NAN'),
('14659', '2025-06-19', 5000, 12, 200, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 102, 51, '2025-06-19', '2025-06-19', '2025-06-20', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('14781', '2025-06-19', 15000, 24, 500, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 98, 50, '2025-06-19', '2025-06-19', '2025-06-21', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('14985', '2025-06-02', 8000, 12, 700, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'TMB', 'Analyse', 37, 39, '2025-06-02', '2025-06-02', '2025-06-21', '0', '0', '0', '0', 'MUAMBA KAZADI MOISE'),
('15939', '2025-05-23', 4000, 10, 500, 'Besoin de fonds roulement', '', 'Oui,j''ai', 'MICROPOP S.A', 'Comite', 16, 37, '2025-05-23', '2025-05-23', '2025-05-26', '2025-06-18', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('16424', '2025-06-05', 4000, 12, 500, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'Finca ', 'Rejeter', 55, 47, '2025-06-06', '2025-06-06', '2025-06-06', '2025-06-19', '0', '0', '0', 'BAZOMBWA BELI FRANK'),
('19807', '2025-06-18', 2000, 6, 500, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 94, 54, '2025-06-18', '2025-06-18', '2025-06-20', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('19956', '2025-06-11', 9000, 12, 1000, 'Investissement', '', 'Oui,j''avais', 'MICROPOP SA', 'Analyse', 65, 54, '2025-06-11', '2025-06-11', '2025-06-13', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('20414', '2025-05-26', 3000, 6, 600, 'Besoin de fonds roulement', '', 'Non', '', 'Comite', 104, 62, '2025-06-20', '2025-06-20', '2025-06-20', '2025-07-02', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('22267', '2025-06-18', 3000, 10, 300, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'PRO CREDIT ', 'Analyse', 93, 54, '2025-06-18', '2025-06-18', '2025-06-20', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('22350', '2025-07-02', 5000, 12, 500, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 129, 54, '2025-07-02', '2025-07-02', '0', '0', '0', '0', '0', 'NAN'),
('23401', '2025-05-26', 10000, 12, 800, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 25, 59, '2025-05-26', '2025-05-26', '2025-05-27', '0', '0', '0', '0', 'MUAMBA KAZADI MOISE'),
('24583', '2025-06-20', 5000, 11, 600, 'Besoin de fonds roulement', '', 'Non', '', 'Comite', 117, 66, '2025-06-25', '2025-06-25', '2025-06-25', '2025-06-27', '0', '0', '0', 'MASANGI Fidele Fidele'),
('24682', '2025-06-02', 9900, 12, 1200, 'Investissement', '', 'Oui,j''avais', 'Micropop', 'Terminer', 68, 62, '2025-06-11', '2025-06-11', '2025-06-11', '2025-07-03', '2025-07-03', '2025-07-03', '2025-07-03', 'FUMUNGUMBA BIKEM Divine'),
('26649', '2025-06-12', 5000, 10, 600, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 74, 54, '2025-06-12', '2025-06-12', '2025-06-13', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('26809', '2025-07-07', 1000, 5, 200, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 140, 17, '2025-07-07', '2025-07-07', '0', '0', '0', '0', '0', 'NAN'),
('27427', '2025-06-23', 5000, 12, 650, 'Besoin de fonds roulement', '', 'Non', '', 'Comite', 111, 67, '2025-06-23', '2025-06-23', '2025-06-23', '2025-06-26', '0', '0', '0', 'KADAKA MUANDA Omar'),
('28171', '2025-06-11', 6000, 12, 450, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 63, 54, '2025-06-11', '2025-06-11', '2025-06-17', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('29113', '2025-06-20', 7500, 12, 200, 'Investissement', '', 'Non', '', 'Analyse', 107, 54, '2025-06-20', '2025-06-20', '2025-06-20', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('29320', '2025-06-11', 8000, 6, 1500, 'Besoin de fonds roulement', '', 'Oui,j''ai', 'Micropop', 'Terminer', 69, 47, '2025-06-11', '2025-06-11', '2025-06-13', '2025-06-28', '2025-06-28', '2025-06-28', '2025-06-28', 'BAZOMBWA BELI FRANK'),
('29972', '2025-06-13', 150000, 12, 1500, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'Micropop ', 'Terminer', 81, 47, '2025-06-13', '2025-06-13', '2025-06-13', '2025-07-01', '2025-07-01', '2025-07-01', '2025-07-01', 'BAZOMBWA BELI FRANK'),
('32238', '2025-06-11', 5000, 12, 1000, 'Besoin de fonds roulement', '', 'Oui,j''ai', 'MICROPOP', 'Analyse', 66, 54, '2025-06-11', '2025-06-11', '2025-06-13', '0', '0', '0', '0', 'MANKWE MALAIKA CYNTHIA'),
('32961', '2025-06-26', 5000, 12, 550, 'Investissement', '', 'Oui,j''avais', 'MICROPOP ', 'Analyse', 119, 54, '2025-06-26', '2025-06-26', '2025-06-26', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('33457', '2025-05-23', 8000, 12, 800, 'Investissement', '', 'Oui,j''avais', 'MICROPOP SA ', 'Analyse', 19, 54, '2025-05-23', '2025-05-23', '2025-05-27', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('35731', '2025-06-04', 500, 7, 50, 'Besoin de fonds roulement', '', 'Non', '', 'Rejeter', 44, 39, '2025-06-04', '2025-06-04', '0', '0', '0', '0', '0', 'NAN'),
('37183', '2025-06-13', 4000, 12, 600, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 79, 50, '2025-06-13', '2025-06-13', '2025-06-13', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('38625', '2025-05-24', 7000, 8, 800, 'Investissement', '', 'Non', '', 'Analyse', 20, 54, '2025-05-24', '2025-05-24', '2025-06-06', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('38945', '2025-06-19', 5000, 12, 250, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'FINCA ', 'Analyse', 99, 51, '2025-06-19', '2025-06-19', '2025-06-21', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('39620', '2025-06-04', 3500, 9, 350, 'Investissement', '', 'Non', '', 'Analyse', 43, 54, '2025-06-04', '2025-06-04', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('40789', '2025-07-07', 1000, 5, 200, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 141, 17, '2025-07-07', '2025-07-07', '0', '0', '0', '0', '0', 'NAN'),
('41837', '2025-06-23', 4000, 10, 150, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 113, 50, '2025-06-23', '2025-06-23', '2025-06-23', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('43876', '2025-07-02', 4500, 10, 500, 'Besoin de fonds roulement', '', 'Oui,j''ai', 'MICROPOP SA', 'Assignation', 132, 54, '2025-07-02', '2025-07-02', '0', '0', '0', '0', '0', 'NAN'),
('44860', '2025-07-02', 10000, 12, 1000, 'Investissement', '', 'Oui,j''avais', 'SOFIBANK', 'Assignation', 128, 54, '2025-07-02', '2025-07-02', '0', '0', '0', '0', '0', 'NAN'),
('45588', '2025-06-12', 2500, 12, 400, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'Micropop ', 'Comite', 77, 47, '2025-06-13', '2025-06-13', '2025-06-13', '2025-06-23', '0', '0', '0', 'BAZOMBWA BELI FRANK'),
('46437', '2025-05-22', 3500, 10, 400, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 14, 50, '2025-05-22', '2025-05-22', '2025-05-26', '0', '0', '0', '0', 'MATUNGA LUKOMBO Gervais'),
('47399', '2025-06-17', 1500, 8, 150, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 89, 50, '2025-06-17', '2025-06-17', '2025-06-20', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('47472', '2025-07-07', 2000, 6, 450, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 139, 17, '2025-07-07', '2025-07-07', '2025-07-07', '0', '0', '0', '0', 'MATUNGA LUKOMBO Gervais'),
('47968', '2025-06-24', 5000, 12, 400, 'Investissement', '', 'Non', '', 'Analyse', 121, 67, '2025-06-26', '2025-06-26', '2025-06-26', '0', '0', '0', '0', 'KADAKA MUANDA Omar'),
('50275', '2025-07-03', 3000, 7, 300, 'Investissement', '', 'Non', '', 'Assignation', 138, 67, '2025-07-04', '2025-07-04', '0', '0', '0', '0', '0', 'NAN'),
('52533', '2025-06-03', 5000, 12, 600, 'Besoin de fonds roulement', '', 'Non', '', 'Terminer', 75, 67, '2025-06-12', '2025-06-12', '2025-06-13', '2025-06-16', '2025-06-16', '2025-06-18', '2025-06-18', 'KADAKA MUANDA Omar'),
('52652', '2025-05-08', 4000, 12, 300, 'Besoin de fonds roulement', '', 'Non', '', 'Terminer', 82, 67, '2025-06-13', '2025-06-13', '2025-06-13', '2025-06-20', '2025-06-20', '2025-06-21', '2025-06-21', 'KADAKA MUANDA Omar'),
('53837', '2025-06-03', 5000, 10, 700, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 40, 51, '2025-06-03', '2025-06-03', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('53970', '2025-06-23', 1500, 6, 300, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 112, 51, '2025-06-23', '2025-06-23', '2025-06-23', '0', '0', '0', '0', 'BAZOMBWA BELI FRANK'),
('54122', '2025-06-04', 1500, 6, 250, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 46, 54, '2025-06-04', '2025-06-04', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('55237', '2025-05-28', 3000, 12, 300, 'Investissement', '', 'Non', '', 'Comite', 30, 44, '2025-05-28', '2025-05-28', '2025-06-20', '2025-06-26', '0', '0', '0', 'KADAKA MUANDA Omar'),
('55524', '2025-06-04', 6000, 7, 1000, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 137, 67, '2025-07-04', '2025-07-04', '0', '0', '0', '0', '0', 'NAN'),
('56869', '52025-06-18', 3500, 12, 250, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 97, 50, '2025-06-18', '2025-06-18', '2025-06-21', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('57566', '2025-06-17', 4000, 10, 300, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 91, 54, '2025-06-17', '2025-06-17', '2025-06-21', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('58355', '2025-05-27', 2000, 10, 200, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 26, 50, '2025-05-27', '2025-05-27', '2025-05-27', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('59686', '2025-06-04', 3500, 8, 500, 'Investissement', '', 'Oui,j''avais', 'Micropop', 'Terminer', 47, 48, '2025-06-04', '2025-06-04', '2025-06-06', '2025-06-12', '2025-06-19', '2025-07-03', '2025-07-03', 'MANKWE MALAIKA CYNTHIA'),
('60198', '2025-06-06', 1500, 12, 180, 'Investissement', '', 'Oui,j''avais', 'Micropop', 'Terminer', 50, 48, '2025-06-06', '2025-06-06', '2025-06-06', '2025-06-17', '2025-06-18', '2025-07-03', '2025-07-03', 'MANKWE MALAIKA CYNTHIA'),
('61600', '2025-06-12', 7000, 12, 750, 'Besoin de fonds roulement', '', 'Non', '', 'Terminer', 83, 67, '2025-06-13', '2025-06-13', '2025-06-14', '2025-06-20', '2025-06-20', '2025-06-21', '2025-06-21', 'KADAKA MUANDA Omar'),
('61950', '2025-06-24', 2000, 12, 200, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 116, 50, '2025-06-24', '2025-06-24', '2025-06-24', '0', '0', '0', '0', 'MATUNGA LUKOMBO Gervais'),
('61963', '2025-06-11', 5000, 8, 700, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 61, 50, '2025-06-11', '2025-06-11', '2025-06-17', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('62537', '2025-06-26', 5000, 12, 100, 'Investissement', '', 'Non', '', 'Analyse', 120, 50, '2025-06-26', '2025-06-26', '2025-06-26', '0', '0', '0', '0', 'MATUNGA LUKOMBO Gervais'),
('64109', '2025-06-19', 3500, 9, 350, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'MICROPOP', 'Analyse', 100, 59, '2025-06-19', '2025-06-19', '2025-06-21', '0', '0', '0', '0', 'MUAMBA KAZADI MOISE'),
('64281', '2025-05-28', 3000, 12, 150, 'Besoin de fonds roulement', '', 'Non', '', 'Comite', 31, 50, '2025-05-28', '2025-05-28', '2025-06-06', '2025-06-27', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('65565', '2025-07-01', 5000, 12, 500, 'Autres', 'FINITION DES MAISONS ', 'Non', '', 'Assignation', 130, 51, '2025-07-02', '2025-07-02', '0', '0', '0', '0', '0', 'NAN'),
('66703', '2025-06-17', 6000, 6, 800, 'Investissement', '', 'Non', '', 'Analyse', 85, 54, '2025-06-17', '2025-06-17', '2025-06-20', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('66776', '2025-05-22', 5000, 8, 300, 'Besoin de fonds roulement', '', 'Non', '', 'Terminer', 15, 48, '2025-05-22', '2025-05-22', '2025-05-26', '2025-07-04', '2025-07-03', '2025-07-04', '2025-07-04', 'MANKWE MALAIKA CYNTHIA'),
('68514', '2025-06-27', 10000, 10, 1000, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'FINCA ', 'Assignation', 122, 54, '2025-06-27', '2025-06-27', '0', '0', '0', '0', '0', 'NAN'),
('69063', '2025-05-27', 5000, 12, 450, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'MICROPOP', 'Analyse', 27, 59, '2025-05-27', '2025-05-27', '2025-06-21', '0', '0', '0', '0', 'SABWA TSHIBANGU PATRICK'),
('69155', '2025-06-17', 3000, 12, 350, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 92, 54, '2025-06-17', '2025-06-17', '2025-06-23', '0', '0', '0', '0', 'MATUNGA LUKOMBO Gervais'),
('70099', '2025-06-21', 15000, 6, 3500, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 109, 50, '2025-06-21', '2025-06-21', '2025-06-21', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('70495', '2025-06-06', 2500, 10, 200, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 53, 54, '2025-06-06', '2025-06-06', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('71631', '2025-07-01', 3000, 12, 300, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 126, 51, '2025-07-01', '2025-07-01', '0', '0', '0', '0', '0', 'NAN'),
('73520', '2025-06-12', 10000, 12, 400, 'Investissement', '', 'Non', '', 'Analyse', 70, 54, '2025-06-12', '2025-06-12', '2025-06-13', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('74556', '2025-06-27', 4000, 12, 400, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 124, 51, '2025-06-27', '2025-06-27', '0', '0', '0', '0', '0', 'NAN'),
('75098', '2025-06-05', 3000, 7, 550, 'Besoin de fonds roulement', '', 'Non', '', 'Terminer', 110, 67, '2025-06-21', '2025-06-21', '2025-06-21', '2025-06-23', '2025-06-23', '2025-06-23', '2025-06-23', 'KADAKA MUANDA Omar'),
('76759', '2025-06-23', 2500, 12, 200, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 114, 50, '2025-06-23', '2025-06-23', '2025-06-23', '0', '0', '0', '0', 'BAZOMBWA BELI FRANK'),
('77660', '2025-07-03', 13000, 12, 1200, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 135, 51, '2025-07-03', '2025-07-03', '0', '0', '0', '0', '0', 'NAN'),
('77829', '2025-05-26', 6000, 12, 400, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 24, 51, '2025-05-26', '2025-05-26', '2025-05-26', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('77990', '2025-07-02', 15000, 8, 2000, 'Besoin de fonds roulement', '', 'Oui,j''ai', 'MICROPOP SA', 'Analyse', 134, 47, '2025-07-02', '2025-07-02', '2025-07-02', '0', '0', '0', '0', 'BAZOMBWA BELI FRANK'),
('78641', '2025-05-31', 4000, 10, 250, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 35, 59, '2025-05-31', '2025-05-31', '2025-06-21', '0', '0', '0', '0', 'MUAMBA KAZADI MOISE'),
('80759', '2025-06-25', 2000, 6, 400, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 136, 67, '2025-07-04', '2025-07-04', '0', '0', '0', '0', '0', 'NAN'),
('82910', '2025-06-03', 15000, 15, 1400, 'Autres', 'Fond de dÃ©roulement et construction du nouveau boulangerie ', 'Oui,j''avais', 'Vision fund', 'Analyse', 118, 66, '2025-06-26', '2025-06-26', '2025-06-26', '0', '0', '0', '0', 'MASANGI Fidele Fidele'),
('83113', '2025-07-01', 6000, 12, 500, 'Besoin de fonds roulement', '', 'Oui,j''ai', 'BAOBAB', 'Assignation', 127, 51, '2025-07-01', '2025-07-01', '0', '0', '0', '0', '0', 'NAN'),
('83739', '2025-06-17', 2500, 10, 300, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 88, 50, '2025-06-17', '2025-06-17', '2025-06-20', '0', '0', '0', '0', 'MANKWE MALAIKA CYNTHIA'),
('86196', '2025-07-01', 500, 6, 100, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 125, 54, '2025-07-01', '2025-07-01', '0', '0', '0', '0', '0', 'NAN'),
('88366', '2025-06-12', 3000, 6, 550, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'MICROPOP', 'Analyse', 73, 51, '2025-06-12', '2025-06-12', '2025-06-19', '0', '0', '0', '0', 'BAZOMBWA BELI FRANK'),
('88721', '2025-05-23', 10000, 12, 1200, 'Investissement', '', 'Oui,j''ai', 'MICROPOP S.A', 'Analyse', 18, 54, '2025-05-23', '2025-05-23', '2025-05-26', '2025-06-26', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('89232', '2025-06-03', 5000, 12, 750, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'MICROPOP', 'Analyse', 41, 59, '2025-06-03', '2025-06-03', '2025-06-21', '0', '0', '0', '0', 'SABWA TSHIBANGU PATRICK'),
('91730', '2025-06-03', 15000, 12, 1500, 'Besoin de fonds roulement', '', 'Oui,j''ai', 'MICROPOP SA', 'Analyse', 42, 51, '2025-06-03', '2025-06-03', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('93333', '2025-06-20', 13000, 8, 2200, 'Besoin de fonds roulement', '', 'Oui,j''ai', 'Baobab ', 'Terminer', 108, 47, '2025-06-20', '2025-06-20', '2025-06-20', '2025-06-28', '2025-06-28', '2025-06-28', '2025-06-28', 'BAZOMBWA BELI FRANK'),
('93990', '20285-06-27', 80000, 18, 5500, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 123, 50, '2025-06-27', '2025-06-27', '0', '0', '0', '0', '0', 'NAN'),
('94912', '2025-06-18', 10000, 12, 1100, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 95, 48, '2025-06-18', '2025-06-18', '2025-06-18', '0', '0', '0', '0', 'MANKWE MALAIKA CYNTHIA'),
('97984', '2025-06-09', 2000, 8, 300, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 57, 51, '2025-06-09', '2025-06-09', '2025-06-13', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('98277', '2025-06-02', 3000, 10, 350, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 38, 50, '2025-06-02', '2025-06-02', '2025-06-06', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN');

-- --------------------------------------------------------

--
-- Structure de la table `garantcreditindividuel`
--

CREATE TABLE IF NOT EXISTS `garantcreditindividuel` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NomG` varchar(200) NOT NULL,
  `PostNomG` varchar(200) NOT NULL,
  `PrenomG` varchar(200) NOT NULL,
  `EtatCivilG` varchar(20) NOT NULL,
  `SexeG` varchar(20) NOT NULL,
  `DateNaissanceG` varchar(20) NOT NULL,
  `TelephoneG` varchar(25) NOT NULL,
  `EmailG` varchar(50) NOT NULL,
  `TypePieceIdentite` varchar(50) NOT NULL,
  `NumCartePieceIdentite` varchar(100) NOT NULL,
  `NomsConjoint` varchar(50) NOT NULL,
  `TelephoneConjoint` varchar(30) NOT NULL,
  `RelationAvecClient` varchar(30) NOT NULL,
  `ProprieteMaison` varchar(50) NOT NULL,
  `ActiviteG` varchar(100) NOT NULL,
  `RevenuG` varchar(20) NOT NULL,
  `AdresseG` varchar(500) NOT NULL,
  `Province` varchar(50) NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  `ChiffreAffaireG` double DEFAULT NULL,
  `CmvG` double DEFAULT NULL,
  `ProfilBruteG` double DEFAULT NULL,
  `TotDepenseOpG` double DEFAULT NULL,
  `ProfilNetG` double DEFAULT NULL,
  `TotalAutresRevenusG` double DEFAULT NULL,
  `TotalDepensePriveG` double DEFAULT NULL,
  `CapacitePaiementG` double DEFAULT NULL,
  `ContratTravailG` varchar(10) DEFAULT NULL,
  `BulletinPaiG` varchar(10) DEFAULT NULL,
  `CarteServiceG` varchar(10) DEFAULT NULL,
  `SalaireM1G` double DEFAULT NULL,
  `SalaireM2G` double DEFAULT NULL,
  `SalaireM3G` double DEFAULT NULL,
  `TotalAutresAvantagesG` double DEFAULT NULL,
  `SalaireMoyenG` double DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Contenu de la table `garantcreditindividuel`
--

INSERT INTO `garantcreditindividuel` (`Id`, `NomG`, `PostNomG`, `PrenomG`, `EtatCivilG`, `SexeG`, `DateNaissanceG`, `TelephoneG`, `EmailG`, `TypePieceIdentite`, `NumCartePieceIdentite`, `NomsConjoint`, `TelephoneConjoint`, `RelationAvecClient`, `ProprieteMaison`, `ActiviteG`, `RevenuG`, `AdresseG`, `Province`, `IdClientD`, `NumDossierCre`, `ChiffreAffaireG`, `CmvG`, `ProfilBruteG`, `TotDepenseOpG`, `ProfilNetG`, `TotalAutresRevenusG`, `TotalDepensePriveG`, `CapacitePaiementG`, `ContratTravailG`, `BulletinPaiG`, `CarteServiceG`, `SalaireM1G`, `SalaireM2G`, `SalaireM3G`, `TotalAutresAvantagesG`, `SalaireMoyenG`) VALUES
(1, 'Kingunia', 'Nsebonkwa', 'Aime', 'Marie(e)', 'Feminin', '1992-03-28', '+243814519870', 'Na', 'carte electeur', '0', 'Ntete Nadine Nadine', '+243998180706', 'Ami', 'Propietaire', 'Terrasse bar', '0', 'Av du staden A31 Q/ matonge C/kalamu', 'Kinshasa', 68, '24682', 2000, 1300, 700, 200, 500, 0, 150, 350, 'non', 'non', 'non', 0, 0, 0, 0, 0),
(2, 'Kalala', 'Mavuala', 'Jeremie', 'Marie(e)', 'Masculin', '1963-04-17', '+243990960063', 'Na', 'carte electeur', '30062926772', 'Na', '0', 'Ami', 'Locataire', 'Na', '325', 'Bondo n 20 Q/kimbangu c/kalamu', 'Kinshasa', 16, '15939', 0, 0, 0, 0, 0, 0, 0, 0, 'oui', 'oui', 'oui', 0, 0, 0, 0, 0),
(3, 'KISALU', 'MALUANO', 'BASILE', 'Marie(e)', 'Masculin', '1972-01-02', '0998297178', 'NA', 'carte electeur', '35722411198', 'Kivule Ngoma Daddy', '0', 'Ami', 'Locataire', 'Chef de bureau', '1655', 'Miao numerp 2013 quartier Molo commune de lemba', 'Kinshasa', 47, '59686', 0, 0, 0, 0, 0, 0, 0, 0, 'non', 'oui', 'oui', 1655, 1655, 1655, 0, 1655),
(4, 'BASELE', 'BOLONGO', 'MIRIAM', 'Marie(e)', 'Feminin', '1984-08-07', '234897495916', 'NA', 'carte electeur', '30464176987', 'WANET MISWAYI VITAL', '0', 'Parent', 'Propietaire', 'Transport ', '400', 'BLD LUMUMBA ENTREE MIKONDO', 'Kinshasa', 82, '52652', 0, 0, 0, 0, 0, 0, 0, 0, 'oui', 'oui', 'oui', 250, 250, 250, 150, 250),
(5, 'BATWALANA', 'BATANTU', 'JUDITH', 'Veuf(e)', 'Feminin', '1975-05-02', '0', 'NA', 'carte electeur', '30169752319', 'NA', '0', 'voisine', 'Propietaire', 'commercante', '1200', 'BLD LUMUMBA Entree macrevette', 'Kinshasa', 75, '52533', 14000, 9800, 4200, 350, 3850, 0, 0, 3850, '', '', '', 0, 0, 0, 0, 0),
(6, 'KUANANA', 'MUKINDA', 'CLARIS', 'Veuf(e)', 'Feminin', '1972-06-15', '243895075895', 'NA', 'carte electeur', '30184341158', 'DARLING TOWO EKUTSHU', '0', 'Autres', 'Locataire', 'BOUTIQUE LA GRÃ?CE DIVINE ', '1300', 'BLV LUMUMBA N 45 Q SANS FIL C MASINA ', 'Kinshasa', 83, '61600', 13500, 9650, 3850, 310, 3540, 0, 0, 3540, '', '', '', 0, 0, 0, 0, 0),
(7, 'FOLO', 'IWAWA', 'THOMAS', 'Celibataire', 'THOMAS', '1983-01-01', '243895376156', 'NA', 'Passeport', 'OP1017377', 'NA', 'NA', 'Ami', 'Locataire', 'VENTE DES VAIN ET ACCESSOIRES ALIMENTAIRES', '5585', 'Onatra 6369,Q/Bon marche ,C/Barumbu', 'Kinshasa', 69, '29320', 58700, 50300, 8400, 1870, 6530, 0, 950, 5580, 'non', 'non', 'non', 0, 0, 0, 0, 0),
(8, 'Lulendo', 'Dianzolo', 'Patrick', 'Marie(e)', 'Masculin', '1989-06-14', '0890220700', 'NA', 'Passeport', 'OP1450190', 'Lunda Evodie', '0', 'Ami', 'Locataire', 'Medecin', '270', 'Moyo numero 5 Q/ Basoko c/ Ngaliema', 'Kinshasa', 50, '60198', 0, 0, 0, 0, 0, 0, 0, 0, 'oui', 'oui', 'non', 270, 270, 270, 0, 270),
(9, 'Mwamba', 'Mwamba', 'Grace', 'Marie(e)', 'Feminin', '1988-11-21', '0990576172', 'NA', 'carte electeur', '30395355013', 'NA', '0', 'Ami', 'Locataire', 'Salon de coiffure Grace de Dieu', '600', 'Vitamine 1 numero 16A commune de Matete', 'Kinshasa', 15, '66776', 600, 0, 600, 210, 390, 0, 200, 190, '', '', '', 0, 0, 0, 0, 0),
(10, 'TSHILUMBA', 'BEYA', 'FLORENCE', 'Marie(e)', 'Feminin', '1989-11-11', '243818793632', 'NA', 'carte electeur', '30136536029', 'NGOYI KALEMBA', '243827360998', 'Autres', 'Locataire', 'SERVEUSE', '308', '17 AV REGIDESO, Q/MUSEYI, C/NGALIEMA', 'Kinshasa', 55, '16424', 0, 0, 0, 0, 0, 0, 0, 0, 'oui', 'oui', 'oui', 308, 297, 308, 0, 304.33),
(11, 'TSIMBA', 'KIPHIOKA', 'JEAN DE LA CROIX', 'Marie(e)', 'Masculin', '1973-10-06', '243815247579', 'NA', 'carte electeur', '30239749285', 'MPUTU NSELE', 'NA', 'Ami', 'Locataire', 'IMPRIMERIE', '1115', 'BANGA A5, MATONGE, KALAMU', 'Kinshasa', 77, '45588', 8940, 5950, 2990, 1090, 1900, 0, 785, 1115, '', '', '', 0, 0, 0, 0, 0),
(12, 'KUVUYUKA', 'YALA', 'PRINCE', 'Celibataire', 'Masculin', '1995-12-22', '243979331925', 'NA', 'Passeport', 'OP1547601', 'NA', '0', 'Parent', 'Propietaire', 'Croisement 20 novembre et liberation ', '600', 'AV. TUADI Num 2 LIMITE RESIDENTIEL 13ÈME RUE', 'Kinshasa', 110, '75098', 0, 0, 0, 0, 0, 0, 0, 0, 'oui', 'oui', 'oui', 600, 600, 600, 0, 600),
(13, 'KANIKI', 'NTUMBA', 'SEDOU', 'Marie(e)', 'Masculin', '1991-01-27', '243831118977', 'NA', 'Passeport', 'OP0770082', 'LOKOMBA MOSEKA Lorine', '243842380245', 'Autres', 'Locataire', 'VENTE ACCESOIRES TELEPHONES ET JEUX VIDEOS', '2110', 'MARINGA 1, Q/AC, C/KASA-VUBU', 'Kinshasa', 81, '29972', 11450, 7750, 3700, 750, 2950, 0, 840, 2110, '', '', '', 0, 0, 0, 0, 0),
(14, 'KIBANZA', 'NDINGA', 'JEAN-PARIS DANCE', 'Marie(e)', 'Masculin', '1967-08-02', '243815332115', 'NA', 'carte electeur', '30065332385', 'NA', 'NA', 'Ami', 'Locataire', 'VENTE DES ACCESSOIRES IMPRIMERIE', '4770', '36E RUE 9 KIBANGU, KALAMU', 'Kinshasa', 108, '93333', 54200, 46250, 7950, 2200, 5750, 0, 980, 4770, '', '', '', 0, 0, 0, 0, 0),
(15, 'MANGUMBU', 'NIOSO', 'YURHI', 'Celibataire', 'Masculin', '1988-03-15', '243896070469', 'NA', 'carte electeur', '30364960084', 'NA', '0', 'Autres', 'Locataire', 'DEPOT BOISSON', '1000', 'AV SOUVENIR N 40 Q/MBAKI C/BUMBU', 'Kinshasa', 18, '88721', 4200, 1800, 2400, 600, 1800, 0, 180, 1620, 'non', 'non', 'non', 0, 0, 0, 0, 0),
(16, 'LUTAMBI', 'TOMONO', 'JUILLER', 'Celibataire', 'Masculin', '1983-07-26', '243895461377', 'NA', 'carte electeur', '30011122471', 'NA', '0', 'Autres', 'Propietaire', 'MEDECIN ', '550', 'AV BOBOLIKO N 22 C MONT NGAFULA REF ARRET ARMEE', 'Kinshasa', 111, '27427', 0, 0, 0, 0, 0, 0, 0, 0, 'non', 'oui', 'oui', 550, 550, 550, 500, 550),
(17, 'BATUZEYI', 'MAHAHI', 'PAPY', 'Celibataire', 'Masculin', '1975-05-09', '243815254243', 'NA', 'carte electeur', '30394347571', 'NA', '0', 'Parent', 'Propietaire', 'COMPTABLE DU CONGO TRANSPORT Sarl', '600', 'AV BAHUMBU N 41 Q BONDO C MATETE ', 'Kinshasa', 30, '55237', 0, 0, 0, 0, 0, 0, 0, 0, 'non', 'oui', 'non', 372, 372, 372, 228, 372),
(18, 'Mbala', 'Da cruz', 'Isaac', 'Marie(e)', 'Masculin', '1969-10-10', '0995906952', 'Ras', 'carte electeur', '30192032803', 'Ras', '0', 'Ami', 'Familliale', 'Salle de fete et loyer ', '1000', '83,dispensaire, Q.efoloko c.masina', 'Kinshasa', 117, '24583', 1000, 0, 1000, 100, 900, 0, 500, 400, '', '', '', 0, 0, 0, 0, 0),
(19, 'NGOMA ', 'NGOMA ', 'JEAN ', 'Marie(e)', 'Masculin', '1968-09-18', '243999936808', 'NA', 'carte electeur', '30195930819', 'DINGANI NGUDI JACQUI', '0', 'Ami', 'Locataire', 'Vente peintures ', '2800', 'AV TAMUISIA N 12 Q 8 C NDJILI ', 'Kinshasa', 86, '08487', 35000, 29000, 6000, 800, 5200, 0, 0, 5200, '', '', '', 0, 0, 0, 0, 0),
(20, 'KUMBI', 'VIENGELE', 'JAY', 'Celibataire', 'Masculin', '1992-08-16', '243819770111', 'NA', 'carte electeur', '30334749031', 'NA', '0', 'amis', 'Propietaire', 'COMPTABLE TMB', '615', '83 Bis Av.Kikwit Q/Selo C/Makala', 'Kinshasa', 31, '64281', 0, 0, 0, 0, 0, 0, 0, 0, 'non', 'oui', 'oui', 615, 615, 615, 0, 615),
(21, 'LUPETU', 'TSHIATENDA', 'JESLY', 'Divorcé(e)', 'Feminin', '1970-05-05', '243816637660', 'NA', 'carte electeur', '300257133165', 'NA', 'NA', 'Parent', 'Locataire', 'DEPOT JUS', '1100', 'AV POKO N 33 Q/KAUKA C/KALAMU', 'Kinshasa', 104, '20414', 13342, 10643, 2699, 650, 2049, 0, 860, 1189, 'non', 'non', 'non', 0, 0, 0, 0, 0),
(22, 'Niemba', 'Kalusongiko', 'Junior', 'Celibataire', 'Masculin', '1980-09-08', '243999501071', 'Na', 'carte electeur', '30036924408', 'MANGASE IYENGA NAOMIE', '0', 'Ami', 'Locataire', 'Fonctionnaire,Kinshasa gombe ', '700', 'Av mavungu n 50,Q / lubudi ,C/ banalungwa', 'Kinshasa', 106, '02733', 0, 0, 0, 0, 0, 0, 0, 0, 'non', 'oui', 'non', 700, 700, 700, 0, 700),
(25, 'NGUMBA', 'ATANAS', 'GLOIRE', 'Marie(e)', 'Masculin', '1990-04-29', '243991558690', 'NA', 'Passeport', 'OP1463409', 'MUSAU IRENE', '243844566898', 'Autres', 'Locataire', 'VENTE SANDALES NEUFS', '6790', 'AV. MAYAMBU 17, Q/MOLO, C/LEMBA', 'Kinshasa', 109, '70099', 96700, 84600, 12100, 4260, 7840, 0, 1050, 6790, '', '', '', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `garantiecreditindividuel`
--

CREATE TABLE IF NOT EXISTS `garantiecreditindividuel` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `TypeGarantie` varchar(100) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `AnneeFabrication` int(11) NOT NULL,
  `Etat` varchar(20) NOT NULL,
  `PrixAchat` double NOT NULL,
  `ValeurMarchande` double NOT NULL,
  `ClientGarant` varchar(20) NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCre` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=200 ;

--
-- Contenu de la table `garantiecreditindividuel`
--

INSERT INTO `garantiecreditindividuel` (`Id`, `TypeGarantie`, `Description`, `AnneeFabrication`, `Etat`, `PrixAchat`, `ValeurMarchande`, `ClientGarant`, `IdClientD`, `NumDossierCre`) VALUES
(1, 'AI', 'Congelateur', 0, 'Bon-Etat', 0, 200, 'Client', 16, '15939'),
(2, 'CDTG', 'Caution cash', 0, 'Bon-Etat', 0, 12000, 'Client', 49, '09804'),
(3, 'BM', 'Forteils ', 2023, 'Bon-Etat', 400, 150, 'Client', 49, '09804'),
(4, 'BM', 'Television plasma insense 65', 2023, 'Bon-Etat', 1000, 200, 'Client', 49, '09804'),
(5, 'BM', 'Fauteil en cuir', 2023, 'Bon-Etat', 1500, 900, 'Client', 47, '59686'),
(6, 'BM', 'Chaine musicale', 2023, 'Bon-Etat', 900, 500, 'Client', 47, '59686'),
(7, 'BM', 'Tablecsalon', 2024, 'Bon-Etat', 50, 20, 'Client', 47, '59686'),
(8, 'BM', 'Mini refrigerateur', 2023, 'Bon-Etat', 500, 200, 'Client', 47, '59686'),
(9, 'AI', '15 Lit', 0, 'Bon-Etat', 0, 2500, 'Client', 68, '24682'),
(10, 'BM', 'Salon ', 0, 'Bon-Etat', 2000, 1500, 'Client', 68, '24682'),
(11, 'BM', 'Mini bar', 0, 'Bon-Etat', 1700, 950, 'Client', 68, '24682'),
(12, 'BM', 'Salle a manger', 0, 'Bon-Etat', 1200, 700, 'Client', 68, '24682'),
(13, 'AI', 'Vehicule', 0, 'Bon-Etat', 12500, 8000, 'Client', 68, '24682'),
(14, 'AI', 'Parcelle', 0, 'Bon-Etat', 200000, 120000, 'Client', 68, '24682'),
(15, 'AI', 'Moto', 0, 'Bon-Etat', 1200, 800, 'Client', 16, '15939'),
(16, 'BM', 'Congelateur', 2024, 'Bon-Etat', 600, 450, 'Client', 47, '59686'),
(17, 'BM', 'Television grand', 2022, 'Bon-Etat', 680, 500, 'Client', 47, '59686'),
(18, 'AI', 'Ã?talages ', 2022, 'Bon-Etat', 230, 150, 'Client', 23, '09263'),
(19, 'AI', 'Table ', 2023, 'Bon-Etat', 140, 90, 'Client', 23, '09263'),
(20, 'AI', 'Chaise ', 2021, 'Bon-Etat', 20, 9, 'Client', 23, '09263'),
(21, 'AI', '2 congelateurs', 0, 'Bon-Etat', 600, 400, 'Client', 75, '52533'),
(22, 'BM', '2 tv', 0, 'Bon-Etat', 500, 250, 'Client', 75, '52533'),
(23, 'BM', 'Table salon', 0, 'Bon-Etat', 190, 150, 'Client', 75, '52533'),
(24, 'AI', 'Cuisiniere ', 0, 'Bon-Etat', 150, 90, 'Client', 75, '52533'),
(25, 'AUTRE', '2 ventilateurs', 0, 'Bon-Etat', 120, 70, 'Client', 75, '52533'),
(26, 'BM', 'Ketch', 0, 'Bon-Etat', 2500, 1500, 'Garant', 82, '52652'),
(27, 'AI', 'Tv ', 0, 'Bon-Etat', 180, 110, 'Garant', 82, '52652'),
(28, 'BM', 'Vitrine ', 0, 'Bon-Etat', 150, 110, 'Garant', 82, '52652'),
(29, 'BM', 'Divan salon', 0, 'Bon-Etat', 350, 200, 'Garant', 82, '52652'),
(30, 'BM', 'Congelateur ', 0, 'Bon-Etat', 280, 180, 'Garant', 82, '52652'),
(31, 'BM', 'Table salon ', 0, 'Bon-Etat', 130, 80, 'Garant', 82, '52652'),
(32, 'BM', 'Bluetooth ', 0, 'Bon-Etat', 150, 80, 'Garant', 82, '52652'),
(33, 'AI', 'Armoire ', 0, 'Bon-Etat', 200, 90, 'Client', 82, '52652'),
(34, 'BM', 'Table de radio', 0, 'Bon-Etat', 120, 80, 'Garant', 82, '52652'),
(35, 'BM', 'Cuisiniere ', 0, 'Bon-Etat', 120, 60, 'Garant', 82, '52652'),
(36, 'BM', 'Congelateur de la cliente ', 0, 'Bon-Etat', 200, 130, 'Client', 82, '52652'),
(37, 'ST', 'Stock 20 pourcenta', 0, 'Bon-Etat', 0, 3000, 'Client', 75, '52533'),
(38, 'CDTG', 'Caution ', 0, 'Bon-Etat', 0, 800, 'Client', 75, '52533'),
(39, 'BM', 'Divan salon', 0, 'Bon-Etat', 450, 300, 'Client', 83, '61600'),
(40, 'BM', 'Tv', 0, 'Bon-Etat', 300, 220, 'Client', 83, '61600'),
(41, 'BM', 'Vitrine ', 0, 'Bon-Etat', 350, 200, 'Client', 83, '61600'),
(42, 'BM', 'Salle a manger ', 0, 'Bon-Etat', 230, 150, 'Client', 83, '61600'),
(43, 'AI', 'Comptoir ', 0, 'Bon-Etat', 350, 250, 'Client', 83, '61600'),
(44, 'AI', 'Congelateur ', 0, 'Bon-Etat', 350, 250, 'Client', 83, '61600'),
(45, 'BM', 'Table salon ', 0, 'Bon-Etat', 180, 100, 'Client', 83, '61600'),
(46, 'ST', 'Stock ', 0, 'Bon-Etat', 0, 6500, 'Client', 83, '61600'),
(47, 'CDTG', 'GAGE FINANCIERE', 1, 'Bon-Etat', 1, 1600, 'Client', 69, '29320'),
(48, 'AI', 'ETALAGES', 2023, 'Bon-Etat', 1050, 800, 'Client', 69, '29320'),
(49, 'BM', 'SALON FAUTEILLE', 2022, 'Bon-Etat', 450, 200, 'Client', 69, '29320'),
(50, 'BM', 'TELEVISION PLASMA', 1, 'Bon-Etat', 250, 150, 'Client', 69, '29320'),
(51, 'BM', 'SPLIT', 1, 'Bon-Etat', 250, 150, 'Client', 69, '29320'),
(52, 'AI', 'CONGELATEUR 350 L', 1, 'Bon-Etat', 350, 250, 'Client', 69, '29320'),
(53, 'BM', 'TABLE TELE', 1, 'Bon-Etat', 180, 90, 'Client', 69, '29320'),
(54, 'BM', 'VENTILATEUR', 1, 'Bon-Etat', 70, 25, 'Client', 69, '29320'),
(55, 'BM', 'BOUMEUR RADIO', 1, 'Bon-Etat', 80, 20, 'Client', 69, '29320'),
(56, 'BM', 'PLASMA 65', 1, 'Bon-Etat', 700, 500, 'Garant', 69, '29320'),
(57, 'BM', 'SALON COMPLET FAUTEILLE', 1, 'Bon-Etat', 600, 400, 'Garant', 69, '29320'),
(58, 'BM', 'CONGELATEUR 350 L', 1, 'Bon-Etat', 350, 200, 'Garant', 69, '29320'),
(59, 'BM', 'TABLE', 1, 'Bon-Etat', 85, 35, 'Garant', 69, '29320'),
(60, 'AI', '20% STOCK', 1, 'Bon-Etat', 1, 10815, 'Client', 69, '29320'),
(61, 'AI', '200 chaises en plastiques', 2025, 'Bon-Etat', 1000, 700, 'Client', 50, '60198'),
(62, 'BM', 'Television', 2024, 'Bon-Etat', 500, 250, 'Client', 50, '60198'),
(63, 'BM', 'Machine a laver', 2024, 'Bon-Etat', 350, 150, 'Client', 50, '60198'),
(64, 'BM', 'Mini refrigerateur', 2024, 'Bon-Etat', 100, 50, 'Client', 50, '60198'),
(65, 'BM', 'Table salon', 2023, 'Bon-Etat', 80, 50, 'Client', 50, '60198'),
(67, 'AI', 'Congelateur', 2024, 'Bon-Etat', 500, 400, 'Client', 15, '66776'),
(68, 'BM', 'Climatiseur', 2023, 'Bon-Etat', 350, 200, 'Client', 15, '66776'),
(69, 'BM', 'Television', 2025, 'Bon-Etat', 250, 100, 'Client', 15, '66776'),
(70, 'BM', 'Fauteil', 2024, 'Bon-Etat', 500, 300, 'Client', 15, '66776'),
(71, 'BM', 'Ventilateur', 2024, 'Bon-Etat', 60, 30, 'Client', 15, '66776'),
(72, 'BM', 'Horloge', 2025, 'Bon-Etat', 30, 15, 'Client', 15, '66776'),
(73, 'CDTG', 'GAGE FINANCIERE', 1, 'Bon-Etat', 1, 400, 'Client', 55, '16424'),
(74, 'AI', '3 CONGELATEURS 350L', 1, 'Bon-Etat', 350, 200, 'Client', 55, '16424'),
(75, 'AI', 'FRIGO DEBOUT', 1, 'Bon-Etat', 500, 250, 'Client', 55, '16424'),
(76, 'AI', 'CHAISES', 1, 'Bon-Etat', 15, 7, 'Client', 55, '16424'),
(77, 'AI', '33 CHAISES', 1, 'Bon-Etat', 15, 231, 'Client', 55, '16424'),
(78, 'AI', 'ETALAGES', 2024, 'Bon-Etat', 120, 50, 'Client', 55, '16424'),
(79, 'AI', '115 CASIERS', 1, 'Bon-Etat', 10, 575, 'Client', 55, '16424'),
(80, 'AI', '16 TABLES', 1, 'Bon-Etat', 20, 160, 'Client', 55, '16424'),
(81, 'AI', '20% STOCK', 1, 'Bon-Etat', 1, 601, 'Client', 55, '16424'),
(82, 'AI', '3 congelateur', 0, 'Bon-Etat', 1200, 600, 'Client', 31, '64281'),
(83, 'AI', '1 petit congelateur', 0, 'Bon-Etat', 150, 100, 'Client', 31, '64281'),
(84, 'AI', 'Frigo coca cola', 0, 'Bon-Etat', 1500, 800, 'Client', 31, '64281'),
(85, 'BM', 'Salon', 0, 'Bon-Etat', 300, 100, 'Client', 31, '64281'),
(86, 'BM', 'Filtre', 0, 'Bon-Etat', 50, 30, 'Client', 31, '64281'),
(87, 'BM', 'Machine a laver', 0, 'Bon-Etat', 50, 20, 'Client', 31, '64281'),
(88, 'AI', '5 MACHINES A PRESSER', 1, 'Bon-Etat', 4500, 3000, 'Client', 77, '45588'),
(89, 'AI', 'MACHINE IMPRESSION BACHE', 1, 'Bon-Etat', 12000, 9000, 'Client', 77, '45588'),
(90, 'AI', '4 ORDINATEURS HP HAUTE DEFINITION', 1, 'Bon-Etat', 1200, 700, 'Client', 77, '45588'),
(91, 'AI', '5 IMPRIMENTE', 1, 'Bon-Etat', 1500, 1000, 'Client', 77, '45588'),
(92, 'AI', 'IMPRIMENTE BACHE LASER', 1, 'Bon-Etat', 1650, 1000, 'Client', 77, '45588'),
(93, 'AI', '6 STABILISATEUR', 1, 'Bon-Etat', 450, 300, 'Client', 77, '45588'),
(94, 'AI', 'CONVERTISSEUR', 1, 'Bon-Etat', 700, 400, 'Client', 77, '45588'),
(95, 'BM', 'TV', 0, 'Bon-Etat', 250, 150, 'Client', 110, '75098'),
(96, 'BM', 'TABLE BASSE ', 0, 'Bon-Etat', 0, 70, 'Client', 110, '75098'),
(97, 'BM', 'SALON EN TUSSU', 0, 'Bon-Etat', 0, 150, 'Client', 110, '75098'),
(98, 'BM', 'SALLE A MANGER ', 0, 'Bon-Etat', 0, 100, 'Client', 110, '75098'),
(99, 'AI', '2 congelateurs', 0, 'Bon-Etat', 0, 350, 'Client', 110, '75098'),
(100, 'AI', '100 chaises en plastique ', 0, 'Bon-Etat', 0, 150, 'Client', 110, '75098'),
(101, 'ST', '60 CASIERS BRACONGO BRALIMA', 0, 'Bon-Etat', 0, 120, 'Client', 110, '75098'),
(102, 'AI', 'LAVE MAIN', 0, 'Bon-Etat', 0, 5, 'Client', 110, '75098'),
(103, 'ST', '40 pour cent du stock ', 0, 'Bon-Etat', 0, 850, 'Client', 110, '75098'),
(104, 'CDTG', 'GAGE FINANCIERE', 1, 'Bon-Etat', 1, 1400, 'Client', 81, '29972'),
(105, 'AI', 'VITRINE TABLE', 1023, 'Bon-Etat', 380, 220, 'Client', 81, '29972'),
(106, 'AI', 'TELEVISION PLASMA', 1, 'Bon-Etat', 240, 100, 'Client', 81, '29972'),
(107, 'AI', 'ETALAGES', 2024, 'Bon-Etat', 350, 250, 'Client', 81, '29972'),
(108, 'BM', 'SALON COMPLET MEUBLE', 2024, 'Bon-Etat', 600, 450, 'Client', 81, '29972'),
(109, 'BM', 'VITRINE', 2024, 'Bon-Etat', 350, 250, 'Client', 81, '29972'),
(110, 'BM', 'CLIMATISSEUR', 1, 'Bon-Etat', 250, 100, 'Client', 81, '29972'),
(111, 'BM', 'TABLE TELE', 1, 'Bon-Etat', 180, 90, 'Client', 81, '29972'),
(112, 'BM', 'CONVERTISSEUR', 1, 'Bon-Etat', 50, 35, 'Client', 81, '29972'),
(113, 'BM', 'CONGELATEUR 350 L', 1, 'Bon-Etat', 350, 200, 'Client', 81, '29972'),
(114, 'BM', '2 STABILISATEURS ', 1, 'Bon-Etat', 90, 45, 'Client', 81, '29972'),
(115, 'BM', '2 VENTILATEURS', 1, 'Bon-Etat', 60, 30, 'Client', 81, '29972'),
(116, 'AI', '20% STOCK', 1, 'Bon-Etat', 1, 4468, 'Client', 81, '29972'),
(117, 'AI', 'ETALAGES', 2023, 'Bon-Etat', 1050, 500, 'Client', 108, '93333'),
(118, 'AI', 'TABLE', 2024, 'Bon-Etat', 350, 250, 'Client', 108, '93333'),
(119, 'BM', 'TELEVISION', 1, 'Bon-Etat', 150, 80, 'Client', 108, '93333'),
(120, 'BM', 'SALON COMPLET FAUTEILLE', 1, 'Bon-Etat', 400, 200, 'Client', 108, '93333'),
(121, 'BM', 'CLIMATISSEUR', 1, 'Bon-Etat', 280, 100, 'Client', 108, '93333'),
(122, 'BM', 'FRIGO', 1, 'Bon-Etat', 350, 200, 'Client', 108, '93333'),
(123, 'BM', 'SALON A MANGER', 1, 'Bon-Etat', 200, 100, 'Client', 108, '93333'),
(124, 'BM', 'TABLE', 1, 'Bon-Etat', 150, 50, 'Client', 108, '93333'),
(125, 'CDTG', 'GAGE FINANCIERE', 1, 'Bon-Etat', 1, 2600, 'Client', 108, '93333'),
(126, 'AI', '20% STOCK', 1, 'Bon-Etat', 1, 23898, 'Client', 108, '93333'),
(128, 'AI', '6 MACHINES CASINO', 0, 'Bon-Etat', 2100, 1200, 'Client', 18, '88721'),
(129, 'AI', '2 BILLARD', 0, 'Bon-Etat', 2400, 1800, 'Client', 18, '88721'),
(130, 'AI', '6 CONGELATEUR', 0, 'Bon-Etat', 1200, 600, 'Client', 18, '88721'),
(131, 'AI', 'CHAISE VIP ET CANNAPE', 0, 'Bon-Etat', 3800, 1950, 'Client', 18, '88721'),
(132, 'AI', '6 SPIT', 0, 'Bon-Etat', 1800, 1000, 'Client', 18, '88721'),
(133, 'AI', 'chaine musicale', 0, 'Bon-Etat', 900, 500, 'Client', 18, '88721'),
(134, 'BM', 'TV', 0, 'Bon-Etat', 0, 150, 'Client', 111, '27427'),
(135, 'BM', 'Divan salon', 0, 'Bon-Etat', 0, 250, 'Client', 111, '27427'),
(136, 'BM', 'Salle a manger ', 0, 'Bon-Etat', 0, 150, 'Client', 111, '27427'),
(137, 'ST', '40 pour cent de stock ', 0, 'Bon-Etat', 0, 3500, 'Client', 111, '27427'),
(138, 'AI', 'VEHICULE TOYOTA HILUC SURF', 0, 'Bon-Etat', 4500, 3000, 'Client', 30, '55237'),
(139, 'ST', '30 pour cent du stock ', 0, 'Bon-Etat', 0, 862, 'Client', 30, '55237'),
(140, 'BM', 'TABLES ET CHAISES DU RESTAURANT ', 0, 'Bon-Etat', 0, 200, 'Client', 30, '55237'),
(141, 'AI', 'TV ET VENTILATEUR DU RESTAURANT ', 0, 'Bon-Etat', 0, 110, 'Client', 30, '55237'),
(142, 'AI', '5 congelateur', 2023, 'Bon-Etat', 700, 150, 'Client', 117, '24583'),
(143, 'BM', 'Sallon de fauteuil ', 2024, 'Bon-Etat', 500, 150, 'Client', 117, '24583'),
(144, 'BM', '2 congelateur', 2023, 'Bon-Etat', 700, 150, 'Client', 117, '24583'),
(145, 'BM', 'Ecran ', 2020, 'Bon-Etat', 400, 100, 'Client', 117, '24583'),
(146, 'AI', '5 congelateur', 2023, 'Bon-Etat', 700, 750, 'Client', 117, '24583'),
(147, 'BM', 'Table en vitre', 2022, 'Bon-Etat', 350, 150, 'Client', 117, '24583'),
(148, 'BM', 'Table a bois (a manger)', 2022, 'Bon-Etat', 500, 100, 'Client', 117, '24583'),
(149, 'BM', 'Table a bois (a manger)', 2022, 'Bon-Etat', 500, 100, 'Client', 117, '24583'),
(150, 'BM', 'Table a bois (a manger)', 2022, 'Bon-Etat', 500, 100, 'Client', 117, '24583'),
(151, 'ST', 'Produits ', 2026, 'Bon-Etat', 4000, 400, 'Client', 117, '24583'),
(152, 'CDTG', 'Caution', 2026, 'Bon-Etat', 600, 600, 'Client', 117, '24583'),
(153, 'BM', 'Sallon a manger', 2023, 'Bon-Etat', 800, 200, 'Client', 117, '24583'),
(154, 'BM', 'Lave linge', 2021, 'Bon-Etat', 400, 150, 'Client', 117, '24583'),
(155, 'BM', 'Armoire ', 2021, 'Bon-Etat', 400, 120, 'Client', 117, '24583'),
(159, 'BM', 'PARCELLE ', 0, 'Bon-Etat', 0, 15000, 'Client', 86, '08487'),
(160, 'AI', 'Vehicule ', 0, 'Bon-Etat', 13000, 7000, 'Client', 86, '08487'),
(161, 'AI', '2 CONGELATEUR', 0, 'Bon-Etat', 400, 200, 'Client', 104, '20414'),
(162, 'AI', 'SALON', 0, 'Bon-Etat', 1500, 800, 'Client', 104, '20414'),
(163, 'AI', 'SALLE A MANGER', 0, 'Bon-Etat', 350, 200, 'Client', 104, '20414'),
(164, 'AI', 'CLIMATISEUR', 0, 'Bon-Etat', 350, 200, 'Client', 104, '20414'),
(165, 'AI', 'TELEVISION PLASMA', 0, 'Bon-Etat', 100, 50, 'Client', 104, '20414'),
(166, 'AI', 'PLAFONIER', 0, 'Bon-Etat', 0, 50, 'Client', 104, '20414'),
(167, 'AI', 'Billars', 0, 'Bon-Etat', 1300, 1000, 'Client', 106, '02733'),
(169, 'AI', '4 lits hotel', 0, 'Bon-Etat', 800, 400, 'Client', 106, '02733'),
(170, 'BM', 'Salon', 0, 'Bon-Etat', 600, 350, 'Client', 106, '02733'),
(171, 'AI', '4 tv plasma', 0, 'Bon-Etat', 200, 150, 'Client', 106, '02733'),
(173, 'AI', '3 congélateurs', 0, 'Bon-Etat', 350, 150, 'Client', 106, '02733'),
(174, 'CDTG', 'Caution financiere', 0, 'Bon-Etat', 200, 200, 'Client', 15, '66776'),
(175, 'CDTG', 'GAGE FINANCIERE', 1, 'Bon-Etat', 1, 2200, 'Client', 109, '70099'),
(176, 'BM', 'CLIMATISEUR', 0, 'Bon-Etat', 550, 300, 'Client', 109, '70099'),
(177, 'BM', 'SALON FAUTEILLE', 2025, 'Bon-Etat', 780, 500, 'Client', 109, '70099'),
(178, 'BM', 'TELEVISION', 1, 'Bon-Etat', 560, 450, 'Client', 109, '70099'),
(179, 'BM', 'TABLE TELE', 1, 'Bon-Etat', 250, 200, 'Client', 109, '70099'),
(180, 'BM', 'TABLE SALON', 2024, 'Bon-Etat', 120, 80, 'Client', 109, '70099'),
(181, 'BM', 'CONGELATEUR 350 L', 2024, 'Bon-Etat', 350, 300, 'Client', 109, '70099'),
(182, 'BM', 'CONGELATEUR 150 L', 2024, 'Bon-Etat', 150, 100, 'Client', 109, '70099'),
(183, 'BM', 'TABLE VITRE', 2024, 'Bon-Etat', 210, 180, 'Client', 109, '70099'),
(184, 'BM', 'TABLE A MANGER ET CHAISE', 1, 'Bon-Etat', 80, 50, 'Client', 109, '70099'),
(185, 'BM', 'STABILISATEUR', 1, 'Bon-Etat', 25, 15, 'Client', 109, '70099'),
(186, 'BM', 'CONGELATEUR 350 L', 2022, 'Bon-Etat', 350, 180, 'Client', 109, '70099'),
(187, 'BM', 'MINI-FOUR', 2023, 'Bon-Etat', 80, 30, 'Client', 109, '70099'),
(188, 'AI', '20% STOCK', 1, 'Bon-Etat', 1, 17045, 'Client', 109, '70099'),
(189, 'CDTG', 'GAGE FINANCIERE', 1, 'Bon-Etat', 1, 1980, 'Client', 134, '77990'),
(190, 'AI', 'ETALAGES', 1, 'Bon-Etat', 780, 500, 'Client', 134, '77990'),
(191, 'BM', 'TABLE VITRE', 2025, 'Bon-Etat', 480, 300, 'Client', 134, '77990'),
(192, 'BM', 'TABLE TELE', 2025, 'Bon-Etat', 320, 300, 'Client', 134, '77990'),
(193, 'BM', 'SALON FAUTEILLE', 2025, 'Bon-Etat', 780, 700, 'Client', 134, '77990'),
(194, 'BM', 'TELEVISION 90', 2025, 'Bon-Etat', 850, 800, 'Client', 134, '77990'),
(195, 'BM', 'VITRINE', 2025, 'Bon-Etat', 350, 300, 'Client', 134, '77990'),
(196, 'BM', 'TELEVISION 90', 2025, 'Bon-Etat', 850, 800, 'Client', 134, '77990'),
(197, 'BM', 'BAFFLE BOUMEUR', 2025, 'Bon-Etat', 180, 150, 'Client', 134, '77990'),
(198, 'AI', 'STABILISATEUR', 2025, 'Bon-Etat', 50, 20, 'Client', 134, '77990'),
(199, 'AI', '20% STOCK', 2025, 'Bon-Etat', 1, 14126, 'Client', 134, '77990');

-- --------------------------------------------------------

--
-- Structure de la table `inforesidenceclientd`
--

CREATE TABLE IF NOT EXISTS `inforesidenceclientd` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `idclientD` int(11) NOT NULL,
  `ResidenceActueldepuis` int(11) NOT NULL,
  `Propriete` varchar(50) NOT NULL,
  `DateVisite` varchar(50) NOT NULL,
  `HeureVisite` varchar(20) NOT NULL,
  `NomsBailleurs` varchar(50) NOT NULL,
  `NumDossierCredit` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `inforesidenceclientd`
--

INSERT INTO `inforesidenceclientd` (`Id`, `idclientD`, `ResidenceActueldepuis`, `Propriete`, `DateVisite`, `HeureVisite`, `NomsBailleurs`, `NumDossierCredit`) VALUES
(1, 16, 2, 'locataire', '2025-06-05', '14h30', 'Depams', '15939'),
(2, 15, 2024, 'locataire', '2025-06-03', '10h', 'Jeff Fumba', '66776'),
(3, 49, 2021, 'locataire', '2025-06-04', '11 h 20', 'DITUTALA RANDY ', '09804'),
(4, 47, 2022, 'proprietaire', '2025-06-03', '9h', 'NA', '59686'),
(5, 23, 2018, 'locataire', '2025-06-07', '12h40', 'NA', '09263'),
(6, 68, 2016, 'proprietaire', '2025-06-04', '11h 09', 'Na', '24682'),
(7, 75, 2020, 'locataire', '2025-06-10', '13H 20', 'MASUA VALERIE', '52533'),
(8, 82, 2021, 'locataire', '2025-06-04', '09h', 'Reverend Bernard Mombutsi', '52652'),
(9, 83, 10, 'locataire', '2025-06-12', '13h36', ' NA', '61600'),
(10, 69, 5, 'proprietaire', '2025-06-11', '12H12', 'NSIKU OYELE KUYA', '29320'),
(11, 50, 2024, 'locataire', '2025-06-03', '12h', 'Patshely', '60198'),
(12, 86, 2019, 'locataire', '2025-06-17', '11h', ' NA', '08487'),
(13, 55, 2019, 'famille', '2025-06-06', '12H12', 'NA', '16424'),
(14, 81, 2019, 'locataire', '2025-06-06', '15H00', 'MADAME THETHE /243823701976', '29972'),
(15, 77, 2020, 'locataire', '2025-06-11', '13H54', 'PHILBERT', '45588'),
(16, 104, 2020, 'locataire', '2025-06-09', '14h 30', 'Maman july', '20414'),
(17, 30, 1, 'locataire', '2025-06-21', '15h', 'NSIGANI NZAU GLORIFIE', '55237'),
(18, 110, 2004, 'proprietaire', '2025-06-21', '15h', ' NA', '75098'),
(19, 108, 2013, 'locataire', '2025-06-20', '13H54', 'NA', '93333'),
(20, 111, 2023, 'locataire', '2025-06-23', '11h', ' NA', '27427'),
(21, 18, 2, 'locataire', '2025-06-05', '15h', 'NA', '88721'),
(22, 117, 3, 'proprietaire', '2025-06-23', '9h', 'Proprietaire ', '24583'),
(23, 121, 2015, 'proprietaire', '2025-06-24', '11h', ' NA', '47968'),
(24, 106, 0, 'locataire', '2025-06-27', '12h30', 'Nseka mamie', '02733'),
(25, 109, 2023, 'locataire', '2025-07-02', '07H15', 'NA', '70099'),
(26, 134, 2015, 'locataire', '2025-07-02', '13H40', 'NA', '77990'),
(27, 119, 2021, 'locataire', '2025-07-02', '9H', 'NA', '32961'),
(28, 139, 0, 'proprietaire', '2025-07-07', '12h46', 'NA', '47472');

-- --------------------------------------------------------

--
-- Structure de la table `paramproduitcredit`
--

CREATE TABLE IF NOT EXISTS `paramproduitcredit` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(100) NOT NULL,
  `MontantMin` double NOT NULL,
  `MontantMax` double NOT NULL,
  `TauxInteret` double NOT NULL,
  `FraisDossier` double NOT NULL,
  `Caution` double NOT NULL,
  `TauxInteretM` double NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `paramproduitcredit`
--

INSERT INTO `paramproduitcredit` (`Id`, `Description`, `MontantMin`, `MontantMax`, `TauxInteret`, `FraisDossier`, `Caution`, `TauxInteretM`) VALUES
(2, 'Credit LISUNGI 1 (501 - 1000)', 500, 1000, 68.4, 3.75, 20, 5.7),
(3, 'Credit LISUNGI 2 (1001 - 5000)', 1001, 5000, 62.4, 3.75, 20, 5.2),
(4, 'Credit MOSALA (5001 - 10000)', 5001, 10000, 54, 3.75, 20, 4.5),
(5, 'Credit MOSALA 1 (10001 - 14999)', 10001, 14999, 48, 3.75, 20, 4),
(6, 'Credit MOSALA 2 (15000 - 30000)', 15000, 30000, 48, 3.75, 10, 4),
(7, 'Credit MOSALA 3 (30001 - 100000)', 30001, 100000, 36, 2.5, 10, 3),
(8, 'Crédit d''Urgence', 0, 0, 60, 3.5, 0, 5);

-- --------------------------------------------------------

--
-- Structure de la table `precomite`
--

CREATE TABLE IF NOT EXISTS `precomite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NomsResponsableBM` varchar(500) NOT NULL,
  `AppreciationBMPrecomite` varchar(500) NOT NULL,
  `commentaireBMPrecomite` varchar(500) NOT NULL,
  `NumDossierCre` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `precomite`
--

INSERT INTO `precomite` (`id`, `NomsResponsableBM`, `AppreciationBMPrecomite`, `commentaireBMPrecomite`, `NumDossierCre`) VALUES
(1, 'Maindi Ndinga', 'Favorable', 'Le client est a son cinquiÃ¨me cycle et a un bon  historique crÃ©dit, il gagne environ 1500 USD en termes de revenus avec la location de la salle de fÃªte et sollicite un crÃ©dit pour rÃ©nover la salle et ajouter des chaises en plastique   ', '60198'),
(2, 'BENESHA MUPINGANYI GAYLORD', 'Favorable', 'Ok pour pre-comite', '75098');

-- --------------------------------------------------------

--
-- Structure de la table `proposition`
--

CREATE TABLE IF NOT EXISTS `proposition` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ProduitCreditProp` varchar(200) NOT NULL,
  `MontantProp` int(11) NOT NULL,
  `EcheanceProp` int(11) NOT NULL,
  `NumDossierCre` varchar(500) NOT NULL,
  `commentaireProp` varchar(5000) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Contenu de la table `proposition`
--

INSERT INTO `proposition` (`Id`, `ProduitCreditProp`, `MontantProp`, `EcheanceProp`, `NumDossierCre`, `commentaireProp`) VALUES
(1, 'Credit LISUNGI 2 (1001 - 5000)', 1000, 6, '15939', 'Le client a payer avec 0 jour retard pour le cycle passé'),
(2, 'Credit LISUNGI 2 (1001 - 5000)', 1000, 6, '66776', 'La proposition est faite sur les garanties materiels du client ainsi que la capacite de paiement declare par la cliente'),
(3, 'Credit MOSALA (5001 - 10000)', 9900, 12, '24682', 'le client est solvable vu historique de son cycle passer'),
(4, 'Credit MOSALA (5001 - 10000)', 2500, 8, '59686', 'Le client avait 14 jours de retard lors du pret prececent et a fait une procuration a sa femme pour un nouveau pret vu son age. En suivant, la procedure nous recoduisons le meme montant.\r\n'),
(5, 'Credit LISUNGI 2 (1001 - 5000)', 4500, 10, '52533', 'NA'),
(6, 'Credit LISUNGI 2 (1001 - 5000)', 2000, 10, '52652', 'NA'),
(7, 'Credit LISUNGI 2 (1001 - 5000)', 5000, 10, '61600', 'POMPON MUBEMBA c est un ancien client de MICROPOP SA il est  a son 3 eme cycle\r\nApres analyse j ai constate une variation positive de son stock et ses ventes journaliere\r\nA cet effet je propose 5000 car son historique est saine par rapport au respect de jours de remboursement \r\n'),
(8, 'Credit MOSALA (5001 - 10000)', 8000, 7, '29320', 'Le client est à  son 3e cycle; lors de deux prêt précédents cycle, il a manifester un comportement irréprochable car il a payer avec 0 jour de retard. Actuellement, il exprime un nouveau besoin d''accompagnement d''un crédit de 8000$; Et pour ce faire, nous proposons au comite ce même montant car vu l''état de besoin du client, vu son comportement de remboursement mais aussi sa capacite de paiement, nous pensons que le client serait entièrement capable de couvrir son crédit.'),
(9, 'Credit LISUNGI 2 (1001 - 5000)', 1200, 12, '60198', 'La proposition est faite en fonction du cycle precedent ou le client avait 7 jours de retards.'),
(10, 'Credit LISUNGI 2 (1001 - 5000)', 2000, 12, '16424', 'La cliente a fait une demande de 4000$ pour une duree de 12 mois. Apres analyse, nous avons propose un montant de 2000$ pour 12 mois etant donne que nous voulons observer tout dabord son comportement pedndant ce premier cycle.'),
(11, 'Credit LISUNGI 1 (501 - 1000)', 1000, 6, '64281', 'Na'),
(12, 'Credit LISUNGI 2 (1001 - 5000)', 2500, 12, '45588', 'Nous avons propose au comite un montant de 2500$ pour permettre au client dacheter la machine a presse afin de servir son clientele.'),
(13, 'Credit LISUNGI 2 (1001 - 5000)', 2500, 9, '55237', 'NA'),
(14, 'Credit LISUNGI 2 (1001 - 5000)', 1500, 6, '75098', 'NA'),
(15, 'Credit MOSALA (5001 - 10000)', 7000, 8, '29972', 'C est un client reccurent qui est a son 2e cylce, il a contracte 4500$ lors de son cycle precedent ou il a rembourser avec 4 jours de retard. Actuellement, il solicite 15000$ pour renforcer son stock. Mais au vu de la politique credit MICROPOP SA et des analyses, nous proposons un montant de 7000$ pour 8 mensualites; avec comme garantie, lexception dutiliser 20% de son stock comme ce ne pas les produits perissable.'),
(16, 'Credit MOSALA 1 (10001 - 14999)', 13000, 7, '93333', 'Le client compte voyager pour sapprovisionner a nouveau au nigeria et soliciter un accompagnement aupres de MICROPOP SA, nous comptons lui accompagner avec ce meme montant pour quil trouve satifaction a sa demande meme aussi ganartir et securiser le client chez MICROPOP SA. Il paie actuellement avec zero jour de retard aupres de BAOBA.'),
(17, 'Credit MOSALA (5001 - 10000)', 7000, 6, '88721', 'NA'),
(18, 'Credit LISUNGI 2 (1001 - 5000)', 3000, 10, '27427', 'NA'),
(19, 'Credit MOSALA 1 (10001 - 14999)', 14500, 12, '08487', 'L''analyse quantitative est effectuee a travers deux hypotheses \r\nLa premiere c''est l hypothÃ¨se selon laquelle tous les Ã©lÃ¨ves sont en ordre avec frais scalaire\r\nLa deuxiÃ¨me c''est l hypothese via laquelle 50 pourcent ne sont pas en ordre avec les frais scolaire et que les charges fixes restent constantes, malgre cette situation les recettes mensuelles restent largement superieure au montant de la mensualite du client \r\n\r\nNous ne croyons pas Ã  tout epuiser sur cette analyse\r\nVos remarques et suggestions nous aideront a ameliorer et a rendre la presente et futures analyses non biaisees\r\n\r\nCordialement '),
(20, 'Credit LISUNGI 2 (1001 - 5000)', 1500, 6, '20414', 'NA'),
(21, 'Credit LISUNGI 2 (1001 - 5000)', 2000, 8, '02733', 'Le client est un bon client , il paie avec 0 jours de retard il a commencé avec 800 dollars. Petit à petit il est moté et maintenant il est à 2000 dollars '),
(22, 'Credit MOSALA 1 (10001 - 14999)', 11000, 6, '70099', 'Nous proposons au comite un montant de 11000$ pour 6 mois pour ce 2e cycle de notre client car le client possede entierement la capacite de payer son credit et vu son comportement de l ancien cycle ou il a rembourser avec 7 jours de retard reparti en 3 echeances. '),
(23, 'Credit MOSALA (5001 - 10000)', 9900, 8, '77990', 'Nous proposons au comite un montant de 9900$, car la cliente a la capacite de couvrir son credit et possede un comportement irreprochable au vu de son cycle precedent.'),
(24, 'Credit MOSALA (5001 - 10000)', 5000, 12, '32961', 'Nous proposons au comite un montant de 5000$ pour 12 mois compte tenu de la capacite degagee par l activite de la cliente, mais aussi de ses differents comportements de remboursement des anciens cycles.');

-- --------------------------------------------------------

--
-- Structure de la table `referenceresidence`
--

CREATE TABLE IF NOT EXISTS `referenceresidence` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NomsRR` varchar(100) NOT NULL,
  `TelephoneRR` varchar(30) NOT NULL,
  `RelationRR` varchar(200) NOT NULL,
  `IdClientD` int(11) NOT NULL,
  `NumDossierCredit` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Contenu de la table `referenceresidence`
--

INSERT INTO `referenceresidence` (`Id`, `NomsRR`, `TelephoneRR`, `RelationRR`, `IdClientD`, `NumDossierCredit`) VALUES
(1, 'Tujibikile badibanga samy', '+243897176370', 'Frere', 16, '15939'),
(2, 'Matondo mwanza rachel', '+243848225656', 'Epouse', 16, '15939'),
(3, 'Lucie Lusamba', '0897747680', 'Soeur', 15, '66776'),
(4, 'Thimothe Kazadi', '0815191830', 'Ami', 15, '66776'),
(5, 'HAWA ITEPELE ', '243971698066', 'Fille ', 49, '09804'),
(6, 'MARIE TELEMI', '243979565191', 'MÃ¨re ', 49, '09804'),
(7, 'Yamva Kivule', '0812423174', 'Petit frere', 47, '59686'),
(8, 'Rossy Kivule', '0836300674', 'Enfant', 47, '59686'),
(9, 'Dorcas Mbetama', '2439095035333', 'Petite sÅ?ur ', 23, '09263'),
(10, 'Makiese Rachel ', '243851968375', 'Petite sÅ?ur ', 23, '09263'),
(11, 'Therese kadima', '+243997883167', 'Soeur', 68, '24682'),
(12, 'Leaticia', '+243998163315', 'Soeur', 68, '24682'),
(13, 'BELESI BELLANGE', '243896909785', 'Grande sÅ?ur ', 75, '52533'),
(14, 'Seraphin Mundende', '243818947989', 'Petit frere ', 75, '52533'),
(15, 'Nadine Bomanga', '243836374300', 'Fille', 82, '52652'),
(16, 'Wanet', '243897495916', 'Fils', 82, '52652'),
(17, 'CLARISSE PWAKA SANDOKA', '2430906021660', 'Grande sÅ?ur ', 83, '61600'),
(18, 'CHARLOTTE BISEMU', '243897740337', 'MERE', 83, '61600'),
(19, 'CHINEDY CHUKWUMA', '243985403243', 'ENFANT', 69, '29320'),
(20, 'ANAKA JOSEPH', '243999936425', 'AMI', 69, '29320'),
(21, 'Eltshaphan  Kanga', '0832702270', 'Petite soeur', 50, '60198'),
(22, 'Divine', 'Mbemoti', 'Fiancee', 50, '60198'),
(23, 'DJIMI KIBATSHI', '243827761303', 'NEVEU ', 86, '08487'),
(24, 'DANGINA GALENGA', '243816248988', 'GRAND FRERE ', 86, '08487'),
(25, 'NKAKU ANTOINE', '243991177070', 'GRAND FRERE', 55, '16424'),
(26, 'LAUREINE TSHIBOLA', '243993122829', 'PETITE SOEUR', 55, '16424'),
(27, 'THETHE', '243823701976', 'BAILLERESSE', 81, '29972'),
(28, 'KANIKI KAMUABU', '243893923967', 'PERE', 81, '29972'),
(29, 'MONSIEUR PHILBERT', '2430897568064', 'BAILLEUR', 77, '45588'),
(30, 'JEANCY LUMBU', '243858608472', 'FRERE', 77, '45588'),
(31, 'Ngalamulume Espoir', '243 931366360', 'Frere', 104, '20414'),
(32, 'Fredi Tshiasuma', '243 900415133', 'Frere', 104, '20414'),
(33, 'SYLVIE BILONGO', '243898465027', 'MERE', 30, '55237'),
(34, 'HOMO SHABANI', '243812301749', 'Cousin ', 30, '55237'),
(35, 'EUGENIE', '243815451174', 'PETITE SÅ?UR ', 110, '75098'),
(36, 'PATIENCE ', '243827755709', ' PETITE SÅ?UR ', 110, '75098'),
(37, 'MARTIN MBADUGHA', '243898904495', 'ENFANT', 108, '93333'),
(38, 'KIBANZA NDINGA JEAN PARIS DANCE', '243815332115', 'GARANT ET AMI', 108, '93333'),
(39, 'MATA MAMITCHOU', '243849357934', 'PETITE SOEUR ', 111, '27427'),
(40, 'LUBONDO MARIE', '243972000010', 'MERE', 111, '27427'),
(41, 'JEAN PIERRE BIDIAKA', '243999949688', 'GRAND FRERE', 18, '88721'),
(42, 'ERICK MAKOLA', '243815913283', 'CRAND FRERE', 18, '88721'),
(43, 'Rodidieu mpiazi', '0892336559', 'Fils', 117, '24583'),
(44, 'Jean kiboko', '09098225652', 'FrÃ¨re ', 117, '24583'),
(45, 'NAOMIE KAPENDA', '243893421164', 'PETITE SOEUR ', 121, '47968'),
(46, 'THERESE KUSU', '243904193354', 'MERE', 121, '47968'),
(47, 'Naomie MANGASE', '243 835613951', 'Epouse', 106, '02733'),
(48, 'Joelle Mayemba', '243 813997463', 'Tante paternelle', 106, '02733'),
(49, 'MUKALA BERNADETTE', '243824129806', 'MERE', 109, '70099'),
(50, 'HORTANCE MUSUKU', '243838912246', 'GRANDE SOEUR', 109, '70099'),
(51, 'BIBICHE AMOURI', '243816563322', 'COUSINE', 134, '77990'),
(52, 'BIYO YUMA ASANI', '243853120378', 'PETITE SOEUR', 134, '77990'),
(53, 'KOKIBALI ALPHONSINE', '243851665224', 'PEITE SOEUR', 119, '32961'),
(54, 'LOUIS KOKIBALI', '243810781596', 'PETITE FRERE', 119, '32961'),
(55, 'MATONDO DON BENI', '81564985', 'Frere', 139, '47472'),
(56, 'Junior MBEDIKA', '08165114', 'voisin', 139, '47472');

-- --------------------------------------------------------

--
-- Structure de la table `revenuconjoint`
--

CREATE TABLE IF NOT EXISTS `revenuconjoint` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdClientD` int(11) NOT NULL,
  `LibelleSociete` varchar(200) NOT NULL,
  `Adresse` varchar(100) NOT NULL,
  `Poste` varchar(100) NOT NULL,
  `SalaireNet` varchar(100) NOT NULL,
  `Ancienete` varchar(100) NOT NULL,
  `Commentaire` varchar(200) DEFAULT NULL,
  `NumDossierCredit` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `revenuconjoint`
--

INSERT INTO `revenuconjoint` (`Id`, `IdClientD`, `LibelleSociete`, `Adresse`, `Poste`, `SalaireNet`, `Ancienete`, `Commentaire`, `NumDossierCredit`) VALUES
(1, 16, 'Na', 'Na', 'Na', '0', '0', 'Na', '15939'),
(2, 15, 'NA', 'NA', 'NA', '0', '0', 'NA', '66776'),
(3, 49, 'Na', 'Na', 'Na', '0', '0', 'Na', '09804'),
(4, 47, 'NA', 'NA', 'NA', '0', '0', 'NA', '59686'),
(5, 23, 'NA', 'NA', 'NA', '0', '0', 'NA', '09263'),
(6, 68, 'Na', 'Na', 'Na', '0', '0', 'Na', '24682'),
(7, 75, 'NA', 'NA', 'NA', '0', '0', 'NA', '52533'),
(8, 82, 'NA', 'NA', 'NA', '0', '0', 'NA', '52652'),
(9, 83, 'NA', 'NA', 'NA', '0', '0', 'NA', '61600'),
(10, 69, 'NA', 'NA', 'NA', '0', '0', 'NA', '29320'),
(11, 50, 'NA', 'NA', 'NA', '0', '0', 'Le client est celibataird.', '60198'),
(12, 86, 'NA', 'NA', 'NA', '0', '0', 'NA', '08487'),
(13, 55, 'NA', 'NA', 'NA', '0', '0', 'NA', '16424'),
(14, 81, 'NA', 'NA', 'NA', '0', '0', 'NA', '29972'),
(15, 77, 'NA', 'NA', 'NA', '0', '0', 'NA', '45588'),
(16, 104, 'Na', 'Na', 'Na', '0', '0', 'Na', '20414'),
(17, 30, 'NA ', 'NA', 'NA', '0', '0', 'NA', '55237'),
(18, 110, 'NA', 'NA', 'NA', '0', '0', 'NA', '75098'),
(19, 108, 'NA', 'NA', 'NA', '0', '0', 'NA', '93333'),
(20, 111, 'NA', 'NA', 'NA', '0', '0', 'NA', '27427'),
(21, 18, 'NA', 'NA', 'NA', '0', '0', 'NA', '88721'),
(22, 117, 'Rtnc ', 'Ras', 'Technicien ', '520', '10', 'Son mari est un salariÃ© et ce lui qui sâ??occupe des depenses  familiale ,confirmÃ© par son mari', '24583'),
(23, 121, 'NA', 'NA', 'NA', '0', '0', 'NA', '47968'),
(24, 106, 'Na', 'Na', 'Na', '0', '0', 'Le 1250 du loyer est l''endroit qu'' il habite et exploite directement son hôtel qui est sa deuxième source de revenu après la terrasse.', '02733'),
(25, 109, 'NA', 'NA', 'NA', '0', '0', 'NA', '70099'),
(26, 134, 'NA', 'NA', 'NA', '0', '0', 'NA', '77990'),
(27, 119, 'NA', 'NA', 'NA', '0', '0', 'NA', '32961'),
(28, 139, 'NA', 'NA', 'NA', '0', '0', 'NA', '47472');

-- --------------------------------------------------------

--
-- Structure de la table `risque`
--

CREATE TABLE IF NOT EXISTS `risque` (
  `IdPropositionRisque` int(11) NOT NULL AUTO_INCREMENT,
  `NumDossierCre` varchar(500) NOT NULL,
  `NomsResponsable` varchar(50) NOT NULL,
  `AppreciationRisque` varchar(50) NOT NULL,
  `CommentaireRisque` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`IdPropositionRisque`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `risque`
--

INSERT INTO `risque` (`IdPropositionRisque`, `NumDossierCre`, `NomsResponsable`, `AppreciationRisque`, `CommentaireRisque`) VALUES
(1, '61600', 'Darly KAZU', 'Passable', 'Nous sommes favorables pour la poursuite du dossier.'),
(2, '29320', 'Darly KAZU', 'Passable', 'Bonjour chers tous,\r\nPriere inserer l''analyse comparative. Nous ne savons avancer avec ce dossier.\r\nMerci beaucoup.\r\n\r\nBonjour chers tous,\r\nApres revue du dossier, nous avons dÃ©celÃ© des Ã©lÃ©ments suivants :\r\nCash-Flow brut disponible.\r\nCMV augmente de 21% Profit net baisse de 64%, CapacitÃ© de paiement baisse de 73%.\r\nPourquoi tenez vous Ã  financer cette activitÃ© ?\r\nBilan\r\nStock augmente de 37% \r\nActifs circulant de 37,62%\r\nNous sommes favorables pour reconduire le mÃªme montant que le cycle prÃ©cÃ¨dent.\r\nMerci beaucoup.\r\n\r\n\r\n'),
(3, '24682', 'Darly KAZU', 'Passable', 'Nous sommes favorables pour la poursuite du dossier.'),
(4, '29972', 'Darly KAZU', 'Passable', 'Nous sommes favorables '),
(5, '93333', 'Darly KAZU', 'Passable', 'Nous sommes favorables pour la poursuite du dossier');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Iduser` int(11) NOT NULL AUTO_INCREMENT,
  `NomsUser` varchar(50) NOT NULL,
  `Telephone` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Statut` varchar(30) NOT NULL,
  `Login` varchar(30) NOT NULL,
  `MotPass` varchar(30) NOT NULL,
  `IdBranche` int(11) NOT NULL,
  `ProfilUser` varchar(50) NOT NULL,
  `NumCbsU` int(11) DEFAULT '0',
  PRIMARY KEY (`Iduser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=72 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`Iduser`, `NomsUser`, `Telephone`, `Email`, `Statut`, `Login`, `MotPass`, `IdBranche`, `ProfilUser`, `NumCbsU`) VALUES
(17, 'MATUNGA LUKOMBO Gervais', '243899877041', 'matungalukombo@micropop.cd', 'Actif', 'gervais', 'Micropop@2025', 1, 'CA', 115171),
(18, 'NDEKE IYOMAYI Carmi', '243818716274', 'ndekeiyomayi@micropop.cd', 'Actif', 'carmi', 'Micropop@2025', 1, 'ADMIN', 0),
(19, 'BILONDA KONDO Manuella', '243899827042', 'bilondakondo@micropop.cd', 'Actif', 'manuella', 'Micropop@2025', 5, 'SC', 0),
(20, 'DIKUNDIA FUMULAMBA BOPOL', '243818716245', 'dikundafumulamba@micropop.cd', 'Actif', 'bopol', 'Micropop@2025', 1, 'BM', 0),
(21, 'NDINGA LEMBI MAINDI', '243814568965', 'ndingalembi@micropop.cd', 'Actif', 'maindi', 'Micropop@2025', 1, 'SUP', 0),
(23, 'MANTUIDI KIUVU Reagan', '243821420145', 'mantuidikiuvu@micropop.cd', 'Actif', 'reagan', '1234', 2, 'BM', 0),
(26, 'MASENGU MUMAMBA TYNA', '243895625850', 'masengu@micropop.cd', 'Actif', 'tyna', '1234', 5, 'ODP', 0),
(27, 'KABAMBA MUKADI REBECCA', '243821420145', 'kabamba@micropop.cd', 'Actif', 'rebeccakb', 'Micropop@2025', 2, 'ODP', 0),
(28, 'KABANGA BAYILA JONATHAN', '243899985915', 'kabangabayila@micropop.cd', 'Actif', 'jonathankb', '1234', 1, 'CA', 110614),
(29, 'MANENGA LUKOMBO Nick', '243818716274', 'manengalukombo@micropop.cd', 'Actif', 'nick', '1234', 6, 'DG', 10),
(30, 'KAVUNGA NTAMBU KARL', '243818716274', 'kavungantambu@micropop.cd', 'Actif', 'karl', '1234', 6, 'DGA', 0),
(31, 'LENGI LENGA MOISE', '0000', 'lengilenga@micropop.cd', 'Actif', 'lengi', '1234', 1, 'ADMIN', 0),
(33, 'NGOMA MWOL Rodrigue', '243818325891', 'ngomamwol@micropop.cd', 'Actif', 'rodriguen', 'Micropop@2025', 1, 'CA', 105730),
(35, 'KALAMBA NKONGOLO AXEL', '0000', 'kalambankongolo@micropop.cd', 'Actif', 'axellek', 'Micropop@2025', 1, 'SC', 108400),
(36, 'MUAMBA KAZADI MOISE', '243820881726', 'mwambakazadi@micropop.cd', 'Actif', 'moisem', 'Micropop@2025', 2, 'CA', 209683),
(37, 'NLABA MAMBU DAVID', '000', 'NA', 'Actif', 'davidn', '1234', 1, 'SC', 0),
(38, 'SABWA TSHIBANGU PATRICK', '243825974638', 'sabwatshibangu@micropop.cd', 'Actif', 'patricks', 'Micropop@2025', 2, 'CA', 211683),
(39, 'NGAMALA MUTOMBO ELYSEE', '000', 'NA', 'Actif', 'elyseng', 'Micropop@2025', 2, 'SC', 0),
(40, 'LUKOKI BINKITA OSCHEA', '243853339574', 'lukokibintika@micropop.cd', 'Actif', 'oscheal', 'Micropop@2025', 5, 'CA', 117122),
(41, 'ENGIONGO MBIANGO TARQUIN', '243810236189', 'engiongombiango@micropop.cd', 'Actif', 'tarquin', 'Micropop@2025', 5, 'BM', 0),
(42, 'MAMBAKASA NGONDE DIEU-MERCI', '243818709732', 'mambakasangonde@micropop.cd', 'Actif', 'dieumerci', 'Micropop@2025', 5, 'CA', 117121),
(43, 'MUTEBA WA MUTEBA GLODI', '243815144232', 'mutebawamuteba@micropop.cd', 'Actif', 'glodim', 'Micropop@2025', 5, 'SUP', 0),
(44, 'NTEKA ONGAO JEAN VOLDI', '243826329336', 'NA', 'Actif', 'voldin', 'Micropop@2025', 5, 'SC', 0),
(45, 'BENESHA MUPINGANYI GAYLORD', '243823070303', 'mulowayimupinganyi@micropop.cd', 'Actif', 'gaylord.m', 'SupremeG01', 5, 'BM', 0),
(46, 'DARLY JUNIOR KAZU', '0', 'darlyjunior@micropop.cd', 'Actif', 'darly', '1234', 6, 'RC', 0),
(47, 'BAZOMBWA BELI FRANK', '243828778320', 'NA', 'Actif', 'frankb', '151020', 1, 'CA', 126683),
(48, 'MANKWE MALAIKA CYNTHIA', '243822622021', 'NA', 'Actif', 'cynthiam', 'Micropop@1510', 1, 'CA', 126685),
(49, 'TSHIMPANGA KABEYA PERRA', '0', 'tshimpangakabeya@micropop.cd', 'Actif', 'perra', '1234', 1, 'ODP', 121906),
(50, 'TSHIMPANGA KABEYA PERRA', '243824482724', 'tshimpangakabeya@micropop.cd', 'Actif', 'perra', 'Per@tsim1', 1, 'SC', 0),
(51, 'KALAMBA NKONGOLO AXEL', '243892782086', 'kalambankongolo@micropop.cd', 'Actif', 'axellekn', 'Micropop@2025', 1, 'ODP', 108400),
(52, 'Essabe Fimwana Dogi', '243823499046', 'essabefimwana@micropop.cd', 'Actif', 'dogie', '12345', 6, 'SC', 0),
(53, 'CHIZA CHIRIMULUME DAVID', '0', 'NA', 'Actif', 'davidch', '1234', 1, 'SUP', 0),
(54, 'NLABA MAMBU DAVID', '0', 'NA', 'Actif', 'davidn', '12345', 1, 'ODP', 0),
(55, 'KABAMBA MUKADI REBECCA', '243819171910', 'kabambamukadi@micropop.cd', 'Actif', 'rebeccak', 'Micropop@2025', 2, 'SC', 0),
(56, 'KANDA KAPINGA HELENE', '243972458691', 'NA', 'Actif', 'helenek', 'Micropop@2025', 2, 'SC', 0),
(57, 'KANDA KAPINGA HELENE', '243972458691', 'NA', 'Actif', 'heleneka', 'Micropop@2025', 2, 'ODP', 126129),
(58, 'NGAMALA MUTOMBO ELYSEE', '243972801930', 'ngamalamutombo@micropop.cd', 'Actif', 'elysee', 'Micropop@2025', 2, 'SC', 0),
(59, 'NGAMALA MUTOMBO ELYSEE', '243972801930', 'ngamalamutombo@micropop.cd', 'Actif', 'elyseen', 'Micropop@2025', 2, 'ODP', 117975),
(60, 'MBIYAVANGA NKOSI ISMAEL', '243895854751', 'mbiyavangankosi@micropop.cd', 'Actif', 'ismaelm', 'Micropop@2025', 2, 'SUP', 0),
(61, 'POMBO BIBISOMBE Arlette', '243817578073', 'pombobibisombe@micropop.cd', 'Actif', 'arlettep', 'Micropop@2025', 2, 'SUP', 0),
(62, 'FUMUNGUMBA BIKEM Divine', '243815841294', 'NA', 'Actif', 'divine', '1234', 1, 'CA', 0),
(63, 'LUMBELELO UNYA BLAISE', '0', 'lumbelelounya@micropop.cd', 'Actif', 'blaise', '1234', 2, 'CI', 0),
(64, 'BAKAMBALA EPATE RUDDY', '0', 'NA', 'Actif', 'ruddy', '1234', 5, 'CI', 0),
(65, 'KAMANYULA KALUME Bertin', '0', 'NA', 'Actif', 'bertin', '1234', 1, 'CI', 0),
(66, 'MASANGI Fidele Fidele', '243821583203', 'NA', 'Actif', 'fidele', '1234', 5, 'CA', 0),
(67, 'KADAKA MUANDA Omar', '243817827253', 'NA', 'Actif', 'omar', '1995', 5, 'CA', 0),
(68, 'NDINGA MAINDI', '0', 'ndingalembi@gmail.com', 'Actif', 'maindi_bm', 'Micropop@2025', 1, 'BM', 0),
(69, 'DIKABANE MABONZO Bonny', '243815609503', 'dikabanemabonzo@micropop.cd', 'Actif', 'bonnyd', 'Micropop@2025', 2, 'BM', 0),
(70, 'ENGIONGO MBIANGO TARQUIN', '0', 'NA', 'Actif', 'tarquin_sup', '1234', 5, 'SUP', 0),
(71, 'NTEKA ONGAO JEAN VOLDI', '+243826329336', 'ntekavoldie@gmail.com', 'Actif', 'voldi', 'Micropop@2025', 5, 'ODP', 127120);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
