-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 15 Juillet 2025 à 03:22
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `worflowcredit`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=64 ;

--
-- Contenu de la table `assignationdossiercredit`
--

INSERT INTO `assignationdossiercredit` (`Id`, `IDBranche`, `IDsuperviseur`, `IDProduitCredit`, `IDAnalysteDossierCredit`, `IDAssignateur`, `NumDossierCre`, `IdClientD`) VALUES
(32, 1, 21, 6, 47, 20, '09263', 23),
(33, 1, 21, 3, 17, 20, '46437', 14),
(34, 1, 53, 3, 48, 20, '66776', 15),
(35, 1, 21, 4, 28, 20, '77829', 24),
(36, 1, 21, 3, 17, 20, '78069', 21),
(37, 1, 21, 3, 17, 20, '78984', 22),
(38, 1, 21, 3, 62, 20, '15939', 16),
(39, 1, 21, 4, 62, 20, '88721', 18),
(40, 2, 61, 4, 36, 23, '23401', 25),
(41, 1, 21, 3, 33, 20, '58355', 26),
(42, 1, 53, 4, 62, 20, '33457', 19),
(43, 1, 21, 4, 33, 20, '84812', 28),
(44, 1, 21, 2, 33, 20, '11973', 29),
(45, 1, 21, 6, 28, 20, '09804', 49),
(46, 1, 21, 4, 62, 20, '01593', 45),
(47, 1, 21, 4, 62, 20, '05776', 39),
(48, 1, 21, 6, 17, 20, '12780', 36),
(49, 1, 21, 3, 47, 20, '16424', 55),
(50, 1, 21, 4, 28, 20, '38625', 20),
(51, 1, 21, 3, 62, 20, '39620', 43),
(52, 1, 21, 3, 62, 20, '53837', 40),
(53, 1, 21, 3, 62, 20, '54122', 46),
(54, 1, 21, 3, 33, 20, '56210', 32),
(55, 1, 53, 3, 48, 20, '59686', 47),
(56, 1, 53, 3, 48, 20, '60198', 50),
(57, 1, 21, 3, 62, 20, '64281', 31),
(58, 1, 21, 3, 62, 20, '70495', 53),
(59, 1, 21, 6, 28, 20, '83667', 54),
(60, 1, 21, 6, 62, 20, '91730', 42),
(61, 1, 21, 3, 28, 20, '98277', 38),
(62, 1, 21, 4, 17, 20, '55012', 58),
(63, 1, 21, 2, 17, 20, '51605', 59);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

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
(20, 'HUGUETTE MAISON DE BOIS', '191 NGEBA Q/MATADI C/BUMBU', 2012, 2012, 'VENTE DE BOIS', 'Entreprise individuelle', 'COMMERCE', 21, '78069', 'Autorisation_Ouverture'),
(21, 'HORTANCE DEPOT BOIS', '185 NGEBA Q/MATADI C/BUMBU', 2016, 2016, 'VENTE DES BOIS', 'Entreprise individuelle', 'COMMERCE', 22, '78984', 'Autorisation_Ouverture'),
(22, 'OPPROSE', '45 LISALA Q/KATANGA C/KASA VUBU', 2010, 2010, 'VENTE DIVERS', 'Entreprise individuelle', 'COMMERCE ', 23, '09263', 'RCCM'),
(23, 'LIFE COMPAGNIE', '159 ITAGA C/KINSHASA REF ITAGA FOOD MARKET ANCIEN BIAC', 2024, 2022, 'FABRICATION SAVON ET DIVERS', 'Entreprise individuelle', 'INDUSTRIEL', 24, '77829', 'RCCM'),
(24, '3H LES KAS', '17 DU FLEUVE Q/CPA MUSHIE C/ MONT NGAFULA', 7, 15, 'DEPOT JUS ET DIVERS', 'Entreprise individuelle', 'COMMERCE', 25, '23401', 'Autorisation_Ouverture'),
(25, 'EMMANUEL LUFU', '18 MUEMALIO Q/MOMBELE C/LIMETE', 2014, 2014, 'VENTE MECHES ET DIVERS', 'Entreprise individuelle', 'DIVERS', 26, '58355', 'Patente'),
(26, 'GENERATION FACEBOOK', 'DE L''ECOLE  148 Q/KINSUKA PECHEUR C/NGALIEMA', 8, 10, 'TERRASSE ', 'Entreprise individuelle', 'COMMERCE', 27, '69063', 'Autorisation_Ouverture'),
(27, 'ETS CHRIST NOTRE ESPERANCE', '7Ã¨me RUE NÂ°8 Q/INDUSTRIEL C/LIMETE ', 2020, 2020, 'ALIMENTATION', 'Entreprise individuelle', 'COMMERCE', 28, '84812', 'RCCM'),
(28, 'NA', '11 MBANKANA Q/MOMBELE C/LIMETE', 2007, 2007, 'BOUTIQUE', 'Entreprise individuelle', 'ALIMENTATION', 29, '11973', 'Patente'),
(29, 'PLAN B ESPACE ARENA ', 'DE LA PAIX 131 Q/NSOLA C/KINSENSO  ', 2023, 2023, 'RESTAURANT', 'Entreprise individuelle', 'NA', 30, '55237', 'RCCM'),
(30, 'JOEL BUSINESS', '62 KIKWIT Q/YOLO SUD C/KALAMU', 2023, 2023, 'BOUTIQUE', 'Entreprise individuelle', 'ALIMENTATION', 31, '64281', 'Autorisation_Ouverture'),
(31, 'LOYER', 'DILANDOS 36 BIS TROISIEME ENTREE 1 ERE RUE Q/INDUSTRIEL C/LIMETE ', 2017, 2017, 'IMMOBILIER ', 'Entreprise individuelle', 'NA ', 32, '56210', 'Aucun'),
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
(44, 'DIEU EST MA FORCE', '09 BELADONE Q/KAUKA 1 C/KALAMU', 2023, 2023, 'RESTAURENT ET TERRASSE', 'Entreprise individuelle', 'RESTAURATION', 45, '01593', 'RCCM'),
(45, 'TONTON FUKA', 'CENTRAL 24 Q/KAUKA C/KALAMU', 2008, 1991, 'DEPOT TERASSE', 'Entreprise individuelle', 'NA', 46, '54122', 'Autorisation_Ouverture'),
(46, 'NA', 'Boulevard Salongo 7025 commune lemba', 2022, 2022, 'Revenus locatifs', 'Privee', 'Immobilier', 47, '59686', 'Aucun'),
(47, 'AICHA', 'Avenue DILOLO 88 Q/PENDE C/KINSHASA', 2014, 2014, 'Quincaillerie ', 'Entreprise individuelle', 'Prive', 49, '09804', 'RCCM'),
(48, 'ETS CARREFOUR XL', 'By pass numero 1311 commune de lembq', 2019, 2019, 'Salle de fete', 'Entreprise individuelle', 'Service', 50, '60198', 'RCCM'),
(49, 'OSCAR CENTER', 'MPOZO A 34', 2017, 2014, 'QUINCAILLERIE', 'Entreprise individuelle', 'NA', 53, '70495', 'Autorisation_Ouverture'),
(50, 'D MOBILE ', 'BOTOUR LOCAL 56 REF EN DIAGONAL LEON HOTEL', 2021, 2018, 'VENTES TELEPHONES', 'Entreprise individuelle', 'COMMERCE', 54, '83667', 'RCCM'),
(51, 'MLB', 'Av.Lodja 20, Q/Lodja, C/Kasa-vubu', 2024, 2004, 'Terrasse et restaurant ', 'Entreprise individuelle', 'Commerce ', 55, '16424', 'Autorisation_Ouverture'),
(52, 'JE SET BENEDICTION ', 'POPOKABAKA 21 Q/LODJA C/KASA-VUBU ', 2015, 2012, 'MAISON D''HABILLEMENT', 'Entreprise individuelle', 'NA', 56, '39100', 'RCCM'),
(53, 'BOUTIQUE FILS K', '1 MUKILA Q/NZADI C/LIMETE', 2019, 2019, 'BOUTIQUE', 'Entreprise individuelle', 'COMMERCE', 57, '97984', 'Autorisation_Ouverture'),
(54, 'NDK Bussness', 'AV/ MBOKULU 8 BIS ,Lemba Livulu', 2021, 2021, 'TERRASSE', 'Entreprise individuelle', 'Commerce', 58, '55012', 'Autorisation_Ouverture'),
(55, 'TERRASSE', 'AV/ MBOKULU 8 BIS ,Lemba Livulu', 2020, 2020, 'NDK Bussness', 'Entreprise individuelle', 'prive', 59, '51605', 'RCCM');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `businessoneachatproduitprincipaux`
--

