create table ANISH_EMPLOY(id INT primary key ,First_name varchar(20),Last_name varchar(20), Salary decimal(8,2),Dept_id int,YOJ DATETIME,YOR DATETIME )
select * from ANISH_EMPLOY
insert into ANISH_EMPLOY values(21,'anish','kumar',14500,10,'jan 12,2007','nov 03 2008')
insert into ANISH_EMPLOY values(22,'arun','kumar',15500,10,'mar 13,2005','dec 04 2009')
insert into ANISH_EMPLOY values(24,'sachin','tdk',7000,10,'jun 22,2006','aug 11 2012')
insert into ANISH_EMPLOY values(213,'sonny','liston',18000,10,'jul 12,2010','may 21 2013')

create table ANISH_DEPTMNT(Dept_id int primary key,Manager_id int,Dept_name varchar(20))
select * from ANISH_DEPTMNT
insert into ANISH_DEPTMNT values(22,111,'science')
insert into ANISH_DEPTMNT values(23,121,'maths ')
insert into ANISH_DEPTMNT values(24,145,'economics')
insert into ANISH_DEPTMNT values(21,132,'bio')
select First_name from ANISH_EMPLOY where First_name like's%';
select First_name from ANISH_EMPLOY where First_name like's%n';

select * from ANISH_EMPLOY where First_name like's%' and  Dept_id in (24);
select Dept_id from ANISH_DEPTMNT where Dept_id like'%2';
select * from ANISH_EMPLOY where Dept_id in (21,22,23);
select * from ANISH_EMPLOY where Salary between 14000 and 16000;
select First_name,Salary,ANISH_EMPLOY.Dept_id from ANISH_EMPLOY inner join ANISH_DEPTMNT on ANISH_EMPLOY.Dept_id=ANISH_DEPTMNT.Dept_id where Manager_id is null;

select * from ANISH_EMPLOY order by First_name;
select First_name,Salary,Dept_id from ANISH_EMPLOY order by Dept_id,Salary desc;
select LEFT(First_name,3) from ANISH_EMPLOY ;
select RIGHT(Last_name,2) from ANISH_EMPLOY ;
select First_name,Charindex('a',First_name) as POSITION  from ANISH_EMPLOY;

select Max(Salary) As Maximum_Salary from ANISH_EMPLOY;
select e1.Salary from ANISH_EMPLOY e1 where(select count(distinct e2.Salary) from ANISH_EMPLOY e2 where e1.Salary<e2.Salary)=2-1;
select avg(Salary) As Average_Salary from ANISH_EMPLOY where Dept_id=22;
update ANISH_EMPLOY set Dept_id=21 where id=21
update ANISH_EMPLOY set Dept_id=22 where id=22
update ANISH_EMPLOY set Dept_id=23 where id=23
update ANISH_EMPLOY set Dept_id=24 where id=24
update ANISH_EMPLOY set Dept_id=213 where id=213

select First_name from ANISH_EMPLOY where Dept_id=23
select Last_name,YOJ from ANISH_EMPLOY where YOJ between 'jun 22,2006' and 'jul 12,2010'

insert into ANISH_EMPLOY values(25,'ark','kmr',14500,25,'mar 13,2005','dec 04 2009')
insert into ANISH_EMPLOY values(26,'alexz','fino',6000,25,'aug 13,2005','oct 11 2009')
insert into ANISH_EMPLOY values(27,'gino','tom',16000,25,'aug 13,2005','nov 14 2019')
insert into ANISH_EMPLOY values(28,'vod','tam',16000,25,'may 13,2005','aug 14 2019')
select First_name ,YOR from ANISH_EMPLOY where Dept_id=25 
select YOR from ANISH_EMPLOY  group by YOR having count(id)>1

select id ,avg(Salary) as AVGSALARY from ANISH_EMPLOY group by id having avg(Salary)>10000

select id,DATEDIFF(day,YOJ,YOR) as DATE from ANISH_EMPLOY
select id from ANISH_EMPLOY where YOJ=SYSDATETIME()
select upper(First_name) as firstname  ,lower(Last_name) as lastname from ANISH_EMPLOY
select len(First_name) from ANISH_EMPLOY where Last_name like '___%n'
select First_name,DATEDIFF(year,YOJ,YOR) as datedif from ANISH_EMPLOY
select id from ANISH_EMPLOY where (month(YOJ))=8
select id, First_name,Last_name, Salary  from ANISH_EMPLOY where Salary>(select avg(Salary) from ANISH_EMPLOY)
select avg(Salary) as 'AVERAGE SALARY' from ANISH_EMPLOY where YOJ < 2022 

update ANISH_EMPLOY  set First_name=null 
rollback;
update ANISH_EMPLOY set First_name='AAA' where id=21
CREATE VIEW  anish vie AS SELECT First_name,id,Last_name,Salary,YOR,YOJ,Dept_id from [ANISH_EMPLOY]
select First_name,id,Last_name, Salary,YOR,YOJ,Dept_id from anish_vie
create table ANISH_TAB( ord_id int FOREIGN KEY REFERENCES ANISH_EMPLOY(id),place varchar(20) )
insert into ANISH_TAB values(21,'chennai')
insert into ANISH_TAB values(23,'banglore')
select * from ANISH_TAB

create synonym empno for  ANISH_EMPLOY
select * from empno
insert into empno values(31,'idea','tel',14500,25,'feb 13,2005','sep 14 2019')
create procedure Anish_tabs as select * from ANISH_EMPLOY where YOJ between 'jan 12,2007' and 'jul 12,2010'
exec Anish_tabs
create procedure ANISH_PROC as insert into ANISH_DEPTMNT VALUES(43,333,'science') 
exec ANISH_PROC
SELECT REPLACE(CONVERT(VARCHAR,'2006-12-30',101),'-','') + REPLACE(CONVERT(VARCHAR,'00:38:54',108),':','');
