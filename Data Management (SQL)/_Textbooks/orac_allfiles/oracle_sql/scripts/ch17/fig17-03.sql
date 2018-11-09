-- use the EX connection
CONNECT ex/ex;

ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-RR HH:MI AM';

SELECT SYSDATE FROM dual;
SELECT CURRENT_DATE FROM dual;

SELECT TZ_OFFSET('America/Los_Angeles') FROM dual;
SELECT TZ_OFFSET('PST') FROM dual;
SELECT TZ_OFFSET('MST') FROM dual;
SELECT TZ_OFFSET('CST') FROM dual;
SELECT TZ_OFFSET('EST') FROM dual;

SELECT
    NEW_TIME(TO_DATE('19-AUG-14 4:20 PM'), 'PST', 'MST')
FROM DUAL;
SELECT
    NEW_TIME(TO_DATE('19-AUG-14 4:20 PM'), 'PST', 'CST')
FROM DUAL;
SELECT
    NEW_TIME(TO_DATE('19-AUG-14 4:20 PM'), 'PST', 'EST')
FROM DUAL;

ALTER SESSION SET TIME_ZONE = 'UTC';
ALTER SESSION SET TIME_ZONE = 'PST';
ALTER SESSION SET TIME_ZONE = LOCAL;
ALTER SESSION SET TIME_ZONE = DBTIMEZONE;

-- return to the default date format
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MON-RR';