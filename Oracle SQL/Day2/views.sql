show user;
grant connect,resource to amulyadb;
alter session set current_schema=amulyadb;

select * from employee;
select ename from employee where deptno=20;

create view viewdemo1 
 as select ename from employee where deptno=20;
 
select * from viewdemo1;

create or replace view viewdemo1 
 as select ename from employee where deptno=20;
 
create view viewdemo2 as select * from department;
create view viewdemo3 as select * from department;
select * from department;

select * from viewdemo2;
select * from viewdemo3;

insert into viewdemo3 values(10,'dd','f');

select * from department;

create or replace view viewdemo3 
 as select * from department with read only;

create or replace view viewdemo3 
 as select * from department where dept_code=10 with check option;
 
 create or replace force view viewdemo3
  as select * from test31;
  
  create view viewdemo4
  as select deptno,count(*) as count from employee group by deptno;
  
  create view viewdemo5
  as select e.ename "manager name" from employee e,employee m where e.empno=m.empno;
  
 select * from viewdemo5;
 
 drop view viewdemo2;
 
 select s.staff_name,v.strength from staff_master s,
  (select mgr_code,count(*) strength from staff_master group by mgr_code) v
    where s.staff_code=v.mgr_code;
    
 select ename,sal from employee order by sal desc;

 select ename,sal from(select ename,sal from employee order by sal desc);
 
 select emp.deptno, emp.sal, emp.job from
 (select deptno,sal, job from employee group by deptno, sal, job order by sal desc)emp where rownum<=3;
 
 select emp.deptno, emp.sal from
 (select deptno,sal from employee group by deptno, sal order by sal desc)emp where rownum<=3;
 
 
 
 
 