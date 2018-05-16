-- MySQL Script generated by MySQL Workbench
-- Wed May  9 21:29:07 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `bd_loja_roupas` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `bd_loja_roupas` DEFAULT CHARACTER SET utf8 ;
USE `bd_loja_roupas` ;

-- -----------------------------------------------------
-- Table `bd_loja_roupas`.`cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bd_loja_roupas`.`cliente` ;

CREATE TABLE IF NOT EXISTS `bd_loja_roupas`.`cliente` (
  `id_cliente` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome_cliente` VARCHAR(45) NOT NULL,
  `sexo_cliente` VARCHAR(10) NOT NULL,
  `rg_cliente` VARCHAR(15) NOT NULL,
  `cpf_cliente` VARCHAR(15) NOT NULL,
  `data_nasc_cliente` DATE NOT NULL,
  `email_cliente` VARCHAR(100) NULL,
  `celular_cliente` VARCHAR(11) NOT NULL,
  `telefone_cliente` VARCHAR(11) NOT NULL,
  `data_cadastro_cliente` DATE NOT NULL,
  `enable` TINYINT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE INDEX `id_cliente_UNIQUE` (`id_cliente` ASC),
  UNIQUE INDEX `rg_cliente_UNIQUE` (`rg_cliente` ASC),
  UNIQUE INDEX `cpf_cliente_UNIQUE` (`cpf_cliente` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_loja_roupas`.`end_cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bd_loja_roupas`.`end_cliente` ;

CREATE TABLE IF NOT EXISTS `bd_loja_roupas`.`end_cliente` (
  `rua_cliente` VARCHAR(150) NOT NULL,
  `numero_cliente` VARCHAR(5) NOT NULL,
  `bairro_cliente` VARCHAR(50) NOT NULL,
  `cidade_cliente` VARCHAR(20) NOT NULL,
  `uf_cliente` VARCHAR(2) NOT NULL,
  `cep_cliente` INT NOT NULL,
  `complemento_cliente` VARCHAR(45) NULL,
  `end_cliente_id_cliente` INT UNSIGNED NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_loja_roupas`.`produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bd_loja_roupas`.`produto` ;

CREATE TABLE IF NOT EXISTS `bd_loja_roupas`.`produto` (
  `id_produto` INT NOT NULL AUTO_INCREMENT,
  `nome_produto` VARCHAR(45) NOT NULL,
  `departamento_produto` VARCHAR(15) NOT NULL,
  `cor` VARCHAR(45) NOT NULL,
  `tamanho_produto` VARCHAR(1) NOT NULL,
  `descricao_produto` VARCHAR(100) NULL,
  `preco_produto` VARCHAR(45) NOT NULL,
  `quant_estoque_produto` INT UNSIGNED NOT NULL,
  `data_cadastro_produto` DATE NOT NULL,
  `enable` TINYINT NULL,
  PRIMARY KEY (`id_produto`),
  UNIQUE INDEX `id_produto_UNIQUE` (`id_produto` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_loja_roupas`.`venda`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bd_loja_roupas`.`venda` ;

CREATE TABLE IF NOT EXISTS `bd_loja_roupas`.`venda` (
  `id_cliente` INT UNSIGNED NOT NULL,
  `data_venda` DATE NOT NULL,
  `enable` TINYINT NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `bd_loja_roupas`.`itemVenda`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `bd_loja_roupas`.`itemVenda` ;

CREATE TABLE IF NOT EXISTS `bd_loja_roupas`.`itemVenda` (
  `venda_id_cliente` INT UNSIGNED NOT NULL,
  `venda_id_produto` INT NOT NULL,
  `quantidade_produto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`venda_id_cliente`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
