-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 26-Abr-2023 às 23:59
-- Versão do servidor: 8.0.31
-- versão do PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `clinica_medica`
--
CREATE DATABASE IF NOT EXISTS `clinica_medica` DEFAULT CHARACTER SET utf16 COLLATE utf16_swedish_ci;
USE `clinica_medica`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) COLLATE utf16_swedish_ci NOT NULL,
  `rg` varchar(15) COLLATE utf16_swedish_ci NOT NULL,
  `orgao_emissor` varchar(20) COLLATE utf16_swedish_ci NOT NULL,
  `cpf` varchar(14) COLLATE utf16_swedish_ci NOT NULL,
  `endereco` varchar(50) COLLATE utf16_swedish_ci NOT NULL,
  `complemento` varchar(20) COLLATE utf16_swedish_ci DEFAULT NULL,
  `bairro` varchar(30) COLLATE utf16_swedish_ci NOT NULL,
  `cidade` varchar(30) COLLATE utf16_swedish_ci NOT NULL,
  `estado` char(30) CHARACTER SET utf16 COLLATE utf16_swedish_ci NOT NULL,
  `telefone` varchar(14) COLLATE utf16_swedish_ci NOT NULL,
  `celular` varchar(14) COLLATE utf16_swedish_ci DEFAULT NULL,
  `ctps` varchar(15) COLLATE utf16_swedish_ci DEFAULT NULL,
  `pis` varchar(15) COLLATE utf16_swedish_ci DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf16 COLLATE=utf16_swedish_ci;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `rg`, `orgao_emissor`, `cpf`, `endereco`, `complemento`, `bairro`, `cidade`, `estado`, `telefone`, `celular`, `ctps`, `pis`, `data_nascimento`) VALUES
(47, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(45, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(46, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(43, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(60, 'João guilherme', 'MG 11807188', 'SSP', '051.909.877-12', 'Kumarama', NULL, 'Ideal', 'Araguari', 'MG', '', '(34)992593025', '123123123123', '3253535353535', '1981-06-26'),
(50, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(51, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(52, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(53, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(54, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(55, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(56, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(57, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(58, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05'),
(59, 'João ricardo marcos', '11.807.174-8', 'SSP', '999.999.999-85', 'Rua Francisco xavier', NULL, 'Kumarama', 'Araguari', 'Minas gerais', '(34)33214569', '(34)99259-3025', '142536789', '362514987', '2023-04-05');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
