-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Jun-2022 às 07:05
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `eventscursos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `private` tinyint(1) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `date_event` datetime NOT NULL DEFAULT '2022-05-11 20:55:38',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `city`, `private`, `image`, `items`, `date_event`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'CURSO DE LARAVEL', 'Gratuito, de código aberto, com suporte a recursos avançados e facilidade na construção do código, simples e legível: essas são as principais vantagens do Laravel, o que torna ele o framework preferido de vários desenvolvedores PHP.', 'manaus', 0, '', '', '2022-05-11 20:55:38', NULL, NULL, NULL),
(2, 'CSS Flexbox | Curso completo', 'O CSS Flexible Box Layout, conhecido como Flexbox, é um modelo de layout da Web CSS3. Está no estágio de recomendação de candidatos do W3C.', 'Manaus', 0, '', '', '2022-05-11 20:55:38', NULL, NULL, NULL),
(3, 'Power BI', 'O Power BI é um serviço de análise de negócios da Microsoft lançado a 24 de julho de 2015. O objetivo do Power BI é fornecer visualizações interativas e recursos de business intelligence com uma interface simples para que os usuários finais criem os seus próprios relatórios e dashboards.', 'Manaus', 0, '', '', '2022-05-11 20:55:38', NULL, NULL, NULL),
(4, 'Curso linkedin', 'O LinkedIn é a mais famosa e maior rede social profissional, focada em gerar conexões e relacionamentos.', 'Manaus', 0, '', '', '2022-05-11 20:55:38', NULL, NULL, NULL),
(5, 'SQL para Análise de Dados: Do básico ao avançado', 'Aprenda a analisar banco de dados de negócio com SQL por meio de exercícios práticos e projetos: Do básico ao avançado!', 'Manaus', 0, '', '', '2022-05-11 20:55:38', '2022-05-11 14:40:51', '2022-05-11 14:40:51', NULL),
(6, 'Programação em Python do básico ao avançado', 'Aprenda Python 3.8.5 com Expressões Lambdas, Iteradores, Geradores, Orientação a Objetos e muito mais!', 'Manaus', 0, '', '', '2022-05-11 20:55:38', '2022-05-11 14:47:58', '2022-05-11 14:47:58', NULL),
(7, 'Curso de Python 3 do Básico Ao Avançado', 'Python 3 completo - programação com Django, PyQT5, Selenium, Regexp, Testes e TDD, POO, Design Patterns GoF, algoritmos', 'Manaus', 0, '', '', '2022-05-11 20:55:38', '2022-05-11 14:49:13', '2022-05-11 14:49:13', NULL),
(8, 'Curso de Hacker para Iniciantes', 'Aprenda a ser hacker para não ser invadido. Curso indicado para quem está começando.', 'Manaus', 0, '', '', '2022-05-11 20:55:38', '2022-05-11 14:50:43', '2022-05-11 14:50:43', NULL),
(9, 'Curso completo de jQuery', 'O jQuery é um framework de Javascript de código aberto que possui licença dual, fazendo uso da Licença MIT ou da GNU General Public License versão 2. A sintaxe do jQuery foi desenvolvida para tornar mais simples a navegação do documento HTML, a seleção de elementos DOM, criar animações, manipular eventos e desenvolver aplicações AJAX.', 'Manaus', 1, 'e2619bc937a96593f947fc841457106e.jpg', '', '2022-05-11 20:55:38', '2022-05-11 15:17:29', '2022-05-11 15:17:29', NULL),
(10, 'Curso de htaccess', 'O htaccess é um arquivo de configuração de acesso do servidor Apache. Com ele é possível configurar várias funções de acesso dos usuários a um diretório específico e atrbuir estas regras aos subdiretórios subsequentes. Sendo a utilização de alguns parâmetros de configuração fortemente recomendado para otimização de sites.', 'Manaus', 1, '24a352c536425e56f175c9451a6ef0e6.jpg', '[\"value\",\"food\"]', '2022-05-11 20:55:38', '2022-05-12 02:21:48', '2022-05-12 02:21:48', NULL),
(11, 'Angular 2 e o futuro do frontend', 'Em 2012 o AngularJS foi criado e levou o desenvolvimento Front-end ao próximo nível, simplificando a criação de componentes e a testar o código JavaScript. A web evoluiu, chegaram os Web Components e as especificações da ES2015 e 16, possibilitando ao framework tirar proveito dessas novidades e ficar muito menor e mais rápido! Nessa palestra vamos ter um gostinho do que será o futuro do desenvolvimento Front-end com o Angular 2.', 'Manaus', 1, '28c7bc9a9087ba03f62847b012ce1363.jpg', '[\"value\",\"palco\",\"cerveja\",\"food\"]', '2022-05-11 20:55:38', '2022-05-12 03:14:12', '2022-05-12 03:14:12', NULL),
(13, 'Curso de Adobe After Effects CC', 'After Effects é a famosa ferramenta da Adobe que é padrão para quem quer entrar no ramo ou já trabalha profissionalmente com animações tridimensionais e aplicação de efeitos cinematográficos em vídeos.', 'Manaus', 1, 'a9c7bdf536951beafd178a1b0833fe39.jpg', '[\"food\"]', '2022-06-10 00:00:00', '2022-05-12 06:23:30', '2022-05-12 07:14:44', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `event_user`
--

CREATE TABLE `event_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `event_user`
--

INSERT INTO `event_user` (`id`, `event_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(3, 2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_05_11_045331_create_events_table', 1),
(7, '2022_05_11_070410_add_image_to_events_table', 1),
(8, '2022_05_11_181054_add_items_to_event_table', 1),
(9, '2022_05_11_190158_add_date_to_events_table', 1),
(10, '2022_05_11_194313_create_sessions_table', 1),
(11, '2022_05_11_201319_add_user_id_to_events_table', 1),
(12, '2022_05_12_033735_create_event_user_table', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dYosNDTaKiDsd8Fpbe5d3ahJL6qIvDalhJVoSoz6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWJBVVpGamJmS1FHa0F1RlVmSmlmTlQxZmVEcXBUcnpnSkE4SXlxNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1656046893),
('N3Vcm3uDXJXcYnDu2ZGTOv97ZoqWigxtwzDxVrYG', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/101.0.4951.54 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiblhjWmJleGs4c2kyYXpBcTFhMER2clVFb2VGV3Z1ZW5PSjdpRFlMUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1652335735);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Raicley', 'raicleysantana1@gmail.com', NULL, '$2y$10$v12Bub9G1zP/A1Zk7qGK/e4ZLh8bFauksxW7AYsk/QWeEamj/MY2W', NULL, NULL, NULL, 'BI3KHjoJX9ipYU3hTNRzsDeaIDpsZ6Ty4bGkzHG3lgEMpLmPYD7r4ziQ7IGu', NULL, NULL, '2022-05-12 04:03:16', '2022-05-12 04:03:16');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_user_id_foreign` (`user_id`);

--
-- Índices para tabela `event_user`
--
ALTER TABLE `event_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_user_event_id_foreign` (`event_id`),
  ADD KEY `event_user_user_id_foreign` (`user_id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `event_user`
--
ALTER TABLE `event_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `event_user`
--
ALTER TABLE `event_user`
  ADD CONSTRAINT `event_user_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`),
  ADD CONSTRAINT `event_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
