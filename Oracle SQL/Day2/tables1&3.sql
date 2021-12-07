show user;
grant connect, resource to amulyadb;
alter session set current_schema=amulyadb;

/*table1*/
create table students(studentid number unique, 
 name varchar2(20) not null, 
  doj date default sysdate, 
   courseid number, 
    constraint cid_fk foreign key(courseid) references courses(courseid));

drop table students;

create table students(studentid number unique,
 name varchar2(20) not null,
  doj date default sysdate,
  courseid number,
  age number,
   constraint cid_fk foreign key(courseid) references courses(courseid));
   
select * from emp;
select * from employee;
desc employee;

alter table employee rename to employee_1;
desc employee_1;

alter table employee_1 rename column id to empno;
alter table employee_1 set unused column sal;
desc employee_1;
select * from employee_1;
insert into employee_1(empno) values(9896);
insert into employee_1 values(7940,'TL');

select * from dept_det;
insert into dept_det values(77,'tt','uu');

insert into dept_det values(&dept_code, '&dept_name', '&location');
enter value for dept_code: 7
enter value for dept_name: admin
enter value for location: pune

insert into dept_det values(&dept_code, '&dept_name', '&location');
insert into dept_det values(2,'CO', 'Delhi');

select ename from employee_1 where deptno=&no;
select ename from employee_1 where deptno=20;
select ename from employee_1 where deptno=30;
select ename from employee_1 where deptno=10;

update employee_1 set comm=1500;

select ename, comm from employee_1;
rollback;

select * from employee_1;
update employee_1 set comm=comm+100;

select ename,sal from emp;

select max(sal) from emp where deptno=20;

update emp set sal=
 (select max(sal) from emp where deptno=20) where deptno=20;
 
 select ename, sal from emp where deptno=20;
 
 update set &comm=&c;
 
select count(*) from employee_1;

savepoint a;

select * from dept_Det;
insert into dept_det values(11,'DD','Hyd');

select * from dept_det;
 rollback;

