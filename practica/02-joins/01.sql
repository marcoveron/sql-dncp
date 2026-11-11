-- exercise: Retrieve the start times of members' bookings
SELECT starttime FROM cd.bookings JOIN cd.members AS M ON cd.bookings.memid = M.memid WHERE firstname = 'David' and surname = 'Farrell';