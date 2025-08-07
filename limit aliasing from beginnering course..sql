-- LIMIT & -- ALIASING 

select *
FROM employee_demographics
LIMIT 3
 ;
 
 select *
FROM employee_demographics
ORDER BY age desc
LIMIT 3
 ;


-- aliasing 

select gender , AVG(age)
FROM employee_demographics
group by gender
 ;
 
 select gender , AVG(age)
FROM employee_demographics
group by gender
HAVING AVG(age) >40
 ;
-- following ia exactly above we just aliasing mean writting the avg(age ) in avg_age in just different way
 
 select gender , AVG(age) AS avg_age
FROM employee_demographics
group by gender
HAVING avg_age >40
 ;