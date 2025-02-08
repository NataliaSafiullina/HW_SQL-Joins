-- mysql --

CREATE TABLE IF NOT EXISTS `netology`.`orders` (
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `date` DATE NOT NULL,
    `customer_id` INT UNSIGNED,
    `product_name` VARCHAR(255),
    `amount` DECIMAL(9,2),
    PRIMARY KEY (`id`),
    FOREIGN KEY (`customer_id`) REFERENCES `netology`.`customers`(`id`)

);

INSERT INTO `netology`.`orders`
SET 
    date='2025-02-06',
    customer_id=(select id from netology.customers where surname = 'Wolf'), 
    product_name='ice cream',
    amount=3;

INSERT INTO `netology`.`orders`
SET 
    date='2025-02-05',
    customer_id=(select id from netology.customers where surname = 'Rabbit'), 
    product_name='tomato',
    amount=5.5;

INSERT INTO `netology`.`orders`
SET 
    date='2025-02-07',
    customer_id`=(select id from netology.customers where surname = 'Ivanov'), 
    product_name='milk',
    amount=5;

INSERT INTO `netology`.`orders`
SET 
    date='2025-02-08',
    customer_id=(select id from netology.customers where surname = 'Petrov'), 
    product_name='bread',
    amount=2;

INSERT INTO `netology`.`orders`
SET 
    date='2025-02-08',
    customer_id=(select id from netology.customers where surname = 'Sidorov'), 
    product_name='butter',
    amount=1;
