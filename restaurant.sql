-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 02 jan. 2023 à 23:02
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `restaurant`
--

-- --------------------------------------------------------

--
-- Structure de la table `combinaison`
--

DROP TABLE IF EXISTS `combinaison`;
CREATE TABLE IF NOT EXISTS `combinaison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idLegume` varchar(255) NOT NULL,
  `nameLegume` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20536 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `combinaison`
--

INSERT INTO `combinaison` (`id`, `idLegume`, `nameLegume`) VALUES
(40, 'PL-0004', 'Courgette'),
(41, 'PL-0004', 'Chou-Fleur'),
(42, 'PL-0004', 'Oignon'),
(43, 'PL-0004', 'Pomme de Terre'),
(44, 'PL-0004', 'Piment '),
(45, 'PL-0005', 'Oignon'),
(46, 'PL-0005', 'blanc de poulet'),
(47, 'PL-0005', 'crème fraiche'),
(48, 'PL-0005', 'curry'),
(49, 'PL-0005', 'poivre'),
(50, 'PL-0006', 'Carotte'),
(51, 'PL-0006', 'Chou-Fleur'),
(52, 'PL-0006', 'Courgette'),
(56, 'PL-0001', 'Carotte'),
(57, 'PL-0001', 'Courgette'),
(58, 'PL-0001', 'Chou-Fleur'),
(63, 'PL-0019', 'Oignon'),
(64, 'PL-0019', 'Pomme de Terre'),
(65, 'PL-0019', 'Ail'),
(66, 'PL-0019', 'huile'),
(67, 'PL-0018', 'Ail'),
(68, 'PL-0018', 'bouillon de légumes'),
(69, 'PL-0018', 'filet de porc'),
(70, 'PL-0018', 'Huile d\'olive'),
(71, 'PL-0018', 'poivre'),
(72, 'PL-0007', 'Poireau'),
(73, 'PL-0007', 'Crème fraiche'),
(74, 'PL-0007', 'curry'),
(75, 'PL-0007', 'huile'),
(76, 'PL-0007', 'poivre'),
(77, 'PL-0008', 'Carotte'),
(78, 'PL-0008', 'Courgette'),
(79, 'PL-0008', 'Oignon'),
(80, 'PL-0008', 'Pomme de Terre'),
(81, 'PL-0008', 'cuisses de poulet'),
(82, 'PL-0008', 'Tomate'),
(83, 'PL-0009', 'Oignon'),
(84, 'PL-0009', 'Ail'),
(85, 'PL-0009', 'Boeuf haché'),
(86, 'PL-0009', 'Chili en poudre'),
(87, 'PL-0009', 'cumin'),
(94, 'PL-0017', 'Carotte'),
(95, 'PL-0017', 'Courgette'),
(96, 'PL-0017', 'Chou-Fleur'),
(97, 'PL-0017', 'Oignon'),
(20430, 'PL-0013', 'Courgette'),
(20431, 'PL-0013', 'Oignon'),
(20432, 'PL-0013', 'Pomme de Terre'),
(20471, 'PL-0002', 'Carotte'),
(20472, 'PL-0002', 'Courgette'),
(20473, 'PL-0002', 'Pomme de Terre'),
(20480, 'PL-0014', 'Carotte'),
(20481, 'PL-0014', 'Courgette'),
(20482, 'PL-0014', 'Chou-Fleur'),
(20483, 'PL-0014', 'Poivron Jaune'),
(20492, 'PL-0020', 'Basilic'),
(20493, 'PL-0020', 'herbes de Provence'),
(20494, 'PL-0020', 'saumon'),
(20495, 'PL-0020', 'Tomate'),
(20511, '', 'Carotte'),
(20512, '', 'Courgette'),
(20513, '', 'Chou-Fleur'),
(20532, 'PL-0003', 'Courgette'),
(20533, 'PL-0003', 'Chou-Fleur'),
(20534, 'PL-0003', 'Oignon'),
(20535, 'PL-0003', 'Pomme de Terre');

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `namelegume` varchar(255) NOT NULL,
  `imageUrl` varchar(10000) NOT NULL,
  `isSelected` tinyint(4) NOT NULL,
  `vitamines` varchar(255) NOT NULL,
  `categorie` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ingredients`
--

INSERT INTO `ingredients` (`id`, `namelegume`, `imageUrl`, `isSelected`, `vitamines`, `categorie`) VALUES
(1, 'Carotte', 'https://upload.wikimedia.org/wikipedia/commons/b/b5/Carrots_on_Display.jpg', 0, 'A/B1/B2/B6/C', 'légume'),
(2, 'Courgette', 'https://img-3.journaldesfemmes.fr/qCyan5Hu2LMbSGDay4UcNbFKvhs=/1500x/smart/a36d3c6e1273430d896ae8d3c2634531/ccmcms-jdf/24762747.jpg', 1, 'A/B1/B2/B6/C', 'légume'),
(3, 'Chou-Fleur', 'https://www.regal.fr/sites/art-de-vivre/files/chou-fleur-recadre_th.jpg', 1, 'A/B1/B2/B6/C', 'légume'),
(4, 'Oignon', 'https://www.gammvert.fr/conseils/sites/default/files/2020-07/Fotolia_71659175_M.jpg', 1, 'A/B1/B2/B6/C', 'légume'),
(5, 'Pomme de Terre', 'https://www.academiedugout.fr/images/16365/1200-auto/fotolia_55292183_subscription_xl-copy.jpg?poix=50&poiy=50', 1, 'A/B1/B2/B6/C', 'légume'),
(6, 'Poivron Jaune', 'https://th.bing.com/th/id/OIP.JzoMTKsa-0eBLX-obJ7R0wHaHb?w=196&h=197&c=7&r=0&o=5&dpr=1.5&pid=1.7', 0, 'A/B2/B6/C/E', 'légume'),
(7, 'Brocoli', 'https://th.bing.com/th/id/OIP.wvk-5wxHt6LsSo17pVJTxwHaHa?w=198&h=199&c=7&r=0&o=5&dpr=1.5&pid=1.7', 0, 'A/B1/B2/B6/C', 'légume'),
(8, 'Aubergine', 'https://th.bing.com/th/id/R.2ad3dbfc6b06a9f764092a8f6c624106?rik=mhpo6ubBDWZz6w&pid=ImgRaw&r=0', 0, 'B6/C/K', 'légume'),
(9, 'Patate Douce', 'https://img-3.journaldesfemmes.fr/piPuHqTLjnV8g2YPsgYMGwtU8k8=/1500x/smart/fa49335ab7c04ca9ae986cec7fce5f18/ccmcms-jdf/11435522.jpg', 0, 'B1/B2/B3/B5/B6/B9/E/K1', 'légume'),
(10, 'Piment ', 'https://th.bing.com/th/id/OIP.1s4Tn_dwpYl9UO7LQX-9IgHaE8?w=273&h=182&c=7&r=0&o=5&dpr=1.5&pid=1.7', 0, 'B6/C/K', 'légume'),
(11, 'Petit Pois', 'https://th.bing.com/th/id/R.7ce491dc806ccbe5936bd79759744db0?rik=JjQqhk24eyJY%2bw&riu=http%3a%2f%2funjardinalandrevarzec.n.u.f.unblog.fr%2ffiles%2f2014%2f07%2fbocaux-de-petits-pois.jpg&ehk=fucrD95cL%2bimwnDl2IVkxaKLaRWho4TsWZWqFV2QphQ%3d&risl=&pid=ImgRaw&', 0, 'A/B1/B2/B6/C', 'légume'),
(12, 'Courge', 'https://th.bing.com/th/id/OIP.zmRAQFon_PzC62nx9g35MwHaHa?w=181&h=182&c=7&r=0&o=5&dpr=1.5&pid=1.7', 0, 'B1/B2/B3/B5/B6/B9/C/E/K1', 'légume'),
(13, 'Radis', 'https://th.bing.com/th/id/OIP.HuDfKlvgkP4jPWfHiazIcQHaE8?w=285&h=190&c=7&r=0&o=5&dpr=1.5&pid=1.7', 0, 'A/B1/B2/B6/C', 'légume'),
(14, 'Poireau', 'https://th.bing.com/th/id/R.d3396c9c5953e975d8f334cd768133e2?rik=PAxAaQ9MdOC2hg&pid=ImgRaw&r=0', 0, 'B9/C/K1', 'légume'),
(15, 'Ail', 'https://th.bing.com/th/id/OIP.OMK1SI_WtqbLvzCadkhtSAHaEK?w=289&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, 'B6/B12/C', 'légume'),
(17, 'Basilic', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSefEQ2qF3T7TafBz9kT0ZTR9E04A_fRI8nolWTrbEJ0PSimCf4In8p9l3HJ1zb7-ugE_Y&usqp=CAU', 0, 'A/B/C/K', 'légume'),
(18, 'beurre', 'https://th.bing.com/th/id/OIP.BFoM2agIye5qLfMxUJYtJAHaE7?w=272&h=181&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'sauce'),
(19, 'blanc de poulet', 'https://th.bing.com/th/id/OIP.c9M3nmIS2AZo254ekl5dKAHaE8?w=306&h=204&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'viande'),
(20, 'Veau', 'https://th.bing.com/th/id/OIP.VFwjoGpaQMsLFH7_bNKlbQHaE7?w=253&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, 'A', 'viande'),
(21, 'Boeuf', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQaaU5C2QEo425B4xAdjEndA5Cj3OrRqVmGA&usqp=CAU', 0, 'B1/B2/B3', 'viande'),
(22, 'Boeuf haché', 'https://th.bing.com/th/id/OIP.IMYtYkyQ9GIWygRXMlstdAHaHa?w=163&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, 'A', 'viande'),
(23, 'Bouillon de boeuf', 'https://th.bing.com/th/id/OIP.3EsFUIYyF3xE3bwqsQUs-gAAAA?w=205&h=205&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, 'A', 'sauce'),
(24, 'bouillon de légumes', 'https://th.bing.com/th/id/OIP.G1puXNFjQHfO5RNjOZYNHgHaHa?w=156&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'sauce'),
(25, 'bouillon de poulet', 'https://th.bing.com/th/id/OIP.4ZsHSdSne7i3n7lOArgR8gHaIa?w=179&h=203&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'sauce'),
(27, 'cannelle', 'https://th.bing.com/th/id/OIP.5_kIgfQdwZneODckZdCCwwHaE6?w=248&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'épice'),
(28, 'champignon', 'https://th.bing.com/th/id/OIP.T4pvigA0kDN_CnoQpvQruwHaHa?w=184&h=184&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'légume'),
(29, 'Chili en poudre', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOBVLXoXRiu4JzflKsnvuBipYxYTOKbxLUPXwlYpMI3vuZMrRc1GBqlKaa20-PM-rRtH8&usqp=CAU', 0, 'A/B/C/D/E/K', 'épice'),
(30, 'citron', 'https://th.bing.com/th/id/OIP.FvDkJ0tRSvyLKPCNW4hFXQHaHa?w=180&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'légume'),
(31, 'concentré de tomates', 'https://th.bing.com/th/id/OIP.gV_YGBrkf4OMPyYMToaMCAHaGU?w=251&h=214&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'sauce'),
(32, 'Crème fraiche', 'https://www.picard.fr/dw/image/v2/AAHV_PRD/on/demandware.static/-/Sites-catalog-picard/default/dw3dfdd39d/produits/000000000000043603_E.jpg?sw=672&sh=392', 0, 'A', 'sauce'),
(35, 'crème liquide', 'https://th.bing.com/th/id/OIP.MkExY12Dpf1q4VXX4hi0FAAAAA?w=135&h=200&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'sauce'),
(36, 'cuisse de canard', 'https://th.bing.com/th/id/OIP.E57njqfB54lZ1mq9o_DDggHaE7?w=263&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'viande'),
(37, 'cuisses de poulet', 'https://th.bing.com/th/id/OIP.0owuIqtOFYpfyDp6oUHu6gHaE8?w=270&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'viande'),
(38, 'cumin', 'https://th.bing.com/th/id/OIP.gIm1CdH8NrTWHL61g8dtMAHaHa?w=188&h=188&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'épice'),
(39, 'curry', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZFh8zrn0HlqUh5KPQrDKmnIKn-Wvs2HNsXw&usqp=CAU', 0, '', 'épice'),
(40, 'echalote', 'data:image/jpeg;base64,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', 0, '/A/B/C', 'légume'),
(41, 'épices tajine', 'https://th.bing.com/th/id/OIP.4jc3_ppaOhw5C9iopaj5xQHaFj?w=287&h=216&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'épice'),
(42, 'escalope de dinde', 'https://th.bing.com/th/id/OIP.puabs9Xqs1lRliFzUY070wHaE1?w=284&h=185&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'viande'),
(43, 'feuille de laurier', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAsJCQcJCQcJCQkJCwkJCQkJCQsJCwsMCwsLDA0QDBEODQ4MEhkSJRodJR0ZHxwpKRYlNzU2GioyPi0pMBk7IRP/2wBDAQcICAsJCxULCxUsHRkdLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCz/wAARCADYAYgDASIAAhEB', 0, '', 'légume'),
(44, 'filet de porc', 'https://th.bing.com/th/id/OIP.zbXPYWPxemvjO8grzab8KwHaHa?w=171&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'viande'),
(45, 'haricots rouges', 'https://th.bing.com/th/id/OIP.FWN0PvQ1UM4sFTSvDfy0rAHaEi?w=262&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'légume'),
(46, 'herbes de Provence', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEuCZRkUFuLfcTBJyQpMcB-Cma0jHX4Ko2hg&usqp=CAU', 0, '/C/B9/B6/B12', 'épice'),
(47, 'huile', 'https://th.bing.com/th/id/OIP.b69pfQDZR-jcz1Pl4ZF_TgHaFj?w=240&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'sauce'),
(49, 'Huile d\'olive', 'https://img-3.journaldesfemmes.fr/yE_y4l5mfh0QlCyfVFhAKbR6tpc=/1500x/smart/7ed5d5f5be77447d90f8b879c6a3d331/ccmcms-jdf/15960434.jpg', 0, 'E/K/D/A', 'sauce'),
(50, 'lardons', 'https://th.bing.com/th/id/OIP.J1dX7N68iqY9EKDQcRuPlAHaE8?w=268&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'viande'),
(52, 'miel', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAsJCQcJCQcJCQkJCwkJCQkJCQsJCwsMCwsLDA0QDBEODQ4MEhkSJRodJR0ZHxwpKRYlNzU2GioyPi0pMBk7IRP/2wBDAQcICAsJCxULCxUsHRkdLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCz/wAARCADYASMDASIAAhEB', 0, '', 'sauce'),
(53, 'moutard', 'https://th.bing.com/th/id/OIP.lyg9kry6akI9V46O5KTvewHaEo?w=279&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'sauce'),
(54, 'muscade', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAsJCQcJCQcJCQkJCwkJCQkJCQsJCwsMCwsLDA0QDBEODQ4MEhkSJRodJR0ZHxwpKRYlNzU2GioyPi0pMBk7IRP/2wBDAQcICAsJCxULCxUsHRkdLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCz/wAARCADYAYIDASIAAhEB', 0, '', 'épice'),
(55, 'olives', 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wBDAAsJCQcJCQcJCQkJCwkJCQkJCQsJCwsMCwsLDA0QDBEODQ4MEhkSJRodJR0ZHxwpKRYlNzU2GioyPi0pMBk7IRP/2wBDAQcICAsJCxULCxUsHRkdLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCwsLCz/wAARCADhAMgDASIAAhEB', 0, '', 'légume'),
(56, 'origan', 'https://th.bing.com/th/id/OIP.sQbyMH2VhCoo3-vXsyGVMQHaEo?w=290&h=181&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'légume'),
(57, 'paprika', 'https://th.bing.com/th/id/OIP.8vzG1ZBIGee2e4xMiyQLbQHaEK?w=278&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'épice'),
(58, 'saumon', 'https://th.bing.com/th/id/OIP.Do5zbE3cn8OIQwNO57CX5AHaD-?w=309&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'viande'),
(60, 'poivre', 'https://th.bing.com/th/id/OIP.RwStGtwxvcmd13jhZLlVTgHaD4?w=307&h=180&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'épice'),
(61, 'potimarron', 'https://th.bing.com/th/id/OIP.3I4UWlQGQAoA0ShsIvjJ1QHaHa?w=187&h=187&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'légume'),
(62, 'soja', 'https://th.bing.com/th?q=Sauce+Soja+Maison&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.2&pid=InlineBlock&mkt=fr-FR&cc=FR&setlang=fr&adlt=strict&t=1&mw=247', 0, '', 'sauce'),
(63, 'Tomate', 'https://img.passeportsante.net/1200x675/2021-05-03/i102192-tomate-nu.webp', 0, '', 'légume'),
(64, 'vin blanc', 'https://th.bing.com/th/id/OIP.oSBQyV3Lckg5s4UMfg-mmwHaJ4?w=146&h=194&c=7&r=0&o=5&dpr=1.2&pid=1.7', 0, '', 'sauce');

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

DROP TABLE IF EXISTS `recette`;
CREATE TABLE IF NOT EXISTS `recette` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `imgUrl` varchar(10000) NOT NULL,
  `ingredients` varchar(1000) NOT NULL,
  `details` varchar(4000) NOT NULL,
  `idLegume` varchar(255) NOT NULL,
  `note` int(11) NOT NULL,
  `commentaire` varchar(4000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `recette`
--

INSERT INTO `recette` (`id`, `name`, `imgUrl`, `ingredients`, `details`, `idLegume`, `note`, `commentaire`) VALUES
(1, 'Wok au chou-fleur', 'https://www.archanaskitchen.com/imgcache/images/archanaskitchen/1-Author/nithya.anantham/Soya_Chunks_Burji_Recipe_800x640.jpg', '1/x 400g de Chou-fleur/1/Carottes/\r\n2/Courgette/\r\n1.5/x 100g de Filet d\'huile d\'olive/\r\n1/c-a-s pincée Paprika/\r\n1/c-a-s/Brins de menthe', 'Lavez et détaillez le chou-fleur en sommités et la courgette en rondelles/ Épluchez et coupez les carottes en rondelles/\r\nFaites cuire les légumes à la vapeur, 15 min pour les carottes et 10 min pour les courgettes et le chou-fleur/\r\nDans un wok, faites vous servir', 'PL-0001', 0, ''),
(2, 'RIZ DE CHOU FLEUR SAUTÉ', 'https://i0.wp.com/freethepickle.fr/wp-content/uploads/2019/03/Riz-chou-fleur-saut%C3%A9-2-of-5.jpg?w=2400&ssl=1', '0.5/de chou fleur en riz/\r\n2/gousses d’ail hachées/\r\n2/c-à-s d’huile de sésame/\r\n2/belles carottes coupées en petites rondelles/\r\n3/fleurets de brocolis cassés en petits morceaux avec les mains/\r\n1/oignon nouveau en rondelles/\r\n2/oeufs battus (optionnel)', 'Laver le chou fleur et séparer des fleurets pour obtenir 400g/\r\nRâper les fleurets à l’aide du “gros” côté de la rape/ Ca marche aussi très bien avec un robot de cuisine, et c’est moins fatiguant… Réserver/\r\nDans un bol, mélanger la sauce soja', 'PL-0002', 0, ''),
(3, 'Blanquette de veauhdthfgdh', 'https://www.cuisineactuelle.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcac.2F2020.2F12.2F01.2F600ca031-269c-46a0-b28f-c74eb9aa0bdc.2Ejpeg/750x562/quality/80/crop-from/center/cr/wqkgQmVyZ2Vyb24gLyBQaG90b2N1aXNpbmUgLyBDdWlzaW5lIEFjdHVlbGxl/focus-point/1632%2C2216/blanquette-de-veau.jpeg', '0.5/carotte/\r\n0.25/oignon jaune/\r\n0.25/de champignon/\r\n0.25/de créme fraiche/\r\n0.5/citron/\r\n1/x 100g de farine/\r\n6.5/ cl de vin blanc/\r\n0.25/sel/\r\n0.25/poivre/\r\n1.4/cl de blanquette de veau/\r\n0.25/cube de bouillon de légumes/\r\n0.25/bouillon de poule', 'Faire revenir la viande dans un peu de beurre doux jusqu\'à ce que les morceaux soient un peu dorés/Saupoudrer de 2 cuillères de farine. Bien remuer/Ajouter 2 ou 3 verres d\'eau, les cubes de bouillon, le vin et remuer. Ajouter de l\'eau si nécessaire pour couvrir/Couper les carottes en rondelles et émincer les oignons puis les incorporer à la viande, ainsi que les champignons/Laisser mijoter à feu très doux environ 1h30 à 2h00 en remuant/Si nécessaire, ajouter de l\'eau de temps en temps/Dans un bol, bien mélanger la crème fraîche, le jaune d’oeuf et le jus de citron/ Ajouter ce mélange au dernier moment, bien remuer et servir tout de suite', 'PL-0003', 0, ''),
(4, 'Parmentier de confit de canard', 'https://assets.afcdn.com/recipe/20221004/135706_w1000h1499c1cx683cy1487cxb1414cyb2119.webp', '0.5/oignons/\r\n2.5/pommes de terre/\r\n0.5/de créme fraiche/\r\n1/x 25 cl de lait/\r\n1/x 25 cl de eau/\r\n0.25/ de muscade/\r\n0.25/sel/\r\n0.25/poivre/\r\n1/cuisse de canard confites/\r\n0.5/echalote', 'Lavez et épluchez les pommes de terre, et mettez-les à cuire dans un grand volume d\'eau salée/Réchauffez les cuisses de canard au bain-marie pour les extraire de leur graisse/Conservez une cuillère à soupe de graisse de canard/Découpez et hachez grossièrement les cuisses confites/Emincer les échalotes et les oignons/Dans une large poêle ou une sauteuse, faites blondir les oignons et les échalotes hachés dans la cuillère à soupe de graisse de canard, à feu très doux/Lorsque ce mélange oignons + échalotes est bien blond, ajoutez le hachis de canard et mettez à feu vif, en mélangeant vivement, pendant 5 minutes. Le hachis de canard doit être finement grillé en surface, mais rester moelleux/Réservez hors du feu/Ecrasez vos pommes de terre à la fourchette et faites une purée moelleuse en ajoutant 50 % d\'eau et 50 % de lait/Salez, poivrez, ajoutez une pincée de muscade et la crème fraîche/Préchauffez le four à 200°C/Dans un plat suffisamment haut, étalez la moitié de votre hachis de canard/Mélangez la moitié qui reste avec le même volume de purée, et étalez cette deuxième couche sur la première. Finissez par une troisième couche de purée/Striez le sommet de votre purée avec le dos d\'une fourchette/Laissez cuire à four chaud (200°C) pendant 25 min. Vous pouvez également finir la cuisson 3 minutes sous le gril pour obtenir un joli gratiné', 'PL-0004', 0, ''),
(5, 'Poulet curry et oignons facile', 'https://assets.afcdn.com/recipe/20191204/103407_w1024h1024c1cx1961cy3561.webp', '0.5/oignon jaune/\r\n1/x c-a-s de curry/\r\n1/x c-a-s de cumin/\r\n1/x c-a-s de piment/\r\n1/x c-a-s de poivre/\r\n0.25/sel/\r\n1/blanc de poulet/\r\n0.25/de créme fraiche allégée', 'Mettre une grande poêle à chauffer. Couper les oignons en petits morceaux, et les faire cuire à feu assez fort/Remuer, en ajoutant du curry et du cumin/Couper les blancs de poulet en morceaux, les ajouter dans la poêle et remettre des épices; tourner/Baisser le feu, et ajouter 2 cuillères à soupe de crème/Après 5 min de cuisson, remettre 2 cuillères à soupe de crème et des épices/remettre un peu de crème au moment de réchauffer car la sauce s\'évapore', 'PL-0005', 0, ''),
(6, 'Gratin de courge butternut\r\n', 'https://www.regal.fr/sites/art-de-vivre/files/r61_fiche-gratin-de-courge-fromage_ss.jpg', '0.5/x c-a-c de pignon de pin/\r\n0.5/x c-a-c de poivre/\r\n0.5/x c-a-c de sel/\r\n0.5/x c-a-c de muscade/\r\n1/parmesan râpé à votre goût/\r\n0.25/courge de butternut/\r\n1/x 50g de poitrine fumée/\r\n0.5/x c-a-c de herbes hachées/\r\n1/x 5cl de créme liquide', 'Couper la butternut en cubes de 3 cm environ, et éplucher ensuite les morceaux/Cuire les morceaux 5 mn à la vapeur ou dans un fond d\'eau non salée. Les morceaux doivent être tendres, mais ne pas s\'effondrer/Pendant la cuisson, hacher grossièrement la poitrine fumée/Disposer les morceaux de courge et de poitrine dans un plat à gratin, en mélangeant délicatement /Parsemer d\'herbes hachées et de pignons de pin à votre goût/Assaisonner de noix de muscade et de poivre. Saler très légèrement, car la poitrine fumée est déjà salée/Verser une lichette de crème liquide/saupoudrer de parmesan râpé/Enfourner 20 mn environ dans un four préchauffé à 210°C', 'PL-0006', 0, ''),
(7, 'Pavé de saumon sur son lit de poireaux', 'https://www.cuisineactuelle.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcac.2F2018.2F09.2F25.2F4ce3a9a4-fff0-46cc-9336-60eefe67de24.2Ejpeg/750x562/quality/80/crop-from/center/cr/wqkgQW1pZWwvU3VjcsOpIHNhbMOpIC8gQ3Vpc2luZSBBY3R1ZWxsZQ%3D%3D/pave-de-saumon-et-poireaux.jpeg', '1/poireau/\r\n0.25/poivre/\r\n0.25/sel/\r\n1/x 5cl de huile/\r\n1/ c-a-s de curry/\r\n1/ pavé de saumon/\r\n1/x 5cl de créme fraiche épaisse', 'Laver les poireaux et les couper en rondelles/Faire fondre les poireaux dans une poêle avec l\'huile, couvercle fermé, pour ne pas qu\'ils grillent (environ 15 min)/Avant la fin de la cuisson, ajouter sel poivre et curry à sa guise/Disposer ensuite ces poireaux dans un plat allant au four, les recouvrir des pavés de saumon, que l\'on peut poivrer si l\'on aime, et recouvrir le tout de crème fraîche/Fermer le plat le plus hermétiquement possible avec un papier d\'aluminium, et mettre au four à thermostat 6-7 (180°C/190°C), pendant environ 20 min, selon la grosseur du saumon', 'PL-0007', 0, ''),
(8, 'Tajine de poulet\r\n', 'https://img.cuisineaz.com/660x660/2013/12/20/i79008-photo-de-tajine-de-poulet-aux-epices.jpeg', '0.5/courgette/\r\n0.75/pomme de terre/\r\n0.5/carotte/\r\n0.5/tomate/\r\n0.25/oigon/\r\n1/x c-a-c de cumin/\r\n0.25/ c-a-c d\'huile d\'olive/\r\n0.75/x c-a-s eau:/\r\n4/cuisses de poulet/\r\n0.25/x c-a-s épices pour tajine/', 'Faire revenir le poulet à feu moyen pour qu\'il soit un peu doré/Pendant ce temps, peler et couper les légumes : couper les carottes en 2 , puis dans le sens de la longueur. Idem pour les courgettes. Couper les oignons en lamelles et les pommes de terres en 4/Mettre les légumes avec le poulet, rajouter les épices à tajine et le cumin. Mettez également un peu d\'eau/Laisser cuire environ 1 heure', 'PL-0008', 0, ''),
(9, 'Chili con carne facile', 'https://assets.afcdn.com/recipe/20211222/126214_w1024h576c1cx1124cy721.webp', '12.5/ g de beurre/0.5/oignon/0.5/ d\'ail écrasées/125/g de boeuf haché/0.25/ c-a-c de chili en poudre/0.5/c-a-c de cumin en poudre/16.5/g de concentré de tomates/0.25/ grosse boite de haricots rouges égouttés/7.5/cl de bouillon de boeuf/0.25/ c-a-c de sel/0.25/ c-a-c de poivre/', 'Préchauffer le four à 180°C/Hacher l\'oignon et l\'ail/Dans une cocotte en fonte, faire fondre le beurre, et ensuite dorer doucement l\'oignon et l’ail/Incorporer le boeuf haché et laisser cuire doucement 10 min/Mélanger le chili, le cumin, le concentré de tomates, et incorporer le tout au boeuf. Ajouter les haricots, le bouillon, du sel et du poivre/Couvrir et cuire 25 min au four', 'PL-0009', 0, ''),
(10, 'Tourte au poulet, champignons et lardons\r\n', 'https://www.papillesetpupilles.fr/wp-content/uploads/2021/03/Pie-ouvert-horizontal.jpg', '62.5/g de champignon/19/g de lardons/0.25/ c-a-s de curry/2/ paquets de pâte brisée/400/g de blanc de poulet/0.5/ cube de Volaille/20/ cl de créme liquide/', 'Étaler la pâte dans un moule à manqué ou à tarte en faisant déborder pour le rabat final/Couper le poulet, le lard et les champignons et faire revenir le tout dans du beurre 5 mn/jouter le cube de volaille, le curry, la crème, sel et poivre et bien mélanger/Verser dans le moule/Étaler la 2ème pâte et couvrir. Bien souder les bords et badigeonner le dessus avec un jaune d\'oeuf/Cuire Th 6 - 1/2 h', 'PL-0010', 0, ''),
(11, 'Tournedos de bœuf au Boursin\r\n', 'https://assets.afcdn.com/recipe/20220322/130247_w1024h576c1cx1060cy707.jpg', '0.25/ de beurre/1/ c-a-c de fond de veau désyhdraté/1/ filet de boeuf/0.25/boursin/5/ cl de créme liquide/', 'Péparer la sauce : dans une casserole mettre 4 cuillères à café de fond de veau, ajoutez une petite tasse d\'eau et mettre sur le feu/Mélanger à l\'aide d\'une cuillère en bois, jusqu\'à obtenir un mélange homogène et lisse. Ajouter la moitié du boursin et remuer jusqu\'à ce qu\'il soit complètement fondu/Incorporer 20 cl de crème liquide et réserver au chaud/Faites fondre une noisette de beurre dans une poêle, saisir les tournedos, saler, poivrer. Servir accompagné d\'une julienne de légumes. Napper la viande de sauce', 'PL-0011', 0, ''),
(12, 'Soupe veloutée de potimarron et pommes de terre\r\n', 'https://img.cuisineaz.com/660x660/2017/06/22/i129492-soupe-au-potiron-et-aux-pommes-de-terre.jpeg', '0.5/pomme de terre/0.5/oignon hachés/0.75/ gousse d\'ail hachées/2.5/ cl de créme fraiche/0.25/ c-a-c de curry/0.25/ de muscade/0.25/feuille de laurier/0.25/ c-a-c de sel/0.25/ c-a-c de poivre/0.25/potimarron/0.25/cube de bouillon de poule/', 'Enlever l\'écorce et les pépins du potimarron (il n\'est pas obligatoire de le peler, mais dans ce cas, le choisir bio et bien le laver) puis couper la chair en gros morceaux/Eplucher les pommes de terre puis les couper en gros morceaux/Faire revenir les oignons et l\'ail hachés dans un peu de beurre à feu doux/Ajouter les pommes de terre et le potimarron, faire revenir 5 min/Couvrir le tout d\'eau, ajouter le bouillon de poule (émietté), le curry, la muscade, la feuille de laurier et laisser mijoter environ 30 min à feu doux/Lorsque les légumes sont cuits (vérifier à l\'aide d\'un couteau), mixer votre préparation/Vérifier l\'assaisonnement, saler, poivrer selon votre goût puis ajouter la crème fraîche et laisser mijoter encore 2 ou 3 min', 'PL-0012', 0, ''),
(13, 'Courgettes farcies à la ricotta et aux lardons\r\n', 'https://assets.afcdn.com/recipe/20160926/1255_w1024h1024c1cx1872cy2808.jpg', '1/courgette/150/g de lardons/1/oignon/1/basilic/5/cl huile d\'olive/1/parmesan/400/g de ricotta/', 'Faire revenir les lardons dans une poêle anti-adhésive/Couper les courgettes en deux dans le sens de la longueur. Les évider/Préchauffer le four 200°C/Mélanger la ricotta, l\'huile d\'olive, les lardons, le basilic, l\'oignon/Farcir les courgettes avec cette préparation. Saupoudrer de parmesan/Mettre les courgettes au four pendant 35 mn sur Th 7', 'PL-0013', 0, ''),
(14, 'Lasagnes de courgettes\r\n', 'https://assets.afcdn.com/recipe/20180829/82052_w1024h1024c1cx3608cy2706.jpg', '0.25/kg de courgette/0.25/boite de sauce tomate nature/150/g de boeuf haché/1/gruyère râpé/0.25/oignon/0.25/origan/0.25/basilic/0.25/ c-a-s de herbes de Provence/0.25/ c-a-s de poivre/', 'Lavez et coupez les courgettes sans les peler en rondelles pas trop épaisses. Les faire blanchir 10 min dans l\'eau bouillante, puis les égoutter/Pendant ce temps, mettre de l\'huile d\'olive à chauffer dans une poêle et faire revenir la viande hachée avec un oignon haché finement/Quand la viande est bien cuite rajouter la sauce tomate et toutes les herbes y compris le poivre. laisser mijoter 15 min/Dans un plat à gratin disposer au fond du plat une couche de courgettes puis recouvrir d\'une couche de sauce et de gruyère râpé. Répéter l\'opération jusqu\'à épuisement des ingrédients en terminant toujours par une couche de sauce/Recouvrir alors d\'une épaisse couche de fromage pour faire gratiner/Mettre au four à 240°C pendant 30 à 45 min.', 'PL-0014', 0, ''),
(15, 'Goulash\r\n', 'https://www.recettes-et-terroirs.com/wp-content/uploads/2003/12/goulash-traditionnel.jpg', '125/ g d\'oignon/0.75/ gousse d\'ail/1/bouillon de boeuf/0.75/ c-a-s de paprika doux/0.25/ c-a-s de paprika fort/0.25/ c-a-c de cumin/0.25/ kg de boeuf dans le gite/0.75/ c-a-s de saindoux de beurre/0.25/ c-a-s de marjolaine/', 'Découper la viande en cubes de 5 cm de côté environ. Couper les oignons en fines lamelles. Ecraser les 3 gousses d\'ail/Faire fondre le saindoux ou le beurre à feu doux. Ajouter les oignons et l\'ail et remuer jusqu\'à ce que les oignons prennent une belle couleur dorée/Faire revenir à feu vif les morceaux de viande/Quand ils sont bien revenus, ajouter les oignons, mélanger. Saupoudrer le paprika, mélanger, et mouiller avec le bouillon de boeuf/Ajouter ensuite le cumin et la marjolaine. Saler/Faire mijoter 3 heures au minimum', 'PL-0015', 0, ''),
(16, 'Escalope en papillote', 'https://assets.afcdn.com/recipe/20171206/75850_w1024h1024c1cx1872cy2808.webp', ' 1/ c-a-c de moutard/0.25/c-a-c de paprika/0.25/herbes de provence/1/escalope de dinde/1/ c-a-c de créme fraiche/1/pulpe de tomate/', 'Mélanger la crème fraîche, la moutarde et le paprika/Disposer les escalopes sur un carré de papier alu et les recouvrir du mélange/Entourer les escalopes recouvertes de crème par la pulpe de tomate/Saupoudrer d\'herbes de Provence/Fermer les papillotes et les enfourner à 170°C pendant 30 min environ', 'PL-0016', 0, ''),
(17, 'Emincé de poulet aux épices et au miel', 'https://recettes.de/images/blogs/brian-iz-in-the-kitchen/poulet-au-miel-pain-d-epices-et-abricots-secs.640x480.jpg', '0.3/oignon/8.5/g de beurre/0.3/ c-a-s d\'ail haché/0.3/ c-a-s de cannelle/0.6/ c-a-s de miel liquide/0.25/poivre/0.25/sel/1/escalope de poulet/1.5/ c-a-s de sauce soja/', 'Coupez l\'oignon en quartiers d\'environ 1 cm de large et séparez les différentes épaisseurs/Détaillez les escalopes en fines lanières/Dans un wok ou une sauteuse à feu très vif faites revenir le poulet dans le beurre/Lorsqu\'il est à peine coloré sur toutes les faces ajoutez l\'huile, l\'oignon, salez et poivrez. Remuez quelques instants puis ajoutez l\'ail puis la cannelle. Arrosez avec 2 cuillères à soupe de sauce soja et mélangez bien. Versez l\'eau et délayez une cuillère à café de miel. Faites réduire à gros bouillons/Servez avec du riz, des nouilles sautées ou des brocolis \'al dente', 'PL-0017', 0, ''),
(18, 'Filet mignon de porc aux courgettes', 'https://www.cuisineactuelle.fr/imgre/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcac.2F2019.2F01.2F17.2Fc6624f0c-63f1-40c8-8e1e-b31b30a9ab2e.2Ejpeg/750x562/quality/80/crop-from/center/cr/wqkgU3R1ZGlvL1N1Y3LDqSBzYWzDqSAvIEN1aXNpbmUgQWN0dWVsbGU%3D/filet-mignon-de-porc-aux-courgettes.jpeg', '0.25/kg de courgette/19/g de raisins secs/0.25/gousse d\'ail/0.25/bouquet garni/0.5/ c-a-s d\'huile d\'olive/7.5/g de beurre/0.2/poivre/0.25/sel/0.75/filet mignon de porc/2.5/cl de bouillon de volaille dégraissé/', 'Eplucher les courgettes. Les couper en tronçons ou en gros bâtonnets de 5cm de longueur/Faire revenir le filet mignon dans une cocotte dans le mélange huile d\'olive et beurre/Lorsqu\'il est bien doré, ajouter les courgettes, l\'ail écrasé, les raisins secs, le bouquet garni et le bouillon de volaille. Saler et poivrer/Bien mélanger, couvrir et laisser cuire 25mn à feu doux/Découper le filet mignon en tranches fines. Le dresser sur un grand plat entouré de la garniture de courgettes et de raisins et le servir avec de la semoule de couscous cuite à la vapeur', 'PL-0018', 0, ''),
(19, 'Tartiflette : la vraie recette\r\n', 'https://img.cuisineaz.com/660x660/2013/12/20/i16509-photo-de-tartiflette.jpeg', '0.25/kg de pomme de terre/50/g d\'oignon émincés/0.25/reblochon/0.5/ c-a-s d\'huile/0.25/ gousse d\'ail/0.25/sel/0.25:poivre/50/kg de lardons fumés', 'Eplucher les pommes de terre, les couper en dés, bien les rincer et les essuyer dans un torchon propre/Faire chauffer l\'huile dans une poêle, y faire fondre les oignons/Lorsque les oignons sont fondus, ajouter les pommes de terre et les faire dorer de tous les côtés/Lorsqu\'elles sont dorées, ajouter les lardons et finir de cuire. Éponger le surplus de gras avec une feuille de papier essuie-tout/Gratter la croûte du reblochon et le couper en deux/Préchauffer le four à 200°C t préparer un plat à gratin en frottant le fond et les bords avec la gousse d\'ail épluchée/Dans le plat à gratin, étaler une couche de pommes de terre aux lardons, disposer dessus la moitié du reblochon, puis de nouveau des pommes de terre. Terminer avec le reste du reblochon/Enfourner pour environ 20 minutes de cuisson', 'PL-0019', 0, ''),
(20, 'Papillote de saumon à la mozzarella\r\n', 'https://assets.afcdn.com/recipe/20141018/28821_w1024h768c1cx360cy235.webp', '1/tomate/0.25/herbes de provence/0.25/basilic/0.25/poivre/0.25/sel/0.25/ c-a-s d\'huile d\'olive/1/gousse d\'ail/1/pavé de saumon/0.5/boule de mozzarella/1/olives noires/', 'Mettre chaque pavé de saumon sur 1 feuille d\'aluminium séparé/Couper les tomates et la mozzarella en fines tranches/Saler et poivrer légèrement le saumon/Disposer sur chaque saumon en alternance : 1 tranche de tomate, puis 1 tranche de mozzarella, puis 1 tranche de tomate, etc/Emincer les olives et les gousses d\'ail, en saupoudrer les 2 pavés de saumon; ajouter un peu de sel, poivre, et saupoudrer d\'herbes/Verser sur chaque pavé de saumon l\'équivalent de 2 cuillères à café d\'huile d\'olive/Refermer chaque aluminium en papillote, et les disposer dans un plat à gratin/Mettre à four chaud 210°C pendant 35 min/Servir avec du riz basmati parfumé et une salade verte/', 'PL-0020', 0, '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
