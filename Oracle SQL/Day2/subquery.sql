show user;
grant connect,resource to amulyadb;
alter session set current_schema=amulyadb;

select * from staff_master;
select design_code from designation_master where design_name='Professor';
select staff_code from staff_master where staff_name='Smith';

select staff_name from staff_master 
 where design_code=(select design_code from designation_master 
  where design_name='Professor');
  
create table employee as select * from emp;
select ename from emp;
select ename from employee;

create table design_copy as select * from designation_master where 1=2;
select * from designation_master;
select count(*) from designation_master;
select count(*) from design_copy;

desc designation_master;
desc design_copy;

select * from emp;
select deptno,avg(sal) from emp group by deptno;
select deptno,avg(sal) from emp group by deptno having avg(sal)>2200;
select deptno from emp group by deptno having avg(sal)>2200;

select ename, deptno from emp where deptno in
 (select deptno from emp group by deptno having avg(sal)>2200);
 
select ename, deptno from emp where deptno not in
 (select deptno from emp group by deptno having avg(sal)>2200);
 
select ename,deptno from emp;
delete from emp where ename='WARD';
select ename,deptno from emp where deptno not in 
 (select deptno from emp group by deptno having avg(sal)>2500);
 
select ename,deptno from emp where sal>any
 (select avg(sal) from emp);
 
select ename,deptno from emp where sal>any
 (select avg(sal) from emp group by job);
 
select avg(sal) from emp group by job;
select job,avg(sal) from emp group by job;

select ename,sal,job from emp where sal>any
 (select avg(sal) from emp group by job);

select ename,deptno from emp where sal>all
 (select avg(sal) from emp group by job);
  
select job,min(sal) from emp group by job;
select deptno,min(sal) from emp group by deptno;

select ename,deptno from emp where sal>all
 (select avg(sal) from emp group by deptno);

select ename,sal,job from emp where sal>any
 (select avg(sal) from emp group by job);

select avg(sal) from emp group by job;
select job, avg(sal) from emp group by job;

select ename,sal,job from emp e where sal>all
 (select avg(sal) from emp e1 where e.job=e1.job group by job);
 
select * from emp;
select ename from emp connect by empno=mgr;
select ename from emp connect by empno=mgr start with ename='ALLEN';
select ename from emp connect by prior empno=mgr start with ename='ALLEN';
select ename from emp connect by prior empno=mgr start with ename='BLAKE';

select ename,mgr from emp;
select ename, empno, mgr from emp;

select ename,empno from emp connect by prior empno=mgr;
select ename,empno from emp connect by prior empno=mgr start with ename='BLAKE';
select ename,empno from emp connect by empno=mgr start with ename='BLAKE';

