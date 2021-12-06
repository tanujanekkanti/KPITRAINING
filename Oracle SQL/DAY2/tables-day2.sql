-------------------TABLE--DAY2-------------------
CREATE TABLE courses(courseid NUMBER PRIMARY KEY,name VARCHAR2(20));
drop table courses;
CREATE TABLE courses(courseid NUMBER,name VARCHAR2(20), CONSTRAINT cid_pk PRIMARY KEY(courseid));
DESC courses;
ALTER TABLE courses DROP CONSTRAINT cid_pk;
desc courses;
CREATE TABLE courses(courseid NUMBER,name VARCHAR2(20), CONSTRAINT cid_pk PRIMARY KEY(courseid));
desc courses;
ALTER TABLE courses DROP CONSTRAINT cid_pk;
desc cours;
CREATE TABLE courses(courseid NUMBER,name VARCHAR2(20), CONSTRAINT cid_pk PRIMARY KEY(courseid));
desc courses;
ALTER TABLE courses DISABLE CONSTRAINT cid_pk;
desc courses;
ALTER TABLE courses ENABLE CONSTRAINT cid_pk;
desc courses;
INSERT INTO courses VALUES(1,'JSP');
ALTER TABLE courses ADD CONSTRAINT cid_pk;
ALTER TABLE courses DISABLE CONSTRAINT cid_pk;
DESC COURSES;
DROP TABLE COURSES;
CREATE TABLE courses(courseid NUMBER,name VARCHAR2(20), CONSTRAINT cid_pk PRIMARY KEY(courseid));
INSERT INTO courses VALUES(1,'JSP');
ALTER TABLE courses DISABLE CONSTRAINT cid_pk;
INSERT INTO courses VALUES(1,'JS');
TRUNCATE TABLE courses;
ALTER TABLE courses ENABLE CONSTRAINT cid_pk;
DROP TABLE courses;
CREATE TABLE courses(courseid NUMBER,name VARCHAR2(20));
ALTER TABLE courses ADD CONSTRAINT cid_pk PRIMARY KEY(courseid);


------------------TABLE1--DAY2-------------------
CREATE TABLE students(studentid NUMBER UNIQUE, name VARCHAR2(20) NOT NULL,
doj DATE default SYSDATE, courseid NUMBER, CONSTRAINT cid_FK FOREIGN KEY(courseid) references courses(courseid));
DROP TABLE students;
CREATE TABLE students(studentid NUMBER UNIQUE, name VARCHAR2(20) NOT NULL,
doj DATE default SYSDATE, courseid NUMBER, age NUMBER, CONSTRAINT cid_FK FOREIGN KEY(courseid) references courses(courseid));
drop table students;
CREATE TABLE students(studentid NUMBER UNIQUE, name VARCHAR2(20) NOT NULL, doj DATE default SYSDATE,
courseid NUMBER, age NUMBER, CONSTRAINT cid_FK FOREIGN KEY(courseid) references courses(courseid),
CONSTRAINT age_ck CHECK(age>17));
ALTER TABLE students ADD(address vARCHAR2(20));
ALTER TABLE students MODIFY(address vARCHAR2(22));
desc students;
ALTER tABLE students DROP COLUMN address;


-----------------TABLE3--DAY2-------------------
SHOW USER;
grant connect, resource to tanujadb;
alter session set current_schema=tanujadb;
desc EMP;
alter table emp rename to emp_22;
desc emp;
desc emp_22;
ALTER TABLE EMP_22 SET UNUSED COLUMN sal;
desc emp_22;
ALTER TABLE EMP_22 DROP UNUSED COLUMNS;
desc emp_22;
SELECT ename,sal FROM emp;
 rollback;
SELECT ename,sal FROM emp;
UPDATE emp SET sal=sal+300,comm=comm+100;
SELECT ename,sal FROM emp;
commit;
rollback;
SELECT ename,sal FROM emp;
SELECT max(sal) FROM emp WHERE deptno=10;
UPDATE emp SET sal=(SELECT max(sal) FROM emp WHERE deptno=10)
WHERE deptno=10;
SELECT ename,sal FROM emp WHERE deptno=10;
CREATE TABLE emp_10 AS SELECT empno,ename,sal FROM emp WHERE deptno=10;
CREATE TABLE emps AS SELECT empno,ename,sal FROM emp;
SELECT count(*) FROM emp_10;
SELECT count(*) FROM emps;
desc emp_22;
SELECT count(*) FROM emp_22;
SELECT count(*) FROM emp_22;
rollback;
SELECT count(*) FROM emp_22;
SELECT * FROM emp_22;
rollback to b;
SELECT * FROM emp_22;
rollback to a;
SELECT * FROM emp_22;
commit;
SELECT * FROM emp_22;