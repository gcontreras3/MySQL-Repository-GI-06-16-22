USE topTenMovies;
CREATE TABLE moviesCopy(
	id INT AUTO_INCREMENT NOT NULL,
	title VARCHAR(255),
	releaseDate INT,
	rating FLOAT,
	PRIMARY KEY (Id)
);

ALTER TABLE moviesCopy
ADD Director_First VARCHAR(255),
ADD Director_Last VARCHAR(255);



INSERT INTO moviesCopy (title, releaseDate, rating, Director_First, Director_Last)
VALUES ('The Shawshank Redemption', 1994, 9.2, 'Frank', 'Darabont'),
    ('The Godfather', 1972, 9.2, 'Francis', 'Coppola'),
    ('The Dark Knight', 2008, 9.0, 'Christopher', 'Nolan'),
    ('The Godfather Part II', 1974, 9.0, 'Francis', 'Coppola'),
    ('12 Angry Men', 1957, 8.9, 'Sidney', 'Lumet'),
    ('Schindlers List', 1993, 8.9, 'Steven', 'Spielberg'),
    ('The Lord of the Rings', 2003, 8.9, 'Peter', 'Jackson'),
    ('Pulp Fiction', 1994, 8.9, 'Quentin', 'Tarantino'),
    ('Goodfellas', 1990, 8.7, 'Martin', 'Scorsese'),
    ('The Shining', 1980, 8.4, 'Stanley', 'Kubrick');
    
    
SELECT CONCAT(Director_First, ' ', Director_Last) AS "Full Name",title,releaseDate,rating FROM moviesCopy;

SELECT * FROM moviesCopy
ORDER BY Director_Last ASC;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM moviesCopy WHERE REGEXP_LIKE (Director_Last, '[r-z]$','i');

SELECT * FROM moviesCopy LIMIT 3;