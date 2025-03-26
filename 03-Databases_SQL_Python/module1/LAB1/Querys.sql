-- Selects and displays the first 5 rows from the FilmLocations table
SELECT * FROM FilmLocations LIMIT 5;

-- Returns the total number of records (rows) in the FilmLocations table
SELECT COUNT(*) FROM FilmLocations;

-- Counts how many film locations have a writer named "James Cameron"
-- This counts only the rows where the Writer column equals "James Cameron"
SELECT COUNT(Locations) FROM FilmLocations WHERE Writer = "James Cameron";
SELECT COUNT(Locations) FROM FilmLocations WHERE Writer = "Alex Gerland";
SELECT COUNT(TITLE) FROM FilmLocations WHERE "Release Year" = 2019

-- Using DISTINCT statement
SELECT DISTINCT Title FROM FilmLocations LIMIT 5;
SELECT COUNT (DISTINCT "writer") FROM FilmLocations; 