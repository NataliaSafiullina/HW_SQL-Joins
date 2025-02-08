-- mysql --

CREATE TABLE IF NOT EXISTS `netology`.`customers` (
    `id`INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `surname` VARCHAR(255) NOT NULL,
    `age` INT NOT NULL CHECK (`age`>= 0),
    `phone_number` VARCHAR(20),
    PRIMARY KEY (`id`)
);

INSERT INTO `netology`.`customers`
(`name`, `surname`, `age`, `phone_number`)
VALUES
('Natasha','Wolf',33,'+75555555555'),
('Natasha','Rabbit',24,'+75553337777'),
('John','Impala',30,'+75556664433'),
('James','Hetfield',61,'+04564567744'),
('Jared','Leto',53,'+01234567899'),
('Alexey','Ivanov',15,'+71472583315'),
('Alexey','Petrov',25,'+71472583325'),
('Alexey','Sidorov',45,'+71472583345');




