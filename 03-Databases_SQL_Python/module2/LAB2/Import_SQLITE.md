# Importing CSV Data into SQLite

## Step 1: Ensure SQLite is Installed
Before proceeding, ensure that SQLite is installed on your system. You can check by running the following command in your terminal or command prompt:
```sh
sqlite3 --version
```
If SQLite is not installed, download it from the [official SQLite website](https://www.sqlite.org/download.html) and install it.

---

## Step 2: Launch SQLite
Instead of using VS Code's terminal (which may cause errors), launch SQLite using the Command Prompt:
```sh
sqlite3 "C:\Users\River\Documents\MySQL\module2\LAB2\your_database.db"
```
This ensures that SQLite is running correctly and avoids potential issues with VS Code’s terminal.

---

## Step 3: Prepare the CSV Data
Ensure your CSV files are located in the correct directory:
```
C:\Users\River\Documents\MySQL\module2\LAB2\csv_data
```
You should have CSV files for each table you created in your database.

---

## Step 4: Import CSV Data into SQLite
Use the `.import` command to load data from the CSV files into their respective tables.

### Example:
To import data into the `MEDICAL_DEPARTMENTS` table, use:
```sh
.import C:\Users\River\Documents\MySQL\module2\LAB2\csv_data\MEDICAL_DEPARTMENTS.csv MEDICAL_DEPARTMENTS
```

### Paths for Other Tables:
```sh
.import C:\Users\River\Documents\MySQL\module2\LAB2\csv_data\MEDICAL_HISTORY.csv MEDICAL_HISTORY
.import C:\Users\River\Documents\MySQL\module2\LAB2\csv_data\PATIENTS.csv PATIENTS
.import C:\Users\River\Documents\MySQL\module2\LAB2\csv_data\DOCTORS.csv DOCTORS
.import C:\Users\River\Documents\MySQL\module2\LAB2\csv_data\APPOINTMENTS.csv APPOINTMENTS
```

---

## Step 5: Verify the Data
After importing the data, you can check if it was successfully added to the tables by running:
```sql
SELECT * FROM MEDICAL_DEPARTMENTS LIMIT 5;
SELECT * FROM MEDICAL_HISTORY LIMIT 5;
SELECT * FROM PATIENTS LIMIT 5;
SELECT * FROM DOCTORS LIMIT 5;
SELECT * FROM APPOINTMENTS LIMIT 5;
```
This will display the first 5 rows from each table.

---

## Notes:
- Ensure that the CSV files are properly formatted (e.g., using commas as separators).
- If your CSV files contain headers, you may need to handle them appropriately before importing.
- If the `.import` command does not work, check for permission issues or syntax errors.
- Launching SQLite from VS Code's terminal may not always work due to environment variable issues. Using the Command Prompt (`cmd`) is recommended.

This document provides a structured way to import CSV data into SQLite while avoiding common pitfalls. 🚀
