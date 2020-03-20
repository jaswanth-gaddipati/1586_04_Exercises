-- 1.	Construct a query to count the number of accounts held by each customer. Show the customer ID and the number of accounts for each customer.
SELECT CUST_ID,COUNT(ACCOUNT_ID)
FROM ACCOUNT
GROUP BY CUST_ID;
-- 2.	Modify the previous query to fetch only those customers who has more than two accounts.
SELECT CUST_ID,COUNT(ACCOUNT_ID) NO_OF_ACCOUNTS
FROM ACCOUNT
GROUP BY CUST_ID HAVING NO_OF_ACCOUNTS > 2;
-- 3.	Retrieve first name and date of birth from individual and sort them from youngest to oldest.
SELECT FNAME,BIRTH_DATE
FROM individual
ORDER BY BIRTH_DATE DESC; 
-- 4.	From the account table, retrieve the year of account opening (year part of open_date) and average available balance (avail_balance) present in the accounts that are opened in each calendar year. Retrieve the year only if the average balance is greater than 200. Also sort the results based on calendar year.
SELECT YEAR(OPEN_DATE) YEAR,AVG(AVAIL_BALANCE) AVG_AVAIL_BAL
FROM ACCOUNT
GROUP BY YEAR
HAVING AVG_AVAIL_BAL > 200
ORDER BY YEAR DESC;
-- 5.	Retrieve the product code and maximum pending balance for the product codes (CHK, SAV, CD)  present in account table. 
SELECT PRODUCT_CD,MAX(PENDING_BALANCE)
FROM account
WHERE product_cd in ("CHK","SAV","CD")
GROUP BY PRODUCT_CD;