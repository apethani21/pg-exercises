UPDATE cd.facilities
SET membercost = (SELECT 1.1*membercost membercost
	 			  FROM cd.facilities
	 			  WHERE name = 'Tennis Court 1'),
    guestcost = (SELECT 1.1*guestcost guestcost
	 			 FROM cd.facilities
	 			 WHERE name = 'Tennis Court 1')
WHERE name = 'Tennis Court 2';

UPDATE cd.facilities
SET membercost = 5, guestcost = 25
WHERE name LIKE 'Tennis Court 2';