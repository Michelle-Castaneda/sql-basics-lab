-- Step 6: invoice table

CREATE TABLE invoice (
  invoice_id SERIAL PRIMARY KEY,
  customer_id INTEGER REFERENCES customer(customer_id),
  invoice_date TIMESTAMP,
  billing_address VARCHAR(70),
  billing_city VARCHAR(40),
  billing_state VARCHAR(40),
  billing_country VARCHAR(40),
  billing_postal_code VARCHAR(10),
  total DECIMAL(2)
);

--Question 1
-- Count how many orders were made from the USA.
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';

-- Question 2
-- Find the largest order total amount.
SELECT MAX(total) FROM invoice; 

-- Question 3
-- Find the smallest order total amount.
SELECT MIN(total) FROM invoice;

-- Question 4
-- Find all orders bigger than $5.
SELECT * FROM invoice WHERE total > 5;

-- Question 5
-- Count how many orders were smaller than $5.
SELECT COUNT(*) FROM invoice WHERE total < 5;

-- Question 6
-- Count how many orders were in CA, TX, or AZ (use IN).
SELECT COUNT(*) FROM invoice WHERE billing_state IN ( 'CA', 'TX', 'AZ' )

-- Question 7
-- Get the average total of the orders.
SELECT AVG(total) FROM invoice;

-- Question 8 
-- Get the total sum of the orders.
SELECT SUM(total) FROM invoice;

-- Question 9
-- Update the invoice with an invoice_id of 5 to have a total order amount of 24.
UPDATE invoice SET total = 24 WHERE invoice_id = 5; 

-- Question 10
-- Delete the invoice with an invoice_id of 1.
DELETE FROM invoice WHERE invoice_id = 1;

