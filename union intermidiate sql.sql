-- union 
-- combines the rows not the column

SELECT first_name,last_name
FROM employee_demographics
UNION distinct
SELECT first_name,last_name
FROM employee_salary
;

SELECT first_name,last_name
FROM employee_demographics
UNION ALL
SELECT first_name,last_name
FROM employee_salary
;

-- lebel implemented as age>50 as old


SELECT first_name,last_name,'old_' as label
FROM employee_demographics
WHERE AGE >50
;

SELECT first_name,last_name,'old man' AS label
FROM employee_demographics
WHERE AGE > 40 AND GENDER ='MALE'
UNION
SELECT first_name,last_name,'old lady' AS label
FROM employee_demographics
WHERE AGE >40 AND gender = 'female'
UNION
SELECT first_name,last_name,'highly paid employee_' AS label
FROM employee_salary
WHERE salary >70000
ORDER BY first_name, last_name
;


