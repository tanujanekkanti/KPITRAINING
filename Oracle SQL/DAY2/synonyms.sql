show user;
grant connect,resource to tanujadb;
alter session set current_schema=tanujadb;


SELECT ename FROM emp;
SELECT ename FROM emp
where ename=username.emp;
CREATE SYNONYM empl FOR employee;
SELECT ename FROM emp WHERE deptno=10;
DROP SYNONYM emp;
CREATE PUBLIC SYNONYM test FOR emp;
DROP PUBLIC SYNONYM test;

