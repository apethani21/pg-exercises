SELECT mem1.firstname as memfname,
	   mem1.surname as memsname,
	   mem2.firstname as recfname,
	   mem2.surname as recsname
FROM cd.members mem1
LEFT JOIN cd.members mem2
ON mem2.memid = mem1.recommendedby
ORDER BY mem1.surname, mem1.firstname;