CREATE DATABASE IF NOT EXISTS `nexusphp` COLLATE utf8_unicode_ci;
CREATE USER IF NOT EXISTS 'nexusphp'@'%' IDENTIFIED BY 'nexusphp';
GRANT ALL PRIVILEGES ON `nexusphp`.* TO 'nexusphp'@'%';
USE `nexusphp`;