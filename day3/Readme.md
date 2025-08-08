# Task 3: Writing Basic SELECT Queries

## Objective
Demonstrate how to retrieve data from one or more tables using:
- `SELECT` (with `*` and specific columns)
- Filtering with `WHERE`, `AND`, `OR`, `LIKE`, `BETWEEN`
- Sorting with `ORDER BY`
- Limiting results with `LIMIT`

## Requirements
- SQLite (DB Browser for SQLite) **or**
- MySQL (MySQL Workbench)

## Sample Table Used
The queries assume a table named **employees** with columns:
- `employee_id` (INTEGER)
- `first_name` (TEXT / VARCHAR)
- `last_name` (TEXT / VARCHAR)
- `department` (TEXT / VARCHAR)
- `salary` (INTEGER / DECIMAL)

## How to Run
### SQLite (DB Browser)
1. Open **DB Browser for SQLite**.
2. Open your database file or create a new one.
3. Go to the **Execute SQL** tab.
4. Paste the content of `task3_select_queries.sql`.
5. Click **Execute All** to run the queries.

### MySQL (Workbench)
1. Open **MySQL Workbench**.
2. Connect to your database server.
3. Select the desired database.
4. Open a new SQL tab.
5. Paste the content of `task3_select_queries.sql`.
6. Click the lightning icon (**Execute**) to run all queries.

## Notes
- Modify table/column names according to your database schema.
- Queries are written to be generic and work on both SQLite and MySQL.
- Ensure the `employees` table exists before running the script.
