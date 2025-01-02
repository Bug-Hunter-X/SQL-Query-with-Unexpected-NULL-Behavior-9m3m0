# SQL Query with Unexpected NULL Behavior

This repository demonstrates a common SQL error related to the handling of `NULL` values in comparisons.  The `bug.sql` file contains a query that produces incomplete results because it doesn't properly account for `NULL` salaries. The `bugSolution.sql` provides the corrected version.

The issue arises because any comparison with `NULL` evaluates to `UNKNOWN` in SQL, neither `TRUE` nor `FALSE`, causing rows with `NULL` salaries to be excluded. The solution uses the `IS NOT NULL` condition to explicitly include or exclude rows with `NULL` salary values, depending on the intended behavior.