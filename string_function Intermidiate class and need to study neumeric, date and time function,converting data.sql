-- string function

SELECT LENGTH('MASTERBED');


SELECT first_name,LENGTH(FIRST_NAME)
FROM employee_demographics
;

SELECT first_name,LENGTH(FIRST_NAME)
FROM employee_demographics
ORDER BY 2;

-- ORDER BY 2 HERE MEAN FROM 2 LETTER NAME TO N LETTER NAME

SELECT UPPER('dynamic');
SELECT LOWER('DYNAMIC');



SELECT first_name,UPPER(first_name)
FROM employee_demographics
;


SELECT TRIM('                DRYWALL           ');
-- TRIM REMOVES WHITE SPACE IN FRONT AND BACK,TYPES ARE LEFT AND RIGHT TRIM

SELECT RTRIM('                DRYWALL           ');
-- REMOVES THE SPACE AT RIGHT SIDE OF THE WORD

SELECT LTRIM('                DRYWALL           ');
-- REMOVES THE SPACE AT LEFT SIDE

SELECT first_name,
LEFT(first_name,4)
FROM employee_demographics
;

SELECT first_name,
LEFT(first_name,4),
RIGHT(first_name,4)
FROM employee_demographics
;

-- substring ---SUBSTRING(first_name,3,2) here 3,2 mean we are going to the third
-- position and going to right with two characters

SELECT first_name,
LEFT(first_name,4),
RIGHT(first_name,4),
SUBSTRING(first_name,3,2)
FROM employee_demographics
;

SELECT first_name,
LEFT(first_name,4),
RIGHT(first_name,4),
SUBSTRING(first_name,3,2)
birth_date,
substring(birth_date,6,2) AS birth_month
FROM employee_demographics
;


-- Replace __ here in example all a is replaed by z in all first_name__

SELECT first_name,REPLACE(first_name,'a','z')
FROM employee_demographics
;


-- Locate -- LOCATION  OF R IN PRISHA

select LOCATE('R','PRISHA');


SELECT first_name,LOCATE('AN',first_name)
FROM employee_demographics
;

-- CONCATE --

SELECT first_name,last_name,
concat(first_name,'  ' ,last_name) AS full_name
FROM employee_demographics
;









