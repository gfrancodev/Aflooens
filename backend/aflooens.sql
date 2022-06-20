-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20-Jun-2022 às 04:49
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aflooens`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `automakers`
--

CREATE TABLE `automakers` (
  `automaker_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `automakers`
--

INSERT INTO `automakers` (`automaker_id`, `name`) VALUES
(3, 'BMW'),
(1, 'CHEVROLET'),
(2, 'FIAT'),
(4, 'VOLKSWAGEN');

-- --------------------------------------------------------

--
-- Estrutura da tabela `companies`
--

CREATE TABLE `companies` (
  `companie_id` int(11) NOT NULL,
  `name_fantasy` text NOT NULL,
  `corporate_name` text NOT NULL,
  `cnpj` varchar(14) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `zip` varchar(7) NOT NULL,
  `street` varchar(255) NOT NULL,
  `number` int(11) NOT NULL,
  `district` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `companies`
--

INSERT INTO `companies` (`companie_id`, `name_fantasy`, `corporate_name`, `cnpj`, `email`, `phone`, `zip`, `street`, `number`, `district`, `state`, `city`) VALUES
(3, 'FIORI', 'LOCADORA FIORI LTDA', '08228146000281', 'contato@fiori.com.br', '51982374567', '4130050', 'ROD BR-324 (SENTIDO FSA)', 5622, 'VALERIA', 'BA', 'SALVADOR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `companie_id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `finish_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `models`
--

CREATE TABLE `models` (
  `model_id` int(11) NOT NULL,
  `automaker_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `models`
--

INSERT INTO `models` (`model_id`, `automaker_id`, `name`) VALUES
(1, 2, 'UNO'),
(2, 2, 'SEDAN'),
(3, 2, 'PICKUP'),
(4, 2, 'ARGO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vehicles`
--

CREATE TABLE `vehicles` (
  `vehicle_id` int(11) NOT NULL,
  `model_id` int(11) NOT NULL,
  `ports_number` int(11) NOT NULL,
  `color` varchar(14) NOT NULL,
  `automaker_id` int(11) NOT NULL,
  `year_model` int(4) NOT NULL,
  `year_manufacture` int(4) NOT NULL,
  `board` varchar(8) NOT NULL,
  `chassi` varchar(17) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vehicles`
--

INSERT INTO `vehicles` (`vehicle_id`, `model_id`, `ports_number`, `color`, `automaker_id`, `year_model`, `year_manufacture`, `board`, `chassi`, `created_at`) VALUES
(14, 1, 4, 'PRETO', 2, 2020, 2018, 'CUI2564', '7cjbhZA4CR6AN8162', '2020-05-11'),
(16, 1, 4, 'PRETO', 2, 2020, 2018, 'OFM8197', '14pbjdVDcx7Ayb842', '2020-05-11'),
(19, 1, 4, 'PRETO', 2, 2020, 2018, 'CPY2889', '5F1KuMC7PyhD47720', '2020-05-11'),
(21, 1, 4, 'PRETO', 2, 2020, 2018, 'AYH2382', '5AxANGLsxtR 1Y822', '2020-05-11'),
(24, 1, 4, 'PRETO', 2, 2020, 2018, 'DPQ3679', '60m7JCGA2u2 37827', '2020-05-11');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `automakers`
--
ALTER TABLE `automakers`
  ADD PRIMARY KEY (`automaker_id`),
  ADD UNIQUE KEY `automaker_unique` (`name`);

--
-- Índices para tabela `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`companie_id`),
  ADD UNIQUE KEY `companie_unique` (`cnpj`);

--
-- Índices para tabela `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`),
  ADD UNIQUE KEY `idx_logs_0` (`companie_id`),
  ADD UNIQUE KEY `idx_logs_3` (`vehicle_id`);

--
-- Índices para tabela `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`model_id`),
  ADD UNIQUE KEY `model_name_unique` (`name`);

--
-- Índices para tabela `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`vehicle_id`),
  ADD UNIQUE KEY `chassi_unique` (`chassi`),
  ADD UNIQUE KEY `board_unique` (`board`),
  ADD KEY `fk_vehicles_models` (`model_id`),
  ADD KEY `fk_vehicles_automakers` (`automaker_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `automakers`
--
ALTER TABLE `automakers`
  MODIFY `automaker_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `companies`
--
ALTER TABLE `companies`
  MODIFY `companie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `models`
--
ALTER TABLE `models`
  MODIFY `model_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `fk_vehicles_automakers` FOREIGN KEY (`automaker_id`) REFERENCES `automakers` (`automaker_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_vehicles_models` FOREIGN KEY (`model_id`) REFERENCES `models` (`model_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
