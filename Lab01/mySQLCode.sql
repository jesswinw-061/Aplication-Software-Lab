# Create a table student with attributes sno,name marks and dept
CREATE TABLE STUDENT(sno INT, name varchar(25), dept varchar(25), mark varchar(25));

# Add a new attribute age
ALTER TABLE STUDENT ADD AGE INT;

# Change the datatype size of dept
ALTER TABLE student MODIFY COLUMN dept varchar(50);

# Delete the attribute marks from the table
ALTER TABLE student DROP COLUMN mark;

# Change the name of the student table to students
ALTER TABLE student RENAME TO students;

# Delete all values from the table
DELETE FROM students;

# Delete the entire table
DROP TABLE students;
