-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema shepherd
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `shepherd` DEFAULT CHARACTER SET utf8mb3 ;

USE `shepherd` ;

-- -----------------------------------------------------
-- Table `shepherd`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shepherd`.`users` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shepherd`.`tasks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shepherd`.`tasks` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NULL DEFAULT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `user_id_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `shepherd`.`users` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shepherd`.`tunes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shepherd`.`tunes` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `url` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `shepherd`.`alarms`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `shepherd`.`alarms` (
  `id` INT NOT NULL,
  `description` VARCHAR(45) NULL DEFAULT NULL,
  `time` DATETIME NOT NULL,
  `task_id` INT NOT NULL,
  `tune_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `task_id_idx` (`task_id` ASC) VISIBLE,
  INDEX `tune_id_idx` (`tune_id` ASC) VISIBLE,
  CONSTRAINT `task_id`
    FOREIGN KEY (`task_id`)
    REFERENCES `shepherd`.`tasks` (`id`),
  CONSTRAINT `tune_id`
    FOREIGN KEY (`tune_id`)
    REFERENCES `shepherd`.`tunes` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
