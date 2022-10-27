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
select Dept_id from ANISH_DEPTMNT where Dept_id like'_2%';
select * from ANISH_EMPLOY where Dept_id in (21,22,23);
select * from ANISH_EMPLOY where Salary between 40000 and 50000;
select First_name,Salary,ANISH_EMPLOY.Dept_id from ANISH_EMPLOY inner join ANISH_DEPTMNT on ANISH_EMPLOY.Dept_id=ANISH_DEPTMNT.Dept_id where Manager_id is null;

select * from ANISH_EMPLOY order by First_name;
select First_name,Salary,Dept_id from ANISH_EMPLOY order by Dept_id,Salary desc;
select LEFT(First_name,3) from ANISH_EMPLOY ;
select RIGHT(Last_name,2) from ANISH_EMPLOY ;
select First_name,Charindex('a',First_name) as POSITION  from ANISH_EMPLOY;

select Max(Salary) As Maximum_Salary from ANISH_EMPLOY;
select e1.Salary from ANISH_EMPLOY e1 where(select count(distinct e2.Salary) from ANISH_EMPLOY e2 where e1.Salary<e2.Salary)=2-1;
select avg(Salary) As Average_Salary from ANISH_EMPLOY where Dept_id=22;