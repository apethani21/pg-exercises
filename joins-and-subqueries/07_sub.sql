SELECT DISTINCT mems.firstname || ' ' || mems.surname AS member,
				(SELECT recs.firstname || ' ' || recs.surname AS recommmender
				 FROM cd.members recs
				 WHERE recs.memid = mems.recommendedby)
FROM cd.members mems
ORDER BY member