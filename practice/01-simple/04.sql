-- exercise: Control which rows are retrieved - part 2
-- apply conditionals to the filters and return only specific columns
SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities WHERE membercost > 0 and membercost < monthlymaintenance / 50;
