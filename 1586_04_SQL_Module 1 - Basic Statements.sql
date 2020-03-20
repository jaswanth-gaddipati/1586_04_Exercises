/*****************  Basic Statements ***********************/

-- 1.	Create a database named training. 
create database training;
use training;

/*
2.	Create a table ‘demography’ with the following columns inside training database
a.	CustID integer auto-increment 
b.	Name varchar(50)
c.	Age integer
d.	Gender varcahr(1)
*/

CREATE TABLE demography(CustId INT AUTO_INCREMENT,
						Name VARCHAR(50),
                        Age INT,
                        Gender VARCHAR(1),
                        KEY(CustId));
                        
/*
3.	Insert the following values into the table ‘demography’
a.	Name=’John’, Age=25, Gender=’M’
*/

INSERT INTO demography(NAME,AGE,GENDER) values('John', 25, 'M');

/*
4.	Insert the following values into the table ‘demography’ using a single query
a.	Name = ’Pawan’, Age = 26, Gender=’M’
b.	Name = ‘Hema’, Age=31, Gender=’F’

*/
INSERT INTO demography(NAME,AGE,GENDER) VALUES
("Pawan",26,"M"),
("Hema",31,"F");

/*
5.	Insert the following value into the table ‘demography’
a.	Name = ‘Rekha’, Gender=’F’
*/

INSERT INTO DEMOGRAPHY(NAME,GENDER) VALUES("Rekha","F");

/*
6.	Retrieve all  rows and columns from table ‘demography’
*/

SELECT * FROM demography;

-- 7.	Update the age to NULL for Name = ‘John’. Note that the NULL used here is MySQL NULL and not string NULL.
UPDATE demography
SET age = null
WHERE name = "John";

-- 8.	Retrieve all the rows from table ‘demography’ where Age is NULL.
SELECT * FROM demography WHERE age is null;
-- 9.	Delete all the rows from the table ‘demography’.
TRUNCATE demography;
-- 10.	Drop the table ‘demography’
DROP TABLE demography;

































