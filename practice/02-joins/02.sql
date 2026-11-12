-- exercise: Work out the start times of bookings for tennis courts
-- use aliases without the need of the keyword AS for tables 
-- use single quotes not double for timestamp and strings
-- for timestamp you can't use LIKE. use < or > and 00:00:00 for the middlepoint 
SELECT starttime as start, fc.name FROM cd.bookings bk JOIN cd.facilities fc ON bk.facid = fc.facid WHERE starttime > '2012-09-21 00:00:00' AND starttime < '2012-09-22 00:00:00' AND fc.name LIKE 'Tennis%' ORDER BY start asc;
