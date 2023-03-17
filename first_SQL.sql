-- SQL is case-insensitive.
-- But we usually use UPPERCASE for keywords
-- and lowercase for table names , colum name , etc. 

-- USE store;

-- SHOW tables;

-- SELECT*
-- FROM customers;

-- SELECT*
-- FROM customers
-- ORDER BY first_name DESC;


-- select 1, 2;

-- select 1+2;

-- select 100 - 50 / 2 AS value;

-- select 100 - 50 / 2 AS "answer value";

-- USE store ;

-- SELECT*
-- FROM customers;

-- SELECT first_name, last_name, points, points + 10 AS "new points"
-- FROM customers;

-- SELECT 171*214+625;

--   USE exercise_hr ;

-- SELECT*
-- FROM employees;


-- SELECT first_name AS "First Name", last_name AS "Last Name"
-- FROM employees;


-- SELECT     
-- FROM employees;

-- SELECT DISTINCT DEPARTMENT_ID 
-- FROM employees ;


-- USE store ; 

-- SELECT*
-- FROM products;

-- SELECT  name , unit_price, unit_price * 1.1 AS "new price"
-- FROM products;


-- USE store;

-- SELECT*
-- FROM customers
-- WHERE state = 'FL';

-- SELECT*
-- FROM customers
-- WHERE points > '3000';


-- SELECT *
-- FROM customers
-- WHERE birth_date > '1990-01-01';

-- SELECT*
-- FROM customers
-- WHERE points > '3000' AND birth_date > '1990-01-01'; 


-- SELECT*
-- FROM customers
-- WHERE points > '3000' OR birth_date > '1990-01-01'; 

-- SELECT*
-- FROM customers
-- WHERE  birth_date > '1889-01-01' OR points > '1000' AND state = 'VA' ;


-- SELECT*
-- FROM customers
-- WHERE  birth_date > '1989-01-01' AND points > '1000' OR state = 'VA' ; 

-- SELECT*
-- FROM customers
-- WHERE NOT (state = 'FL');

USE exercise_hr;

-- SELECT first_name,last_name,hire_date
-- FROM employees
-- WHERE hire_date = '1987';

-- SELECT first_name,last_name,salary 
-- FROM employees
-- WHERE salary NOT BETWEEN 10000 AND 15000;

-- SELECT first_name,last_name,department_id 
-- FROM employees
-- WHERE department_id = 30 OR department_id = 100 
-- ORDER BY department_id ASC;

-- SELECT first_name,last_name,salary 
-- FROM employees
-- WHERE (salary NOT BETWEEN 10000 AND 15000) AND (department_id = 30 OR department_id = 100);

SELECT *
FROM employees
WHERE last_name IN ('BLAKE', 'SCOTT', 'KING','FORD');

USE store ;

SELECT*
FROM customers
WHERE state IN ('FL' , 'VA' , 'GA');

SELECT*
FROM products
WHERE quantity_in_stock IN ('38', '49', '72');

SELECT*
FROM products
WHERE quantity_in_stock != 72;

-- SELECT*
-- FROM customers
-- WHERE birth_date> '1990-01-01' AND birth_date <'2000-01-01';

-- SELECT*
-- FROM customers
-- WHERE birth_date BETWEEN '1990-01-01' AND '2000-01-01';


-- SELECT*
-- FROM customers
-- WHERE address LIKE '%Trail' OR address LIKE '%Avenue';

-- SELECT*
-- FROM customers
-- WHERE phone LIKE '%9';

-- SELECT*
-- FROM customers
-- WHERE phone NOT LIKE '%9';

-- SELECT*
-- FROM customers
-- WHERE first_name LIKE '%Elka' OR first_name  LIKE '%Ambur';

-- SELECT*
-- FROM customers
-- WHERE last_name LIKE '%ey' OR last_name  LIKE '%on';

-- SELECT*
-- FROM customers
-- WHERE last_name LIKE 'my%' OR last_name  LIKE '%se';

-- SELECT*
-- FROM customers
-- WHERE last_name LIKE 'my%' OR last_name  LIKE '%se';

-- USE stroe;

-- SELECT *
-- FROM customers
-- WHERE points > 3000 AND points < 10000;

--   13-feb-2023 

use exercise_hr;
-- 1.Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
SELECT first_name
FROM employees
WHERE first_name LIKE '%b%' AND first_name LIKE '%c%';

-- 2.Write a query to display the last name of employees whose names have exactly 6 characters.
SELECT last_name
FROM employees
WHERE last_name LIKE '______';

-- 3.Write a query to display the last name of employees having 'e' as the third character.
SELECT last_name
FROM employees
WHERE last_name LIKE '__e%';

USE store;
--  last names ending with y and having 6 letters
SELECT last_name
FROM customers
WHERE last_name LIKE '______y';

--  last names strating with b, ending with y and having 6 letters
SELECT last_name
FROM customers
WHERE last_name LIKE 'b____y';
-- 4.Write a query to display the jobs/designations available in the employees table.
-- SELECT *
-- FROM jobs


/*

REGEXP:

*/  
-- Write a query to find all customers having last names that contain 'age'

USE store;  

SELECT*
FROM customers
WHERE last_name LIKE '%age%';

SELECT*
FROM customers
WHERE last_name REGEXP 'age' ;

-- last name starts with mac
SELECT*
FROM customers
WHERE last_name REGEXP '^Mac' ;

-- last name starts with field
SELECT*
FROM customers
WHERE last_name REGEXP 'field$' ;

