SELECT facid, SUM(slots) AS "Total Slots"
FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid;

/*
The best way to think about it is that in the
context of a query with an aggregate function,
WHERE is used to filter what data gets input into
the aggregate function, while HAVING is used to
filter the data once it is output from the function.
*/