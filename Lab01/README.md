# Lab 1️⃣
<b> Date</b>: 06/11/2020

### Questions:
1. Create a table student with attributes sno,name marks and dept
2. Add a new attribute age
3. Change the datatype size of dept
4. Delete the attribute marks from the table
5. Change the name of the student table to students
6. Delete all values from the table
7. Delete the entire table

<br>

```sql
# 1
CREATE TABLE STUDENT(sno INT, name varchar(25), dept varchar(25), mark varchar(25));

# 2
ALTER TABLE STUDENT ADD AGE INT;

# 3
ALTER TABLE student MODIFY COLUMN dept varchar(50);

# 4
ALTER TABLE student DROP COLUMN mark;

# 5
ALTER TABLE student RENAME TO students;

# 6
DELETE FROM students;

# 7
DROP TABLE students;
```
<br>

><b>SQL File</b> 👉🏻  [MySQLCode.sql](main.sql)
