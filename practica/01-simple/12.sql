-- exercise: More aggregation
select firstname, surname, joindate from cd.members WHERE joindate = (SELECT MAX(joindate) FROM cd.members);