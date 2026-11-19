-- exercise: Update a row based on the contents of another row
UPDATE cd.facilities 
SET membercost=(SELECT membercost 
				from cd.facilities 
				WHERE name = 'Tennis Court 1')*1.1 ,
	guestcost=(SELECT guestcost 
				from cd.facilities 
				WHERE name = 'Tennis Court 1')*1.1 
WHERE name = 'Tennis Court 2';