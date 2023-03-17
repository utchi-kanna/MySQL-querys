-- USE exercise_hr;

-- -- 1.Write a query to find the name (first_name, last name), department ID and name of all the employees. 

-- select FIRST_NAME, LAST_NAME, e.DEPARTMENT_ID, DEPARTMENT_NAME
-- from employees as e inner join departments as d
-- on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- -- 2.Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job. 


-- select FIRST_NAME, LAST_NAME, e.JOB_ID, JOB_TITLE ,MIN_SALARY - LAG (MIN_SALARY) OVER (order by MIN_SALARY) as diff from employees as e inner join jobs as j ;
-- select* from job_history;


-- -- 3. Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.

-- SELECT EMPLOYEE_ID, job_title , START_DATE, END_DATE
-- from job_history as jh inner join jobs as j
-- where START_DATE < END_DATE;

-- -- 4.Write a query to get the department name and average salary in the department.

--  select  avg(salary) as "average"
-- from employees;


-- -- 5.Write a query to display the department name, manager name, and city. 

-- select FIRST_NAME, DEPARTMENT_NAME, country_name
-- from employees as e inner join departments as d inner join countries
-- on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

-- 1. Write a query to find the name (first_name, last name), department ID and name of all the employees.
USE exercise_hr;

SELECT first_name, last_name, department_id, department_name 
FROM employees 
JOIN departments USING (department_id);

-- 2. Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job. 
SELECT job_title, first_name, salary-min_salary 'Salary - Min_Salary' 
FROM employees 
NATURAL JOIN jobs;

-- 3. Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90. 
SELECT employee_id, job_title, end_date-start_date Days
FROM job_history 
NATURAL JOIN jobs 
WHERE department_id=90;

-- 4. Write a query to get the department name and average salary in the department. 
SELECT department_name AS 'Department Name', AVG(salary) AS 'Average Salary'
FROM departments
JOIN employees USING (department_id)
GROUP BY department_name;


-- 5. Write a query to display the department name, manager name, and city.
SELECT departments.department_name, employees.first_name, locations.city
FROM departments
JOIN employees ON departments.manager_id = employees.employee_id
JOIN locations ON departments.location_id = locations.location_id;  


