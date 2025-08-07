-- joins

select*
FROM employee_demographics

 ;
 
 select*
FROM employee_demographics
inner join employee_salary
	ON employee_demographics.employee_id  =employee_salary.employee_id
 ;
 -- we are aliasing the employee_demograpgics ad employee_salary as dem and sal and everythig else is same as above
 select*
FROM employee_demographics AS dem
inner join employee_salary AS sal
	ON dem.employee_id  =sal.employee_id
 ;
 
 select dem.employee_id,age ,occupation
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id  =sal.employee_id
 ;
-- OUTER JOIN 
-- LEFT JOIN= TAKES ALL ROWS( EVERYTHING )FROM LEFT TABLE AND MATCHING ROWS   FROM RIGHT TABLE
-- RUGHT JOIN 


 select*
FROM employee_demographics AS dem
LEFT JOIN employee_salary AS sal
	ON dem.employee_id  =sal.employee_id
 ;
 
  select*
FROM employee_demographics AS dem
RIGHT JOIN employee_salary AS sal
	ON dem.employee_id  =sal.employee_id
 ;
 
 -- SELF JOIN --  TIE TO TABLE ITSELF
 
  select*
FROM employee_salary emp1
join employee_salary emp2
	ON emp1.employee_id=emp2.employee_id
    ;
    
     select*
FROM employee_salary emp1
join employee_salary emp2
	ON emp1.employee_id +1 =emp2.employee_id
    ;
    
select emp1.employee_id as emp_santa,
emp1.first_name as first_name_santa,
emp1.last_name as last_name_santa,
emp2.employee_id as emp_name,
emp2.first_name as first_name_emp,
emp2.last_name as last_name_emp
FROM employee_salary emp1
JOIN employee_salary emp2
	ON emp1.employee_id + 1 =emp2.employee_id
    ;


-- MUTIPLE TABLES TOGETHER

select *
FROM employee_demographics AS dem
INNER JOIN employee_salary AS sal
	ON dem.employee_id  =sal.employee_id
    INNER JOIN parks_departments pd
		on sal.dept_id= pd.department_id
 ;
 
 SELECT*
 FROM parks_departments;
