-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 06/03/2024 às 20:38
-- Versão do servidor: 8.0.36-0ubuntu0.22.04.1
-- Versão do PHP: 8.3.2-1+ubuntu22.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_convidados`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `convidados`
--

CREATE TABLE `convidados` (
  `id` int NOT NULL,
  `nome` text,
  `sobrenome` text,
  `idade` int DEFAULT NULL,
  `reserva` int DEFAULT NULL,
  `presenca` int DEFAULT NULL COMMENT '1-presente 2-ausente',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `convidados`
--

INSERT INTO `convidados` (`id`, `nome`, `sobrenome`, `idade`, `reserva`, `presenca`, `created_at`, `updated_at`) VALUES
(1, 'arthur', 'brito', 17, 1, 1, '2024-03-06 05:50:05', '2024-03-06 20:28:49'),
(3, 'Isabela', 'Bastos', 12, 1, 1, '2024-03-06 23:03:48', '2024-03-06 20:26:33'),
(4, 'Enzzo', 'Samuel', 19, 1, 1, '2024-03-06 23:03:50', '2024-03-06 20:26:36'),
(5, 'Nicholas ', 'Palermo', 21, 1, 1, '2024-03-06 23:03:50', '2024-03-06 20:26:40'),
(6, 'testHenrique', 'Souza', 18, 1, 1, '2024-03-06 23:03:50', '2024-03-06 20:26:48'),
(7, 'teste', 'teste', 20, 1, 1, '2024-03-06 23:03:51', '2024-03-06 23:04:11'),
(8, 'teste', 'teste', 20, 1, 1, '2024-03-06 23:03:51', '2024-03-06 23:04:12'),
(9, 'teste', 'teste', 20, 1, 1, '2024-03-06 23:03:51', '2024-03-06 23:04:13'),
(10, 'teste', 'teste', 20, 1, 1, '2024-03-06 23:03:51', '2024-03-06 23:04:13'),
(11, 'teste', 'teste', 20, 1, 1, '2024-03-06 23:03:51', '2024-03-06 23:04:47'),
(12, 'Rodofo', 'Aprigio', 20, 1, 1, '2024-03-06 23:03:51', '2024-03-06 20:28:29'),
(13, 'Julio', 'Balestrin', 20, 1, 1, '2024-03-06 23:03:52', '2024-03-06 20:28:13'),
(14, 'Maria', 'alice', 15, 1, 1, '2024-03-06 23:03:52', '2024-03-06 20:27:33'),
(15, 'Rodrigo', 'Soares', 59, 1, 1, '2024-03-06 23:03:52', '2024-03-06 20:27:57'),
(16, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:52', '2024-03-06 23:03:52'),
(17, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:52', '2024-03-06 23:03:52'),
(18, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:52', '2024-03-06 23:03:52'),
(19, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:53', '2024-03-06 23:03:53'),
(20, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:53', '2024-03-06 23:03:53'),
(21, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:53', '2024-03-06 23:03:53'),
(22, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:53', '2024-03-06 23:03:53'),
(23, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:53', '2024-03-06 23:03:53'),
(24, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:53', '2024-03-06 23:03:53'),
(25, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:54', '2024-03-06 23:03:54'),
(26, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:54', '2024-03-06 23:03:54'),
(27, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:55', '2024-03-06 23:03:55'),
(28, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:55', '2024-03-06 23:03:55'),
(29, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:55', '2024-03-06 23:03:55'),
(30, 'teste', 'teste', 20, 1, 1, '2024-03-06 23:03:55', '2024-03-06 23:04:57'),
(31, 'teste', 'teste', 20, 1, 1, '2024-03-06 23:03:55', '2024-03-06 23:04:54'),
(32, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:56', '2024-03-06 23:03:56'),
(33, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:56', '2024-03-06 23:03:56'),
(34, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:56', '2024-03-06 23:03:56'),
(35, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:56', '2024-03-06 23:03:56'),
(36, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:56', '2024-03-06 23:03:56'),
(37, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:56', '2024-03-06 23:03:56'),
(38, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:57', '2024-03-06 23:03:57'),
(39, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:57', '2024-03-06 23:03:57'),
(40, 'teste', 'teste', 20, 1, 2, '2024-03-06 23:03:57', '2024-03-06 23:03:57');

-- --------------------------------------------------------

--
-- Estrutura para tabela `reserva_cliente`
--

CREATE TABLE `reserva_cliente` (
  `id` int NOT NULL,
  `nome_local` text,
  `local` text,
  `nome_reserva` text,
  `dia_hora` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Despejando dados para a tabela `reserva_cliente`
--

INSERT INTO `reserva_cliente` (`id`, `nome_local`, `local`, `nome_reserva`, `dia_hora`, `created_at`, `updated_at`) VALUES
(1, 'Octo', 'Rua josé maciel neto 315', 'Arthur', '12 22:20 as 04:00', '2024-03-06 05:45:00', '2024-03-06 05:45:00');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `convidados`
--
ALTER TABLE `convidados`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `reserva_cliente`
--
ALTER TABLE `reserva_cliente`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `convidados`
--
ALTER TABLE `convidados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `reserva_cliente`
--
ALTER TABLE `reserva_cliente`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
