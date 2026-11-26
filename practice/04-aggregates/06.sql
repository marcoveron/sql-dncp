-- exercise: List the total slots booked per facility in a given month
-- double quotes for aliases with spaces
-- learned the extract function to manipulate timestamps
-- Produce a list of the total number of slots booked per facility in the month of September 2012. Produce an output table consisting of facility id and slots, sorted by the number of slots.
SELECT facid, EXTRACT(MONTH FROM starttime) as month, SUM(slots) as "Total Slots" FROM cd.bookings WHERE EXTRACT(year from starttime) = 2012 GROUP BY facid, month ORDER BY facid, month;	
