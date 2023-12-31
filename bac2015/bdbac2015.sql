-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 26 déc. 2023 à 21:51
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
-- Base de données : `bdbac2015`
--

-- --------------------------------------------------------

--
-- Structure de la table `avion`
--

CREATE TABLE `avion` (
  `idavion` varchar(4) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `nbrplace` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `avion`
--

INSERT INTO `avion` (`idavion`, `marque`, `nbrplace`) VALUES
('AB12', 'Airbus2012', 120),
('BO13', 'boeing2013', 180),
('CN10', 'Concorde2010', 220);

-- --------------------------------------------------------

--
-- Structure de la table `pilote`
--

CREATE TABLE `pilote` (
  `matricule` varchar(4) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `genre` enum('H','F') NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `pilote`
--

INSERT INTO `pilote` (`matricule`, `nom`, `prenom`, `genre`, `email`) VALUES
('BL68', 'bellili', 'lamine', 'H', 'bellili@laposte.net'),
('CN70', 'chawachi', 'noura', 'F', 'noura@gmail.com'),
('KY75', 'kef', 'youssra', 'F', 'kefiyousssra@yahoo.fr');

-- --------------------------------------------------------

--
-- Structure de la table `vol`
--

CREATE TABLE `vol` (
  `idavion` varchar(4) NOT NULL,
  `datedep` datetime NOT NULL,
  `duree` int(11) NOT NULL,
  `refdep` int(11) NOT NULL,
  `refdest` int(11) NOT NULL,
  `matpilote` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `vol`
--

INSERT INTO `vol` (`idavion`, `datedep`, `duree`, `refdep`, `refdest`, `matpilote`) VALUES
('AB12', '2023-12-26 21:47:45', 75, 1, 5, 'BL68'),
('AB12', '2023-12-26 21:48:54', 125, 5, 1, 'BL68'),
('BO13', '2023-12-26 21:48:54', 80, 1, 5, 'BL'),
('CN10', '2023-12-26 21:47:45', 65, 6, 3, 'CN70');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `avion`
--
ALTER TABLE `avion`
  ADD PRIMARY KEY (`idavion`);

--
-- Index pour la table `pilote`
--
ALTER TABLE `pilote`
  ADD PRIMARY KEY (`matricule`);

--
-- Index pour la table `vol`
--
ALTER TABLE `vol`
  ADD PRIMARY KEY (`idavion`,`datedep`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
