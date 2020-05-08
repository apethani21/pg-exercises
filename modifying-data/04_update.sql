UPDATE cd.facilities
SET initialoutlay = 10000
WHERE name = 'Tennis Court 2';

SELECT * FROM cd.facilities WHERE name = 'Tennis Court 2';

UPDATE cd.facilities
SET initialoutlay = 8000
WHERE name = 'Tennis Court 2';

SELECT * FROM cd.facilities WHERE name = 'Tennis Court 2';

/* Without the 'WHERE' clause you could accidentally upated
every row
 */