-- subqueries --IS QUERY WITH IN ANOTHER QUERY.
-- here employee_id in employee_demographics matches in employee_id in employee_salary table and dept_id =1

SELECT *
FROM employee_demographics
WHERE employee_id IN 
               (SELECT employee_id
               FROM employee_salary
               WHERE dept_id=1)
;

SELECT first_name,salary,
(SELECT AVG(SALARY)
FROM employee_salary)
FROM employee_salary;


SELECT gender,	avg(age),MIN(AGE),COUNT(AGE) 
FROM employee_demographics
group by gender;

SELECT AVG(max_age)
FROM
(SELECT gender,
AVG(AGE) AS avg_age,
MAX(AGE) AS max_age,
MIN(AGE) AS min_age,
COUNT(AGE)
FROM EMPLOYEE_DEMOGRAPHICS
GROUP BY GENDER ) AS AGG_TABLE
;


