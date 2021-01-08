# Lab 9️⃣

<b> Date</b>: 8/01/2021

### Questions:

Expt9:Order by and Group by clause

1. Create table employee with fields Code , name , dob , designation , salary  .
2. Display code, name, and designation in descending order of the name.
3. Create table deposit with fields baccno , branch_name , amount .
4. Give branch name and details of deposit table.

<br>

Code
```sql
#1
CREATE TABLE Employee(
    code CHAR(4) PRIMARY KEY,
    name VARCHAR(60),
    dob DATE,
    designation VARCHAR(80),
    salary FLOAT
);

INSERT INTO Employee(code, name, dob, designation, salary)
VALUES
('ar69','Aravind R','2000-02-02','CTO',190000.78),
('ku12','Kiran U','2000-01-12','CEO',185000.78),
('sv13','V Sam','1998-08-02','Clerk',59000.78),
('ask1','A Siraj','1969-04-20','Auditor',59000.18);

#2
SELECT * FROM Employee ORDER BY name DESC;

#3
CREATE TABLE Deposit(
    baccno BIGINT,
    branch_name VARCHAR(60),
    amount FLOAT
);

INSERT INTO Deposit(baccno, branch_name, amount)
VALUES
(1990001,'palakkad',290000.25),
(1990002,'palakkad',291233.22),
(1990003,'karunagapally',123570.1),
(1990004,'palakkad',2239083.78),
(1990005,'alapuzha',100090.90);

#4
SELECT branch_name,COUNT(baccno),SUM(amount) FROM Deposit GROUP BY branch_name;

```

<br>

Output
```bash
code	name	    dob	        designation	salary
sv13	V Sam	    1998-08-02	Clerk	    59000.8
ku12	Kiran U	    2000-01-12	CEO	        185001
ar69	Aravind R	2000-02-02	CTO	        190001
ask1	A Siraj	    1969-04-20	Auditor	    59000.2

branch_name	    COUNT(baccno)	SUM(amount)
palakkad	    3	            2820317.21875
karunagapally	1	            123570.1015625
alapuzha	    1	            100090.8984375
```

> <b>SQL File</b> 👉🏻 [SQLFILE.sql](main.sql)
