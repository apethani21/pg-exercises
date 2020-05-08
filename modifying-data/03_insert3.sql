INSERT INTO cd.facilities
SELECT (SELECT MAX(facid) FROM cd.facilities)+1,
	    'Spa', 20, 30, 100000, 800;
DELETE FROM cd.facilities WHERE facid=9;
SELECT * FROM cd.facilities where facid=9;