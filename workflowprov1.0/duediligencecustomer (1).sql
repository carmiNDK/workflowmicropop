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
-- Base de données: `duediligencecustomer`
--

-- --------------------------------------------------------

--
-- Structure de la table `operation`
--

CREATE TABLE IF NOT EXISTS `operation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DateOperation` varchar(500) NOT NULL,
  `HeureOperation` varchar(500) NOT NULL,
  `Operation` varchar(500) NOT NULL,
  `NumCientConcerne` int(11) NOT NULL,
  `NomsClientConcerne` varchar(500) NOT NULL,
  `Agent` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Contenu de la table `operation`
--

INSERT INTO `operation` (`ID`, `DateOperation`, `HeureOperation`, `Operation`, `NumCientConcerne`, `NomsClientConcerne`, `Agent`) VALUES
(1, '2025-02-24', '19:08', 'Modification Mot de Passe Client Souscrit', 308169, 'MWAMIAGANZE MALEKERA FELIX', 'KABISA BALEJI JONATHAN'),
(2, '2025-02-24', '19:11', 'Souscription Client', 202199, 'MUTEKE MAWOLO BLANDINE', 'KABISA BALEJI JONATHAN'),
(3, '2025-02-24', '19:11', 'Modification Mot de Passe Client Souscrit', 202199, 'MUTEKE MAWOLO BLANDINE', 'KABISA BALEJI JONATHAN'),
(4, '2025-03-03', '11:37', 'Souscription Client', 214040, 'NOMANYATE KAYONGO VICTOR', 'KABISA BALEJI JONATHAN'),
(5, '2025-03-05', '10:32', 'Souscription Client', 211426, 'MANTUIDI KIUVU REAGAN', 'KABISA BALEJI JONATHAN'),
(6, '2025-03-05', '11:14', 'Souscription Client', 126824, 'MBIKAYI DESHA RABBI', 'KABISA BALEJI JONATHAN'),
(7, '2025-03-05', '11:25', 'Souscription Client', 124893, 'KAZU NALIKO DARLY JUNIOR', 'KABISA BALEJI JONATHAN'),
(8, '2025-03-05', '12:15', 'Souscription Client', 211057, 'DIKABANE MABONZO BONNY', 'KABISA BALEJI JONATHAN'),
(9, '2025-03-05', '20:09', 'Souscription Client', 108397, 'MULOWAYI MUPINGANYI GAYLORD', 'KABISA BALEJI JONATHAN'),
(10, '2025-03-14', '18:53', 'Souscription Client', 402239, 'NEBWE SENGA NELLY', 'KABISA BALEJI JONATHAN'),
(11, '2025-03-24', '10:49', 'Modification Mot de Passe Client Souscrit', 109890, 'NDEKE IYOMAYI CARMI', 'KABISA BALEJI JONATHAN'),
(12, '2025-03-24', '20:27', 'Modification Mot de Passe Client Souscrit', 109884, 'KABISA BALEJI JONATHAN', 'KABISA BALEJI JONATHAN'),
(13, '2025-04-08', '12:34', 'Modification Mot de Passe Client Souscrit', 121317, 'MAFUTA MAYALA ARNOLD', 'KABISA BALEJI JONATHAN'),
(14, '2025-04-14', '17:55', 'Modification Mot de Passe Client Souscrit', 211057, 'DIKABANE MABONZO BONNY', 'KABISA BALEJI JONATHAN'),
(15, '2025-04-25', '11:01', 'Souscription Client', 108079, 'MATATA PONYO MAPON', 'KABISA BALEJI JONATHAN'),
(16, '2025-05-04', '12:57', 'Modification Mot de Passe Client Souscrit', 211016, 'MANENGA LUKOMBO NICK', 'KABISA BALEJI JONATHAN'),
(17, '2025-06-11', '23:15', 'Modification Mot de Passe Client Souscrit', 108397, 'BENESHA MUPINGANYI GAYLORD', 'KABISA BALEJI JONATHAN'),
(18, '2025-06-14', '11:43', 'Modification Mot de Passe Client Souscrit', 109884, 'KABISA BALEJI JONATHAN', 'KABISA BALEJI JONATHAN'),
(19, '2025-06-23', '14:15', 'Souscription Client', 308728, 'MSAADA GANYWAMULUME JUSTIN', 'KABISA BALEJI JONATHAN'),
(20, '2025-07-02', '15:23', 'Modification Mot de Passe Client Souscrit', 300140, 'KITALAULA CHABWIRE JEAN', 'KABISA BALEJI JONATHAN'),
(21, '2025-07-03', '23:57', 'Souscription Client', 127796, 'PHANZU MBENZA JOEL', 'KABISA BALEJI JONATHAN'),
(22, '2025-08-17', '20:11', 'Souscription Client', 128233, 'MPILA NSEMO CLAUDE', 'KABISA BALEJI JONATHAN');

