# FilmLocations Database Query Notes

## LAB 1 Table: FilmLocations
## LAB 2 Table: Instructors

### LAB 1 Column Descriptions
- **Title**: Titles of the films
- **ReleaseYear**: Time of public release of the films
- **Locations**: Locations of San Francisco where the films were shot
- **FunFacts**: Fun facts about the filming locations
- **ProductionCompany**: Companies who produced the films
- **Distributor**: Companies who distributed the films
- **Director**: People who directed the films
- **Writer**: People who wrote the films
- **Actor1**: Person 1 who acted in the films
- **Actor2**: Person 2 who acted in the films
- **Actor3**: Person 3 who acted in the films

### LAB 2 Column Descriptions
- **ins_id**: Unique identification number of the instructors
- **lastname**: Last name of the instructors
- **firstname**: First name of the instructors
- **city**: Name of the cities where instructors are located
- **country**: Two-letter country code of the countries where instructors are located

---

## Query Examples

### Using `COUNT` Statement

1. **Count the number of records (rows) in the FilmLocations table:**
```sql
SELECT COUNT(*) FROM FilmLocations;
```

2. **Count the number of locations for films written by a specific writer (e.g., "James Cameron"):**
```sql
SELECT COUNT(Locations) FROM FilmLocations WHERE Writer = "James Cameron";
```

---

### Using `DISTINCT` Statement

1. **Retrieve the titles of all films, removing duplicates:**
```sql
SELECT DISTINCT Title FROM FilmLocations;
```

2. **Count the distinct release years of films produced by a specific company (e.g., "Warner Bros. Pictures"):**
```sql
SELECT COUNT(DISTINCT ReleaseYear) FROM FilmLocations WHERE ProductionCompany = "Warner Bros. Pictures";
```

---

### Using `LIMIT` Statement

1. **Retrieve only the first 25 rows from the FilmLocations table:**
```sql
SELECT * FROM FilmLocations LIMIT 25;
```

2. **Retrieve 15 rows starting from row 11 (using OFFSET):**
```sql
SELECT * FROM FilmLocations LIMIT 15 OFFSET 10;
```

---

## `INSERT`, `UPDATE`, `DELETE` Statements (DML - Data Manipulation Language)

### `INSERT` - Insert new rows into a table

#### Syntax:
```sql
INSERT INTO table_name (column1, column2, ....)
VALUES (value1, value2, ...);
```

1. **Insert a new instructor record with id 4 for Sandip Saha who lives in Edmonton, CA into the `Instructor` table.**
```sql
INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(4, 'Saha', 'Sandip', 'Edmonton', 'CA');
```

2. **Insert multiple instructor records into the `Instructor` table.**
```sql
INSERT INTO Instructor(ins_id, lastname, firstname, city, country)
VALUES(5, 'Doe', 'John', 'Sydney', 'AU'), 
      (6, 'Doe', 'Jane', 'Dhaka', 'BD');
```

---

### `UPDATE` - Update existing rows in a table

#### Syntax:
```sql
UPDATE table_name 
SET column1 = value1, column2 = value2, ...
WHERE condition;
```

1. **Update the city for Sandip to Toronto.**
```sql
UPDATE Instructor 
SET city='Toronto' 
WHERE firstname='Sandip';
```

2. **Update multiple columns for an instructor.**
```sql
UPDATE Instructor 
SET city='Dubai', country='AE' 
WHERE ins_id=5;
```

---

### `DELETE` - Remove rows from a table

#### Syntax:
```sql
DELETE FROM table_name
WHERE condition;
```

1. **Remove the instructor record of Doe whose id is 6.**
```sql
DELETE FROM Instructor
WHERE ins_id = 6;
```
