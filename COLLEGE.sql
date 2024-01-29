create database college;

use college;

create table college_details(
college_id int primary key,
college_name varchar(100),
college_email varchar(100),
contactnumber long,
location varchar(100),
total_lectures int );

drop table college_details;

insert into college_details values(1,'mgm','mgm1@gmail.com',6545342343,'udupi',100),
(2,'ppc','ppc@gmail.com',8765456574,'udupi',80),(3,'upmc','up65@gmail.com',6787656545,'udupi',70),
(4,'womens','womens56@gmail.com',8976543456,'ajarkadu',90),(5,'sms','sms@gmail.com',9876543210,'brhmavar',60),
(6,'rns','rns67@gmail.com',7865432312,'murdeswara',80),(7,'siddartha','siddartha@gmail.com',8976543456,'bhtkal',50),
(8,'bvips','bvips@gmail.com',8976543456,'murdeswra',50),
(9,'holy','holy@gmail.com',6789564534,'honnavara',40),
(10,'sudindra','sudhindra@gmail.com',6785435621,'bhtkal',50);

select * from college_details;

select * from college_details where college_name='mgm';

update college_details set total_lectures=40 where college_id=10;
update college_details set location='shirali' where college_id=7;
update college_details set contactnumber=6756454323 where college_id=4;
update  college_details set college_name='vidyalakshmi' where college_id=3;
update  college_details set college_email='vidyalakshmi@gmail.com' where college_id=3;

delete from college_details where college_id=5;
delete from college_details where college_id=2;
delete from college_details where college_id=8;
delete from college_details where college_id=1;
delete from college_details where college_id=9;