CREATE TABLE IF NOT EXISTS `shepherd`.`mental_health_resources` (
    `id` INT NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `description` VARCHAR(200) NULL DEFAULT NULL,
    `url` VARCHAR(200) NOT NULL,
    PRIMARY KEY (`id`))
    ENGINE = InnoDB
    DEFAULT CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_0900_ai_ci;