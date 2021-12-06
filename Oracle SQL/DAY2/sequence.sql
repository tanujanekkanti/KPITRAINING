show user;
grant connect,resource to tanujadb;
alter session set current_schema=tanujadb;


CREATE SEQUENCE idseq;
SELECT idseq.nextval FROM dual;
SELECT idseq.nextval FROM dual;
SELECT idseq.nextval FROM dual;
SELECT idseq.nextval FROM dual;
SELECT idseq.currval FROM dual;
SELECT idseq.nextval FROM dual;
commit;
DROP sequence idseq;



