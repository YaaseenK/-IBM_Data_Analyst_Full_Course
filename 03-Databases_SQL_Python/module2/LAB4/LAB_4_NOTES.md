# **LAB 4 Notes**

## **Aggregation Functions**

### **1. Calculate the Total Cost of All Animal Rescues**
Using `SUM()` to find the total value of the `COST` column:
```sql
SELECT SUM(COST) FROM PETRESCUE;
```
Assigning a label to the output:
```sql
SELECT SUM(COST) AS 'Sum_of_cost' FROM PETRESCUE;
```

### **2. Find the Maximum and Minimum Quantity of Animals Rescued**
Using `MAX()` to find the highest number of rescues:
```sql
SELECT MAX(QUANTITY) FROM PETRESCUE;
```
Using `MIN()` to find the lowest number of rescues:
```sql
SELECT MIN(QUANTITY) FROM PETRESCUE;
```

### **3. Calculate the Average Cost of Animal Rescues**
Using `AVG()` to find the mean rescue cost:
```sql
SELECT AVG(COST) FROM PETRESCUE;
```

---

## **Scalar Functions and String Functions**

### **1. Round the Cost of Each Rescue**
Using `ROUND()` to remove decimal places:
```sql
SELECT ROUND(COST) FROM PETRESCUE;
```
Explicitly rounding to zero decimal places:
```sql
SELECT ROUND(COST, 0) FROM PETRESCUE;
```
Rounding to two decimal places:
```sql
SELECT ROUND(COST, 2) FROM PETRESCUE;
```

### **2. Calculate the Length of Each Animal Name**
Using `LENGTH()` to find the number of characters:
```sql
SELECT LENGTH(ANIMAL) FROM PETRESCUE;
```

### **3. Convert Animal Names to Upper and Lower Case**
Using `UPPER()` for uppercase conversion:
```sql
SELECT UPPER(ANIMAL) FROM PETRESCUE;
```
Using `LOWER()` for lowercase conversion:
```sql
SELECT LOWER(ANIMAL) FROM PETRESCUE;
```

---

## **Date Functions**

### **1. Extracting Parts of the Rescue Date**
Extracting the **day**:
```sql
SELECT STRFTIME('%d', RESCUEDATE) AS Day FROM PETRESCUE;
```
Extracting the **month**:
```sql
SELECT STRFTIME('%m', RESCUEDATE) AS Month FROM PETRESCUE;
```
Extracting the **year**:
```sql
SELECT SUBSTR(RESCUEDATE, 1, 4) AS Year FROM PETRESCUE;
```

### **2. Adding or Subtracting Time from Dates**
Adding **3 days** to `RESCUEDATE`:
```sql
SELECT DATE(RESCUEDATE, '+3 days') FROM PETRESCUE;
```
Adding **2 months**:
```sql
SELECT DATE(RESCUEDATE, '+2 months') FROM PETRESCUE;
```
Subtracting **3 days**:
```sql
SELECT DATE(RESCUEDATE, '-3 days') FROM PETRESCUE;
```

### **3. Datetime Equivalents in SQLite3**
If `RESCUEDATE` includes both **date and time (`YYYY-MM-DD HH:MM:SS`)**, use `DATETIME()` instead:
```sql
SELECT DATETIME(RESCUEDATE, '+3 days') FROM PETRESCUE;
```
Adding **2 months with time preserved**:
```sql
SELECT DATETIME(RESCUEDATE, '+2 months') FROM PETRESCUE;
```
Subtracting **3 days with time preserved**:
```sql
SELECT DATETIME(RESCUEDATE, '-3 days') FROM PETRESCUE;
```
If `RESCUEDATE` is a **Unix Timestamp (INTEGER)**:
```sql
SELECT DATETIME(RESCUEDATE, '+3 days', 'unixepoch') FROM PETRESCUE;
```

### **4. Calculating the Time Since Rescue**
Finding the difference (in days) between `RESCUEDATE` and the current date:
```sql
SELECT JULIANDAY('now') - JULIANDAY(RESCUEDATE) AS Days_Since_Rescue FROM PETRESCUE;
```
Finding the exact difference in **years, months, and days**:
```sql
SELECT 
    (STRFTIME('%Y', 'now') - STRFTIME('%Y', RESCUEDATE)) AS Years, 
    (STRFTIME('%m', 'now') - STRFTIME('%m', RESCUEDATE)) AS Months, 
    (STRFTIME('%d', 'now') - STRFTIME('%d', RESCUEDATE)) AS Days
FROM PETRESCUE;
```

---

## **Summary**
✅ **Aggregation Functions** (`SUM()`, `MAX()`, `MIN()`, `AVG()`).  
✅ **Scalar & String Functions** (`ROUND()`, `LENGTH()`, `UPPER()`, `LOWER()`).  
✅ **Date Functions** (`STRFTIME()`, `DATETIME()`, `JULIANDAY()`).  
✅ **Date Arithmetic** (`+/- INTERVAL` for modifying dates).  
✅ **Datetime Equivalents** for handling full timestamps.  

These queries will help analyze and manipulate data in **SQLite3**. 🚀
