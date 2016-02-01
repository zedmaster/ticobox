-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 01, 2016 at 12:07 AM
-- Server version: 10.0.22-MariaDB-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.1

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tico_box`
--

-- --------------------------------------------------------

--
-- Table structure for table `configuracao`
--

DROP TABLE IF EXISTS `configuracao`;
CREATE TABLE IF NOT EXISTS `configuracao` (
  `nome` varchar(45) NOT NULL,
  `valor` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `configuracao`
--

INSERT INTO `configuracao` (`nome`, `valor`) VALUES
('data_sync', NULL),
('id_empresa', NULL),
('id_ticobox', NULL),
('logo_empresa', NULL),
('nome_empresa', NULL),
('valor_unitario', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessao`
--

DROP TABLE IF EXISTS `sessao`;
CREATE TABLE IF NOT EXISTS `sessao` (
  `id_sessao` int(11) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `ac_inicio` datetime DEFAULT NULL,
  `ac_fim` datetime DEFAULT NULL,
  `pago` tinyint(4) DEFAULT NULL,
  `data_pagamento` datetime DEFAULT NULL,
  `total_tempo` datetime DEFAULT NULL,
  `valor_unitario` decimal(10,2) DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `valor_desconto` decimal(10,2) DEFAULT NULL,
  `valor_final` decimal(10,2) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `mac` varchar(45) DEFAULT NULL,
  `equipamento` varchar(255) DEFAULT NULL,
  `id_operador` int(11) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  `data_delete` varchar(45) DEFAULT NULL,
  `isdel` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL,
  `id_usuario_tipo` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `rg` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `telefone` varchar(45) DEFAULT NULL,
  `celular` varchar(45) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL,
  `data_atualizacao` datetime DEFAULT NULL,
  `data_delete` datetime DEFAULT NULL,
  `isdel` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_usuario_tipo`, `nome`, `cpf`, `rg`, `email`, `senha`, `telefone`, `celular`, `data_cadastro`, `data_atualizacao`, `data_delete`, `isdel`) VALUES
(1, 1, 'Alexandre Ferreira Martins', '03102720922', NULL, 'zedmaster@gmail.com', '123', '', '', '2015-11-26 00:47:29', NULL, NULL, 0),
(2, 2, 'Admin', '', NULL, 'zedlist@gmail.com', '123', '', '', '2015-11-26 00:47:29', NULL, NULL, 0),
(3, 4, 'Caixa', '', NULL, 'caixa@zed.net.br', '123', '', '', '2015-11-26 00:47:29', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuario_tipo`
--

DROP TABLE IF EXISTS `usuario_tipo`;
CREATE TABLE IF NOT EXISTS `usuario_tipo` (
  `id_usuario_tipo` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario_tipo`
--

INSERT INTO `usuario_tipo` (`id_usuario_tipo`, `nome`) VALUES
(1, 'Cliente'),
(2, 'Admin'),
(3, 'Operador'),
(4, 'Caixa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `configuracao`
--
ALTER TABLE `configuracao`
  ADD PRIMARY KEY (`nome`);

--
-- Indexes for table `sessao`
--
ALTER TABLE `sessao`
  ADD PRIMARY KEY (`id_sessao`),
  ADD KEY `fk_sessao_1_idx` (`id_usuario`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `fk_usuario_1_idx` (`id_usuario_tipo`);

--
-- Indexes for table `usuario_tipo`
--
ALTER TABLE `usuario_tipo`
  ADD PRIMARY KEY (`id_usuario_tipo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sessao`
--
ALTER TABLE `sessao`
  MODIFY `id_sessao` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `usuario_tipo`
--
ALTER TABLE `usuario_tipo`
  MODIFY `id_usuario_tipo` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `sessao`
--
ALTER TABLE `sessao`
  ADD CONSTRAINT `fk_sessao_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `fk_usuario_1` FOREIGN KEY (`id_usuario_tipo`) REFERENCES `usuario_tipo` (`id_usuario_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
