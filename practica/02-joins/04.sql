-- exercise: Produce a list of costly bookings

SELECT mem.firstname || ' ' || mem.surname, fac.name, 
	CASE WHEN mem.memid = 0 THEN fac.guestcost * bkg.slots 
	ELSE fac.membercost * bkg.slots END AS cost
FROM cd.bookings bkg
JOIN cd.facilities fac ON bkg.facid = fac.facid
JOIN cd.members mem ON bkg.memid = mem.memid
WHERE bkg.starttime >= '2012-09-14 00:00:00' AND bkg.starttime <= '2012-09-15 00:00:00'
	AND (CASE WHEN mem.memid = 0 THEN fac.guestcost * bkg.slots 
	ELSE fac.membercost * bkg.slots END) > 30;
