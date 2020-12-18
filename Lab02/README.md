# Lab 2️⃣
<b> Date</b>: 13/11/2020

### Questions:

1. Create a table Employee with following specifications. Code character (4), name character (10), designation character(30), dob date, salary numeric.
2. Insert 2 tuples into the table
3. Select all details from the table.
   4.Change the salary of employee code is e1.
4. Delete a tuple from the table employee

<br>

```sql
#1
CREATE TABLE EMPLOYEE
( code CHAR(4),
name VARCHAR(20),
designation VARCHAR(30),
dob DATE,
salary  FLOAT);


#2
INSERT INTO EMPLOYEE (code , name , designation , dob , salary)
VALUES
    ('e1' ,'Gon Feress' ,'Manager' ,'1992-09-05',25000),
    ('e2','Ash' ,'Asst Manager','1995-08-01',24500) ;
       
#3
SELECT * FROM EMPLOYEE;
#👆🏻First output

#4
UPDATE EMPLOYEE
SET
salary =30000
WHERE 
code ='e1';

#👇🏻Second output
SELECT * FROM EMPLOYEE;

#5
DELETE FROM EMPLOYEE where code='e2';

#👇🏻Third output
SELECT * FROM EMPLOYEE;

```
<br>

```bash
code	name	designation	dob	salary
e1	Gon Feress	Manager	1992-09-05	25000
e2	Ash	Asst Manager	1995-08-01	24500
code	name	designation	dob	salary
e1	Gon Feress	Manager	1992-09-05	30000
e2	Ash	Asst Manager	1995-08-01	24500
code	name	designation	dob	salary
e1	Gon Feress	Manager	1992-09-05	30000
```
><b>SQL File</b> 👉🏻  [SQLFILE.sql](main.sql)
