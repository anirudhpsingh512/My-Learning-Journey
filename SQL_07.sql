#Views - a view is a virtual table based on the result of a sql query

USE customer;
DROP TABLE student;
CREATE TABLE student(
studentid INT AUTO_INCREMENT,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25),
age INT,
PRIMARY KEY(studentid)
);

INSERT INTO student VALUES
(1, 'Krish', 'Naik', 31),
(2, 'Ram', 'Sharma', 31),
(3, 'Sam', 'Joe', 31);

CREATE TABLE department(
student_id INT AUTO_INCREMENT,
department_name VARCHAR(25) NOT NULL,
FOREIGN KEY(student_id) REFERENCES student(studentid)
);

INSERT INTO department VALUES
(1, 'Computer Science'),
(2, 'Electronics'),
(3, 'Mechanical');

ALTER TABLE department
CHANGE student_id studentid INT AUTO_INCREMENT;

CREATE VIEW student_view AS
SELECT first_name, last_name, age FROM student INNER JOIN department USING (studentid);

SELECT * FROM student_view;

DROP VIEW student_view;

##IMPORTANT
# What kind of queries can we write in views




