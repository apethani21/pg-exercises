SELECT DISTINCT members.firstname || ' ' || members.surname AS member,
	   			facilities.name AS facility
FROM cd.members
INNER JOIN cd.bookings
ON members.memid = bookings.memid
INNER JOIN cd.facilities
ON bookings.facid = facilities.facid
WHERE facilities.name LIKE 'Tennis%'
ORDER BY member;