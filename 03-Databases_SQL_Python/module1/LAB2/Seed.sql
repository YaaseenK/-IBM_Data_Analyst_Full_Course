-- -- SQLite
CREATE TABLE IF NOT EXISTS Instructor (
    ins_id INTEGER PRIMARY KEY, 
    lastname TEXT NOT NULL, 
    firstname TEXT NOT NULL, 
    city TEXT, 
    country TEXT CHECK(LENGTH(country) = 2) NOT NULL
);

INSERT INTO Instructor (ins_id, lastname, firstname, city, country)
VALUES (1, "Smith", "John", "New York", "US"),
(2, "Doe", "Jane", "Toronto", "CA"),
(3, "Lee", "David", "San Francisco", "US");

SELECT * FROM Instructor