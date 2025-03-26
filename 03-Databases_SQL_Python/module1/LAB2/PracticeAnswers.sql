-- -- SQLite
-- INSERT
-- 1. 
-- INSERT INTO Instructor (ins_id, firstname, lastname, city, country)
-- VALUES (7, "Antonio", "Cangiano", "Vancouver", "CA");

-- SELECT * FROM Instructor;

-- 2.
-- INSERT INTO Instructor (ins_id, firstname, lastname, city, country)
-- VALUES (8, "Steve", "Ryan", "Barlby", "GB"),(9, "Ramesh", "Sannareddy", "Hyderbad", "IN");

-- SELECT * FROM Instructor

-- UPDATE
-- 1. 
-- SELECT * FROM Instructor WHERE ins_id = 1;

-- UPDATE Instructor
-- SET city = "Markham"
-- WHERE ins_id = 1;

-- SELECT * FROM Instructor WHERE ins_id =1;

-- 2. 
SELECT * FROM Instructor WHERE ins_id = 4;
UPDATE Instructor
SET city = "Dhaka", country = 'BD'
WHERE ins_id = 4;
SELECT * FROM Instructor WHERE ins_id = 4;