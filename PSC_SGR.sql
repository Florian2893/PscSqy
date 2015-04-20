-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 20 Avril 2015 à 13:52
-- Version du serveur: 5.5.33
-- Version de PHP: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données: `PSC_SGR`
--

-- --------------------------------------------------------

--
-- Structure de la table `Badge`
--

CREATE TABLE `Badge` (
  `N__BADGE` varchar(6) NOT NULL DEFAULT '',
  `HORAIRES` varchar(20) DEFAULT NULL,
  `Date_donne` varchar(10) DEFAULT NULL,
  `Date_rendu` varchar(10) DEFAULT NULL,
  `Type` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`N__BADGE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Badge`
--

INSERT INTO `Badge` (`N__BADGE`, `HORAIRES`, `Date_donne`, `Date_rendu`, `Type`) VALUES
('13 830', '24/24', '', '', 'Agent SG'),
('14 105', '7h30-19h30 - L à V', '', '', 'Audit'),
('14 106', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 109', '24/24', '18/02/2015', '', 'Exterieur'),
('14 111', '7h30-19h30 - L à V', '', '', 'Visiteur'),
('14 113', '7h30-19h30 - L à V', '30/04/2014', '10/08/2014', 'STOCK'),
('14 114', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 116', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 117', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 119', '7h30-19h30 - L à V', '3/03/2014', '', 'Agent SG'),
('14 120', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 121', '24/24', '06/03/2015', '', 'Exterieur'),
('14 126', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 127', '24/24', '', '', 'Agent SG'),
('14 128', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 129', '7h30-19h30 - L à V', '28/11/2014', '', 'Agent SG'),
('14 131', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 132', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 133', '7h30-19h30 - L à V', '14/01/2013', '', 'Agent SG'),
('14 134', '7h30-19h30 - L à V', '7/07/2014', '01/08/2014', 'STOCK'),
('14 135', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 136', '7h30-19h30 - L à V', '2/06/2014', '', 'Agent SG'),
('14 137', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 138', '7h30-19h30 - L à V', '08/06/2012', '', 'Agent SG'),
('14 140', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 143', '24/24', '', '', 'Agent SG'),
('14 144', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 145', '7h30-19h30 - L à V', '2/07/2012', '', 'Cadre au Forfait'),
('14 147', '7h30-19h30 - L à V', '25/03/2014', '24/09/2014', 'STOCK'),
('14 149', '7H30-19H30 - L à V', '4/08/2014', '29/08/2014', 'STOCK'),
('14 156', '7H30-19H30 - L à V', '4/08/2014', '29/08/2014', 'STOCK'),
('14 160', '7H30-19H30 - L à V', '15/09/14', '19/09/2014', 'STOCK'),
('14 163', '7h30-19h30 - L à V', '13/10/2014', '', 'Agent SG'),
('14 170', '7H30-19H30 - L à V', '18/09/2014', '', 'Agent SG'),
('14 174', '7H30-19H30 - L à V', '4/08/2014', '29/08/2014', 'STOCK'),
('14 178', '7H30-19H30 - L à V', '4/08/2014', '29/08/2014', 'STOCK'),
('14 304', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 305', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 308', '24/24', '', '31/12/2012', 'Agent SG'),
('14 309', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 311', '7h30-19h30 - L à V', '5/08/2013', '30/08/2013', 'STOCK'),
('14 313', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 315', '7h30-19h30 - L à V', '08/06/2012', '', 'Agent SG'),
('14 316', '7h30-19h30 - L à V', '9/07/2012', '03/08/2012', 'Agent SG'),
('14 317', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 319', '7h30-19h30 - L à V', '24/02/2014', '', 'Agent SG'),
('14 320', '7h30-19h30 - L à V', '3/06/2013', '23/10/2014', 'STOCK'),
('14 332', '7H30-19H30 - L à V', '2/06/2014', '', 'Agent SG'),
('14 333', '7H30-19H30 - L à V', '', '', 'Visiteur'),
('14 336', '7H30-19H30 - L à V', '05/01/2015', '', 'Agent SG'),
('14 350', '7H30-19H30 - L à V', '14/10/2014', '', 'Agent SG'),
('14 363', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 373', '7h30-19h30 - L à V', '3/09/2012', '', 'Agent SG'),
('14 376', '7h30-19h30 - L à V', '1/01/2014', '', 'Agent SG'),
('14 378', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 381', '7h30-19h30 - L à V', '15/10/2013', '', 'Cadre au Forfait'),
('14 387', '7h30-19h30 - L à V', '', '', 'Exterieur'),
('14 388', '7h30-19h30 - L à V', '4/08/2014', '29/08/2014', 'STOCK'),
('14 390', '7H30-19H30 - L à V', '13/01/2014', '27/06/2014', 'STOCK'),
('14 393', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 395', '7h30-19h30 - L à V', '', '', 'Agent SG'),
('14 396', '7h30-19h30 - L à V', '1/10/2013', '', 'Agent SG'),
('15 814', '7H30-19H30 - L à V', '', '', 'Visiteur'),
('15 819', '7H30-19H30 - L à V', '', '', 'VISITEUR'),
('15 821', '7H30-19H30 - L à V', '', '', 'VISITEUR'),
('15 836', '7H30-19H30 - L à V', '13/02/2015', '', 'STOCK'),
('15 845', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('16243', '7H30-19H30 - L à V', 'OK', '', 'ARH'),
('16 110', '7H30-19H30 - L à V', '7/07/2013', '01/08/2013', 'STOCK'),
('16 111', '7H30-19H30 - L à V', '02/02/2015', '', 'Intérimaire'),
('16 120', '7h30-19h30 - L à V', '24/11/2014', '30/01/2015', 'STOCK'),
('16 188', '7H30-19H30 - L à V', '7/07/2013', '01/08/2013', 'STOCK'),
('16 202', '7H30-19H30 - L à V', '', '13/03/2015', 'STOCK'),
('16 207', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('16 208', '24/24', '', '', 'Audit'),
('16 209', '7H30-19H30 - L à V', '14/10/2014', '', 'Exterieur'),
('16 213', '7h30-19h30 - L à V', '08/06/2012', '', 'Agent SG'),
('16 215', '24/24', '', '', 'Visiteur'),
('16 216', '7H30-19H30 - L à V', '01/10/2014', '', 'Agent SG'),
('16 217', '7H30-19H30 - L à V', '03/01/2014', '', 'Visiteur'),
('16 221', '7H30-19H30 - L à V', '2/07/2012', '', 'Agent SG'),
('16 223', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('16 226', '7H30-19H30 - L à V', '', '', 'Exterieur'),
('16 228', '7H30-19H30 - L à V', '2/06/2014', '31/08/2014', 'STOCK'),
('16 229', '24/24', '', '', 'Exterieur'),
('16 230', '7H30-19H30 - L à V', '08/06/2012', '', 'Agent SG'),
('16 234', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('16 235', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('16 236', '7H30-19H30 - L à V', '18/11/2014', '', 'Stagiaire Etude'),
('16 238', '7H30-19H30 - L à V', '7/07/2014', '01/08/2014', 'STOCK'),
('16 240', '7H30-19H30 - L à V', '24/09/2012', '', 'Agent SG'),
('16 241', '7H30-19H30 - L à V', '8/10/2012', '', 'Agent SG'),
('16 242', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('16 243', '7H30-19H30 - L à V', '4/08/2014', '29/08/2014', 'STOCK'),
('16 244', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('16 245', '7H30-19H30 - L à V', '6/01/2014', '', 'Agent SG'),
('16 249', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('16 252', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('16 253', '7H30-19H30 - L à V', '30/04/2014', '31/07/2014', 'STOCK'),
('16 255', '7H30-19H30 - L à V', '13/02/2015', '', 'STOCK'),
('16 256', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('16 257', '7H30-19H30 - L à V', '2/07/2012', '', 'Agent SG'),
('16 258', '7H30-19H30 - L à V', '09/10/14', '', 'STOCK'),
('16 261', '7H30-19H30 - L à V', '7/07/2013', '01/08/2013', 'STOCK'),
('24 763', '7H30-19H30 - L à V', '', '', 'AUDIT'),
('24 777', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('24 779', '7H30-19H30 - L à V', '', '', 'Visiteur'),
('24 782', '7H30-19H30 - L à V', '', '', 'STOCK'),
('24 783', '7H30-19H30 - L à V', '30/08/2013', '', 'Agent SG'),
('24 787', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('24 788', '7H30-19H30 - L à V', '9/01/2014', '31/07/2014', 'STOCK'),
('24 789', '7H30-19H30 - L à V', '3/02/2014', '', 'Agent SG'),
('24 790', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('24 791', '7H30-19H30 - L à V', '09/09/14', '19/09/2014', 'STOCK'),
('24 792', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('24 793', '7H30-19H30 - L à V', '09/09/14', '19/09/2014', 'STOCK'),
('24 794', '7H30-19H30 - L à V', '6/01/2014', '', 'Cadre au Forfait'),
('24 795', '7H30-19H30 - L à V', '09/10/14', '', 'STOCK'),
('24 796', '7H30-19H30 - L à V', '08/06/2012', '', 'Agent SG'),
('24 797', '7H30-19H30 - L à V', '13/02/2015', '', 'STOCK'),
('24 799', '7H30-19H30 - L à V', '30/09/2013', '', 'Agent SG'),
('24 800', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('24 801', '7H30-19H30 - L à V', '16/02/2015', '20/02/2015', 'STOCK'),
('35 756', '7H30-19H30 - L à V', '23/10/2014', '', 'Stagiaire Etude'),
('35 760', '7H30-19H30 - L à V', '22/09/2014', '', 'Agent SG'),
('35 850', '7H30-19H30 - L à V', '4/08/2014', '29/08/2014', 'STOCK'),
('36 866', '7H30-19H30 - L à V', '4/08/2014', '', 'STOCK'),
('36 873', '24/24', '', '', 'Agent SG'),
('36 874', '24/24', '', '', 'STOCK'),
('36 875', '24/24', '', '', 'Visiteur'),
('36 876', '7H30-19H30 - L à V', '10/11/2014', '', 'Agent SG'),
('36 878', '7H30-19H30 - L à V', '24/09/2012', '', 'Agent SG'),
('36 880', '7H30-19H30 - L à V', '08/01/2015', '', 'Intérimaire'),
('36 881', '7H30-19H30 - L à V', '28/07/2014', '', 'Agent SG'),
('38 463', '7H30-19H30 - L à V', '11/03/2013', '', 'Stagiaire Etude'),
('38 478', '7H30-19H30 - L à V', '', '', 'Agent SG'),
('38 481', '7H30-19H30 - L à V', '', '', 'Exterieur'),
('38 488', '7H30-19H30 - L à V', '17/09/2012', '', 'Agent SG'),
('38 489', '7H30-19H30 - L à V', '15/01/2014', '', 'Agent SG'),
('38 490', '7H30-19H30 - L à V', '07/01/2013', '', 'Agent SG'),
('38 492', '7H30-19H30 - L à V', '11/11/2013', '', 'Agent SG'),
('38 493', '7H30-19H30 - L à V', '12/12/2014', '', 'Intérimaire'),
('38 494', '7H30-19H30 - L à V', '7/04/2014', '', 'Cadre au Forfait'),
('38 495', '7H30-19H30 - L à V', '11/02/2013', '', 'Agent SG'),
('38 496', '7H30-19H30 - L à V', '18/12/2012', '09/01/2014', 'STOCK'),
('38 497', '7H30-19H30 - L à V', '21/01/2013', '', 'Agent SG'),
('38 498', '7H30-19H30 - L à V', '6/08/2012', '31/08/2012', 'Agent SG'),
('38 500', '7H30-19H30 - L à V', '1/07/2013', '', 'Agent SG'),
('38 501', '7H30-19H30 - L à V', '10/07/2014', '', 'Agent SG'),
('38 502', '7H30-19H30 - L à V', '22/10/2012', '', 'Cadre au Forfait'),
('38 503', '7H30-19H30 - L à V', '7/07/2014', '01/08/2014', 'Agent SG'),
('38 504', '7H30-19H30 - L à V', '30/03/2015', '', 'Intérimaire'),
('38 505', '7H30-19H30 - L à V', '3/12/2012', '', 'Agent SG'),
('38 507', '7H30-19H30 - L à V', '26/11/2012', '', 'Agent SG'),
('38 514', '7H30-19H30 - L à V', '27/10/2014', '', 'Agent SG'),
('38 515', '7H30-19H30 - L à V', '30/03/2015', '', 'Intérimaire'),
('38 516', '7H30-19H30 - L à V', '01/09/2014', '17/09/2014', 'STOCK'),
('38 521', '7H30-19H30 - L à V', '14/01/2015', '06/03/2015', 'STOCK'),
('38 522', '7H30-19H30 - L à V', '7/07/2014', '01/08/2014', 'STOCK'),
('38 523', '7H30-19H30 - L à V', '7/07/2014', '01/08/2014', 'STOCK'),
('38 524', '7H30-19H30 - L à V', '19/01/2015', '', 'Agent SG'),
('38 525', '7H30-19H30 - L à V', '7/07/2014', '01/08/2014', 'STOCK'),
('38 526', '7H30-19H30 - L à V', '7/07/2014', '01/08/2014', 'STOCK'),
('38 527', '7H30-19H30 - L à V', '', '', 'Visiteur'),
('38 528', '7H30-19H30 - L à V', '', '', 'Visiteur'),
('38 529', '7H30-19H30 - L à V', '', '', 'COFELY'),
('38 530', '7H30-19H30 - L à V', '23/10/2014', '', 'Agent SG'),
('38 531', '7H30-19H30 - L à V', '05/01/2015', '', 'Agent SG'),
('38 532', '7H30-19H30 - L à V', '', '', 'STOCK'),
('38 533', '7H30-19H30 - L à V', '15/09/2014', '', 'Agent SG'),
('38 534', '7H30-19H30 - L à V', '22/01/2015', '', 'Agent SG'),
('38 535', '7H30-19H30 - L à V', '08/10/2014', '', 'Agent SG'),
('38 539', '7H30-19H30 - L à V', '08/09/2014', '', 'Agent SG');

-- --------------------------------------------------------

--
-- Structure de la table `Regime_Travail`
--

CREATE TABLE `Regime_Travail` (
  `Id_Regime_Travail` int(3) NOT NULL AUTO_INCREMENT,
  `Regime_Travail` varchar(50) NOT NULL,
  `Etiqeuette_Badgeuse` varchar(50) NOT NULL,
  `Commentaire` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id_Regime_Travail`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `Regime_Travail`
--

INSERT INTO `Regime_Travail` (`Id_Regime_Travail`, `Regime_Travail`, `Etiqeuette_Badgeuse`, `Commentaire`) VALUES
(1, '100%-Temps Plein', '100%-TEMPS PLEIN', NULL),
(2, '80%-Mercredi', '80%-MERCREDI', NULL),
(3, '80%-Vendredi', '80%-VENDREDI', NULL),
(4, '90%-35H Stage Etude / Auxiliaire Vacances', '90%-35H STAG ETU/AUX VAC', NULL),
(5, 'Autre', 'Autre', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Service`
--

CREATE TABLE `Service` (
  `Id_service` int(2) NOT NULL AUTO_INCREMENT,
  `Libelle_service` varchar(10) NOT NULL,
  `N_Guichet` varchar(11) NOT NULL,
  `Responsable_RST` varchar(12) NOT NULL,
  `Id_UG` int(1) NOT NULL,
  PRIMARY KEY (`Id_service`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `Service`
--

INSERT INTO `Service` (`Id_service`, `Libelle_service`, `N_Guichet`, `Responsable_RST`, `Id_UG`) VALUES
(1, 'OPE', '17310', 'GL001288927', 5),
(4, 'CNTOE', '19425', 'GL001727627', 1),
(5, 'CRE', '17307', 'GL001312776', 2),
(6, 'OPE', '17308', 'GL001261619', 2),
(7, 'ADM', '17314', 'GL003725124', 4),
(8, 'PP', '17314', 'GL003402724', 4),
(9, 'PM', '17314', 'GL002391183', 4),
(10, 'CTA', '17312', 'GL001114446', 1),
(11, 'GA', '17450', 'GL001284058', 6),
(12, 'DIR', '17301', 'GL001223593', 6),
(13, 'VAD', '17478', 'GL001431436', 3),
(16, 'CLIPRO', '17494', 'GL001347228', 3),
(17, 'CREDITS', '17304', 'GL001099076', 3),
(18, 'PRD_SUC', '17303_17305', 'GL003812120', 3),
(19, 'FRA_INT', '18111_18112', 'GL001291715', 5);

-- --------------------------------------------------------

--
-- Structure de la table `SGR`
--

CREATE TABLE `SGR` (
  `id_SGR` int(10) NOT NULL AUTO_INCREMENT,
  `id_operation` int(1) NOT NULL,
  `matricule` varchar(12) NOT NULL,
  `id_etat_operation` int(1) NOT NULL,
  `operateur_ARH` varchar(12) NOT NULL,
  `date_modif_ARH` date NOT NULL,
  `commentaire_ARH` varchar(200) DEFAULT NULL,
  `operateur_RDO_RST` varchar(12) DEFAULT NULL,
  `date_valide_RDO_RST` date DEFAULT NULL,
  `commentaire_RDO_RST` varchar(200) DEFAULT NULL,
  `operateur_ASI_GDM` varchar(12) DEFAULT NULL,
  `date_valide_ASI_GDM` date DEFAULT NULL,
  PRIMARY KEY (`id_SGR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `SGR_Etat_operation`
--

CREATE TABLE `SGR_Etat_operation` (
  `id_etat_operation` int(1) NOT NULL DEFAULT '0',
  `libelle_etat_operation` varchar(30) NOT NULL,
  PRIMARY KEY (`id_etat_operation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `SGR_Etat_operation`
--

INSERT INTO `SGR_Etat_operation` (`id_etat_operation`, `libelle_etat_operation`) VALUES
(1, 'Attente Niveau RSO/RST'),
(2, 'Attente niveau ASI/GDM'),
(3, 'Valide');

-- --------------------------------------------------------

--
-- Structure de la table `SGR_operation`
--

CREATE TABLE `SGR_operation` (
  `id_operation` int(1) NOT NULL AUTO_INCREMENT,
  `libelle_operation` varchar(15) NOT NULL,
  PRIMARY KEY (`id_operation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `SGR_operation`
--

INSERT INTO `SGR_operation` (`id_operation`, `libelle_operation`) VALUES
(1, 'Arrivant'),
(2, 'Mouvement'),
(3, 'Depart');

-- --------------------------------------------------------

--
-- Structure de la table `Type_Agent`
--

CREATE TABLE `Type_Agent` (
  `Id_Type_Agent` int(1) NOT NULL AUTO_INCREMENT,
  `Type_Agent` varchar(20) NOT NULL,
  PRIMARY KEY (`Id_Type_Agent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `Type_Agent`
--

INSERT INTO `Type_Agent` (`Id_Type_Agent`, `Type_Agent`) VALUES
(1, 'Agent SG'),
(2, 'Intérimaire'),
(3, 'Stagiaire Etude'),
(4, 'Cadre au Forfait'),
(5, 'Auxiliaire vacances'),
(6, 'Alternant');

-- --------------------------------------------------------

--
-- Structure de la table `UG`
--

CREATE TABLE `UG` (
  `Id_UG` int(1) NOT NULL AUTO_INCREMENT,
  `Libelle_UG` varchar(10) NOT NULL,
  `Responsable_RDO` varchar(12) NOT NULL,
  PRIMARY KEY (`Id_UG`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `UG`
--

INSERT INTO `UG` (`Id_UG`, `Libelle_UG`, `Responsable_RDO`) VALUES
(1, 'ARS', 'GL001114446'),
(2, 'ENT', 'GL001350461'),
(3, 'PRIPRO', 'GL001231695'),
(4, 'REC', 'GL001438050'),
(5, 'MDP', 'GL003256096'),
(6, 'DIR', 'GL001223593');

-- --------------------------------------------------------

--
-- Structure de la table `User_Table`
--

CREATE TABLE `User_Table` (
  `matricule` varchar(12) NOT NULL DEFAULT '',
  `Nom` varchar(30) DEFAULT NULL,
  `Prenom` varchar(30) DEFAULT NULL,
  `civilite` varchar(4) DEFAULT NULL,
  `mail` varchar(60) DEFAULT NULL,
  `id_service` varchar(2) DEFAULT NULL,
  `Id_Type_Agent` int(1) DEFAULT NULL,
  `Id_Regime_Travail` int(3) DEFAULT NULL,
  `Date_arrivee` varchar(10) DEFAULT NULL,
  `date_Fin_Contrat` varchar(10) DEFAULT NULL,
  `Login` varchar(7) DEFAULT NULL,
  `badge` varchar(6) DEFAULT NULL,
  `Ref_Loc` varchar(5) DEFAULT NULL,
  `Ref_Loc_Ancienne` varchar(5) DEFAULT NULL,
  `Etat_Depart` varchar(10) DEFAULT NULL,
  `Motif_depart` varchar(100) DEFAULT NULL,
  `Commentaire_depart` varchar(10) DEFAULT NULL,
  `Date_depart_retraite` varchar(10) DEFAULT NULL,
  `Habilitation_MAIA` varchar(5) DEFAULT NULL,
  `Habilitation_Site` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `User_Table`
--

INSERT INTO `User_Table` (`matricule`, `Nom`, `Prenom`, `civilite`, `mail`, `id_service`, `Id_Type_Agent`, `Id_Regime_Travail`, `Date_arrivee`, `date_Fin_Contrat`, `Login`, `badge`, `Ref_Loc`, `Ref_Loc_Ancienne`, `Etat_Depart`, `Motif_depart`, `Commentaire_depart`, `Date_depart_retraite`, `Habilitation_MAIA`, `Habilitation_Site`) VALUES
('GL001035567', 'TARDU', 'Christine', 'Mme', 'marie-christine.tardu@socgen.com', '4', 1, 1, '11/06/2012', '', 'A103556', '14138', '4D42', '', '', '', '', '', '', ''),
('GL001039106', 'BROUARD', 'MARTINE', 'Mme', 'martine.brouard@socgen.com', '19', 1, 1, '30/09/2003', '23/04/2015', 'A103910', '16275', '4D14', '', 'en cours', 'Depart en retraite', '', '07/01/15', '', ''),
('GL001057330', 'NEUTE', 'DOMINIQUE', 'Mme', 'dominique.neute@socgen.com', '1', 1, 1, '01/11/2011', '', 'A105733', '24757', '4D30', '', '', '', '', '', '', ''),
('GL001058692', 'HEGON', 'ALAIN', 'M.', 'alain.hegon@socgen.com', '19', 1, 1, '30/09/2003', '', 'A105869', '16214', '4D05', '', '', '', '', '', '', ''),
('GL001058734', 'MONTI', 'SYLVAIN', 'M.', 'sylvain.monti@socgen.com', '12', 4, 1, '01/01/2013', '', 'A105873', '16291', '4G05', '', '', '', '', '', '', ''),
('GL001064567', 'COSSON', 'SUZANNE', 'Mme', 'suzanne.cosson@socgen.com', '10', 1, 1, '30/09/2003', '', 'A106456', '14114', '4G12', '', '', '', '', '', '', ''),
('GL001066554', 'QUEYRAS', 'MARYSE', 'Mme', 'maryse.queyras@socgen.com', '8', 1, 1, '25/11/2013', '', 'A106655', '24708', '5D02', '', '', '', '', '', '', ''),
('GL001067909', 'LE NEOL', 'MIREILLE', 'Mme', 'mireille.leneol@socgen.com', '13', 1, 1, '1/07/2013', '', 'A106790', '38500', '5G08', '', '', '', '', '', '', ''),
('GL001071950', 'PRILLIEUX', 'JEAN MARC', 'M.', 'jean-marc.prillieux@socgen.com', '8', 1, 1, '30/09/2003', '', 'A107195', '16352', '5D07', '', '', '', '', '', '', ''),
('GL001077965', 'DIVOURON', 'ARMELLE', 'Mme', 'armelle.divouron@socgen.com', '17', 1, 1, '21/04/2011', '', 'A107796', '24777', '3D46', '', '', '', '', '', '', ''),
('GL001078203', 'DESSAINJEAN', 'MURIELLE', 'Mme', 'murielle.dessainjean@socgen.com', '4', 1, 3, '30/09/2003', '', 'A107820', '14116', '4D36', '', '', '', '', '', '', ''),
('GL001081439', 'MARCHET', 'PATRICK', 'M.', 'patrick.marchet@socgen.com', '18', 1, 1, '30/09/2003', '', 'A108143', '14106', '3D20', '', '', '', '', '', '', ''),
('GL001082759', 'NANO', 'PASCAL', 'M.', 'pascal.nano@socgen.com', '4', 1, 1, '04/07/2005', '', 'A108275', '24775', '4D33', '', '', '', '', '', '', ''),
('GL001083435', 'TESTU', 'CATHERINE', 'Mme', 'catherine.testu@socgen.com', '8', 1, 1, '08/11/2004', '', 'A108343', '24712', '5D13', '', '', '', '', '', '', ''),
('GL001084953', 'DUMAY', 'ELISABETH', 'Mme', 'elisabeth.dumay@socgen.com', '13', 1, 5, '08/11/2004', '', 'A108495', '24760', '5G09', '', '', '', '', '', '', ''),
('GL001088566', 'KRALIK', 'SYLVIE', 'Mme', 'sylvie.kralik@socgen.com', '9', 1, 1, '29/09/2003', '', 'A108856', '14117', '5D36', '', '', '', '', '', '', ''),
('GL001091859', 'POTART', 'SIMONE', 'Mme', 'simone.potart@socgen.com', '10', 1, 1, '29/09/2003', '', 'A109185', '24800', '3D06', '', '', '', '', '', '', ''),
('GL001093459', 'GUILBERT', 'SANDRINE', 'Mme', 'sandrine.guilbert@socgen.com', '18', 1, 3, '02/12/2004', '', 'A109345', '24767', '3D15', '', '', '', '', '', '', ''),
('GL001096346', 'BONNAUD', 'Thierry', 'M.', 'thierry.bonnaud@socgen.com', '4', 1, 1, '11/06/2012', '', 'A109634', '24738', '4D39', '', '', '', '', '', '', ''),
('GL001099076', 'LOPEZ', 'PHILIPPE', 'M.', 'philippe.lopez@socgen.com', '17', 1, 1, '2/06/2014', '', 'A109907', '14136', '3D33', '', '', '', '', '', '', ''),
('GL001099472', 'BERTHO', 'LAURENCE', 'Mme', 'laurence.bertho@socgen.com', '16', 1, 1, '09/12/2003', '', 'A109947', '16104', '3D31', '', '', '', '', '', '', ''),
('GL001114446', 'BRAGANZA', 'GYSLAINE', 'Mme', 'gyslaine.braganza@socgen.com', '10', 4, 1, '01/01/2013', '', 'A111444', '16117', '4G16', '', '', '', '', '', '', ''),
('GL001121144', 'BALTHASAR', 'ALAIN', 'M.', 'alain.balthasar@socgen.com', '6', 1, 1, '17/09/2012', '', 'A112114', '38488', '3G09', '', '', '', '', '', '', ''),
('GL001123298', 'TAILLARD', 'PHILIPPE', 'M.', 'philippe.a.taillard@socgen.com', '12', 4, 1, '01/01/2013', '', 'A112329', '14143', '4G08', '', '', '', '', '', '', ''),
('GL001126200', 'RIET', 'Jean Pierre ', 'M.', 'jean-pierre.riet@socgen.com', '4', 1, 1, '11/06/2012', '', 'A112620', '24796', '4D41', '', '', '', '', '', '', ''),
('GL001127067', 'BREGAUD', 'MICHEL', 'M.', 'michel.bregaud@socgen.com', '18', 1, 1, '08/11/2004', '', 'A112706', '24731', '3D10', '', '', '', '', '', '', ''),
('GL001135367', 'CALVEZ', 'FRANCOISE', 'Mme', 'francoise.calvez@socgen.com', '7', 1, 1, '02/11/2004', '', 'A113536', '16252', '5D16', '', '', '', '', '', '', ''),
('GL001140680', 'MARCAULT', 'CHRISTIANE', 'Mme', 'christiane.marcault@socgen.com', '6', 1, 1, '30/09/2003', '', 'A114068', '16191', '3G26', '', '', '', '', '', '', ''),
('GL001147099', 'BERTEAUX', 'NADINE', 'Mme', 'nadine.berteaux@socgen.com', '4', 1, 1, '30/09/2003', '', 'A114709', '16207', '4D44', '', '', '', '', '', '', ''),
('GL001151224', 'TEUMA', 'PATRICIA', 'Mme', 'patricia.teuma@socgen.com', '7', 1, 1, '2/06/2014', '', 'A115122', '24742', '5D23', '', '', '', '', '', '', ''),
('GL001153758', 'BOULON', 'DANIELE', 'Mme', 'daniele.boulon@socgen.com', '19', 1, 1, '05/11/2004', '', 'A115375', '24717', '4D10', '', '', '', '', '', '', ''),
('GL001162411', 'OLIVIER', 'ANNETTE', 'Mme', 'annette.olivier@socgen.com', '8', 1, 1, '08/11/2004', '', 'A116241', '24758', '5D04', '', '', '', '', '', '', ''),
('GL001163393', 'BEURTIN', 'Nelly', 'Mme', 'nelly.beurtin@socgen.com', '4', 1, 1, '11/06/2012', '', 'A116339', '24727', '4G15', '', '', '', '', '', '', ''),
('GL001164615', 'RAGER LUCAS', 'JEANNE MARIE', 'Mme', 'jeanne-marie.rager-lucas@socgen.com', '18', 1, 1, '30/09/2003', '', 'A116461', '14137', '3D04', '', '', '', '', '', '', ''),
('GL001164755', 'VARGA', 'FLORENCE', 'Mme', 'florence.varga@socgen.com', '19', 1, 1, '08/11/2004', '', 'A116475', '24729', '4D13', '', '', '', '', '', '', ''),
('GL001165299', 'SIMON', 'PATRICIA', 'Mme', 'patricia.simon@socgen.com', '18', 1, 1, '30/09/2003', '', 'A116529', '16308', '3D17', '', '', '', '', '', '', ''),
('GL001168277', 'MARTIN', 'LAURE', 'Mme', 'laure.martin@socgen.com', '6', 1, 1, '30/09/2003', '', 'A116827', '14119', '3G16', '', '', '', '', '', '', ''),
('GL001172204', 'RASTELLO', 'FRANCOISE', 'Mme', 'francoise.rastello@socgen.com', '13', 1, 1, '08/11/2004', '', 'A117220', '24740', '5G13', '', '', '', '', '', '', ''),
('GL001173996', 'PONSIN', 'SYLVIE', 'Mme', 'sylvie.ponsin@socgen.com', '8', 1, 1, '30/09/2003', '', 'A117399', '14120', '5D12', '', '', '', '', '', '', ''),
('GL001174515', 'GUERIN', 'FLORENCE', 'Mme', 'florence.guerin@socgen.com', '6', 1, 3, '10/11/2008', '', 'A117451', '24702', '3G14', '', '', '', '', '', '', ''),
('GL001175934', 'PALANDRE', 'Chantal', 'Mme', 'chantal.palandre@socgen.com', '4', 1, 1, '11/06/2012', '', 'A117593', '16223', '4D34', '', '', '', '', '', '', ''),
('GL001185156', 'VATIN', 'MARILYNE', 'Mme', 'marilyne.vatin@socgen.com', '17', 1, 3, '30/09/2003', '', 'A118515', '16312', '3D35', '', '', '', '', '', '', ''),
('GL001188077', 'PITOU', 'JEAN CLAUDE', 'M.', 'jeanclaude.pitou@socgen.com', '17', 1, 1, '2/06/2014', '', 'A118807', '16262', '3D44', '', '', '', '', '', '', ''),
('GL001193010', 'BOBAN', 'CATHERINE', 'Mme', 'catherine.boban@socgen.com', '19', 1, 1, '15/11/2004', '', 'A119301', '24750', '4D03', '', '', '', '', '', '', ''),
('GL001194075', 'LE GARREC', 'COLETTE', 'Mme', 'colette.le-garrec@socgen.com', '1', 1, 1, '05/11/2004', '', 'A119407', '24744', '4D29', '', '', '', '', '', '', ''),
('GL001194083', 'PIRIOU', 'ALAIN', 'M.', 'alain.piriou@socgen.com', '5', 1, 1, '31/03/2014', '', 'A119408', '24732', '3G28', '', '', '', '', '', '', ''),
('GL001208529', 'GALBIATI', 'RAPHAEL', 'M.', 'raphael.galbiati@socgen.com', '7', 1, 1, '24/02/2011', '', 'A120852', '24720', '5D26', '', '', '', '', '', '', ''),
('GL001223593', 'WILLECOCQ', 'Christian', 'M.', 'christian.willecocq@socgen.com', '12', 4, 1, '02/05/2013', '', 'A122359', 'XXXX', '4G00', '', '', '', '', '', '', ''),
('GL001226943', 'SETTEBOUN', 'CORINNE', 'Mme', 'corinne.setteboun@socgen.com', '1', 1, 3, '30/09/2003', '', 'A122694', '14132', '4D27', '', '', '', '', '', '', ''),
('GL001231034', 'LAMELOISE', 'SERVANE', 'Mme', 'servane.lameloise@socgen.com', '13', 1, 5, '08/11/2004', '', 'A123103', '24756', '5G04', '', '', '', '', '', '', ''),
('GL001231695', 'TIDGHI', 'JOELLE', 'Mme', 'joelle.tidghi@socgen.com', '12', 4, 1, '01/01/2013', '', 'A123169', '', '3D00', '', '', '', '', '', '', ''),
('GL001236173', 'BELTRAMINI', 'CHRISTINE', 'Mme', 'christine.ascione@socgen.com', '18', 1, 1, '30/09/2003', '', 'A123617', '16329', '3D03', '', '', '', '', '', '', ''),
('GL001238617', 'BOURMANCE', 'MARIE CHRISTINE', 'Mme', 'mariechristine.bourmance@socgen.com', '', 1, 1, '24/09/2012', '', 'A123861', '36878', '3G06', '', '', '', '', '', '', ''),
('GL001238781', 'PANNIER', 'VERONIQUE', 'Mme', 'veronique.sannier@socgen.com', '17', 1, 1, '16/06/2008', '', 'A123878', '24748', '3D43', '', '', '', '', '', '', ''),
('GL001239433', 'BLANCHET', 'MARC', 'M.', 'marc.blanchet@socgen.com', '5', 1, 1, '30/09/2003', '', 'A123943', '16272', '3G30', '', '', '', '', '', '', ''),
('GL001242106', 'QUEVA', 'SANDRINE', 'Mme', 'sandrine.queva@socgen.com', '13', 1, 1, '07/09/2009', '', 'A124210', '16304', '3D41', '', '', '', '', '', '', ''),
('GL001253889', 'NOSPERGER', 'ANNIE', 'Mme', 'annie.nosperger@socgen.com', '7', 1, 1, '20/10/2003', '', 'A125388', '16110', '5D17', '', '', '', '', '', '', ''),
('GL001261619', 'LETREN', 'PASCAL', 'M.', 'pascal.letren@socgen.com', '6', 1, 1, '14/02/2005', '', 'A126161', '16234', '3G01', '', '', '', '', '', '', ''),
('GL001265487', 'LORTET', 'BEATRICE', 'Mme', 'beatrice.lortet@socgen.com', '17', 1, 3, '10/01/2005', '', 'A126548', '24770', '3D37', '', '', '', '', '', '', ''),
('GL001266154', 'ZBIESKI', 'CORINNE', 'Mme', 'corinne.zbieski@socgen.com', '7', 1, 3, '30/09/2003', '', 'A126615', '16263', '5D19', '', '', '', '', '', '', ''),
('GL001279389', 'LE CORRE', 'CATHERINE', 'Mme', 'catherine.le-corre@socgen.com', '6', 1, 1, '02/07/2012', '', 'A127938', '16257', '3G15', '', '', '', '', '', '', ''),
('GL001282912', 'SINTES', 'REGINE', 'Mme', 'regine.sintes@socgen.com', '9', 1, 1, '08/11/2004', '', 'A128291', '24759', '5D34', '', '', '', '', '', '', ''),
('GL001284058', 'LEBAILLY-ARNOUL', 'VALERIE', 'Mme', 'valerie.lebailly@socgen.com', '12', 1, 1, '01/01/2013', '', 'A128405', '', '4G07', '', '', '', '', '', '', ''),
('GL001284900', 'SOUNI', 'HANISSA', 'Mme', 'hanissa.souni@socgen.com', '1', 1, 1, '10/12/2003', '', 'A128490', '16195', '4D28', '', '', '', '', '', '', ''),
('GL001284975', 'MOULINIE', 'JEAN-FRANCOIS', 'M.', 'jean-francois.moulinie@socgen.com', '13', 1, 1, '12/01/2011', '', 'A128497', '16289', '5G07', '', '', '', '', '', '', ''),
('GL001288927', 'JACQUEMIN', 'CAROLE', 'Mme', 'carole.jacquemin@socgen.com', '1', 1, 1, '02/02/2004', '', 'A128892', '16178', '4D32', '', '', '', '', '', '', ''),
('GL001291715', 'SATURNIN', 'MATHIEU', 'M.', 'mathieu.saturnin@socgen.com', '19', 4, 1, '7/04/2014', '', 'A129171', '38494', '4D01', '', '', '', '', '', '', ''),
('GL001293372', 'PIAT', 'FABIENNE', 'Mme', 'fabienne.piat@socgen.com', '13', 1, 1, '28/10/2006', '', 'A129337', '24776', '5G11', '', '', '', '', '', '', ''),
('GL001294149', 'LAI', 'HELENA WAI-YI', 'Mme', 'helena-waiyi.lai@socgen.com', '11', 1, 1, '07/09/2009', '', 'A129414', '36873', '4G06', '', '', '', '', '', '', ''),
('GL001294404', 'MOUILLET', 'CHRYSTELE', 'Mme', 'chrystele.mouillet@socgen.com', '7', 1, 1, '05/01/2015', '', 'A129440', '14336', '5D27', '', '', '', '', '', '', ''),
('GL001295369', 'PLU', 'MARIE VERONIQUE', 'Mme', 'marie-veronique.plu@socgen.com', '9', 1, 1, '08/06/2012', '', 'A129536', '16213', '5D06', '', '', '', '', '', '', ''),
('GL001295666', 'LESUEUR', 'CATHERINE', 'Mme', 'catherine.lesueur@socgen.com', '18', 1, 1, '08/11/2004', '', 'A129566', '24735', '3D16', '', '', '', '', '', '', ''),
('GL001298033', 'BONJOUR', 'NATHALIE', 'Mme', 'nathalie.bonjour@socgen.com', '16', 1, 1, '08/11/2004', '', 'A129803', '24753', '3D25', '', '', '', '', '', '', ''),
('GL001312776', 'CASANOVA', 'ISABELLE', 'Mme', 'isabelle.a.casanova@socgen.com', '', 4, 1, '01/01/2013', '', 'A131277', '38502', '3G33', '', '', '', '', '', '', ''),
('GL001318476', 'REDDON', 'BRIGITTE', 'Mme', 'brigitte.reddon@socgen.com', '16', 1, 1, '3/03/2014', '', 'A131847', '14119', '3D29', '', '', '', '', '', '', ''),
('GL001318484', 'MICHELOT', 'CELINE', 'Mme', 'celine.michelot@socgen.com', '1', 1, 1, '03/08/2011', '', 'A131848', '16265', '4D20', '', '', '', '', '', '', ''),
('GL001322494', 'CAUVIN', 'Valérie', 'Mme', 'valerie.cauvin@socgen.com', '4', 1, 1, '11/06/2012', '', 'A132249', '16230', '4D40', '', '', '', '', '', '', ''),
('GL001328343', 'CIBOIS', 'NADEGE', 'Mme', 'nadege.cibois@socgen.com', '9', 1, 1, '01/03/2012', '', 'A132834', '24707', '5D38', '', '', '', '', '', '', ''),
('GL001338474', 'MARCAULT', 'ALEXANDRA', 'Mme', 'alexandra.marcault@socgen.com', '6', 1, 3, '18/09/2007', '', 'A133847', '14126', '3G13', '', '', '', '', '', '', ''),
('GL001344233', 'NEVEN', 'ANNE', 'Mme', 'anne.neven@socgen.com', '8', 1, 1, '21/10/2013', '', 'A134423', '24728', '5D10', '', '', '', '', '', '', ''),
('GL001347228', 'RIVAS', 'CHRISTINE', 'Mme', 'christine.rivas@socgen.com', '16', 4, 1, '5/08/2013', '', 'A134722', '16305', '3D32', '', '', '', '', '', '', ''),
('GL001350461', 'FARINE', 'MAGALI', 'Mme', 'magali.farine@socgen.com', '', 4, 1, '01/01/2013', '', 'A135046', '24790', '3G00', '', '', '', '', '', '', ''),
('GL001366996', 'LE BOUQUIN', 'Geneviève', 'Mme', 'genevieve.le-bouquin@socgen.com', '4', 1, 1, '11/06/2012', '', 'A136699', '16115', '4D35', '', '', '', '', '', '', ''),
('GL001383413', 'SCLISSON', 'MYRIAM', 'Mme', 'myriam.sclisson@socgen.com', '7', 1, 3, '05/05/2008', '', 'A138341', '16109', '5D31', '', '', '', '', '', '', ''),
('GL001419456', 'LAVERSIN', 'LAURENCE', 'Mme', 'laurence.laversin@socgen.com', '17', 1, 2, '03/10/2011', '', 'A141945', '16249', '3D34', '', '', '', '', '', '', ''),
('GL001431436', 'LE JEUNE', 'FREDERIC', 'M.', 'frederic.le-jeune@socgen.com', '13', 1, 1, '20/03/2006', '', 'A143143', '16244', '5G14', '', '', '', '', '', '', ''),
('GL001438050', 'PARSA', 'Nathalie', 'Mme', 'nathalie.parsa@socgen.com', '7', 4, 1, '01/01/2013', '', 'A143805', '13828', '5D00', '', '', '', '', '', '', ''),
('GL001508266', 'CHARLET', 'SYLVIE', 'Mme', 'sylvie.charlet@socgen.com', '13', 1, 1, '30/09/2013', '', 'A150826', '24799', '5G10', '', '', '', '', '', '', ''),
('GL001525914', 'FAUBERT', 'INGRID', 'Mme', 'ingrid.faubert@socgen.com', '17', 1, 1, '19/07/2011', '', 'A152591', '24736', '3D47', '', '', '', '', '', '', ''),
('GL001564079', 'CHAUVIN', 'ALEXANDRA', 'Mme', 'alexandra.chauvin@socgen.com', '7', 1, 1, '18/09/2014', '', 'A156407', '14170', '5D11', '', '', '', '', '', '', ''),
('GL001586841', 'MAZZOLENI', 'CLAIRE', 'Mme', 'claire.mazzoleni-foucher@socgen.com', '17', 1, 5, '12/11/2012', '', 'A158684', '16307', '3D42', '', '', '', '', '', '', ''),
('GL001606995', 'BARUSTA', 'CAROLE', 'Mme', 'carole.barusta@socgen.com', '18', 1, 3, '26/04/2011', '', 'A160699', '16281', '3D05', '', '', '', '', '', '', ''),
('GL001676634', 'MORELLE', 'MELANIE', 'Mme', 'melanie.morelle@socgen.com', '19', 1, 1, '01/09/2011', '', 'A167663', '14135', '4D06', '', '', '', '', '', '', ''),
('GL001678507', 'TEIGNER', 'CAROLE', 'Mme', 'carole.teigner@socgen.com', '7', 1, 2, '11/08/2014', '', 'A167850', '16274', '5D21', '', '', '', '', '', '', ''),
('GL001727627', 'CARIOU', 'GAEL', 'M.', 'gael.cariou@socgen.com', '4', 4, 1, '01/01/2013', '', 'A172762', '14145', '4D45', '', '', '', '', '', '', ''),
('GL001782010', 'CARLE', 'SEBASTIEN', 'M.', 'sebastien.carle@socgen.com', '17', 1, 1, '30/09/2003', '', 'A178201', '16256', '3D45', '', '', '', '', '', '', ''),
('GL001834464', 'BONARDI', 'CLAIRE', 'Mme', 'claire.bonardi@socgen.com', '7', 1, 5, '3/06/2013', '', 'A183446', '24725', '5D24', '', '', '', '', '', '', ''),
('GL001891605', 'LE MOIGNE', 'ELODIE', 'Mme', 'elodie.guesnon@socgen.com', '16', 1, 3, '26/02/2013', '', 'A189160', '16337', '3D23', '', '', '', '', '', '', ''),
('GL001892256', 'VERDAUD', 'EMILIE', 'Mme', 'emilie.verdaud@socgen.com', '16', 1, 1, '01/04/2011', '', 'A189225', '24755', '3D28', '', '', '', '', '', '', ''),
('GL001962539', 'CHAUVELIER', 'KARINE', 'Mme', 'karine.chauvelier@socgen.com', '1', 1, 1, '01/03/2011', '', 'A196253', '24761', '4D21', '', '', '', '', '', '', ''),
('GL001968049', 'VISAGE', 'JESSICA', 'Mme', 'jessica.visage@socgen.com', '19', 1, 1, '08/10/2012', '', 'A196804', '16241', '4D50', '', '', '', '', '', '', ''),
('GL001972892', 'CONTE', 'PHILIPPE', 'M.', 'philippe.a.conte@socgen.com', '19', 1, 1, '12/12/2011', '', 'A197289', '16193', '4D12', '', '', '', '', '', '', ''),
('GL002029627', 'SAUSSEREAU', 'ELODIE', 'Mme', 'elodie.saussereau@socgen.com', '6', 1, 1, '09/09/2013', '', 'A202962', '16313', '3G12', '', '', '', '', '', '', ''),
('GL002050326', 'BUCAMP', 'MATHIEU', 'M.', 'mathieu.bucamp@socgen.com', '6', 1, 1, '18/02/2013', '', 'A205032', '16310', '3G29', '', '', '', '', '', '', ''),
('GL002054849', 'HUSSON', 'ANNE-LISE', 'Mme', 'anne-lise.husson@socgen.com', '17', 1, 1, '30/09/2003', '', 'A205484', '14140', '3D36', '', '', '', '', '', '', ''),
('GL002078194', 'MODESTINE', 'ALINE', 'Mme', 'aline.modestine@socgen.com', '19', 1, 5, '10/11/2014', '', 'A207819', '36876', '4D08', '', '', '', '', '', '', ''),
('GL002083038', 'SOIRAT', 'CINDY', 'Mme', 'cindy.soirat@socgen.com', '16', 1, 3, '07/02/2011', '', 'A208303', '16242', '3D30', '', '', '', '', '', '', ''),
('GL002181758', 'UNG', 'SOPHANNA', 'Mme', 'sophanna.ung@socegen.com', '19', 1, 1, '05/03/2012', '', 'A218175', '16235', '4D04', '', '', '', '', '', '', ''),
('GL002217883', 'TISCHENBACH', 'DELPHINE', 'Mme', 'delphine.tischenbach@socgen.com', '11', 1, 1, '16/08/2010', '', 'A221788', '14144', '4G04', '', '', '', '', '', '', ''),
('GL002247625', 'JEANNEAU', 'DAMIEN', 'M.', 'damien.jeanneau@socgen.com', '1', 1, 5, '03/09/2012', '', 'A224762', '16173', '4D23', '', '', '', '', '', '', ''),
('GL002303428', 'CARLU', 'MICHAELA', 'Mme', 'michaela.carlu@socgen.com', '19', 1, 1, '19/01/2015', '', 'A230342', '38524', '4D16', '', '', '', '', '', '', ''),
('GL002308435', 'LASSALLE', 'FLORENCE', 'Mme', 'florence.lassalle@socgen.com', '7', 1, 1, '02/07/2012', '', 'A230843', '16221', '5D25', '', '', '', '', '', '', ''),
('GL002313583', 'DE BECO', 'MARION', 'Mme', 'marion.de-beco@socgen.com', '7', 1, 1, '3/09/2014', '', 'A231358', '24770', '5D18', '', '', '', '', '', '', ''),
('GL002320414', 'NOKRAOUI', 'MINA', 'Mme', 'mina.nokraoui@socgen.com', '6', 1, 1, '02/08/2013', '', 'A232041', '', '3G10', '', '', '', '', '', '', ''),
('GL002330249', 'DESPERT', 'SOPHIE', 'Mme', 'sophie.despert@socgen.com', '5', 1, 3, '28/09/2009', '', 'A233024', '14131', '3G32', '', '', '', '', '', '', ''),
('GL002330520', 'DE BONY', 'CLAUDIA', 'Mme', 'claudia.de-bony@socgen.com', '18', 1, 1, '03/01/2006', '', 'A233052', '16266', '3D18', '', '', '', '', '', '', ''),
('GL002391183', 'RITZ', 'PATRICIA', 'Mme', 'patricia.ritz@socgen.com', '9', 1, 1, '2/06/2014', '', 'A239118', '14332', '5D46', '', '', '', '', '', '', ''),
('GL003034675', 'DE SAN PEDRO PEREZ', 'MARIA CARMEN', 'Mme', 'maria.de-san-pedro@socgen.com', '5', 1, 1, '3/02/2014', '', 'A303467', '24752', '3G31', '', '', '', '', '', '', ''),
('GL003088291', 'CARRIC', 'DANIEL', 'M.', 'daniel.a.carric@socgen.com', '7', 1, 1, '1/10/2013', '', 'A308829', '16196', '5D28', '', '', '', '', '', '', ''),
('GL003120037', 'ALIOUANE', 'NASSER', 'M.', 'nasser.aliouane@socgen.com', '16', 1, 1, '03/09/2007', '', 'A312003', '24781', '3D26', '', '', '', '', '', '', ''),
('GL003120664', 'MERCIER', 'OLIVIER', 'M.', 'olivier.a.mercier@socgen.com', '17', 1, 1, '10/06/2007', '', 'A312066', '24773', '3D40', '', '', '', '', '', '', ''),
('GL003123783', 'DUBOIS ', 'Sophie', 'Mme', 'sophie.dubois@socgen.com', '6', 1, 1, '11/06/2012', '', 'A312378', '24763', '3G11', '', '', '', '', '', '', ''),
('GL003131943', 'ZEDDE', 'VIRGINIE', 'Mme', 'virginie.zedde@socgen.com', '4', 1, 1, '02/02/2015', '', 'A313194', '24739', '4D38', '', '', '', '', '', '', ''),
('GL003166477', 'MARQUER', 'MAXIME', 'M.', 'maxime.marquer@socgen.com', '19', 1, 1, '16/05/2011', '', 'A316647', '16309', '4D07', '', '', '', '', '', '', ''),
('GL003256096', 'MIGNOT', 'SANDRINE', 'Mme', 'sandrine.mignot@socgen.com', '1', 4, 1, '6/01/2014', '', 'A325609', '24794', '4D00', '', '', '', '', '', '', ''),
('GL003261252', 'PEREIRA DAS NEVES', 'SEBASTIEN', 'M.', 'sebastien.pereira-das-neves@socgen.com', '19', 1, 1, '26/11/2012', '', 'A326125', '38507', '4D09', '', '', '', '', '', '', ''),
('GL003263050', 'BAUCHET', 'AUDE', 'Mme', 'aude.a.bauchet@socgen.com', '18', 1, 1, '1/02/2014', '', 'A326305', '24752', '3D02', '', '', '', '', '', '', ''),
('GL003273034', 'COULIN', 'NOELLE', 'Mme', 'noelle.coulin@socgen.com', '16', 1, 1, '17/05/2010', '', 'A327303', '16340', '3D24', '', '', '', '', '', '', ''),
('GL003293024', 'HAUTTECOEUR', 'OLIVIER', 'M.', 'olivier.a.hauttecoeur@socgen.com', '9', 1, 1, '23/03/2009', '', 'A329302', '24792', '5D42', '', '', '', '', '', '', ''),
('GL003340189', 'DUTA', 'ALEXANDRA', 'Mme', 'alexandra.a.duta@socgen.com', '5', 1, 1, '11/02/2013', '', 'A334018', '38495', '3G27', '', '', '', '', '', '', ''),
('GL003387743', 'VEZINAT-MEIER', 'VIRGINIE', 'Mme', 'virginie.a.vezinat-meier@socgen.com', '18', 1, 1, '07/05/2012', '', 'A338774', '24768', '3D11', '', '', '', '', '', '', ''),
('GL003389731', 'DESCHAMPS-CHARTIER', 'VERONIQUE', 'Mme', 'veronique.deschamps-chartier@socgen.com', '1', 1, 1, '11/11/2013', '', 'A338973', '38492', '4D22', '', '', '', '', '', '', ''),
('GL003389954', 'CAPMARTY', 'LAURENCE', 'Mme', 'laurence.capmarty@socgen.com', '1', 1, 1, '07/01/2013', '', 'A338995', '16267', '4D18', '', '', '', '', '', '', ''),
('GL003402724', 'CHEVALIER', 'MATHIEU', 'M.', 'mathieu.a.chevalier@socgen.com', '8', 1, 1, '01/04/2010', '', 'A340272', '24787', '5D51', '', '', '', '', '', '', ''),
('GL003410818', 'PHILIPPE', 'FLORENCE', 'Mme', 'florence.a.philippe@socgen.com', '9', 1, 1, '03/05/2010', '', 'A341081', '24723', '5D41', '', '', '', '', '', '', ''),
('GL003413457', 'AYREAULT', 'ELODIE', 'Mme', 'elodie.ayreault@socgen.com', '13', 1, 1, '17/02/2014', '', 'A341345', '16311', '5G06', '', '', '', '', '', '', ''),
('GL003474897', 'HAMADOU', 'VALERIE', 'Mme', 'valerie.a.hamadou@socgen.com', '5', 1, 3, '30/08/2010', '', 'A347489', '24764', '3G25', '', '', '', '', '', '', ''),
('GL003480738', 'PIGNARD', 'PIERRE', 'M.', 'pierre.pignard@socgen.com', '13', 1, 1, '29/07/2013', '', 'A348073', '16343', '5G03', '', '', '', '', '', '', ''),
('GL003483443', 'PURSAD', 'Alexandre', 'M.', 'alexandre.pursad@socgen.com', '17', 1, 1, '25/10/2010', '22/08/2014', 'A348344', '14127', '3D12', '', 'en cours', '', '', '', '', ''),
('GL003527264', 'GETTON', 'LAURINE', 'Mme', 'laurine.a.getton@socgen.com', '6', 1, 1, '07/04/2015', '', 'A352726', '', '', '', '', '', '', '', '', ''),
('GL003595022', 'LAFLEURIERE', 'MARIE', 'Mme', 'marie.lafleuriere@socgen.com', '9', 1, 1, '07/09/2011', '', 'A359502', '16105', '5D44', '', '', '', '', '', '', ''),
('GL003595253', 'LEFEVRE', 'DANIELLE', 'Mme', 'danielle.a.lefevre@socgen.com', '19', 1, 1, '01/08/2011', '', 'A359525', '15845', '4D17', '', '', '', '', '', '', ''),
('GL003605029', 'KOUCHAKOVA', 'TATIANA', 'Mme', 'tatiana.kouchakova@socgen.com', '9', 1, 1, '24/09/2012', '', 'A360502', '16240', '5D39', '', '', '', '', '', '', ''),
('GL003717675', 'PINEAU', 'OLIVIER', 'M.', 'olivier.pineau@socgen.com', '9', 1, 1, '03/12/2012', '', 'A371767', '38505', '5D40', '', '', '', '', '', '', ''),
('GL003725124', 'VILLAIN', 'NADEGE', 'Mme', 'nadege.villain@socgen.com', '7', 4, 1, '01/01/2013', '', 'A372512', '38497', '5D29', '', '', '', '', '', '', ''),
('GL003749645', 'BISQUERRA', 'CHRISTOPHE', 'M.', 'christophe.bisquerra@socgen.com', '8', 1, 1, '3/06/2013', '', 'A374964', '16120', '5D08', '', '', '', '', '', '', ''),
('GL003797453', 'BARROSO', 'SYLVIE', 'Mme', 'sylvie.alves-barroso@socgen.com', '1', 1, 1, '2/09/2013', '', 'A379745', '38530', '4D26', '', '', '', '', '', '', ''),
('GL003812120', 'BERNABLE', 'LOIC', 'M.', 'loic.a.bernable@socgen.com', '18', 4, 1, '15/10/2013', '', 'A381212', '16181', '3D01', '', '', '', '', '', '', ''),
('GL003821378', 'AUBERT', 'CHRISTINE', 'Mme', 'christine.a.aubert@socgen.com', '1', 1, 1, '6/01/2014', '', 'A382137', '16245', '4D19', '', '', '', '', '', '', ''),
('GL003821808', 'CASTILLO', 'GWENAELLE', 'Mme', 'gwenaelle.a.castillo@socgen.com', '1', 1, 1, '1/01/2014', '', 'A382180', '16176', '4D25', '', '', '', '', '', '', ''),
('GL003824885', 'TCHAMBA', 'ANNIE', 'Mme', 'annie.tchamba@socgen.com', '8', 1, 1, '15/01/2014', '', 'A382488', '38489', '5D01', '', '', '', '', '', '', ''),
('GL003829462', 'RAFFRAY', 'JULIEN', 'M.', 'julien.a.raffray@socgen.com', '10', 1, 1, '24/02/2014', '', 'A382946', '16119', '4G13', '', '', '', '', '', '', ''),
('GL003884111', 'JULIEN', 'MARIE-JOELLE', 'Mme', 'marie-joelle.julien@socgen.com', '8', 1, 1, '28/07/2014', '', 'A388411', '36881', '5D05', '', '', '', '', '', '', ''),
('GL003907805', 'LESOT', 'CECILIA', 'Mme', 'cecilia.lesot@socgen.com', '18', 5, 5, '08/09/2014', '', 'A390780', '38539', '', '', '', '', '', '', '', ''),
('GL003909892', 'RAVISSANDIRANE', 'ALIXIA', 'Mme', 'alixia.ravissandirane@socgen.com', '17', 5, 5, '15/09/2014', '', 'A390989', '38533', '', '', '', '', '', '', '', ''),
('GL003910791', 'ESPITALIER', 'LAURE', 'Mme', 'laure.espitalier@socgen.com', '16', 5, 5, '22/09/2014', '', 'A391079', '35760', '', '', '', '', '', '', '', ''),
('GL003912367', 'BARAER', 'SONIA', 'Mme', 'sonia.baraer@socgen.com', '19', 1, 1, '01/10/2014', '', 'A391236', '16216', '4D02', '', '', '', '', '', '', ''),
('GL003915931', 'CASTRO', 'MELANIE', 'Mme', 'melanie.castro@socgen.com', '9', 1, 1, '13/10/2014', '', 'A391593', '14163', '5D35', '', '', '', '', '', '', ''),
('GL003917192', 'MATOUAK', 'SABRINA', 'Mme', 'sabrina.matouak@socgen.com', '7', 5, 5, '14/10/2014', '', 'A391719', '14350', '', '', '', '', '', '', '', ''),
('GL003918281', 'AISSI', 'HICHAM', 'M.', 'hicham.aissi@socgen.com', '5', 5, 4, '23/10/2014', '22/04/2015', 'A391828', '35756', '', '', '', '', '', '', '', ''),
('GL003918349', 'YACE', 'REGIS', 'M.', 'regis.yace@socgen.com', '8', 5, 4, '04/11/2014', '30/04/2015', 'A391834', '24769', '', '', '', '', '', '', '', ''),
('GL003918968', 'EBASSA BEGOUDE', 'TETISHERI', 'Mme', 'tetisheri.ebassa-begoude@socgen.com', '8', 5, 5, '27/10/2014', '', 'A391896', '38514', '', '', '', '', '', '', '', ''),
('GL003921509', 'SEYNI SIDIKOU', 'BOUBACAR', 'M.', 'boubacar.seyni-sidikou@socgen.com', '9', 5, 4, '18/11/2014', '16/05/2015', 'A392150', '16236', '', '', '', '', '', '', '', ''),
('GL003924404', 'BERTRAC', 'DIANE', 'Mme', 'diane.bertrac@socgen.com', '7', 5, 1, '28/11/2014', '', 'A392440', '14129', '', '', '', '', '', '', '', ''),
('GL003927282', 'BOUCHE', 'STEPHANIE', 'Mme', 'stephanie.bouche@socgen.com', '9', 1, 1, '05/01/2015', '', 'A392728', '38531', '', '', '', '', '', '', '', ''),
('GL003928215', 'PERECHODOV', 'PHILIPPE', 'M.', 'philippe.perechodov@socgen.com', '8', 1, 1, '09/01/2015', '', 'A392821', '24730', '5D09', '', '', '', '', '', '', ''),
('GL003936606', 'ZHARIGELE', 'XXX', 'M.', 'xxx.a.zharigele@socgen.com', '11', 5, 4, '02/03/2015', '31/08/2015', 'A393660', '16188', '', '', '', '', '', '', '', ''),
('GL003939881', 'BENOIST', 'FLORIAN', 'M.', 'florian.benoist@socgen.com', '11', 5, 4, '03/03/2015', '31/08/2015', 'A393988', '15836', '', '', '', '', '', '', '', ''),
('GL003939915', 'GOUVEIA', 'SANDY', 'Mme', 'sandy.gouveia@socgen.com', '11', 5, 4, '03/03/2015', '31/08/2015', 'A393991', '16258', '', '', '', '', '', '', '', ''),
('GL003940350', 'BENKAMOUN', 'MARIANNE', 'Mme', 'marianne.benkamoun@socgen.com', '7', 5, 4, '01/06/2015', '30/08/2015', 'A394035', '', '', '', '', '', '', '', '', ''),
('GL00X094353', 'MARTINEAU', 'MARIE FRANCE', 'Mme', 'marie-france.b.martineau@socgen.com', '17', 2, 1, '05/01/2015', '30/01/2015', 'X094353', '24716', '', '', '', '', '', '', '', ''),
('GL00X126936', 'PETITGRAND', 'CAROLINE', 'Mme', 'caroline.petitgrand@socgen.com', '17', 2, 1, '11/03/2015', '30/06/2015', 'X126936', '24726', '3D52', '', '', '', '', '', '', ''),
('GL00X136039', 'ATARI', 'HAFSSA', 'Mme', 'hafssa.atari@socgen.com', '18', 2, 1, '05/01/2015', '06/03/2015', 'X136039', '16293', '', '', '', '', '', '', '', ''),
('GL00X136271', 'EL HILALI', 'DOUNIA', 'Mme', 'dounia.el-hilali@socgen.com', '17', 2, 1, '08/01/2015', '27/02/2015', 'X136271', '36880', '3D50', '', 'en cours', 'Fin de mission', '', '', '', ''),
('GL00X136476', 'SOLOY', 'YANNICK', 'Mme', 'christine.acker@socgen.com', '7', 2, 1, '12/03/2015', '17/04/2015', 'X136476', '24743', '5D22', '', '', '', '', '', '', ''),
('GL00X137056', 'TOMA', 'NATALIA', 'Mme', 'natalia.toma@socgen.com', '7', 2, 1, '02/02/2015', '24/02/2015', 'X137056', '16111', '', '', '', '', '', '', '', ''),
('GL00X138631', 'LOWCZYK', 'MAXIME', 'M.', 'maxime.lowczyk@socgen.com', '17', 2, 1, '30/03/2015', '31/07/2015', 'X138631', '38504', '3D39', '', '', '', '', '', '', ''),
('GL00X138634', 'YAM', 'CHARLES', 'M.', 'charles.yam@socgen.com', '17', 2, 1, '30/03/2015', '31/07/2015', 'X138634', '38515', '3D38', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `WYSIWYG`
--

CREATE TABLE `WYSIWYG` (
  `id_text` int(3) NOT NULL AUTO_INCREMENT,
  `sujet` varchar(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `body` mediumtext NOT NULL,
  PRIMARY KEY (`id_text`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `WYSIWYG`
--

INSERT INTO `WYSIWYG` (`id_text`, `sujet`, `description`, `body`) VALUES
(1, 'sujet1', 'description1', 'balabalbalbalbalba'),
(2, 'sujet2', 'des2', '<p>&nbsp;</p>\r\n<p><strong>Lorem ipsum</strong> dolor sit amet, ne sed tation salutatus cotidieque. Sale conclusionemque per an, ignota equidem ne cum, <span style="text-decoration: line-through;">theophrastus complectitur et pri. Sed ex novum vivendo elaboraret. Libris molestiae nec ut. An prima idque senserit est.</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Reque facilis</strong>i perfecto ei eam, his omnis repudiare ne. At mei nihil iudico iisque, libris latine ius ea. At lucilius honestatis per. <em>Mea ne paulo iudico tacimates.</em></p>\r\n<p>&nbsp;</p>\r\n<p><strong>No possit</strong> sanctus corpora per. Mei accusata efficiendi conclusionemque ei. Ut vix dicit primis, doctus labores id qui. An nominavi <span style="text-decoration: underline;">ullamcorper mel.</span></p>\r\n<p>&nbsp;</p>\r\n<p><strong>Movet conceptam</strong> ex qui. Ne nominati perpetua patrioque mel, at soleat tacimates voluptatum cum. Vim ex tale alienum mnesarchum, cu vel principes accommodare, ne nonumy impedit sea. Amet animal eu nam, ius no mutat tantas delenit. Vim <span style="text-decoration: underline;">copiosae constituto et, ne modo eruditi mnesarchum sed, liber saperet officiis his cu.</span></p>\r\n<p>&nbsp;</p>'),
(3, 'a', 'd', '<p><img title="Kiss" src="tiny_mce/plugins/emotions/img/smiley-kiss.gif" alt="Kiss" border="0" />&Icirc;</p>\r\n<ul>\r\n<li>fhqjl</li>\r\n<li><span style="text-decoration: underline;">fjdkqlm</span></li>\r\n</ul>\r\n<ol>\r\n<li>fdukpq</li>\r\n<li><strong>fdjkqlm</strong></li>\r\n<li></li>\r\n</ol>\r\n<p>&nbsp;</p>'),
(4, 'a', 'd', '<p><span style="font-family: arial, helvetica, sans-serif;"><img title="Kiss" src="tiny_mce/plugins/emotions/img/smiley-kiss.gif" alt="Kiss" border="0" />&Icirc;</span></p>\r\n<ul>\r\n<li><span style="font-family: arial, helvetica, sans-serif;">fhqjl</span></li>\r\n<li><span style="text-decoration: underline; font-family: arial, helvetica, sans-serif;">fjdkqlm</span></li>\r\n</ul>\r\n<ol>\r\n<li><span style="font-family: arial, helvetica, sans-serif;">fdukpq</span></li>\r\n<li><span style="font-family: arial, helvetica, sans-serif;"><strong>fdjkqlm</strong></span></li>\r\n<li></li>\r\n</ol>\r\n<p>&nbsp;</p>');
