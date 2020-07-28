

CREATE SCHEMA IF NOT EXISTS `controle_hackat_` DEFAULT CHARACTER SET utf8 ;
USE `controle_hackat_`;

CREATE TABLE IF NOT EXISTS `tb_usuario` (
  `id` INT NOT NULL auto_increment unique,
  `nome` VARCHAR(160) NOT NULL,
  `matricula` varchar(45) NOT NULL unique,
  `cargo` varchar(45) Not Null,
  `observacoes` text,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `tb_naj` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `naj` VARCHAR(160) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `tb_senha` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `senha` VARCHAR(45) NOT NULL,
  `tipo_senha` varchar(45) NOT null,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `tb_login` (
  `id` INT NOT NULL auto_increment unique,
  `nome` VARCHAR(160) NOT NULL,
  `matricula` varchar(45) NOT NULL,
  `login` varchar(45) Not Null,
  `senha` varchar(45) Not Null,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO tb_login(nome, matricula, login, senha)
values('ADMINISTRADOR','00001','ADM','MASTER');