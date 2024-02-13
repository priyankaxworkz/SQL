create database product_details;

use product_details;

create table product_table(
product_id int primary key,
product_name varchar(250),
product_price int,
product_code varchar(100),
company_name varchar(250),
validity int,
product_disscount double,
revivews double,
manufacturing_date date,
expering_date date);

DROP TABLE product_table;
insert into product_table values(1,'PERFUME',250,'PE456','FOGG',6,0.20,4.3,'2023-12-31','2025-10-13'),
(3,'PONDS CREAM',100,'PO675','PONDS',7,0.10,4.5,'2022-05-23','2023-12-31'),
(4,'BASMATHI RICE',500,'BA4576','INDIAGATERICE',5,0.20,4.8,'2023-04-12','2024-12-28'),
(5,'PONDS POWDER',100,'PO897','PONDS',6,0.5,4.7,'2021-05-23','2023-06-11'),
(6,'HIMALAYA FACE WASH',70,'HM908','HIMALAYA',7,0.10,4.9,'2020-04-13','2022-05-28'),
(7,'PEARS',45,'PE678','PEARS',6,0.20,4.8,'2019-04-25','2023-11-21'),
(8,'IKEA',5000,'I78A','IKEA',7,0.30,4.8,'2022-05-21','2030-12-04'),
(9,'COCOCOLA',30,'COCO45','COCA-COLA',6,0.10,4.5,'2020-03-12','2021-02-15'),
(10,'MAGGI',20,'MA90E','NESTLE GOLBAL',6,0.10,4.6,'2021-03-12','2021-09-23'),
(11,'LG',5000,'L098G','LUCKY-GOLDSTAR',8,0.20,4.8,'2020-04-26','2023-08-23');

select * from product_table;

delete from product_table where product_id=10;

select * from product_table where product_name like 'c%';

select * from product_table where product_name like '%a';

select * from product_table where product_name like '___r%';

select min(product_price) from product_table; 

select max(product_price) from product_table;

select min(product_price) from product_table where product_price>
(select min(product_price) from product_table);

select max(product_price) from product_table where product_price <
(select max(product_price) from product_table);

select avg(product_price) from product_table;

select product_price from product_table where product_price >
(select avg(product_price) from product_table);

select product_price from product_table where product_price <
(select avg(product_price) from product_table);

select * from product_table where product_price between 70 and 1000;

select * from product_table where product_name='PONDS CREAM' or product_name='HIMALAYA';

select * from product_table where product_name='PONDS CREAM' or product_name='PEARS';

select * from product_table where company_name in('FOGG','PONDS');

create view products as select product_name,product_code from product_table 
where product_price=5000;

select * from products;

rename table products to product_info;

select * from product_info;

alter view products_info as select count(*) as product_code,company_name 
from product_table 
group by company_name;

select * from products_info;

select product_code from product_table where exists
(select product_name from product_table
 where product_code='PO675');
 
 select product_name from product_table where not exists
 (select product_code from product_table
 where product_name='PONDS CREAM');
 
 
 select count(product_id),validity from product_table
 group by validity;
 
 select * from product_table where product_name='PONDS CREAM';
 
 select product_name from product_table;
 
 select validity from product_table
 group by validity;
 