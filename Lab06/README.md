# Lab 5️⃣

<b> Date</b>: 04/12/2020

Code
```sql
CREATE TABLE store(
    order_no INT PRIMARY KEY AUTO_INCREMENT,
    code varchar(10) NOT NULL,
    item_name varchar(50) NOT NULL,
    quantity INT DEFAULT 0,
    price FLOAT NOT NULL,
    discount INT DEFAULT 0,
    mrp Float
);

INSERT INTO store (code,item_name,quantity,price,discount,mrp)
VALUES
('X122d','Xiaomi Poco F1',10,17999.99,10,22000),
('APP1E','Mac mini 2016',6,49999,10,52000);


SELECT * FROM store;

CREATE VIEW itemView AS SELECT item_name,quantity FROM store;

SELECT * FROM itemView;

INSERT INTO store (code,item_name,quantity,price,discount,mrp)
VALUES ('L0G1','Logitech G503',5,4999.99,0,7999);

SELECT * FROM itemView;

DROP VIEW itemView;
```

<br>

Output
```bash
order_no	code	item_name	quantity	price	discount	mrp
1	X122d	Xiaomi Poco F1	10	18000	10	22000
2	APP1E	Mac mini 2016	6	49999	10	52000

item_name	quantity
Xiaomi Poco F1	10
Mac mini 2016	6

item_name	quantity
Xiaomi Poco F1	10
Mac mini 2016	6
Logitech G503	5
```

> <b>SQL File</b> 👉🏻 [SQLFILE.sql](main.sql)
