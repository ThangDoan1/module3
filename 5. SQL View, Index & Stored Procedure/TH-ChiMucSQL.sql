SELECT * FROM classicmodels.customers;

select * from customers where customerNumber =175;

explain select * from customers where customerNumber = 175 ;

alter table customers add index idx_customerNumber(customerNumber);

explain select * from customers where customerNumber =175 ;

ALTER TABLE customers ADD INDEX idx_full_name(contactFirstName, contactLastName);

EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' or contactFirstName = 'King';