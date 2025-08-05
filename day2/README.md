# Task 2: Data Insertion and Handling Nulls

## Overview
This task focuses on inserting, updating, and deleting data in the **Library Management System** database schema (created in Task 1).  
We also handle missing values (`NULL`) and ensure clean, consistent data.

## Tools Used
- MySQL Workbench / SQLiteStudio / DB Fiddle
- SQL

## Steps Performed
1. **INSERT** statements to add sample records for Authors, Publishers, Books, Members, and Loans.
2. Used **NULL** values to represent missing data (e.g., unknown address, missing bio).
3. **UPDATE** statements to replace NULL values with default placeholders.
4. **DELETE** statements to remove records meeting certain conditions (e.g., books without publishers, members with no loans).

## Files in this Repository
- `task2_insertion.sql` → SQL script with all INSERT, UPDATE, DELETE commands.
- `README.md` → This explanation file.

## How to Run
1. Ensure you have created the **Library Management** schema from Task 1.
2. Open MySQL Workbench or SQLiteStudio.
3. Load and execute `task2_insertion.sql`.

## Example Queries Used
- Insert with NULL:
```sql
INSERT INTO Authors (name, bio) VALUES ('Agatha Christie', NULL);
```
- Update NULL to default:
```sql
UPDATE Members SET email = 'noemail@example.com' WHERE email IS NULL;
```
- Delete using condition:
```sql
DELETE FROM Books WHERE publisher_id IS NULL;
```

## Outcome
A populated database with sample data, cleaned NULL values, and consistent information.
