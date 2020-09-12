-- -----------------------------------------------------
-- Schema team-management-app
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `team-management-app`;

CREATE SCHEMA `team-management-app`;
USE `team-management-app` ;

-- -----------------------------------------------------
-- Table `team-management-app`.`position`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `team-management-app`.`position` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `position_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `team-management-app`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `team-management-app`.`employee` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) DEFAULT NULL,
  `phone` VARCHAR(15) DEFAULT NULL,
  `car` VARCHAR(255) DEFAULT NULL,
  `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `position_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_position` (`position_id`),
  CONSTRAINT `fk_position` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Fill the tables
-- -----------------------------------------------------

INSERT INTO position (position_name) VALUES ('техник отдела информатизации и связи');
INSERT INTO position (position_name) VALUES ('инженер 1 разряда отдела информатизации и связи');
INSERT INTO position (position_name) VALUES ('инженер 2 разряда отдела информатизации и связи');
INSERT INTO position (position_name) VALUES ('инженер 3 разряда отдела информатизации и связи');

INSERT INTO employee (name, phone, car, position_id, date_created)
VALUES ('Говорушкин Евгений Михайлович', '8-999-999-99-99', 'Citroen Jumpy Т953ОУ178', 4, NOW());

INSERT INTO employee (name, phone, car, position_id, date_created)
VALUES ('Кысса Евгений Иванович', '8-999-999-99-99', 'Citroen Jumpy Т953ОУ178', 4, NOW());

INSERT INTO employee (name, phone, car, position_id, date_created)
VALUES ('Волков Виктор Сергеевич', '8-999-999-99-99', 'Citroen Jumpy Т953ОУ178', 4, NOW());

INSERT INTO employee (name, phone, car, position_id, date_created)
VALUES ('Бёрдов Александр Викторович', '8-999-999-99-99', 'Citroen Jumpy Т953ОУ178', 4, NOW());

INSERT INTO employee (name, phone, car, position_id, date_created)
VALUES ('Степуленок Сергей Васильевич', '8-999-999-99-99', 'Citroen Jumpy В865ХО178', 4, NOW());

INSERT INTO employee (name, phone, car, position_id, date_created)
VALUES ('Гаврилюк Иван Николаевич', '8-999-999-99-99', 'Citroen Jumpy В865ХО178', 4, NOW());

INSERT INTO employee (name, phone, car, position_id, date_created)
VALUES ('Борков Александр Николаевич', '8-999-999-99-99', 'Citroen Jumpy В865ХО178', 4, NOW());

INSERT INTO employee (name, phone, car, position_id, date_created)
VALUES ('Югансон Станислав Викторович', '8-999-999-99-99', 'Citroen Jumpy В865ХО178', 4, NOW());

INSERT INTO employee (name, phone, car, position_id, date_created)
VALUES ('Павлов Андрей Александрович', '8-999-999-99-99', 'Peugeot Т559АТ178', 4, NOW());

INSERT INTO employee (name, phone, car, position_id, date_created)
VALUES ('Сушков Алексей Владимирович', '8-921-928-38-55', 'Peugeot Т559АТ178', 4, NOW());

INSERT INTO employee (name, phone, car, position_id, date_created)
VALUES ('Мифтахов Александр Федорович', '8-999-999-99-99', 'Peugeot Т559АТ178', 4, NOW());

INSERT INTO employee (name, phone, car, position_id, date_created)
VALUES ('Катуркин Алексей Николаевич', '8-999-999-99-99', 'Peugeot Т559АТ178', 4, NOW());
