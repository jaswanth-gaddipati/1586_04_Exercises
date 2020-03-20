-- 1.	Construct a query that counts the number of rows in the account table.
SELECT COUNT(*) FROM ACCOUNT;
-- 2.	Retrieve the first two rows from account table
SELECT * FROM ACCOUNT LIMIT 2;
-- 3.	Retrieve the third and fourth row from account table.
SELECT * FROM ACCOUNT LIMIT 2, 2;
-- 4.	retrieve year of birth, month of birth, day of birth, weekday of birth for all the individuals from the table individual
SELECT YEAR(birth_date),
	MONTH(birth_date),
    DAY(birth_date),
    WEEKDAY(birth_date)
from individual;
-- 5.	Write a query that returns the 17th through 25th characters of the string 'Please find the substring in this string'.
SELECT substr('Please find the substring in this string',17,9);
-- 6.	Write a query that returns the absolute value and sign (-1, 0, or 1) of the number -25.76823.Also return the number rounded to the nearest hundredth.
SELECT ABS(-25.76823),sign(-25.76823),round(25.76823,2);
-- 7.	Write a query that adds 30 days to the current date.
select date_add(current_date(),INTERVAL 30 DAY);
-- 8.	Retrieve the first three letters of first name and last three letters of last name from the table individual.
select substr(fname,1,3),substr(lname,-3,3) from individual;
-- 9.	Retrieve the first names in Upper case from individual whose first name consists of five characters.
SELECT UPPER(fname)
FROM individual
where length(fname) = 5;
-- 10.	Retrieve the maximum balance and average balance from the account table for customer ID = 1.
SELECT MAX(AVAIL_BALANCE),AVG(AVAIL_BALANCE)
FROM ACCOUNT
WHERE CUST_ID = 1;