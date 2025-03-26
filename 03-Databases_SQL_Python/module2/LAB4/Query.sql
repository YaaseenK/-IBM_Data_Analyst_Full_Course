-- Aggregation Functions
-- 1. Write a query that calculates the total cost of all animal rescues in the PETRESCUE table.
-- USE FUNCTOIN SUM(COLUMN_NAME). THE OUTPUT WILL BE THE TOTAL CALUE OF ALL THE ELEMENTS IN THE COLUMN.

SELECT SUM(COST) FROM PETRESCUE;

-- you can further assign a label to the query SUM_OF_COST
SELECT SUM(COST) as 'Sum_of_cost' FROM PETRESCUE;

-- 2. Write a query that displays the maximum quantity of animals rescued (of any kind). 
-- We will use the function MAX(COLUMN_NAME). OUTPUT will be the max number of elements in the column
SELECT max(QUANTITY) from PETRESCUE;

-- The Query can easily be changed to display the minimum quanity using the min function INSTEAD
SELECT min(QUANTITY) from PETRESCUE;

-- 3. Write a query that displays the average cost of animals rescued
SELECT * FROM PETRESCUE;
-- for this query, we will use AVG(col_name).
SELECT AVG(COST) FROM PETRESCUE;

-- Scalar Functions and String Functions

-- 1. Write a query that displays the rounded integral cost of each rescue.
-- you will use the function ROUND(col_name, num_of_decimals)
SELECT ROUND(COST) FROM PETRESCUE;
-- Could be also written as;
SELECT ROUND(COST,0) FROM PETRESCUE;

-- In case the question was to round the value to 2 decimal places, the query would change to:
SELECT ROUND(COST,2) FROM PETRESCUE;

-- 2 Write a query that displays the length of rach animal name
-- you will use the LENGTH(Col_name) 
SELECT Length(ANIMAL) FROM PETRESCUE;

-- 3. Write a query that displays the animal name in each rescue in uppercase
-- you will use the UCASE(col_name) function.
-- UCASE FOR MYSQL and UPPER for sqlit3
SELECT UCASE(ANIMAL) From PETRESCUE;
SELECT UPPER(ANIMAL) From PETRESCUE;

-- for lower case use the LCASE function.
-- LCASE for MYSQL
-- LOWER for sqlite3
SELECT LCASE(ANIMAL) From PETRESCUE;
SELECT lower(ANIMAL) from PETRESCUE;

-- Date Functions
-- 1. Write a query that displays the rescue date.ANIMAL
-- Use the function DAY(COL_NAME) 
SELECT Day(RESCUEDATE) FROM PETRESCUE;
-- MySQL 
SELECT RESCUEDATE From PETRESCUE;
-- SQLITE3
SELECT STRFTIME('%d', RESCUEDATE) as Day from PETRESCUE;

-- In case query was asking for MONTH of rescue
-- MYSQL
SELECT MONTH(RESCUEDATE) FROM PETRESCUE;
-- SQLITE3
SELECT strftime('%m', RESCUEDATE) as month from PETRESCUE;

-- In case query was asking for year of rescue;
-- mySQL
SELECT year(RESCUEDATE) from PETRESCUE;
-- sqlite3
SELECT RESCUEDATE FROM PETRESCUE;
-- ✅ SUBSTR(RESCUEDATE, 1, 4) works because it simply extracts the first four characters, assuming YYYY-MM-DD format.
-- ❌ strftime('%y', RESCUEDATE) didn’t work because SQLite didn’t recognize RESCUEDATE as a valid date.
-- ✅ If RESCUEDATE is stored correctly, strftime('%Y', DATE(RESCUEDATE)) should work too.
SELECT SUBSTR(RESCUEDATE, 1, 4) AS year FROM PETRESCUE;

-- 2. Animals rescued should see the vet within three days of arrival.
SELECT * FROM PETRESCUE;
-- DATE_ADD(col_name, interval number date_element). 
-- here quantiry in Number and in Date_Element will combine to form the interval to be added to the date column.
-- MYSQL
SELECT DATE_ADD(RESCUEDATE, INTERVAL 3 DAY) FROM PETRESCUE;
--  SQLITE3 just adds 3 to the rescuedate
SELECT DATETIME(RESCUEDATE, '+3 days') FROM PETRESCUE;
-- If RESCUEDATE is a Unix Timestamp (INTEGER)
-- If RESCUEDATE is stored as an INTEGER Unix timestamp, use:
SELECT DATETIME(RESCUEDATE, '+3 days', 'unixepoch') FROM PETRESCUE;

-- If the question was to add 2 months to the date, the query would change to:

SELECT DATE_ADD(RESCUEDATE, INTERVAL 2 MONTH) FROM PETRESCUE;

-- Similarly, we can retrieve a date before the one given in the column by a given number using the function DATE_SUB. By modifying the same example, the following query would provide the date 3 days before the rescue.
SELECT DATE_SUB(RESCUEDATE, INTERVAL 3 DAY) FROM PETRESCUE;

-- 3. Write a query that displays the length of time the animals have been rescued, for example, the difference between the current date and the rescue date.
-- For this query, we will use the function DATEDIFF(Date_1, Date_2). This function calculates the difference between the two given dates and gives the output in number of days. For the given question, the query would be:

SELECT DATEDIFF(CURRENT_DATE, RESCUEDATE) FROM PETRESCUE;
-- CURRENT_DATE is also an inbuilt function that returns the present date as known to the server.

-- To present the output in a YYYY-MM-DD format, another function FROM_DAYS(number_of_days)can be used. This function takes a number of days and returns the required formatted output. The query above would thus be modified to
SELECT FROM_DAYS(DATEDIFF(CURRENT_DATE, RESCUEDATE)) FROM PETRESCUE;