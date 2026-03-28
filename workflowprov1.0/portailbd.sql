-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Mar 25 Novembre 2025 à 08:48
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `portailbd`
--

-- --------------------------------------------------------

--
-- Structure de la table `agence`
--

CREATE TABLE IF NOT EXISTS `agence` (
  `IDagence` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleAgence` varchar(500) NOT NULL,
  `AdresseAgence` varchar(500) NOT NULL,
  `Telephone` varchar(25) NOT NULL,
  `idProvince` int(11) NOT NULL,
  PRIMARY KEY (`IDagence`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `agence`
--

INSERT INTO `agence` (`IDagence`, `LibelleAgence`, `AdresseAgence`, `Telephone`, `idProvince`) VALUES
(7, 'Agence de Victoire', 'Kalamu,Matonge 19 bus A', '(+243)817000061', 8),
(8, 'Agence Ozone', '02 av NGOLA Q/MUSEY COMMUNE NGALIEMA', '(+243)817000061', 8),
(9, 'Agence de Goma', 'Ville de Goma, Commune de Goma, Q/ Les Volcans, Av. du Port 6', '(+243)817000061', 9),
(10, 'Direction Generale', 'Kalamu,Victoire 19A / MATONGE', '(+243)817000061', 8),
(11, 'Agence de Lubumbashi', '----', '(+243)817000061', 10),
(12, 'Agence de Masina', 'NA', '0', 0);

-- --------------------------------------------------------

--
-- Structure de la table `dossieradmin`
--

CREATE TABLE IF NOT EXISTS `dossieradmin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `LibelleDocument` varchar(500) NOT NULL,
  `Domaine` varchar(500) NOT NULL,
  `Fichier` varchar(500) NOT NULL,
  `TypeDomaineDoc` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Contenu de la table `dossieradmin`
--

INSERT INTO `dossieradmin` (`ID`, `LibelleDocument`, `Domaine`, `Fichier`, `TypeDomaineDoc`) VALUES
(16, 'MANUEL D_AUDIT INTERNE V.2.0723', 'MCP 5_ Audit', 'MANUEL D_AUDIT INTERNE V.2.0723.pdf', 'Public'),
(17, 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT', 'MCP 6_Operations', 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT V.1.0324.pdf', 'Public'),
(18, 'MANUEL DES POLITIQUES ENVIRONNEMENTAL ET SOCIAL V.1.0324', 'MCP0_Gestion de la Performance Sociale', 'MANUEL DES POLITIQUES ENVIRONNEMENTAL ET SOCIAL V.1.0324.pdf', 'Public'),
(19, 'PLAN DE CONTINUITE DES ACTIVITES 2024', 'MCP0_Gestion de la Performance Sociale', 'PLAN DE CONTINUITE DES ACTIVITES 2024.pdf', 'Public'),
(20, 'POLITIQUE AML ET KYC 2024', 'MCP 3_Conformite', 'POLITIQUE AML ET KYC V.1.0124.pdf', 'Public'),
(21, 'REGLEMENT D_ENTREPRISE V.2.0324', 'MCP0_Gestion de la Performance Sociale', 'REGLEMENT D_ENTREPRISE V.2.0324.pdf', 'Public'),
(22, 'PROCEDURE DE GESTION DES RECLAMATIONS CLIENTS V.1.0324', 'MCP0_Gestion de la Performance Sociale', 'PROCEDURE DE GESTION DES RECLAMATIONS CLIENTS V.1.0324.pdf', 'Public'),
(25, 'MANUEL DE POLITIQUES ET PROCEDURES RH', 'MCP 2_Ressources Humaines', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', 'Public'),
(27, 'MANUEL DE PROCEDURES COMPTABLES ET FINANCIERES V.2.0723', 'MCP 1_Administration et Finance', 'MANUEL DE PROCEDURES COMPTABLES ET FINANCIERES V.2.0723.pdf', 'Public'),
(28, 'MANUEL DES POLITIQUES DE CREDIT DE GROUPE V.3.0524', 'MCP 6_Operations', 'MANUEL DES POLITIQUES DE CREDIT DE GROUPE V.3.0524.pdf', 'Public'),
(29, 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524', 'MCP 6_Operations', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', 'Public'),
(30, 'POLITIQUE DE GESTION DES PROCEDURES', 'MCP 3_Conformite', 'CONFORMITE POLITIQUE DE GESTION DES PROCEDURES_0001.pdf', 'Public');

-- --------------------------------------------------------

--
-- Structure de la table `tacheuser`
--

CREATE TABLE IF NOT EXISTS `tacheuser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `nomsuserconnect` varchar(500) NOT NULL,
  `agenceuser` varchar(500) NOT NULL,
  `profiluser` varchar(500) NOT NULL,
  `documentvu` varchar(500) NOT NULL,
  `datevis` varchar(500) NOT NULL,
  `heurevue` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=198 ;

--
-- Contenu de la table `tacheuser`
--

INSERT INTO `tacheuser` (`ID`, `nomsuserconnect`, `agenceuser`, `profiluser`, `documentvu`, `datevis`, `heurevue`) VALUES
(120, 'NDEKE IYOMAYI CARMI', 'Agence de Victoire', 'Administrateur Systeme', 'MANUEL DES POLITIQUES ENVIRONNEMENTAL ET SOCIAL V.1.0324.pdf', '2025-07-13', '00:57:23.075'),
(121, 'NDEKE IYOMAYI CARMI', 'Agence de Victoire', 'Administrateur Systeme', 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT V.1.0324.pdf', '2025-07-13', '00:57:49.200'),
(122, 'admin', 'Direction Generale', 'Hyper-Utilisateur', 'POLITIQUE AML ET KYC V.1.0124.pdf', '2025-07-13', '01:08:23.977'),
(123, 'KABUYA MUKUNA Rachel', 'Agence de Victoire', 'Utilisateur', 'MANUEL DE PROCEDURES COMPTABLES ET FINANCIERES V.2.0723.pdf', '2025-08-14', '18:47:33.442'),
(124, 'SEFU MADIKA Yves', 'Agence de Lubumbashi', 'Administrateur Systeme', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-08-15', '07:36:10.589'),
(125, 'KABUYA MUKUNA Rachel', 'Agence de Victoire', 'Utilisateur', 'MANUEL DES POLITIQUES ENVIRONNEMENTAL ET SOCIAL V.1.0324.pdf', '2025-08-15', '09:07:18.944'),
(126, 'NZEBA KAZADI FADIE', 'Agence de Lubumbashi', 'Utilisateur', 'MANUEL DE PROCEDURES COMPTABLES ET FINANCIERES V.2.0723.pdf', '2025-08-18', '13:52:59.906'),
(127, 'NZEBA KAZADI FADIE', 'Agence de Lubumbashi', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-08-18', '16:40:00.660'),
(128, 'MVOLOKO NGANA MERDI', 'Agence Ozone', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-08-18', '16:59:28.344'),
(129, 'MVOLOKO NGANA MERDI', 'Agence Ozone', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT V.1.0324.pdf', '2025-08-18', '17:00:17.070'),
(130, 'NGAMALA MUTOMBO ELYSEE', 'Agence Ozone', 'Utilisateur', 'MANUEL DE PROCEDURES COMPTABLES ET FINANCIERES V.2.0723.pdf', '2025-08-18', '17:14:40.558'),
(131, 'KABAMBA MUKADI  REBECCA', 'Agence Ozone', 'Utilisateur', 'PROCEDURE DE GESTION DES RECLAMATIONS CLIENTS V.1.0324.pdf', '2025-08-18', '17:16:21.517'),
(132, 'ISASI NDEKONO FRANKLIN', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-08-19', '21:18:46.166'),
(133, 'ISASI NDEKONO FRANKLIN', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-08-19', '21:20:13.787'),
(134, 'BONOYA LENGWA Aristote', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-08-19', '22:24:32.970'),
(135, 'MVOLOKO NGANA MERDI', 'Agence Ozone', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT V.1.0324.pdf', '2025-08-21', '14:58:29.547'),
(136, 'MALUBUNGI MUTOMBO  Fiston Pascal', 'Agence de Lubumbashi', 'Utilisateur', 'MANUEL D_AUDIT INTERNE V.2.0723.pdf', '2025-08-22', '13:32:14.909'),
(137, 'MALUBUNGI MUTOMBO  Fiston Pascal', 'Agence de Lubumbashi', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-08-22', '13:34:27.665'),
(138, 'NGAMALA MUTOMBO ELYSEE', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-08-22', '15:33:58.083'),
(139, 'MBIYAVANGA NKOSI ISMAEL', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-08-27', '14:33:47.986'),
(140, 'NGAMALA MUTOMBO ELYSEE', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-08-27', '14:37:14.208'),
(141, 'KAKALA Ruth', 'Agence de Victoire', 'Utilisateur', 'MANUEL D_AUDIT INTERNE V.2.0723.pdf', '2025-08-28', '12:35:29.881'),
(142, 'MBAYA BIBI REBECCA', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-08-28', '13:57:57.742'),
(143, 'BOYINSABIE NKUMU Bob', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT V.1.0324.pdf', '2025-08-28', '14:11:23.177'),
(144, 'NTEKA ONGAO JEAN VOLDI', 'Agence de Masina', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-08-28', '14:15:13.068'),
(145, 'BOYINSABIE NKUMU Bob', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT V.1.0324.pdf', '2025-08-28', '14:17:51.067'),
(146, 'SHALABA ATSIR Glody', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-08-28', '14:52:06.298'),
(147, 'MUSEDJU MUBAKA BENI', 'Agence de Masina', 'Utilisateur', 'POLITIQUE AML ET KYC V.1.0124.pdf', '2025-08-28', '15:25:04.049'),
(148, 'MUSHIYA TSHIBANGU LEA', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-08-28', '15:50:17.125'),
(149, 'BENESHA MUPINGANYI GAYLORD', 'Agence de Masina', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-08-28', '16:06:40.190'),
(150, 'FUNZU MOKE FRANCIS', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT V.1.0324.pdf', '2025-08-28', '21:06:54.345'),
(151, 'BUNGU MVULA  HORDY', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT V.1.0324.pdf', '2025-08-28', '21:39:47.392'),
(152, 'BUNGU MVULA  HORDY', 'Agence de Masina', 'Utilisateur', 'POLITIQUE AML ET KYC V.1.0124.pdf', '2025-08-28', '21:41:00.317'),
(153, 'FUNZU MOKE FRANCIS', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-08-28', '21:42:14.780'),
(154, 'BOYINSABIE NKUMU Bob', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT V.1.0324.pdf', '2025-08-29', '14:21:40.803'),
(155, 'MUSEDJU MUBAKA BENI', 'Agence de Masina', 'Utilisateur', 'PROCEDURE DE GESTION DES RECLAMATIONS CLIENTS V.1.0324.pdf', '2025-08-30', '09:23:35.513'),
(156, 'MUSEDJU MUBAKA BENI', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT V.1.0324.pdf', '2025-08-30', '09:25:20.838'),
(157, 'NDEKE IYOMAYI CARMI', 'Agence de Victoire', 'Administrateur Systeme', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-08-30', '23:45:53.973'),
(158, 'KAMANYULA KALUME Bertin', 'Agence de Victoire', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT V.1.0324.pdf', '2025-09-01', '15:51:09.688'),
(159, 'NGAMALA MUTOMBO ELYSEE', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-09-02', '11:34:04.449'),
(160, 'KANDA KAPINGA HELENE', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-09-02', '12:42:32.109'),
(161, 'BOYINSABIE NKUMU Bob', 'Agence de Masina', 'Utilisateur', 'PLAN DE CONTINUITE DES ACTIVITES 2024.pdf', '2025-09-02', '13:10:25.157'),
(162, 'BOYINSABIE NKUMU Bob', 'Agence de Masina', 'Utilisateur', 'POLITIQUE AML ET KYC V.1.0124.pdf', '2025-09-02', '13:13:26.755'),
(163, 'BOYINSABIE NKUMU Bob', 'Agence de Masina', 'Utilisateur', 'MANUEL D_AUDIT INTERNE V.2.0723.pdf', '2025-09-02', '13:15:39.751'),
(164, 'BOYINSABIE NKUMU Bob', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-09-02', '13:16:19.549'),
(165, 'BOYINSABIE NKUMU Bob', 'Agence de Masina', 'Utilisateur', 'MANUEL DE PROCEDURES COMPTABLES ET FINANCIERES V.2.0723.pdf', '2025-09-02', '13:17:08.159'),
(166, 'KANDA KAPINGA HELENE', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-09-03', '17:00:21.273'),
(167, 'KANDA KAPINGA HELENE', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-09-04', '16:16:47.721'),
(168, 'NTEKA ONGAO JEAN VOLDI', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-09-08', '06:49:04.954'),
(169, 'NTEKA ONGAO JEAN VOLDI', 'Agence de Masina', 'Utilisateur', 'MANUEL DE PROCEDURES COMPTABLES ET FINANCIERES V.2.0723.pdf', '2025-09-08', '06:52:29.637'),
(170, 'BONOYA LENGWA Aristote', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-09-08', '12:17:55.900'),
(171, 'KADAKA OMAR', 'Agence de Masina', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES DE RECOUVREMENT V.1.0324.pdf', '2025-09-18', '12:34:27.492'),
(172, 'KADAKA OMAR', 'Agence de Masina', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-09-18', '12:35:09.017'),
(173, 'KADAKA OMAR', 'Agence de Masina', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-09-18', '13:12:36.474'),
(174, 'MANKWE CYNTHIAN', 'Agence de Victoire', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-09-22', '08:41:02.221'),
(175, 'MANKWE CYNTHIAN', 'Agence de Victoire', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-09-22', '10:30:31.009'),
(176, 'BONOYA LENGWA Aristote', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-09-22', '18:44:17.214'),
(177, 'BONOYA LENGWA Aristote', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT DE GROUPE V.3.0524.pdf', '2025-09-22', '18:49:06.075'),
(178, 'BONOYA LENGWA Aristote', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-09-22', '18:49:11.875'),
(179, 'MBIKAYI DESHA Rabbi', 'Direction Generale', 'Hyper-Utilisateur', 'CONFORMITE POLITIQUE DE GESTION DES PROCEDURES_0001.pdf', '2025-09-24', '09:38:05.391'),
(180, 'BONOYA LENGWA Aristote', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-09-29', '11:04:57.535'),
(181, 'MBIYAVANGA NKOSI ISMAEL', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-10-07', '14:52:50.009'),
(182, 'MUAMBA KAZADI  MOISE', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-10-16', '14:27:07.691'),
(183, 'NZEBA KAZADI FADIE', 'Agence de Lubumbashi', 'Utilisateur', 'MANUEL DE POLITIQUES ET PROCEDURES RH.pdf', '2025-10-18', '09:16:48.409'),
(184, 'NZEBA KAZADI FADIE', 'Agence de Lubumbashi', 'Utilisateur', 'MANUEL DE PROCEDURES COMPTABLES ET FINANCIERES V.2.0723.pdf', '2025-10-18', '09:21:03.599'),
(185, 'NZEBA KAZADI FADIE', 'Agence de Lubumbashi', 'Utilisateur', 'MANUEL DE PROCEDURES COMPTABLES ET FINANCIERES V.2.0723.pdf', '2025-10-18', '09:43:44.170'),
(186, 'NZEBA KAZADI FADIE', 'Agence de Lubumbashi', 'Utilisateur', 'MANUEL D_AUDIT INTERNE V.2.0723.pdf', '2025-10-18', '09:48:09.091'),
(187, 'KADAKA OMAR', 'Agence de Masina', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-10-20', '16:33:52.912'),
(188, 'MBIYAVANGA NKOSI ISMAEL', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-10-29', '17:24:54.177'),
(189, 'MUAMBA KAZADI  MOISE', 'Agence Ozone', 'Utilisateur', 'CONFORMITE POLITIQUE DE GESTION DES PROCEDURES_0001.pdf', '2025-11-03', '16:27:03.719'),
(190, 'MUAMBA KAZADI  MOISE', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES ENVIRONNEMENTAL ET SOCIAL V.1.0324.pdf', '2025-11-03', '16:31:27.527'),
(191, 'MUAMBA KAZADI  MOISE', 'Agence Ozone', 'Utilisateur', 'REGLEMENT D_ENTREPRISE V.2.0324.pdf', '2025-11-03', '16:34:19.468'),
(192, 'MUAMBA KAZADI  MOISE', 'Agence Ozone', 'Utilisateur', 'REGLEMENT D_ENTREPRISE V.2.0324.pdf', '2025-11-03', '16:36:50.337'),
(193, 'MUAMBA KAZADI  MOISE', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-11-03', '16:44:46.432'),
(194, 'MBIYAVANGA NKOSI ISMAEL', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-11-07', '16:26:04.144'),
(195, 'MBIYAVANGA NKOSI ISMAEL', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-11-07', '16:34:17.655'),
(196, 'MBIKAYI DESHA Rabbi', 'Direction Generale', 'Hyper-Utilisateur', 'POLITIQUE AML ET KYC V.1.0124.pdf', '2025-11-13', '12:42:06.258'),
(197, 'KANDA KAPINGA HELENE', 'Agence Ozone', 'Utilisateur', 'MANUEL DES POLITIQUES DE CREDIT INDIVIDUEL V.3.0524.pdf', '2025-11-24', '10:35:49.313');

-- --------------------------------------------------------

--
-- Structure de la table `user_`
--

CREATE TABLE IF NOT EXISTS `user_` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NomsU` varchar(50) NOT NULL,
  `IdAgence` int(11) NOT NULL,
  `Sexe` varchar(50) NOT NULL,
  `CodeLogin` varchar(50) NOT NULL,
  `PassWord` varchar(50) NOT NULL,
  `Profil` varchar(50) NOT NULL,
  `EtatUser` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=339 ;

--
-- Contenu de la table `user_`
--

INSERT INTO `user_` (`ID`, `NomsU`, `IdAgence`, `Sexe`, `CodeLogin`, `PassWord`, `Profil`, `EtatUser`) VALUES
(160, 'NDEKE IYOMAYI CARMI', 7, 'Masculin', 'carmin', '1234', 'Administrateur Systeme', 'Actif'),
(161, 'MANENGA LUKOMBO NICK', 10, 'Masculin', 'nickm', 'VERCINGETORIX2023', 'Hyper-Utilisateur', 'Actif'),
(162, 'MAKAMBA SENGA Jean', 7, 'Masculin', 'jeanm', '2025', 'Utilisateur', 'Actif'),
(163, 'LENGI LENGA MOISE', 7, 'Masculin', 'moise', '2025', 'Administrateur Systeme', 'Actif'),
(164, 'KABISA BALEJI JONATHAN', 7, 'Masculin', 'jonathank', '1234', 'Administrateur Systeme', 'Actif'),
(165, 'RUVUNANGIZA AMANI Sandra', 10, 'Feminin', 'sandra', '1234', 'Codir', 'Actif'),
(166, 'MBIKAYI DESHA Rabbi', 10, 'Masculin', 'rabbi', '1234', 'Hyper-Utilisateur', 'Actif'),
(167, 'SEFU MADIKA Yves', 11, 'Masculin', 'yves', '1234', 'Administrateur Systeme', 'Actif'),
(168, 'CHAMBWIRE Jean', 10, 'Masculin', 'jeanch', '1234', 'Administrateur Systeme', 'Actif'),
(169, 'BONSWA LYRONNE', 10, 'Feminin', 'lyronne', '1234', 'Administrateur Systeme', 'Actif'),
(170, 'admin', 10, 'Masculin', 'adm', '2025', 'Hyper-Utilisateur', 'Actif'),
(171, 'BALEKELAYI KABISEKELE CEDRICK', 11, 'Masculin', 'cedrick-b', '1234', 'Utilisateur', 'Actif'),
(172, 'BANZA MULONGO LINA', 11, 'Feminin', 'lina-b', '1234', 'Utilisateur', 'Actif'),
(173, 'CIMBEY KATAMBWA CHRISTIAN', 11, 'Masculin', 'christian-c', '1234', 'Utilisateur', 'Actif'),
(174, 'ILUNGA KASAU EMERY', 11, 'Masculin', 'emery-i', '1234', 'Utilisateur', 'Actif'),
(175, 'ILUNGA TUKUFUTE STANISLAS', 11, 'Masculin', 'stanislas-i', '1234', 'Utilisateur', 'Actif'),
(176, 'KAHENGA LUNIA VICTOIRE', 11, 'Masculin', 'victoire-k', '1234', 'Utilisateur', 'Actif'),
(177, 'KANKU MULUMBA JEEF', 11, 'Masculin', 'jeef-k', '1234', 'Utilisateur', 'Actif'),
(178, 'KASEKA KABEYA GRACIA', 11, 'Feminin', 'gracia-k', '1234', 'Utilisateur', 'Actif'),
(179, 'KATENDE TSHIVUADI Mike', 11, 'Masculin', 'mike-k', '1234', 'Utilisateur', 'Actif'),
(180, 'KIALA MAYISANDA WILFRID', 11, 'Masculin', 'wilfrid-k', '1234', 'Utilisateur', 'Actif'),
(181, 'KIALA MAYISANDA WILFRID', 11, 'Masculin', 'wilfrid-m', '1234', 'Utilisateur', 'Actif'),
(182, 'KIPULUKA REHEMA HELGA', 11, 'Masculin', 'helga-r', '1234', 'Utilisateur', 'Actif'),
(183, 'KITENGE ZAINA ESTELLE', 11, 'Feminin', 'estelle-z', '1234', 'Utilisateur', 'Actif'),
(184, 'KOYO NGANGU AICHA', 11, 'Feminin', 'aicha-k', '1234', 'Utilisateur', 'Actif'),
(185, 'KUMAMBANGE NDAMBO Michel', 11, 'Masculin', 'michelk', '1234', 'Utilisateur', 'Actif'),
(186, 'LUKUSA KANTU MWABI ROGER', 11, 'Masculin', 'roger-l', '1234', 'Utilisateur', 'Actif'),
(187, 'LUSAMAKI KUNGA ISAAC', 11, 'Masculin', 'isaac-l', '1234', 'Utilisateur', 'Actif'),
(188, 'MALUBUNGI MUTOMBO  Fiston Pascal', 11, 'Masculin', 'pascal-f', '1234', 'Utilisateur', 'Actif'),
(189, 'MASA BALIBANGA  JEAN PETIT', 11, 'Masculin', 'jean-p', '1234', 'Utilisateur', 'Actif'),
(190, 'MASHINDA NAKET Cathy', 11, 'Feminin', 'cathy-m', '1234', 'Utilisateur', 'Actif'),
(191, 'MATUNGULU KAMUANGA  PASCAL', 11, 'Masculin', 'pascal-m', '1234', 'Utilisateur', 'Actif'),
(192, 'MAZU MANGIEKUN Richet ', 11, 'Masculin', 'richet-m', '1234', 'Utilisateur', 'Actif'),
(193, 'MBAYA MUJINGA REBECCA', 11, 'Feminin', 'rebecca-m', '1234', 'Utilisateur', 'Actif'),
(194, 'MBAYO KILONDA JENNY-CAROL', 11, 'Feminin', 'jenny-c', '1234', 'Utilisateur', 'Actif'),
(195, 'MBOLELA KABEYA RUDDY', 11, 'Masculin', 'ruddy-m1', '1234', 'Utilisateur', 'Actif'),
(196, 'MBUYI WA MBUYI Patient', 11, 'Masculin', 'patientm', '1234', 'Utilisateur', 'Actif'),
(197, 'MUBANGA DJO', 11, 'Masculin', 'djo-m', '1234', 'Utilisateur', 'Actif'),
(198, 'MUKANDILA LUMBALA Nathan', 11, 'Masculin', 'nathanm', '1234', 'Utilisateur', 'Actif'),
(199, 'MUKESA UMBALO Thierry', 11, 'Masculin', 'thierry-m', '1234', 'Utilisateur', 'Actif'),
(200, 'MUMBA WA MUMBA Thierry', 11, 'Masculin', 'thierry1-m', '1234', 'Utilisateur', 'Actif'),
(201, 'MUTUNDU KALEMBE ANDRE', 11, 'Masculin', 'andree-k', '1234', 'Utilisateur', 'Actif'),
(202, 'MUTUNDU KALEMBE ANDRE', 11, 'Masculin', 'andree-m', '1234', 'Utilisateur', 'Actif'),
(203, 'MWADI KAPENGA DEMAMAN', 11, 'Masculin', 'demaman-m', '1234', 'Utilisateur', 'Actif'),
(204, 'MWANGE TUKUZU SARAH', 11, 'Feminin', 'sarah-m', '1234', 'Utilisateur', 'Actif'),
(205, 'NDAYA KABEYA Berthe', 11, 'Feminin', 'berthe-n', '1234', 'Utilisateur', 'Actif'),
(206, 'NGALULA MAMBA LIGHT', 11, 'Masculin', 'light-n', '1234', 'Utilisateur', 'Actif'),
(207, 'NGOLO KABENGELE LAURE', 11, 'Masculin', 'laure-n', '1234', 'Utilisateur', 'Actif'),
(208, 'NGOY MBELE JosuÃ©', 11, 'Masculin', 'josue-m', '1234', 'Utilisateur', 'Actif'),
(209, 'NGOY MBUYU DAVID', 11, 'Masculin', 'david-n', '1234', 'Utilisateur', 'Actif'),
(210, 'NKONGOLO KALALA IRENE', 11, 'Masculin', 'irene-n', '1234', 'Utilisateur', 'Actif'),
(211, 'NSENGA KABILA CHARLOTTE', 11, 'Feminin', 'charlotte-n', '1234', 'Utilisateur', 'Actif'),
(212, 'NZEBA KAZADI FADIE', 11, 'Masculin', 'fadie-k', '1234', 'Utilisateur', 'Actif'),
(213, 'SEFU MADIKA YVES', 11, 'Masculin', 'yves-s', '1234', 'Administrateur Systeme', 'Actif'),
(214, 'SHIMBA ILUNGA Sarah', 11, 'Masculin', 'sarah-i', '1234', 'Utilisateur', 'Actif'),
(215, 'STAFF LUBUMBASHI', 11, 'Masculin', 'sup4', '1234', 'Utilisateur', 'Actif'),
(216, 'TAMBWE KYOMBA AXEL', 11, 'Masculin', 'axel-t', '1234', 'Utilisateur', 'Actif'),
(217, 'TSHIBANGU MUJULA Barthelemy', 11, 'Masculin', 'barthelemy-t', '1234', 'Utilisateur', 'Actif'),
(218, 'KAVUNGA TAMBU Karl', 10, 'Masculin', 'karl', '1234', 'Codir', 'Actif'),
(219, 'BAMBI MUDIPANU GÃ©dÃ©on', 12, 'Masculin', 'gedeonb', '1234', 'Utilisateur', 'Actif'),
(220, 'BENESHA MUPINGANYI GAYLORD', 12, 'Masculin', 'gaylordm', '1234', 'Utilisateur', 'Actif'),
(221, 'BILONDA KONDO Manuella', 12, 'Feminin', 'manuellab', '1234', 'Utilisateur', 'Actif'),
(222, 'BITUMBA ISEKE NELSON', 12, 'Masculin', 'nelsonb', '1234', 'Utilisateur', 'Actif'),
(223, 'BOYINSABIE NKUMU Bob', 12, 'Masculin', 'bobb', '1234', 'Utilisateur', 'Actif'),
(224, 'BUNGU MVULA  HORDY', 12, 'Masculin', 'hordyb', '1234', 'Utilisateur', 'Actif'),
(225, 'DEMBA VALENTIN CHRISTIAN', 12, 'Masculin', 'valentinc', '1234', 'Utilisateur', 'Actif'),
(226, 'ENGIONGO MBIANGO TARQUIN', 12, 'Masculin', 'tarquin', '1234', 'Utilisateur', 'Actif'),
(227, 'FUNZU MOKE FRANCIS', 12, 'Masculin', 'mokef', '1234', 'Utilisateur', 'Actif'),
(228, 'KAFUTI MAKUMU LAROSEE', 12, 'Feminin', 'laroseek', '1234', 'Utilisateur', 'Actif'),
(229, 'KINZUMBA KINZUMBA Ruth', 12, 'Feminin', 'ruthcp', '1234', 'Utilisateur', 'Actif'),
(230, 'KUKUMBE ZAWADI MERVEILLE', 12, 'Feminin', 'merveillek', '1234', 'Utilisateur', 'Actif'),
(231, 'MANDJOLO LUNGUMBA PAVODY', 12, 'Masculin', 'pavodym', '1234', 'Utilisateur', 'Actif'),
(232, 'MASANGI Fidele Fidele', 12, 'Masculin', 'fidelem', '1234', 'Utilisateur', 'Actif'),
(233, 'MASENGU MUMAMBA TYNA', 12, 'Feminin', 'tynam', '1234', 'Utilisateur', 'Actif'),
(234, 'MBANGA VUMI NATHAN', 12, 'Masculin', 'nathanv', '1234', 'Utilisateur', 'Actif'),
(235, 'MBAYA BIBI REBECCA', 12, 'Feminin', 'rebecca', '1234', 'Utilisateur', 'Actif'),
(236, 'MOFUMUNGI OGIVE', 12, 'Masculin', 'mofumungio', '1234', 'Utilisateur', 'Non-Actif'),
(237, 'MPATA BANGONDO NAOMIE', 12, 'Feminin', 'naomieb', '1234', 'Utilisateur', 'Actif'),
(238, 'MUSEDJU MUBAKA BENI', 12, 'Masculin', 'benim', '1234', 'Utilisateur', 'Actif'),
(239, 'MUSHIYA TSHIBANGU LEA', 12, 'Feminin', 'leam', '1234', 'Utilisateur', 'Actif'),
(240, 'MUTEBA WA MUTEBA GLODI', 12, 'Feminin', 'glodim', '1234', 'Utilisateur', 'Actif'),
(241, 'NGUMBU MAYIKA NOELLA', 12, 'Feminin', 'noellan', '1234', 'Utilisateur', 'Non-Actif'),
(242, 'NGUNU MUNGONGO christivie', 12, 'Feminin', 'christivien', '1234', 'Utilisateur', 'Actif'),
(243, 'NTEKA ONGAO JEAN VOLDI', 12, 'Masculin', 'voldin', '1234', 'Utilisateur', 'Actif'),
(244, 'NZUNZI Niciana', 12, 'Feminin', 'nicianan', '1234', 'Utilisateur', 'Non-Actif'),
(245, 'NZURU ONSONDA Fifi', 12, 'Feminin', 'fifin', '1234', 'Utilisateur', 'Actif'),
(246, 'SHINDANI IBOLASUM  LAURENT', 12, 'Masculin', 'laurents', '1234', 'Utilisateur', 'Actif'),
(247, 'TAMBWE FARIALA DIMITRI', 12, 'Masculin', 'tambwed', '1234', 'Utilisateur', 'Actif'),
(248, 'BADIOMBEDI BERNADETTE', 8, 'Feminin', 'badiombedib', '1234', 'Utilisateur', 'Actif'),
(249, 'BAVUKILA KOLA RENETTE', 8, 'Feminin', 'renetteb', '1234', 'Utilisateur', 'Actif'),
(250, 'BIKANGA RAMA  CHRISTIAN', 8, 'Masculin', 'christianb', '1234', 'Utilisateur', 'Actif'),
(251, 'BOLA ENGBONDU DIVIN', 8, 'Masculin', 'divinb', '1234', 'Utilisateur', 'Actif'),
(252, 'BONOYA LENGWA Aristote', 8, 'Masculin', 'aristoteb', '1234', 'Utilisateur', 'Actif'),
(253, 'BOTHAS NSEKI Sulamithe', 8, 'Feminin', 'sulamithe', '1234', 'Utilisateur', 'Actif'),
(254, 'BOZILI MAWISA Jaelle', 8, 'Feminin', 'jaelleb', '1234', 'Utilisateur', 'Actif'),
(255, 'BWANGA DILUTETE ASTRID', 8, 'Feminin', 'astridb', '1234', 'Utilisateur', 'Actif'),
(256, 'DJUNGA BUSHIRI Pascal', 8, 'Masculin', 'pascald', '1234', 'Utilisateur', 'Actif'),
(257, 'EHUWO LAMA PACLINE', 8, 'Masculin', 'paclinel', '1234', 'Utilisateur', 'Actif'),
(258, 'FUNDI IBRAHIM  Vaspy', 8, 'Masculin', 'vaspyf', '1234', 'Utilisateur', 'Actif'),
(259, 'IMIDI TUMILAYI  FISTON', 8, 'Masculin', 'fistoni', '1234', 'Utilisateur', 'Actif'),
(260, 'ISASI NDEKONO FRANKLIN', 8, 'Masculin', 'franklini', '1234', 'Utilisateur', 'Actif'),
(261, 'KABAMBA MUKADI  REBECCA', 8, 'Feminin', 'rebeccak', '1234', 'Utilisateur', 'Actif'),
(262, 'KABEYA NZEYU  GEDEON', 8, 'Masculin', 'gedeonk', '1234', 'Utilisateur', 'Actif'),
(263, 'KALANGA NKOLONGO MARIE THERESE', 8, 'Feminin', 'theresek', '1234', 'Utilisateur', 'Actif'),
(264, 'KANDA  DARLIA', 8, 'Feminin', 'darliak', '1234', 'Utilisateur', 'Actif'),
(265, 'KANDA KAPINGA HELENE', 8, 'Feminin', 'helenek', '1234', 'Utilisateur', 'Actif'),
(266, 'LIBANGO MOLENGO Giresse', 8, 'Masculin', 'giressel', '1234', 'Utilisateur', 'Actif'),
(267, 'LUSAKUENO TIMINU  Josaphat', 8, 'Masculin', 'josaphatl', '1234', 'Utilisateur', 'Actif'),
(268, 'LUZOLO GAETAN Gaetan', 8, 'Masculin', 'gaetanl', '1234', 'Utilisateur', 'Actif'),
(269, 'MANTUIDI KIUVU Reagan', 8, 'Masculin', 'reaganm', '1234', 'Utilisateur', 'Actif'),
(270, 'MATETA MBONGA MARY', 8, 'Feminin', 'marrym', '1234', 'Utilisateur', 'Actif'),
(271, 'MAYOYO EMMANUEL ESPOIR', 8, 'Masculin', 'espoirem1', '1234', 'Utilisateur', 'Actif'),
(272, 'MBEDIKA MBEDIKA Junior', 8, 'Masculin', 'juniorm', '1234', 'Utilisateur', 'Actif'),
(273, 'MBIYAVANGA NKOSI ISMAEL', 8, 'Masculin', 'ismaelm', '1234', 'Utilisateur', 'Actif'),
(274, 'MBOLELA KANDA  RODDY', 8, 'Masculin', 'roddym', '1234', 'Utilisateur', 'Actif'),
(275, 'MBUYI TSHOZA CHANCELVIE', 8, 'Feminin', 'chancelviem', '1234', 'Utilisateur', 'Actif'),
(276, 'MTONGO  PETER', 8, 'Masculin', 'peterm', '1234', 'Utilisateur', 'Actif'),
(277, 'MUAMBA KAZADI  MOISE', 8, 'Masculin', 'moisem', '1234', 'Utilisateur', 'Actif'),
(278, 'MUJANGI ILUNGA Cecile', 8, 'Feminin', 'cecilem1', '1234', 'Utilisateur', 'Actif'),
(279, 'MUKAMBA MUKANDA Merveille', 8, 'Feminin', 'merveillem', '1234', 'Utilisateur', 'Actif'),
(280, 'MUKENDI KABONGO Serge', 8, 'Feminin', 'sergem', '1234', 'Utilisateur', 'Actif'),
(281, 'MUKENDI MUPINGAYI DAVID', 8, 'Masculin', 'davidm1', '1234', 'Utilisateur', 'Actif'),
(282, 'MUKENDI WA MUNKENDI Richard', 8, 'Masculin', 'richardm', '1234', 'Utilisateur', 'Actif'),
(283, 'MUTOMBO MULUMBA GEDEON', 8, 'Masculin', 'gedeonm', '1234', 'Utilisateur', 'Actif'),
(284, 'MWAMBA MAGLOIRE  Magloire ', 8, 'Masculin', 'magloirem', '1234', 'Utilisateur', 'Actif'),
(285, 'NGAMALA MUTOMBO ELYSEE', 8, 'Feminin', 'elysee', '1234', 'Utilisateur', 'Actif'),
(286, 'NGOYA NGONGO Colette', 8, 'Feminin', 'colleten', '1234', 'Utilisateur', 'Actif'),
(287, 'NSENDA MERVEILLES', 8, 'Feminin', 'merveillesn1', '1234', 'Utilisateur', 'Actif'),
(288, 'POMBO BIBISOMBE Arlette', 8, 'Feminin', 'arlettep', '1234', 'Utilisateur', 'Actif'),
(289, 'SABWA TSHIBANGU  PATRICK', 8, 'Masculin', 'patricks', '1234', 'Utilisateur', 'Actif'),
(290, 'WAKU TUZOLANA GRACE', 8, 'Feminin', 'gracew', '1234', 'Utilisateur', 'Actif'),
(291, ' LUMINUKU KIASINGAMA Jacques', 10, 'Masculin', 'jacquesl', '1234', 'Utilisateur', 'Actif'),
(292, 'ADEDE MAKUTSHU JÃ©rÃ©mie', 7, 'Masculin', 'jeremie', '1234', 'Utilisateur', 'Actif'),
(293, 'AZARIA LOMAMI RAPHAEL', 7, 'Masculin', 'azariar', '1234', 'Utilisateur', 'Actif'),
(294, 'BAKAMBALA EPATE  RUDDY', 7, 'Masculin', 'ruddyb', '1234', 'Utilisateur', 'Actif'),
(295, 'BANZA ADOLPH Adolph', 7, 'Masculin', 'banzaa', '1234', 'Utilisateur', 'Actif'),
(296, 'BANZA MISENGE  MARY', 7, 'Feminin', 'maryb', '1234', 'Utilisateur', 'Actif'),
(297, 'BAYINA  MAVUEMBA Raymond', 7, 'Masculin', 'bayina', '1234', 'Utilisateur', 'Actif'),
(298, 'BAYOKO MAKANGILA Eldad', 10, 'Feminin', 'eldadm', '1234', 'Utilisateur', 'Actif'),
(299, 'BAZOMBWA BELI FRANK', 7, 'Masculin', 'frankb', '1234', 'Utilisateur', 'Actif'),
(300, 'BIMPA MARDOCHEE MARDOCHEE', 7, 'Masculin', 'mardochee', '1234', 'Utilisateur', 'Actif'),
(301, 'BOTO LUETO  GUY', 7, 'Masculin', 'guyb', '1234', 'Utilisateur', 'Actif'),
(302, 'BULE GALA MIRIAM', 7, 'Feminin', 'miramb', '1234', 'Utilisateur', 'Actif'),
(304, 'CHARMANT BULENDA Victorien', 9, 'Masculin', 'victorien.c', '1234', 'Utilisateur', 'Actif'),
(305, 'CHIZA CHIRIMULUME DAVID', 7, 'Masculin', 'chiza', '1234', 'Utilisateur', 'Actif'),
(306, 'DIKUNDIA  FUMULAMBA BOPOL', 7, 'Masculin', 'bopold', '1234', 'Utilisateur', 'Actif'),
(307, 'ENVI MUNDU DEOGRATIAS', 7, 'Masculin', 'deograciase', '1234', 'Utilisateur', 'Actif'),
(308, 'ENYAMOLA MAKOKE blessing', 7, 'Masculin', 'blessinge', '1234', 'Utilisateur', 'Actif'),
(309, 'EPENGE ESAWU SABRINA', 7, 'Masculin', 'sabrinae', '1234', 'Utilisateur', 'Actif'),
(310, 'FIMWANA ESSABE DOGI', 7, 'Masculin', 'dogi', '1234', 'Utilisateur', 'Actif'),
(311, 'GAETAN LUZOLO', 7, 'Masculin', 'geatanl', '1234', 'Utilisateur', 'Actif'),
(312, 'ISSAY VANGU GLODY', 7, 'Masculin', 'glody', '1234', 'Utilisateur', 'Actif'),
(313, 'KABEYA BIUMA MADO', 7, 'Feminin', 'madok', '1234', 'Utilisateur', 'Actif'),
(314, 'KABUYA MUKUNA Rachel', 7, 'Feminin', 'rachelk', '1234', 'Utilisateur', 'Actif'),
(315, 'KADIMA DIBWE Aubin', 10, 'Masculin', 'aubink', '1234', 'Utilisateur', 'Actif'),
(316, 'KAKALA Ruth', 7, 'Feminin', 'ruthkk', '1234', 'Utilisateur', 'Actif'),
(317, 'KAKESE MBO Stevie', 7, 'Masculin', 'kakeses', '1234', 'Utilisateur', 'Actif'),
(318, 'KALAMBA NKONGOLO AXEL', 7, 'Masculin', 'axelle.k', '1234', 'Utilisateur', 'Actif'),
(319, 'KAPINGA TSHIMANGA  Christiane', 7, 'Feminin', 'christianeK', '1234', 'Utilisateur', 'Actif'),
(320, 'admin', 10, 'Masculin', 'admin', '1234', 'Hyper-Utilisateur', 'Actif'),
(321, 'DIKABANE MABONZO BONNY', 7, 'Masculin', 'bonny', '1234', 'Utilisateur', 'Actif'),
(322, 'MPILA CLAUDE', 10, 'Masculin', 'claude', '1234', 'Administrateur Systeme', 'Actif'),
(323, 'MVOLOKO NGANA MERDI', 8, 'Masculin', 'merdim', '1234', 'Utilisateur', 'Actif'),
(324, 'KAPEPA KAPITA BENEDICTION', 8, 'Masculin', 'benediction', '1234', 'Utilisateur', 'Actif'),
(325, 'LUMBELELO UNYA', 8, 'Masculin', 'blaisel', '1234', 'Utilisateur', 'Actif'),
(326, 'KIBUNGU TUWINDE PHILOMENE', 7, 'Feminin', 'philomenek', '1234', 'Utilisateur', 'Actif'),
(327, 'KABANGA BAYILA JONATHAN', 7, 'Masculin', 'jonathankb', '1234', 'Utilisateur', 'Actif'),
(328, 'TSHIMUANGA EDVIGE', 7, 'Feminin', 'edvige', '1234', 'Utilisateur', 'Actif'),
(329, 'KUFUNSUKA Herve', 7, 'Masculin', 'hervekf', '1234', 'Utilisateur', 'Actif'),
(330, 'KITAMBALA Herve', 7, 'Masculin', 'hervekt', '1234', 'Utilisateur', 'Actif'),
(331, 'MANKWE CYNTHIAN', 7, 'Feminin', 'cynthianm', '1234', 'Utilisateur', 'Actif'),
(332, 'MATUNGA LUKOMBO Gervais', 7, 'Masculin', 'gervaism', '1234', 'Utilisateur', 'Actif'),
(333, 'MWANAKWETE MITUTI Grace', 7, 'Feminin', 'gracemw', '1234', 'Utilisateur', 'Actif'),
(334, 'LONGA PATRICK', 7, 'Masculin', 'patrickl', '1234', 'Utilisateur', 'Actif'),
(335, 'SHALABA ATSIR Glody', 12, 'Masculin', 'atsir', '1234', 'Utilisateur', 'Actif'),
(336, 'KADAKA OMAR', 12, 'Masculin', 'omar', '1234', 'Utilisateur', 'Actif'),
(337, 'KULAZI Harmonie', 12, 'Feminin', 'harmoniek', '1234', 'Utilisateur', 'Actif'),
(338, 'KAMANYULA KALUME Bertin', 7, 'Masculin', 'bertink', 'Mcp_2025', 'Utilisateur', 'Actif');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
