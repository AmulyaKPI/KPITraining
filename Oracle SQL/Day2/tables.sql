show user;
grant connect,resource to amulyadb;
alter session set current_schema=amulyadb;

create table courses(courseid number primary key, name varchar2(20));
drop table courses;
create table courses(courseid number, name varchar2(20), constraint cid_pk primary key(courseid));
/*desc courses;*/ /*getting error*/
alter table courses drop constraint cid_pk;
alter table courses disable constraint cid_pk;
alter table courses enable constraint cid_pk;
insert into courses values(1,'JSP');
alter table courses disable constraint cid_pk;
insert into courses values(1,'js');
truncate table courses;
alter table courses enable constraint cid_pk;
drop table courses;
create table courses(courseid number, name varchar2(20));
alter table courses add constraint cid_pk primary key(courseid);
