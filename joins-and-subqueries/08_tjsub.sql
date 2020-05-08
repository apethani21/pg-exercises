SELECT member, facility, cost from (
	SELECT 
		cd.members.firstname || ' ' || cd.members.surname as member,
		cd.facilities.name as facility,
		CASE
			WHEN cd.members.memid = 0 THEN
				cd.bookings.slots*cd.facilities.guestcost
			ELSE
				cd.bookings.slots*cd.facilities.membercost
		END AS cost
		FROM
			cd.members
			INNER JOIN cd.bookings
				ON cd.members.memid = cd.bookings.memid
			INNER JOIN cd.facilities
				ON cd.bookings.facid = cd.facilities.facid
		WHERE
			cd.bookings.starttime >= '2012-09-14' AND
			cd.bookings.starttime < '2012-09-15'
	) AS bookings
	WHERE cost > 30
ORDER BY cost DESC;