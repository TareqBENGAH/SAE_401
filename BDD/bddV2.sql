-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 21 mars 2023 à 21:56
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
-- Base de données : `magasin`
--
CREATE DATABASE IF NOT EXISTS `magasin` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `magasin`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `id_article` varchar(5) NOT NULL DEFAULT '',
  `designation` varchar(100) NOT NULL DEFAULT '',
  `prix` decimal(8,2) NOT NULL DEFAULT '0.00',
  `categorie` enum('vidéo','photo','informatique','divers') NOT NULL DEFAULT 'divers'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `designation`, `prix`, `categorie`) VALUES
('TW740', 'Epson EH-TW7100', '1299.00', 'vidéo'),
('EOS6D', 'Canon EOS 6D', '1150.00', 'photo'),
('D5600', 'Nikon D5600', '479.00', 'photo'),
('PRO17', 'Portable Asus ProArt 17', '2399.00', 'informatique'),
('HP800', 'PC HP EliteDesk 800 G6', '1500.00', 'informatique'),
('SD256', 'Carte Micro SD UHS 256Go', '17.50', 'divers'),
('T7SSD', 'Disque SSD Samsung T7 SSD 1To', '96.90', 'divers'),
('ASG15', 'Portable Asus Strix G15', '1715.00', 'informatique'),
('TK800', 'BenQ TK800M', '890.00', 'vidéo'),
('HP835', 'Portable HP 835 G8', '1999.00', 'informatique'),
('1000D', 'Canon EOS 1000D + zoom 18/55', '329.00', 'photo'),
('HP80A', 'Toner HP 80A', '95.60', 'divers');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id_client` mediumint(8) UNSIGNED NOT NULL,
  `nom` varchar(30) NOT NULL DEFAULT '',
  `prenom` varchar(30) DEFAULT NULL,
  `age` tinyint(3) UNSIGNED DEFAULT NULL,
  `adresse` varchar(60) NOT NULL DEFAULT '',
  `ville` varchar(40) NOT NULL DEFAULT '',
  `mail` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom`, `prenom`, `age`, `adresse`, `ville`, `mail`) VALUES
(1, 'Assain', 'Marc', 36, '5 Av Einstein', 'Orléans', 'marc@assain.com'),
(2, 'Hochon', 'Paul', 44, '32 Av Foch', 'Paris', 'hochon@liberty.com'),
(3, 'Nass', 'Anna', 18, '75 Bd Hochimin', 'Lille', 'nass@orange.fr'),
(4, 'Alizan', 'Gaspard', 22, '33 rue Tsétsé', 'Chartres', 'alizan@free.fr'),
(5, 'Cover', 'Harry', 18, '75 Bd Hochimin', 'Lille', 'harry@orange.fr'),
(6, 'Hachette', 'Jeanne', 45, '60 rue d\'Amiens', 'Versailles', NULL),
(7, 'Assain', 'Pierre', 25, '4 Av Henri', 'Paris', 'assain@gmail.com'),
(8, 'Onette', 'Camille', 52, '89 rue Diana', 'Lyon', 'camille@free.fr'),
(9, 'Ousy', 'Jacques', 37, '26 rue Gallas', 'Nantes', 'jac@wanadoo.com'),
(10, 'Darc', 'Jeanne', 19, '9 av d\'Orléans', 'Paris', NULL),
(11, 'Boket', 'Bill', 45, '9 Bd de Paris', 'Lyon', 'bill@micromou.com'),
(12, 'KALBE', 'Anthony', 12, 'ALTENACH', '31 rue de la vallée', 'imt09154@jeoce.com'),
(13, 'KALBE', 'Anthony', 12, 'ALTENACH', '31 rue de la vallée', 'imt09154@jeoce.com'),
(14, 'KALBE', 'Anthony', 12, 'ALTENACH', '31 rue de la vallée', 'imt09154@jeoce.com'),
(15, 'KALBE', 'Anthony', 12, 'ALTENACH', '31 rue de la vallée', 'imt09154@jeoce.com');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `id_comm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_client` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_comm`, `id_client`, `date`) VALUES
(1, 5, '2021-06-11'),
(2, 9, '2021-06-25'),
(3, 1, '2021-07-12'),
(4, 3, '2021-07-12'),
(5, 9, '2021-07-31'),
(6, 10, '2021-08-08'),
(7, 2, '2021-08-25'),
(8, 7, '2021-09-04'),
(9, 11, '2021-10-15'),
(10, 4, '2021-11-23'),
(11, 8, '2022-01-21'),
(12, 5, '2022-02-01'),
(13, 9, '2022-03-03');

-- --------------------------------------------------------

--
-- Structure de la table `ligne`
--

CREATE TABLE `ligne` (
  `id_comm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `id_article` char(5) NOT NULL DEFAULT '0',
  `quantite` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `ligne`
