UPDATE cd.facilities
SET membercost = 6, guestcost = 30
WHERE name LIKE 'Tennis%';

SELECT * FROM cd.facilities
WHERE name LIKE 'Tennis%';

UPDATE cd.facilities
SET membercost = 5, guestcost = 25
WHERE name LIKE 'Tennis%';

SELECT * FROM cd.facilities
WHERE name LIKE 'Tennis%';