USE easytopthreecars;
CREATE TABLE cars2(
id INT AUTO_INCREMENT NOT NULL,
Make VARCHAR(255),
Model VARCHAR(255),
year INT
);
-- Write a query to add three cars
INSERT INTO cars (Make, Model, year)
Values('Honda', 'Civic', 2004), ('Honda', 'Accord', 2003), ('Chevy', 'Tahoe', 2005);

-- create a query to add colors and prices
ALTER TABLE cars2 ADD COLUMN color VARCHAR(255), ADD COLUMN price FLOAT;
UPDATE cars2 SET color = "Red", price = 75342.00 WHERE id = 1;
UPDATE cars2 SET color = "Blue", price = 85242.00 WHERE id = 2;
UPDATE cars2 SET color = "Black", price = 83259.00 WHERE id = 3;

-- Write a query to put the Make and Model together in one column
SELECT CONCAT(make, ' ', model) AS "Make and Model", Year, color, price FROM cars2;

INSERT INTO cars2 (make, model, year)
VALUES
	('Honda','Accord', 2001),
    ('Tyota','Supra', 2009),
    ('Toyota','Tundra', 2000);

-- Create a new query that adds an additional column to the results to show how many cars have the same Make.
SELECT Make, COUNT(*) FROM cars2 GROUP BY Make HAVING COUNT(*) > 1;
