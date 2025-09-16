#CREATE DATABASE customers;
#DROP DATABASE customers;
USE customers;
#SHOW DATABASES;
#CREATE TABLE customer_info(id INTEGER, first_name VARCHAR(10), last_name VARCHAR(10));

SHOW TABLES;

SELECT * FROM customer_info;

INSERT INTO customer_info(id, first_name, last_name) 
VALUES (1, 'Anirudh', 'Singh');

SELECT * FROM customer_info;

#DROP TABLE customer_info;
