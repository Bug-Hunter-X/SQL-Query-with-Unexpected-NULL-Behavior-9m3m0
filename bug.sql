```sql
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000;
```
This SQL query might return unexpected results if there are any null values in the 'salary' column.  The `salary > 100000` condition will not include rows with `NULL` salaries, even if they belong to the 'Sales' department, due to how SQL treats NULL values in comparisons.  Any comparison with NULL results in an UNKNOWN truth value rather than true or false.