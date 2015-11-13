-- MySQL Workbench Synchronization
-- Generated: 2015-11-12 15:51
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: uzed

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE TABLE IF NOT EXISTS `tico_box`.`usuario` (
  `id_usuario` INT(11) NOT NULL,
  `id_usuario_tipo` INT(11) NULL DEFAULT NULL,
  `nome` VARCHAR(255) NULL DEFAULT NULL,
  `cpf` VARCHAR(45) NULL DEFAULT NULL,
  `rg` VARCHAR(45) NULL DEFAULT NULL,
  `email` VARCHAR(255) NULL DEFAULT NULL,
  `senha` VARCHAR(45) NULL DEFAULT NULL,
  `telefone` VARCHAR(45) NULL DEFAULT NULL,
  `celular` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  INDEX `fk_usuario_1_idx` (`id_usuario_tipo` ASC),
  CONSTRAINT `fk_usuario_1`
    FOREIGN KEY (`id_usuario_tipo`)
    REFERENCES `tico_box`.`usuario_tipo` (`id_usuario_tipo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `tico_box`.`sessao` (
  `id_sessao` INT(11) NOT NULL,
  `key` VARCHAR(255) NULL DEFAULT NULL,
  `id_usuario` INT(11) NULL DEFAULT NULL,
  `ac_inicio` DATETIME NULL DEFAULT NULL,
  `ac_fim` DATETIME NULL DEFAULT NULL,
  `pago` TINYINT(4) NULL DEFAULT NULL,
  `data_pagamento` DATETIME NULL DEFAULT NULL,
  `total_tempo` DATETIME NULL DEFAULT NULL,
  `valor_unitario` DECIMAL(10,2) NULL DEFAULT NULL,
  `valor_total` DECIMAL(10,2) NULL DEFAULT NULL,
  `valor_desconto` DECIMAL(10,2) NULL DEFAULT NULL,
  `valor_final` DECIMAL(10,2) NULL DEFAULT NULL,
  `ip` VARCHAR(45) NULL DEFAULT NULL,
  `mac` VARCHAR(45) NULL DEFAULT NULL,
  `equipamento` VARCHAR(255) NULL DEFAULT NULL,
  `id_operador` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_sessao`),
  INDEX `fk_sessao_1_idx` (`id_usuario` ASC),
  CONSTRAINT `fk_sessao_1`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `tico_box`.`usuario` (`id_usuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `tico_box`.`configuracao` (
  `nome` VARCHAR(45) NOT NULL,
  `valor` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`nome`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `tico_box`.`usuario_tipo` (
  `id_usuario_tipo` INT(11) NOT NULL,
  `nome` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuario_tipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
