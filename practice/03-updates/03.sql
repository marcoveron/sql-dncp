-- exercise: Insert calculated data into a table
-- insert a field with a subquery output value
INSERT INTO cd.facilities (facid, name, membercost, guestcost, initialoutlay, monthlymaintenance) 
	VALUES ((SELECT max(facid) FROM cd.facilities) + 1,'Spa', 20, 30, 100000, 800) 
