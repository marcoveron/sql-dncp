-- exercise: Combining results from multiple queries
-- learned when to use UNION to combine rows vertically
SELECT surname FROM cd.members UNION SELECT name FROM cd.facilities;