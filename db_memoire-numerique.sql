-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  mar. 28 juil. 2020 à 08:14
-- Version du serveur :  10.3.16-MariaDB
-- Version de PHP :  7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `db_memoire-numerique`
--

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `couleur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `nom`, `couleur`, `image`) VALUES
(1, 'Histoire', '', 'https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg'),
(2, 'Environnement', '', 'https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg'),
(3, 'Economie', '', 'https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg'),
(4, 'Social', '', 'https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg'),
(5, 'Culture', '', 'https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_type` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `media`
--

INSERT INTO `media` (`id`, `video`, `image`, `id_type`) VALUES
(1, 'https://youtu.be/HmZKgaHa3Fg', 'https://s.ftcdn.net/v2013/pics/all/curated/RKyaEDwp8J7JKeZWQPuOVWvkUjGQfpCx_cover_580.jpg?r=1a0fc22192d0c808b8bb2b9bcfbf4a45b1793687', 1),
(2, 'https://youtu.be/HmZKgaHa3Fg', 'https://s.ftcdn.net/v2013/pics/all/curated/RKyaEDwp8J7JKeZWQPuOVWvkUjGQfpCx_cover_580.jpg?r=1a0fc22192d0c808b8bb2b9bcfbf4a45b1793687', 1),
(3, 'https://youtu.be/HmZKgaHa3Fg', 'https://s.ftcdn.net/v2013/pics/all/curated/RKyaEDwp8J7JKeZWQPuOVWvkUjGQfpCx_cover_580.jpg?r=1a0fc22192d0c808b8bb2b9bcfbf4a45b1793687', 1),
(4, 'https://youtu.be/HmZKgaHa3Fg', 'https://s.ftcdn.net/v2013/pics/all/curated/RKyaEDwp8J7JKeZWQPuOVWvkUjGQfpCx_cover_580.jpg?r=1a0fc22192d0c808b8bb2b9bcfbf4a45b1793687', 1),
(5, 'https://youtu.be/HmZKgaHa3Fg', 'https://s.ftcdn.net/v2013/pics/all/curated/RKyaEDwp8J7JKeZWQPuOVWvkUjGQfpCx_cover_580.jpg?r=1a0fc22192d0c808b8bb2b9bcfbf4a45b1793687', 1),
(6, 'https://youtu.be/HmZKgaHa3Fg', 'https://s.ftcdn.net/v2013/pics/all/curated/RKyaEDwp8J7JKeZWQPuOVWvkUjGQfpCx_cover_580.jpg?r=1a0fc22192d0c808b8bb2b9bcfbf4a45b1793687', 1),
(7, 'https://youtu.be/HmZKgaHa3Fg', 'https://s.ftcdn.net/v2013/pics/all/curated/RKyaEDwp8J7JKeZWQPuOVWvkUjGQfpCx_cover_580.jpg?r=1a0fc22192d0c808b8bb2b9bcfbf4a45b1793687', 1),
(8, 'https://youtu.be/HmZKgaHa3Fg', 'https://s.ftcdn.net/v2013/pics/all/curated/RKyaEDwp8J7JKeZWQPuOVWvkUjGQfpCx_cover_580.jpg?r=1a0fc22192d0c808b8bb2b9bcfbf4a45b1793687', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mediatype`
--

CREATE TABLE `mediatype` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `mediatype`
--

INSERT INTO `mediatype` (`id`, `type`) VALUES
(1, 'Video'),
(2, 'Article'),
(3, 'Image');

-- --------------------------------------------------------

--
-- Structure de la table `memoire`
--

CREATE TABLE `memoire` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resumer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_categorie` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_status` bigint(20) UNSIGNED NOT NULL,
  `id_media` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `memoire`
--

INSERT INTO `memoire` (`id`, `titre`, `resumer`, `description`, `auteur`, `id_categorie`, `created_at`, `updated_at`, `id_status`, `id_media`) VALUES
(1, 'TEST de memoire 1', 'TEST de memoire 1', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 1', 1, NULL, NULL, 1, 1),
(2, 'TEST de memoire 2', 'TEST de memoire 2', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 2', 2, NULL, NULL, 2, 2),
(3, 'TEST de memoire 3', 'TEST de memoire 3', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 3', 3, NULL, NULL, 3, 3),
(4, 'TEST de memoire 4', 'TEST de memoire 4', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 4', 3, NULL, NULL, 3, 3),
(5, 'TEST de memoire 5', 'TEST de memoire 5', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 5', 3, NULL, NULL, 3, 3),
(6, 'TEST de memoire 6', 'TEST de memoire 6', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 6', 4, NULL, NULL, 3, 3),
(7, 'TEST de memoire 7', 'TEST de memoire 7', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 7', 2, NULL, NULL, 2, 2),
(8, 'TEST de memoire 8', 'TEST de memoire 8', 'TEST de memoire 8', 'TEST de memoire 8', 2, NULL, NULL, 2, 2),
(9, 'TEST de memoire 9', 'TEST de memoire 9', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 9', 4, NULL, NULL, 2, 2),
(10, 'TEST de memoire 10', 'TEST de memoire 10', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 10', 1, NULL, NULL, 1, 1),
(11, 'TEST de memoire 11', 'TEST de memoire 11', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 11', 1, NULL, NULL, 1, 1),
(12, 'TEST de memoire 12', 'TEST de memoire 12', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 12', 4, NULL, NULL, 2, 2),
(13, 'TEST de memoire 13', 'TEST de memoire 13', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 13', 5, NULL, NULL, 2, 2),
(14, 'TEST de memoire 14', 'TEST de memoire 14', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 14', 5, NULL, NULL, 2, 2),
(15, 'TEST de memoire 15', 'TEST de memoire 15', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Ratione mollitia dolore perferendis libero cum. Non rem fuga asperiores repellendus, facere ipsam voluptate sequi aspernatur praesentium animi nesciunt maiores, quis nisi!', 'TEST de memoire 15', 5, NULL, NULL, 2, 2);

-- --------------------------------------------------------

--
-- Structure de la table `memoire_status`
--

CREATE TABLE `memoire_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `memoire_status`
--

INSERT INTO `memoire_status` (`id`, `status`) VALUES
(1, 'Actif'),
(2, 'Inactif'),
(3, 'En cours');

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objet` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages_contact`
--

CREATE TABLE `messages_contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `objet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `messages_jeparticipe`
--

CREATE TABLE `messages_jeparticipe` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titreVideo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptionVideo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lienVideo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(18, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(19, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(20, '2016_06_01_000004_create_oauth_clients_table', 1),
(21, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(22, '2020_06_02_094551_create_users_table', 1),
(23, '2020_06_02_094655_create_message_contact_table', 1),
(24, '2020_06_02_094831_create_memoire-numerique_table', 1),
(25, '2020_06_02_094844_create_categorie_table', 1),
(26, '2020_06_02_094949_create_message_contact_migration_table', 1),
(27, '2020_06_02_095008_create_message_jeparticipe_table', 1),
(28, '2020_06_02_095029_create_db_memoire-numerique_table', 1),
(29, '2020_06_02_095051_create_mediatype_table', 1),
(30, '2020_06_02_095107_mise_a_plat_table', 1),
(31, '2020_06_11_055110_create_roles_table', 1),
(32, '2020_06_11_065607_relation_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', '9HHGAAKgTtgznpabnIjD3sO191S9ceIpv6A8Ck5a', NULL, 'http://localhost', 1, 0, 0, '2020-07-28 01:32:29', '2020-07-28 01:32:29'),
(2, NULL, 'Laravel Password Grant Client', 'A4fNddeiwDIZua50UiLZ0QxxeWkHTiuFy0BUQSBr', 'users', 'http://localhost', 0, 1, 0, '2020-07-28 01:32:29', '2020-07-28 01:32:29');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-07-28 01:32:29', '2020-07-28 01:32:29');

-- --------------------------------------------------------

--
-- Structure de la table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`id`, `role`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id_role` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `id_role`) VALUES
(1, 'admin', 'admin.admin@gmail.com', NULL, '$2y$10$K2wx862fUkEBE5doOSZYIulIipHaPUdw5gjs0ea/7kpoCnK/ZD526', NULL, NULL, NULL, 1),
(2, 'Pierre', 'pierre@user.com', NULL, '$2y$10$7Y0PLv6vzMIw21gFmC.6teZYNmNyMOt216cuhkViesJ6ppbQqLS92', NULL, NULL, NULL, 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_id_type_foreign` (`id_type`);

--
-- Index pour la table `mediatype`
--
ALTER TABLE `mediatype`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `memoire`
--
ALTER TABLE `memoire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `memoire_id_status_foreign` (`id_status`),
  ADD KEY `memoire_id_categorie_foreign` (`id_categorie`),
  ADD KEY `memoire_id_media_foreign` (`id_media`);

--
-- Index pour la table `memoire_status`
--
ALTER TABLE `memoire_status`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_contact`
--
ALTER TABLE `messages_contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_jeparticipe`
--
ALTER TABLE `messages_jeparticipe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Index pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_role_foreign` (`id_role`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `mediatype`
--
ALTER TABLE `mediatype`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `memoire`
--
ALTER TABLE `memoire`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `memoire_status`
--
ALTER TABLE `memoire_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages_contact`
--
ALTER TABLE `messages_contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages_jeparticipe`
--
ALTER TABLE `messages_jeparticipe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `mediatype` (`id`);

--
-- Contraintes pour la table `memoire`
--
ALTER TABLE `memoire`
  ADD CONSTRAINT `memoire_id_categorie_foreign` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id`),
  ADD CONSTRAINT `memoire_id_media_foreign` FOREIGN KEY (`id_media`) REFERENCES `media` (`id`),
  ADD CONSTRAINT `memoire_id_status_foreign` FOREIGN KEY (`id_status`) REFERENCES `memoire_status` (`id`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
