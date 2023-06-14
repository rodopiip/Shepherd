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