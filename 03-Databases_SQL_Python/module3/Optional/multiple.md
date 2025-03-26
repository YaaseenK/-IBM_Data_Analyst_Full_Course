# **LAB 7: Working with Multiple Tables**

## **1. Introduction**
This lab provides hands-on experience with SQL queries that access multiple tables using **sub-queries** and **implicit joins**.

---

## **2. SQL Concepts Covered**
✅ Accessing multiple tables using **sub-queries**.  
✅ Using **nested statements** in the `WHERE` clause.  
✅ Accessing multiple tables using **implicit joins** in the `FROM` clause.  
✅ Using **aliases** for table names and qualifying column names with aliases.  

---

## **3. Accessing Multiple Tables with Sub-Queries**

### **Example 1: Retrieve Employees for Jobs Listed in the JOBS Table**
```sql
SELECT * 
FROM EMPLOYEES 
WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS);
```

### **Example 2: Retrieve Employees Whose Job Title is 'Jr. Designer'**
```sql
SELECT * 
FROM EMPLOYEES
WHERE JOB_ID IN (SELECT JOB_IDENT FROM JOBS WHERE JOB_TITLE = 'Jr. Designer');
```

### **Example 3: Retrieve JOB Information for Employees Earning More Than $70,000**
```sql
SELECT JOB_TITLE, MIN_SALARY, MAX_SALARY, JOB_IDENT
FROM JOBS
WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE SALARY > 70000);
```

### **Example 4: Retrieve JOB Information for Employees Born After 1976**
```sql
SELECT * 
FROM JOBS
WHERE JOB_IDENT IN (SELECT JOB_ID FROM EMPLOYEES WHERE SUBSTR(B_DATE, 1, 4) > '1976');
```

### **Example 5: Retrieve JOB Information for Female Employees Born After 1976**
```sql
SELECT * 
FROM JOBS
WHERE JOB_IDENT IN (
    SELECT JOB_ID FROM EMPLOYEES
    WHERE SUBSTR(B_DATE, 1, 4) > '1976' AND GENDER = 'Female'
);
```

---

## **4. Accessing Multiple Tables with Implicit Joins**

### **Example 6: Perform an Implicit Cartesian (Cross) Join Between EMPLOYEES and JOBS**
```sql
SELECT *
FROM EMPLOYEES, JOBS;
```

### **Example 7: Retrieve Employees for Jobs Listed in the JOBS Table (Using Implicit Join)**
```sql
SELECT *
FROM EMPLOYEES, JOBS
WHERE EMPLOYEES.JOB_ID = JOBS.JOB_IDENT;
```

### **Example 8: Use Shorter Aliases for Table Names**
```sql
SELECT *
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;
```

### **Example 9: Retrieve Only Employee ID, Name, and Job Title**
```sql
SELECT E.EMP_ID, E.F_NAME, E.L_NAME, J.JOB_TITLE
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;
```

### **Example 10: Fully Qualified Column Names with Aliases**
```sql
SELECT E.EMP_ID, E.F_NAME, E.L_NAME, J.JOB_TITLE
FROM EMPLOYEES E, JOBS J
WHERE E.JOB_ID = J.JOB_IDENT;
```

---

## **5. Summary**
✅ **Sub-queries** allow filtering based on another query's result.
✅ **Implicit joins** enable combining tables using shared keys.
✅ **Using aliases (`E`, `J`)** improves query readability.
✅ **Fully qualified column names (`E.F_NAME`, `J.JOB_TITLE`)** enhance clarity.

This lab demonstrates how to efficiently retrieve and manipulate data from **multiple tables** using sub-queries and joins. 🚀
