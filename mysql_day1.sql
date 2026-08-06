create database if not exists thursday;

use thursday;

create table employee(id int, ename varchar(20), address text(50), location enum('kol','chennai','delhi'));
desc employee;

insert into employee values(1,'Shreshta','baranagar','kol');
insert into employee values(2,'Shreyasree','Sinthi','kol');
insert into employee values(3,'Shreya','uttar pradesh','chennai');
insert into employee values(4,'Sruti','tamil nadu','delhi');
insert into employee values(5,'Shirsha','sinthi','kol');

select * from employee;

update employee set address = 'pune' where id=1;
select * from employee;

delete from employee where location='chennai';
select * from employee;
