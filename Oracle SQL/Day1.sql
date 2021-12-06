/* Numeric functions*/
show user;
grant connect,resource to amulyadb;
alter session set current_schema=amulyadb;
select ceil(24.567) from dual;
select floor(24.567) from dual;
select round(24.567) from dual;
select round(24.567,1) from dual;
select round(24.567,-1) from dual;
select truncate(24.567,1) from dual;/*invalid identifier*/
select trunc(24.567,2) from dual;
select power(8,3) from dual;
select sqrt(25) from dual;
select mod(97,16) from dual;
select ceil(sal) from emp;
select * from emp;
select mgr from emp;

/*Characteristicfunctions*/
select lower('oracle') from dual;
select upper('oracle') from dual;                                                                    
select instr('oracle','c') from dual;                                                       
select concat('oracle','developer') from dual;
select concat('senior',concat('oracle','developer')) from dual;                                                                                                                             
select 'oracle'||'for'||'developer' from dual;                                                        
select substr('oracle',3) from dual;                                                       
select substr('oracle',3,2) from dual;
select length('oracle developer') from dual;                                                                     
select ltrim('    oracle for developer') from dual;                                           
select rtrim('oracle for developer     ') from dual;
select lpad('oracle',12,'*') from dual;
select rpad('oracle',15,'*') from dual;
select rpad(ename,14,'*') from emp;
select lpad(ename,12,'*') from emp;

/*conversion functions*/
select to_char(2560,'$9,999.0') from dual;
select to_char(2560,'$2,2222.0') from dual;/*invalid number format*/
select to_char(2560,'$0,00,000.0') from dual;
select to_char(sal,'9,9999.00') from emp;
select to_char(sysdate,'dd month yy') from dual;
select to_char(sysdate,'ddth mon yy') from dual;
select to_char(sysdate,'ddspth mon yy') from dual;
select to_date('may 20 1999', 'month dd yyyy') from dual;
select to_char(sysdate, 'd') from dual;
select to_char(sysdate, 'dd') from dual;
select to_char(sysdate, 'yyyy') from dual;


/*data functions*/
select ename,lpad('*',length(ename),'*') as e from emp;
select sysdate from dual;
select current_date from dual;
select sysdate+7 from dual;
select sysdate-7 from dual;
select months_between(sysdate,'20-may-2014') from dual;
select last_day(sysdate) from dual;
select next_day(sysdate,3) from dual;
select next_day(sysdate,1) from dual;
select next_day(sysdate,2) from dual;
select next_day(sysdate,3) from dual;
select next_day(sysdate,4) from dual;
select next_day(sysdate,5) from dual;
select next_day(sysdate,'monday') from dual;
select next_day(sysdate,'wednesday') from dual;
select next_day(sysdate,'friday') from dual;
select next_day(sysdate+30,'tuesday') from dual;
select extract(year from sysdate) from dual;


/*demo1*/
set linesize 300
column sal format A4
select empno,ename from emp where sal>2000;
select empno,ename,sal from emp where sal>2000;
column sal format A30
ed
select empno,ename from emp where sal>200;
select empno as employeenumber, ename "employee name" from emp where sal>2000;
column "Employee Name" format A30
select * from emp;
select ename from emp where ename like 'M%';
select ename from emp where ename like '%S';
select ename from emp where ename like 'M%T__';
select ename from emp where ename like '__A__';
select  sal from emp;
select distinct job from emp;
select ename,sal from emp;
select ename,sal from emp order by sal asc;
select ename,sal as salary from emp order by sal desc;
select floor((sysdate-hiredate)/365) from emp order by 1;
select ename from emp order by 1;
desc emp;
select ename,sal as salary from emp order by 2 desc;
select ename, sal as salary from emp order by 2 desc, ename desc;
select sal+comm from emp;
select sal||' '|| comm from emp;


/*group functions*/
select (sysdate-hiredate)/356 from emp;
select floor((sysdate-hiredate)/365) from emp;
select sal as salary from emp;
select sum(sal) as totalsalary from emp;
select min(sal) from emp;
select max(sal) from emp;
select avg(sal) from emp;
select sum(sal)*12 as totalsalary from emp;
select count(*) from emp;
select count(mgr) from emp;
select count(deptno) from emp;
select deptno from emp;
select count(*) from emp group by deptno;
select count(*),deptno from emp group by deptno order by 2;
select count(*), deptno from emp group by deptno, sal order by 2;
select count(*), deptno from emp group by deptno having count(*)>2 order by 2;
select count(*), job from emp group by job having min(sal)>1000;


/* miscellaneous functions*/
select mgr from emp;
select nvl(mgr,0) from emp;
select nvl2(mgr,2,3) from emp;
select nullif(deptno,10) from emp;
select ename,decode(deptno,10,'accounting',20,'research',30,'sales','unknown') as department from emp;

select ename, case deptno 
when 10 then 'accounting'
when 20 then 'research' 
when 20 then 'sales' 
else 'unknown' end as department from emp;

select sal,case
when sal>2000 then 'category 1'
when sal<3000 then 'category 2'
when sal<4000 then 'category 3'
else 'category 4'
end from emp;


