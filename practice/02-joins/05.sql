-- exercise: Produce a list of all members who have used a tennis court
-- format the query so that is not all in one line, this enables better understanding in the future
-- concat function same as || operator 
-- join multiple tables 

SELECT DISTINCT 
	concat(mem.firstname, ' ', mem.surname) AS member, 
	fc.name AS facility 
FROM cd.bookings bk 
JOIN cd.facilities fc 
	ON bk.facid = fc.facid 
JOIN cd.members mem 
	ON bk.memid = mem.memid 
WHERE fc.name LIKE 'Tennis%' 
ORDER BY member, facility;