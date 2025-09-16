#SQL JOINS - used to join 2 or more database tables
USE customer;
INSERT INTO student VALUES(5, 'Ramesh', 'Singh', 27);
SELECT * FROM 	student;
SELECT * FROM department;

##Inner Join 
SELECT student.first_name, student.last_name, student.age, department.department_name FROM student INNER JOIN department ON 
student.studentid = department.studentid;

## Left Join
SELECT student.first_name, student.last_name, student.age, department.department_name FROM student LEFT JOIN department ON 
student.studentid = department.studentid;

## Right Join
SELECT student.first_name, student.last_name, student.age, department.department_name FROM student RIGHT JOIN department ON 
student.studentid = department.studentid;

## Full Outer Join
SELECT student.first_name, student.last_name, student.age, department.department_name FROM student LEFT JOIN department ON 
student.studentid = department.studentid
UNION
SELECT student.first_name, student.last_name, student.age, department.department_name FROM student RIGHT JOIN department ON 
student.studentid = department.studentid;

## Cross Join
SELECT student.first_name, student.last_name, student.age, department.department_name FROM student CROSS JOIN department;

## Natural Join
SELECT student.first_name, student.last_name, student.age, department.department_name FROM student NATURAL JOIN department;




