-- single line comment
CREATE DATABASE markets;
-- create table 
USE markets;

CREATE TABLE employee(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(320) NOT NULL
);
-- insert data into employee table
INSERT INTO employee(name, email)
VALUES('Jonte', 'john@mail.com');

-- fetch data 
SELECT * FROM employee;