--

INSERT INTO `ligne` (`id_comm`, `id_article`, `quantite`) VALUES
(1, 'TW740', 1),
(1, 'SD256', 3),
(2, 'HP800', 2),
(5, '1000D', 1),
(3, 'D5600', 5),
(4, 'PRO17', 3),
(4, 'T7SSD', 2),
(6, 'SD256', 3),
(6, 'TK800', 1),
(7, 'HP835', 5),
(8, 'PRO17', 1),
(8, 'TK800', 1),
(9, 'EOS6D', 1),
(10, 'ASG15', 2),
(10, 'HP835', 1),
(11, 'T7SSD', 10),
(12, 'TW740', 3),
(12, 'SD256', 4),
(13, 'HP835', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_article`),
  ADD UNIQUE KEY `id_article` (`id_article`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id_client`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`id_comm`);

--
-- Index pour la table `ligne`
--
ALTER TABLE `ligne`
  ADD PRIMARY KEY (`id_comm`,`id_article`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id_client` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Base de données : `sae301`
--
CREATE DATABASE IF NOT EXISTS `sae301` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sae301`;

-- --------------------------------------------------------

--
-- Structure de la table `bien`
--

CREATE TABLE `bien` (
  `id_bien` int(11) NOT NULL,
  `crdn_bien` varchar(100) DEFAULT NULL,
  `ville_bien` varchar(100) DEFAULT NULL,
  `prix_bien` float DEFAULT NULL,
  `type_bien` enum('maison troglodythe','manoir','maison arboricole','maison délabrée','maison classique','maison isolée') DEFAULT NULL,
  `departement_bien` varchar(2) DEFAULT NULL,
  `nbSdB_bien` int(11) DEFAULT NULL,
  `nbChbr_bien` int(11) DEFAULT NULL,
  `surface_bien` float DEFAULT NULL,
  `description_bien` text,
  `region_bien` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bien`
--

INSERT INTO `bien` (`id_bien`, `crdn_bien`, `ville_bien`, `prix_bien`, `type_bien`, `departement_bien`, `nbSdB_bien`, `nbChbr_bien`, `surface_bien`, `description_bien`, `region_bien`) VALUES
(1, '47.625, 7.119', 'Dannemarie', 10909.5, 'maison délabrée', '68', 4, 8, 179, 'Située à Dannemarie, une petite commune du département du Haut-Rhin, en région Grand Est, à environ 30 kilomètres au sud-est de Mulhouse et à proximité de la frontière suisse.\r\n\r\nVous pourrez découvrir une maison pleine de promesses. Vous souhaitez rénover votre chez-vous de A à Z, cette superbe maison saura vous séduire.\r\n\r\nCette maison délabrée de 179m² comprend 8 chambres et 4 salles de bains. Elle pourrait être rénovée pour devenir une grande propriété familiale ou être convertie en logements multiples pour un investissement locatif potentiel. \r\n\r\nCependant, il est important de noter que des travaux de rénovation importants seront nécessaires avant de pouvoir être utilisé de manière optimale.', 'Haut-Rhin'),
(2, '47.750, 7.333', 'Mulhouse', 93018, 'manoir', '87', 4, 8, 322, 'La vie de château est trop contraignante mais vous souhaitez avoir une demeure d\'exception, ne passez pas à côté de ce bien exceptionnel.\r\n\r\nCe manoir de 322m² à Mulhouse est un bâtiment imposant avec 12 chambres et 6 salles de bains, il offre un espace de vie luxueux et spacieux. Une envie de prendre l\'air, il vous suffit d\'ouvrir la porte et de profiter de son jardin privatif de 1,5 hectares.\r\n\r\nIl pourrait être utilisé comme grande propriété familiale ou converti en chambres d\'hôtes ou en logements locatifs de prestige. \r\n\r\nUne vue sur la ville inégalable, situé en hauteur vous ne serez pas dérangé par le voisinage. \r\n\r\nIl pourrait être un investissement immobilier intéressant pour ceux qui recherchent un bien de caractère avec des possibilités de développement.', 'Haut-Rhin'),
(3, '47.7142, 6.6291', 'Ronchamps', 280000, 'maison troglodythe', '70', 0, 1, 26, 'Cette maison troglodyte de 26m² à Ronchamps est un bâtiment unique et atypique qui a été creusé dans la roche. \r\n\r\nElle comprend une chambre design avec température constante été comme hiver. Elle offre un espace de vie compact et cosy, idéal pour une personne seule ou pour un couple. \r\n\r\nElle pourrait être utilisée comme résidence secondaire ou comme logement locatif pour les vacances. \r\n\r\nElle est située dans un environnement paisible et naturel.', 'Bourgogne-Franche-Comte'),
(4, '48.8561,2.3140', 'Paris', 1000000, 'maison arboricole', '75', 1, 3, 187, 'Cette maison arboricole de 187m² à Paris est un bâtiment unique qui intègre la nature dans sa structure. \r\n\r\nElle comprend 3 chambres et une salle de bain. Elle offre un espace de vie original, lumineux et en harmonie avec la nature, elle peut être construite en bois ou en matériaux écologiques. \r\n\r\nElle pourrait être utilisée comme résidence principale ou secondaire pour les amoureux de la nature ou pour les personnes recherchant un habitat alternatif. ', 'Iles de France'),
(5, '45.0050,0.6234', 'St Astier', 100, 'maison isolée', '24', 2, 4, 120, 'Cette maison isolée de 120m² à St Astier est une propriété paisible et privée, elle comprend 4 chambres et 2 salles de bains. \r\n\r\nElle offre un espace de vie confortable et spacieux pour une famille ou pour une personne recherchant de l\'intimité. \r\nElle est entourée d\'un terrain de 6 hectares dont 3 de forêts et un petit verger pour une vie en pleine nature. \r\n\r\nElle pourrait également être utilisée comme résidence secondaire pour des vacances à la campagne.', 'Nouvelle Aquitaine'),
(6, '48.1940,-3.7819', 'Ploudaniel', 180000, 'maison classique', '29', 1, 3, 100, 'Cette maison plain-pied de 100m² à Ploudaniel est une propriété pratique et fonctionnelle, elle comprend 3 chambres et une salle de bain. \r\n\r\nElle offre un espace de vie spacieux et lumineux, elle est idéale pour les personnes recherchant une maison facile d\'accès sans escalier. \r\n\r\nElle est entourée d\'un jardin avec un garage. Elle pourrait également être utilisée comme résidence principale ou secondaire pour des vacances à la campagne.', 'Bretagne');

-- --------------------------------------------------------

--
-- Structure de la table `membre`
--

CREATE TABLE `membre` (
  `id_membre` int(11) NOT NULL,
  `nom_membre` varchar(100) DEFAULT NULL,
  `prenom_membre` varchar(100) DEFAULT NULL,
  `email_membre` varchar(255) DEFAULT NULL,
  `mdp_membre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `membre`
--

INSERT INTO `membre` (`id_membre`, `nom_membre`, `prenom_membre`, `email_membre`, `mdp_membre`) VALUES
(1, 'anthony', 'kalbe', 'anthony.kalbe@uha.fr', 'test'),
(2, 'zoé', 'gabet', 'zoé.gabet@uha.fr', 'test'),
(3, 'pauline', 'grunewald', 'pauline.grunewald@uha.fr', 'test');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bien`
--
ALTER TABLE `bien`
  ADD PRIMARY KEY (`id_bien`);

--
-- Index pour la table `membre`
--
ALTER TABLE `membre`
  ADD PRIMARY KEY (`id_membre`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bien`
--
ALTER TABLE `bien`
  MODIFY `id_bien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Base de données : `sae_401`
--
CREATE DATABASE IF NOT EXISTS `sae_401` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sae_401`;

-- --------------------------------------------------------

--
-- Structure de la table `booking`
--

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
