-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 29 mai 2023 à 21:03
-- Version du serveur : 10.3.38-MariaDB-0+deb10u1
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ott_SAE203`
--

-- --------------------------------------------------------

--
-- Structure de la table `Bougies`
--

CREATE TABLE `Bougies` (
  `id_bougie` int(11) NOT NULL,
  `nom_bougie` varchar(60) NOT NULL,
  `id_senteur` int(11) NOT NULL,
  `id_couleur` int(11) NOT NULL,
  `id_collection` int(11) NOT NULL,
  `prix` int(11) NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Bougies`
--

INSERT INTO `Bougies` (`id_bougie`, `nom_bougie`, `id_senteur`, `id_couleur`, `id_collection`, `prix`, `description`, `image`) VALUES
(1, 'Coton frais', 6, 1, 1, 37, 'Une fragrance aussi fraîche que des draps de coton séchés au soleil et sous le vent, rehaussée par une pointe de fleurs blanches et de citron. \r\n', 'images/1.jpg'),
(2, 'Biscuits sucrés', 3, 1, 8, 38, 'Décorez votre table d\'un magnifique centre de table pour les fêtes — le parfum d\'un gâteau garni de fruits festifs et saupoudré de sucre en poudre et de sucre filé.', 'images/2.jpg'),
(3, 'Jasmin de minuit', 1, 1, 3, 37, 'Un parfum séduisant de jasmin aquatique, de chèvrefeuille doux, de néroli et de fleurs de mandarine.', 'images/3.jpg'),
(4, 'Plage de cocotiers', 5, 1, 4, 38, 'Goût des tropiques — notes chaudes de noix de coco mélangées aux senteurs d’ananas et de vanille. ', 'images/4.jpg'),
(5, 'Cèdre marin', 5, 2, 5, 37, 'Une ballade sur un sentier en forêt juste après la pluie, dont l’air est rempli de notes rafraichissantes de pamplemousse, de fleurs de mandarine et d’ambre chaud.', 'images/5.jpg'),
(6, 'Air de l\'océan', 5, 2, 4, 37, 'Accrochez votre serviette de plage dans la brise fraiche de l’océan après une journée amusante au soleil. Les notes fraiches d’ozone se mêlent aux senteurs de jasmin, d’ambre blanc et de bois de santal.', 'images/6.jpg'),
(7, 'Chalet au bord du lac', 4, 2, 6, 38, 'Une nuit fraiche surplombe les conifères tandis que la lune se reflète sur le lac. ', 'images/7.jpg'),
(8, 'Mélodies du crépuscule', 4, 2, 6, 38, 'Le son de la musique live flottant au crépuscule, amène des parfums de cardamome, d’aigue-marine et des notes boisées.', 'images/8.jpg'),
(9, 'Cerise griotte', 2, 3, 7, 37, 'Un parfum fruité qui capture à la perfection la délicieuse douceur des cerises noires riches et bien mûres.', 'images/9.jpg'),
(10, 'Framboise rouge', 2, 3, 7, 37, 'Acidulé et sucré… Un parfum débordant de délicieuses odeurs de framboises rouges rosées bien mûres. \r\n', 'images/10.jpg'),
(11, 'Cannelle pétillante', 3, 3, 8, 38, 'Un plaisir gourmand hivernal… la chaleur épicée d’un bâton de cannelle des îles avec une touche de clou de girofle.', 'images/11.jpg'),
(12, 'Biscuits roulés à la menthe', 3, 3, 8, 38, 'L\'odeur des biscuits roulés à la menthe faits maison est encore plus douce lorsqu\'ils sont dégustés entre amis et avec la famille. ', 'images/12.jpg'),
(13, 'Sauge et agrumes', 2, 4, 9, 37, 'Un mélange de notes de sauge terreuse, mêlé aux notes luxueuses de talc et du citron-lime, crée une harmonie naturelle.', 'images/13.jpg'),
(14, 'Vanille et citron vert', 2, 4, 13, 37, 'Onctueux et rafraîchissant ...de la vanille crémeuse avec du sucre de canne doux et une touche acidulée de citron vert.', 'images/14.jpg'),
(15, 'Concombre et menthe à l\'eau', 2, 4, 11, 37, 'Profitez du parfum d’une boisson acidulée avec les arômes rafraichissants de concombre, citron et menthe. Parfait pour une journée d’été au parc.', 'images/15.jpg'),
(16, 'Nuit d\'hiver à la belle étoile', 4, 4, 12, 38, 'Levez les yeux vers le ciel étoilé, tandis que des notes de rose, d\'ambre et de musc tourbillonnent dans la fraîcheur de la brise. \r\n', 'images/16.jpg'),
(17, 'Roses fraîchement coupées', 1, 5, 3, 37, 'Un parfum agréablement enivrant, évoquant un jardin à l’anglaise regorgeant de roses odorantes.', 'images/17.jpg'),
(18, 'Baisers glacés', 1, 5, 12, 38, 'Attrapez le baiser glacé d\'un flocon de neige, avec des notes poudrées de violette, de rose et de musc blanc.', 'images/18.jpg'),
(19, 'Ciels aquarelles', 6, 5, 4, 38, 'Un spectre de couleurs apparait dans le ciel, avec les arômes intriguants de cachemire, de jasmin et de musc.', 'images/19.jpg'),
(20, 'Fleurs de cerisiers et vanille', 1, 5, 3, 37, 'Un bol de fleurs de cerisiers ! Parfums de framboises et d’amandes, recouverts de nuages rose-pastel de fleurs de vanille.', 'images/20.jpg'),
(21, 'Gâteau à la vanille', 3, 6, 2, 38, 'L’arôme riche et onctueux des gâteaux à la vanille avec une touche de citron et une abondance de glaçage crémeux.', 'images/21.jpg'),
(22, 'Gaufre banane et caramel', 3, 6, 2, 38, 'Une douceur sucrée aux notes de gaufre fraîche en cône contenant de la glace à la banane et un tourbillon de caramel et de chocolat.', 'images/22.jpg'),
(23, 'Limonade glacée aux fruits rouges', 2, 6, 11, 37, 'Savourez le parfum d’un grand verre froid de limonade rose par une chaude journée d’été. Les notes de sucre au citron sont mélangées aux senteurs de pamplemousse rouge rubis et de pomelo juteux pour créer une boisson rafraichissante.', 'images/23.jpg'),
(24, 'Crépuscule d\'automne', 4, 6, 9, 38, 'Le lieu idéal pour vivre les derniers instants d’un magnifique coucher de soleil d’automne : avec des notes de cèdre, de bois de santal et un soupçon d’arômes d’agrumes gorgés de soleil.', 'images/24.jpg'),
(25, 'Havre de paix', 6, 7, 10, 38, 'Un parfum tout en équilibre, qui appelle au calme. La douceur du jasmin, un soupçon de patchouli et la chaleur du musc ambré.', 'images/25.jpg'),
(26, 'Vanille fumée et cachemire', 6, 7, 10, 38, 'La vanille riche est encore plus attirante avec des notes fumées, enrobée de cachemire doux et d’ambre chaud.', 'images/26.jpg'),
(27, 'Thé noir et citron', 2, 7, 9, 37, 'Une version rafraichissante d’un classique - la fragrance du thé noir sucré avec des parfums de vanille, des notes de musc adouci et enfin une touche de citron.', 'images/27.jpg'),
(28, 'Orchidée sauvage', 1, 8, 3, 37, 'Une escapade dans un paradis tropical luxuriant, composé à la fois de senteurs florales enivrantes et de notes de fruits mûrs et sucrés.', 'images/28.jpg'),
(29, 'Fleurs de lilas', 1, 8, 3, 37, 'Le parfum d’un séduisant bosquet de lavande, et de lilas violets et blancs. ', 'images/29.jpg'),
(30, 'Citron lavande', 2, 8, 13, 37, 'Pur et captivant… un mélange frais et poudré de citron acidulé et de douces fleurs de lavande. ', 'images/30.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `Collections`
--

CREATE TABLE `Collections` (
  `id_collection` int(11) NOT NULL,
  `nom_collection` varchar(60) NOT NULL,
  `id_saison` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Collections`
--

INSERT INTO `Collections` (`id_collection`, `nom_collection`, `id_saison`) VALUES
(1, 'Maison', 1),
(2, 'Nourriture de l\'enfance', 1),
(3, 'Parterre fleuri', 1),
(4, 'Evasion', 2),
(5, 'Sous l\'océan', 3),
(6, 'Aventure', 2),
(7, 'Salade de fruit', 2),
(8, 'Senteurs d\'hiver', 4),
(9, 'Parfum d\'automne', 3),
(10, 'Détente chez soi', 4),
(11, 'Autour de la piscine', 2),
(12, 'Amour d\'hiver', 4),
(13, 'Acidulé', 2);

-- --------------------------------------------------------

--
-- Structure de la table `Couleur`
--

CREATE TABLE `Couleur` (
  `id_couleur` int(11) NOT NULL,
  `couleur` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Couleur`
--

INSERT INTO `Couleur` (`id_couleur`, `couleur`) VALUES
(1, 'blanc'),
(2, 'bleu'),
(3, 'rouge'),
(4, 'vert'),
(5, 'rose'),
(6, 'jaune'),
(7, 'gris'),
(8, 'violet'),
(9, 'marron');

-- --------------------------------------------------------

--
-- Structure de la table `Mail`
--

CREATE TABLE `Mail` (
  `id_mail` int(11) NOT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Mail`
--

INSERT INTO `Mail` (`id_mail`, `email`) VALUES
(2, ' iuvrghyivzerhuvez'),
(3, '     alert(&quot;Hello les MMI !&quot;);  '),
(4, '     alert(&quot;Hello les MMI !&quot;);  ');

-- --------------------------------------------------------

--
-- Structure de la table `Origine`
--

CREATE TABLE `Origine` (
  `id_origine` int(11) NOT NULL,
  `origine` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Origine`
--

INSERT INTO `Origine` (`id_origine`, `origine`) VALUES
(1, 'Pays-Bas'),
(2, 'France'),
(3, 'Allemagne'),
(4, 'Italie');

-- --------------------------------------------------------

--
-- Structure de la table `Panier`
--

CREATE TABLE `Panier` (
  `id_bougie` int(11) NOT NULL,
  `quantite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Panier`
--

INSERT INTO `Panier` (`id_bougie`, `quantite`) VALUES
(12, 1);

-- --------------------------------------------------------

--
-- Structure de la table `Saison`
--

CREATE TABLE `Saison` (
  `id_saison` int(11) NOT NULL,
  `saison` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Saison`
--

INSERT INTO `Saison` (`id_saison`, `saison`) VALUES
(1, 'printemps'),
(2, 'été'),
(3, 'automne'),
(4, 'hiver');

-- --------------------------------------------------------

--
-- Structure de la table `Senteur`
--

CREATE TABLE `Senteur` (
  `id_senteur` int(11) NOT NULL,
  `senteur` varchar(60) NOT NULL,
  `id_origine` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `Senteur`
--

INSERT INTO `Senteur` (`id_senteur`, `senteur`, `id_origine`) VALUES
(1, 'florale', 1),
(2, 'fruitée', 4),
(3, 'gourmande', 2),
(4, 'boisée', 3),
(5, 'marine', 4),
(6, 'propre', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Bougies`
--
ALTER TABLE `Bougies`
  ADD PRIMARY KEY (`id_bougie`) USING BTREE,
  ADD KEY `id_senteur` (`id_senteur`),
  ADD KEY `id_couleur` (`id_couleur`),
  ADD KEY `id_collection` (`id_collection`);

--
-- Index pour la table `Collections`
--
ALTER TABLE `Collections`
  ADD PRIMARY KEY (`id_collection`),
  ADD KEY `id_saison` (`id_saison`);

--
-- Index pour la table `Couleur`
--
ALTER TABLE `Couleur`
  ADD PRIMARY KEY (`id_couleur`);

--
-- Index pour la table `Mail`
--
ALTER TABLE `Mail`
  ADD PRIMARY KEY (`id_mail`);

--
-- Index pour la table `Origine`
--
ALTER TABLE `Origine`
  ADD PRIMARY KEY (`id_origine`);

--
-- Index pour la table `Panier`
--
ALTER TABLE `Panier`
  ADD PRIMARY KEY (`id_bougie`),
  ADD KEY `id_bougie` (`id_bougie`);

--
-- Index pour la table `Saison`
--
ALTER TABLE `Saison`
  ADD PRIMARY KEY (`id_saison`);

--
-- Index pour la table `Senteur`
--
ALTER TABLE `Senteur`
  ADD PRIMARY KEY (`id_senteur`),
  ADD KEY `id_origine` (`id_origine`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Collections`
--
ALTER TABLE `Collections`
  MODIFY `id_collection` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `Couleur`
--
ALTER TABLE `Couleur`
  MODIFY `id_couleur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `Mail`
--
ALTER TABLE `Mail`
  MODIFY `id_mail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Origine`
--
ALTER TABLE `Origine`
  MODIFY `id_origine` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Saison`
--
ALTER TABLE `Saison`
  MODIFY `id_saison` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `Senteur`
--
ALTER TABLE `Senteur`
  MODIFY `id_senteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Bougies`
--
ALTER TABLE `Bougies`
  ADD CONSTRAINT `Bougies_ibfk_2` FOREIGN KEY (`id_couleur`) REFERENCES `Couleur` (`id_couleur`),
  ADD CONSTRAINT `Bougies_ibfk_3` FOREIGN KEY (`id_senteur`) REFERENCES `Senteur` (`id_senteur`),
  ADD CONSTRAINT `Bougies_ibfk_4` FOREIGN KEY (`id_collection`) REFERENCES `Collections` (`id_collection`);

--
-- Contraintes pour la table `Collections`
--
ALTER TABLE `Collections`
  ADD CONSTRAINT `Collections_ibfk_1` FOREIGN KEY (`id_saison`) REFERENCES `Saison` (`id_saison`);

--
-- Contraintes pour la table `Panier`
--
ALTER TABLE `Panier`
  ADD CONSTRAINT `Panier_ibfk_1` FOREIGN KEY (`id_bougie`) REFERENCES `Bougies` (`id_bougie`);

--
-- Contraintes pour la table `Senteur`
--
ALTER TABLE `Senteur`
  ADD CONSTRAINT `Senteur_ibfk_1` FOREIGN KEY (`id_origine`) REFERENCES `Origine` (`id_origine`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
