# Module 4: SQL Cheat Sheet — Accessing Databases using Python

---

## **SQLite (Python)**

| **Topic**       | **Syntax**                             | **Description**                                                                                           | **Example** |
|----------------|-----------------------------------------|-----------------------------------------------------------------------------------------------------------|-------------|
| **connect()**  | `sqlite3.connect()`                    | Opens a database connection to allow SQLite operations. Creates the DB file if it doesn’t exist.         | `import sqlite3`  <br>`con = sqlite3.connect("INSTRUCTOR.db")` |
| **cursor()**   | `con.cursor()`                         | Creates a cursor object to execute SQL statements and fetch results.                                      | `cursor_obj = con.cursor()` |
| **execute()**  | `cursor_obj.execute()`                 | Executes an SQL statement like `SELECT`, `INSERT`, `CREATE TABLE`, etc.                                   | `cursor_obj.execute('''INSERT INTO INSTRUCTOR VALUES (1, 'Rav', 'Ahuja', 'TORONTO', 'CA')''')` |
| **fetchall()** | `cursor_obj.fetchall()`               | Retrieves all rows from a query result as a list of tuples.                                               | `output_all = cursor_obj.fetchall()` |
| **fetchmany()**| `cursor_obj.fetchmany(n)`              | Retrieves the next `n` rows of a query result.                                                            | `output_many = cursor_obj.fetchmany(2)` |
| **read_sql_query()** | `pd.read_sql_query()`             | Pandas function to run SQL queries and return results as a DataFrame.                                     | `df = pd.read_sql_query("SELECT * FROM instructor;", conn)` |
| **shape**      | `dataframe.shape`                      | Returns a tuple (rows, columns) indicating DataFrame size.                                                | `df.shape` |
| **close()**    | `con.close()`                          | Closes the connection to the database.                                                                    | `con.close()` |
| **CREATE TABLE**| `CREATE TABLE table_name (...)`       | Defines a table structure and creates a new table.                                                        | ```sql
CREATE TABLE INTERNATIONAL_STUDENT_TEST_SCORES (
    country VARCHAR(50),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    test_score INT
);
``` |
| **barplot()**  | `seaborn.barplot()`                    | Creates a bar chart showing the relationship between a categorical and numeric variable.                  | `seaborn.barplot(x='Test_Score', y='Frequency', data=dataframe)` |
| **read_csv()** | `pd.read_csv('file_path.csv')`         | Reads a CSV file and loads it into a Pandas DataFrame.                                                    | `df = pandas.read_csv('file.csv')` |
| **to_sql()**   | `df.to_sql()`                          | Writes contents of a DataFrame to an SQL database table.                                                  | `df.to_sql("table_name", con, if_exists='replace', index=False, method="multi")` |
| **read_sql()** | `pd.read_sql(sql_query, conn)`         | Executes a SQL query and returns a DataFrame.                                                             | `df = pandas.read_sql("SELECT * FROM INSTRUCTOR", conn)` |

---

## **Db2 (Python with ibm_db)**

| **Topic**           | **Syntax**                                                   | **Description**                                                                 | **Example** |
|--------------------|-------------------------------------------------------------|---------------------------------------------------------------------------------|-------------|
| **connect()**      | `ibm_db.connect()`                                           | Connects to an IBM Db2 database using connection string.                        | ```python
import ibm_db
conn = ibm_db.connect('DATABASE=mydb;HOST=example.com;PORT=50000;UID=myuser;PWD=mypassword;', '', '')
``` |
| **server_info()**  | `ibm_db.server_info(conn)`                                   | Retrieves information about the connected Db2 server.                          | ```python
server = ibm_db.server_info(conn)
print(server.DBMS_NAME)
print(server.DBMS_VER)
``` |
| **close()**        | `con.close()`                                                | Closes the database connection.                                                | `con.close()` |
| **exec_immediate()**| `ibm_db.exec_immediate(conn, sql_statement)`              | Executes a SQL statement immediately without prior preparation.                | ```python
dropQuery = "DROP TABLE INSTRUCTOR"
dropStmt = ibm_db.exec_immediate(conn, dropQuery)
``` |

---

### **Authors**
- Abhishek Gagneja  
- D.M Naidu
- Yaaseen Khan