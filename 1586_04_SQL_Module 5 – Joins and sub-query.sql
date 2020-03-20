-- 1.	Retrieve first name, title and department name by joining tables employee and department using department id.
SELECT fname,title,name 
from employee e,department d
where e.dept_id = d.dept_id;
-- 2.	Left join table product with table product_type (product_type left join product) to retrieve product_type.name and product.name from the tables.
select pt.name product_name,p.name product_type_name
from product p
left join product_type pt
on p.product_type_cd = pt.product_type_cd;
-- 3.	Using inner join, Retrieve the full employee name (fname followed by a space and then lname), Superior name (using superior_emp_id) from the employee table.
-- Ex, for Susan Barker, Michael is superior
select concat(a.fname," ",a.lname) ename,concat(b.fname," ",b.lname) sup_name
from employee a 
inner join employee b 
on b.emp_id = a.superior_emp_id;
-- 4.	Using subquery, retrieve the fname and lname of the employees whose superior is ‘Susan Hawthorne’ from employee
SELECT fname,lname FROM employee 
WHERE superior_emp_id = (SELECT emp_id FROM employee WHERE fname = "Susan" AND lname = "Hawthorne");

-- 5.	In employee table, retrieve the superior names (fname and lname) present in department 1. A person is superior if he/she is superior to atleast one person in the given department. Use sub-query concept. 
select *
from employee 
where dept_id = 1 and 
emp_id in (select distinct superior_emp_id from employee);