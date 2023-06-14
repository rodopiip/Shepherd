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