--- HAVING VS Where 

select  gender,AVG(age)
FROM employee_demographics
 group by gender
 HAVING AVG(AGE)>40
;


select  occupation,AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
 group by occupation
 HAVING AVG(salary)>75000
 
 -- in above example HAVING WORKS ONLY UNDER THE where clause.
;