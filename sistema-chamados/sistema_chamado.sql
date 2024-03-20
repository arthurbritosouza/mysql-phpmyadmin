-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 20/03/2024 às 18:47
-- Versão do servidor: 8.0.36-0ubuntu0.22.04.1
-- Versão do PHP: 8.3.3-1+ubuntu22.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_chamado`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `banco`
--

CREATE TABLE `banco` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `nome_banco` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `banco`
--

INSERT INTO `banco` (`id`, `user_id`, `nome_banco`, `created_at`, `updated_at`) VALUES
(2, 3, 'banco1', '2024-03-10 21:20:43', '2024-03-10 21:20:43'),
(4, 3, 'ffff', '2024-03-12 07:53:47', '2024-03-12 07:53:47'),
(5, 4, 'nusnvudsiv', '2024-03-14 22:08:45', '2024-03-14 22:08:45'),
(6, 3, '1', '2024-03-15 09:27:02', '2024-03-15 09:27:02');

-- --------------------------------------------------------

--
-- Estrutura para tabela `chamados`
--

CREATE TABLE `chamados` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `nome_chamado` text,
  `email` text,
  `responsavel` text,
  `chamado` text,
  `banco` int NOT NULL,
  `prioridade` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `chamados`
--

INSERT INTO `chamados` (`id`, `user_id`, `nome_chamado`, `email`, `responsavel`, `chamado`, `banco`, `prioridade`, `created_at`, `updated_at`) VALUES
(15, 3, 'dono', NULL, NULL, NULL, 4, 1, '2024-03-15 08:51:34', '2024-03-15 08:51:34'),
(19, 3, '1', NULL, NULL, NULL, 6, 1, '2024-03-15 09:27:11', '2024-03-15 09:27:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `relacione`
--

CREATE TABLE `relacione` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `id_objeto` int NOT NULL,
  `banco` int NOT NULL,
  `dono_banco` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `relacione`
--

INSERT INTO `relacione` (`id`, `user_id`, `id_objeto`, `banco`, `dono_banco`, `created_at`, `updated_at`) VALUES
(2, 3, 4, 2, 3, '2024-03-14 18:45:46', '2024-03-14 21:45:46'),
(3, 3, 4, 4, 3, '2024-03-15 05:44:19', '2024-03-15 08:44:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` bigint DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_me` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `location`, `about_me`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'admin@admin.com', NULL, NULL, NULL, NULL, '2024-01-31 17:44:34', '2024-01-31 17:44:34'),
(4, 'teste', 'teste@teste.com', NULL, NULL, NULL, NULL, '2024-03-12 18:33:48', '2024-03-12 18:33:48');

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int NOT NULL,
  `email` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'arthur@arthur.com', '2024-03-08 13:39:03', '2024-03-08 16:39:03');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `banco`
--
ALTER TABLE `banco`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `chamados`
--
ALTER TABLE `chamados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `relacione`
--
ALTER TABLE `relacione`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `banco`
--
ALTER TABLE `banco`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `chamados`
--
ALTER TABLE `chamados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `relacione`
--
ALTER TABLE `relacione`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
