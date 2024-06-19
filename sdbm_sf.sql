-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 19 juin 2024 à 16:41
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sdbm_sf`
--

-- --------------------------------------------------------

--
-- Structure de la table `continent`
--

CREATE TABLE `continent` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `continent`
--

INSERT INTO `continent` (`id`, `nom`) VALUES
(1, 'Europe'),
(2, 'Amérique'),
(3, 'Océanie'),
(4, 'Asie'),
(5, 'Afrique'),
(8, 'DWWM23316 Modif'),
(10, 'Test2'),
(14, 'TEST02'),
(15, 'Amerique du Nord');

-- --------------------------------------------------------

--
-- Structure de la table `couleur`
--

CREATE TABLE `couleur` (
  `id` int(11) NOT NULL,
  `nom_couleur` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `couleur`
--

INSERT INTO `couleur` (`id`, `nom_couleur`) VALUES
(1, 'Blonde'),
(2, 'Brune'),
(3, 'Blanche'),
(4, 'Ambrée');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20240613123320', '2024-06-13 14:34:22', 84),
('DoctrineMigrations\\Version20240614133147', '2024-06-14 15:32:24', 225),
('DoctrineMigrations\\Version20240619131121', '2024-06-19 15:11:36', 84),
('DoctrineMigrations\\Version20240619142517', '2024-06-19 16:25:26', 80),
('DoctrineMigrations\\Version20240619143532', '2024-06-19 16:35:38', 31);

-- --------------------------------------------------------

--
-- Structure de la table `fabricant`
--

CREATE TABLE `fabricant` (
  `id` int(11) NOT NULL,
  `nom_fabricant` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fabricant`
--

INSERT INTO `fabricant` (`id`, `nom_fabricant`) VALUES
(1, 'AB InBev'),
(2, 'Carlsberg'),
(3, 'Craig Allan'),
(4, 'Duvel'),
(5, 'Heineken'),
(6, 'Notre Dame de Scourmont'),
(7, 'Diageo'),
(8, 'ND de Koeningshoeven'),
(9, 'Parisis'),
(10, 'Palm');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` int(11) NOT NULL,
  `continents_id` int(11) NOT NULL,
  `nom_pays` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `continents_id`, `nom_pays`) VALUES
(1, 1, 'ALLEMAGNE'),
(2, 1, 'BELGIQUE'),
(3, 2, 'ÉTATS-UNIS'),
(4, 1, 'PAYS-BAS'),
(5, 2, 'BRÉSIL'),
(6, 2, 'ARGENTINE'),
(7, 1, 'DANEMARK'),
(8, 3, 'AUSTRALIE'),
(9, 1, 'FRANCE'),
(10, 1, 'IRLANDE'),
(11, 1, 'ROYAUME-UNI'),
(12, 3, 'NOUVELLE-ZÉLANDE'),
(13, 2, 'CANADA'),
(14, 4, 'ISRAËL'),
(15, 1, 'ITALIE'),
(16, 1, 'ESPAGNE'),
(17, 4, 'THAÏLANDE'),
(18, 4, 'JAPON'),
(19, 1, 'RUSSIE, FÉDÉRATION DE'),
(20, 4, 'CHINE'),
(21, 1, 'SUISSE'),
(22, 5, 'CONGO'),
(23, 5, 'MAROC'),
(24, 2, 'MEXIQUE'),
(25, 1, 'SLOVAQUIE'),
(26, 1, 'POLOGNE'),
(27, 4, 'TURQUIE'),
(28, 2, 'VENEZUELA'),
(29, 2, 'COLOMBIE'),
(30, 1, 'NORVÈGE'),
(31, 1, 'SUÈDE'),
(32, 4, 'LAOS'),
(33, 1, 'TCHÈQUE, RÉPUBLIQUE'),
(34, 1, 'PORTUGAL'),
(35, 1, 'AUTRICHE'),
(36, 5, 'TANZANIE'),
(37, 1, 'sss'),
(38, 1, 'Guillaume'),
(39, 4, 'AAAAAA');

-- --------------------------------------------------------

--
-- Structure de la table `typebiere`
--

CREATE TABLE `typebiere` (
  `id` int(11) NOT NULL,
  `nom_type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `typebiere`
--

INSERT INTO `typebiere` (`id`, `nom_type`) VALUES
(1, 'Bière de Saison'),
(2, 'Ale'),
(3, 'Pils et Lager'),
(4, 'Bière Aromatisée'),
(5, 'Lambic'),
(6, 'Abbaye'),
(7, 'Stout'),
(8, 'Trappiste'),
(9, 'Indian Pale Ale'),
(10, 'Barley Wine'),
(11, 'Bock'),
(12, 'Bio'),
(13, 'Bière de Garde');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `continent`
--
ALTER TABLE `continent`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `couleur`
--
ALTER TABLE `couleur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `fabricant`
--
ALTER TABLE `fabricant`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_349F3CAE298246F6` (`continents_id`);

--
-- Index pour la table `typebiere`
--
ALTER TABLE `typebiere`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `continent`
--
ALTER TABLE `continent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `couleur`
--
ALTER TABLE `couleur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `fabricant`
--
ALTER TABLE `fabricant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `typebiere`
--
ALTER TABLE `typebiere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `FK_349F3CAE298246F6` FOREIGN KEY (`continents_id`) REFERENCES `continent` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
