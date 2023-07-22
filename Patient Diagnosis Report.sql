use sql_basics
create table patient(
date date,
p_id int,
p_name varchar(20),
age int,
weight int,
gender varchar(10),
location varchar(15),
phno int,
disease varchar(10),
doctor_name varchar(10),
doctor_id int
)
select* from patient
insert into patient values('2021',23,'sara',67,53,'Female','Chennai',54267,'TB','Mohan',21)
insert into patient values('2021',22,'arun',59,56,'Male','Mumbai',56247,'Cancer','suraj',21)
insert into patient values('2023',21,'maran',45,56,'Male','Chennai',3535,'asthma','Mehta',21)
insert into patient values('2020',25,'priya',56,87,'Female','pune',73635,'pilex','karthick',21)
insert into patient values('2011',26,'rishab',83,83,'Male','Kokata',73222,'cardiac','suraj',21)
insert into patient values('2001',24,'ash',40,48,'Female','Kchin',8235,'liver','Mohan',21)
insert into patient values('2016',27,'mithran',62,45,'Male','banglore',5363445,'cardiac','Mehta',21)
insert into patient values('2017',28,'tiya',55,56,'Female','vizah',63,'tb','karthick',21)

select * from patient

--Write a query to display the total number of patients in the table.
select count(p_name) from patient

--Write a query to display the patient id, patient name, gender, and disease of the patient whose age is maximum.
select top(1) p_name,p_id,disease, gender from patient order by age desc 

--Write a query to display patient id and patient name with the current date.
select getdate()as currentdate ,p_id,p_name from patient

--Write a query to display the old patient’s name and new patient's name in uppercase.
select p_name,upper(p_name)as new_p_name from patient

--Write a query to display the patient’s name along with the length of their name.
select p_name,len(p_name) from patient

--Write a query to display the patient’s name, and the gender of the patient must be mentioned as M or F
select p_name, gender, iif(gender='female','F','M')from patient

--Write a query to combine the names of the patient and the doctor in a new column.
select concat(p_name,' ',doctor_name)from patient

--Write a query to display the patients’ age along with the logarithmic value (base 10) of their age.
select age, log10(age)from patient

--Write a query to extract the year from the given date in a separate column.
select p_name,year(date)as year from patient

--Write a query to return NULL if the patient’s name and doctor’s name are similar else return the patient’s name.
select iif(p_name=doctor_name,'NULL',p_name)from patient

--Write a query to return Yes if the patient’s age is greater than 40 else return No.
select  iif(age>40,'Yes','No') from patient 

--Write a query to display the doctor’s duplicate name from the table.
select doctor_name from patient group by doctor_name having count(doctor_name)>1