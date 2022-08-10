 --v2
 --Again it is just validation only
 ----inner join
create table q1 (aid int, e_name varchar(10));
create table q2 (bid int, e_name varchar(10),aid int);

insert into q1 values (1,'a')
insert into q1 values (2,'b')
insert into q1 values (3,'c')
insert into q1 values (4,'d')
insert into q1 values (5,'e')

insert into q2 values (10,'a',3)
insert into q2 values (12,'b',4)
insert into q2 values (13,'c',5)
insert into q2 values (14,'d',6)
insert into q2 values (15,'e',7)
desc q1
select * from q1;
select * from q2;


----Hi tommorow is my birthday 


--inner join
select * from q1 inner join q2 on q1.aid = q2.aid 

--select * from q1 inner join q2 on q1.aid = q2.aid or q1.name = q2.name

--select * from q1 inner join q2 on  q1.name = q2.name
-
-Just checking 1
select q1.aid,q1.name,bid from q1 inner join q2 on q1.aid = q2.aid

--left 
select* from q1 left outer join q2 on q1.aid = q2.aid

--right
select * from q1 right join q2 on q1.aid = q2.aid

--full join
select * from q1 full join q2 on q1.aid = q2.aid

--cross join
select * from q1 cross join q2;

--equi join
select * from q1,q2 where q1.aid = q2.aid
------------------------------------------------------------------
--Self Join [Joining table to itself] 
create table Self_JOIN (EID int, name varchar(10),MID int);

insert into Self_JOIN values (21,'C',3)
insert into Self_JOIN values (22,'d',4)
insert into Self_JOIN values (23,'e',5)
insert into Self_JOIN values (24,'r',6)
insert into Self_JOIN values (25,'t',7)

select * from Self_JOIN a1, Self_JOIN a2 where  a1.EID = a2.EID

select a1.eid, a1.name, a2.name as Manger from Self_JOIN a1, Self_JOIN a2 where  a1.EID = a2.MID

--Equi join:- If we are not using "Join" keyword while jonining 2 tables that will be considered as Equi Join.   
Select * from Q1,Q2 where Q1.AID = Q2.AID

select * from Q1 join Q2 on Q1.AID = Q2.AID
--Just checking 2
--Cross Join:-  It is cartesian product.

Select * from Q1 cross join Q2 Where Q1.AID = Q2.AID
-----------------------------------------------------------------------------------------------------------------------------------
select * from q1 as T1, q1 as T2 where	T1.aid = T2.aid
---------------------------------------------------------------------------------------------------------------
--Natural join

select * from q1 JOIN q2

select q1.name from q1, q2 where q1.aid = q2.aid

--select * from q2 full join q1 on q1.aid = q2.aid

create table q3 (cid int, name varchar(10),bid int);

insert into q3 values (21,'C',3)
insert into q3 values (22,'d',4)
insert into q3 values (23,'e',5)
insert into q3 values (24,'r',6)
insert into q3 values (25,'t',7)

 


 USE JOIN1

create table Job (salary int,base varchar (10),id int) 
insert into job values (10000,'Pune',1) 
insert into job values (35000,'Nagar',2) 
insert into job values (20000,'Mumbai',3) 
insert into job values (30000,'Nagpur',4) 
insert into job values (40000,'Pune',5) 

select * from Job;

create table SELF_TEST_EMP(EID int, ENAME varchar(20),ManagerID varchar(20)) 
insert into SELF_TEST_EMP values(1,'Shivam',2) 
insert into SELF_TEST_EMP values(2,'krishna',4) 
insert into SELF_TEST_EMP values(3,'meera',NULL) 
insert into SELF_TEST_EMP values(4,'radha',2) 
insert into SELF_TEST_EMP values(5,'bali',1) 

select * from SELF_TEST_EMP
select * from SELF_TEST_EMP as T1, SELF_TEST_EMP as T2 where t1.eid=t2.ManagerId;

select t1.eid,t1.managerID from SELF_TEST_EMP as T1, SELF_TEST_EMP as T2 where t1.eid=t2.ManagerId;
select t1.managerID,t1.ENAME from SELF_TEST_EMP as T1, SELF_TEST_EMP as T2 where t1.eid=t2.ManagerId;


create table EMP_new (id int, name varchar (10),Company varchar (10),Work varchar (10)); 
insert into EMP_new values (1,'Amit','Info','pune') 
insert into EMP_new values (2,'Puja','Tcs','Mumbai') 
insert into EMP_new values (3,'Poonam','Tech','Pune') 
insert into EMP_new values (4,'Abhi','Logic','Nagpur') 
insert into EMP_new values (5,'Kirti','Lim','Nagar') 
select * from EMP_new

select * from emp_new,job where emp_new.id =job.id and emp_new.work = job.base and work in ('pune')

select * from EMP_new  where work = 'pune'


-- JUST FOR CHECHING

=======
--Hello this is just checking
 

 ----V1
