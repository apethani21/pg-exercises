SELECT DISTINCT mem2.firstname, mem2.surname FROM cd.members mem1
INNER JOIN cd.members mem2
ON mem2.memid = mem1.recommendedby
ORDER BY mem2.surname, mem2.firstname;