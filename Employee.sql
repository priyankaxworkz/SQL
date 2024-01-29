create database employee;
use employee;

create table employee_details(
employee_id int primary key,
employee_name varchar(50),
contact_number long,
employee_email varchar(100),
salary_package varchar(50));

drop table employee_details ;

insert into employee_details values(1,'akshata',6789564345,'akshata@gmail','3lpa');
insert into employee_details values(2,'neha',8765432345,'neha@gmail','4lpa');
insert into employee_details values(3,'ruchita',6785432312,'ruchita@gmail','3lpa');
insert into employee_details values(4,'megana',6789857634,'megana@gmail','3lpa');
insert into employee_details values(5,'nitin',7865432132,'nitin@gmail','3lpa');
insert into employee_details values(6,'vishu',8765432123,'vishu@gmail','3.5lpa');
insert into employee_details values(7,'nayana',6675432123,'nayana@gmail','3.5lpa');
insert into employee_details values(8,'tilak',9876543234,'tilak@gmail','4lpa');
insert into employee_details values(9,'rishith',8867554323,'rishith@gmail','3lpa');
insert into employee_details values(10,'nikitha',879203739,'nikitha@gmail','3.5lpa');

select * from employee_details;
select * from employee_details where employee_id=1;
select * from employee_details where employee_id=2;
select * from employee_details where employee_id=3;
select * from employee_details where employee_id=4;
select * from employee_details where employee_id=5;
select * from employee_details where employee_id=6;

select employee_id from employee_details;

update employee_details set employee_name = 'vanni' where employee_id=5; 
update employee_details SET contact_number=6754342334 where employee_id=9;
update employee_details SET salary_package='4lpa' where employee_id=8;
update employee_details SET employee_name ='brunda' where employee_id=10;
update employee_details SET  employee_name='daya' where employee_id=1;

delete from employee_details where employee_id=1;
delete from employee_details where employee_id=8;
delete from employee_details where employee_id=3;
delete from employee_details where employee_id=5;
delete from employee_details where employee_id=7;