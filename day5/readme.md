# Task 5: SQL Joins (Inner, Left, Right, Full)

## Objective

Learn to combine data from multiple tables using different types of joins:

- `INNER JOIN`
- `LEFT JOIN`
- `RIGHT JOIN`
- `FULL OUTER JOIN` (via UNION in MySQL)

## Requirements

- MySQL (Workbench) recommended.
- For SQLite: RIGHT JOIN and FULL OUTER JOIN are not directly supported.

## Sample Tables

We use:

1. **Customers**
   - `customer_id` (INT, Primary Key)
   - `customer_name` (VARCHAR)
   - `city` (VARCHAR)

2. **Orders**
   - `order_id` (INT, Primary Key)
   - `customer_id` (INT, Foreign Key → Customers.customer_id)
   - `product_name` (VARCHAR)
   - `order_date` (DATE)

## How to Run

### MySQL (Workbench)

1. Open **MySQL Workbench**.
2. Create or select a database.
3. Paste the contents of `task5_sql_joins.sql`.
4. Execute all statements.

### SQLite (DB Browser)

1. Remove `RIGHT JOIN` and FULL OUTER JOIN queries (not supported).
2. Run the remaining script.

## Expected Results

- **INNER JOIN** → Only rows where there is a match in both tables.
- **LEFT JOIN** → All rows from the left table + matching rows from right.
- **RIGHT JOIN** → All rows from the right table + matching rows from left.
- **FULL OUTER JOIN** → All rows from both tables, with NULLs where there is no match.

## Notes

- MySQL does not support `FULL OUTER JOIN` directly, so we simulate it using `UNION` of `LEFT JOIN` and `RIGHT JOIN`.
- Modify table/column names as per your database schema if needed.
