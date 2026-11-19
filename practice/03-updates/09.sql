-- exercise: Delete based on a subquery
DELETE FROM cd.members 
	WHERE memid
	NOT IN (SELECT DISTINCT bk.memid FROM cd.bookings bk LEFT JOIN cd.members mem ON bk.memid = mem.memid)