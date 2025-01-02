```sql
-- Solution 1: Handle NULLs explicitly
SELECT * FROM employees WHERE department = 'Sales' AND (salary > 100000 OR salary IS NULL); 
--This version includes rows with NULL salaries.

--Solution 2: Exclude NULLs explicitly
SELECT * FROM employees WHERE department = 'Sales' AND salary > 100000 AND salary IS NOT NULL;
--This version excludes rows with NULL salaries.
```