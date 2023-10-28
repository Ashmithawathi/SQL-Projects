use sql_basics

/*Write a query to create an employee table with the field
employee id, first name, last name, job id, salary, manager id, and department id.*/

create table employee
( id int,
f_name varchar(20),
l_name varchar(20),
job_id varchar(10),
salary int,
manager_id int,
dept_id int
)

--Write a query to insert values into the employee table

insert into employee values(101,'ankit','jain','HP124',200000,2, 24),
(102,'sarvesh','patel','HP123',150000,2, 24),
(103,'krishna','gee','HP125',500000,5, 44),
(104,'rana','gee','HP122',250000,3, 54),
(105,'soniya','jain','HP121',400000,1, 22),
(106,'nithin','kumar','HP120',300000,4, 34),
(107,'karan','patel','HP126',300001,2, 34),
(108,'shilpa','jain','HP127',300001,5, 24),
(109,'mukesh','sing','HP128',300001,4, 44)

select * from employee

/*Write a query to find the first name and salary of the employee
whose salary is higher than the employee with the last name Kumar from the employee table*/

select f_name, salary
  from employee 
  where salary>
(
select salary from employee where l_name ='kumar'
);

/*Write a query to display the employee id and last name of the employee 
whose salary is greater than the average salary from the employee table*/

select id, l_name 
from employee 
where salary> 
(
  select avg(salary) from employee
);


/* Write a query to display the employee id, first name, and salary of the employees
who earn a salary that is higher than the salary of all the shipping clerks (JOB_ID = HP122). Sort the results of the salary in ascending order.*/

select id,f_name,salary
from employee 
where salary >
(
	select salary from employee where job_id='HP122'
)
order by salary asc ;

--Write a query to display the first name, employee id, and salary of the first three employees with highest salaries.

select top 3  id, f_name, salary
from employee 
order by salary desc;
                         --(or)

select top 3 id, f_name, salary
from employee
where salary IN 
(
    select top 3 salary
    from employee
    order by salary desc
)
order by salary desc;





