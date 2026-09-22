CREATE DATABASE `linkedin`;

USE `linkedin`

CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(32) NOT NULL,
    `last_name` VARCHAR(32) NOT NULL,
    `username` VARCHAR(32) NOT NULL UNIQUE,
    `password` VARCHAR(128) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `schools` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(64) NOT NULL,
    `type` ENUM('Primary', 'Secondary', 'Higher Education') NOT NULL,
    `location` VARCHAR(64),
    `year` YEAR,
    PRIMARY KEY(`id`)
);

CREATE TABLE `companies` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(64) NOT NULL,
    `industry` ENUM('Technology', 'Education', 'Business') NOT NULL,
    `location` VARCHAR(64),
    PRIMARY KEY(`id`)
);

CREATE TABLE `connections_people` (
    `user_id` INT,
    `friend_id` INT,
    PRIMARY KEY(`userid`, `friend_id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`friend_id`) REFERENCES `users`(`id`)
);

CREATE TABLE `connections_schools` (
    `user_id` INT,
    `school_id` INT,
    `start_date` DATE NOT NULL,
    `end_date` DATE,
    `degree` VARCHAR(64),
    PRIMARY KEY(`user_id`, `school_id`, `start_date`),
    FOREIGN KEY(`person_id`) REFERENCES `people`(`id`),
    FOREIGN KEY(`school_id`) REFERENCES `schools`(`id`)
);

CREATE TABLE `connections_companies` (
    `user_id` INT,
    `company_id` INT,
    `start_date` DATE NOT NULL,
    `end_date` DATE,
    `title` VARCHAR(64) NOT NULL,
    PRIMARY KEY(`user_id`, `company_id`, `start_date`),
    FOREIGN KEY(`user_id`) REFERENCES `people`(`id`),
    FOREIGN KEY(`company_id`) REFERENCES `companies`(`id`)
);
