-- Step 5: employee table

CREATE TABLE employee (
  employee_id SERIAL PRIMARY KEY,
  last_name VARCHAR(20),
  first_name VARCHAR(20),
  title VARCHAR(30),
  reports_to INTEGER REFERENCES employee(employee_id),
  birth_date TIMESTAMP,
  hire_date TIMESTAMP,
  address VARCHAR(70),
  city VARCHAR(40),
  state VARCHAR(40),
  country VARCHAR(40),
  postal_code VARCHAR(10),
  phone VARCHAR(24),
  fax VARCHAR(24),
  email VARCHAR(60)
);

-- Question 1
-- List all employee first and last names only that live in Calgary.
SELECT first_name, last_name FROM employee WHERE city = 'Calgary';

-- Question 2
-- Find the birthdate for the youngest employee.
SELECT MAX(birth_date) FROM employee;

-- Question 3
--Find the birthdate for the youngest employee.
SELECT MIN(birth_date) FROM employee;

-- Question 4
-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). 
-- * You will need to query the employee table to find the id for Nancy Edwards

SELECT * FROM employee WHERE reports_to = 2;

-- Question 5
-- Count how many people live in Lethbridge
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge'; 


