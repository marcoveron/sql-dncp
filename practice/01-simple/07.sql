-- exercise: Classify results into buckets
-- learned how to use CASE/END to give custom values to a boolean expression for better understanding
SELECT name, CASE WHEN monthlymaintenance > 100 THEN 'expensive' else 'cheap' END AS cost FROM cd.facilities;