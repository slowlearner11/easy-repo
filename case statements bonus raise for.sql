-- case statements --

select first_name,
last_name,
age,
CASE 
	WHEN age<= 30 THEN 'YOUNG'
    WHEN age between 31 and 50 THEN 'OLD'
    WHEN age>= 50 THEN " MUST HAVING HEALTH PBLM"
END AS age_bracket
FROM employee_demographics
;



-- pay increase and Bonus
--- < 50000 = 5%
--- > 50000 = 10%
-- finance = 10% bonus

select first_name, last_name,salary,
case
	when salary <50000 THEN salary +(salary*0.05)
    END AS New_Salary
from employee_salary;


select first_name, last_name,salary,
case
	when salary <= 50000 THEN salary +(salary*0.05)
    when salary > 50000 THEN salary +(salary*0.07)
    END AS New_Salary,
CASE
	WHEN dept_id=6 THEN salary +(salary*0.10)
END AS Bonus
from employee_salary;


select*
from employee_salary;
select*
FROM PARKS_DEPARTMENTS;
