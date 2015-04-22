-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 22 Avril 2015 à 08:57
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `switch_newlook`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `idClient` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `mail` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idClient`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `idCommande` int(11) NOT NULL AUTO_INCREMENT,
  `Date` varchar(10) DEFAULT NULL,
  `idClient` int(11) NOT NULL,
  PRIMARY KEY (`idCommande`),
  KEY `FK_commande_idClient` (`idClient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

CREATE TABLE IF NOT EXISTS `contenir` (
  `idItemCarte` int(11) NOT NULL AUTO_INCREMENT,
  `idCommande` int(11) NOT NULL,
  PRIMARY KEY (`idItemCarte`,`idCommande`),
  KEY `FK_contenir_idCommande` (`idCommande`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `itemcarte`
--

CREATE TABLE IF NOT EXISTS `itemcarte` (
  `idItemCarte` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) DEFAULT NULL,
  `type` enum('SANDWICH','PIZZA','PANINI','SALADE','BOISSON','DESSERT','MENU') DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  `disponible` tinyint(1) DEFAULT NULL,
  `prix` double DEFAULT NULL,
  PRIMARY KEY (`idItemCarte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_commande_idClient` FOREIGN KEY (`idClient`) REFERENCES `client` (`idClient`);

--
-- Contraintes pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD CONSTRAINT `FK_contenir_idCommande` FOREIGN KEY (`idCommande`) REFERENCES `commande` (`idCommande`),
  ADD CONSTRAINT `FK_contenir_idItemCarte` FOREIGN KEY (`idItemCarte`) REFERENCES `itemcarte` (`idItemCarte`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
