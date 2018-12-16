CREATE DATABASE IF NOT EXISTS db34 DEFAULT CHARACTER SET utf8;

USE db34;



CREATE TABLE if not exists customer (
  customer_id INT NOT NULL,
  store_id VARCHAR(45) NULL,
  first_name VARCHAR(45) NULL,
  last_name VARCHAR(45) NULL,
  email VARCHAR(45) NULL,
  address_id INT NULL,
  active INT NULL DEFAULT 0,
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (customer_id)
  );
  
INSERT INTO `db34`.`customer` (`customer_id`, `store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`) VALUES ('1', '1', 'MARY', 'SMITH', 'ABC@111.COM', '5', '1');
INSERT INTO `db34`.`customer` (`customer_id`, `store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`) VALUES ('2', '1', 'PATRICIA', 'JOHNSON', 'ABC@111.COM', '6', '1');
INSERT INTO `db34`.`customer` (`customer_id`, `store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`) VALUES ('3', '1', 'LINDA', 'WILLIAMS', 'ABC@111.COM', '7', '1');
INSERT INTO `db34`.`customer` (`customer_id`, `store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`) VALUES ('4', '2', 'BARBARA', 'JONES', 'ABC@111.COM', '8', '1');
INSERT INTO `db34`.`customer` (`customer_id`, `store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`) VALUES ('5', '1', 'ELIZABETH', 'BROWN', 'ABC@111.COM', '9', '1');
INSERT INTO `db34`.`customer` (`customer_id`, `store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`) VALUES ('6', '2', 'JENNIFER', 'DAVIS', 'ABC@111.COM', '10', '1');
INSERT INTO `db34`.`customer` (`customer_id`, `store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`) VALUES ('7', '1', 'MARIA', 'MILLER', 'ABC@111.COM', '11', '1');
INSERT INTO `db34`.`customer` (`customer_id`, `store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`) VALUES ('8', '2', 'SUSAN', 'WILSON', 'ABC@111.COM', '12', '1');
INSERT INTO `db34`.`customer` (`customer_id`, `store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`) VALUES ('9', '2', 'MARGARET', 'MOORE', 'ABC@111.COM', '13', '1');
INSERT INTO `db34`.`customer` (`customer_id`, `store_id`, `first_name`, `last_name`, `email`, `address_id`, `active`) VALUES ('10', '1', 'DOROTHY', 'TAYLOR', 'ABC@111.COM', '14', '1');


CREATE TABLE `db34`.`address` (
  `address_id` INT NOT NULL,
  `address` VARCHAR(45) NULL,
  `address2` VARCHAR(45) NULL,
  `district` VARCHAR(45) NULL,
  `city_id` INT NULL,
  `postal_code` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  PRIMARY KEY (`address_id`));



INSERT INTO `db34`.`address` (`address_id`, `address`, `district`, `city_id`) VALUES ('1', '47 MySakila Drive', 'Alberta', '300');
INSERT INTO `db34`.`address` (`address_id`, `address`, `district`, `city_id`) VALUES ('2', '28 MySQL Boulevard', 'QLD', '576');
INSERT INTO `db34`.`address` (`address_id`, `address`, `district`, `city_id`) VALUES ('3', '23 Workhaven Lane', 'Alberta', '300');
INSERT INTO `db34`.`address` (`address_id`, `address`, `district`, `city_id`, `phone`) VALUES ('4', '1411 Lilydale drive', 'QLD', '576', '111111');
INSERT INTO `db34`.`address` (`address_id`, `address`, `district`, `city_id`, `postal_code`, `phone`) VALUES ('5', '1913 Hanoi Way', 'Nagasaki', '463', '35200', '111111');
INSERT INTO `db34`.`address` (`address_id`, `address`, `district`, `city_id`, `postal_code`, `phone`) VALUES ('6', '1121 Loja Avenue', 'Calforria', '449', '17886', '11111');
INSERT INTO `db34`.`address` (`address_id`, `address`, `district`, `city_id`, `postal_code`, `phone`) VALUES ('7', '692 Joliet Street', 'Attika', '38', '83579', '1111');
INSERT INTO `db34`.`address` (`address_id`, `address`, `district`, `city_id`, `postal_code`, `phone`) VALUES ('8', '1566 Inegl Manor', 'Mandalay', '349', '53561', '111');
INSERT INTO `db34`.`address` (`address_id`, `address`, `district`, `city_id`, `postal_code`, `phone`) VALUES ('9', '53 ldfu Parkway', 'Nantou', '361', '42399', '111');
INSERT INTO `db34`.`address` (`address_id`, `address`, `district`, `city_id`, `postal_code`, `phone`) VALUES ('10', '1795 Santiago de Compostela Way', 'Texas', '295', '18743', '1111');





