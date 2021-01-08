# Lab 8️⃣

<b> Date</b>: 8/01/2021

### Questions:

Expt8:Implementation of various aggregate functions in SQL

1. Create a table Employee with following specifications.Code, name, DOB, designation, salary
2. Insert values into the table
3. Display sum of salaries from the table employee where designation is clerk.
4. Describe the maximum salary value from the table employee.
5. Display average salary of employees
6. Describe the minimum salary value from the table
7. Display the total number of employees.
<br>

Code
```sql
#1 
CREATE TABLE Employee(
    code CHAR(6) PRIMARY KEY,
    name VARCHAR(80),
    dob date,
    designation VARCHAR(100),
    salary FLOAT
);

#2
INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('gm0121','Emmanuel Shine Joseph','2000-10-05','General Manager',50000.25),
('pm2918','Arjun G','1998-11-15','Product Manager',50000.50),
('cl0123','Kumar','1992-02-06','Clerk',25000),
('cl1234','Ram','2001-02-05','Clerk',15000.75);

#3
SELECT SUM(salary) FROM Employee WHERE designation='Clerk';

#4
SELECT MAX(salary) FROM Employee;

#5
SELECT AVG(salary) FROM Employee;

#6
SELECT MIN(salary) FROM Employee;

#7
SELECT COUNT(*) FROM Employee;
```

<br>

Output
```bash
SUM(salary)
40000.75
MAX(salary)
50000.5
AVG(salary)
35000.375
MIN(salary)
15000.8
COUNT(*)
4
```

> <b>SQL File</b> 👉🏻 [SQLFILE.sql](main.sql)
