# SQLite Database Setup Guide

## **Overview**
This guide walks through the steps to create an SQLite database, define a table, and insert sample data using the command line or VS Code.

## **1. Open SQLite**
To start SQLite, open the command prompt and navigate to the directory containing SQLite tools.
```sh
cd C:\Users\River\Downloads\sqlite-tools-win-x64-3490100
sqlite3
```

## **2. Create a Database**
To create a persistent SQLite database in a specific directory, use:
```sh
sqlite3 "C:\Users\River\Documents\MySQL\module1\LAB2\instructors.db"
```
This command initializes the database file `instructors.db` in the `LAB2` folder.

### **Verify the Database**
To check if the database is active:
```sql
.databases
```
This should list `instructors.db`.

## **3. Create the `Instructor` Table**
Run the following SQL command inside SQLite or from VS Code:
```sql
CREATE TABLE IF NOT EXISTS Instructor (
    ins_id INTEGER PRIMARY KEY, 
    lastname TEXT NOT NULL, 
    firstname TEXT NOT NULL, 
    city TEXT, 
    country TEXT CHECK(LENGTH(country) = 2) NOT NULL
);
```
### **Verify Table Creation**
Check if the table exists:
```sql
.tables
```
To see the table structure:
```sql
PRAGMA table_info(Instructor);
```

## **4. Insert Sample Data**
Data can be inserted either directly via SQLite CLI or through VS Code.

### **Insert Data via SQLite CLI**
```sql
INSERT INTO Instructor (ins_id, lastname, firstname, city, country)
VALUES 
(1, 'Smith', 'John', 'New York', 'US'),
(2, 'Doe', 'Jane', 'Toronto', 'CA'),
(3, 'Brown', 'Mike', 'London', 'GB');
```

### **Insert Data via VS Code**
- Open the database in VS Code.
- Write the `INSERT` statements in an SQL file and execute them.

### **Verify Data Insertion**
Retrieve all records from the table:
```sql
SELECT * FROM Instructor;
```
This should display the inserted records.

## **5. Exit SQLite**
To exit the SQLite command line:
```sh
.exit
```

## **Troubleshooting**
- If a command is not executing, ensure you are inside SQLite (`sqlite3` is running).
- If `.tables` does not list `Instructor`, verify you are using the correct database with `.databases`.
- If an error occurs during table creation, check for syntax errors in SQL commands.
- If data is not showing in VS Code, refresh the database connection.

## **Conclusion**
You have successfully created an SQLite database, defined a table, inserted records via command line and VS Code, and retrieved data. 🎉
