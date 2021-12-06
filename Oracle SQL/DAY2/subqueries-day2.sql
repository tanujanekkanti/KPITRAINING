---SUBQUERY---
select staff_name from staff_master 
where design_code=(select design_code from designation_master
where design_name='Professor');

select student_name from student_master
where dept_code=(select dept_code from department_master
where dept_code=10);

select Staff_Name from staff_Master
where Dept_Code=(select Dept_Code from department_master
where Dept_Code=30);

select Book_code,Student_code,Staff_code from Book_transactions
where Student_code=(select Student_code from Student_Master
where Student_code=1015);

select staff_name,staff_sal from staff_master
where staff_sal>(select staff_sal from staff_master
where staff_name='Anil');

select mgr_code,design_code from staff_master
where design_code>(select design_code
from staff_master where staff_name='Anil');
       
select staff_name,staff_address from staff_master
where staff_name in (select staff_name
from staff_master where design_code>102);




create table emp2 as select * from emp;
select ename from emp;
select ename from emp2;
create table design_copy as select * from Designation_Master where 1=2;
select * from Designation_Master;
select count(*) from Designation_Master;
select count(*) from design_copy;
desc Designation_Master;
desc design_copy;
select deptno, avg(sal) from emp group by deptno;  ---group by--
select deptno, avg(sal) from emp group by deptno having avg(sal)>2500;----having----
select deptno from emp group by deptno having avg(sal)>2500;

------subquery
select ename,deptno from emp where deptno in
(select deptno from emp group by deptno having avg(sal)>2500);

select ename,deptno from emp where deptno not in
(select deptno from emp group by deptno having avg(sal)>2500);

select ename,deptno from emp;
delete from emp where ename='Test';

select ename,deptno from emp where deptno not in
(select deptno from emp group by deptno having avg(sal)>2500);

---subquery using any---
select ename,deptno from emp where sal>any
(select avg(sal) from emp);                  

select ename,deptno from emp where sal>any
(select avg(sal) from emp group by job);

select avg(sal) from emp group by job;
select job,avg(sal) from emp group by job;

select ename,sal,job from emp where sal>any
(select avg(sal) from emp group by job);

---subquery using all
select ename,deptno from emp where sal>all
(select avg(sal) from emp group by job);

select job,min(sal) from emp group by job;
select deptno,min(sal) from emp group by deptno;

select ename,deptno from emp where sal>all
(select avg(sal) from emp group by deptno);

select ename,sal,job from emp where sal>any
(select avg(sal) from emp group by job )

select avg(sal) from emp group by job;
select job, avg(sal) from emp group by job;

select ename,sal,job from emp e where sal>all
(select avg(sal) from emp e1 where e.job=e1.job group by job );

select ename from emp connect by empno=mgr;
select ename from emp connect by empno=mgr start with ename='ALLEN';
select ename from emp connect by prior empno=mgr start with ename='A
EN';
select ename from emp connect by prior empno=mgr start with ename='B
KE';
select ename,empno from emp connect by prior empno=mgr;
select ename,empno from emp connect by prior empno=mgr start with ename='BLAKE';
select ename,empno from emp connect by empno=mgr
start with ename='BLAKE';

