SELECT timestamp '2012-08-31 01:00:00' - timestamp '2012-07-30 01:00:00' AS interval;

/*
Subtracting timestamps produces an INTERVAL data type.
Intervals stand in contrast to SQL's treatment of DATE types.
Dates don't use intervals - instead, subtracting two dates will
return an integer representing the number of days between the two dates. 
*/
