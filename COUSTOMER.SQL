create database customer;

use customer;

create table customer_details(
customer_id int primary key,
customer_name varchar(50),
postalcode long,
country_name varchar(100),
city varchar(50));

drop table customer_details;
insert into customer_details values(1,'navya',12209,'germany','frankfrut');
insert into customer_details values(2,'megana',05021,'mexico','mexicodf');
insert into customer_details values(3,'rajani',567432,'uk','london');
insert into customer_details values(4,'anada',581320,'india','bhatkal');
insert into customer_details values(5,'reshma',574352,'india','bidar');
insert into customer_details values(6,'lulea',95822,'swedan','lulea');
insert into customer_details values(7,'nitika',581320,'india','bhatkal');
insert into customer_details values(8,'sherlin',500432,'india','udupi');
insert into customer_details values(9,'charulatha',581320,'india','bhatkal');
insert into customer_details values(10,'pratana',581301,'india','kundapura');

select * from customer_details;

select * from customer_details where customer_id=1;
select * from customer_details where customer_id=2;
select * from customer_details where customer_id=3;
select * from customer_details where customer_id=4;
select * from customer_details where customer_id=5;
select * from customer_details where customer_id=6;
select * from customer_details where customer_id=7;
select * from customer_details where customer_id=8;
select * from customer_details where customer_id=9;
select * from customer_details where customer_id=10;

update customer_details set customer_name='neha', postalcode=566777 where customer_id=1 ;
update customer_details set postalcode=581321 where customer_id=7;
update customer_details set customer_name='nayana' where customer_id=10;
update customer_details set  country_name='india' where customer_id=6;
update customer_details set city='udupi' where customer_id=10;
update customer_details set customer_name='ramya' where customer_id=4;

delete from customer_details  where customer_id=10 ;
delete from customer_details where customer_id=6;
delete from customer_details where customer_id=2;
delete from customer_details where customer_id=3;
delete from customer_details where customer_id=5;
