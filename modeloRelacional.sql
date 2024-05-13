-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'users'
-- Tabela com as informações gerais de login dos usuários: voluntários e administradores
-- ---

DROP TABLE IF EXISTS `users`;
		
CREATE TABLE `users` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR(30) NULL DEFAULT 'NOT NULL',
  `email` VARCHAR(30) NULL DEFAULT 'NOT NULL',
  `password` MEDIUMTEXT(15) NULL DEFAULT 'NOT NULL',
  PRIMARY KEY (`id`)
) COMMENT 'Tabela com as informações gerais de login dos usuários: volu';

-- ---
-- Table 'reasons_to_have_dog'
-- Tabela que guardará informações sobre as razões de parte dos voluntários desejarem ter cão
-- ---

DROP TABLE IF EXISTS `reasons_to_have_dog`;
		
CREATE TABLE `reasons_to_have_dog` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `company_for_kids` BINARY(1) NULL DEFAULT NULL,
  `company_for_adults` BINARY(1) NULL DEFAULT NULL,
  `appearence` BINARY(1) NULL DEFAULT NULL,
  `company_for_dogs` BINARY(1) NULL DEFAULT NULL,
  `responsability_for_kids` BINARY(1) NULL DEFAULT NULL,
  `friends_have` BINARY(1) NULL DEFAULT NULL,
  `security` BINARY(1) NULL DEFAULT NULL,
  `help_to_friend_who_couldnt_keep` BINARY(1) NULL DEFAULT NULL,
  `save_my_life` BINARY(1) NULL DEFAULT NULL,
  `cuteness` BINARY(1) NULL DEFAULT NULL,
  `chose_me` BINARY(1) NULL DEFAULT NULL,
  `gift` BINARY(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela que guardará informações sobre as razões de parte dos';

-- ---
-- Table 'resenha'
-- Tabela com informações específicas dos usuários, após fazerem login
-- ---

DROP TABLE IF EXISTS `resenha`;
		
CREATE TABLE `resenha` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `age` INTEGER(4) NULL DEFAULT NULL,
  `sex` VARCHAR(15) NULL DEFAULT NULL,
  `scholarity` VARCHAR(15) NULL DEFAULT NULL,
  `house_type` VARCHAR(15) NULL DEFAULT NULL,
  `family_constitution` VARCHAR(15) NULL DEFAULT NULL,
  `monthly_income` VARCHAR(15) NULL DEFAULT NULL,
  `people_in_house` INTEGER(4) NULL DEFAULT NULL,
  `country` VARCHAR(15) NULL DEFAULT NULL,
  `state` VARCHAR(15) NULL DEFAULT NULL,
  `city` VARCHAR(15) NULL DEFAULT NULL,
  `neighborhood` VARCHAR(15) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela com informações específicas dos usuários, após fazere';

-- ---
-- Table 'has_dog'
-- Tabela com as informações dos voluntários que possuem cachorro
-- ---

DROP TABLE IF EXISTS `has_dog`;
		
CREATE TABLE `has_dog` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog_name` VARCHAR(15) NULL DEFAULT NULL,
  `dog_sex` VARCHAR(15) NULL DEFAULT NULL,
  `who_owns` VARCHAR(15) NULL DEFAULT NULL,
  `is_castrated` VARCHAR(15) NULL DEFAULT NULL,
  `castration_date` DATE(15) NULL DEFAULT NULL,
  `time_with_dog` TIME(4) NULL DEFAULT NULL,
  `first_dog` VARCHAR(15) NULL DEFAULT NULL,
  `other_pets` VARCHAR(15) NULL DEFAULT NULL,
  `number_other_pets` INTEGER(4) NULL DEFAULT NULL,
  `dog_age` INTEGER(4) NULL DEFAULT NULL,
  `dog_type_breed` VARCHAR(15) NULL DEFAULT NULL,
  `dog_breed` VARCHAR(15) NULL DEFAULT NULL,
  `dog_origin` VARCHAR(15) NULL DEFAULT NULL,
  `paid_to_have` BINARY(1) NULL DEFAULT NULL,
  `age_dog_arrived` TIME(15) NULL DEFAULT NULL,
  `dog_personality` MEDIUMTEXT(60) NULL DEFAULT NULL,
  `id_reasons_to_have_dog` INTEGER NULL DEFAULT NULL,
  `thins_you_like_in_dog` MEDIUMTEXT(60) NULL DEFAULT NULL,
  `people_involved` MEDIUMTEXT(30) NULL DEFAULT NULL,
  `couldnt_keep_dog_before` BINARY(1) NULL DEFAULT NULL,
  `reasons_to_not_keep` MEDIUMTEXT(60) NULL DEFAULT NULL,
  `number_vet_visits` INTEGER(4) NULL DEFAULT NULL,
  `adopt_your_dog` MEDIUMTEXT(30) NULL DEFAULT NULL,
  `contact_permission` BINARY(1) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela com as informações dos voluntários que possuem cachor';

-- ---
-- Table 'had_dog'
-- Tabela com as informações dos voluntáros que já tiveram cão, mas hoje não têm
-- ---

DROP TABLE IF EXISTS `had_dog`;
		
CREATE TABLE `had_dog` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog_name` VARCHAR(15) NULL DEFAULT NULL,
  `belonged_to_whom` VARCHAR(15) NULL DEFAULT NULL,
  `dog_personality` MEDIUMTEXT(60) NULL DEFAULT NULL,
  `time_with_dog` TIME(15) NULL DEFAULT NULL,
  `first_dog` VARBINARY(1) NULL DEFAULT NULL,
  `number_other_pets` INTEGER(4) NULL DEFAULT NULL,
  `kind_other_pets` VARCHAR(15) NULL DEFAULT NULL,
  `dogs_age` TIME(15) NULL DEFAULT NULL,
  `castrated` BINARY(1) NULL DEFAULT NULL,
  `castration_age` TIME(15) NULL DEFAULT NULL,
  `breed` VARCHAR(15) NULL DEFAULT NULL,
  `dog_origin` VARCHAR(15) NULL DEFAULT NULL,
  `paid_to_have` BINARY(1) NULL DEFAULT NULL,
  `id_reasons_to_have_dog` INTEGER NULL DEFAULT NULL,
  `dog_characteristics` MEDIUMTEXT(30) NULL DEFAULT NULL,
  `involved_in_naming` MEDIUMTEXT(30) NULL DEFAULT NULL,
  `favorite_initial_traits` MEDIUMTEXT(60) NULL DEFAULT NULL,
  `traits_not_liked` MEDIUMTEXT(60) NULL DEFAULT NULL,
  `number_vet_visits` INTEGER(4) NULL DEFAULT NULL,
  `visit_reason` MEDIUMTEXT(30) NULL DEFAULT NULL,
  `stopped_living_w_dog` DATE(15) NULL DEFAULT NULL,
  `stopped_live_w_dog_age` TIME(15) NULL DEFAULT NULL,
  `reason_stopped_living` MEDIUMTEXT(60) NULL DEFAULT NULL,
  `would_live_with_other_dog` BINARY(1) NULL DEFAULT NULL,
  `reason_live_w_other_dog` MEDIUMTEXT(60) NULL DEFAULT NULL,
  `contact_permission` BINARY(1) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela com as informações dos voluntáros que já tiveram cão,';

-- ---
-- Table 'want_dog'
-- Tabela que guardará as informações de quem teria um cachorro, mas nunca teve
-- ---

DROP TABLE IF EXISTS `want_dog`;
		
CREATE TABLE `want_dog` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `dog_size` VARCHAR(30) NULL DEFAULT NULL,
  `fur` VARCHAR(30) NULL DEFAULT NULL,
  `fur_color` VARCHAR(30) NULL DEFAULT NULL,
  `dog_sex` VARCHAR(15) NULL DEFAULT NULL,
  `dog_age` TIME(15) NULL DEFAULT NULL,
  `breed` VARCHAR(15) NULL DEFAULT NULL,
  `id_reasons_to_have_dog` INTEGER NULL DEFAULT NULL,
  `already_has_name` BINARY(1) NULL DEFAULT NULL,
  `possible_name` VARCHAR(15) NULL DEFAULT NULL,
  `name_reason` MEDIUMTEXT(60) NULL DEFAULT NULL,
  `reason_to_have` MEDIUMTEXT(60) NULL DEFAULT NULL,
  `date_would_have` DATE(15) NULL DEFAULT NULL,
  `wanted_personality` MEDIUMTEXT(60) NULL DEFAULT NULL,
  `searched_expenses` BINARY(1) NULL DEFAULT NULL,
  `expenses` INTEGER(4) NULL DEFAULT NULL,
  `contact_permission` BINARY(1) NULL DEFAULT NULL,
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela que guardará as informações de quem teria um cachorro';

-- ---
-- Table 'dont_want_dog'
-- Tabela que guarda as informações de quem não tem cão nem deseja ter
-- ---

DROP TABLE IF EXISTS `dont_want_dog`;
		
CREATE TABLE `dont_want_dog` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `reason` MEDIUMTEXT(120) NULL DEFAULT 'NOT NULL',
  `id_users` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) COMMENT 'Tabela que guarda as informações de quem não tem cão nem des';

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `users` ADD FOREIGN KEY (id) REFERENCES `resenha` (`id`);
ALTER TABLE `resenha` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `has_dog` ADD FOREIGN KEY (id_reasons_to_have_dog) REFERENCES `reasons_to_have_dog` (`id`);
ALTER TABLE `has_dog` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `had_dog` ADD FOREIGN KEY (id_reasons_to_have_dog) REFERENCES `reasons_to_have_dog` (`id`);
ALTER TABLE `had_dog` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `want_dog` ADD FOREIGN KEY (id_reasons_to_have_dog) REFERENCES `reasons_to_have_dog` (`id`);
ALTER TABLE `want_dog` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);
ALTER TABLE `dont_want_dog` ADD FOREIGN KEY (id_users) REFERENCES `users` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `users` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `reasons_to_have_dog` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `resenha` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `has_dog` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `had_dog` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `want_dog` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `dont_want_dog` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `users` (`id`,`name`,`email`,`password`) VALUES
-- ('','','','');
-- INSERT INTO `reasons_to_have_dog` (`id`,`company_for_kids`,`company_for_adults`,`appearence`,`company_for_dogs`,`responsability_for_kids`,`friends_have`,`security`,`help_to_friend_who_couldnt_keep`,`save_my_life`,`cuteness`,`chose_me`,`gift`) VALUES
-- ('','','','','','','','','','','','','');
-- INSERT INTO `resenha` (`id`,`age`,`sex`,`scholarity`,`house_type`,`family_constitution`,`monthly_income`,`people_in_house`,`country`,`state`,`city`,`neighborhood`,`id_users`) VALUES
-- ('','','','','','','','','','','','','');
-- INSERT INTO `has_dog` (`id`,`dog_name`,`dog_sex`,`who_owns`,`is_castrated`,`castration_date`,`time_with_dog`,`first_dog`,`other_pets`,`number_other_pets`,`dog_age`,`dog_type_breed`,`dog_breed`,`dog_origin`,`paid_to_have`,`age_dog_arrived`,`dog_personality`,`id_reasons_to_have_dog`,`thins_you_like_in_dog`,`people_involved`,`couldnt_keep_dog_before`,`reasons_to_not_keep`,`number_vet_visits`,`adopt_your_dog`,`contact_permission`,`id_users`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `had_dog` (`id`,`dog_name`,`belonged_to_whom`,`dog_personality`,`time_with_dog`,`first_dog`,`number_other_pets`,`kind_other_pets`,`dogs_age`,`castrated`,`castration_age`,`breed`,`dog_origin`,`paid_to_have`,`id_reasons_to_have_dog`,`dog_characteristics`,`involved_in_naming`,`favorite_initial_traits`,`traits_not_liked`,`number_vet_visits`,`visit_reason`,`stopped_living_w_dog`,`stopped_live_w_dog_age`,`reason_stopped_living`,`would_live_with_other_dog`,`reason_live_w_other_dog`,`contact_permission`,`id_users`) VALUES
-- ('','','','','','','','','','','','','','','','','','','','','','','','','','','','');
-- INSERT INTO `want_dog` (`id`,`dog_size`,`fur`,`fur_color`,`dog_sex`,`dog_age`,`breed`,`id_reasons_to_have_dog`,`already_has_name`,`possible_name`,`name_reason`,`reason_to_have`,`date_would_have`,`wanted_personality`,`searched_expenses`,`expenses`,`contact_permission`,`id_users`) VALUES
-- ('','','','','','','','','','','','','','','','','','');
-- INSERT INTO `dont_want_dog` (`id`,`reason`,`id_users`) VALUES
-- ('','','');