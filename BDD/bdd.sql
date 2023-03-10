-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : ven. 10 mars 2023 à 08:33
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sae_402`
--

-- --------------------------------------------------------

--
-- Structure de la table `booking`
--

CREATE TABLE `booking` (
  `resa_id` tinyint(4) NOT NULL,
  `resa_horaire` tinyint(4) DEFAULT NULL,
  `id_user` tinyint(4) DEFAULT NULL,
  `resa_idgame` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `client_id` int(11) NOT NULL,
  `client_nom` varchar(30) DEFAULT NULL,
  `client_mdp` varchar(30) DEFAULT NULL,
  `client_mail` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `faq_sujet`
--

CREATE TABLE `faq_sujet` (
  `faqsj_idsujet` tinyint(4) NOT NULL,
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
  `game_id` tinyint(4) NOT NULL,
  `game_genre` varchar(50) DEFAULT NULL,
  `game_duree` tinyint(4) DEFAULT NULL,
  `game_lieu` varchar(50) DEFAULT NULL,
  `game_id_pack` tinyint(4) DEFAULT NULL,
  `game_categorie` varchar(50) DEFAULT NULL,
  `game_nbjoueur` tinyint(4) DEFAULT NULL,
  `game_environnement` varchar(50) DEFAULT NULL,
  `game_nom` varchar(50) DEFAULT NULL,
  `game_nomeng` varchar(50) DEFAULT NULL,
  `game_description` text,
  `game_decriptioneng` text,
  `game_prix` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `pack`
--

CREATE TABLE `pack` (
  `pack_id` tinyint(4) NOT NULL,
  `pack_description` text,
  `pack_descriptioneng` text,
  `pack_nom` varchar(50) DEFAULT NULL,
  `pack_nbgame` tinyint(4) DEFAULT NULL,
  `pack_prix` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `review`
--

CREATE TABLE `review` (
  `review_id` tinyint(4) NOT NULL,
  `review_id_game` tinyint(4) DEFAULT NULL,
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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`resa_id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_id`);

--
-- Index pour la table `faq_sujet`
--
ALTER TABLE `faq_sujet`
  ADD PRIMARY KEY (`faqsj_idsujet`);

--
-- Index pour la table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`);

--
-- Index pour la table `pack`
--
ALTER TABLE `pack`
  ADD PRIMARY KEY (`pack_id`);

--
-- Index pour la table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
