CREATE TABLE IF NOT EXISTS `shepherd`.`tunes` (
    `id` INT NOT NULL,
    `name` VARCHAR(45) NOT NULL,
    `url` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb3;