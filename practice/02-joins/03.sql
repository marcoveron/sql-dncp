-- exercise: Produce a list of all members who have recommended another member
-- learned how to order by two columns with ORDER BY and , separated
-- join the same table to use on attribute as a reference to other one of the same table
SELECT DISTINCT mem2.firstname, mem2.surname FROM cd.members mem1 JOIN cd.members mem2 on mem1.recommendedby = mem2.memid ORDER BY surname asc, firstname asc;