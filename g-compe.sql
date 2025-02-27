-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 27 fév. 2025 à 15:28
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
-- Base de données : `g-compe`
--

-- --------------------------------------------------------

--
-- Structure de la table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `competitions`
--

CREATE TABLE `competitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `games_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `competitions`
--

INSERT INTO `competitions` (`id`, `games_id`, `title`, `start_date`, `end_date`, `created_at`, `updated_at`) VALUES
(1, 1, 'Championship 2025', '2025-02-27 23:24:00', '2025-03-02 23:24:00', '2025-02-25 22:24:00', '2025-02-25 22:24:00');

-- --------------------------------------------------------

--
-- Structure de la table `competition_participants`
--

CREATE TABLE `competition_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `game_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `competition_participants`
--

INSERT INTO `competition_participants` (`id`, `name`, `email`, `game_id`, `created_at`, `updated_at`) VALUES
(1, 'mouna MISBAHI', 'mounamasbahi@gmail.com', NULL, '2025-02-26 00:53:40', '2025-02-26 00:53:40');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `games`
--

CREATE TABLE `games` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `rules` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `games`
--

INSERT INTO `games` (`id`, `name`, `image`, `description`, `rules`, `created_at`, `updated_at`, `video_url`) VALUES
(1, 'League of Legends', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXxtJ4ZqFItGTHSqaU2Ifmry6eiCviOCLOUg&s', 'League of Legends (LoL) est un jeu de stratégie compétitif en temps réel qui oppose deux équipes de cinq joueurs. Chaque joueur contrôle un \"champion\" unique, doté de capacités spéciales et d un style de jeu distinct. L objectif principal est de travailler en équipe pour détruire la base adverse, appelée Nexus, tout en défendant la vôtre.\n\n                            Le jeu se déroule sur une carte appelée Summoner s Rift, qui est divisée en trois voies principales (top, mid, bot) et une jungle remplie de monstres neutres. Les joueurs doivent gagner de l expérience, collecter de l or, et acheter des objets pour renforcer leurs champions tout en affrontant l équipe adverse.\n\n                            Avec plus de 150 champions disponibles, chaque partie offre une expérience unique, combinant stratégie, coordination d équipe et compétences individuelles. League of Legends est l un des jeux les plus populaires au monde, avec une scène compétitive professionnelle très active.', '-Deux équipes de 5 joueurs s affrontent.\n                            -Chaque joueur choisit un champion unique au début de la partie.', '2025-02-25 22:24:00', '2025-02-25 22:24:00', 'https://cmsassets.rgpub.io/sanity/files/dsfx7636/news/8ab3e227121c53aacab0c9b9f7a48adbc65db520.webm'),
(2, 'FIFA 24', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTnjrM-tK16R8IBg08Tik3tIkNNFj98vdOZPg&s', 'FIFA 24 est la dernière version de la célèbre série de jeux de simulation de football développée par EA Sports. Ce jeu offre une expérience de football ultra-réaliste, avec des graphismes de pointe, des animations fluides et une intelligence artificielle améliorée.\n\n                                    Jouez avec vos équipes préférées, que ce soit des clubs de ligues professionnelles ou des équipes nationales, et affrontez des adversaires du monde entier. FIFA 24 propose plusieurs modes de jeu, y compris le mode Carrière, le mode Ultimate Team, et les matchs en ligne multijoueurs.\n\n                                    Avec une physique de balle réaliste, des mouvements de joueurs authentiques et des commentaires dynamiques, FIFA 24 vous plonge au cœur de l action footballistique. Que vous soyez un joueur occasionnel ou un compétiteur acharné, ce jeu offre une expérience immersive pour tous les fans de football.', '-Marquez plus de buts que votre adversaire dans le temps imparti.\n                            -Le match se déroule en deux mi-temps de 45 minutes chacune (durée réglable).', '2025-02-25 22:24:00', '2025-02-25 22:24:00', 'https://media.contentapi.ea.com/content/dam/ea/fc/fc-24/common/homepage/fc24-haaland-goal-1x1.mp4'),
(3, 'Call of Duty: Warzone', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQq3Ulcj20DlRcC_SS3cEWxTSS1B8YTjPSNNg&s', 'Call of Duty: Warzone est un jeu de battle royale gratuit, intégré dans l\'univers de Call of Duty. Il oppose jusqu\'à 150 joueurs dans une immense carte appelée Verdansk (ou d\'autres cartes selon les mises à jour). Le but est simple : être le dernier joueur ou la dernière équipe en vie.\n\n                                Warzone combine des éléments de tir tactique, de stratégie et de survie. Les joueurs doivent rechercher des armes, des équipements et des ressources tout en évitant une zone de gaz toxique qui rétrécit progressivement, forçant les confrontations.\n\n                                Avec des graphismes réalistes, une physique de tir précise et une variété de modes de jeu (solo, duo, trio, quatuor), Warzone offre une expérience de combat intense et immersive. Le jeu inclut également des mécaniques uniques comme le Gulag, où les joueurs éliminés ont une seconde chance pour revenir dans la partie.', '-Tous les joueurs sautent en parachute depuis un avion et atterrissent sur la carte.\n\n                            -Choisissez un point d\'atterrissage stratégique pour trouver des armes et des équipements rapidement.\n                            -Survivez jusqu’à la fin et éliminez vos adversaires.', '2025-02-25 22:24:00', '2025-02-25 22:24:00', 'https://www.pinterest.com/2a42742c-8853-4574-b242-547389e0714c'),
(4, 'Minecraft', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpeaVLLU2s5s2TKZgTIrn3J36g7a9E6eB5AQ&s', 'Minecraft est un jeu de construction et d\'exploration en monde ouvert, où les joueurs peuvent laisser libre cours à leur créativité. Le jeu se déroule dans un univers composé de blocs en 3D, où chaque élément (terre, pierre, eau, etc.) peut être récolté, transformé et utilisé pour construire des structures, des outils ou des machines.', 'Mode Survie : Survivez dans un monde hostile en gérant vos ressources et en combattant des créatures.\n\n                        Mode Créatif : Ayez accès à des ressources illimitées pour construire sans limites.\n\n                        Mode Aventure : Explorez des cartes personnalisées avec des objectifs spécifiques.\n\n                        Mode Multijoueur : Jouez avec des amis pour construire ou explorer ensemble.\n\n', '2025-02-25 22:24:00', '2025-02-25 22:24:00', 'https://cdn.pixabay.com/video/2022/04/04/112905-696336308_large.mp4'),
(5, 'Overwatch 2', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQPnNo3WAeLJW-b8TFFPGZp2cnOBXHn2UH6w&s', 'Un jeu de tir en équipe avec des héros aux capacités uniques.', 'Travaillez en équipe pour capturer des objectifs ou escorter une charge utile.', '2025-02-25 22:24:00', '2025-02-25 22:24:00', 'https://v1.pinimg.com/videos/mc/720p/eb/aa/28/ebaa2812b2905bf824ad1c6cd8ec888a.mp4'),
(6, 'Fortnite', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwitMQyY9DXyLc5e-FtIDGyaxdFQx8uxaxxg&s', 'Fortnite est un jeu de battle royale qui combine des éléments de tir et de construction. Jusqu\'à 100 joueurs s\'affrontent sur une carte en constante évolution, avec pour objectif d\'être le dernier survivant.\n\n                Ce qui distingue Fortnite des autres jeux de battle royale, c\'est sa mécanique de construction. Les joueurs peuvent récolter des ressources (bois, pierre, métal) pour construire des structures (murs, rampes, plates-formes) afin de se protéger, d\'atteindre des endroits élevés ou de prendre un avantage tactique.\n\n                Fortnite propose également des modes créatifs et des événements en temps réel, comme des concerts virtuels ou des collaborations avec des franchises populaires (Marvel, Star Wars, etc.). Avec ses graphismes colorés, son gameplay dynamique et ses mises à jour régulières, Fortnite est devenu un phénomène culturel mondial.', '-Survivre jusqu\'à la fin et être le dernier joueur ou la dernière équipe en vie.\n                -Tous les joueurs sautent en parachute depuis un bus volant et atterrissent sur la carte.\n\n                -Choisissez un point d\'atterrissage stratégique pour trouver des armes, des ressources et des équipements.', '2025-02-25 22:24:00', '2025-02-25 22:24:00', 'https://www.shutterstock.com/shutterstock/videos/3530109903/preview/stock-footage-carrying-weapons-in-the-competitive-shooter-pc-game-attacking-the-enemy-team-positions-in-a.webm'),
(7, 'Valorant', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqja3x4fIQ2DazY0iWBe_4SR3AdQFqNpTGbw&s', 'Un jeu de tir tactique en équipe avec des personnages uniques.', 'Remportez les manches en plaçant ou en désamorçant la bombe.', '2025-02-25 22:24:00', '2025-02-25 22:24:00', 'https://cmsassets.rgpub.io/sanity/files/dsfx7636/news/409ab2fc369ba5e1fe50bac10c6676d7d1365a9f.mp4'),
(8, 'Super Smash Bros. Ultimate', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRozNS_8JTMq_zgRtZuuVkmg4gIcfxuyfLMYQ&s', 'Un jeu de combat avec une variété de personnages emblématiques.', 'Expulsez vos adversaires de l\'arène pour marquer des points.', '2025-02-25 22:24:00', '2025-02-25 22:24:00', 'videos/gamevideo.mp4');

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_28_090731_create_personal_access_tokens_table', 1),
(5, '2024_12_28_090921_games', 1),
(6, '2024_12_28_090941_competitions', 1),
(7, '2024_12_28_091204_registrations', 1),
(8, '2025_01_26_205823_create_competition_participants_table', 1),
(9, '2025_01_26_231638_add_video_url_to_game_table', 1),
(10, '2025_02_09_204331_add_image_to_games_table', 1),
(11, '2025_02_09_230128_add_game_id_to_participants_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'auth_token', '6cd873e3b16f432707a5ece8d99a25946f8e76ada11bb478725cd76d79700a5d', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:19', '2025-02-26 21:57:19'),
(2, 'App\\Models\\User', 2, 'auth_token', 'e98d70f15136f5e238e1078d10860f9b6b2c7a3e81ec58de84eb7c7bd5da6d97', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:20', '2025-02-26 21:57:20'),
(3, 'App\\Models\\User', 2, 'auth_token', '765c15dc7aa944dfc5e70c2cc2f14b3990d8bc40e9f862eaed6fc142f5f400a7', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:30', '2025-02-26 21:57:30'),
(4, 'App\\Models\\User', 2, 'auth_token', 'ba130069a118bcb1e364c69b4563760e19ae300c161427759bb93274edb0ab49', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:33', '2025-02-26 21:57:33'),
(5, 'App\\Models\\User', 2, 'auth_token', 'ecab9604cce2811b4f5e5695d2f90b2dc718e8036519ce8ed5a832ac1d94faa4', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:34', '2025-02-26 21:57:34'),
(6, 'App\\Models\\User', 2, 'auth_token', 'c7df1d8a5554c3675fff430b909b3fad4347de91d036e74af8569f89011fc450', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:34', '2025-02-26 21:57:34'),
(7, 'App\\Models\\User', 2, 'auth_token', '107d01f4479a9b00d2b8c529463e77f8f605517775d2801ec3addde3f7162761', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:35', '2025-02-26 21:57:35'),
(8, 'App\\Models\\User', 2, 'auth_token', 'ba478ae758a4d281b04723fdc6a9c1b7a39f8c9230f82be28ee13b29332c27d5', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:35', '2025-02-26 21:57:35'),
(9, 'App\\Models\\User', 2, 'auth_token', '240b8efe5913c902349558039f8865825dc0595a7c7ad02cba3a7faa292201b0', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:36', '2025-02-26 21:57:36'),
(10, 'App\\Models\\User', 2, 'auth_token', '1e3ddb0dab20b4857a62e85fcedb7fbb8f49fe644b0e9e2fa38f6e5cdf2e6c41', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:36', '2025-02-26 21:57:36'),
(11, 'App\\Models\\User', 2, 'auth_token', '9ac8a35d8ef0166b38351cd7fb248542e18ab207d99c2a22726c073ab1d8a570', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:36', '2025-02-26 21:57:36'),
(12, 'App\\Models\\User', 2, 'auth_token', '8f540a0f2e8ae74f0774c72061c671a82549cbd83dbb7a58bad5c02bd3b226d0', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:37', '2025-02-26 21:57:37'),
(13, 'App\\Models\\User', 2, 'auth_token', 'dcc0360224132848b8cfd0568c28f993d6cff30baf636d1e2e6f0207d46b7a1a', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:38', '2025-02-26 21:57:38'),
(14, 'App\\Models\\User', 2, 'auth_token', '3c593a77cf989b94b0fcb0f183dd9248d78814b56edebe6fc2ffb5b7bd3bd31d', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:38', '2025-02-26 21:57:38'),
(15, 'App\\Models\\User', 2, 'auth_token', '0b96bcd0113be48afde3281d67e4f5ad285e0941416ff564b0154078abfc7152', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:39', '2025-02-26 21:57:39'),
(16, 'App\\Models\\User', 2, 'auth_token', '1d7931bced9f3dea812ea8c203e4808e924d6e081682e359caca2ae0ef9ce339', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:39', '2025-02-26 21:57:39'),
(17, 'App\\Models\\User', 2, 'auth_token', '72a8644f9b20df7752afb38a323e3af7ab740788474d58697994b49efb6527a2', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:41', '2025-02-26 21:57:41'),
(18, 'App\\Models\\User', 2, 'auth_token', 'e6d4bcc3238c25e6e55e92a25f97022d40a8d029ebf3bcea8ea906ae752a4008', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:41', '2025-02-26 21:57:41'),
(19, 'App\\Models\\User', 2, 'auth_token', '165a530800a32fa404c8b64cf44ed957a2797ed58b499f95b602e1723fcc0ccb', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:42', '2025-02-26 21:57:42'),
(20, 'App\\Models\\User', 2, 'auth_token', '89ff2a7a1a209029f43d029ac02c62b4f6fde29c394804d1d0119fdfa633c0ca', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:42', '2025-02-26 21:57:42'),
(21, 'App\\Models\\User', 2, 'auth_token', '02c1a1596d51850b4269cd757051edaa6b77fba73686c5f22bdbeaeecd923b0c', '[\"*\"]', NULL, NULL, '2025-02-26 21:57:43', '2025-02-26 21:57:43'),
(22, 'App\\Models\\User', 10, 'auth_token', '848a7c021216143d7514323e981f76c477425c0c22e01976aafc7311a610d48d', '[\"*\"]', NULL, NULL, '2025-02-26 22:11:03', '2025-02-26 22:11:03'),
(23, 'App\\Models\\User', 10, 'auth_token', '05cd95c5db1471eeea79cfceb167c33235a218304583a5c36cec9404b6f957f4', '[\"*\"]', NULL, NULL, '2025-02-26 22:11:04', '2025-02-26 22:11:04'),
(24, 'App\\Models\\User', 10, 'auth_token', 'ad5d30062906d34d2ca452f1683b8b20612524917c63137eb0e5d78f5039850f', '[\"*\"]', NULL, NULL, '2025-02-26 22:11:05', '2025-02-26 22:11:05'),
(25, 'App\\Models\\User', 10, 'auth_token', '04ef3d60f1b99951cd4c0c1b5658c7bd7bbe9371cd8f51bf3479803152b8aec3', '[\"*\"]', NULL, NULL, '2025-02-26 22:11:05', '2025-02-26 22:11:05'),
(26, 'App\\Models\\User', 10, 'auth_token', '919f01413927e3bb449dc29e49a38372c72f68305981b3abc08500887427eeb7', '[\"*\"]', NULL, NULL, '2025-02-26 22:11:06', '2025-02-26 22:11:06'),
(27, 'App\\Models\\User', 10, 'auth_token', 'abb4a8c300d459ebe71fce860b0f824187555b67f671ebf4cbb9739de11c0bd1', '[\"*\"]', NULL, NULL, '2025-02-26 22:11:06', '2025-02-26 22:11:06'),
(28, 'App\\Models\\User', 10, 'auth_token', '22088834c75ad21b80d22483ed039b08b81b296a8324647e623d887f708cce04', '[\"*\"]', NULL, NULL, '2025-02-26 22:11:06', '2025-02-26 22:11:06'),
(29, 'App\\Models\\User', 10, 'auth_token', '4184fc54e8ef3fe466e2540e71bb7415c63c5e4c341987acb33bc9381a9b1e69', '[\"*\"]', NULL, NULL, '2025-02-26 22:11:07', '2025-02-26 22:11:07'),
(30, 'App\\Models\\User', 10, 'auth_token', '1e4ee63c205aa9e64e826598f0fb58ee77bee5d3435888727c1c6776fc290a5f', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:37', '2025-02-26 22:38:37'),
(31, 'App\\Models\\User', 10, 'auth_token', '906fd773b5f5f8ad981aab6945fdabd8b23ffedbe78e6d652fcf6ddc02123dd7', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:38', '2025-02-26 22:38:38'),
(32, 'App\\Models\\User', 10, 'auth_token', '29e08f8d0e6ab1a705153e915e87ca5d89f6bedb8a707ab7119671967b516909', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:40', '2025-02-26 22:38:40'),
(33, 'App\\Models\\User', 10, 'auth_token', 'f5d3347e2601360e75233749d70a7a01c3b5650a5699fa91fce4d720cad49bbf', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:41', '2025-02-26 22:38:41'),
(34, 'App\\Models\\User', 10, 'auth_token', '6bc0602a0e02483d142fa34e3d28843f6057e1e68829562cd18638402da62171', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:41', '2025-02-26 22:38:41'),
(35, 'App\\Models\\User', 10, 'auth_token', 'aae6a6a233d71790623bbff5c2a60a9ca617d4656e0efd4b424f1b1405abdf67', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:42', '2025-02-26 22:38:42'),
(36, 'App\\Models\\User', 10, 'auth_token', '0a625bd14823b50de687ab98c851cc5ca9ef038275a7b0a3862a81f3c00443f0', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:43', '2025-02-26 22:38:43'),
(37, 'App\\Models\\User', 10, 'auth_token', 'a387580a27333e322ffa086c236c4a65e3ea57a8a4972fa015801190b5d3369b', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:44', '2025-02-26 22:38:44'),
(38, 'App\\Models\\User', 10, 'auth_token', '097729ded445c569b9f47cc3951533f89ca6682e44a17e3cf0b8ab27cb9f6ae8', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:44', '2025-02-26 22:38:44'),
(39, 'App\\Models\\User', 10, 'auth_token', 'dc1fd179644bd59076734057edcd81eb7673569deb1b178373f101f073e86e08', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:45', '2025-02-26 22:38:45'),
(40, 'App\\Models\\User', 10, 'auth_token', '3c2d7548fc3bbd87a398281d36d6678ab2ba6eecead4d55e0d3b94d8a4b0735e', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:45', '2025-02-26 22:38:45'),
(41, 'App\\Models\\User', 10, 'auth_token', '7ffd6f51438a35330b925f9464b43d0f916ec0759a107039861fc8c5c3fa30dc', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:47', '2025-02-26 22:38:47'),
(42, 'App\\Models\\User', 10, 'auth_token', '128e5721261ebea048860b6df7bc50123090e42b000c24b7b2ad7c4b6fb0fb41', '[\"*\"]', NULL, NULL, '2025-02-26 22:38:48', '2025-02-26 22:38:48');

-- --------------------------------------------------------

--
-- Structure de la table `registrations`
--

CREATE TABLE `registrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `competition_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('en_attente','accepté','rejeté') NOT NULL DEFAULT 'en_attente',
  `score` int(11) NOT NULL DEFAULT 0,
  `registration_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-02-25 22:24:00', '$2y$12$QtvbhmkNnjXXOJW7uqG6Secihivv0pDgKDee5zryAmUmacudqytnO', '2M7OoABnPP', '2025-02-25 22:24:01', '2025-02-25 22:24:01'),
(2, 'mouna', 'ejzsejzn@gmail.com', NULL, '1233jjhu', NULL, '2025-02-26 21:52:44', '2025-02-26 21:52:44'),
(10, '', 'mounamasbahi@gmail.com', NULL, '123456789', NULL, NULL, NULL),
(11, '', 'oussama@gmail.com', NULL, '123456789@', NULL, NULL, NULL),
(12, 'mouna', 'nrnr@gmail.com', '2025-02-25 22:24:00', '$2y$12$y28USL7sZrmtx.QeE7vb5OUdRqefDVtYXeQz7FVdN6k9jpTwK.Xkq', NULL, '2025-02-27 12:59:16', '2025-02-27 12:59:16'),
(13, 'marwa', 'nrnr8180@gmail.com', NULL, '$2y$12$6mPvibjuHjT8YPA1ilUg.uHvNw/.88XOFw1GyGQBKnP.CTRQTsjCG', NULL, '2025-02-27 13:16:14', '2025-02-27 13:16:14');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Index pour la table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competitions_games_id_foreign` (`games_id`);

--
-- Index pour la table `competition_participants`
--
ALTER TABLE `competition_participants`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `competition_participants_email_unique` (`email`),
  ADD KEY `competition_participants_game_id_foreign` (`game_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Index pour la table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registrations_user_id_foreign` (`user_id`),
  ADD KEY `registrations_competition_id_foreign` (`competition_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `competition_participants`
--
ALTER TABLE `competition_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `games`
--
ALTER TABLE `games`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT pour la table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `competitions`
--
ALTER TABLE `competitions`
  ADD CONSTRAINT `competitions_games_id_foreign` FOREIGN KEY (`games_id`) REFERENCES `games` (`id`);

--
-- Contraintes pour la table `competition_participants`
--
ALTER TABLE `competition_participants`
  ADD CONSTRAINT `competition_participants_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_competition_id_foreign` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`),
  ADD CONSTRAINT `registrations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
