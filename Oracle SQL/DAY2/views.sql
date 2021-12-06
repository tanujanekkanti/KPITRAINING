show user;
grant connect,resource to tanujadb;
alter session set current_schema=tanujadb;


select ename FROM emp WHERE deptno=20;
CREATE VIEW viewdemo1 AS SELECT ename FROM emp WHERE deptno=10;
SELECT * FROM viewdemo1;
CREATE OR REPLACE VIEW viewdemo1 AS SELECT ename FROM emp WHERE deptno=20;
CREATE VIEW viewdemo4 AS
SELECT e.ename "Manager name" FROM emp e, emp m WHERE e.empno=m.empno;
SELECT * FROM viewdemo4;
DROP VIEW viewdemo4;
SELECT ename,sal FROM emp ORDER BY sal desc;
SELECT ename,sal FROM (SELECT ename,sal FROM emp ORDER BY sal desc) WHERE rownum<3;
SELECT Emp.DEPTNO, Emp.SAL, Emp.JOB FROM
(SELECT DEPTNO, SAL, JOB FROM EMP GROUP BY DEPTNO, SAL, JOB ORDER BY SAL DESC)Emp
WHERE ROWNUM<=3;
SELECT Emp.DEPTNO, Emp.SAL FROM
(SELECT DEPTNO, SAL, JOB FROM EMP GROUP BY DEPTNO, SAL, JOB ORDER BY SAL DESC)Emp WHERE ROWNUM<=3;
SELECT Emp.DEPTNO, Emp.SAL FROM
(SELECT DEPTNO, SAL, JOB FROM EMP GROUP BY DEPTNO, SAL, JOB ORDER BY SAL DESC)Emp WHERE ROWNUM<=3;


