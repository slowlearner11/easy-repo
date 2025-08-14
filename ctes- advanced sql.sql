-- ctes


WITH CTE_Example AS
(
SELECT gender ,AVG(salary) avg_sal,max(salary) max_sal ,min(salary) min_sal,count(salary)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
GROUP BY GENDER
)
SELECT*
FROM CTE_Example
;

-- 

WITH CTE_Example AS
(
SELECT gender ,AVG(salary) avg_sal,max(salary) max_sal ,min(salary) min_sal,count(salary)
from employee_demographics dem
join employee_salary sal
	on dem.employee_id=sal.employee_id
GROUP BY GENDER
)
SELECT AVG(avg_sal)
FROM CTE_Examp;

-- we can not reuse cte fro another cte..


-- multiplt ctes  

WITH CTE_Example AS
(
SELECT employee_id,gender,birth_date
from employee_demographics 
WHERE birth_date> '1985-01-01'

),
CTE_Example2 AS
(
SELECT EMPLOYEE_ID,Salary
FROM employee_salary
WHERE salary>50000
)
SELECT*
FROM CTE_Example
JOIN CTE_EXAMPLE2
	ON CTE_Example.employee_id=CTE_EXAMPLE2.employee_id
    ;
    
    









