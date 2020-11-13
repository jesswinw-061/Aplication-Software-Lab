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

#4
UPDATE EMPLOYEE
SET
salary =30000
WHERE 
code ='e1';

SELECT * FROM EMPLOYEE;

#5
DELETE FROM EMPLOYEE where code='e2';

SELECT * FROM EMPLOYEE;
