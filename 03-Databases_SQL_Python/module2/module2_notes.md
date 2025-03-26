# MODULE 2 SQL Notes

## ALTER (Add/Remove/Modify Data Types, Keys, Constraints)

The `ALTER TABLE` statement is used to add or remove columns from a table, modify the data type of columns, add or remove keys, and add or remove constraints.

### ALTER TABLE - Add Column
#### Syntax:
```sql
ALTER TABLE table_name
ADD column_name data_type;
```

A variation of the syntax:
```sql
ALTER TABLE table_name
ADD COLUMN column_name data_type;
```

By default, all entries are initially assigned the value `NULL`. Then use `UPDATE` to populate the column values.

#### Example:
Add a `telephone_number` column to the `author` table in the library database:
```sql
ALTER TABLE author 
ADD telephone_number BIGINT;
```

---
### ALTER TABLE - Modify Column Data Type
Sometimes the data type of a column needs to be changed. For example, a numeric data type for `telephone_number` would not allow parentheses, plus signs, or dashes. The appropriate data type would be `CHAR`.

#### Syntax:
```sql
ALTER TABLE table_name
MODIFY column_name data_type;
```

#### Example:
Modify `telephone_number` in `author` table to `CHAR(20)`, allowing special characters:
```sql
ALTER TABLE author
MODIFY telephone_number CHAR(20);
```

---
### TRUNCATE TABLE - Remove All Rows
The `TRUNCATE TABLE` statement deletes all rows from a table but retains its structure.

#### Syntax:
```sql
TRUNCATE TABLE table_name;
```

#### Example:
Remove all records from the `author` table:
```sql
TRUNCATE TABLE author;
```

---
## CREATE and DROP Statements

### CREATE TABLE
The `CREATE TABLE` statement is used to create a new table.

#### Syntax:
```sql
CREATE TABLE TableName (
   COLUMN1 datatype,
   COLUMN2 datatype,
   COLUMN3 datatype,
   ...
);
```

#### Examples:
1. Create a `TEST` table with `ID` (integer) and `NAME` (varchar):
```sql
CREATE TABLE TEST (
   ID int,
   NAME varchar(30)
);
```

2. Create a `COUNTRY` table:
   - `ID` as an integer
   - `CCODE` as a two-letter country code
   - `Name` as a variable-length country name column
```sql
CREATE TABLE COUNTRY (
   ID int,
   CCODE char(2),
   Name varchar(60)
);
```

3. Assign `ID` as a primary key:
```sql
CREATE TABLE COUNTRY (
   ID int NOT NULL,
   CCODE char(2),
   Name varchar(60),
   PRIMARY KEY (ID)
);
```

---
### DROP TABLE - Remove a Table
The `DROP TABLE` statement removes an entire table from the database. To avoid errors, ensure the table does not contain important data before dropping it.

#### Syntax:
```sql
DROP TABLE TableName;
```

#### Example:
Drop the `COUNTRY` table if it exists and create a new one:
```sql
DROP TABLE COUNTRY;
CREATE TABLE COUNTRY (
   ID int NOT NULL,
   CCODE char(2),
   Name varchar(60),
   PRIMARY KEY (ID)
);
```

**⚠ WARNING:** Dropping a table permanently deletes its data and structure. Ensure that important data is backed up before executing this statement.
