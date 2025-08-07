-- Creating new database for practical
CREATE DATABASE sale;

--  selecting the database to work on 
USE sale;

-- creating table 

CREATE TABLE tasks (
    id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    start_date DATE,
    due_date DATE
);

-- adding another table in the dabatase is possible
CREATE TABLE contacts (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- inserting data into the tables created
INSERT INTO contacts (name, email)
VALUES ('Robera', 'roberatuhs@gmail.com');

INSERT INTO contacts (name, email)
VALUES('Amanuel', 'amanuelefrem77@gmail.com'),
('Efrem', 'efremab45@gmail.com');  #in doing so need to repeat VALUES here just comma


INSERT INTO contacts (name, email)
VALUES('Jabessa', 'jaboerxw@yahoo,com'),
('Abebebech', 'abeetana@hotmal.com'),
('Mengesha', 'menaga@aau.ed.et'),
('Biruk', 'bruha@wolle.com'),
('Latera', 'lattu@aau.com');

SELECT * FROM contacts;

-- i added additional table named customer
CREATE TABLE customer (
id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
phone VARCHAR(10),
address TEXT,
date_of_birth DATE,
signup_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DESCRIBE customer; -- the whole entry or database structure will be visible

SHOW COLUMNS FROM customer;

INSERT INTO customer (name, email, phone, address, date_of_birth)
VALUES
('Alice', 'alice.kimani@example.com', '+254723478', 'Nairobi', '1995-08-10'),
('Brian', 'brian.otieno@example.com', '+254876543', 'Kisumu', '1990-02-25'),
('Carol', 'carol.wanjiku@example.com', '+25434567', 'Mombasa', '1988-12-15');

-- there is no forgiveness in database as data integrity is the major issue

SELECT * FROM customer;

-- Altering the table with different methods

ALTER TABLE customer
ADD COLUMN payment BOOLEAN DEFAULT FALSE; #This is to add column to table

ALTER TABLE customer
DROP COLUMN payment;  #this will delete column 

ALTER TABLE customer
MODIFY COLUMN address VARCHAR(20);   #this will change the type of text to VARCHAR(20)

ALTER TABLE customer
CHANGE COLUMN login_time address VARCHAR(30);




