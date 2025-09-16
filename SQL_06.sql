# Indexes make querying or retrieval faster but
# ALtering is slower

USE customer;
SHOW TABLES;

SELECT * FROM person;
CREATE INDEX index_city_name
ON person(city_name);
DESC person;

DROP TABLE student;
CREATE TABLE student(
id INT NOT NULL,
first_name VARCHAR(24),
last_namr VARCHAR(25),
age INT
);

DESC student;

CREATE INDEX index_age
ON student(age);

CREATE INDEX index_age_first_name
ON student(age, first_name);

ALTER TABLE student
DROP INDEX index_age;









