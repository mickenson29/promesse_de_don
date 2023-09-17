-- phpMyAdmin SQL Dump
-- version 5.2.1-1.fc38
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 17 sep. 2023 à 10:07
-- Version du serveur : 10.5.21-MariaDB
-- Version de PHP : 8.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `Promesse_don`
--

-- --------------------------------------------------------

--
-- Structure de la table `promesse_don`
--

CREATE TABLE `promesse_don` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `somme_proise` decimal(10,2) NOT NULL,
  `conditions_acceptees` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Déchargement des données de la table `promesse_don`
--

INSERT INTO `promesse_don` (`id`, `nom`, `prenom`, `adresse`, `email`, `somme_proise`, `conditions_acceptees`) VALUES
(1, 'moi', 'toi', '50 rue ciant', 'jaimepas@gmail.com', 100000.00, 0),
(2, 'ghgf', 'gwn', '69 rue danton', 'btbn@ggjfg.com', 10000000.00, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `promesse_don`
--
ALTER TABLE `promesse_don`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `promesse_don`
--
ALTER TABLE `promesse_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