INSERT INTO `businessoneachatproduitprincipaux` (`Id`, `LibelleProduitPrincipaux`, `FrequenceMensuelle`, `QteParAchat`, `AchatMensuel`, `VenteMensuel`, `IdClientD`, `NumDossierCre`, `PA`, `PV`) VALUES
(5, 'Inox', 8, 5, 2400, 3800, 49, '09804', 60, 95),
(6, 'Moto pompe', 4, 2, 960, 1600, 49, '09804', 120, 200),
(7, 'Cable deux demi', 16, 10, 3200, 4800, 49, '09804', 20, 30),
(8, 'Cable un demi', 16, 10, 2400, 3200, 49, '09804', 15, 20),
(9, 'BEAUFORT', 4, 10, 54.8, 68.8, 58, '55012', 1.37, 1.72);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `businessoneactifdette`
--

INSERT INTO `businessoneactifdette` (`Id`, `CashBusiness`, `CashBanque`, `DetteCourTerme`, `Meubles`, `Vehicule`, `Autres`, `CashMaison`, `Creances`, `DetteLongTerme`, `Equipementoutils`, `LocalCommercial`, `IdclientD`, `NumDossierCre`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 142, 0, 200, 420, 16, '15939'),
(2, 0, 0, 0, 0, 0, 1500, 850, 0, 0, 0, 0, 49, '09804'),
(3, 120, 0, 0, 0, 0, 0, 0, 0, 0, 500, 1350, 15, '66776'),
(4, 1500, 1000, 0, 0, 0, 0, 500, 0, 0, 0, 0, 58, '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `businessoneautrestock`
--

INSERT INTO `businessoneautrestock` (`Id`, `LibelleProduitAS`, `QteProduitAS`, `PrixAchatAS`, `PrixVenteAS`, `MargeAS`, `ValeurStockAS`, `IdClientD`, `NumDossierCre`) VALUES
(1, 'CIGARETTE', 25, 1, 2, 0.5, 25, 58, '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `businessoneclientd`
--

INSERT INTO `businessoneclientd` (`Id`, `ActiviteDepuis`, `LieuDepuis`, `NbrPointVente`, `ProprieteLocaux`, `NomBailleur`, `DateVisite`, `HeureVisite`, `IdClientd`, `NumDossiercredi`) VALUES
(1, 2, 1, 1, 'locataire', 'Papa  bola', '2025-06-04', '10h', 16, '15939'),
(2, 2014, 2014, 1, 'locataire', 'Ferdinand POSO', '2025-06-06', '10 heures ', 49, '09804'),
(3, 2023, 2023, 1, 'locataire', 'Nico Tshiamala', '2025-06-06', '10h', 15, '66776'),
(4, 2020, 2020, 1, 'locataire', 'KALALA VAN ANG', '2025-06-11', '12:00', 58, '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

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
(10, 'INCENDIE', 'les intincteurs sont prevus', 58, '55012'),
(11, 'VOL', 'mise en place des sentinelles', 58, '55012'),
(12, 'RUPTURE DE STOCK', 'le client approvisionne ', 58, '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

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
(21, 'BEAUFORT', 15, 1.37, 1.72, 0.2, 20.55, 58, '55012', 'Principal'),
(22, 'COCA COLA', 20, 1.3, 1.35, 0.04, 26, 58, '55012', 'Simple'),
(23, 'autres', 800, 1, 1, 0, 800, 58, '55012', 'Simple');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `businessoneventeachat`
--

INSERT INTO `businessoneventeachat` (`Id`, `RegistreVente`, `NbrJourOuvrableParMois`, `CategorieVjLundi`, `MontantVjLundi`, `CategorieVjMardi`, `MontantVjMardi`, `CategorieVjMercredi`, `MontantVjMercredi`, `CategorieVjJeudi`, `MontantVjJeudi`, `CategorieVjVendredi`, `MontantVjVendredi`, `CategorieVjSamedi`, `MontantVjSamedi`, `CategorieVjDimanche`, `MontantVjDimanche`, `TotalSemaine`, `dernierJour1`, `VenteDernierJour1`, `dernierJour2`, `VenteDernierJour2`, `dernierJour3`, `VenteDernierJour3`, `VenteJourTOdays`, `IdClientD`, `NumDossierCre`, `VenteMensuelMinMax`, `VenteMensuelTroisDernierJours`, `jour1`, `jour2`, `jour3`, `mntjour1`, `mntjour2`, `mntjour3`, `mntToDaysJour`, `VenteTotalJourDernier`) VALUES
(1, 'Non', 26, 'Normal', 105, 'Normal', 100, 'Normal', 110, 'Normal', 110, 'Bien', 150, 'Bien', 170, 'Normal', 0, 745, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 16, '15939', 2980, 0, 'Samedi', 'Lundi', 'Mardi', 78, 29, 20, 50, 1100.67),
(2, 'Non', 26, 'Normal', 210, 'Normal', 300, 'Normal', 400, 'Normal', 350, 'Normal', 250, 'Normal', 300, 'Normal', 0, 1810, 'Janvier', 0, 'Fevrier', 0, 'Mars', 0, 0, 15, '66776', 7240, 0, 'Vendredi', 'Samedi', 'Lundi', 310, 400, 250, 150, 8320),
(3, 'Oui', 28, 'Bien', 1050, 'Bien', 1000, 'Normal', 750, 'Mauvais', 500, 'Normal', 800, 'Bien', 1000, 'Normal', 750, 5850, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 49, '09804', 23400, 0, 'Dimanche', 'Lundi', 'Mardi', 750, 1050, 1000, 750, 26133.33),
(4, 'Non', 26, 'Bien', 500, 'Bien', 450, 'Normal', 300, 'Bien', 550, 'Mauvais', 150, 'Bien', 600, 'Mauvais', 100, 2650, 'Mars', 0, 'Avril', 0, 'Mai', 0, 0, 58, '55012', 10600, 0, 'Dimanche', 'Lundi', 'Mardi', 900, 1000, 2500, 1500, 38133.33);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `businessthreecoutproduction`
--

INSERT INTO `businessthreecoutproduction` (`Id`, `LibelleProduit`, `QteProductionMateriel`, `LibelleMaterielUtilise`, `PrixAchatParUnite`, `CoutTotal`, `NbrUniteProduit`, `IdClientD`, `NumDossierCre`) VALUES
(1, 'Pain', 7, 'farine', 20, 140, 5000, 58, '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `businesstwoautresrevenu`
--

INSERT INTO `businesstwoautresrevenu` (`Id`, `DescriptionActivite`, `AnneeDepuis`, `RevenuMensuel`, `IdclientD`, `NumDossierCre`) VALUES
(1, 'Moto en activitÃ©', 2024, 150, 16, '15939'),
(2, 'Salaire', 2023, 300, 15, '66776'),
(3, 'SALAIRE POUR ENSEIGNANT', 2020, 300, 58, '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `businesstwodepensesoperationnelles`
--

INSERT INTO `businesstwodepensesoperationnelles` (`Id`, `TransportJournalierLieuActivite`, `TransportCoutVoyageAchat`, `Loyer`, `communication`, `salaire`, `services`, `taxes`, `autres`, `depenseInvestsixmoisdernier`, `IdClientD`, `NumDossierCre`, `commentaireDop`) VALUES
(1, 10, 0, 70, 10, 0, 5, 5, 0, 0, 16, '15939', 'Pour le transport des marchandises le client est sur le macadam et les marchandises lui sont deposÃ© directement'),
(2, 50, 240, 250, 50, 80, 10, 75, 100, 0, 49, '09804', 'Na'),
(3, 7, 0, 150, 10, 80, 12, 5, 0, 0, 15, '66776', 'La cliente possÃ¨de un dÃ©pot de jus et a un travailleur, elle passe trois fois l1 semaine pour faire un contrÃ´le.'),
(4, 100, 500, 250, 20, 300, 100, 50, 0, 0, 58, '55012', 'NA');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

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
(7, 'KATSHIAKU ALAIN', '243812056555', 'client', 58, '55012'),
(8, 'SADONA DAVID', '243897855888', 'client proche', 58, '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `businesstwosaisonnalitevente`
--

INSERT INTO `businesstwosaisonnalitevente` (`Id`, `MontantJanvierSV`, `MontantFevrierSV`, `MontantMarsSV`, `MontantAvrilSV`, `MontantMaiSV`, `MontantJuinSV`, `MontantJuilletSV`, `MontantAoutSV`, `MontantSeptembreSV`, `MontantOctobreSV`, `MontantNovembreSV`, `MontantDecembreSV`, `IdClientD`, `NumDossierCre`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 16, '15939'),
(2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 49, '09804'),
(3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, '66776'),
(4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 58, '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `businesstwoventemensuellesmoyen`
--

INSERT INTO `businesstwoventemensuellesmoyen` (`Id`, `LibelleMois`, `Appreciation`, `Montant`, `IdClientD`, `NumDossierCre`) VALUES
(1, '0', 'Bon', 0, 16, '15939'),
(2, 'Na', 'Bon', 0, 16, '15939'),
(3, 'Janvier 2025', 'Bon', 1500, 58, '55012'),
(4, 'fevrier 2025', 'Bon', 1000, 58, '55012');

-- --------------------------------------------------------

--
-- Structure de la table `bussnessmembregl`
--

CREATE TABLE IF NOT EXISTS `bussnessmembregl` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ActiviteGL` varchar(500) NOT NULL,
  `AdresseBusinessGL` varchar(500) NOT NULL,
  `ExperienceBussnessGL` varchar(500) NOT NULL,
  `RotationHebdoGL` int(11) NOT NULL,
  `CapitalBussnessGL` double NOT NULL,
  `BeneficesHebdoGL` double NOT NULL,
  `NumTelephoneBussnessGL` varchar(50) NOT NULL,
  `IdClientGL` int(11) NOT NULL,
  `CommentaireBussnessGL` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `bussnessmembregl`
--

INSERT INTO `bussnessmembregl` (`ID`, `ActiviteGL`, `AdresseBusinessGL`, `ExperienceBussnessGL`, `RotationHebdoGL`, `CapitalBussnessGL`, `BeneficesHebdoGL`, `NumTelephoneBussnessGL`, `IdClientGL`, `CommentaireBussnessGL`) VALUES
(1, 'Laboratoire cosmetique', 'AV/ kitoyi 46 bis ,Lemba livulu', 'experience de 10 ans ', 15, 2500, 1000, '243818716274', 7412, 'le bussness du client est tres rentable en terme de benefice pour avoir un credit chez MICROPOP SA !!!'),
(2, 'Imprimerie', 'Kinshasa Gombe ,Av/ du port 45 bis', 'de 5 ans depuis 2020', 10, 3000, 1500, '243891025750', 2552, 'Le bussness du client est rentable pour un crÃ©dit '),
(3, 'Societe Ciment', 'Kinshasa Gombe ,Av/ du port 45 bis', 'de 10 ans depuis 2015', 7, 4500, 2500, '243891025750', 6563, 'Le bussness est tres rentable !!!'),
(4, 'Depot pharmaceutique', 'Lemba terminus,Av/ mole 5', 'depuis 2019 ', 5, 1700, 800, '243818078520', 7356, 'Le bussness est aussi tres rentable');

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
  `PostNomCli` varchar(30) NOT NULL,
  `PrenomCli` varchar(30) NOT NULL,
  `DateNaissanceCli` varchar(30) NOT NULL,
  `TypePieceIdentite` varchar(30) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=60 ;

--
-- Contenu de la table `clientd`
--

INSERT INTO `clientd` (`idclient`, `IdCbsCli`, `cycleCliCbs`, `AgeMajeurplus`, `PropActiviteCom`, `ExerceActuelActiv`, `ActivZoneExclus`, `CongolaisEtrangerPays`, `ActiviteZoneOperationel`, `ActiviteExerceplussixmois`, `ActiviteEnregLegal`, `NomCli`, `PostNomCli`, `PrenomCli`, `DateNaissanceCli`, `TypePieceIdentite`, `NumPieceIdentite`, `SexeCli`, `NationaliteCli`, `EtatCivilCli`, `NomsConjointCli`, `DateNaissanceConjointCli`, `AdresseDomicileCli`, `TelephoneCli`, `EmailCli`, `TelephoneConjointCli`, `ReferenceAdresseClient`, `photos`) VALUES
(14, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'TUTALA', 'KONGOLO', 'TUTALA', '1992-01-01', 'Carte Electeur', '30329550744', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '52 BIS KIMBUDI Q/MATADI C/BUMBU', '243904190735', 'NANANANANANANANA', '', 'ARRET STATION SELEMBAO', 'WIN_20250522_12_37_39_Pro.jpg'),
(15, 127453, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MUNTU', 'NGOMA', 'RODIG STEPHANIE', '1991-01-18', 'Carte Electeur', '30252343781', 'Feminin', 'Congolaise', 'Celibataire', '', '', '9 ieme rue, av/Promesse num 5 Q/industruiel C/Limete', '243827375570', 'NA', '', '9 ieme rue Limete', '20250522_110322.jpg'),
(16, 126903, 2, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'TUJIBIKILE', 'BADIBANGA', 'CELESTIN', '1974-12-26', 'Carte Electeur', '30328745191', 'Masculin', 'CONGOLAISE ', 'Marie', 'MATONDO MUANZA RACHEL', '1986-10-01', 'MANGA MENGA 6 Q/ELENGESA C/MAKALA', '243894562809', 'NA', 'NA', 'MAISON COMMUNALE ', 'TUJIBIKILE BADIBANGA.PNG'),
(17, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MAKIONA', 'DIKU', 'JULES', '2003-01-01', 'Carte Electeur', '30397758939', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '37 A BATENDE Q/VIVI C/MATETE', '243853008379', 'NA ', '', 'BARRE VITA IMANA', 'WIN_20250523_13_36_26_Pro.jpg'),
(18, 102773, 6, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KIESSE', 'MAMPUYA', 'REAGAN', '1987-05-16', 'Carte Electeur', '30052653657', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', 'BARUNDI 20 Q/YOLO-SUD C/KALAMU', '243824705871', 'NA', '', 'EGLISE SAINT GABRIEL', 'Mr REAGAN.PNG'),
(19, 103030, 3, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NDEKE', 'NDEKE', 'GUSTAVE', '1975-11-05', 'Passport', 'OP1831775', 'Masculin', 'CONGOLAISE', 'Marie', 'BIATA KABEYA RACHEL', '', 'TSHELA 124 Q/DJALO C/KINSHASA ', '243821984368', 'NA', 'NA', 'NA', 'NDEKE NDEKE GUSTAVE.PNG'),
(20, 103030, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KINKWONO', 'OBOMON', 'FABRICE', '1975-11-05', 'Passport', 'OP1383386', 'Masculin', 'CONGOLAISE ', 'Marie', 'NZAMBA KIMBESE CELESTINE ', '1991-09-16', 'MBAYA 05 Q/BAMBILA C/MONT NGAFULA', '243820045030', 'fabricekinwono@gmail.com', '243810212628', 'ROUTE DE LA PAIX / ARRET ANCIEN COMBATTANT ', 'CLIENT KINKWONO OBOMON_0001.jpg'),
(21, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NZINDA ', 'TSHIABULA', 'HUGUETTE', '1987-02-26', 'Carte Electeur', '30325957978', 'Feminin', 'CONGOLAISE', 'Marie', 'KAPESA TUNDA HUGO', '1978-03-30', '107 MABUALA Q/MATADI C/BUMBU', '243844288702', 'NA', '243855745549', 'STATION ENGEN', 'NZINDA HUGUETTE.jpg'),
(22, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KUDIANA ', 'TSHIABULA', 'HORTANCE', '1980-12-29', 'Carte Electeur', '30126526448', 'Feminin', 'CONGOLAISE', 'Marie', 'LEMBA MPEMBELE MICHEL', '1978-04-15', '169 LUYINDULA Q/MBANDAKA C/BUMBU', '243858290148', 'NA', '243891603537', 'LANDU MATAPOL', 'KUDIANA HORTANCE.jpg'),
(23, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'TEMO', 'MBOMA', 'JUNETTE', '1980-07-03', 'Carte Electeur', '30327346634', 'Feminin', 'CONGOLAISE', 'Celibataire', '', '', '155 BAMBILI Q/ SAIO C/NGIRI NGIRI', '243899170639', 'NA', '', 'BOULANGERIE UPAK', 'TEMO JUNETTE.jpg'),
(24, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'TOLI', 'KALOMBO', 'JEAN DE DIEU', '1997-12-25', 'Carte Electeur', '35967619312', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', '179BIS TSHUAPA Q/PLZ C/LINGWALA', '243894844101', 'NA', '', 'HUILLERIE FOOD MARKET ITAGA', 'TOLI JEAN DE DIEU.jpg'),
(25, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KUPANGI', 'KALOMBO', 'BEBE-MARIE-THERESE', '1967-03-03', 'Passport', '0P08888797', 'Feminin', 'CONGOLAISE', 'Veuf(ve)', '', '', '46 SANKURU Q/MAZAL C/MONT NGAFULA', '0815132662', 'NAN', '', 'NAN', 'WIN_20250526_11_05_22_Pro.jpg'),
(26, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MAMBWANMBWA', 'MBONGO', 'EMMANUEL', '1976-10-20', 'Carte Electeur', '30273161095', 'Masculin', 'CONGOLAISE', 'Marie', 'MULOYI YVETTE', '1978-12-08', '18 MUEMALIO Q/MOMBELE C/LIMETE', '243823363830', 'NA', '243898335555', 'ARRET 13 EME RUE', 'WIN_20250527_12_18_15_Pro.jpg'),
(27, 200173, 4, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MBUMBA', 'MAHIO', 'ESTHER', '1976-12-25', 'Carte Electeur', '30095527757', 'Feminin', 'congolaise', 'Marie', 'PAMBU KITAWIZI RUBENS', '1970-12-25', '5 KITUNA Q/MALEMBA KULU C/ SELEMBAO', '0850131198', 'NAN', '0998219366', 'NAN', 'WIN_20250527_13_24_42_Pro.jpg'),
(28, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KATIKA ', 'KIAZIAKO', 'JACQUES', '1976-11-20', 'Passport', 'OP0763394', 'Masculin', 'CONGOLAISE', 'Marie', 'SANGI NGUNGA TANTINE ', '1981-08-01', '7Ã¨me rue NÂ°8 Q/INDUSTRIEL C/LIMETE', '243836103654', 'NA', '243904625005', 'CHACULTERIE MAMAN VERO', 'KATIKA JACQUES.jpeg'),
(29, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MITUTU', 'MINSIE', 'PRUDENCE', '1993-06-10', 'Carte Electeur', '30277737596', 'Feminin', 'CONGOLAISE', 'Marie', 'MPANI ALAIN', '1980-08-13', '14 KIMANGULU Q/MOMBELE C/LIMETE', '243839848332', 'NA ', '243904401271', '13 RUE LIMETE', 'WIN_20250528_10_51_11_Pro.jpg'),
(30, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'BILONGO', 'BINKONKO', 'ENOCK', '1999-06-27', 'Passport', 'OP1282826', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', 'MB 15D Q/QLOKELE C/MATETE', '243840859768', 'NA', '', 'MB', 'CLIENT BILONGO BINKONKO ENOCK_0001.jpg'),
(31, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'AMBENGA', 'MUMPAMBU', 'JOELLE', '1988-05-25', 'Passport', 'OP1125732', 'Feminin', 'CONGOLAISE', 'Marie', 'BANSUA CLOVIS', '1983-09-27', '62 KIKWIT Q/YOLO SUD C/KALAMU', '243971480036', 'NA', '0898666688', 'ARRET KIKWIT (DIRECTION MARCHE EZO)', 'WIN_20250528_13_31_43_Pro.jpg'),
(32, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'LUABA', 'NTUMBA ', 'ZYBO', '1974-01-17', 'Carte Electeur', '30279743563', 'Masculin', 'CONGOLAISE ', 'Marie', 'MAGO BANINGELA MAMIE ', '1978-12-25', 'DILANDOS 36 BIS TROISIEME ENTREE 1 ERE RUE Q/ INDUSTRIEL C/ LIMETE ', '243998490028', 'NA', '243836761789', 'EN FACE DU DEPOT D''ESSENCE ', 'CLIENT LUABA NTUMBA ZYBO_0001.jpg'),
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
(45, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'non', 'FOUMBU', 'MBOYO ', 'CLARISSE', '1976-05-15', 'Carte Electeur', '32869540876', 'Feminin', 'CONGOLAISE', 'Marie', 'MAKENGO MALALAKO CHRISTOPHE', '1974-10-14', '21 NGANDA JIKA Q/MASANGA MBILA C/MONT NGAFULA', '243815177655', 'NA', '243987509747', 'ARRET DEPOT/KIN MARCHE', 'WIN_20250604_11_12_16_Pro.jpg'),
(46, 126390, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NZOMVUAMA', 'MATUNU', 'HORTANCE', '1970-08-03', 'Carte Electeur', '30068142396', 'Feminin', 'CONGOLAISE', 'Marie', 'YAMBA LAURENT ', '1961-10-08', 'BOKOTE 56 Q/MATONGE 2 C/KALAMU', '243853187643', 'NA', '243897600410', 'STADE 20 MAI', 'NZOMVUAMA.jpg'),
(47, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KAPELA', 'DUDA MBONGO', 'YVETTE', '1971-10-07', 'Carte Electeur', '30248135704', 'Feminin', 'Congolaise', 'Marie', 'Kivule Ngoma Daddy', '1958-11-25', 'Boulevard salongo 7025 Q Salongo C lemba', '0902076208', 'NA', '0816059695', 'Boulevard salongo', '20250603_112313.jpg'),
(49, 125619, 2, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'ITEPELE', 'BAKOTO', 'AHICHA', '1979-07-05', 'Passport', 'OP1269162', 'Feminin', 'Congolais ', 'Marie', 'IYANZA TRAORE CHEKINAH', '1974-06-16', 'Av. KONGOLO 86 Q/PENDE C/ KINSHASA ', '243850037212', 'Na', '243979363555', 'Avenue du marais', 'Screenshot_20250605-175000.jpg'),
(50, 110766, 5, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NDUDI', 'THANDU', 'JOSEPH', '1991-09-30', 'Carte Electeur', '30402150209', 'Masculin', 'Congolaise', 'Celibataire', '', '', 'Avenue Paka numero 1 bis Quartier Masano commune de Lemba', '0827643227', 'NA', '', 'Super lemba', '1749117510483.jpg'),
(52, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MUTEBA ', 'MUKENDI', 'MARCEL', '1975-12-18', 'Carte Electeur', '30185738765', 'Masculin', 'CONGOLAISE', 'Marie', 'META NTUMBA MEDA', '1993-12-25', '3111 SAINT CHRISTOPHE Q/ FUNA C/LIMETE', '243995053683', 'NA', '243971956839', 'PASTEUR WALO CROISEMENT SAINT CHRISTOPHE ET FORGERON', 'MUTEBA MUKENDI MARCEL.jpeg'),
(53, 213632, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'MAYINGA', 'RODENGO', 'OSCAR', '1982-09-20', 'Carte Electeur', '35712405875', 'Masculin', 'CONGOLAISE', 'Celibataire', '', '', 'MPOZO A44 Q/MATONGE C/KALAMU', '243840764136', 'NA', '', 'EP 1 MATONGE', 'CLIENT MAYINGA_0001.jpg'),
(54, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KIAVANA ', 'MAKOKISA', 'DAVID', '2001-02-26', 'Passport', 'OP1352759', 'Masculin', 'CONGOLAISE', 'Marie', 'TRESCA BONTEKO FERNANDES', '2002-08-12', '4 YANDINGE Q/BINZA PIGEON C/NGALIEMA', '243822505368', 'davidkiavana@gmail.com', '243810651871', 'REF EX PELOUSTORE', 'DAVID KIAVANA.jpg'),
(55, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'KAPINGA', 'TSHILUMBA', 'Marie-Louise', '1977-11-02', 'Passport', 'OP0808863', 'Feminin', 'Congolaise ', 'Celibataire', '', '', 'Av.Ingende 155, Q/24 Nov, C/Ngiri-Ngiri', '24397345564', 'NA', '', 'Boulangerie UPAK, Saio ', 'Screenshot_20250606-104943_Gallery.jpg'),
(56, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'YUNGA ', 'BAENDE ', 'SISCA', '1968-12-25', 'Carte Electeur', '30074325045', 'Feminin', 'CONGOLAISE ', 'Veuf(ve)', '', '', 'POPOKABAKA 22 Q/LODJA C/KASA-VUBU', '243898963813', 'NA', '', 'DIRECTION ETHIOPIE', 'WIN_20250609_10_24_28_Pro.jpg'),
(57, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'non', 'KABEYA', 'TSHIMUENEKA', 'FILS', '1987-06-05', 'Carte Electeur', '30275736936', 'Masculin', 'CONGOLAISE', 'Marie', 'KAPINGA NGOYI ASTRID', '1996-12-11', '1 MUKILA Q/NZADI C/LIMETE', '243852704533', 'NA', '243843173939', 'POINT CHAUD TERRAIN WAYA WAYA', 'KABEYA FILS.jpg'),
(58, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'BOMBOTO', 'MBULI', 'GILBERT', '1994-12-23', 'Carte Electeur', '0222455', 'Masculin', 'Congolaise', 'Celibataire', '', '', 'AV/ MBOKULU 8 BIS ,Lemba Livulu', '243818716274', 'NA', '', 'Intendance / unikin', 'carmiok.jpg'),
(59, 0, 1, 'oui', 'oui', 'oui', 'non', 'oui', 'oui', 'oui', 'oui', 'NDEKE', '', 'Carmi', '1994-12-23', 'Carte Electeur', '0222455', 'Masculin', 'Congolaise', 'Celibataire', '', '', 'AV/ MBOKULU 8 BIS ,Lemba Livulu', '243818716274', 'carmi.ndeke@gmail.com', '', 'Gombe kin', 'carmiok.jpg');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `comite`
--

INSERT INTO `comite` (`Id`, `DateComiteCredit`, `DecisionComite`, `MontantCreditValider`, `NbrEcheancierValide`, `ButPret`, `FraisSms`, `Caution`, `FraisDossier`, `TauxInteret`, `assurance`, `MembreParticipe`, `NbrMembreComite`, `IdClientD`, `NumDossierCre`, `IDProduitCreditComite`, `commentaireComite`) VALUES
(1, '2025-06-11', 'Passer Sans Condition', 5000, 12, 'Autres', 12, 1000, 187.5, 62.4, 36, 'KAVUNGA KARL ', 3, 58, '55012', 3, 'COM COMITE'),
(2, '2025-07-04', 'Passer Sans Condition', 1000, 12, 'Besoin de fonds roulement', 12, 200, 37.5, 68.4, 7.2, 'NDINGA LEMBI MAINDI', 3, 21, '78069', 2, 'NA');

-- --------------------------------------------------------

--
-- Structure de la table `comitegl`
--

CREATE TABLE IF NOT EXISTS `comitegl` (
  `IdComiteGL` int(11) NOT NULL AUTO_INCREMENT,
  `DateComiteGL` varchar(100) NOT NULL,
  `CycleGroupeGL` int(11) NOT NULL,
  `DecisionComiteGL` varchar(100) NOT NULL,
  `CommentaireComiteGL` varchar(500) NOT NULL,
  `NumeroGroupeLisanga` varchar(500) NOT NULL,
  `DecideurComiteGL` varchar(500) NOT NULL,
  PRIMARY KEY (`IdComiteGL`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `comitegl`
--

INSERT INTO `comitegl` (`IdComiteGL`, `DateComiteGL`, `CycleGroupeGL`, `DecisionComiteGL`, `CommentaireComiteGL`, `NumeroGroupeLisanga`, `DecideurComiteGL`) VALUES
(1, '2025-07-08', 1, 'Pret-Approuver', 'ok pour décaissement de ce crédit du groupe, l''odp peut poster!!!', '10945GL', 'Bopol');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `commentairerp`
--

INSERT INTO `commentairerp` (`id`, `commentaire1`, `commentaire2`, `commentaire3`, `NumDossierCre`) VALUES
(1, 'Na', 'Na', 'Na', '15939'),
(2, 'Comm Cash flow', 'Comm Cash bilan', 'Comm ratio', '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

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
(14, 58, 'BOMBOTO MONIQUE', 10, 'enfant', 'oui', 'eleve', '55012'),
(15, 58, 'BOMBOTO Caleb', 25, 'enfant', 'oui', 'Etudiant', '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

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
(21, '78984', 'NONO MBIYA', '243816054031', 'PASTEUR', 'Non', '180 NGEBA Q/MATADI C/BUMBU EGLISE LES VRAIS ADORATEURS ', 'PASTEUR ET FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(22, '09263', 'JEREMIE TSHIBANGU', '243851603292', 'PASTEUR', 'Non', '21 VICTOIRE Q/ANCIEN COMBATTANT C/KASA VUBU ', 'PASTEUR ET FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(23, '77829', 'DADY KABANGU', '243814696037', 'PASTEUR ', 'Non', '1 MANIEMA C/KINTAMBO DIRECTION KOMORIKO REF ECOLE AURORE', 'PASTEUR ET FIDELE', 'NA', 'NA ', 'NA', 'Non', 'NA', 'NA'),
(24, '23401', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN'),
(25, '58355', 'MBALA JESUS', 'NA', 'PASTEUR', 'Non', 'INTENDANCE EGLISE ALLIANCE TABERNACLE', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(26, '69063', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN', 'NAN', 'NAN', 'NAN', 'Non', 'NAN', 'NAN'),
(27, '84812', 'DJO KIPOYI', '243819468302', 'PASTEUR', 'Non', 'BODJAMBOLI NÂ°8 Q/2 C/NDJILI', 'PASTEUR ET FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(28, '11973', 'MAVUANCHA CHRISTOPHE', 'NA', 'PASTEUR', 'Non', '10 EME RUE LIMETE NUMERO 32 A', 'FIDELE ET PASTEUR', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(29, '55237', 'BATUZEYI PAPY', '243815254243', 'COORDON', 'Non', 'BAUMBU 1 41F C/MATETE', 'BERGER', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(30, '64281', 'MANGAYA EMMANUEL', 'NA', 'PASTEUR', 'Non', 'KIKWIT UNIVERSITE', 'PASTEUR FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(31, '56210', 'JEAN WAPU', '243856351293', 'EVANGELISTE ', 'Non', 'NA ', 'FRERE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
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
(44, '01593', 'MONSEIGNEUR THEODORE', 'NA', 'PRETE CATHOLIQUE', 'Non', 'PAROISSE SAINT ANNE/GOMBE', 'PRETRE ET FIDELE', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(45, '54122', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(46, '59686', 'Venant Madidi', '0813180212', 'Pasteur', 'Non', 'Mulumba kashi quarier Righini commune Lemba', 'Pasteur', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(47, '09804', 'SAMBA KE', '243841533890', 'CommerÃ§ant ', 'Non', 'Croisement ISOKI et Du marchÃ© C/KINSHASA ', 'Mualime', 'Na', 'Na', 'Na', 'Non', 'Na', 'Na'),
(48, '60198', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(49, '70495', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(50, '83667', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(51, '16424', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(52, '39100', 'NA', 'NA', 'NA ', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(53, '97984', 'KALENGA ALPHA', '243', 'PASTEUR ', 'Non', '19 POTO POTO Q/PASCAL C/KIMBANSEKE ', 'PASTEUR COLLABORATEUR', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(54, '55012', 'TAMBU LUKOKI IGNACE', '243818716875', 'Apotre EFAI', 'Non', 'Gombe kin', 'Pasteur', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA'),
(55, '51605', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA', 'NA', 'NA', 'NA', 'Non', 'NA', 'NA');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `depensefamiliale`
--

INSERT INTO `depensefamiliale` (`Id`, `Nourriture`, `Combustiblecuisson`, `loyer`, `transport`, `communication`, `habillement`, `education`, `service`, `soinmedicaux`, `autresdepense`, `imprevu`, `loisir`, `autredepenseprive`, `TotalGeneralDF`, `IdClientD`, `NumDossierCredit`) VALUES
(1, 120, 20, 70, 21, 10, 20, 0, 0, 15, 0, 10, 0, 10, 296, 16, '15939'),
(2, 150, 10, 200, 10, 10, 20, 0, 10, 10, 0, 0, 0, 0, 420, 15, '66776'),
(3, 300, 40, 300, 50, 40, 45, 175, 15, 40, 50, 20, 25, 20, 1120, 49, '09804'),
(4, 200, 10, 0, 20, 20, 10, 0, 5, 20, 0, 0, 0, 0, 285, 47, '59686'),
(5, 200, 50, 200, 190, 25, 100, 200, 150, 100, 20, 0, 0, 0, 1235, 58, '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `documentbusiness`
--

INSERT INTO `documentbusiness` (`Id`, `DateEnregistrementDoc`, `Description`, `FichierUrl`, `IdclientD`, `NumDossierCre`) VALUES
(2, '2025-06-04', 'Autorisation douverture', '20250604_095123.jpg', 16, '15939'),
(4, '2025-06-04', 'Document moto autre source de revenu', '20250604_095145.jpg', 16, '15939'),
(5, '2025-06-04', 'Document verso moto autre source de revenu', '20250604_095133.jpg', 16, '15939'),
(8, '2025-06-09', 'Carte d electeur', '1748361222257.jpg', 15, '66776'),
(9, '2025-06-11', 'AUTORISATIONN OUVERTURE', 'olowele.pdf', 58, '55012'),
(10, '2025-07-03', 'pv', 'Maps Joseph Ndudi.pdf', 59, '51605');

-- --------------------------------------------------------

--
-- Structure de la table `documentbusinessgl`
--

CREATE TABLE IF NOT EXISTS `documentbusinessgl` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DateEnregistrementDoc` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `FichierUrl` varchar(500) NOT NULL,
  `NumGroupeGL` varchar(500) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Contenu de la table `documentbusinessgl`
--

INSERT INTO `documentbusinessgl` (`Id`, `DateEnregistrementDoc`, `Description`, `FichierUrl`, `NumGroupeGL`) VALUES
(10, '2025-07-02', 'PGG', 'FORMULAIRE DE DEMANDE DE CONGES.pdf', '10945GL'),
(11, '2025-07-02', 'PZ', 'WF.xlsx', '10945GL');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
('01222', '2025-05-23', 1000, 6, 200, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 17, 44, '2025-05-23', '2025-05-23', '0', '0', '0', '0', '0', 'NAN'),
('01593', '2025-06-04', 7000, 10, 700, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 45, 50, '2025-06-04', '2025-06-04', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('05776', '2025-05-30', 10000, 12, 900, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 39, 54, '2025-06-02', '2025-06-02', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('09263', '2024-01-01', 17500, 15, 2000, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'BAOBAB', 'Analyse', 23, 51, '2025-05-26', '2025-05-26', '2025-05-26', '0', '0', '0', '0', 'BAZOMBWA BELI FRANK'),
('09804', '2025-06-04', 15000, 12, 2000, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 49, 28, '2025-06-05', '2025-06-05', '2025-06-05', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('11416', '2025-05-31', 3000, 8, 400, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 34, 59, '2025-05-31', '2025-05-31', '0', '0', '0', '0', '0', 'NAN'),
('11973', '2025-05-28', 500, 6, 70, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 29, 50, '2025-05-28', '2025-05-28', '2025-05-28', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('12780', '2025-06-01', 30000, 15, 2500, 'Besoin de fonds roulement', '', 'Non', '', 'Comite', 36, 50, '2025-06-02', '2025-06-02', '2025-06-06', '0', '0', '0', '0', 'MATUNGA LUKOMBO Gervais'),
('14985', '2025-06-02', 8000, 12, 700, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'TMB', 'Assignation', 37, 39, '2025-06-02', '2025-06-02', '0', '0', '0', '0', '0', 'NAN'),
('15939', '2025-05-23', 4000, 10, 500, 'Besoin de fonds roulement', '', 'Oui,j''ai', 'MICROPOP S.A', 'Analyse', 16, 37, '2025-05-23', '2025-05-23', '2025-05-26', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('16424', '2025-06-05', 4000, 12, 500, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'Finca ', 'Analyse', 55, 47, '2025-06-06', '2025-06-06', '2025-06-06', '0', '0', '0', '0', 'BAZOMBWA BELI FRANK'),
('23401', '2025-05-26', 10000, 12, 800, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 25, 59, '2025-05-26', '2025-05-26', '2025-05-27', '0', '0', '0', '0', 'MUAMBA KAZADI MOISE'),
('33457', '2025-05-23', 8000, 12, 800, 'Investissement', '', 'Oui,j''avais', 'MICROPOP SA ', 'Analyse', 19, 54, '2025-05-23', '2025-05-23', '2025-05-27', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('35731', '2025-06-04', 500, 7, 50, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 44, 39, '2025-06-04', '2025-06-04', '0', '0', '0', '0', '0', 'NAN'),
('38625', '2025-05-24', 7000, 8, 800, 'Investissement', '', 'Non', '', 'Analyse', 20, 54, '2025-05-24', '2025-05-24', '2025-06-06', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('39100', '2025-06-09', 1200, 7, 150, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 56, 54, '2025-06-09', '2025-06-09', '0', '0', '0', '0', '0', 'NAN'),
('39620', '2025-06-04', 3500, 9, 350, 'Investissement', '', 'Non', '', 'Analyse', 43, 54, '2025-06-04', '2025-06-04', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('46437', '2025-05-22', 1500, 10, 400, 'Besoin de fonds roulement', '', 'Non', '', 'Comite', 14, 50, '2025-05-22', '2025-05-22', '2025-05-26', '0', '0', '0', '0', 'MATUNGA LUKOMBO Gervais'),
('51605', '2025-07-03', 500, 6, 100, 'Besoin de fonds roulement', '', 'Non', '', 'Comite', 59, 17, '2025-07-03', '2025-07-03', '2025-07-03', '2025-07-04', '0', '0', '0', 'MATUNGA LUKOMBO Gervais'),
('53837', '2025-06-03', 5000, 10, 700, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 40, 51, '2025-06-03', '2025-06-03', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('54122', '2025-06-04', 1500, 6, 250, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 46, 54, '2025-06-04', '2025-06-04', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('55012', '2025-06-11', 6000, 12, 500, 'Autres', 'Achat Parcelle', 'Non', '', 'Terminer', 58, 17, '2025-06-11', '2025-06-11', '2025-06-11', '2025-06-11', '2025-06-11', '2025-06-11', '2025-06-11', 'MATUNGA LUKOMBO Gervais'),
('55237', '2025-05-28', 3000, 12, 300, 'Investissement', '', 'Non', '', 'Assignation', 30, 44, '2025-05-28', '2025-05-28', '0', '0', '0', '0', '0', 'NAN'),
('56210', '2025-05-28', 2000, 10, 200, 'Investissement', '', 'Non', '', 'Analyse', 32, 54, '2025-05-28', '2025-05-28', '2025-06-06', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('58355', '2025-05-27', 2000, 10, 200, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 26, 50, '2025-05-27', '2025-05-27', '2025-05-27', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('59686', '2025-06-04', 3500, 8, 500, 'Investissement', '', 'Oui,j''avais', 'Micropop', 'Analyse', 47, 48, '2025-06-04', '2025-06-04', '2025-06-06', '0', '0', '0', '0', 'MANKWE MALAIKA CYNTHIA'),
('60198', '2025-06-06', 1500, 12, 180, 'Investissement', '', 'Oui,j''avais', 'Micropop', 'Analyse', 50, 48, '2025-06-06', '2025-06-06', '2025-06-06', '0', '0', '0', '0', 'MANKWE MALAIKA CYNTHIA'),
('64281', '2025-05-28', 3000, 12, 150, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 31, 50, '2025-05-28', '2025-05-28', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('66776', '2025-05-22', 5000, 8, 300, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 15, 48, '2025-05-22', '2025-05-22', '2025-05-26', '0', '0', '0', '0', 'MANKWE MALAIKA CYNTHIA'),
('69063', '2025-05-27', 5000, 12, 450, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'MICROPOP', 'Assignation', 27, 59, '2025-05-27', '2025-05-27', '0', '0', '0', '0', '0', 'NAN'),
('70495', '2025-06-06', 2500, 10, 200, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 53, 54, '2025-06-06', '2025-06-06', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('77829', '2025-05-26', 6000, 12, 400, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 24, 51, '2025-05-26', '2025-05-26', '2025-05-26', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('78069', '2015-05-23', 4000, 8, 500, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'FINCA ', 'Verification', 21, 51, '2025-05-24', '2025-05-24', '2025-05-26', '2025-07-04', '2025-07-04', '0', '0', 'MATUNGA LUKOMBO Gervais'),
('78641', '2025-05-31', 4000, 10, 250, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 35, 59, '2025-05-31', '2025-05-31', '0', '0', '0', '0', '0', 'NAN'),
('78984', '2015-05-23', 5000, 12, 1000, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'FINCA', 'Analyse', 22, 51, '2025-05-24', '2025-05-24', '2025-05-26', '0', '0', '0', '0', 'MATUNGA LUKOMBO Gervais'),
('83667', '2025-06-06', 20000, 8, 2500, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 54, 51, '2025-06-06', '2025-06-06', '2025-06-06', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN'),
('84812', '2009-01-01', 7000, 10, 800, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'MECREKIN', 'Analyse', 28, 51, '2025-05-27', '2025-05-27', '2025-05-27', '0', '0', '0', '0', 'NGOMA MWOL Rodrigue'),
('88721', '2025-05-23', 10000, 12, 1200, 'Investissement', '', 'Oui,j''ai', 'MICROPOP S.A', 'Analyse', 18, 54, '2025-05-23', '2025-05-23', '2025-05-26', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('89232', '2025-06-03', 5000, 12, 750, 'Besoin de fonds roulement', '', 'Oui,j''avais', 'MICROPOP', 'Assignation', 41, 59, '2025-06-03', '2025-06-03', '0', '0', '0', '0', '0', 'NAN'),
('91730', '2025-06-03', 15000, 12, 1500, 'Besoin de fonds roulement', '', 'Oui,j''ai', 'MICROPOP SA', 'Analyse', 42, 51, '2025-06-03', '2025-06-03', '2025-06-06', '0', '0', '0', '0', 'FUMUNGUMBA BIKEM Divine'),
('97984', '2025-06-09', 2000, 8, 300, 'Besoin de fonds roulement', '', 'Non', '', 'Assignation', 57, 51, '2025-06-09', '2025-06-09', '0', '0', '0', '0', '0', 'NAN'),
('98277', '2025-06-02', 3000, 10, 350, 'Besoin de fonds roulement', '', 'Non', '', 'Analyse', 38, 50, '2025-06-02', '2025-06-02', '2025-06-06', '0', '0', '0', '0', 'KABANGA BAYILA JONATHAN');

-- --------------------------------------------------------

--
-- Structure de la table `dossiercreditgl`
--

CREATE TABLE IF NOT EXISTS `dossiercreditgl` (
  `NumDossierGL` int(11) NOT NULL,
  `DateDossierGL` varchar(25) NOT NULL,
  `EtatDossierGL` varchar(20) NOT NULL,
  `DepotAvue` double NOT NULL,
  `CautionFinanciere` double NOT NULL,
  `TotalEpargne` double NOT NULL,
  `DernierPret` double NOT NULL,
  `PretSollicite` double NOT NULL,
  `PretAccorder` double NOT NULL,
  `FraisDossierTVA` double NOT NULL,
  `AssuranceGL` double NOT NULL,
  `SmsGl` double NOT NULL,
  `CarnetLivre` double NOT NULL,
  `TotalFraisGL` double NOT NULL,
  `CycleGL` int(11) NOT NULL,
  `IdMembreGL` int(11) NOT NULL,
  PRIMARY KEY (`NumDossierGL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `dossiercreditgl`
--

INSERT INTO `dossiercreditgl` (`NumDossierGL`, `DateDossierGL`, `EtatDossierGL`, `DepotAvue`, `CautionFinanciere`, `TotalEpargne`, `DernierPret`, `PretSollicite`, `PretAccorder`, `FraisDossierTVA`, `AssuranceGL`, `SmsGl`, `CarnetLivre`, `TotalFraisGL`, `CycleGL`, `IdMembreGL`) VALUES
(858437, '2025-06-18', 'Comite', -900, 1200, 300, 0, 500, 6000, 231, 25, 4.5, 1.5, 262, 1, 7412);

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
  `SexeG` varchar(15) NOT NULL,
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
  `AdresseG` varchar(50) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `garantcreditindividuel`
--

INSERT INTO `garantcreditindividuel` (`Id`, `NomG`, `PostNomG`, `PrenomG`, `EtatCivilG`, `SexeG`, `DateNaissanceG`, `TelephoneG`, `EmailG`, `TypePieceIdentite`, `NumCartePieceIdentite`, `NomsConjoint`, `TelephoneConjoint`, `RelationAvecClient`, `ProprieteMaison`, `ActiviteG`, `RevenuG`, `AdresseG`, `Province`, `IdClientD`, `NumDossierCre`, `ChiffreAffaireG`, `CmvG`, `ProfilBruteG`, `TotDepenseOpG`, `ProfilNetG`, `TotalAutresRevenusG`, `TotalDepensePriveG`, `CapacitePaiementG`, `ContratTravailG`, `BulletinPaiG`, `CarteServiceG`, `SalaireM1G`, `SalaireM2G`, `SalaireM3G`, `TotalAutresAvantagesG`, `SalaireMoyenG`) VALUES
(1, 'KATANGA', ' SAWANA', 'JACQUE', 'Celibataire', 'Masculin', '1990-12-23', '243818716274', 'NA', 'carte electeur', '0221200', 'NA', 'NA', 'Ami', 'Propietaire', 'IMPRIMERIE', '600', 'Q/ Livulu ,C/ lemba ,AV/ Kitoyi 24 bis', 'Kinshasa', 58, '55012', 0, 0, 0, 0, 0, 0, 0, 0, 'oui', 'oui', 'oui', 600, 600, 600, 100, 600);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `garantiecreditindividuel`
--

INSERT INTO `garantiecreditindividuel` (`Id`, `TypeGarantie`, `Description`, `AnneeFabrication`, `Etat`, `PrixAchat`, `ValeurMarchande`, `ClientGarant`, `IdClientD`, `NumDossierCre`) VALUES
(1, 'AI', 'Congelateur', 0, 'Bon-Etat', 0, 200, 'Client', 16, '15939'),
(2, 'CDTG', 'Caution cash', 0, 'Bon-Etat', 0, 12000, 'Client', 49, '09804'),
(3, 'BM', 'Forteils ', 2023, 'Bon-Etat', 400, 150, 'Client', 49, '09804'),
(4, 'BM', 'Television plasma insense 65', 2023, 'Bon-Etat', 1000, 200, 'Client', 49, '09804'),
(5, 'AI', 'Ordinateur', 0, 'Bon-Etat', 300, 250, 'Client', 58, '55012');

-- --------------------------------------------------------

--
-- Structure de la table `groupegl`
--

CREATE TABLE IF NOT EXISTS `groupegl` (
  `Id` varchar(500) NOT NULL,
  `NumeroGroupeCBS` int(11) NOT NULL,
  `NomGroupe` varchar(500) NOT NULL,
  `AdresseGroupe` varchar(500) NOT NULL,
  `ProvinceGroupe` varchar(500) NOT NULL,
  `JourReunionGroupe` varchar(200) NOT NULL,
  `HeureReunionGroupe` varchar(10) NOT NULL,
  `NumeroTelephoneGroupe` varchar(30) NOT NULL,
  `NbrHommeGroupe` int(11) NOT NULL,
  `NbrFemmeGroupe` int(11) NOT NULL,
  `NbrCycleGroupe` int(11) NOT NULL,
  `CategorieRisqueGroupe` varchar(200) NOT NULL,
  `PromoteurGroupe` int(11) NOT NULL,
  `SuperviseurGL` int(11) NOT NULL,
  `BrancheGroupe` varchar(100) NOT NULL,
  `EtatGroupGL` varchar(50) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `groupegl`
--

INSERT INTO `groupegl` (`Id`, `NumeroGroupeCBS`, `NomGroupe`, `AdresseGroupe`, `ProvinceGroupe`, `JourReunionGroupe`, `HeureReunionGroupe`, `NumeroTelephoneGroupe`, `NbrHommeGroupe`, `NbrFemmeGroupe`, `NbrCycleGroupe`, `CategorieRisqueGroupe`, `PromoteurGroupe`, `SuperviseurGL`, `BrancheGroupe`, `EtatGroupGL`) VALUES
('10945GL', 0, 'MAPASA', 'AV/ MBOKULU 8 BIS ,Lemba Livulu', 'Kinshasa', 'Mardi,Vendredi', '12h', '243818716274', 2, 2, 1, 'Bas(A)80-100%', 17, 21, 'Victoire', 'Comite');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `inforesidenceclientd`
--

INSERT INTO `inforesidenceclientd` (`Id`, `idclientD`, `ResidenceActueldepuis`, `Propriete`, `DateVisite`, `HeureVisite`, `NomsBailleurs`, `NumDossierCredit`) VALUES
(1, 16, 2, 'locataire', '2025-06-05', '14h30', 'Depams', '15939'),
(2, 15, 2024, 'locataire', '2025-06-03', '10h', 'Jeff Fumba', '66776'),
(3, 49, 2021, 'locataire', '2025-06-04', '11 h 20', 'DITUTALA RANDY ', '09804'),
(4, 47, 2022, 'proprietaire', '2025-06-03', '9h', 'NA', '59686'),
(5, 58, 2020, 'locataire', '2025-06-10', '12:00', 'KATANGA SAWANA JACQUE', '55012');

-- --------------------------------------------------------

--
-- Structure de la table `informationfinanciereclientgl`
--

CREATE TABLE IF NOT EXISTS `informationfinanciereclientgl` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IdClientGL` int(11) NOT NULL,
  `IdDossierClientGL` int(11) NOT NULL,
  `TotalApayerGL` double NOT NULL,
  `EpargneGL` double NOT NULL,
  `RemboursementGL` double NOT NULL,
  `TotalRemboursementGL` double NOT NULL,
  `EpargneBruteGL` double NOT NULL,
  `MontantPretGL` double NOT NULL,
  `CommentaireInfoFGL` varchar(500) NOT NULL,
  `cycleGL` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `informationfinanciereclientgl`
--

INSERT INTO `informationfinanciereclientgl` (`Id`, `IdClientGL`, `IdDossierClientGL`, `TotalApayerGL`, `EpargneGL`, `RemboursementGL`, `TotalRemboursementGL`, `EpargneBruteGL`, `MontantPretGL`, `CommentaireInfoFGL`, `cycleGL`) VALUES
(1, 7412, 858437, 130, 27.72500000000001, 102.27499999999999, 613.65, 300, 500, 'nanana', 1),
(3, 6563, 705942, 250, 157.9525, 92.04750000000001, 552.2850000000001, 450, 450, 'toto', 0),
(4, 7356, 63477, 300, 218.18, 81.82000000000001, 490.92, 600, 400, 'na', 0);

-- --------------------------------------------------------

--
-- Structure de la table `membreglquitte`
--

CREATE TABLE IF NOT EXISTS `membreglquitte` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DateQuitte` varchar(50) NOT NULL,
  `NomsClientGLQuite` varchar(500) NOT NULL,
  `CycleQuitte` int(11) NOT NULL,
  `MontantEpargneM` double NOT NULL,
  `RaisonSocial` varchar(500) NOT NULL,
  `NumGroupeGL` varchar(500) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `membreglquitte`
--

INSERT INTO `membreglquitte` (`Id`, `DateQuitte`, `NomsClientGLQuite`, `CycleQuitte`, `MontantEpargneM`, `RaisonSocial`, `NumGroupeGL`) VALUES
(1, '2025-07-02', 'EWINE POLO JACQUE', 1, 300, 'NA', '10945GL'),
(2, '2025-07-02', 'KASONGO WAWA Yvette', 1, 450, 'Malade', '10945GL'),
(3, '2025-07-02', 'KAYEMBE SOSA ANNE', 1, 600, 'NA', '10945GL');

-- --------------------------------------------------------

--
-- Structure de la table `membregroupe`
--

CREATE TABLE IF NOT EXISTS `membregroupe` (
  `IdClientMembre` int(11) NOT NULL,
  `NumClientMembreCbs` int(11) NOT NULL,
  `NomMembreGroupe` varchar(100) NOT NULL,
  `PostNomMembreGroupe` varchar(100) DEFAULT NULL,
  `PreNomMembreGroupe` varchar(100) NOT NULL,
  `TelephoneMembreGroupe` varchar(50) NOT NULL,
  `SexeMembreGroupe` varchar(20) NOT NULL,
  `AdresseMembreGroupe` varchar(500) NOT NULL,
  `CategorieMembreGroupe` varchar(100) NOT NULL,
  `PhotoMembreGroupe` varchar(500) NOT NULL,
  `IdGroupeLisanga` varchar(500) NOT NULL,
  `etatCivilCliLisanga` varchar(100) NOT NULL,
  `DateNaissanceMembreGroupe` varchar(100) NOT NULL,
  PRIMARY KEY (`IdClientMembre`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `membregroupe`
--

INSERT INTO `membregroupe` (`IdClientMembre`, `NumClientMembreCbs`, `NomMembreGroupe`, `PostNomMembreGroupe`, `PreNomMembreGroupe`, `TelephoneMembreGroupe`, `SexeMembreGroupe`, `AdresseMembreGroupe`, `CategorieMembreGroupe`, `PhotoMembreGroupe`, `IdGroupeLisanga`, `etatCivilCliLisanga`, `DateNaissanceMembreGroupe`) VALUES
(2552, 0, 'EWINE', 'POLO', 'JACQUE', '243818716274', 'Masculin', 'AV/ MBOKULU 8 BIS ,Lemba Livulu', 'Membre', 'WIN_20250613_11_03_24_Pro.jpg', '0', 'Celibataire', '1987-12-03'),
(6563, 0, 'KASONGO', 'WAWA', 'Yvette', '243997878547', 'Feminin', 'Q/ Livulu ,C/ lemba ,AV/ Kitoyi 24 bis', 'Secretaire', 'ASELE MBATU_0001.jpg', '0', 'Marie', '1980-11-15'),
(7356, 0, 'KAYEMBE', 'SOSA', 'ANNE', '243897870555', 'Feminin', 'AV/ MBOKULU 8 BIS ,Lemba Livulu', 'Tresorier(e)', 'CLIENTE AGNE.jpg', '0', 'Marie', '1980-12-10'),
(7412, 0, 'NDEKE', 'IYOMAYI', 'Carmi', '243818716274', 'Masculin', 'Q/ Livulu ,C/ lemba ,AV/ Kitoyi 24 bis', 'President(e)', 'carmiok.jpg', '10945GL', 'Celibataire', '1994-12-23');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `proposition`
--

INSERT INTO `proposition` (`Id`, `ProduitCreditProp`, `MontantProp`, `EcheanceProp`, `NumDossierCre`, `commentaireProp`) VALUES
(1, 'Credit LISUNGI 2 (1001 - 5000)', 1000, 6, '15939', 'Le client a payÃ© avec 0 jour retard pour le cycle passÃ©'),
(2, 'Credit LISUNGI 2 (1001 - 5000)', 2000, 8, '66776', 'La proposition est faite sur les garanties materiels du client ainsi que la capacite de paiement declare par la cliente'),
(3, 'Credit LISUNGI 2 (1001 - 5000)', 3000, 12, '55012', 'COMMMMMMM PROP'),
(4, 'Credit LISUNGI 1 (501 - 1000)', 1000, 6, '78069', 'NA');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

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
(9, 'KASONGO KABA ELIE', '243815478952', 'Ami', 58, '55012'),
(10, 'SAKANA SOMO NAOMIE', '243899985652', 'GRANDE SOEUR', 58, '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `revenuconjoint`
--

INSERT INTO `revenuconjoint` (`Id`, `IdClientD`, `LibelleSociete`, `Adresse`, `Poste`, `SalaireNet`, `Ancienete`, `Commentaire`, `NumDossierCredit`) VALUES
(1, 16, 'Na', 'Na', 'Na', '0', '0', 'Na', '15939'),
(2, 15, 'NA', 'NA', 'NA', '0', '0', 'NA', '66776'),
(3, 49, 'Na', 'Na', 'Na', '0', '0', 'Na', '09804'),
(4, 47, 'NA', 'NA', 'NA', '0', '0', 'NA', '59686'),
(5, 58, 'NA', 'NA', 'NA', '0', '0', 'NA', '55012');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `risque`
--

INSERT INTO `risque` (`IdPropositionRisque`, `NumDossierCre`, `NomsResponsable`, `AppreciationRisque`, `CommentaireRisque`) VALUES
(1, '55012', 'KAZU Darly', 'Passable', 'com');

-- --------------------------------------------------------

--
-- Structure de la table `risquegl`
--

CREATE TABLE IF NOT EXISTS `risquegl` (
  `IdPropositionRisquegl` int(11) NOT NULL AUTO_INCREMENT,
  `NumGroupeLisanga` varchar(500) NOT NULL,
  `CycleGroupeGL` int(11) NOT NULL,
  `NomsResponsablegl` varchar(50) NOT NULL,
  `AppreciationRisquegl` varchar(50) NOT NULL,
  `CommentaireRisquegl` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`IdPropositionRisquegl`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `risquegl`
--

INSERT INTO `risquegl` (`IdPropositionRisquegl`, `NumGroupeLisanga`, `CycleGroupeGL`, `NomsResponsablegl`, `AppreciationRisquegl`, `CommentaireRisquegl`) VALUES
(2, '10945GL', 1, 'KAZU Darly', 'Passable', 'NANANANA');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`Iduser`, `NomsUser`, `Telephone`, `Email`, `Statut`, `Login`, `MotPass`, `IdBranche`, `ProfilUser`, `NumCbsU`) VALUES
(17, 'MATUNGA LUKOMBO Gervais', '243899877041', 'matungalukombo@micropop.cd', 'Actif', 'gervais', 'Micropop@2025', 1, 'CA', 115171),
(18, 'NDEKE IYOMAYI Carmi', '243818716274', 'ndekeiyomayi@micropop.cd', 'Actif', 'carmi', 'Micropop@2025', 1, 'ADMIN', 0),
(19, 'BILONDA KONDO Manuella', '243899827042', 'bilondakondo@micropop.cd', 'Actif', 'manuella', 'Micropop@2025', 5, 'SC', 0),
(20, 'FUMULAMBA BOPOL DIKUNDIA', '243818716245', 'dikundafumulamba@micropop.cd', 'Actif', 'bopol', 'Micropop@2025', 1, 'BM', 0),
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
(64, 'BAKAMBALA EPATE RUDDY', '0', 'NA', 'Actif', 'ruddy', '1234', 1, 'CI', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
