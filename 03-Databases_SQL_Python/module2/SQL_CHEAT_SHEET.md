# SQL Cheat Sheet: CREATE TABLE, ALTER, DROP, TRUNCATE

## Commands and Syntax

### CREATE TABLE
```sql
MySQL/DB2: 
CREATE TABLE table_name (col1 datatype optional keyword, col2 datatype optional keyword, col3 datatype optional keyword,..., colN datatype optional keyword);
```
- **Description**: `CREATE TABLE` statement is used to create the table. Each column in the table is specified with its name, data type, and an optional keyword which could be `PRIMARY KEY`, `NOT NULL`, etc.
- **Example**:
```sql
MySQL/DB2: 
CREATE TABLE employee (employee_id CHAR(2) PRIMARY KEY, first_name VARCHAR(30) NOT NULL, mobile INT);
```

### ALTER TABLE - ADD COLUMN
```sql
MySQL/DB2: 
Option 1: ALTER TABLE table_name ADD column_name_1 datatype,... ADD COLUMN column_name_n datatype;
Option 2: ALTER TABLE table_name ADD COLUMN column_name_1 datatype;
```
- **Description**: `ALTER TABLE` statement is used to add columns to a table.
- **Example**:
```sql
MySQL/DB2: 
ALTER TABLE employee ADD income BIGINT;
ALTER TABLE employee ADD COLUMN income BIGINT;
```

### ALTER TABLE - ALTER COLUMN
```sql
MySQL: 
ALTER TABLE table_name MODIFY column_name_1 new_data_type;
DB2: 
ALTER TABLE table_name ALTER COLUMN column_name_1 SET DATA TYPE datatype;
```
- **Description**: `MODIFY` clause is used with the `ALTER TABLE` statement to modify the data type of columns.
- **Example**:
```sql
MySQL: 
ALTER TABLE employee MODIFY mobile CHAR(20);
DB2: 
ALTER TABLE employee ALTER COLUMN mobile SET DATA TYPE CHAR(20);
```

### ALTER TABLE - DROP COLUMN
```sql
MySQL/DB2: 
ALTER TABLE table_name DROP COLUMN column_name_1;
```
- **Description**: `ALTER TABLE DROP COLUMN` statement is used to remove columns from a table.
- **Example**:
```sql
MySQL/DB2: 
ALTER TABLE employee DROP COLUMN mobile;
```

### ALTER TABLE - RENAME COLUMN
```sql
MySQL: 
ALTER TABLE table_name CHANGE COLUMN current_column_name new_column_name datatype [optional keywords];
DB2: 
ALTER TABLE table_name RENAME COLUMN current_column_name TO new_column_name;
```
- **Description**: `CHANGE COLUMN` clause is used to rename the columns in a table.
- **Example**:
```sql
MySQL: 
ALTER TABLE employee CHANGE COLUMN first_name name VARCHAR(255);
DB2: 
ALTER TABLE employee RENAME COLUMN first_name TO name;
```

### TRUNCATE TABLE
```sql
MySQL: 
TRUNCATE TABLE table_name;
DB2: 
TRUNCATE TABLE table_name IMMEDIATE;
```
- **Description**: `TRUNCATE TABLE` statement is used to delete all rows in a table.
- **Example**:
```sql
MySQL: 
TRUNCATE TABLE employee;
DB2: 
TRUNCATE TABLE employee IMMEDIATE;
```

### DROP TABLE
```sql
MySQL/DB2: 
DROP TABLE table_name;
```
- **Description**: `DROP TABLE` statement is used to delete a table from a database. If you delete a table that contains data, by default, the data will be deleted alongside the table.
- **Example**:
```sql
MySQL/DB2: 
DROP TABLE employee;
```

---

### Author(s)
- Himanshu Birla
- Niveditha Pandith TS

---

**Skills Network | IBM**
