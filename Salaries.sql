/**
Employees Assignment
1: show the total salaries of individual countries
2: show the total salaries by gender
3: show the highest salaries 
4: show the total number of records in the table 
5: show the lowest salary in the table 
6: show the average salary in the table
7: show the total salaries of individual countries (repeated)
**/

select *
from Employees

--1: show the total salaries of individual countries
select distinct Country, salary
from Employees

--2: show the total salaries by gender
SELECT SUM(salary) AS Male_Salary, SUM(salary) AS Female_Salary
FROM Employees
WHERE Gender = Male
,Where Gender = Female

SELECT SUM(salary) AS Female_Salary
FROM Employees
WHERE Gender = 'Female'


--3: show the highest salaries
SELECT SUM(Salary) AS Hishest_Salary
FROM employees
WHERE Salary = (SELECT MAX(Salary) FROM employees);


--4: show the total number of records in the table
SELECT COUNT(*) AS Total_Employees_Table_records
FROM employees;


--5: show the lowest salary in the table 
SELECT SUM(Salary) AS Lowest_Salary
FROM employees
WHERE Salary = (SELECT MIN(Salary) FROM employees);

--show the average salary in the table
SELECT AVG(Salary) AS Average_Salary
FROM Employees;
