select*
FROM employee_salary
WHERE first_name='leslie'
;


select*
FROM employee_salary
WHERE salary >50000
;


select*
FROM employee_salary
WHERE salary >50000
;

select*
FROM employee_salary
WHERE salary >=50000
;

select*
FROM employee_salary
WHERE salary <=50000
;

select*
FROM employee_demographics
WHERE gender= female
;

select*
FROM employee_demographics
WHERE gender!= female
;

select*
FROM employee_demographics
WHERE birth_date> '1985-01-01'
;

-- logical operators  --AND and OR,	NOT

select*
FROM employee_demographics
WHERE birth_date>'1985-01-01'
AND GENDER= 'male'
;

select*
FROM employee_demographics
WHERE birth_date>'1985-01-01'
OR  GENDER= 'male'
;

select*
FROM employee_demographics
WHERE birth_date>'1985-01-01'
OR NOT  GENDER= 'male'
;

select*
FROM employee_demographics
WHERE first_name='leslie' AND age=44
;


select*
FROM employee_demographics
WHERE (first_name='leslie' AND age=44) OR AGE>55
;

-- lIKE STATEMENt
  -- % and_ 
select*
FROM employee_demographics
WHERE first_name LIKE 'jer%' 
;

select*
FROM employee_demographics
WHERE first_name LIKE 'a%' 
;


select*
FROM employee_demographics
WHERE first_name LIKE 'a__' 
;

select*
FROM employee_demographics
WHERE first_name LIKE 'a___' 
;

select*
FROM employee_demographics
WHERE first_name LIKE 'a__' 
;
select*
FROM employee_demographics
WHERE first_name LIKE 'a___%' 
;

select*
FROM employee_demographics
WHERE birth_date LIKE '1989%' 
;





