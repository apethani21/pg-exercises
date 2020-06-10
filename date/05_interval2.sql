SELECT EXTRACT(EPOCH FROM (timestamp '2012-09-02 00:00:00' - timestamp '2012-08-31 01:00:00'));

/*
The EPOCH property is a postgres specific feature.
A more portable approach:

SELECT EXTRACT(day from ts.int)*60*60*24 +
	EXTRACT(hour from ts.int)*60*60 + 
	EXTRACT(minute from ts.int)*60 +
	EXTRACT(second from ts.int)
	FROM
		(SELECT timestamp '2012-09-02 00:00:00' - '2012-08-31 01:00:00' AS int) ts
*/