-- --------------------------------------------------------

--
-- Structure de la table `transfert`
--

CREATE TABLE IF NOT EXISTS `transfert` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NumTransaction` int(11) NOT NULL,
  `DateTransfert` varchar(100) NOT NULL,
  `HeureTransfert` varchar(25) NOT NULL,
  `NumClientExpediteur` int(11) NOT NULL,
  `ClientExpediteur` varchar(100) NOT NULL,
  `ClientDestinateur` varchar(100) NOT NULL,
  `CompteExpediteur` varchar(150) NOT NULL,
  `CompteDestinateur` varchar(100) NOT NULL,
  `MontantTransfert` double NOT NULL,
  `Devise` varchar(100) NOT NULL,
  `users` varchar(100) NOT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `transfert`
--

INSERT INTO `transfert` (`ID`, `NumTransaction`, `DateTransfert`, `HeureTransfert`, `NumClientExpediteur`, `ClientExpediteur`, `ClientDestinateur`, `CompteExpediteur`, `CompteDestinateur`, `MontantTransfert`, `Devise`, `users`, `telephone`) VALUES
(2, 4031902, '2025-03-14', '18:59', 109890, 'NDEKE IYOMAYI CARMI', 'LENGI MOISE PLAMEDI', '001-109890-00-48', '001-125225-00-75', 600, 'USD', 'NDEKE IYOMAYI CARMI', '243818716274'),
(3, 4085817, '2025-03-24', '20:19', 109890, 'NDEKE IYOMAYI CARMI', 'KABISA BALEJI JONATHAN', '001-109890-00-48', '001-109884-00-30', 300, 'USD', 'NDEKE IYOMAYI CARMI', '243818716274');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `numeroClient` int(11) NOT NULL,
  `CodePin` varchar(500) NOT NULL,
  `noms` varchar(500) NOT NULL,
  `agence` varchar(500) NOT NULL,
  `Agent` varchar(500) NOT NULL,
  `telephone` varchar(500) DEFAULT NULL,
  `Otp` varchar(500) DEFAULT NULL,
  `DateDebut` varchar(500) DEFAULT NULL,
  `DateFin` varchar(500) DEFAULT NULL,
  `statut` varchar(500) DEFAULT NULL,
  `OtpTransfert` varchar(500) DEFAULT NULL,
  `CounterConnect` int(11) DEFAULT NULL,
  `OtpConnect` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`numeroClient`, `CodePin`, `noms`, `agence`, `Agent`, `telephone`, `Otp`, `DateDebut`, `DateFin`, `statut`, `OtpTransfert`, `CounterConnect`, `OtpConnect`) VALUES
(109884, '312351bff07989769097660a56395065', 'KABISA BALEJI JONATHAN', 'AGENCE DE VICTOIRE', 'KABISA BALEJI JONATHAN', '243891553070', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-20', '2025-12-31', 'Actif', 'd4e95b8536d8f090b8cbdde011f9ce6a', 0, 'd4e95b8536d8f090b8cbdde011f9ce6a'),
(121317, '008bd5ad93b754d500338c253d9c1770', 'MAFUTA MAYALA ARNOLD', 'AGENCE DE VICTOIRE', 'KABISA BALEJI JONATHAN', '243811403121', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-20', '2025-12-31', 'Actif', NULL, 0, ''),
(115868, '312351bff07989769097660a56395065', 'BONSWA ALVAME LYRONNE', 'AGENCE DE VICTOIRE', 'NDEKE IYOMAYI Carmi', '243816155921', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-20', '2025-12-31', 'Actif', NULL, 0, ''),
(120514, '312351bff07989769097660a56395065', 'RUVUNANGIZA AMANI SANDRA', 'AGENCE DE VICTOIRE', 'NDEKE IYOMAYI Carmi', '243993440227', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-20', '2025-12-31', 'Actif', NULL, 0, ''),
(125225, '3f70175d3a0453ccf334a7df170adf47', 'LENGI MOISE PLAMEDI', 'AGENCE DE VICTOIRE', 'LENGI LENGA  Moise', '243816577807', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-20', '2025-12-31', 'Actif', NULL, 1, 'd4e95b8536d8f090b8cbdde011f9ce6a'),
(116439, '312351bff07989769097660a56395065', 'NSAKALA MASSAMBA DEDE', 'AGENCE DE VICTOIRE', 'NDEKE IYOMAYI Carmi', '243818722224', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-20', '2025-12-31', 'Actif', NULL, 0, ''),
(112980, '312351bff07989769097660a56395065', 'LUKUSA KANTU MWABI ROGER', 'AGENCE DE VICTOIRE', 'NDEKE IYOMAYI Carmi', '243816082025', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-20', '2025-12-31', 'Actif', NULL, 0, ''),
(300140, '383beaea4aa57dd8202dbff464fee3af', 'KITALAULA CHABWIRE JEAN', 'AGENCE DE GOMA', 'KABISA BALEJI JONATHAN', '243998692392', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-20', '2025-12-31', 'Actif', NULL, 1, ''),
(122876, '312351bff07989769097660a56395065', 'KAVUNGA TAMBU KARL', 'AGENCE DE VICTOIRE', 'NDEKE IYOMAYI Carmi', '243827742011', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-20', '2025-12-31', 'Actif', NULL, 0, ''),
(211016, '81dc9bdb52d04dc20036dbd8313ed055', 'MANENGA LUKOMBO NICK', 'AGENCE OZONE', 'KABISA BALEJI JONATHAN', '243992335008', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-11', '2025-12-31', 'Expire', 'd4e95b8536d8f090b8cbdde011f9ce6a', 1, 'd4e95b8536d8f090b8cbdde011f9ce6a'),
(120036, '312351bff07989769097660a56395065', 'LUMINUKU KIASINGAMA JACQUES', 'AGENCE DE VICTOIRE', 'NDEKE IYOMAYI Carmi', '243821458800', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-11', '2025-12-31', 'Expire', NULL, 0, ''),
(100674, '312351bff07989769097660a56395065', 'MUTEBA MWEPU ALAIN', 'AGENCE DE VICTOIRE', 'NDEKE IYOMAYI Carmi', '243992246457', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-11', '2025-12-31', 'Expire', 'd4e95b8536d8f090b8cbdde011f9ce6a', 0, ''),
(308169, '008bd5ad93b754d500338c253d9c1770', 'MWAMIAGANZE MALEKERA FELIX', 'AGENCE DE GOMA', 'KABISA BALEJI JONATHAN', '243997782024', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-13', '2025-12-31', 'Actif', NULL, 0, ''),
(122337, '312351bff07989769097660a56395065', 'LEMA JOSE JOSE', 'AGENCE DE VICTOIRE', 'NDEKE IYOMAYI Carmi', '243995645073', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-14', '2025-12-31', 'Actif', NULL, 0, ''),
(109890, '44d2f256802674ba1abce65fba3dd76b', 'NDEKE IYOMAYI CARMI', 'AGENCE DE VICTOIRE', 'KABISA BALEJI JONATHAN', '243818716274', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-20', '2025-12-31', 'Actif', 'd4e95b8536d8f090b8cbdde011f9ce6a', 1, 'd4e95b8536d8f090b8cbdde011f9ce6a'),
(202199, '008bd5ad93b754d500338c253d9c1770', 'MUTEKE MAWOLO BLANDINE', 'AGENCE OZONE', 'KABISA BALEJI JONATHAN', '243820677645', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-02-24', '2025-12-31', 'Actif', NULL, 0, ''),
(214040, '312351bff07989769097660a56395065', 'NOMANYATE KAYONGO VICTOR', 'AGENCE DE VICTOIRE', 'KABISA BALEJI JONATHAN', '243824477585', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-03-03', '2025-12-31', 'Actif', NULL, 0, ''),
(211426, 'd0fb963ff976f9c37fc81fe03c21ea7b', 'MANTUIDI KIUVU REAGAN', 'AGENCE OZONE', 'KABISA BALEJI JONATHAN', '243830327851', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-03-05', '2025-12-31', 'Actif', NULL, 0, ''),
(126824, '312351bff07989769097660a56395065', 'MBIKAYI DESHA RABBI', 'AGENCE DE VICTOIRE', 'KABISA BALEJI JONATHAN', '243818842243', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-03-05', '2025-12-31', 'Actif', NULL, 0, ''),
(124893, '312351bff07989769097660a56395065', 'KAZU NALIKO DARLY JUNIOR', 'AGENCE DE VICTOIRE', 'KABISA BALEJI JONATHAN', '243998944463', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-03-05', '2025-12-31', 'Actif', NULL, 0, ''),
(211057, '6a989734cbde548580969177da5641ea', 'DIKABANE MABONZO BONNY', 'AGENCE OZONE', 'KABISA BALEJI JONATHAN', '243815609503', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-03-05', '2025-12-31', 'Actif', NULL, 1, 'd4e95b8536d8f090b8cbdde011f9ce6a'),
(108397, '312351bff07989769097660a56395065', 'BENESHA MUPINGANYI GAYLORD', 'AGENCE DE VICTOIRE', 'KABISA BALEJI JONATHAN', '243823070303', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-03-05', '2025-12-31', 'Actif', NULL, 1, ''),
(402239, '312351bff07989769097660a56395065', 'NEBWE SENGA NELLY', 'AGENCE DE LUBUMBASHI', 'KABISA BALEJI JONATHAN', '243998049600', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-03-14', '2026-03-15', 'Actif', NULL, 0, ''),
(108079, '64d87403ef679d9586e5db17e3bf21a5', 'MATATA PONYO MAPON', 'AGENCE DE VICTOIRE', 'KABISA BALEJI JONATHAN', '243818889990', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-04-25', '2026-04-26', 'Actif', NULL, 1, NULL),
(308728, '81dc9bdb52d04dc20036dbd8313ed055', 'MSAADA GANYWAMULUME JUSTIN', 'AGENCE DE GOMA', 'KABISA BALEJI JONATHAN', '243974056940', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-06-23', '2026-06-24', 'Actif', NULL, 1, 'd4e95b8536d8f090b8cbdde011f9ce6a'),
(127796, 'ea8a1dac178d820c7256cdec7b41f572', 'PHANZU MBENZA JOEL', 'AGENCE DE VICTOIRE', 'KABISA BALEJI JONATHAN', '243819627475', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-07-03', '2026-07-04', 'Actif', NULL, 1, 'd4e95b8536d8f090b8cbdde011f9ce6a'),
(128233, '81dc9bdb52d04dc20036dbd8313ed055', 'MPILA NSEMO CLAUDE', 'AGENCE DE VICTOIRE', 'KABISA BALEJI JONATHAN', '243999925361', 'd4e95b8536d8f090b8cbdde011f9ce6a', '2025-08-17', '2026-08-18', 'Actif', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `useradmin`
--

CREATE TABLE IF NOT EXISTS `useradmin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Agence` varchar(500) NOT NULL,
  `NomsUser` varchar(500) NOT NULL,
  `PrenomUser` varchar(500) NOT NULL,
  `SexeUser` varchar(500) NOT NULL,
  `ProfilUser` varchar(500) NOT NULL,
  `Login` varchar(500) NOT NULL,
  `PwdUser` varchar(500) NOT NULL,
  `etat` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `useradmin`
--

INSERT INTO `useradmin` (`ID`, `Agence`, `NomsUser`, `PrenomUser`, `SexeUser`, `ProfilUser`, `Login`, `PwdUser`, `etat`) VALUES
(1, 'Agence de Victoire', 'NDEKE IYOMAYI', 'Carmi', 'Masculin', 'Hyper-Admin', 'carmin', '008bd5ad93b754d500338c253d9c1770', 'Actif'),
(2, 'Agence de Victoire', 'KABISA BALEJI', 'JONATHAN', 'Masculin', 'Admin', 'jonathan', '008bd5ad93b754d500338c253d9c1770', 'Actif'),
(3, 'AGENCE DE VICTOIRE', 'LENGI LENGA ', 'Moise', 'Masculin', 'Hyper-Admin', 'moise', '7b7a53e239400a13bd6be6c91c4f6c4e', 'Actif'),
(4, 'AGENCE DE VICTOIRE', 'MAYALA MAFUTA', 'ARNOLD', 'Masculin', 'Hyper-Admin', 'arnold', '312351bff07989769097660a56395065', 'Non-Actif'),
(5, 'AGENCE DE GOMA', 'CHAMBWIRE', 'Jean', 'Masculin', 'Hyper-Admin', 'jean', '312351bff07989769097660a56395065', 'Actif'),
(7, 'AGENCE DE LUBUMBASHI', 'SEFU MADIKA', 'Yves', 'Masculin', 'Hyper-Admin', 'yves', '312351bff07989769097660a56395065', 'Actif'),
(8, 'AGENCE DE VICTOIRE', 'KALENGA SABA', 'FIRMAIN', 'Masculin', 'Operation', 'firmain', '312351bff07989769097660a56395065', 'Actif');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
