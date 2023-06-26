CREATE TABLE IF NOT EXISTS `shepherd`.`users` (
                                                  `id` INT NOT NULL,
                                                  `username` VARCHAR(45) NOT NULL,
                                                  `password` VARCHAR(255) NOT NULL,
                                                  PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb3;