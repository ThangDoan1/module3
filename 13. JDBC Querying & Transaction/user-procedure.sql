DELIMITER $$
create procedure get_user_by_id (in user_id int)
begin
select users.name, users.email,users.country
from users
where users.id= user_id ;
end $$
DELIMITER ;

DELIMITER $$
CREATE PROCEDURE insert_user(
in user_name varchar(50),
in user_mail varchar(50),
in user_country varchar(50)
)
begin 
insert into users(name, email, country) values(user_name, user_mail , user_country);
end $$
DELIMITER ;

DELIMITER $$
create procedure list_user()
begin
select users.id,  users.name , users.email,users.country 
from users ;
end; $$
DELIMITER ;

call list_user();

DELIMITER $$
create procedure edit_User(
in user_id int,
out user_name varchar(50),
out user_email varchar(50),
out user_country varchar(50) )
begin
 update users set users.name= user_name, users.email= user_email, users.country= user_country  where users.id= user_id   ;
end ; $$
DELIMITER ;