-- last name starts with mac or ends with field
SELECT*
FROM customers
WHERE last_name REGEXP '^Mac|field$' ;

-- last name contains ae , be , ce, de , ee, fe, ge, he
SELECT*
FROM customers
WHERE last_name REGEXP 'ae|be|ce|de|ee|fe|ge|he' ;

SELECT*
FROM customers
WHERE last_name REGEXP '[a-h]e' ;

-- 1. We want to have customers who hava 'ge' , 'ie' or 'me' in their
-- last names - immediate follwers

USE store ;

SELECT*
FROM customers
WHERE last_name REGEXP 'ge|ie|me';   

SELECT*
FROM customers
WHERE last_name REGEXP '[gim]e';   

-- 2. last name end with ey or on 

 SELECT*
 FROM customers 
 WHERE last_name REGEXP 'ey$|on$';

-- 3. last name start with my or contains se

 SELECT*
 FROM customers 
 WHERE last_name REGEXP '^my|se';


-- 4. last name contains with br or bu

 SELECT*
 FROM customers 
 WHERE last_name REGEXP 'b[ru]';
 
 
-- 4. last name contains with b followed by  r or u

 SELECT*
 FROM customers 
 WHERE last_name REGEXP 'b[a-z]*[ru]';
 
 --  NULL operator
 -- select customers where phone is Null
 
 SELECT*
 FROM customers 
 WHERE phone is NULL  ;

 -- select customers where phone is Not Null
 
 SELECT*
 FROM customers 
 WHERE phone is NOT NULL  ;
 
  -- Get the orders that are not shipped
  -- Multiple column sorting 
 
 SELECT*
 FROM orders 
 WHERE shipper_id IS NULL;
 
 USE eaercise_hr ;
 
SELECT DEPARTMENT_ID,FIRST_NAME
FROM employees
ORDER BY DEPARTMENT_ID, FIRST_NAME;

 
SELECT EMPLOYEE_ID,FIRST_NAME, DEPARTMENT_ID
FROM employees
ORDER BY DEPARTMENT_ID, FIRST_NAME DESC;

SELECT EMPLOYEE_ID,FIRST_NAME, DEPARTMENT_ID
FROM employees
ORDER BY DEPARTMENT_ID DESC, FIRST_NAME ;

SELECT EMPLOYEE_ID,FIRST_NAME, DEPARTMENT_ID
FROM employees
ORDER BY  FIRST_NAME , DEPARTMENT_ID DESC ;

-- thE LIMIT clause should always come at the end.
-- The order of the clauses matter. SELECT -> FROM -> optionally WHERE -> optionally ORDER BY -> LIMIT
-- Not following the order gives error.


-- Find limit 

USE STORE ;

SELECT*
FROM customers
LIMIT 3 ;


-- Exercies : Get top 3 loyal customers

SELECT*
FROM customers
ORDER BY points DESC LIMIT 3;

-- If the argument is greater than the number of customers, then we get all the customers.
-- Pagination
-- page 1: 1-3
-- page 2: 4-6
-- page 3: 7-9
-- Get customers on Page 3

SELECT*
FROM customers
LIMIT 3 ;

SELECT*
FROM customers
LIMIT 4,3 ;

SELECT*
FROM customers
LIMIT 7,3 ;


use exercise_hr;

select*
from employees;

explain
select*
from employees;

select*
from employees
where first_name = "lex";

explain select*
from employees
where first_name = "lex";

 select*
from employees
where EMPLOYEE_ID = 102;

explain select*
from employees
where EMPLOYEE_ID = 102;

 select*
from employees
where last_name = "Taylor";

-- 1.Write a query to get the total salaries payable to employees. 

use exercise_hr;

select sum(SALARY) as "total"
from employees;

-- 2.Write a query to get the maximum and minimum salary from employees table. 

select max(salary) as "max salary" , min(salary) as "min salary"
from employees;


--  3.Write a query to get the average salary and number of employees in the employees table.

 select  avg(salary) as "average"
from employees;


-- 4.Write a query to get the number of employees working with the company.  

select count(EMAIL) as "total employees"
from employees;

-- 5.Write a query to get the number of distinct jobs available in the employees table.

select  count(distinct job_id)
from employees;

-- 6.Write a query get all first name from employees table in upper case.

select ucase(first_name) as "First Name"
 from employees;

-- 7.Write a query to get the first 3 characters of first name from employees table.

select substr(first_name,1,3) as "First 3 Character"
from employees;

-- 8.Write a query to get the names ('<first name> <last name>') (for example Ellen Abel, Sundar Ande etc.) as a single column of all the employees from employees table.

SELECT concat(FIRST_NAME,LAST_NAME) AS Singlecolumn 
FROM employees;


-- 9.Write a query to get the length of the employee names ('<first name> <last name>') from employees table.

SELECT count(concat(FIRST_NAME,LAST_NAME))
 FROM employees;
 
 
-- 10.Write a query to get monthly salary (round 2 decimal places) of each and every employee
-- Note : Assume the salary field provides the 'annual salary' information.

SELECT ROUND(SALARY, 2) AS RoundValue 
FROM employees;


-- INNER JION 

use exercise_hr ;

select*
from employees inner join departments
on employees.DEPARTMENT_ID = departments.DEPARTMENT_ID;

select employee_id, FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
from employees as e inner join departments as d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- find the employees working in the 'IT'  

select employee_id, FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
from employees as e inner join departments as d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
where department_name = 'IT';

SELECT DEPARTMENT_ID, COUNT(*) as "no of employee"
FROM employees
GROUP BY department_id;
