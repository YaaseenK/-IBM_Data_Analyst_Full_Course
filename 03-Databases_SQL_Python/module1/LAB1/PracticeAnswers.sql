-- COUNT
SELECT * FROM Filmlocations LIMIT 10;
-- 1.
SELECT COUNT(Locations) FROM FilmLocations WHERE Director = "Woody Allen";
-- 2.
SELECT COUNT (TITLE) FROM FilmLocations Where Locations = "Russian Hill";
-- 3.
SELECT COUNT("Release Year") FROM FilmLocations WHERE "Release Year" < 1950;

-- DISTICT
-- 1.
SELECT DISTINCT Title, "Release Year" FROM FilmLocations WHERE "Release Year" > 2000;
-- 2.
SELECT DISTINCT Director, TITLE FROM FilmLocations Where Locations = "City Hall";
-- 3.
SELECT COUNT (Distributor) from FilmLocations where "Actor 1" = "Clint Eastwood" ;

-- LIMIT
-- 1.
SELECT Title FROM FilmLocations LIMIT 50;
-- 2.
SELECT Title, "Release Year" FROM FilmLocations WHERE "Release Year" = 2015 LIMIT 10;
-- 3. 
SELECT Title, "Release Year" FROM FilmLocations WHERE "Release Year" = 2015 LIMIT 3 OFFSET 5;