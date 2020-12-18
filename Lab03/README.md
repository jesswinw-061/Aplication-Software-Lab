# Lab 3️⃣

<b> Date</b>: 20/11/2020

### Questions:

1. Create table employdetails with empid references to the empid in employee table
2. Display the details of employee table where empid in employedetails table
3. Display the details of employee table where empid notin employedetails table

<br>

```sql
#1
CREATE TABLE employee(
	empid CHAR(4) ,
	empname CHAR(10) NOT NULL,
	designation CHAR(30) NOT NULL,
	dob DATE NOT NULL,
	salary NUMERIC
);

CREATE TABLE employdetails(
	sex CHAR(1),
	nationality char(10),
	gno INT,
	PRIMARY KEY (gno),
	empid CHAR(4) REFERENCES employee(empid)
);

INSERT INTO employee VALUES
("e1","Gin","CO","1922-3-11","92599"),
("e2","Mercy","XO","1980-5-4","92588");

INSERT INTO employdetails VALUES
("M","Serbian","27","e2"),
("F","Spaniard","56","e5");

#2
SELECT * FROM employee WHERE empid IN (SELECT empid FROM employdetails);

#3
SELECT * FROM employee WHERE empid NOT IN(SELECT empid FROM employdetails);
```

<br>

```bash
empid	empname	designation	dob	salary
e2	Mercy	XO	1980-05-04	92588
empid	empname	designation	dob	salary
e1	Gin	CO	1922-03-11	92599
```

> <b>SQL File</b> 👉🏻 [SQLFILE.sql](main.sql)
