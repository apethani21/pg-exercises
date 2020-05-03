SELECT members.firstname || ' ' || members.surname AS member,
	   facilities.name AS facility,
    CASE
        WHEN members.memid = 0
        THEN bookings.slots*facilities.guestcost
        ELSE bookings.slots*facilities.membercost
        END AS cost
FROM cd.members
INNER JOIN cd.bookings
ON members.memid = bookings.memid
INNER JOIN cd.facilities
ON bookings.facid = facilities.facid
WHERE bookings.starttime >= '2012-09-14'
AND bookings.starttime < '2012-09-15'
AND ((members.memid = 0 and bookings.slots*facilities.guestcost > 30) or
	(members.memid > 0 and bookings.slots*facilities.membercost > 30))
ORDER BY cost DESC;