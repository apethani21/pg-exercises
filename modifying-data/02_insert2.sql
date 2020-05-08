INSERT INTO cd.facilities
VALUES (9, 'Spa', 20, 30, 100000, 800),
       (10, 'Squash Court 2', 3.5, 17.5, 5000, 80);
SELECT * FROM cd.facilities where facid IN (9, 10);
DELETE FROM cd.facilities WHERE facid IN (9, 10);
SELECT * FROM cd.facilities where facid IN (9, 10);

--It's possible to use SELECT wherever you see a VALUES. This means that you can INSERT the results of a SELECT.