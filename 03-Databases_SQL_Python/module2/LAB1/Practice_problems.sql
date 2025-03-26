-- Create a new table named "Toys" with attributes ID (Integer), Variety (Variable length string), and Quantity (Integer).
-- Make sure the ID is not NULL.

CREATE TABLE Toys (
    ID INTEGER NOT NULL,
    Variety VARCHAR(20),
    Quantity INTEGER
);

-- Insert the following entries into the "Toys" table.

INSERT INTO Toys VALUES
    (1, 'Chew toy', 20),
    (2, 'Balls', 50),
    (3, 'Bowls', 30),
    (4, 'Foldable bed', 40);

-- Alter the length of "Variety" in the table to 30 characters.

ALTER TABLE Toys
MODIFY Variety VARCHAR(30);

-- Truncate the "Toys" table (not supported in SQLite, but valid in other databases).

TRUNCATE TABLE Toys;

-- Drop the "Toys" table.

DROP TABLE Toys;
