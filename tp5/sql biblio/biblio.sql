-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 12 Décembre 2023 à 14:53
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `biblio`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherents`
--

CREATE TABLE IF NOT EXISTS `adherents` (
  `codeadh` varchar(50) NOT NULL,
  `nomadh` varchar(50) NOT NULL,
  `prenomadh` varchar(50) NOT NULL,
  `adresseadh` varchar(50) NOT NULL,
  PRIMARY KEY (`codeadh`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adherents`
--


-- --------------------------------------------------------

--
-- Structure de la table `auteur`
--

CREATE TABLE IF NOT EXISTS `auteur` (
  `codeauteur` varchar(50) NOT NULL,
  `nomaut` varchar(50) NOT NULL,
  `prenomaut` varchar(50) NOT NULL,
  PRIMARY KEY (`codeauteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteur`
--


-- --------------------------------------------------------

--
-- Structure de la table `auteur_de`
--

CREATE TABLE IF NOT EXISTS `auteur_de` (
  `codeauteur` varchar(50) NOT NULL,
  `codeouvrage` varchar(50) NOT NULL,
  PRIMARY KEY (`codeauteur`,`codeouvrage`),
  KEY `auteur_de_ouvrage0_FK` (`codeouvrage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteur_de`
--


-- --------------------------------------------------------

--
-- Structure de la table `emprunt`
--

CREATE TABLE IF NOT EXISTS `emprunt` (
  `codeouvrage` varchar(50) NOT NULL,
  `codeadh` varchar(50) NOT NULL,
  `dateemprunt` date NOT NULL,
  PRIMARY KEY (`codeouvrage`,`codeadh`),
  KEY `emprunt_adherents0_FK` (`codeadh`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `emprunt`
--


-- --------------------------------------------------------

--
-- Structure de la table `mots`
--

CREATE TABLE IF NOT EXISTS `mots` (
  `codemot` varchar(50) NOT NULL,
  `mot` varchar(50) NOT NULL,
  PRIMARY KEY (`codemot`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `mots`
--


-- --------------------------------------------------------

--
-- Structure de la table `ouvrage`
--

CREATE TABLE IF NOT EXISTS `ouvrage` (
  `codeouvrage` varchar(50) NOT NULL,
  `titreouvrage` varchar(50) NOT NULL,
  `coderayons` varchar(50) NOT NULL,
  PRIMARY KEY (`codeouvrage`),
  KEY `ouvrage_rayons_FK` (`coderayons`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `ouvrage`
--

INSERT INTO `ouvrage` (`codeouvrage`, `titreouvrage`, `coderayons`) VALUES
('Livre12', 'BD informatique', 'R12'),
('Livre13', 'Livre de réseau', 'R12');

-- --------------------------------------------------------

--
-- Structure de la table `rayons`
--

CREATE TABLE IF NOT EXISTS `rayons` (
  `coderayons` varchar(50) NOT NULL,
  `intitulerayon` varchar(50) NOT NULL,
  PRIMARY KEY (`coderayons`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `rayons`
--

INSERT INTO `rayons` (`coderayons`, `intitulerayon`) VALUES
('R12', 'informatique'),
('R13', 'Sciences');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `auteur_de`
--
ALTER TABLE `auteur_de`
  ADD CONSTRAINT `auteur_de_auteur_FK` FOREIGN KEY (`codeauteur`) REFERENCES `auteur` (`codeauteur`),
  ADD CONSTRAINT `auteur_de_ouvrage0_FK` FOREIGN KEY (`codeouvrage`) REFERENCES `ouvrage` (`codeouvrage`);

--
-- Contraintes pour la table `emprunt`
--
ALTER TABLE `emprunt`
  ADD CONSTRAINT `emprunt_ouvrage_FK` FOREIGN KEY (`codeouvrage`) REFERENCES `ouvrage` (`codeouvrage`),
  ADD CONSTRAINT `emprunt_adherents0_FK` FOREIGN KEY (`codeadh`) REFERENCES `adherents` (`codeadh`);

--
-- Contraintes pour la table `ouvrage`
--
ALTER TABLE `ouvrage`
  ADD CONSTRAINT `ouvrage_rayons_FK` FOREIGN KEY (`coderayons`) REFERENCES `rayons` (`coderayons`);
