-- Step 2 Question 1
--
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR (70),
    age INTEGER,
    height INTEGER,
    city VARCHAR (30),
    favorite_color VARCHAR (20)
);

-- Question 2
-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
INSERT INTO person (name,age,height,city,favorite_color)
VALUES('Penelope',10,150,'London','purple'),
('Esther',65,165,'Paris','green'),('Vincent',34,180,'San Francisco','blue'),
('Melissa',36,178,'Cancun','pink'),('Giselle',15, 149,'Dallas','blue');

-- Question 3
-- Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person ORDER BY height DESC;

-- Question 4
-- Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person ORDER BY height ASC;

-- Question 5
-- Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person ORDER BY age DESC;

-- Question 6
-- Select all the people in the person table older than age 20.
SELECT * FROM person WHERE age>20;

-- Question 7
-- Select all the people in the person table that are exactly 18.
SELECT * FROM person WHERE age = 18;

--Question 8
-- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person WHERE age < 20 OR age > 30;

-- Question 9
-- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person WHERE age <>27;

-- Question 10 
-- Select all the people in the person table where their favorite color is not red.
SELECT * FROM person WHERE favorite_color != 'red';

-- Question 11 
-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person WHERE favorite_color <> red AND favorite_color <>blue;

-- Question 12
-- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- Question 13
-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person WHERE favorite_color IN ( 'orange' , 'green' , 'blue' );

-- Question 14 
-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person WHERE favorite_color IN ( 'yellow' , 'purple');