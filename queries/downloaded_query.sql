USE salesDB;

SELECT * FROM salesDB.customers; -- accessing customers table from salesDB


SELECT * FROM salesDB.employees; -- employees table from the database

UPDATE employees
SET 
	lastName = 'Alice',
    email = 'janet@gmail.com'
WHERE
	employeeNumber = 1056;
    
-- UPDATE employees
-- SET email= REPLACE(email, '@classicmodelscars.com', '@mycars.org')
-- WHERE 
-- 	jobTitle = 'Sales Rep' AND 
--     officeCode = 6;


UPDATE employees
SET email = REPLACE(email,'@classicmodelcars.com','@mycars.org')
WHERE
   jobTitle = 'Sales Rep' AND
   officeCode = 6;

-- I have succesfully queried an entry from the database
SELECT * FROM employees
WHERE jobTitle = 'Sales Rep' AND officeCode=6;

SELECT * FROM employees
WHERE jobTitle='Sales Rep';


SELECT 
contactLastname,
contactFirstname
FROM
customers
ORDER BY
contactLastname ASC;

-- SELECT 
-- 	emloyeeNumber
-- FROM
-- 	employees
-- WHERE
-- 	jobstitle='Sales Rep'  my error adding s on job.
-- ORDER BY RAND()
-- LIMIT 1;

SELECT 
    employeeNumber
FROM
    employees
WHERE
    jobtitle = 'Sales Rep'
ORDER BY RAND()
LIMIT 1;
	

