# Lab 5️⃣

<b> Date</b>: 04/12/2020

### Questions:

Expt5:Practice of SQL TCL commands like Rollback, Commit, Savepoint
Questions:
1.	Create a table class. Fields are name and id
2.	Insert values into the table
3.	Display the table
4.	Apply commit, save point and rollback commands

<br>

Code
```sql
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
```

<br>

Output
```bash
id	name
1	Sachin
2	Sewag
3	Ganguly
```

> <b>SQL File</b> 👉🏻 [SQLFILE.sql](main.sql)
