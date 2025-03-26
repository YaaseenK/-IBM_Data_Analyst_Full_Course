# **LAB 5: Sub-queries and Nested Selects**

## **1. Introduction**
Sub-queries and nested selects are powerful SQL techniques used to retrieve specific information by executing queries within queries.

---

## **2. Understanding Sub-queries**

### **Example 1: Retrieve Employees with Salary Below Average**
Using `AVG()` directly in the `WHERE` clause will result in an error:
```sql
SELECT * 
FROM EMPLOYEES 
WHERE salary < AVG(salary);
```
**Error:** "Illegal use of group function."

Instead, we use a **sub-query** to compute the average salary separately:
```sql
SELECT *
FROM EMPLOYEES
WHERE SALARY < (SELECT AVG(SALARY) FROM EMPLOYEES);
```

---

### **Example 2: Retrieve Employee ID, Salary, and Maximum Salary**
To include the maximum salary as a separate column in each row:
```sql
SELECT EMP_ID, SALARY, (SELECT MAX(SALARY) FROM EMPLOYEES) AS MAX_SALARY 
FROM EMPLOYEES;
```

---

### **Example 3: Retrieve the Oldest Employee's First and Last Name**
Since the oldest employee has the **smallest** `B_DATE` (birthdate), we use:
```sql
SELECT F_NAME, L_NAME
FROM EMPLOYEES
WHERE B_DATE = (SELECT MIN(B_DATE) FROM EMPLOYEES);
```

---

### **Example 4: Retrieve the Average Salary of the Top 5 Earners**
To compute the **average salary** among the top 5 highest-paid employees:
```sql
SELECT AVG(SALARY) 
FROM (SELECT SALARY 
      FROM EMPLOYEES 
      ORDER BY SALARY DESC 
      LIMIT 5) AS SALARY_TABLE;
```
- The sub-query first extracts the top **5 highest salaries**.
- The outer query then computes the **average salary** of those employees.
- **Important:** A derived table must always be assigned an **alias** (e.g., `SALARY_TABLE`).

---

## **3. Summary**
✅ **Sub-queries** help retrieve specific information by executing one query inside another.
✅ **Nested selects** allow calculations using aggregated data.
✅ **Derived tables** enable further analysis on extracted subsets of data.

These techniques are widely used in **data analysis and reporting** to handle complex queries efficiently. 🚀
