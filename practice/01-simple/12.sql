-- exercise: More aggregation
-- learned subquery + functions agregation MAX()
select firstname, surname, joindate from cd.members WHERE joindate = (SELECT MAX(joindate) FROM cd.members);

