create database employee;
use employee;
--task1
create table emp(
emp_id int primary key,
emp_name varchar(50),
department varchar(30),
salary decimal(10,2),
experience int,
city varchar(30),
project_name varchar(20),
project_status varchar(20));

insert into emp values (101,'Amit','IT',60000,3,'nagpur','Alpha','completed'),
(102,'Sneha','HR',45000,2,'pune','Beta','ongoing'),
(103,'Rahul','IT',75000,5,'mumbai','gamma','completed'),
(104,'Priya','Finance',50000,4,'nagpur','Alpha','ongoing'),
(105,'Karan','IT',80000,6,'Bangalore','Delta','completed'),
(106,'Neha','HR',48000,3,'pune','Beta','completed'),
(107,'Arjun','Finance',52000,4,'Mumbai','Gamma','ongoing'),
(108,'Pooja','IT',72000,5,'nagpur','Alpha','completed'),
(109,'Riya','HR',46000,2,'delhi','delta','ongoing'),
(110,'Mohit','IT',67000,4,'pune','Beta','completed'),
(111,'Anjali','Finance',53000,3,'nagpur','Gamma','completed'),
(112,'Vikram','IT',78000,6,'Mumbai','Delta','ongoing');

select * from emp;
--task2
update emp
set salary=70000
where emp_id=101;

--task3
update emp
set project_status='Completed'
where project_name='Beta';
select * from emp;

--task4
delete from emp
where emp_id=109;
select * from emp;

--task5
select * from emp
where salary>70000;

--task6
select * from emp
where city= 'nagpur';

--task7
select  department,count(*)as total_emp from emp
group by department;



--task8
select sum(salary)as total_salary from emp
where department='IT';

--task9
select city,avg(salary)as avg_salary from emp
group by city;

--task10
select top(3) * from emp
order by salary desc;

--task11
select * from emp
where project_status='completed' and experience > 4;


--task12
select * from emp
where department not in ('HR');
