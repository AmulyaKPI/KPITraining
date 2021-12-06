show user;
grant connect, resource to amulyadb;
alter session set current_schema=amulyadb;

/*synonyms*/

select ename from employee;

select ename from username.employee;

create synonym employee1 for employee;
 
select ename from employee1 where deptno=10;

drop synonym employee1;

create public synonym test for employee;

drop public synonym test;

/*sequence*/

create sequence idseq1;

select idseq1.nextval from dual;
select idseq1.nextval from dual;                                                                
select idseq1.nextval from dual;                                                                    
select idseq1.currval from dual;  

create table dept_det as select * from department where 1=2; 

insert into dept_det values(1,'traning','chennai');

insert into dept_det values(idseq1.nextval,'traning','chennai');

select * from department;
select * from dept_det;

select idseq1.nextval from dual;

insert into dept_det values(idseq1.nextval,'admin','pune');
commit;

insert into dept_det values(idseq1.nextval,'admin','banglore');
commit;

drop sequence idseq;

create sequence idseq increment by 5 start with 2000 maxvalue 2020 nocycle;

insert into dept_det values(idseq1.nextval,'admin','pune');
insert into dept_det values(idseq1.nextval,'admin','delhi');
insert into dept_det values(idseq1.nextval,'admin','mumbai');
insert into dept_det values(idseq1.nextval,'admin','bhihar');

alter sequence idseq1 maxvalue 2020;

insert into dept_det values(idseq1.nextval,'admin','bhihar');
select * from dept_det;

