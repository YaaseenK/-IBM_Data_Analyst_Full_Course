-- -- SQLite
-- SELECT * FROM DEPARTMENTS;
-- SELECT * FROM JOBS;
-- SELECT * FROM JOB_history;
-- SELECT * FROM Locations;
-- SELECT * FROM Employees;

SELECT F_NAME, L_NAME, ADDRESS
FROM EMPLOYEES
WHERE ADDRESS LIKE '%Elgin,IL%';

SELECT F_NAME, L_NAME, B_DATE FROM EMPLOYEES 
WHERE B_DATE LIKE '197%';

SELECT * FROM EMPLOYEES
WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID = 5;

-- Retrieve all employees ordered by dep_id
SELECT F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES
ORDER BY DEP_ID;

-- Retrieve all employees ordered by dep_id backwards
SELECT F_NAME, L_NAME FROM EMPLOYEES
ORDER BY DEP_ID, L_NAME DESC;

-- retrieve the number of employees in the department
SELECT DEP_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEP_ID;

-- 
SELECT * FROM DEPARTMENTS;
SELECT * FROM EMPLOYEES;

-- FOR EACH DEPARTMENT SELECT THE NUMBER EMPLOYEES AND THE AVG EMPLOYEE SALARY  
SELECT DEP_ID, COUNT(*), AVG(SALARY)
FROM EMPLOYEES GROUP BY DEP_ID;

-- refine output using appropriate labels for the col
-- label compute col in the result set of the last problem as num_EMP and AVG_SAL

SELECT DEP_ID, COUNT(*) AS "NUM_EMPLOYEES", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID;

-- COMBINE GROUP BY AND ORDER BY
-- SORT THE RESULTS OF PREVIOUS QUERY BY AVERAGE SALARY
SELECT DEP_ID, COUNT(*) AS "NUM_OF_EMP", AVG(SALARY) AS 'AVG_SALARY'
FROM EMPLOYEES
GROUP BY DEP_ID
ORDER BY AVG_SALARY;

-- FILTER A GROUP RESPONE USING THE HABIGN CLAUSE
-- LIMIT THE RESULT TO DEPARTMENTS FEWER THAN 4 EMPS
SELECT DEP_ID, COUNT(*) AS "NUM_OF_EMP", AVG(SALARY) AS "AVG_SALARY"
FROM EMPLOYEES
GROUP BY DEP_ID
HAVING COUNT(*) < 4
ORDER BY AVG_SALARY; 

-- Practice Questions: 
-- 1. Retrieve the list of all employees, first and last names, whose first names start with ‘S’.
    SELECT F_NAME, L_NAME
    FROM EMPLOYEES
    WHERE F_NAME LIKE 'S%'

-- 2. Arrange all the records of the EMPLOYEES table in ascending order of the date of birth.
    SELECT * from EMPLOYEES 
    ORDER BY B_DATE;

-- 3. Group the records in terms of the department IDs and filter them of ones that have average salary more than or equal to 60000. Display the department ID and the average salary.
    SELECT DEP_ID, AVG(SALARY)
    FROM EMPLOYEES
    GROUP BY DEP_ID
    HAVING AVG(SALARY) >= 60000
    -- ORDER BY SALARY;

-- 4. For the problem above, sort the results for each group in descending order of average salary. 
    SELECT DEP_ID, AVG(SALARY) AS "AVG_SALARY"
    FROM EMPLOYEES
    GROUP BY DEP_ID
    HAVING AVG(SALARY) >= 60000
    ORDER BY "AVG_SALARY" DESC;