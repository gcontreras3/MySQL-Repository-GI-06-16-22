CREATE DATABASE topTenMovies;
USE topTenMovies;
CREATE TABLE movies(id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255),
releaseDate INT,
rating FLOAT
);

INSERT INTO movies (title, releaseDate, rating)
VALUES ('The Shawshank Redemption', 1994, 9.2),
    ('The Godfather', 1972, 9.2),
    ('The Dark Knight' 2008, 9.0),
    ('The Godfather Part II', 1974, 9.0),
    ('12 Angry Men', 1957, 8.9),
    ('Schindlers List', 1993, 8.9),
    ('The Lord of the Rings', 2003, 8.9),
    ('Pulp Fiction', 1994, 8.9),
    ('Goodfellas', 1990, 8.7),
    ('The Shining', 1980, 8.4);
