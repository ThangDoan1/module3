create database view_index_procedure;
use view_index_procedure ;

-- Buoc 2
create table Products (
ID int primary key ,
productCode varchar(50),
productName varchar(50),
productPrice int,
productAmount int,
productDescription varchar(50),
productStatus varchar (50)
);

-- Buoc 3
create unique index productCodes
on Products(productCode) ;

create index name_price
on Products (productName,productPrice);

explain select * from view_index_procedure.Products;

-- Buoc 4

create view new_Products
as
select productCode, productName, productPrice, productStatus
from Products ;

alter view new_Products
as
select productCode, productPrice
from Products;

drop view new_Products ;

-- Buoc 5
 delimiter $$
 create procedure all_product()
 begin 
 select * from Products;
 end $$
 delimiter ;
 
 call all_product();
 
  delimiter $$
 create procedure add_product()
 begin 
 insert into Products values(4,"C4","pencil",20,25,"normal","normal");
 end $$
 delimiter ;
 
 call all_product();
 
  delimiter $$
 create procedure update_product()
 begin 
 update Products set productName ="bike"
 where id=4;
 end $$
 delimiter ;
 
 call all_product();
 
  delimiter $$
 create procedure delete_product()
 begin 
 delete from Products 
 where id=4;
 end $$
 delimiter ;
 
 call all_product();