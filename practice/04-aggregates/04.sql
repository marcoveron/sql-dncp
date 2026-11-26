-- exercise: List the total slots booked per facility
-- used the SUM function
-- GROUP BY divides the table in boxes, in this case on box per facid and then sum the slots of all the boxes
SELECT facid, SUM(slots) FROM cd.bookings GROUP BY facid ORDER BY facid;