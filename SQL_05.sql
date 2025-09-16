USE customer;
DROP TABLE person;
CREATE TABLE person(
id INT NOT NULL,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL,
age INT,
PRIMARY KEY(id)
);

DESC person;

DROP TABLE person;

CREATE TABLE person(
id INT NOT NULL,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL,
age INT,
CONSTRAINT pk_person PRIMARY KEY(id, last_name)
);

DESC person;

DROP TABLE person;

#Foreign Key
CREATE TABLE person(
id INT NOT NULL,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL,
age INT,
salary INT,
PRIMARY KEY(id)
);
DESC person;

SHOW TABLES;

CREATE TABLE department(
id INT NOT NULL,
department_id INT NOT NULL,
department_name VARCHAR(25) NOT NULL,
PRIMARY KEY(department_id),
CONSTRAINT fk_persondepartment FOREIGN KEY(id) REFERENCES person(id)
);

DESC department;

#alter table department
#add foreign key(id) references person(id);

#Check Constraints
DROP TABLE person;
DROP TABLE department;

CREATE TABLE person(
id INT NOT NULL,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL,
age INT,
salary INT,
PRIMARY KEY(id),
CHECK(salary<50000)
);
DESC person; 

#Default Constraint 
DROP TABLE person;

CREATE TABLE person(
id INT NOT NULL,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL,
city_name VARCHAR(25) DEFAULT 'Bangalore'
);
DESC person;

ALTER TABLE person
ALTER city_name DROP DEFAULT;









