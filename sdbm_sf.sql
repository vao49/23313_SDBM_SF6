-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 20 juin 2024 à 14:58
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
('DoctrineMigrations\\Version20240619143532', '2024-06-19 16:35:38', 31),
('DoctrineMigrations\\Version20240620120913', '2024-06-20 14:09:36', 270);

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
-- Structure de la table `marque`
--

CREATE TABLE `marque` (
  `id` int(11) NOT NULL,
  `pays_id` int(11) DEFAULT NULL,
  `fabricants_id` int(11) DEFAULT NULL,
  `nom_marque` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id`, `pays_id`, `fabricants_id`, `nom_marque`) VALUES
(1, 1, 1, 'das Echte Märzen'),
(2, 1, 1, 'das Helle'),
(3, 1, 1, 'das Schwarze'),
(4, 1, 1, 'Dinkel Accker'),
(5, 1, 1, 'Franziskaner '),
(6, 2, 1, 'Fruit Défendu (le)'),
(7, 3, 1, 'Goose Island'),
(8, 4, 1, 'Hertog Jan'),
(9, 2, 1, 'Hoegaarden'),
(10, 5, 1, 'InBev'),
(11, 2, 1, 'Julius'),
(12, 2, 1, 'Leffe'),
(13, 2, 1, 'Loburg'),
(14, 1, 1, 'Meister'),
(15, 2, 1, 'PiedBoeuf'),
(16, 6, 1, 'Quilmes'),
(17, 1, 1, 'Schwaben Bräu'),
(18, 5, 1, 'Skol Pils'),
(19, 2, 1, 'Stella Artois'),
(20, 2, 1, 'Vieux Temps'),
(21, 7, 2, 'Carlsberg'),
(22, 8, 2, 'Foster\'s'),
(23, 9, 2, 'Kanterbraü'),
(24, 9, 2, 'Kronenbourg'),
(25, 9, 2, 'Wilfort'),
(26, 9, 3, 'Agent Provocateur'),
(27, 2, 4, 'Abdis'),
(28, 2, 4, 'Chouffe'),
(29, 2, 4, 'Duvel'),
(30, 2, 4, 'Liefmans'),
(31, 9, 5, 'Adelscott'),
(32, 2, 5, 'Affligem'),
(33, 10, 5, 'Beamish'),
(34, 2, 5, 'Brugs'),
(35, 2, 5, 'Ciney'),
(36, 9, 5, 'Desperados'),
(37, 9, 5, 'Fischer'),
(38, 2, 5, 'Grimbergen'),
(39, 4, 5, 'Heineken'),
(40, 2, 5, 'Maes'),
(41, 11, 5, 'Mc Ewan'),
(42, 2, 5, 'Mort Subite'),
(43, 10, 5, 'Murphy'),
(44, 11, 5, 'Newcastle'),
(45, 9, 5, 'Pelforth'),
(46, 2, 5, 'Postel'),
(47, 2, 5, 'Watneys'),
(48, 2, 6, 'Chimay'),
(49, 9, 6, 'Chimère de Cendre (la)'),
(50, 9, 6, 'Monts des Cats'),
(51, 9, NULL, '3 Brasseurs'),
(52, 12, NULL, 'Saison Sauvin'),
(53, 13, NULL, 'A l\'abri de la tempête'),
(54, 2, NULL, 'abbaye des Rocs'),
(55, 2, NULL, 'Abbaye du Val Dieu'),
(56, 2, NULL, 'Westmalle'),
(57, 2, NULL, 'Achel'),
(58, 2, NULL, 'Rochefort'),
(59, 2, NULL, 'Westvleteren'),
(60, 2, NULL, 'Orval'),
(61, 11, NULL, 'Adnams'),
(62, 9, NULL, 'Akim T./Brasserie Thiriez'),
(63, 3, NULL, 'Alaskan Brasserie'),
(64, 3, NULL, 'Alesmith Brasserie co.'),
(65, 14, NULL, 'Alexander Brasserie'),
(66, 15, NULL, 'Amarcord'),
(67, 3, NULL, 'Anchor Brasserie'),
(68, 2, NULL, 'Anders'),
(69, 3, NULL, 'Anderson Valley Brasserie co.'),
(70, 16, NULL, 'Art Cervesers'),
(71, 9, NULL, 'Art Malté'),
(72, 9, NULL, 'Artibrassage 87'),
(73, 9, NULL, 'Atelier de la Bière'),
(74, 3, NULL, 'Avery'),
(75, 1, NULL, 'Ayinger'),
(76, 17, NULL, 'Ayutthaya'),
(77, 11, NULL, 'Badger'),
(78, 18, NULL, 'Baird'),
(79, 15, NULL, 'Baladin'),
(80, 3, NULL, 'Ballast Point'),
(81, 19, NULL, 'Baltika'),
(82, 9, NULL, 'BAM'),
(83, 9, NULL, 'Chantecler'),
(84, 2, NULL, 'Cambrinius'),
(85, 9, NULL, 'Ninkasi'),
(86, 2, NULL, 'Waterhuis'),
(87, 11, NULL, 'Bateman\'s Brasserie'),
(88, 4, NULL, 'Bavaria'),
(89, 1, NULL, 'Bayerischer Bahnhof'),
(90, 1, NULL, 'Bayreuther Bio Brauer'),
(91, 11, NULL, 'Beavertown Brasserie'),
(92, 2, NULL, 'Beer Project Brussels/Anders'),
(93, 2, NULL, 'Brasserie de Bastogne'),
(94, 20, NULL, 'Beijing Yanjing brewery co.'),
(95, 11, NULL, 'Belhaven'),
(96, 9, NULL, 'Bendorf'),
(97, 1, NULL, 'Berliner Kindl'),
(98, 21, NULL, 'BFM'),
(99, 9, NULL, 'BHB'),
(100, 9, NULL, 'Bièrataise'),
(101, 9, NULL, 'Bière de l\'Ourcq'),
(102, 9, NULL, 'Bières de Ré'),
(103, 9, NULL, 'Bières d\'Uzès'),
(104, 16, NULL, 'Birra 08'),
(105, 15, NULL, 'Birra del Borgo'),
(106, 15, NULL, 'Birra Napoleon'),
(107, 16, NULL, 'Birrart'),
(108, 15, NULL, 'Birrificio l\'Olmaia'),
(109, 1, NULL, 'Bitburger'),
(110, 11, NULL, 'Black Isle Brasserie'),
(111, 11, NULL, 'Black Sheep Brasserie'),
(112, 2, NULL, 'Bockor'),
(113, 5, NULL, 'Bodebrown'),
(114, 2, NULL, 'Boon (Palm)'),
(115, 17, NULL, 'Boon Rawd Brasserie'),
(116, 9, NULL, 'Bordelais'),
(117, 2, NULL, 'Bosteels'),
(118, 9, NULL, 'Bourganel'),
(119, 2, NULL, 'Brasserie à Vapeur'),
(120, 9, NULL, 'Brasserie Akerbeltz'),
(121, 16, NULL, 'Brasserie Ales Agullons'),
(122, 9, NULL, 'Brasserie Aliénor'),
(123, 9, NULL, 'Brasserie Alphand'),
(124, 2, NULL, 'Brasserie Alvinne'),
(125, 9, NULL, 'Brasserie An Alarc\'h'),
(126, 9, NULL, 'Brasserie Artésienne'),
(127, 9, NULL, 'Brasserie Artisanale des Vosges'),
(128, 9, NULL, 'Brasserie artisanale du Pays Rochelais'),
(129, 9, NULL, 'Brasserie Artisanale du Sud'),
(130, 9, NULL, 'Brasserie artisanale Gilbert\'s'),
(131, 9, NULL, 'Brasserie Artisanale Lutina'),
(132, 9, NULL, 'Brasserie Artisanale Savoyarde'),
(133, 9, NULL, 'Brasserie Artisanale Touken'),
(134, 4, NULL, 'Brasserie Atlas'),
(135, 2, NULL, 'Brasserie Authentique'),
(136, 1, NULL, 'Brasserie Bavaria St Pauli'),
(137, 2, NULL, 'Brasserie Bavik'),
(138, 2, NULL, 'Brasserie Boelens'),
(139, 2, NULL, 'Brasserie Brabrux'),
(140, 2, NULL, 'Brasserie Brunehaut'),
(141, 9, NULL, 'Brasserie Cap d\'Ona'),
(142, 2, NULL, 'Brasserie Caracole'),
(143, 10, NULL, 'Brasserie Carlow'),
(144, 2, NULL, 'Brasserie Caulier'),
(145, 9, NULL, 'Brasserie Celtik'),
(146, 9, NULL, 'Brasserie Coreff'),
(147, 9, NULL, 'Brasserie Corrézienne'),
(148, 9, NULL, 'Brasserie d\'Annoeullin'),
(149, 9, NULL, 'Brasserie de Bellefois'),
(150, 9, NULL, 'Brasserie de Bercloux'),
(151, 2, NULL, 'Brasserie de Bie'),
(152, 2, NULL, 'Brasserie de Blaugies'),
(153, 2, NULL, 'Brasserie de Block'),
(154, 2, NULL, 'Brasserie de Bouillon'),
(155, 9, NULL, 'Brasserie de Bourbon'),
(156, 9, NULL, 'Brasserie de Bretagne'),
(157, 2, NULL, 'Brasserie de Cazeau'),
(158, 9, NULL, 'Brasserie de Fleurac'),
(159, 9, NULL, 'Brasserie de Gayant'),
(160, 2, NULL, 'Brasserie de Graal'),
(161, 2, NULL, 'Brasserie de Jandrain-Jandrenouille'),
(162, 9, NULL, 'Brasserie de la Cère'),
(163, 9, NULL, 'Brasserie de la Côte de Jade'),
(164, 9, NULL, 'Brasserie de la Goutte d\'Or'),
(165, 9, NULL, 'Brasserie de la Lanterne'),
(166, 9, NULL, 'Brasserie de la Loire'),
(167, 9, NULL, 'Brasserie de la Pigeonelle'),
(168, 9, NULL, 'Brasserie de la Pleine Lune'),
(169, 2, NULL, 'Brasserie de la Senne'),
(170, 9, NULL, 'Brasserie de la Somme'),
(171, 9, NULL, 'Brasserie de la Source'),
(172, 9, NULL, 'Brasserie de la Vallée de la Chevreuse'),
(173, 9, NULL, 'Brasserie de l\'abb. du Cateau'),
(174, 9, NULL, 'Brasserie de l\'Aurore'),
(175, 9, NULL, 'Brasserie de l\'Entre-Deux-Bières'),
(176, 9, NULL, 'Brasserie de l\'île d\'Oléron'),
(177, 9, NULL, 'Brasserie de Lorraine'),
(178, 4, NULL, 'Brasserie de Molen'),
(179, 9, NULL, 'Brasserie de Pouldreuzic'),
(180, 2, NULL, 'Brasserie de Rulles'),
(181, 2, NULL, 'Brasserie de Ryck'),
(182, 2, NULL, 'Brasserie de Silenrieux'),
(183, 2, NULL, 'Brasserie de Silly'),
(184, 9, NULL, 'Brasserie de St Sylvestre'),
(185, 2, NULL, 'Brasserie De Struise'),
(186, 9, NULL, 'Brasserie de Sutter'),
(187, 9, NULL, 'Brasserie de Tahiti'),
(188, 2, NULL, 'Brasserie den Hopperd'),
(189, 9, NULL, 'Brasserie des 2 Caps'),
(190, 9, NULL, 'Brasserie des Abers'),
(191, 9, NULL, 'Brasserie des Charentes'),
(192, 9, NULL, 'Brasserie des Cimes'),
(193, 9, NULL, 'Brasserie des Côteaux'),
(194, 2, NULL, 'Brasserie des Fagnes'),
(195, 9, NULL, 'Brasserie des Gabariers'),
(196, 9, NULL, 'Brasserie des Garrigues'),
(197, 2, NULL, 'Brasserie des Géants (des Légendes)'),
(198, 9, NULL, 'Brasserie des Mauges'),
(199, 9, NULL, 'Brasserie des Râteliers'),
(200, 9, NULL, 'Brasserie des Sources'),
(201, 9, NULL, 'Brasserie des Trois Epis'),
(202, 9, NULL, 'Brasserie des Trois Fontaines'),
(203, 9, NULL, 'Brasserie des Vignes'),
(204, 1, NULL, 'Brasserie Diebels'),
(205, 13, NULL, 'Brasserie Dieu du Ciel !'),
(206, 9, NULL, 'Brasserie d\'Oc'),
(207, 9, NULL, 'Brasserie du Bobtail'),
(208, 2, NULL, 'Brasserie du Bocq'),
(209, 9, NULL, 'Brasserie du Bougnat'),
(210, 2, NULL, 'Brasserie du Brabant'),
(211, 9, NULL, 'Brasserie du Caou'),
(212, 9, NULL, 'Brasserie du Causse'),
(213, 9, NULL, 'Brasserie du Chardon'),
(214, 22, NULL, 'Brasserie du Congo'),
(215, 2, NULL, 'Brasserie du Grand Enclos'),
(216, 9, NULL, 'Brasserie du Léman'),
(217, 23, NULL, 'Brasserie du Maroc'),
(218, 9, NULL, 'Brasserie du Mas'),
(219, 9, NULL, 'Brasserie du Mont Salève'),
(220, 9, NULL, 'Brasserie du Pays Flamand'),
(221, 9, NULL, 'Brasserie du Pic St Loup'),
(222, 9, NULL, 'Brasserie du Pilat'),
(223, 9, NULL, 'Brasserie du Quercorb'),
(224, 9, NULL, 'Brasserie du Ratz'),
(225, 9, NULL, 'Brasserie du Trégor'),
(226, 9, NULL, 'Brasserie du Vaillant Fourquet'),
(227, 9, NULL, 'Brasserie du Val d\'Ainan'),
(228, 2, NULL, 'Brasserie du Val de Sambre'),
(229, 9, NULL, 'Brasserie du Vezelay'),
(230, 2, NULL, 'Brasserie Dupont'),
(231, 2, NULL, 'Brasserie Ellezelloise (des Légendes)'),
(232, 9, NULL, 'Brasserie Entre 2 Mondes'),
(233, 9, NULL, 'Brasserie Etxeko Bob\'s Beer'),
(234, 2, NULL, 'Brasserie Fantôme'),
(235, 9, NULL, 'Brasserie Fort Boyard'),
(236, 9, NULL, 'Brasserie Gaillarde'),
(237, 9, NULL, 'Brasserie Gatinorge'),
(238, 1, NULL, 'Brasserie Gold Ochsen'),
(239, 2, NULL, 'Brasserie Halve Maan'),
(240, 1, NULL, 'Brasserie Heller'),
(241, 7, NULL, 'Brasserie Henrik Sorensen'),
(242, 2, NULL, 'Brasserie Huyghe'),
(243, 9, NULL, 'Brasserie Kerav Ale'),
(244, 2, NULL, 'Brasserie Kerkom'),
(245, 17, NULL, 'Brasserie Khon Kaen'),
(246, 2, NULL, 'Brasserie la Binchoise'),
(247, 9, NULL, 'Brasserie la Choulette'),
(248, 9, NULL, 'Brasserie la Soyeuse'),
(249, 9, NULL, 'Brasserie la Suzannaise'),
(250, 9, NULL, 'Brasserie l\'Affoleuse'),
(251, 9, NULL, 'Brasserie Lancelot'),
(252, 9, NULL, 'Brasserie Larché'),
(253, 9, NULL, 'Brasserie le Burat'),
(254, 2, NULL, 'Brasserie Leroy'),
(255, 9, NULL, 'Brasserie les 3 Loups'),
(256, 9, NULL, 'Brasserie les Prés en Bulles'),
(257, 9, NULL, 'Brasserie les Ursulines'),
(258, 9, NULL, 'Brasserie Lorraine'),
(259, 9, NULL, 'Brasserie Lugdunum'),
(260, 1, NULL, 'Brasserie Marktobersdorf'),
(261, 9, NULL, 'Brasserie Mélusine'),
(262, 9, NULL, 'Brasserie Meteor'),
(263, 9, NULL, 'Brasserie Mobsbys'),
(264, 24, NULL, 'Brasserie Modelo'),
(265, 9, NULL, 'Brasserie Océane'),
(266, 2, NULL, 'Brasserie Oud Beersel'),
(267, 9, NULL, 'Brasserie Perle'),
(268, 9, NULL, 'Brasserie Pietra'),
(269, 13, NULL, 'Brasserie Pit Caribou'),
(270, 9, NULL, 'Brasserie Pousset'),
(271, 2, NULL, 'Brasserie Roman'),
(272, 9, NULL, 'Brasserie Rouget de Lisle'),
(273, 9, NULL, 'Brasserie Sabot'),
(274, 16, NULL, 'Brasserie San Miguel'),
(275, 9, NULL, 'Brasserie Sancerroise'),
(276, 25, NULL, 'Brasserie Slovensko'),
(277, 1, NULL, 'Brasserie Spezial'),
(278, 2, NULL, 'Brasserie St Feuillien'),
(279, 9, NULL, 'Brasserie St Georges'),
(280, 9, NULL, 'Brasserie St Germain'),
(281, 9, NULL, 'Brasserie St Pierre'),
(282, 9, NULL, 'Brasserie St Sornin'),
(283, 9, NULL, 'Brasserie Ste Colombe'),
(284, 4, NULL, 'Brasserie \'t Ij'),
(285, 9, NULL, 'Brasserie Thiriez'),
(286, 1, NULL, 'Brasserie Thurn und Taxis'),
(287, 2, NULL, 'Brasserie Tilquin'),
(288, 20, NULL, 'Brasserie Tsingtao'),
(289, 9, NULL, 'Brasserie Uberach'),
(290, 9, NULL, 'Brasserie Warenghem'),
(291, 2, NULL, 'Brasserie Watou-St Bernard'),
(292, 7, NULL, 'Brasserie Wintercoat'),
(293, 9, NULL, 'Brasserie/distillerie du Mt Blanc'),
(294, 26, NULL, 'Bracki Browar Zamkowy'),
(295, 11, NULL, 'Brains'),
(296, 11, NULL, 'Brakspear'),
(297, 1, NULL, 'Braustelle'),
(298, 1, NULL, 'Bremer braumanufaktur'),
(299, 11, NULL, 'BrewDog'),
(300, 15, NULL, 'Brewfist'),
(301, 3, NULL, 'Brooklyn Brasserie'),
(302, 11, NULL, 'Buxton'),
(303, 16, NULL, 'Ca l\'Arenys'),
(304, 11, NULL, 'Camden Town Brasserie'),
(305, 2, NULL, 'Cantillon'),
(306, 9, NULL, 'Carib Brasserie'),
(307, 9, NULL, 'Carteron & Desmarest St Tropez'),
(308, 9, NULL, 'Castelain'),
(309, 5, NULL, 'Cervejaria Sudbrack'),
(310, 16, NULL, 'Cervesera del Montseny'),
(311, 3, NULL, 'Clown Shoes/Mercury'),
(312, 5, NULL, 'Colorado'),
(313, 11, NULL, 'Coniston Brasserie Co'),
(314, 2, NULL, 'Contreras'),
(315, 8, NULL, 'Coopers'),
(316, 11, NULL, 'Coors Brasserie'),
(317, 9, NULL, 'Craig Allan'),
(318, 11, NULL, 'Cromarty Brasserie co.'),
(319, 7, NULL, 'Croocked Moon'),
(320, 11, NULL, 'Daleside'),
(321, 16, NULL, 'Damm'),
(322, 2, NULL, 'De Dochter Van de Korenaar'),
(323, 2, NULL, 'De Dolle Brasserie'),
(324, 2, NULL, 'De Glazen Toren'),
(325, 2, NULL, 'De Koninck'),
(326, 2, NULL, 'De Landtsheer'),
(327, 2, NULL, 'De Leite'),
(328, 2, NULL, 'De Proef Brasserie'),
(329, 2, NULL, 'De Ranke'),
(330, 2, NULL, 'De Struise'),
(331, 2, NULL, 'De Troch'),
(332, 2, NULL, 'Deca Brasserie'),
(333, 9, NULL, 'Deck & Donohue'),
(334, 15, NULL, 'Del Ducato'),
(335, 2, NULL, 'Dentergems (Liefmans)'),
(336, 3, NULL, 'Deschutes Brasserie'),
(337, 9, NULL, 'Desprat'),
(338, 5, NULL, 'Devassa'),
(339, 13, NULL, 'Dieu du Ciel !'),
(340, 2, NULL, 'Dilewyns'),
(341, 3, NULL, 'Dogfish Head'),
(342, 9, NULL, 'Domaine de Maestracci'),
(343, 2, NULL, 'Drie Fonteinen'),
(344, 2, NULL, 'Beersel'),
(345, 2, NULL, 'Dubuisson'),
(346, 9, NULL, 'Duc d\'Havré'),
(347, 1, NULL, 'Duckstein'),
(348, 4, NULL, 'Dutch Export'),
(349, 2, 4, 'Maredsous'),
(350, 9, NULL, 'Duyck'),
(351, 27, NULL, 'Efes Brewery'),
(352, 1, NULL, 'Einbecker Brasserie'),
(353, 11, NULL, 'Eldridge Pope & Co'),
(354, 4, NULL, 'Emelisse'),
(355, 28, NULL, 'Empresas Polar'),
(356, 1, NULL, 'Erdinger Privat Brasserie'),
(357, 1, NULL, 'Erste Kulmbacher'),
(358, 5, NULL, 'Especial'),
(359, 16, NULL, 'Euskal Garagardoa'),
(360, 11, NULL, 'Everards'),
(361, 7, NULL, 'Evil Twin/Westbrook'),
(362, 7, NULL, 'Fanø'),
(363, 9, NULL, 'Ferme Brasserie de la Bourdette'),
(364, 9, NULL, 'Ferme de Laubicherie'),
(365, 3, NULL, 'Flying Dog Brasserie'),
(366, 15, NULL, 'Foglie d’Erba'),
(367, 2, NULL, 'Forestinne'),
(368, 16, NULL, 'Fort'),
(369, 3, NULL, 'Founders'),
(370, 9, NULL, 'France Brasserie groupe'),
(371, 1, NULL, 'Freigeist/Braustelle'),
(372, 1, NULL, 'Friesish Herb'),
(373, 11, NULL, 'Fuller\'s'),
(374, 11, NULL, 'Fyne Ales'),
(375, 1, NULL, 'G. Schneider & Sohn'),
(376, 9, NULL, 'Garland'),
(377, 9, NULL, 'Gasconha'),
(378, 1, NULL, 'GeBrasserie Maisel KG'),
(379, 3, NULL, 'Genesee Brasserie Co.'),
(380, 3, NULL, 'Gigantic Brasserie'),
(381, 2, NULL, 'Girardin'),
(382, 15, NULL, 'Grado Plato'),
(383, 7, NULL, 'Grassroots Brasserie'),
(384, 3, NULL, 'Great Divide'),
(385, 3, NULL, 'Green Flash Brasserie Co.'),
(386, 11, NULL, 'Greene King'),
(387, 29, NULL, 'Grupa Empresarial Bavaria'),
(388, 10, 7, 'Guinness'),
(389, 2, NULL, 'Haacht'),
(390, 30, NULL, 'HaandBryggeriet'),
(391, 2, NULL, 'Hanssens Artisanaal'),
(392, 2, NULL, 'Het Anker'),
(393, 11, NULL, 'Hobsons'),
(394, 1, NULL, 'Hohenthanner SchlossBrasserie'),
(395, 1, NULL, 'Holsten'),
(396, 16, NULL, 'Holzbraü'),
(397, 3, NULL, 'Hoppin\' Frog'),
(398, 7, NULL, 'Hornbeer'),
(399, 9, NULL, 'IFBM'),
(400, 9, NULL, 'Jean Yves Martinal'),
(401, 11, NULL, 'Jennings'),
(402, 9, NULL, 'Joli Rouge'),
(403, 4, NULL, 'Jopen'),
(404, 1, NULL, 'Kaiser'),
(405, 1, NULL, 'Karlsberg Brasserie'),
(406, 10, 7, 'Kilkenny'),
(407, 18, NULL, 'Kiuchi Brasserie'),
(408, 1, NULL, 'KlosterBrasserie Andechs'),
(409, 1, NULL, 'Klosterbrauerei Ettal'),
(410, 1, NULL, 'König'),
(411, 1, NULL, 'Köstritzer'),
(412, 1, NULL, 'Krombacher PrivatBrasserie'),
(413, 31, NULL, 'Krönleins'),
(414, 9, NULL, 'la Baleine'),
(415, 9, NULL, 'La Bambelle'),
(416, 9, NULL, 'la Cagole'),
(417, 16, NULL, 'la Calavera'),
(418, 9, NULL, 'la Cervoisière'),
(419, 9, NULL, 'la Crécelle'),
(420, 9, NULL, 'la Débauche'),
(421, 9, NULL, 'la Fabrique de Bières de la Baie'),
(422, 9, NULL, 'La Franche'),
(423, 9, NULL, 'la Grange du Seigneur'),
(424, 9, NULL, 'la Maison de Brasseur'),
(425, 9, NULL, 'la Rainette'),
(426, 9, NULL, 'la Séquère'),
(427, 9, NULL, 'la Vache à Bière'),
(428, 9, NULL, 'la Vache à Bière-la Lutine'),
(429, 9, NULL, 'l\'Agrivoise'),
(430, 3, NULL, 'Lagunitas'),
(431, 9, NULL, 'l\'Antre de l\'Echoppe'),
(432, 32, NULL, 'Lao Brasserie Co'),
(433, 16, NULL, 'Laugar Brasserie'),
(434, 9, NULL, 'le Brewery'),
(435, 9, NULL, 'le Paradis'),
(436, 2, NULL, 'Lefèbvre'),
(437, 3, NULL, 'Left Hand'),
(438, 9, NULL, 'les Chopes du Moulin'),
(439, 9, NULL, 'les Fous'),
(440, 9, NULL, 'les Radicaux Libres'),
(441, 2, NULL, 'Lindemans'),
(442, 3, NULL, 'Lost Abbey-Port Brewing'),
(443, 3, NULL, 'Lost Coast'),
(444, 2, NULL, 'Louwaege'),
(445, 15, NULL, 'Loverbeer'),
(446, 2, NULL, 'Mad Yeast/Anders'),
(447, 11, NULL, 'Magic Rock Brasserie'),
(448, 2, NULL, 'Martin\'s'),
(449, 11, NULL, 'Marton'),
(450, 9, NULL, 'Mas Andral'),
(451, 9, NULL, 'Mascaret'),
(452, 9, NULL, 'Matten'),
(453, 4, NULL, 'Maximus Brasserie'),
(454, 11, NULL, 'Meantime Brasserie'),
(455, 15, NULL, 'Menaresta'),
(456, 9, NULL, 'Merchien'),
(457, 2, NULL, 'MicroBrasserie Achilles'),
(458, 13, NULL, 'MicroBrasserie Charlevoix'),
(459, 9, NULL, 'MicroBrasserie St. Georges'),
(460, 7, NULL, 'Mikkeller'),
(461, 9, NULL, 'Mobsby\'s Brasserie'),
(462, 15, NULL, 'Montegioco'),
(463, 11, NULL, 'Moor'),
(464, 9, NULL, 'Mor Braz'),
(465, 11, NULL, 'Morland'),
(466, 9, NULL, 'Moulin des Moines'),
(467, 9, NULL, 'My Beer Company'),
(468, 33, NULL, 'Nachod'),
(469, 16, NULL, 'Naparbier'),
(470, 4, 8, 'La Trappe'),
(471, 2, 8, 'Urthel'),
(472, 1, NULL, 'Neumarkter LammsBrasserie'),
(473, 31, NULL, 'Nils Oscar'),
(474, 30, NULL, 'Nøgne Ø'),
(475, 7, NULL, 'Nørrebro Brasserie'),
(476, 9, NULL, 'Northmaen'),
(477, 3, NULL, 'Odell Brasserie co.'),
(478, 1, NULL, 'Oettinger'),
(479, 3, NULL, 'Ommegang'),
(480, 15, NULL, 'Opperbacco'),
(481, 11, NULL, 'Orkney'),
(482, 11, NULL, 'Otley'),
(483, 9, NULL, 'Ouroboros'),
(484, 9, NULL, 'Outland'),
(485, 2, NULL, 'Palm'),
(486, 9, 9, 'Bière de l\'Yvette'),
(487, 9, 9, 'Parisis'),
(488, 1, NULL, 'Paulaner'),
(489, 9, NULL, 'Pivovar Nymburk'),
(490, 33, NULL, 'Pivovar Velké Brezno'),
(491, 5, NULL, 'Primo Schincariol'),
(492, 1, NULL, 'Privatbrauerei Bosch'),
(493, 1, NULL, 'Private LandBrasserie Schönram'),
(494, 11, NULL, 'Purity Brasserie Co'),
(495, 9, NULL, 'Ratz'),
(496, 9, NULL, 'Brasserie Georges'),
(497, 15, NULL, 'Revelation Cat Brasserie'),
(498, 11, NULL, 'Robinsons'),
(499, 2, 10, 'Rodenbach'),
(500, 3, NULL, 'Rogue'),
(501, 1, NULL, 'Rothaus'),
(502, 15, NULL, 'Rurale'),
(503, 3, NULL, 'Russian River Brasserie co.'),
(504, 11, NULL, 'RW Randalls Brasserie'),
(505, 15, NULL, 'S.p.A. Birra Peroni'),
(506, 33, NULL, 'SABMiller'),
(507, 34, NULL, 'Sagres'),
(508, 9, NULL, 'Sainte Crucienne'),
(509, 11, NULL, 'Salopian Brasserie'),
(510, 3, NULL, 'Samuel Adams'),
(511, 18, NULL, 'Sapporo'),
(512, 4, NULL, 'Scheldebrouwerij'),
(513, 35, NULL, 'Schloss Eggenberg'),
(514, 9, NULL, 'Science Infuse'),
(515, 11, NULL, 'Shepherd Neame'),
(516, 3, NULL, 'Short\'s Brew'),
(517, 3, NULL, 'Sierra Nevada Brasserie Co.'),
(518, 2, NULL, 'Sint Canarus'),
(519, 11, NULL, 'Siren'),
(520, 3, NULL, 'Sixpoint Brasserie'),
(521, 2, NULL, 'Slagmuylder'),
(522, 3, NULL, 'Smuttynose Brasserie co.'),
(523, 3, NULL, 'Southern Tier Brasserie'),
(524, 31, NULL, 'Spendrups'),
(525, 11, NULL, 'St Austell'),
(526, 1, NULL, 'St Erhard/Rittmayer'),
(527, 2, NULL, 'St Hélène'),
(528, 2, NULL, 'St Monon'),
(529, 11, NULL, 'St Peter\'s Brasserie'),
(530, 9, NULL, 'St Rieul'),
(531, 35, NULL, 'Stift Engelszell'),
(532, 3, NULL, 'Stone Brasserie co.'),
(533, 1, NULL, 'Störtebeker'),
(534, 2, NULL, 'Strubbe'),
(535, 1, NULL, 'Stuttgarter Hofbräu'),
(536, 34, NULL, 'Super Bock'),
(537, 9, NULL, 'Super U'),
(538, 36, NULL, 'Tanzania breweries'),
(539, 16, NULL, 'Tarraco Beer/Ca l\'Arenys'),
(540, 9, NULL, 'Terre de Solan'),
(541, 11, NULL, 'The Five Points'),
(542, 11, NULL, 'The Kernel'),
(543, 1, NULL, 'The Monarchy'),
(544, 2, NULL, 'The Musketeers/De Proef Brasserie'),
(545, 11, NULL, 'Theakston'),
(546, 11, NULL, 'Thornbridge'),
(547, 11, NULL, 'Three Tuns'),
(548, 11, NULL, 'Thwaites'),
(549, 11, NULL, 'Time and Tide'),
(550, 2, NULL, 'Timmermans'),
(551, 11, NULL, 'Tirril'),
(552, 7, NULL, 'To Øl/De Proef Brasserie'),
(553, 15, NULL, 'Toccalmatto'),
(554, 11, NULL, 'Traquair House'),
(555, 9, NULL, 'Tri Martolod'),
(556, 3, NULL, 'Tröegs Brasserie co.'),
(557, 13, NULL, 'Trou du Diable'),
(558, 1, NULL, 'Uerige Obergärige HausBrasserie'),
(559, 13, NULL, 'Unibroue'),
(560, 9, NULL, 'Vallée du Giffre'),
(561, 2, NULL, 'Van den Bosshe'),
(562, 2, NULL, 'Van Eecke'),
(563, 2, NULL, 'Van Honsebrouck'),
(564, 2, NULL, 'Van Steenberge'),
(565, 2, NULL, 'Van Viven/De Proef Brasserie'),
(566, 2, NULL, 'Verhaeghe-Vichte'),
(567, 2, NULL, 'Verzet/De Ranke'),
(568, 1, NULL, 'Warsteiner'),
(569, 1, NULL, 'Weihenstephaner'),
(570, 11, NULL, 'Weird Beard'),
(571, 11, NULL, 'Wells'),
(572, 3, NULL, 'Westbrook'),
(573, 3, NULL, 'Weyerbacher'),
(574, 15, NULL, 'White Pony'),
(575, 11, NULL, 'William Worthington’s '),
(576, 11, NULL, 'Williams Bros'),
(577, 11, NULL, 'Windsor & Eton'),
(578, 11, NULL, 'Wychwood'),
(579, 11, NULL, 'Young');

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
-- Index pour la table `marque`
--
ALTER TABLE `marque`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5A6F91CEA6E44244` (`pays_id`),
  ADD KEY `IDX_5A6F91CEB5D2F5B9` (`fabricants_id`);

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
-- AUTO_INCREMENT pour la table `marque`
--
ALTER TABLE `marque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=580;

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
-- Contraintes pour la table `marque`
--
ALTER TABLE `marque`
  ADD CONSTRAINT `FK_5A6F91CEA6E44244` FOREIGN KEY (`pays_id`) REFERENCES `pays` (`id`),
  ADD CONSTRAINT `FK_5A6F91CEB5D2F5B9` FOREIGN KEY (`fabricants_id`) REFERENCES `fabricant` (`id`);

--
-- Contraintes pour la table `pays`
--
ALTER TABLE `pays`
  ADD CONSTRAINT `FK_349F3CAE298246F6` FOREIGN KEY (`continents_id`) REFERENCES `continent` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
