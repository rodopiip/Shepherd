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