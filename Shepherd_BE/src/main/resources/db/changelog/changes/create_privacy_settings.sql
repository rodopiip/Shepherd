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