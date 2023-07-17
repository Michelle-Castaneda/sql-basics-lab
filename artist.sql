-- Step 4: artist table

CREATE TABLE artist (
  artist_id SERIAL PRIMARY KEY,
  name VARCHAR(120)
);


-- Question 1
-- Add 3 new artists to the artist table. (It already exists.)
INSERT INTO artist (name)
VALUES ('Korn)',
('Blink 182'),
('Metallica')
);

-- Question 2
-- Select 10 artists in reverse alphabetical order.
SELECT * FROM artist ORDER BY name DESC LIMIT 10; 

-- Question 3
-- Select 5 artists in alphabetical order.
SELECT * FROM artist ORDER BY name ASC LIMIT 5;

-- Question 4
-- Select all artists that start with the word ‘Black’.
SELECT * FROM artist WHERE name LIKE 'Black%';

-- Question 5
-- Select all artists that contain the word ‘Black’.
SELECT * FROM artist WHERE name LIKE '%Black%';