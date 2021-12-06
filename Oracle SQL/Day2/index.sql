show user;
grant connect, resource to amulyadb;
alter session set current_schema=amulyadb;

create index job_index on emp(job);
desc user_indexes;
select index_name, table_name from user_indexes;
select ename from emp where job='MANAGER';
creat unique index on emp_22(empno);
create unique index uniind on emp(ename);
create index fnindex31 on emp(length(ename));
select ename from emp where 3>length(ename);
select ename from emp where length(ename)>2;
DROP INDEX job_index;
rollback index job_index;




