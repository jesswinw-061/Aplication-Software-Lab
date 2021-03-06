# Lab 7️⃣

<b> Date</b>: 18/12/2020

### Questions:

Expt7:Implementation of Build in functions in RDBMS

1.	Create a table store. Fields are order no, code, item, quantity, price, discount, mrp
2.	Insert values into the table
3.	Display the table
4.	Write an SQL query to display the reminder, if the amount of an each item in store is divided by 9.
5.	Write SQL query to display the amount in store and its square
6.	Write SQL query to divide the amount in stock of each item by 7 in store table and display the result round to the nearest integer.

<br>

Code
```sql
#A
CREATE TABLE store(
    order_no int primary key AUTO_INCREMENT,
    code varchar(10) not null,
    item varchar(30) not null,
    quantity int default 0,
    price float,
    discount int default 0,
    mrp float not null
);

#B
INSERT INTO store(code,item,quantity,price,discount,mrp)
VALUES 
("a123", "Macbook Pro 13", 14, 100999.99, 2000, 120000),
("a420", "iPhone 12", 12, 90000, 1000, 119900),
("a123", "Airpods Pro", 10, 30000, 0, 59900);

#C
SELECT * FROM store; 

#D
SELECT MOD(price,9) FROM store;

#E
SELECT price,POWER(price,2) FROM store;

#F
SELECT ROUND(mrp DIV 7) FROM store;
```

<br>

Output
```bash
order_no	code	item	          quantity	price	  discount	mrp
1	        a123	Macbook Pro 13	14	      101000	2000	    120000
2	        a420	iPhone 12	      12	      90000	  1000	    119900
3	        a123	Airpods Pro	    10	      30000	  0	        59900

MOD(price,9)
1.9921875
0
3

price	  POWER(price,2)
101000	10200998421.875061
90000	  8100000000
30000 	900000000

ROUND(mrp DIV 7)
17142
17128
8557
```

> <b>SQL File</b> 👉🏻 [SQLFILE.sql](main.sql)
