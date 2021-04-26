-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 26, 2021 at 12:10 PM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parcinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `installer`
--

DROP TABLE IF EXISTS `installer`;
CREATE TABLE IF NOT EXISTS `installer` (
  `nPoste` varchar(7) DEFAULT NULL,
  `nLog` varchar(5) DEFAULT NULL,
  `numIns` int NOT NULL AUTO_INCREMENT,
  `dateIns` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `delai` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`numIns`),
  UNIQUE KEY `un_installation` (`nPoste`,`nLog`),
  KEY `fk_Installer_nLog_Logiciel` (`nLog`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `installer`
--

INSERT INTO `installer` (`nPoste`, `nLog`, `numIns`, `dateIns`, `delai`) VALUES
('p2', 'log1', 1, '2003-05-14 22:00:00', NULL),
('p2', 'log2', 2, '2003-09-16 22:00:00', NULL),
('p4', 'log5', 3, '2020-11-30 14:43:52', NULL),
('p6', 'log6', 4, '2003-05-19 22:00:00', NULL),
('p6', 'log1', 5, '2003-05-19 22:00:00', NULL),
('p8', 'log2', 6, '2003-05-18 22:00:00', NULL),
('p8', 'log6', 7, '2003-05-19 22:00:00', NULL),
('p11', 'log3', 8, '2003-04-19 22:00:00', NULL),
('p12', 'log4', 9, '2003-04-19 22:00:00', NULL),
('p11', 'log7', 10, '2003-04-19 22:00:00', NULL),
('p7', 'log7', 11, '2002-03-31 22:00:00', NULL),
('p2', 'log6', 12, '2020-11-30 14:44:20', NULL),
('p8', 'log1', 13, '2020-11-30 14:44:20', NULL),
('p10', 'log1', 14, '2020-11-30 14:44:20', NULL),
('p6', 'log2', 15, '2020-11-30 14:44:28', NULL);

-- --------------------------------------------------------

--
-- Stand-in structure for view `installer0`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `installer0`;
CREATE TABLE IF NOT EXISTS `installer0` (
`dateIns` timestamp
,`nLog` varchar(5)
,`nPoste` varchar(7)
,`num` int
);

-- --------------------------------------------------------

--
-- Table structure for table `logiciel`
--

DROP TABLE IF EXISTS `logiciel`;
CREATE TABLE IF NOT EXISTS `logiciel` (
  `nLog` varchar(5) NOT NULL,
  `nomLog` varchar(20) NOT NULL,
  `dateAch` datetime DEFAULT NULL,
  `version` varchar(7) DEFAULT NULL,
  `typeLog` varchar(9) DEFAULT NULL,
  `prix` decimal(6,2) DEFAULT NULL,
  `nbInstall` tinyint DEFAULT '0',
  PRIMARY KEY (`nLog`),
  KEY `fk_Logiciel_typeLog_Types` (`typeLog`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logiciel`
--

INSERT INTO `logiciel` (`nLog`, `nomLog`, `dateAch`, `version`, `typeLog`, `prix`, `nbInstall`) VALUES
('log1', 'Oracle 6', '1995-05-13 00:00:00', '6.2', 'UNIX', '3000.00', 4),
('log2', 'Oracle 8', '1999-09-15 00:00:00', '8i', 'UNIX', '5600.00', 2),
('log3', 'SQL Server', '1998-04-12 00:00:00', '7', 'PCNT', '2700.00', 1),
('log4', 'Front Page', '1997-06-03 00:00:00', '5', 'PCWS', '500.00', 1),
('log5', 'WinDev', '1997-05-12 00:00:00', '5', 'PCWS', '750.00', 1),
('log6', 'SQL*Net', NULL, '2.0', 'UNIX', '500.00', 3),
('log7', 'I. I. S.', '2002-04-12 00:00:00', '2', 'PCNT', '810.00', 2),
('log8', 'DreamWeaver', '2003-09-21 00:00:00', '2.0', 'BeOS', '1400.00', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `logicielsunix`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `logicielsunix`;
CREATE TABLE IF NOT EXISTS `logicielsunix` (
`dateAch` datetime
,`nbInstall` tinyint
,`nLog` varchar(5)
,`nomLog` varchar(20)
,`prix` decimal(6,2)
,`typeLog` varchar(9)
,`version` varchar(7)
);

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_area`
--

DROP TABLE IF EXISTS `mrbs_area`;
CREATE TABLE IF NOT EXISTS `mrbs_area` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `area_name` varchar(30) DEFAULT NULL,
  `area_admin_email` text,
  `resolution` int DEFAULT NULL,
  `default_duration` int DEFAULT NULL,
  `morningstarts` int DEFAULT NULL,
  `morningstarts_minutes` int DEFAULT NULL,
  `eveningends` int DEFAULT NULL,
  `eveningends_minutes` int DEFAULT NULL,
  `private_enabled` tinyint(1) DEFAULT NULL,
  `private_default` tinyint(1) DEFAULT NULL,
  `private_mandatory` tinyint(1) DEFAULT NULL,
  `private_override` varchar(32) DEFAULT NULL,
  `min_book_ahead_enabled` tinyint(1) DEFAULT NULL,
  `min_book_ahead_secs` int DEFAULT NULL,
  `max_book_ahead_enabled` tinyint(1) DEFAULT NULL,
  `max_book_ahead_secs` int DEFAULT NULL,
  `custom_html` text,
  `approval_enabled` tinyint(1) DEFAULT NULL,
  `reminders_enabled` tinyint(1) DEFAULT NULL,
  `enable_periods` tinyint(1) DEFAULT NULL,
  `confirmation_enabled` tinyint(1) DEFAULT NULL,
  `confirmed_default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mrbs_area`
--

INSERT INTO `mrbs_area` (`id`, `disabled`, `area_name`, `area_admin_email`, `resolution`, `default_duration`, `morningstarts`, `morningstarts_minutes`, `eveningends`, `eveningends_minutes`, `private_enabled`, `private_default`, `private_mandatory`, `private_override`, `min_book_ahead_enabled`, `min_book_ahead_secs`, `max_book_ahead_enabled`, `max_book_ahead_secs`, `custom_html`, `approval_enabled`, `reminders_enabled`, `enable_periods`, `confirmation_enabled`, `confirmed_default`) VALUES
(1, 0, 'Informatique - multimédia', 'chemin.lorette@lorraine-sport.net', 1800, 3600, 7, 0, 19, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, '', 0, 1, 0, 1, 1),
(2, 0, 'Salles de réunion', 'chemin.lorette@lorraine-sport.net', 1800, 3600, 7, 0, 23, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, '', 0, 1, 0, 1, 1),
(3, 0, 'Salles de réception', 'chemin.lorette@lorraine-sport.net', 1800, 3600, 7, 0, 23, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, '', 0, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_entry`
--

DROP TABLE IF EXISTS `mrbs_entry`;
CREATE TABLE IF NOT EXISTS `mrbs_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_time` int NOT NULL DEFAULT '0',
  `end_time` int NOT NULL DEFAULT '0',
  `entry_type` int NOT NULL DEFAULT '0',
  `repeat_id` int NOT NULL DEFAULT '0',
  `room_id` int NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `reminded` int DEFAULT NULL,
  `info_time` int DEFAULT NULL,
  `info_user` varchar(80) DEFAULT NULL,
  `info_text` text,
  `ical_uid` varchar(255) NOT NULL DEFAULT '',
  `ical_sequence` smallint NOT NULL DEFAULT '0',
  `ical_recur_id` varchar(16) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idxStartTime` (`start_time`),
  KEY `idxEndTime` (`end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_repeat`
--

DROP TABLE IF EXISTS `mrbs_repeat`;
CREATE TABLE IF NOT EXISTS `mrbs_repeat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_time` int NOT NULL DEFAULT '0',
  `end_time` int NOT NULL DEFAULT '0',
  `rep_type` int NOT NULL DEFAULT '0',
  `end_date` int NOT NULL DEFAULT '0',
  `rep_opt` varchar(32) NOT NULL DEFAULT '',
  `room_id` int NOT NULL DEFAULT '1',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) NOT NULL DEFAULT '',
  `name` varchar(80) NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text,
  `rep_num_weeks` smallint DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `reminded` int DEFAULT NULL,
  `info_time` int DEFAULT NULL,
  `info_user` varchar(80) DEFAULT NULL,
  `info_text` text,
  `ical_uid` varchar(255) NOT NULL DEFAULT '',
  `ical_sequence` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_room`
--

DROP TABLE IF EXISTS `mrbs_room`;
CREATE TABLE IF NOT EXISTS `mrbs_room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disabled` tinyint(1) NOT NULL DEFAULT '0',
  `area_id` int NOT NULL DEFAULT '0',
  `room_name` varchar(25) NOT NULL DEFAULT '',
  `sort_key` varchar(25) NOT NULL DEFAULT '',
  `description` varchar(60) DEFAULT NULL,
  `capacity` int NOT NULL DEFAULT '0',
  `room_admin_email` text,
  `custom_html` text,
  PRIMARY KEY (`id`),
  KEY `idxSortKey` (`sort_key`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mrbs_room`
--

INSERT INTO `mrbs_room` (`id`, `disabled`, `area_id`, `room_name`, `sort_key`, `description`, `capacity`, `room_admin_email`, `custom_html`) VALUES
(1, 0, 2, 'Daum', 'Daum', '', 15, '', ''),
(2, 0, 2, 'Corbin', 'Corbin', '', 15, '', ''),
(3, 0, 2, 'Baccarat', 'Baccarat', '', 20, '', ''),
(4, 0, 2, 'Longwy', 'Longwy', '', 12, '', ''),
(5, 0, 1, 'Multimédia', 'Multimédia', '', 25, '', ''),
(6, 0, 3, 'Amphithéâtre', 'Amphithéâtre', '', 200, '', ''),
(7, 0, 2, 'Lamour', 'Lamour', '', 30, '', ''),
(8, 0, 2, 'Grüber', 'Grüber', '', 15, '', ''),
(9, 0, 2, 'Majorelle', 'Majorelle', '', 40, '', ''),
(10, 0, 3, 'Salle de restauration', 'Salle de restauration', 'Salle de restauration', 50, '', ''),
(11, 0, 3, 'Galerie', 'Galerie', '', 80, '', ''),
(12, 0, 1, 'Salle informatique', 'Salle informatique', '', 15, NULL, NULL),
(13, 0, 3, 'Hall d\'accueil', 'Hall d\'accueil', '', 100, NULL, NULL),
(14, 0, 2, 'Gallé', 'Gallé', '', 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_users`
--

DROP TABLE IF EXISTS `mrbs_users`;
CREATE TABLE IF NOT EXISTS `mrbs_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` smallint NOT NULL DEFAULT '0',
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `email` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mrbs_users`
--

INSERT INTO `mrbs_users` (`id`, `level`, `name`, `password`, `email`) VALUES
(1, 2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin.mrbs@lorraine-sport.net'),
(2, 0, 'cheminl', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'chemin.lorette@lorraine-sport.net'),
(3, 0, 'fortetp', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'fortet.patrick@lorraine-sport.net'),
(4, 0, 'dreauv', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'dreau.valerie@lorraine-sport.net'),
(5, 2, 'antoineq', '21232f297a57a5a743894a0e4a801fc3', 'antoine.quentin@lorraine-sport.net'),
(6, 2, 'aubinv', '21232f297a57a5a743894a0e4a801fc3', 'aubin.veronique@lorraine-sport.net'),
(7, 2, 'ackermanns', '21232f297a57a5a743894a0e4a801fc3', 'ackermann.solange@lorraine-sport.net'),
(8, 1, 'guesdonm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'guesdon.martin@lorraine-sport.net'),
(9, 1, 'grenierf', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'grenier.francoise@lorraine-sport.net'),
(10, 1, 'giboired', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'giboire.david@lorraine-sport.net'),
(11, 1, 'guillemetm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'guillemet.martin@lorraine-sport.net'),
(12, 1, 'guilletm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'guillet.maud@lorraine-sport.net'),
(13, 1, 'gilbertj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'gilbert.jordan@lorraine-sport.net'),
(14, 1, 'grelichef', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'greliche.franck@lorraine-sport.net'),
(15, 1, 'garniert', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'garnier.theo@lorraine-sport.net'),
(16, 1, 'gaigar', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'gaiga.renan@lorraine-sport.net'),
(17, 1, 'glavork', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'glavor.kevin@lorraine-sport.net'),
(18, 0, 'lunavote', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'lunavot.eric@lorraine-sport.net'),
(19, 0, 'borsellinoj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'borsellino.jean-marc@lorraine-sport.net'),
(20, 0, 'daumyn', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'daumy.nicolas@lorraine-sport.net'),
(21, 0, 'chambonp', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'chambon.patrick@lorraine-sport.net'),
(22, 0, 'lecadetc', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'lecadet.cecile@lorraine-sport.net'),
(23, 0, 'vannierl', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'vannier.louis@lorraine-sport.net'),
(24, 0, 'minets', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'minet.sabrina@lorraine-sport.net'),
(25, 0, 'bourgeoiss', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'bourgeois.simon@lorraine-sport.net'),
(26, 0, 'charleta', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'charlet.aurelie@lorraine-sport.net'),
(27, 0, 'pirotl', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'pirot.lea@lorraine-sport.net'),
(28, 0, 'michauxa', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'michaux.alexandre@lorraine-sport.net'),
(29, 0, 'cullerierj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'cullerier.jerome@lorraine-sport.net'),
(30, 0, 'monnetm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'monnet.michel@lorraine-sport.net'),
(31, 0, 'bergerv', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'berger.vanessa@lorraine-sport.net'),
(32, 0, 'duquennel', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'duquenne.luc@lorraine-sport.net'),
(33, 0, 'vassalm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'vassal.marc@lorraine-sport.net'),
(34, 0, 'samsonm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'samson.maryline@lorraine-sport.net'),
(35, 0, 'vassale', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'vassal.elizabeth@lorraine-sport.net'),
(36, 0, 'dubuism', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'dubuis.marie@lorraine-sport.net'),
(37, 0, 'briseuxs', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'briseux.serge@lorraine-sport.net'),
(38, 0, 'zambonie', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'zamboni.estelle@lorraine-sport.net'),
(39, 0, 'vernonc', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'vernon.christian@lorraine-sport.net'),
(40, 0, 'micherouxe', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'micheroux.emmanuel@lorraine-sport.net'),
(41, 0, 'philippej', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'philippe.jocelyne@lorraine-sport.net'),
(42, 0, 'brisseaup', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'brisseau.pierre-jean@lorraine-sport.net'),
(43, 0, 'meneure', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'meneur.emmanuel@lorraine-sport.net'),
(44, 0, 'martelh', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'martel.herve@lorraine-sport.net'),
(45, 0, 'fernandesf', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'fernandes.fabrice@lorraine-sport.net'),
(46, 0, 'loubata', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'loubat.agnes@lorraine-sport.net'),
(47, 0, 'mogest', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'moges.thierry@lorraine-sport.net'),
(48, 0, 'bulicm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'bulic.marc@lorraine-sport.net'),
(49, 0, 'coulombelt', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'coulombel.thomas@lorraine-sport.net'),
(50, 0, 'noirotm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'noirot.maxime@lorraine-sport.net'),
(51, 0, 'martinageo', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'martinage.ophelie@lorraine-sport.net'),
(52, 0, 'corvaisierk', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'corvaisier.kevin@lorraine-sport.net'),
(53, 0, 'danetc', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'danet.christophe@lorraine-sport.net'),
(54, 0, 'antoineq', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'antoine.quentin@lorraine-sport.net'),
(55, 0, 'ouing', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'ouin.georges@lorraine-sport.net'),
(56, 0, 'mabilaisl', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'mabilais.liliane@lorraine-sport.net'),
(57, 0, 'charbonnelt', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'charbonnel.tanguy@lorraine-sport.net'),
(58, 0, 'droaly', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'droal.yves@lorraine-sport.net'),
(59, 0, 'rocherf', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'rocher.fabienne@lorraine-sport.net'),
(60, 0, 'triballata', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'triballat.amelie@lorraine-sport.net'),
(61, 0, 'martih', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'marti.herve@lorraine-sport.net'),
(62, 0, 'vollej', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'volle.jocelyn@lorraine-sport.net'),
(63, 0, 'hubertx', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'hubert.xavier@lorraine-sport.net'),
(64, 0, 'lieutierv', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'lieutier.vianney@lorraine-sport.net'),
(65, 0, 'cabalf', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'cabal.frederick@lorraine-sport.net'),
(66, 0, 'kriegerc', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'krieger.christian@lorraine-sport.net'),
(67, 0, 'fischerh', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'fischer.helene@lorraine-sport.net'),
(68, 0, 'descatb', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'descat.bastien@lorraine-sport.net'),
(69, 0, 'humbertf', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'humbert.felix@lorraine-sport.net'),
(70, 0, 'landrieux', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'landrieu.xavier@lorraine-sport.net'),
(71, 0, 'delpeyroua', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'delpeyrou.andre@lorraine-sport.net'),
(72, 0, 'rodierd', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'rodier.denis@lorraine-sport.net'),
(73, 0, 'boyers', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'boyer.suzanne@lorraine-sport.net'),
(74, 0, 'chassonn', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'chasson.nicole@lorraine-sport.net'),
(75, 0, 'cuenotb', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'cuenot.bruno@lorraine-sport.net'),
(76, 0, 'pitonu', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'piton.ursule@lorraine-sport.net'),
(77, 0, 'gariny', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'garin.yvette@lorraine-sport.net'),
(78, 0, 'salioum', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'saliou.marcel@lorraine-sport.net'),
(79, 0, 'rigalg', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'rigal.guenole@lorraine-sport.net'),
(80, 0, 'pelhatel', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'pelhate.loic@lorraine-sport.net'),
(81, 0, 'skweresp', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'skweres.paul@lorraine-sport.net'),
(82, 0, 'haviso', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'havis.odette@lorraine-sport.net'),
(83, 0, 'rigalj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'rigal.jonathan@lorraine-sport.net'),
(84, 0, 'cochetr', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'cochet.remi@lorraine-sport.net'),
(85, 0, 'blinm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'blin.morgane@lorraine-sport.net'),
(86, 0, 'mazurierv', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'mazurier.vincent@lorraine-sport.net'),
(87, 0, 'robichets', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'robichet.sylvain@lorraine-sport.net'),
(88, 0, 'brouillatf', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'brouillat.francois@lorraine-sport.net'),
(89, 0, 'legerg', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'leger.geraldine@lorraine-sport.net'),
(90, 0, 'despresv', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'despres.viviane@lorraine-sport.net'),
(91, 0, 'bretonj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'breton.jean@lorraine-sport.net'),
(92, 0, 'duboisl', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'dubois.laurence@lorraine-sport.net'),
(93, 0, 'mousquetj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'mousquet.jean@lorraine-sport.net'),
(94, 0, 'robuttep', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'robutte.philippe@lorraine-sport.net'),
(95, 0, 'lecailleo', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'lecaille.oriane@lorraine-sport.net'),
(96, 0, 'veriteb', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'verite.brendan@lorraine-sport.net'),
(97, 0, 'dauthieub', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'dauthieu.bryan@lorraine-sport.net'),
(98, 0, 'blancj', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'blanc.jean-marc@lorraine-sport.net'),
(99, 0, 'dongelingeri', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'dongelinger.irene@lorraine-sport.net'),
(100, 0, 'hochetg', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'hochet.guy@lorraine-sport.net'),
(101, 0, 'lecorree', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'lecorre.emile@lorraine-sport.net'),
(102, 0, 'sacheta', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'sachet.armelle@lorraine-sport.net'),
(103, 0, 'bavelardp', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'bavelard.paul@lorraine-sport.net'),
(104, 0, 'panagetr', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'panaget.remi@lorraine-sport.net'),
(105, 0, 'aubinv', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'aubin.veronique@lorraine-sport.net'),
(106, 0, 'ackermanns', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'ackermann.solange@lorraine-sport.net'),
(107, 0, 'hainryd', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'hainry.david@lorraine-sport.net'),
(108, 0, 'trouchetc', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'trouchet.carinne@lorraine-sport.net'),
(109, 0, 'bertelles', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'bertelle.sophie@lorraine-sport.net'),
(110, 0, 'pannetierc', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'pannetier.celine@lorraine-sport.net'),
(111, 0, 'poulainm', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'poulain.marie-ange@lorraine-sport.net'),
(112, 0, 'stervinour', 'b89f7a5ff3e3a225d572dac38b2a67f7', 'stervinou.romain@lorraine-sport.net'),
(113, 2, 'ADMIN', 'ADMIN', 'admin@email.com');

-- --------------------------------------------------------

--
-- Table structure for table `mrbs_variables`
--

DROP TABLE IF EXISTS `mrbs_variables`;
CREATE TABLE IF NOT EXISTS `mrbs_variables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `variable_name` varchar(80) DEFAULT NULL,
  `variable_content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mrbs_variables`
--

INSERT INTO `mrbs_variables` (`id`, `variable_name`, `variable_content`) VALUES
(1, 'db_version', '26'),
(2, 'local_db_version', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pcseuls`
--

DROP TABLE IF EXISTS `pcseuls`;
CREATE TABLE IF NOT EXISTS `pcseuls` (
  `nPoste` varchar(7) NOT NULL,
  `nomPoste` varchar(20) NOT NULL,
  `IndIP` varchar(11) DEFAULT NULL,
  `ad` varchar(3) DEFAULT NULL,
  `typePoste` varchar(9) DEFAULT NULL,
  `nSalle` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pcseuls`
--

INSERT INTO `pcseuls` (`nPoste`, `nomPoste`, `IndIP`, `ad`, `typePoste`, `nSalle`) VALUES
('p1', 'Poste 1', '130.120.80', '01', 'TX', 's01'),
('p10', 'Poste 10', '130.120.81', '03', 'UNIX', 's12'),
('p11', 'Poste 11', '130.120.82', '01', 'PCNT', 's21'),
('p12', 'Poste 12', '130.120.82', '02', 'PCWS', 's21'),
('p2', 'Poste 2', '130.120.80', '02', 'UNIX', 's01'),
('p3', 'Poste 3', '130.120.80', '03', 'TX', 's01'),
('p4', 'Poste 4', '130.120.80', '04', 'PCWS', 's02'),
('p5', 'Poste 5', '130.120.80', '05', 'PCWS', 's02'),
('p6', 'Poste 6', '130.120.80', '06', 'UNIX', 's03'),
('p7', 'Poste 7', '130.120.80', '07', 'TX', 's03'),
('p8', 'Poste 8', '130.120.81', '01', 'UNIX', 's11'),
('p9', 'Poste 9', '130.120.81', '02', 'TX', 's11');

-- --------------------------------------------------------

--
-- Table structure for table `poste`
--

DROP TABLE IF EXISTS `poste`;
CREATE TABLE IF NOT EXISTS `poste` (
  `nPoste` varchar(7) NOT NULL,
  `nomPoste` varchar(20) NOT NULL,
  `indIP` varchar(11) DEFAULT NULL,
  `ad` varchar(3) DEFAULT NULL,
  `typePoste` varchar(9) DEFAULT NULL,
  `nSalle` varchar(7) DEFAULT NULL,
  `nbLog` tinyint DEFAULT '0',
  PRIMARY KEY (`nPoste`),
  KEY `fk_Poste_indIP_Segment` (`indIP`),
  KEY `fk_Poste_nSalle_Salle` (`nSalle`),
  KEY `fk_Poste_typePoste_Types` (`typePoste`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `poste`
--

INSERT INTO `poste` (`nPoste`, `nomPoste`, `indIP`, `ad`, `typePoste`, `nSalle`, `nbLog`) VALUES
('78', 'arthur', '130.120.81', '4', 'UNIX', '35', 3),
('p1', 'Poste 1', '130.120.80', '01', 'TX', 's01', 0),
('p10', 'Poste 10', '130.120.81', '03', 'UNIX', 's12', 1),
('p11', 'Poste 11', '130.120.82', '01', 'PCNT', 's21', 2),
('p12', 'Poste 12', '130.120.82', '02', 'PCWS', 's21', 1),
('p16', 'Bidon15', '130.120.82', '20', 'UNIX', 's21', 0),
('p2', 'Poste 2', '130.120.80', '02', 'UNIX', 's01', 3),
('p3', 'Poste 3', '130.120.80', '03', 'TX', 's01', 0),
('p4', 'Poste 4', '130.120.80', '04', 'PCWS', 's02', 1),
('p5', 'Poste 5', '130.120.80', '05', 'PCWS', 's02', 0),
('p6', 'Poste 6', '130.120.80', '06', 'UNIX', 's03', 2),
('p7', 'Poste 7', '130.120.80', '07', 'TX', 's03', 1),
('p8', 'Poste 8', '130.120.81', '01', 'UNIX', 's11', 3),
('p9', 'Poste 9', '130.120.81', '02', 'TX', 's11', 0),
('pTEST', 'TEST', '130.120.81', 'ad', 'PCNT', '4', 2),
('testNum', 'testNom', '130.120.81', 'ad', 'BeOS', '35', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `poste0`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `poste0`;
CREATE TABLE IF NOT EXISTS `poste0` (
`ad0` varchar(3)
,`indIP` varchar(11)
,`nomPoste0` varchar(20)
,`nPos0` varchar(7)
,`nSalle0` varchar(7)
,`TypePoste0` varchar(9)
);

-- --------------------------------------------------------

--
-- Table structure for table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE IF NOT EXISTS `salle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nSalle` varchar(7) NOT NULL,
  `nomSalle` varchar(30) DEFAULT NULL,
  `nbPoste` tinyint DEFAULT NULL,
  `indIP` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Salle_indIP_Segment` (`indIP`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `salle`
--

INSERT INTO `salle` (`id`, `nSalle`, `nomSalle`, `nbPoste`, `indIP`) VALUES
(1, 's01', 'Salle 1', 3, '130.120.80'),
(2, 's02', 'Salle 2', 2, '130.120.80'),
(3, 's03', 'Salle 3', 2, '130.120.80'),
(4, 's11', 'Salle 11', 2, '130.120.81'),
(5, 's12', 'Salle 12', 1, '130.120.81'),
(6, 's21', 'Salle 21', 2, '130.120.82');

-- --------------------------------------------------------

--
-- Stand-in structure for view `salleintermediaire`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `salleintermediaire`;
CREATE TABLE IF NOT EXISTS `salleintermediaire` (
`nombre` bigint
,`nSalle` varchar(7)
,`tarif` smallint
,`typePoste` varchar(9)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `salleposte`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `salleposte`;
CREATE TABLE IF NOT EXISTS `salleposte` (
`adrIP` varchar(15)
,`nomPoste` varchar(20)
,`nomSalle` varchar(30)
,`nomTypePoste` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `salleprix`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `salleprix`;
CREATE TABLE IF NOT EXISTS `salleprix` (
`nbPoste` tinyint
,`nomSalle` varchar(30)
,`nSalle` varchar(7)
,`prixLocation` int
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `salleprixtotal`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `salleprixtotal`;
CREATE TABLE IF NOT EXISTS `salleprixtotal` (
`nSalle` varchar(7)
,`PrixReel` decimal(47,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `segment`
--

DROP TABLE IF EXISTS `segment`;
CREATE TABLE IF NOT EXISTS `segment` (
  `indIP` varchar(11) NOT NULL,
  `nomSegment` varchar(15) DEFAULT NULL,
  `etage` tinyint(1) DEFAULT NULL,
  `nbSalle` tinyint DEFAULT '0',
  `nbPoste` tinyint DEFAULT '0',
  PRIMARY KEY (`indIP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `segment`
--

INSERT INTO `segment` (`indIP`, `nomSegment`, `etage`, `nbSalle`, `nbPoste`) VALUES
('130.120.80', 'Brin RDC', 0, 3, 7),
('130.120.81', 'Brin 1er  ?tage', 1, 2, 3),
('130.120.82', 'Brin 2?me ?tage', 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `softs`
--

DROP TABLE IF EXISTS `softs`;
CREATE TABLE IF NOT EXISTS `softs` (
  `nomLog` varchar(20) NOT NULL,
  `Version` varchar(7) DEFAULT NULL,
  `prix` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `softs`
--

INSERT INTO `softs` (`nomLog`, `Version`, `prix`) VALUES
('Oracle 6', '6.2', '3000.00'),
('Oracle 8', '8i', '5600.00'),
('SQL Server', '7', '2700.00'),
('Front Page', '5', '500.00'),
('WinDev', '5', '750.00'),
('SQL*Net', '2.0', '500.00'),
('I. I. S.', '2', '810.00'),
('DreamWeaver', '2.0', '1400.00');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
CREATE TABLE IF NOT EXISTS `types` (
  `typeLP` varchar(9) NOT NULL,
  `nomType` varchar(20) DEFAULT NULL,
  `tarif` smallint DEFAULT NULL,
  PRIMARY KEY (`typeLP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`typeLP`, `nomType`, `tarif`) VALUES
('BeOS', 'Syst?me Be', 400),
('NC', 'Network Computer', 80),
('PCNT', 'PC Windows  NT', 120),
('PCWS', 'PC Windows', 100),
('TX', 'Terminal X-Window', 50),
('UNIX', 'Syst?me Unix', 200);

-- --------------------------------------------------------

--
-- Structure for view `installer0`
--
DROP TABLE IF EXISTS `installer0`;

DROP VIEW IF EXISTS `installer0`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `installer0`  AS  select `installer`.`nPoste` AS `nPoste`,`installer`.`nLog` AS `nLog`,`installer`.`numIns` AS `num`,`installer`.`dateIns` AS `dateIns` from `installer` where (`installer`.`nLog` in (select `logiciel`.`nLog` from `logiciel` where (`logiciel`.`typeLog` = 'PCNT')) is false and `installer`.`nPoste` in (select `poste`.`nPoste` from `poste` where `poste`.`indIP` in (select `segment`.`indIP` from `segment` where (`segment`.`etage` = 0)))) WITH CASCADED CHECK OPTION ;

-- --------------------------------------------------------

--
-- Structure for view `logicielsunix`
--
DROP TABLE IF EXISTS `logicielsunix`;

DROP VIEW IF EXISTS `logicielsunix`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `logicielsunix`  AS  select `logiciel`.`nLog` AS `nLog`,`logiciel`.`nomLog` AS `nomLog`,`logiciel`.`dateAch` AS `dateAch`,`logiciel`.`version` AS `version`,`logiciel`.`typeLog` AS `typeLog`,`logiciel`.`prix` AS `prix`,`logiciel`.`nbInstall` AS `nbInstall` from `logiciel` where (`logiciel`.`typeLog` = 'UNIX') ;

-- --------------------------------------------------------

--
-- Structure for view `poste0`
--
DROP TABLE IF EXISTS `poste0`;

DROP VIEW IF EXISTS `poste0`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `poste0`  AS  select `poste`.`nPoste` AS `nPos0`,`poste`.`nomPoste` AS `nomPoste0`,`poste`.`nSalle` AS `nSalle0`,`poste`.`typePoste` AS `TypePoste0`,`poste`.`indIP` AS `indIP`,`poste`.`ad` AS `ad0` from `poste` where `poste`.`indIP` in (select `segment`.`indIP` from `segment` where (`segment`.`etage` = 0)) ;

-- --------------------------------------------------------

--
-- Structure for view `salleintermediaire`
--
DROP TABLE IF EXISTS `salleintermediaire`;

DROP VIEW IF EXISTS `salleintermediaire`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `salleintermediaire`  AS  select `p`.`nSalle` AS `nSalle`,`p`.`typePoste` AS `typePoste`,count(`p`.`nPoste`) AS `nombre`,`t`.`tarif` AS `tarif` from (`poste` `p` join `types` `t`) where (`p`.`typePoste` = `t`.`typeLP`) group by `p`.`nSalle`,`p`.`typePoste`,`t`.`tarif` ;

-- --------------------------------------------------------

--
-- Structure for view `salleposte`
--
DROP TABLE IF EXISTS `salleposte`;

DROP VIEW IF EXISTS `salleposte`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `salleposte`  AS  select `s`.`nomSalle` AS `nomSalle`,`p`.`nomPoste` AS `nomPoste`,concat(`p`.`indIP`,'.',`p`.`ad`) AS `adrIP`,`t`.`nomType` AS `nomTypePoste` from ((`salle` `s` join `poste` `p`) join `types` `t`) where ((`s`.`nSalle` = `p`.`nSalle`) and (`p`.`typePoste` = `t`.`typeLP`)) ;

-- --------------------------------------------------------

--
-- Structure for view `salleprix`
--
DROP TABLE IF EXISTS `salleprix`;

DROP VIEW IF EXISTS `salleprix`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `salleprix`  AS  select `salle`.`nSalle` AS `nSalle`,`salle`.`nomSalle` AS `nomSalle`,`salle`.`nbPoste` AS `nbPoste`,(`salle`.`nbPoste` * 100) AS `prixLocation` from `salle` ;

-- --------------------------------------------------------

--
-- Structure for view `salleprixtotal`
--
DROP TABLE IF EXISTS `salleprixtotal`;

DROP VIEW IF EXISTS `salleprixtotal`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `salleprixtotal`  AS  select `salleintermediaire`.`nSalle` AS `nSalle`,sum((`salleintermediaire`.`nombre` * `salleintermediaire`.`tarif`)) AS `PrixReel` from `salleintermediaire` group by `salleintermediaire`.`nSalle` ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `installer`
--
ALTER TABLE `installer`
  ADD CONSTRAINT `fk_Installer_nLog_Logiciel` FOREIGN KEY (`nLog`) REFERENCES `logiciel` (`nLog`),
  ADD CONSTRAINT `fk_Installer_nPoste_Poste` FOREIGN KEY (`nPoste`) REFERENCES `poste` (`nPoste`);

--
-- Constraints for table `logiciel`
--
ALTER TABLE `logiciel`
  ADD CONSTRAINT `fk_Logiciel_typeLog_Types` FOREIGN KEY (`typeLog`) REFERENCES `types` (`typeLP`);

--
-- Constraints for table `poste`
--
ALTER TABLE `poste`
  ADD CONSTRAINT `fk_Poste_indIP_Segment` FOREIGN KEY (`indIP`) REFERENCES `segment` (`indIP`),
  ADD CONSTRAINT `fk_Poste_typePoste_Types` FOREIGN KEY (`typePoste`) REFERENCES `types` (`typeLP`);

--
-- Constraints for table `salle`
--
ALTER TABLE `salle`
  ADD CONSTRAINT `fk_Salle_indIP_Segment` FOREIGN KEY (`indIP`) REFERENCES `segment` (`indIP`),
  ADD CONSTRAINT `salle_ibfk_1` FOREIGN KEY (`id`) REFERENCES `mrbs_room` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
