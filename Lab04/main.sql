#1

CREATE TABLE Department(
    code INT PRIMARY KEY NOT NULL,
    title VARCHAR(30),
    dept_name VARCHAR(30) UNIQUE NOT NULL,
    dept_id INT UNIQUE NOT NULL,
    salary INT,
    CHECK (salary > 2000 )
);

INSERT INTO Department(code, title, dept_name, dept_id,salary) 
VALUES (420, "Assistant Proffessor", "Computer Science", 100, 20000);

SELECT * FROM Department;

#2

CREATE TABLE Instructor(
    name VARCHAR(50) NOT NULL,
    code INT NOT NULL,
    id INT PRIMARY KEY DEFAULT 69
);

INSERT INTO Instructor(name, code)
VALUES ("Gopakumar", 357);

SELECT * FROM Instructor;