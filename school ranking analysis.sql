use sql_basics
/*Write a query to create a students table with appropriate data types for student id, student first name, student last name, class, and age 
where the student last name, student first name, and student id should be a NOT NULL constraint, and the student id should be in a primary key.*/

create table student(
st_id int not null primary key,
stf_name varchar(20) not null,
stl_name varchar(20) not null,
class int,
age int)

--Write a query to insert values in students
insert into student values(1,'krishna','gee',10,18),
(2,'ste','chri',10,17),
(3,'kai','kumar',10,18),
(4,'ashis','jain',10,16),
(5,'khisbu','jain',10,17),
(6,'adhan','riy',10,16)
select * from student
--Write a query to create a marksheet table that includes score, year, ranking, class, and student id.
create table marksheet(
score int,
year date,
ranking int,
class int,
st_id int)


--write a query to insert values in maeksheet
insert into marksheet values(989,'2014',10,1,1)
insert into marksheet values(454,'2014',10,10,2),
(880,'2014',4,10,3),(870,'2014',5,10,4),(720,'2014',7,10,5),(670,'2014',8,10,6)

/*Write a query to display student id and student first name 
from the student table if the age is greater than or equal to 16 and the student's last name is Kumar*/
select st_id,stf_name from student where age>=16 and stl_name='kumar'

--Write a query to display all the details from the marksheet table if the score is between 800 and 1000.
select*from marksheet where score between 800 and 1000

--Write a query to display the marksheet details from the marksheet table by adding 5 to the score and by naming the column as new score.
select  score+5 as new_score,* from marksheet

--Write a query to display the marksheet table in descending order of the  score.
select * from marksheet order by score desc

--Write a query to display details of the students whose first name starts with a.
select * from student where stf_name like'a%'
