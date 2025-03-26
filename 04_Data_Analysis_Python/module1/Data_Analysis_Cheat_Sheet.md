# Data Analysis with Python - Cheat Sheet

## 📌 Importing Data Sets

### **Read CSV Data Set**
Read a CSV file into a Pandas DataFrame.

```python
# Load CSV without headers
df = pd.read_csv(<CSV_path>, header=None)

# Load CSV using the first row as the header
df = pd.read_csv(<CSV_path>, header=0)
```
🔹 **Note:**  
- In **JupyterLite**, download the required file locally and use the local path.  
- In **JupyterLab** or other Python environments, you can use the file's **URL** directly.

---

### **Print First Few Entries**
Display the first few rows of the DataFrame (default: 5 rows).

```python
df.head(n)  # n = number of rows (default 5)
```

### **Print Last Few Entries**
Display the last few rows of the DataFrame (default: 5 rows).

```python
df.tail(n)  # n = number of rows (default 5)
```

---

## 📌 Data Cleaning and Transformation

### **Assign Header Names**
Manually set column headers.

```python
df.columns = headers
```

### **Replace "?" with NaN**
Replace missing values represented as `?` with `NaN` from NumPy.

```python
import numpy as np
df = df.replace("?", np.nan)
```

---

## 📌 Exploring and Summarizing Data

### **Retrieve Data Types**
Check data types of all columns in the DataFrame.

```python
df.dtypes
```

### **Retrieve Statistical Description**
Get summary statistics of the dataset.
- Default: Only numerical data.
- Use `include="all"` to include all variables.

```python
df.describe()  # Default (only numerical columns)
df.describe(include="all")  # Include all columns
```

### **Retrieve Data Set Summary**
Get an overview of the dataset, including non-null values and memory usage.

```python
df.info()
```

---

## 📌 Saving Processed Data

### **Save DataFrame to CSV**
Save the processed DataFrame as a new CSV file.

```python
df.to_csv(<output CSV path>)
```

---

📌 **Source:** CognitiveClass.ai  
