# Comprehensive Data Science Notes

## 1. Introduction to Data Science

Python is a top language for data science, widely used in industries such as healthcare, finance, and insurance. In this course, we will cover:
- Python packages for data analysis: **NumPy, Pandas, Scikit-learn**
- Data wrangling, preprocessing, and exploratory data analysis
- Machine learning models and their evaluation
- Hands-on projects using real-world datasets

---

## 2. Understanding Datasets

A dataset consists of:
- **Rows:** Each line represents a data entry.
- **Columns:** Attributes that describe different aspects of the data.

### Dataset Example: Used Car Prices
- CSV format (comma-separated values)
- Each row represents a used car
- Important attributes: **Price (target variable), make, mileage, year, etc.**

**Goal:** Predict the price of a car based on its features.

---

## 3. Data Acquisition with Pandas

### Reading Data with Pandas
To load data using **Pandas**, consider two factors:
- **Format:** CSV, JSON, XLSX, etc.
- **File Path:** Local file or online dataset.

```python
import pandas as pd
df = pd.read_csv("dataset.csv")
```

### Handling Column Headers
If data lacks headers, assign them manually:
```python
df.columns = ["column1", "column2", "column3"]
```

### Viewing Data
```python
df.head()  # View first 5 rows
df.tail()  # View last 5 rows
```

### Exporting Data
```python
df.to_csv("output.csv")
```

---

## 4. Python Libraries for Data Science

Python libraries simplify data analysis:
- **Scientific Computing:** NumPy, SciPy
- **Data Manipulation:** Pandas (DataFrames, indexing)
- **Data Visualization:** Matplotlib, Seaborn
- **Machine Learning:** Scikit-learn (built on NumPy, SciPy, Matplotlib)

### Visualization Examples
```python
import matplotlib.pyplot as plt
df["column"].hist()  # Histogram
plt.show()
```

---

## 5. Exploring Data with Pandas

### Checking Data Types
```python
df.dtypes
```

- Pandas types: **object, float, int, datetime**
- Misclassified data types need manual correction

### Statistical Summary
```python
df.describe(include="all")
```
- **Count, mean, std, min, max, quartiles** for numeric columns
- **Unique values, most frequent values** for object columns

### Inspecting DataFrame Information
```python
df.info()
```
- Shows column names, non-null counts, and memory usage.

---

## 6. Database Access with Python

Python can connect to **databases** using APIs.

### Database Connection with Python DB API
```python
import sqlite3
conn = sqlite3.connect("database.db")
cursor = conn.cursor()
```

### Running SQL Queries
```python
cursor.execute("SELECT * FROM table_name")
data = cursor.fetchall()
```

### Closing the Connection
```python
conn.close()
```

### Key Concepts
- **SQL API:** Connects to DBMS using function calls.
- **DB API:** Python's standard for working with relational databases.
- **Cursor Objects:** Run queries and retrieve results.

---

## 7. Summary of Key Learnings

- **Pandas** makes it easy to read and manipulate data.
- **Python libraries** streamline data science workflows.
- **Checking data types** ensures accurate analysis.
- **Statistical summaries** highlight potential issues.
- **Databases** store and retrieve structured data efficiently.

---

This guide covers the core concepts needed to work with data in Python. Let me know if you need additional explanations or practice problems! 🚀
