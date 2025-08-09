-- window function

SELECT gender,AVG(SALARY) AS AVG_SALARY
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
;

-- WINDOW FUNCTION --AVERAGE SALARY OVER EVERYTHING () 

SELECT gender,AVG(SALARY)  OVER()
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;
-- THIS IS AVERAGE SALARY OF ENTIRE COLUMN

SELECT gender,AVG(SALARY)  OVER(PARTITION BY GENDER) 
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
;

-- PARTITION IS ALMOST SIMILAR TO GROUP BY ,GROUP BY ROLLED EVERYTHING IN ONE ROW,
-- DOES FOR ALL UNIQUE VALUES,TO CHECK THE DIFFERENCE WE CAN RUN THE GROUP BY SYNTAX OF ABOVE.
-- IF WE CHANGE SELECT VALUE ,IT DOESNOT CHANGE ANYTHINNG BUT WITH GROUP BY IT CHANGE EVERYTHING
SELECT dem.first_name,dem.last_name ,gender,AVG(SALARY)  OVER(PARTITION BY GENDER) 
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
-- ROLLING TOTAL MEAN ADD ON SUBSEQUENT coulmn
    
SELECT dem.first_name,dem.last_name ,gender,
SUM(SALARY)  OVER(PARTITION BY GENDER) 
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.first_name,dem.last_name ,gender,Salary,
SUM(SALARY)  OVER(PARTITION BY GENDER order by dem.employee_id) AS  Rolling_total
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.employee_id,dem.first_name,dem.last_name ,gender,Salary,
ROW_NUMBER() OVER()
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
SELECT dem.employee_id,dem.first_name,dem.last_name ,gender,Salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY SALARY DESC)
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;
    
-- here partition by gender rakhada female lai 1-4 count garyo ani again male lai ni 1-7 count garyo
    
SELECT dem.employee_id,dem.first_name,dem.last_name ,gender,Salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY SALARY DESC) AS ROW_NUM,
RANK() OVER(PARTITION BY gender ORDER BY SALARY DESC) AS RANK_NUM
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id;  
    
-- HERE RANK DOES REPETATION OF SAME NUMBER AND
--  SKIP ONE AND GOES TO OTHER HERE 5 IS REPATED TWICE AND WENT TO 7.
-- PARTITION DOESNOT REPEAT THE NUMBER

-- USING DENSE_RANK TO SEE DIFFERENT RESULT

SELECT dem.employee_id,dem.first_name,dem.last_name ,gender,Salary,
ROW_NUMBER() OVER(PARTITION BY gender ORDER BY SALARY DESC) AS ROW_NUM,
RANK() OVER(PARTITION BY gender ORDER BY SALARY DESC) AS RANK_NUM,
DENSE_RANK() OVER(PARTITION BY gender ORDER BY SALARY DESC) AS DENSE_RANK_NUM
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id; 










