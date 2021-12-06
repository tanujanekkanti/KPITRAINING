show user;
grant connect,resource to tanujadb;
alter session set current_schema=tanujadb;


create index job_index on emp(job);
desc user_indexes;
select INDEX_NAME, TABLE_NAME from user_indexes;
select ename from emp where job='MANAGER';
create unique index on emp_22(empno);
create unique index uniind on emp(ename);
create index fnIndex31 on emp(length(ename));
select ename from emp where 3>length(ename);
select ename from emp WHERE length(ename)>2;
drop index job_index;
rollback index job_index;

