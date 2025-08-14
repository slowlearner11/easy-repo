-- temporary tables table that created right now only work for right now, not for later
-- used fro storing complex result quaries,
-- two ways to do it
-- 2nd way is the best

CREATE TEMPORARY TABLE temp_table
(
First_name varchar(50),
last_name varchar(50),
favourit_movie varchar(100)


);

SELECT*
FROM temp_table;

INSERT INTO temp_table
VALUES ('RAMESH','SHRESTHA','HAMI TIN BHAI');

SELECT*
FROM temp_table;

-- yeha jannu parne kura insert gareko data run garne first ma ani balla to see result
-- select sabai from trmp_table garnu parchha.



SELECT*
FROM employee_salary;


CREATE TEMPORARY TABLE SALARY_OVER_50K
SELECT*
FROM employee_salary
WHERE salary>=50000;

SELECT*
FROM SALARY_OVER_50K;

-- FIRST MA TABLE CREATE GARERA RUN GARNE ANI SEE GARNA SELECT GARNE.
-- HERE THIS WORKS EVEN NEW WINDOW PAGE BUT IF YOU CANCEL IT OUT AND
--  TRY TO RUN IT AGAIN DOESNOT WORK
-- IAM COPYING  THIS --
SELECT*
FROM SALARY_OVER_50K;
-- TO ANOTHER PAGE IT RUNS, AS SOON AS I CANCEL IT OUT AND TRY TO RUN AGAIN DOESNOT WORK THAT WAY



