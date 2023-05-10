-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 09 mai 2023 à 12:32
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `native`
--

-- --------------------------------------------------------

--
-- Structure de la table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(60) NOT NULL,
  `detail` varchar(500) NOT NULL,
  `date` varchar(60) NOT NULL,
  `time` varchar(30) NOT NULL,
  `venue` varchar(120) NOT NULL,
  `phone` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `events`
--

INSERT INTO `events` (`id`, `title`, `detail`, `date`, `time`, `venue`, `phone`) VALUES
(3, 'There are many variations of passages', 'Please fill details to save a new Event', '13 JUNE', '2PM', 'Church', ''),
(5, 'Food For our nation', '<p>About Conference&nbsp; About Conference&nbsp; About Conference &nbsp;</p>\r\n', '10-12-2022', '16-10-2022', 'Las Vegas, USA', '50091931'),
(6, 'Going to church', 'Here is everything about the site', '3rd, June 2017', '4PM', 'Akure', ''),
(7, 'Efac National Convention', '<p>Here you go! In step one you will fill out a simple form to get a digital wallet for your Kringle coins. Once you click &ldquo;Submit,&rdquo; you&rsquo;ll magically get an email. Step two will be to verify your email address; we want to make sure that you get your gift and not somebody else. We promise all of your information will be secure. We will never spam you, or sell your information to any third party. To collect 100,000 Kringle coins you need to fill out this form and submit it. Go ah', '16th -  20th August, 2017', '3PM', 'Orlu', '08138652645'),
(8, 'Go ahead and do that now! ', '<p>Here you go! In step one you will fill out a simple form to get a digital wallet for your Kringle coins. Once you click &ldquo;Submit,&rdquo; you&rsquo;ll magically get an email. Step two will be to verify your email address; we want to make sure that you get your gift and not somebody else. We promise all of your information will be secure. We will never spam you, or sell your information to any third party. To collect 100,000 Kringle coins you need to fill out this form and submit it. Go ah', '16th -  20th August, 2017', '3PM', 'Akure', '08138652645'),
(11, 'pitch yourself', '<p>welcome to pitch</p>\r\n', '3rd ,september,2022', '5AM', 'Sfax', '97316824');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `id` int(70) NOT NULL,
  `news_title` varchar(200) NOT NULL,
  `news_detail` varchar(5000) NOT NULL,
  `file` varchar(150) NOT NULL,
  `date` date NOT NULL,
  `views` int(11) NOT NULL,
  `tags` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`id`, `news_title`, `news_detail`, `file`, `date`, `views`, `tags`) VALUES
(11, 'Virtual Mouse', '<p>saczdfaeqxa</p>\r\n', 'adminf2b20d3378dfb746f12ecf099b9d34e9.jpg', '2022-11-27', 2, 'Devlopement Web'),
(12, 'ayya', '<p>ayyya</p>\r\n', 'news_0aef2f9a5c9dc2884f3561aedef6eda9.jpg', '2022-11-27', 10, 'Machine Learning'),
(15, 'wadaaa', '<p>fcedezd</p>\r\n', 'news_0aef2f9a5c9dc2884f3561aedef6eda9.jpg', '2022-12-06', 8, 'Devlopement Web'),
(19, 'Machine learning blog', '', 'news_6a1ac66d651e20e2ccc73c47ddd1f121.jpg', '2022-12-06', 12, 'Machine Learning'),
(26, 'Course à l’IA : Google Rassemble ses 2 Équipes de Recherche (Google Deepmind)', '<p>zaeazeazeaz</p>\r\n', 'IA.jpg', '2022-12-07', 12, 'Inteligence Artificiele;Machine Learning;Deep Learning'),
(27, 'AutoGPT Va-t-il Prendre la Place de ChatGPT ?\n', '<p>sdfsdf</p>\r\n', 'chat.png', '2022-12-12', 2, 'Inteligence Artificiele;Machine Learning;Deep Learning');

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `caption` varchar(2000) NOT NULL,
  `file` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `slider`
--

INSERT INTO `slider` (`id`, `caption`, `file`) VALUES
(5, 'Read', 'church_b039dc56880cbfacadf26598338f66e8.jpg'),
(6, 'fast', 'church_349419124026260d09771117c98a56a9.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `table_admin`
--

CREATE TABLE `table_admin` (
  `id` int(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `file` varchar(567) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `table_admin`
--

INSERT INTO `table_admin` (`id`, `name`, `email`, `username`, `password`, `file`) VALUES
(5, 'firas chakroun', 'firas21chakroun@gmail.com', 'Firas', '123456', 'efac_cf2b2c164d695de62b89f718ad52608d.jpg'),
(8, 'Adem Bahri', 'adem.bahri@enis.tn', 'Adem', '123456', 'admin_547fb1b664405fb424233be33f4f366d.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `tagid` int(11) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tags`
--

INSERT INTO `tags` (`tagid`, `name`) VALUES
(1, 'Devlopement Web'),
(2, 'Inteligence Artificiele'),
(3, 'Machine Learning'),
(6, 'Deep Learning'),
(9, 'Developement Mobile');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `table_admin`
--
ALTER TABLE `table_admin`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tagid`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(70) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `table_admin`
--
ALTER TABLE `table_admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `tagid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
