create database thuchanh_bang ;
use thuchanh_bang;

create table contacts 
(contact_id int(11) not null auto_increment,
last_name varchar(30) not null,
first_name varchar(25),
birthday date,
constraint contacts_pk primary key(contact_id)
);

create table suppliers 
(suppliers_id int(11) not null auto_increment,
suppliers_name varchar(50) not null ,
account_rep varchar(30) not null default "TBD",
constraint suppliers_pk primary key(suppliers_id)
);

alter table contacts
 add last_name varchar(40) not null 
  after contact_id,
  add first_name varchar(35)  null
  after last_name;
  
  alter table contacts
  modify last_name varchar(50) null;
  
  ALTER TABLE contacts
  DROP COLUMN birthday;
  
  ALTER TABLE contacts
  RENAME TO people;
  
 

