-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 05 Décembre 2023 à 14:36
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bibliotèque`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE IF NOT EXISTS `adherent` (
  `id_adherent` int(11) NOT NULL DEFAULT '0',
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `date_naissance` date NOT NULL,
  `date_adhesion` date NOT NULL,
  `adresse` varchar(30) NOT NULL,
  `num_tel` varchar(30) NOT NULL,
  `mail` varchar(30) NOT NULL,
  PRIMARY KEY (`id_adherent`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `adherent`
--

INSERT INTO `adherent` (`id_adherent`, `nom`, `prenom`, `date_naissance`, `date_adhesion`, `adresse`, `num_tel`, `mail`) VALUES
(0, 'Petton', 'Flavien', '1999-12-10', '2023-12-07', '4 avenue du général maistre', '0652182848', 'flavien.petton@gmail.com'),
(1, 'Petton', 'Elouan', '2004-10-03', '2023-12-01', '4 avenue du général maistre', '0652182848', 'elouan.petton@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `auteurs`
--

CREATE TABLE IF NOT EXISTS `auteurs` (
  `id_auteur` varchar(30) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `date_naissance` date NOT NULL,
  PRIMARY KEY (`id_auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `auteurs`
--

INSERT INTO `auteurs` (`id_auteur`, `nom`, `prenom`, `date_naissance`) VALUES
('AC201', 'Camus', 'Albert', '1998-12-03'),
('EZ201', 'Zola', 'Emile', '1973-12-04');

-- --------------------------------------------------------

--
-- Structure de la table `emprunts`
--

CREATE TABLE IF NOT EXISTS `emprunts` (
  `id_emprunt` int(11) NOT NULL AUTO_INCREMENT,
  `date_emprunt` date NOT NULL,
  `duree` int(11) NOT NULL,
  `id_adherent` int(11) NOT NULL,
  `reference_livre` varchar(30) NOT NULL,
  PRIMARY KEY (`id_emprunt`),
  KEY `reference_livre` (`reference_livre`),
  KEY `id_adherent` (`id_adherent`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `emprunts`
--

INSERT INTO `emprunts` (`id_emprunt`, `date_emprunt`, `duree`, `id_adherent`, `reference_livre`) VALUES
(1, '2023-12-01', 3, 0, 'ETR201AC'),
(2, '2023-12-02', 5, 1, 'GRM201EZ');

-- --------------------------------------------------------

--
-- Structure de la table `livres`
--

CREATE TABLE IF NOT EXISTS `livres` (
  `reference_livre` varchar(30) NOT NULL,
  `nbre_pages` int(11) NOT NULL,
  `id_auteur` varchar(30) NOT NULL,
  `date_publication` date NOT NULL,
  `genre` varchar(30) NOT NULL,
  `disponibilité` tinyint(1) NOT NULL,
  `nbre_emprunts` int(11) NOT NULL,
  `etat` varchar(30) NOT NULL,
  `nbre_exemplaire` int(11) NOT NULL,
  PRIMARY KEY (`reference_livre`),
  KEY `id_auteur` (`id_auteur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `livres`
--

INSERT INTO `livres` (`reference_livre`, `nbre_pages`, `id_auteur`, `date_publication`, `genre`, `disponibilité`, `nbre_emprunts`, `etat`, `nbre_exemplaire`) VALUES
('ETR201AC', 400, 'AC201', '2023-12-02', 'Comédie', 0, 10, 'bon', 1),
('GRM201EZ', 100, 'EZ201', '2023-12-02', 'Comédie', 0, 20, 'bon', 1);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`id_adherent`) REFERENCES `adherent` (`id_adherent`);

--
-- Contraintes pour la table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_ibfk_2` FOREIGN KEY (`reference_livre`) REFERENCES `emprunts` (`reference_livre`),
  ADD CONSTRAINT `livres_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `auteurs` (`id_auteur`);
