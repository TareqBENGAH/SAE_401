-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 21 mars 2023 à 21:59
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.27

drop database IF exists sae_401;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sae_401`
--

-- --------------------------------------------------------

--
-- Structure de la table `booking`
--
CREATE database sae_401;
USE sae_401;
CREATE TABLE `booking` (
  `resa_id` int(11) NOT NULL,
  `resa_horaire` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `resa_idgame` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `faq_sujet`
--

CREATE TABLE `faq_sujet` (
  `faqsj_idsujet` int(11) NOT NULL,
  `faqsj_sujet` text,
  `faqsj_titre` text,
  `faqsj_description` text,
  `Faqsj_rep` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `game`
--

CREATE TABLE `game` (
  `game_id` int(11) NOT NULL,
  `game_genre` enum('drame','fantastique','suspens') DEFAULT NULL,
  `game_duree` int(11) DEFAULT NULL,
  `game_lieu` varchar(50) DEFAULT NULL,
  `game_id_pack` int(11) DEFAULT NULL,
  `game_categorie` enum('novice','amateur','expert') DEFAULT NULL,
  `game_nbjoueur` int(11) DEFAULT NULL,
  `game_environnement` varchar(50) DEFAULT NULL,
  `game_nom` varchar(50) DEFAULT NULL,
  `game_nomeng` varchar(50) DEFAULT NULL,
  `game_description` text,
  `game_decriptioneng` text,
  `game_prix` float DEFAULT NULL,
  `game_parcours` float DEFAULT NULL,
  `game_nbenigme` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `game`
--

INSERT INTO `game` (`game_id`, `game_genre`, `game_duree`, `game_lieu`, `game_id_pack`, `game_categorie`, `game_nbjoueur`, `game_environnement`, `game_nom`, `game_nomeng`, `game_description`, `game_decriptioneng`, `game_prix`, `game_parcours`, `game_nbenigme`) VALUES
(1, '', 1, 'mulhouse ville', NULL, 'expert', 2, 'ville', 'test Anthony n°1', 'Test ANthony ANG n°1', 'en gros je teste pour voir si ca marche ', 'same, i am testing the DB', 2.5, 3.8, 2),
(2, 'suspens', 1, 'azerty', NULL, 'novice', 2, 'azerty', 'azerty', 'azerty', 'azerty', 'azerty', 2, 2.5, 1),
(2, 'suspens', 1, 'azerty', NULL, 'novice', 2, 'azerty', 'azerty', 'azerty', 'azerty', 'azerty', 2, 2.5, 1);

-- --------------------------------------------------------

--
-- Structure de la table `pack`
--

CREATE TABLE `pack` (
  `pack_id` int(11) NOT NULL,
  `pack_description` text,
  `pack_descriptioneng` text,
  `pack_nom` text,
  `pack_nbgame` int(11) DEFAULT NULL,
  `pack_prix` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `review_id_game` int(11) DEFAULT NULL,
  `review_message` text,
  `review_note` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nom` varchar(50) DEFAULT NULL,
  `user_mdp` varchar(50) DEFAULT NULL,
  `user_mail` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
