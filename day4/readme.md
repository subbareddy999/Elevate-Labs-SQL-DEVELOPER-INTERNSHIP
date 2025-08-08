# Task 4: Aggregate Functions and Grouping

## Objective

Learn how to summarize and analyze tabular data using:

- Aggregate functions: `SUM`, `COUNT`, `AVG`, `MIN`, `MAX`
- Grouping results with `GROUP BY`
- Filtering aggregated results with `HAVING`

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
4. Paste the content of `task4_aggregate_functions.sql`.
5. Click **Execute All** to run the queries.

### MySQL (Workbench)

1. Open **MySQL Workbench**.
2. Connect to your database server.
3. Select the desired database.
4. Open a new SQL tab.
5. Paste the content of `task4_aggregate_functions.sql`.
6. Click the lightning icon (**Execute**) to run all queries.

## Notes

- Modify table/column names according to your database schema.
- Queries are written to be generic and work on both SQLite and MySQL.
- Ensure the `employees` table exists before running the script.
