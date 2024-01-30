-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 30/01/2024 às 03:16
-- Versão do servidor: 8.0.35-0ubuntu0.22.04.1
-- Versão do PHP: 8.3.2-1+ubuntu22.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `test_project`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `anotacao`
--

CREATE TABLE `anotacao` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nome_anotacao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `anotacao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `anotacao`
--

INSERT INTO `anotacao` (`id`, `user_id`, `nome_anotacao`, `anotacao`, `created_at`, `updated_at`) VALUES
(34, '1', 'Php - Php Myadmin', 'Instalação do PHP\r\n\r\nsudo apt-get install aptitude\r\n\r\nsudo aptitude install php\r\n\r\nRepositório que fornece versões anteriores do PHP:\r\n\r\nsudo add-apt-repository ppa:ondrej/php\r\n\r\nsudo aptitude install php7.4 (versão específica)\r\n\r\nsudo aptitude install php7.4 libapache2-mod-php7.4 php7.4-mysql php7.4-common php7.4-curl php7.4-json php7.4-xml php7.4-mbstring php7.4-gettext php7.4-gd php7.4-zip php7.4-soap php7.4-xmlrpc php7.4-intl php7.4-cli php7.4-dev php-pear libapache2-mod-php7.4 php7.4-bz2\r\n\r\nsudo aptitude install mysql-server mysql-client\r\n\r\nRemover php\r\n\r\nsudo apt-get remove \"php*”\r\n\r\n## sudo apt-get install -y php-pdo-mysql\r\n\r\nInstalação do PHPMyAdmin\r\n\r\nsudo mysql\r\n\r\nALTER USER \'root\'@\'localhost\' IDENTIFIED WITH mysql_native_password BY \'Db31dipol#\';\r\n\r\nDb31dipol#2\r\n\r\nwget https://files.phpmyadmin.net/phpMyAdmin/5.2.1/phpMyAdmin-5.2.1-all-languages.tar.gz\r\n\r\nsudo cp phpMyAdmin-5.2.1-all-languages.tar.gz /usr/share\r\n\r\ncd /usr/share\r\n\r\nsudo tar xvf phpMyAdmin-5.2.1-all-languages.tar.gz\r\n\r\nsudo mv phpMyAdmin-5.2.1-all-languages phpmyadmin\r\n\r\nsudo vi /etc/apache2/sites-available/000-default.conf\r\n\r\nAlias /phpmyadmin \"/usr/share/phpmyadmin/\"\r\n\r\n<Directory \"/usr/share/phpmyadmin/\">\r\nOrder allow,deny\r\nAllow from all\r\nRequire all granted\r\n</Directory>\r\n\r\nQualquer alteração no virtual hosts precisa reiniciar o apache\r\n\r\n## sudo service apache2 restart\r\n\r\n`sudo apt-get install php7.4-mysql`', '2024-01-28 20:05:39', '2024-01-28 20:05:39'),
(35, '1', 'DOM PDF', 'Instalar composer\r\n\r\nsudo php -r \"copy(\'https://getcomposer.org/installer\', \'composer-setup.php\');\"\r\nsudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer\r\nsudo php -r \"unlink(\'composer-setup.php\');\"\r\n\r\n1- RODAR O COMANDO NO TERMINAL -> composer require barryvdh/laravel-dompdf\r\n\r\n- ------------------------------------------------------------------------------------------------\r\n\r\n2- DEPOIS RODE O SEGUINTE COMANDO -> php artisan vendor:publish --provider=\"Barryvdh\\DomPDF\\ServiceProvider\"\r\n\r\n- ------------------------------------------------------------------------------------------------\r\n\r\n3- DEPOIS CRIE ROUTE,CONTROLLER E VIEW ->\r\n\r\nRoute::get(\'test\', \'TesteController@test\');\r\n\r\nuse Barryvdh\\DomPDF\\Facade as PDF;\r\n\r\npublic function test()\r\n\r\n{\r\n\r\n$data = [\'title\' => \'Exemplo de PDF\'];\r\n\r\nreturn PDF::loadView(\'test\', $data)->setPaper(\'a2\', \'landscape\')->stream(\'pedro.pdf\');\r\n\r\n}\r\n\r\n<!DOCTYPE html>\r\n\r\n<html>\r\n\r\n<head>\r\n\r\n<meta charset=\"utf-8\">\r\n\r\n<title>{{ $title }}</title>\r\n\r\n</head>\r\n\r\n<body>\r\n\r\n<h1>{{ $title }}</h1>\r\n\r\n<p>Conteúdo do PDF aqui</p>\r\n\r\n</body>\r\n\r\n</html>\r\n\r\n- ----------------------------------------------------------------------------------------------\r\n\r\n4- a nível de app config/app.php em providers adicione -> Barryvdh\\DomPDF\\ServiceProvider::class,\r\n\r\n- ----------------------------------------------------------------------------------------------\r\n\r\n5- a nível de app config/app.php em aliases adicione -> \'PDF\' => Barryvdh\\DomPDF\\Facade::class,\r\n\r\n- ---------------------------------------------------------------------------------------------\r\n\r\n6- EXECUTE O SCRIPT PARA LIMPAR O CACHE DA APLICAÇÃO -> php artisan cache:clear\r\n\r\n- ----------------------------------------------------------------------------------------------\r\n\r\n7- SUBA O SERVIDOR E FAÇA TESTES', '2024-01-28 20:06:23', '2024-01-28 20:06:23'),
(37, '1', 'Chave', 'chave', '2024-01-28 20:25:08', '2024-01-28 20:25:08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `arquivos`
--

CREATE TABLE `arquivos` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `nome_arquivo` text NOT NULL,
  `tipo` int DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL,
  `arquivo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `arquivos`
--

INSERT INTO `arquivos` (`id`, `user_id`, `nome_arquivo`, `tipo`, `created_at`, `updated_at`, `arquivo`) VALUES
(1, 1, 'kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk', NULL, '2024-01-26 18:06:07', '2024-01-29 18:33:58', ''),
(13, 1, 'teste', NULL, '2024-01-27 18:00:56', '2024-01-27 21:00:56', 'bafd49ca60248fd1e4972b58815a521f.jpg'),
(14, 1, 'dsfdfd', NULL, '2024-01-27 21:14:15', '2024-01-28 00:14:15', NULL),
(15, 1, 'teste arthur', NULL, '2024-01-27 21:30:10', '2024-01-28 00:30:10', 'e6b3b884398cf466e2182aab9f29911b.png'),
(16, 1, 'dvssfs', NULL, '2024-01-28 03:56:37', '2024-01-28 06:56:37', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_01_26_183421_add_arquivo_to_arquivos_table', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `location`, `about_me`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$pWVi1Z9VVDksmkHlIeDlcOdT37kvcZOjlCdsliew6Qgp2Ch5PUyGa', NULL, NULL, NULL, NULL, '2024-01-25 19:06:29', '2024-01-25 19:06:29'),
(2, 'teste', 'teste@admin.com', '$2y$10$0etQSL5OXSjcMjUBRuB.8OcvOk2.uKUUqL5E72OTB9PB3HHn5lBr2', NULL, NULL, NULL, NULL, '2024-01-26 04:49:06', '2024-01-26 04:49:06');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `anotacao`
--
ALTER TABLE `anotacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `arquivos`
--
ALTER TABLE `arquivos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices de tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anotacao`
--
ALTER TABLE `anotacao`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
