/*
Create a table institute which teaches 4 courses.
JAVA, Python, AI, SQL
Enroll 5 students in JAVA, 3 in Python, 2 in AI, and 4 is SQL.
The columns will be - 
1.coursename
2.studentname
3.fees
4.duration in MONTHS
5.project

Now apply proper sql to create the problem statement and apply group by clause to find the number of students in each course.
Also find total revenue earn per course
*/
create database if not exixts empdept;

use empdept; 

create table institute(
	coursename varchar(25),
	studentname varchar(35),
	fees int,
	durationinmonths int,
	project text(200)
	);
	
insert into institute VALUES	
('JAVA', 'Shreshta',3000,3,'spring boot backend'),
('JAVA', 'Srijita',3000,3,'angular'),
('JAVA', 'Nisha',3000,3,'spring boot backend'),
('JAVA', 'Amitava',3000,3,'java Swing'),

('Python', 'Yuvraj',2500,2,'streamlit UI'),
('Python', 'Rudrasish',2500,2,'flask UI'),
('Python', 'Saket',2500,2,'streamlit UI'),
('Python', 'Shreya',2500,2,'fast api'),
('Python', 'Prasam',2500,2,'fast api'),

('SQL', 'Sadia',5000,3,'employee management system'),
('SQL', 'Sania',5000,3,'customer management system'),
('SQL', 'Sourish',5000,3,'employee management system'),
('SQL', 'Tuhin',5000,3,'hospital management system');

select * from institute;

select * from institute limit 3;

select * from institute limit 3,4;

select * from institute;

select coursename,durationinmonths from institute;

select count(*) from institute;         

select count(*) from institute group by coursename;

select coursename, count(*) from institute group by coursename;

select coursename, count(fees) from institute group by coursename;

select coursename, sum(fees) from institute group by coursename;  

select coursename,avg(fees), sum(fees), max(fees), min(fees)  from institute group by coursename;

select coursename, avg(fees) from institute group by coursename;       

select coursename, avg(fees) from institute group by coursename having avg(fees)>2500;

select coursename, avg(fees) from institute group by coursename having avg(fees)>2500 order by avg(fees) desc;

select coursename, avg(fees) from institute group by coursename having avg(fees)>2500 order by avg(fees) desc limit 1;

select * from institute;

insert into institute values(null,'Sayan',null,null,null);
insert into institute values(null,'Sutanuka',null,null,null);
select * from institute;        

select coursename, avg(fees)  from institute group by coursename;      

select coursename, count(*) from institute group by coursename;       

select coursename, count(coursename) from institute group by coursename;

select * from institute;  

select studentname,fees from institute;

select studentname,fees*12 annualfees from institute;

select studentname,ifnull(fees,0)*12 annualfees from institute;

select * from institute where coursename=null;

select * from institute where coursename is null;

select * from institute where coursename is not null;

select * from institute where 1>2;

select * from institute where 1<2;

select * from institute where true;

select * from institute where false;

desc institute;

update institute set coursename='ML' where studentname='Sayan';
update institute set fees=7000, durationinmonths=5 where studentname='Sayan';
select * from institute;
update institute set project="EDA" where studentname='Sayan';         
select * from institute;   


update institute set coursename="ML",fees=7000,durationinmonths=5, project="AI Robotics" where studentname='Sutanuka';
select * from institute;
 
delete from institute where studentname="Amitava";
select * from institute; 