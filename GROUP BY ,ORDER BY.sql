-- GROUP BY 

select GENDER
FROM employee_demographics
GROUP BY GENDER 
;

select GENDER, AVG(age)
FROM employee_demographics
GROUP BY GENDER 
;

select occupation
FROM employee_salary
GROUP BY occupation 
;

select occupation,salary
FROM employee_salary
GROUP BY occupation ,salary
;

select GENDER, AVG(age),max(age),min(age)
FROM employee_demographics
GROUP BY GENDER 
;

select GENDER, AVG(age),max(age),min(age), count(age)
FROM employee_demographics
GROUP BY GENDER 
;

-- ORDER BY

select *
FROM employee_demographics
 ORDER BY first_name ASC 
;

select *
FROM employee_demographics
 ORDER BY first_name DESC 
;

select *
FROM employee_demographics
 ORDER BY GENDER
;

select *
FROM employee_demographics
 ORDER BY GENDER,AGE 
;
select *
FROM employee_demographics
 ORDER BY GENDER,AGE ASC
;

-- THIS CAN BE DONE IN FOLLOWING WAY BUT NOT RECOMMENDED TO DO IT
Select *
FROM employee_demographics
 ORDER BY 5,4 ASC
;
