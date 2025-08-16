-- STORE PROCEDURES


SELECT*
FROM employee_salary
WHERE salary>=50000;



CREATE PROCEDURE large_salary()
SELECT *
FROM EMPLOYEE_SALARY
WHERE SALARY>=50000;

call large_salary();

-- having 2 quaries
DELIMITER $$
CREATE PROCEDURE large_salary2()
BEGIN 

	SELECT *
	FROM EMPLOYEE_SALARY
	WHERE SALARY>=50000;
	SELECT *
	FROM EMPLOYEE_SALARY
	WHERE SALARY>=10000;

END $$
DELIMITER ;

call large_salary2();


DELIMITER $$
CREATE PROCEDURE large_salary5(para_employee_id int)
BEGIN 

	SELECT salary
	FROM EMPLOYEE_SALARY
	WHERE employee_id=para_employee_id
    ;
END $$
DELIMITER ;

CALL large_salary5(1);



