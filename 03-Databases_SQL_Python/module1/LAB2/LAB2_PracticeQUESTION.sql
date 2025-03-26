-- SQLite
-- INSERT
-- 1. Problem:
-- Insert a new instructor record with id 7 for Antonio Cangiano who lives in Vancouver, CA into the “Instructor” table.

-- 2. Problem:
-- Insert two new instructor records into the “Instructor” table. First record with id 8 for Steve Ryan who lives in Barlby, GB. Second record with id 9 for Ramesh Sannareddy who lives in Hyderabad, IN.

-- UPDATE 
-- 1. Problem:
-- Update the city of the instructor record to Markham whose id is 1.

-- 2. Problem
-- Update the city and country for Sandip with id 4 to Dhaka and BD respectively.

-- DELETE
-- 1. Problem:
-- Remove the instructor record of Hima.
DELETE FROM instructor
WHERE firstname = 'Hima';

SELECT * FROM Instructor;