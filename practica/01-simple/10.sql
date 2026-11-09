-- exercise: Combining results from multiple queries
-- learned when to use UNION to combine columns vertically
SELECT surname as surname FROM cd.members UNION SELECT name FROM cd.facilities;