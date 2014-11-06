-- ----------------------------------------------------------------------------
-- MySQL Workbench Migration
-- Migrated Schemata: existcheck
-- Source Schemata: existcheck
-- Created: Wed Nov 05 15:06:59 2014
-- ----------------------------------------------------------------------------

SET FOREIGN_KEY_CHECKS = 0;;

-- ----------------------------------------------------------------------------
-- Schema existcheck
-- ----------------------------------------------------------------------------
DROP SCHEMA IF EXISTS `existcheck` ;
CREATE SCHEMA IF NOT EXISTS `existcheck` ;

-- ----------------------------------------------------------------------------
-- Table existcheck1.users
-- ----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS `existcheck`.`users` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) CHARACTER SET 'utf8' NOT NULL,
  `email` VARCHAR(255) CHARACTER SET 'utf8' NOT NULL,
  `created` DATE NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;
SET FOREIGN_KEY_CHECKS = 1;;
