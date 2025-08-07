-- Demo database
CREATE DATABASE sales;

/*
I want to create a table 
this table will be used to store contact details
If you are looking for a customer......*/

# hash also possible for commenting
#contact tablecontacts
USE sales;
CREATE TABLE contacts(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(320) NOT NULL
);