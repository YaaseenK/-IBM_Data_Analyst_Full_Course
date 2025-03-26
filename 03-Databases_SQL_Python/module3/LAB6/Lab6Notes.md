# **LAB 6: Accessing Multiple Tables with Sub-queries and Joins**

## **1. Accessing Multiple Tables with Sub-queries**

### **Example 1: Retrieve Employees Records for Jobs in the JOBS Table**
To fetch only the `EMPLOYEES` records corresponding to jobs listed in the `JOBS` table, use a sub-query in the `WHERE` clause:
```sql
SELECT * 
FROM EMPLOYEES 
WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS);
```
- The sub-query retrieves all `JOB_IDENT` values from the `JOBS` table.
- The outer query filters employees whose `JOB_ID` matches any value in that sub-query.

---

### **Example 2: Retrieve Job Information for Employees Earning Over $70,000**
This query fetches job details **only for employees** earning more than `$70,000`:
```sql
SELECT JOB_TITLE, MIN_SALARY, MAX_SALARY, JOB_IDENT
FROM JOBS
WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE SALARY > 70000);
```
- The sub-query selects all `JOB_ID`s where employees earn more than `$70,000`.
- The outer query retrieves `JOB_TITLE`, `MIN_SALARY`, and `MAX_SALARY` for those jobs.

---

## **2. Accessing Multiple Tables with Implicit Joins**

### **Example 3: Retrieve Employees Records for Jobs Using an Implicit Join**
Instead of using a sub-query, we can join both tables on `JOB_ID`:
```sql
SELECT *
FROM EMPLOYEES, JOBS
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;
```
- The `WHERE` clause ensures that employees are matched to their respective jobs using `JOB_ID`.
- This returns the combined records of both tables where `JOB_ID = JOB_IDENT`.

---

### **Example 4: Using Table Aliases for Improved Readability**
Assigning **shorter aliases** to table names makes the query more readable:
```sql
SELECT *
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;
```
- `E` is the alias for `EMPLOYEES`.
- `J` is the alias for `JOBS`.
- The result remains the same but the query is cleaner and more manageable.

---

### **Example 5: Retrieve Employee ID, Name, and Job Title**
Fetching **only relevant columns** instead of `SELECT *`:
```sql
SELECT EMP_ID, F_NAME, L_NAME, JOB_TITLE
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;
```
- Retrieves only `EMP_ID`, first name (`F_NAME`), last name (`L_NAME`), and `JOB_TITLE`.
- `JOB_TITLE` comes from the `JOBS` table.

---

### **Example 6: Using Fully Qualified Column Names with Aliases**
For clarity, explicitly prefix column names with table aliases:
```sql
SELECT E.EMP_ID, E.F_NAME, E.L_NAME, J.JOB_TITLE
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;
```
- This makes it **clearer** which table each column belongs to.
- Ensures **readability and prevents conflicts** when multiple tables have the same column names.

---

## **3. Summary**
✅ **Sub-queries** are useful for filtering results based on another query.
