# **LAB 8: Sub-queries and Nested SELECTs**

## **1. Introduction**
This lab focuses on using **nested SELECT statements (sub-queries)** to handle more complex queries and improve SQL efficiency.

---

## **2. SQL Concepts Covered**
✅ Using **sub-queries** in `WHERE` clauses.  
✅ Building **Column Expressions** using sub-queries.  
✅ Creating **Table Expressions** (sub-query used as a table).  
✅ Understanding **failing queries** and their fixes with sub-queries.

---

## **3. Syntax of a Nested SELECT Statement**
```sql
SELECT column_name [, column_name ]
FROM table1 [, table2 ]
WHERE column_name OPERATOR
   (SELECT column_name [, column_name ]
   FROM table1 [, table2 ]
   WHERE condition);
```

---

## **4. Exercises**

### **Problem 1: Execute a Failing Query to Retrieve Employees with Salary Below Average**
⚠️ **This query will fail due to incorrect use of `AVG(SALARY)` in `WHERE`.**
```sql
SELECT * 
FROM EMPLOYEES 
WHERE SALARY < AVG(SALARY);
```
💡 **Error:** "Illegal use of group function."

---

### **Problem 2: Fix the Query Using a Sub-query**
✅ **Corrected query using a sub-query:**
```sql
SELECT *
FROM EMPLOYEES
WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);
```
- The sub-query calculates the **average salary** before comparing values.

---

### **Problem 3: Execute a Failing Query to Retrieve EMP_ID, SALARY, and MAX_SALARY**
⚠️ **This query will fail because `MAX(SALARY)` is an aggregate function and cannot be directly included as a column.**
```sql
SELECT EMP_ID, SALARY, MAX(SALARY) AS MAX_SALARY FROM EMPLOYEES;
```
💡 **Error:** "Column 'EMP_ID' is invalid in the select list because it is not contained in an aggregate function."

---

### **Problem 4: Execute a Column Expression to Fix the Query**
✅ **Use a sub-query to calculate `MAX_SALARY` separately:**
```sql
SELECT EMP_ID, SALARY, (SELECT MAX(SALARY) FROM EMPLOYEES) AS MAX_SALARY 
FROM EMPLOYEES;
```
- The sub-query finds **MAX(SALARY)** and assigns it as a **constant column**.

---

### **Problem 5: Execute a Table Expression to Exclude Sensitive Employee Data**
✅ **Create a table expression that hides sensitive columns (`SSN`, `B_DATE`, `SEX`, `ADDRESS`, `SALARY`).**
```sql
SELECT EMP_ID, F_NAME, L_NAME, JOB_ID, DEP_ID
FROM (SELECT EMP_ID, F_NAME, L_NAME, JOB_ID, DEP_ID FROM EMPLOYEES) AS EMP_SECURE;
```
- The sub-query **removes sensitive data** and is used as a virtual table (`EMP_SECURE`).

---

## **5. Summary**
✅ **Sub-queries** help break complex queries into smaller, manageable parts.
✅ **Column Expressions** allow calculated values from sub-queries.
✅ **Table Expressions** enable hiding or restructuring data before use.
✅ **Fixing failing queries** often requires sub-query restructuring.

This lab provides real-world SQL solutions for working with **nested SELECT statements and sub-queries**. 🚀