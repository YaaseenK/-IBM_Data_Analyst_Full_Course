# Lab 3 Notes

## **STRING PATTERNS - Filtering Query Results**

### **Using the WHERE Clause to Refine Query Results**
The `WHERE` clause allows filtering data based on specific conditions.

- The search condition of the `WHERE` clause uses a **predicate** to refine the search.
- You can use **wildcard characters** (e.g., `%`) as a substitute for unknown characters in a pattern.
- You can use `BETWEEN ... AND ...` to specify a **range of numbers**.

### **Example 1: Retrieve Employees from Elgin, IL**
To retrieve the first names (`F_NAME`) and last names (`L_NAME`) of all employees who live in **Elgin, IL**, use the `LIKE` operator.

#### **Syntax:**
```sql
SELECT F_NAME, L_NAME
FROM EMPLOYEES
WHERE ADDRESS LIKE '%Elgin,IL%';
```

- The `%` wildcard is used **before and after** `'Elgin,IL'`.
- This allows matching addresses that **contain** `'Elgin,IL'` anywhere.

---

### **Example 2: Identify Employees Born in the 1970s**
To filter employees born in the **1970s**, use the `LIKE` operator on the **B_DATE** (Birth Date) column.

#### **Syntax:**
```sql
SELECT * FROM EMPLOYEES
WHERE B_DATE LIKE '197%';
```
- The `%` wildcard is used **after** `'197'` to match any value from `1970-1979`.
- This assumes the date format starts with the year (e.g., `YYYY-MM-DD`).

---

### **Example 3: Retrieve Employees in Department 5 with Salary Between 60,000 and 70,000**
Use the `BETWEEN` operator to filter salaries **within a range** and specify department ID (`DEP_ID`).

#### **Syntax:**
```sql
SELECT *
FROM EMPLOYEES
WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID = 5;
```
- **`BETWEEN 60000 AND 70000`** ensures salary falls within this range.
- **`AND DEP_ID = 5`** limits results to department 5.

---

## **Sorting Query Results**
You can **sort retrieved records** using `ORDER BY`.
By default, it sorts **ascending (`ASC`)**, but `DESC` can be used for descending order.

### **Example 1: Retrieve Employees Ordered by Department ID**
#### **Syntax:**
```sql
SELECT F_NAME, L_NAME, DEP_ID
FROM EMPLOYEES
ORDER BY DEP_ID;
```
- This sorts employees **by `DEP_ID` in ascending order (default)**.

### **Example 2: Retrieve Employees Ordered by Department ID and Last Name (Descending Order)**
#### **Syntax:**
```sql
SELECT F_NAME, L_NAME
FROM EMPLOYEES
ORDER BY DEP_ID, L_NAME DESC;
```
- **First sorts by `DEP_ID`**.
- **Then sorts last names (`L_NAME`) in descending order** within each department.

---

## **Grouping Query Results**
To **group records** and apply aggregate functions, use `GROUP BY`.

### **Example 1: Retrieve Employee Count Per Department**
#### **Syntax:**
```sql
SELECT DEP_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEP_ID;
```
- **`COUNT(*)`** counts employees in each department.
- **`GROUP BY DEP_ID`** groups records by department.

### **Example 2: Retrieve Employee Count and Average Salary Per Department**
#### **Syntax:**
```sql
SELECT DEP_ID, COUNT(*) AS Employee_Count, AVG(SALARY) AS Avg_Salary
FROM EMPLOYEES
GROUP BY DEP_ID;
```
- Uses **`COUNT(*)`** to count employees.
- Uses **`AVG(SALARY)`** to calculate average salary per department.
- Uses **column labels (`AS Employee_Count`, `AS Avg_Salary`)** for better readability.

---

## **Summary**
✅ **Filtering:** `WHERE` clause refines queries using predicates.  
✅ **Wildcard Matching:** `LIKE` with `%` allows pattern-based searches.  
✅ **Range Queries:** `BETWEEN ... AND ...` filters within a numeric range.  
✅ **Sorting:** `ORDER BY` (default `ASC`, optional `DESC`).  
✅ **Grouping:** `GROUP BY` with aggregate functions (e.g., `COUNT(*)`, `AVG(SALARY)`).

---

This concludes **Lab 3 Notes** on String Patterns, Sorting, and Grouping in SQL. 🚀
