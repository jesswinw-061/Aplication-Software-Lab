#1
CREATE TABLE Class (
	`id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(50)
);


#2
INSERT INTO Class (`name`) VALUES ("Sachin"), ("Sewag"), ("Ganguly");

#3
SELECT * FROM Class;

#4
START TRANSACTION;

INSERT INTO Class (`name`) VALUES ("Dhoni");
ROLLBACK; 

INSERT INTO Class (`name`) VALUES ("Dravid");
COMMIT;

START TRANSACTION;
SAVEPOINT BeforeEvilEra;
INSERT INTO Class (`name`) VALUES ("Laxmann");
ROLLBACK TO BeforeEvilEra;

COMMIT;