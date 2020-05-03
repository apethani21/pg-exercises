SELECT bookings.starttime AS start,
	   facilities.name as name
FROM cd.bookings
INNER JOIN cd.facilities
ON bookings.facid = facilities.facid
WHERE 
    cd.facilities.name LIKE 'Tennis%'
    AND bookings.starttime >= '2012-09-21'
    AND bookings.starttime < '2012-09-22'
    ORDER BY bookings.starttime;