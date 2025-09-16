CREATE DATABASE customer;
USE customer;

CREATE TABLE customer_info(
id INTEGER auto_increment,
first_name VARCHAR(25),
last_name VARCHAR(25),
salary INTEGER,
PRIMARY KEY(id)
);

SELECT * FROM customer_info;

INSERT INTO customer_info(first_name, last_name, salary) VALUES 
('John', 'Daniels', 50000),
('Krish', 'Naik', 60000),
('Darius', 'Bengali', 70000),
('Chandan', 'Kumar', 40000),
('Ankit', 'Sharma', NULL);

SELECT * FROM customer_info WHERE salary IS NULL;

#SQL UPDATE STATEMENT TO REPLACE NULL VALUES
UPDATE customer_info SET salary = 50000 WHERE id = 5;

SELECT * FROM customer_info;

#DELETE STATEMENT 
DELETE FROM customer_info WHERE id = 5;

#SQL alter table
##Adding columns in existing table

ALTER TABLE customer_info ADD email VARCHAR(25);

SELECT * FROM customer_info;

ALTER TABLE customer_info ADD dob DATE;
SELECT * FROM customer_info;

## Modify column
ALTER TABLE customer_info MODIFY dob YEAR;

DESC customer_info;

##Drop column
ALTER TABLE customer_info DROP COLUMN email;

