-- Practice Problems: Sub-queries and Implicit Joins

-- 1. Retrieve only the list of employees whose JOB_TITLE is 'Jr. Designer'.
-- a. Using sub-queries

-- Solution:

SELECT * FROM Employees 
WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS WHERE JOB_TITLE = 'Jr. Designer');


-- b. Using Implicit Joins

-- Solution:
SELECT E.*
FROM EMPLOYEES E 
Join JOBS J ON E.JOB_ID = JOB_IDENT;

-- 2. Retrieve JOB information and a list of employees whose birth year is after 1976.
-- a. Using sub-queries

-- Solution:


-- b. Using Implicit Joins

-- Solution: