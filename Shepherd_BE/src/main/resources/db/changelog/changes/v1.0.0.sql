CREATE SCHEMA IF NOT EXISTS `shepherd` DEFAULT CHARACTER SET utf8mb3 ;

CREATE TABLE IF NOT EXISTS `shepherd`.`users` (
                                                  `id` INT NOT NULL,
                                                  `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb3;

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

CREATE TABLE IF NOT EXISTS `shepherd`.`tunes` (
                                                  `id` INT NOT NULL,
                                                  `name` VARCHAR(45) NOT NULL,
    `url` VARCHAR(100) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb3;

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

CREATE TABLE IF NOT EXISTS `shepherd`.`mental_health_resources` (
                                                                    `id` INT NOT NULL,
                                                                    `name` VARCHAR(100) NOT NULL,
    `description` VARCHAR(200) NULL DEFAULT NULL,
    `url` VARCHAR(200) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;

CREATE TABLE IF NOT EXISTS `shepherd`.`privacy_settings` (
    `user_id` INT NOT NULL,
    `show_online_status` TINYINT(1) NULL DEFAULT NULL,
    `allow_data_collection` TINYINT(1) NULL DEFAULT NULL,
    `share_personal_info` TINYINT(1) NULL DEFAULT NULL,
    PRIMARY KEY (`user_id`),
    CONSTRAINT `privacy_settings_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `shepherd`.`users` (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb3;

CREATE TABLE IF NOT EXISTS `shepherd`.`time_management_settings` (
    `user_id` INT NOT NULL,
    `daily_usage_limit` INT NULL DEFAULT NULL,
    `break_reminder_interval` INT NULL DEFAULT NULL,
    `automatic_shutdown_time` TIME NULL DEFAULT NULL,
    PRIMARY KEY (`user_id`),
    CONSTRAINT `time_management_settings_ibfk_1`
    FOREIGN KEY (`user_id`)
    REFERENCES `shepherd`.`users` (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

