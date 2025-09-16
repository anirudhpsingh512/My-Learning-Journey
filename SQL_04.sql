USE customer;

CREATE TABLE Student(
id INT NOT NULL,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL,
age INT
);

DESC student;

ALTER TABLE student MODIFY age INT NOT NULL;

CREATE TABLE person(
id INT NOT NULL,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL,
age INT NOT NULL,
UNIQUE(id)
);
INSERT INTO person VALUES(1, 'Krish', 'Naik',31);
SELECT * FROM person;
INSERT INTO person VALUES(2, 'Krish1', 'Naik1', 31);
INSERT INTO person VALUES(1, 'Krish2', 'Naik2', 31);

ALTER TABLE person
ADD UNIQUE(first_name);
DESC person;

ALTER TABLE person
ADD CONSTRAINT uc_person UNIQUE(age, first_name);

DESC person;

ALTER TABLE person
DROP INDEX uc_person;

DESC person; 

#Primary Key
CREATE TABLE person1(
id INT NOT NULL,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25),
age INT,
CONSTRAINT pk_person PRIMARY KEY(id, last_name)
);
DESC person1;

ALTER TABLE person1
DROP PRIMARY KEY;

DESC person1;

ALTER TABLE person1
ADD PRIMARY KEY(id);

DESC person1;


