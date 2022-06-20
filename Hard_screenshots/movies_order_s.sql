USE topTenMovies;
SELECT * FROM movies
WHERE title LIKE ("%s%")
ORDER BY rating ASC;
-- SELECT * FROM movies ORDER BY releaseDate WHERE title LIKE 's%'; --
-- SELECT title FROM movies WHERE title = "s"; --