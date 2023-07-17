-- STEP 3
-- Question 1
-- Add 5 orders to the orders table
CREATE TABLE orders (
order_id SERIAL PRIMARY KEY, 
person_id INTEGER, 
product_name VARCHAR(30), 
product_price INTEGER, 
quantity INTEGER

); 

-- Question 2
-- Add 5 orders to the orders table.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES(1,'soap',10,5),(2,'book',35,2)

-- Question 3
-- Select all the records from the orders table.
SELECT * FROM orders 

-- Question 4
-- Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- Question 5
-- Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;

--Question 6
-- Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 1;
