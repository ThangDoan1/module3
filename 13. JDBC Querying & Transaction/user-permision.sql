create table Permision(
id int(11)  auto_increment primary key ,
name varchar(50)
);

create table User_Permision(

permision_id int(11),

user_id int(11)

);

insert  into Permision(name) values('add');

insert into Permision(name) values('edit');

insert  into Permision(name) values('delete');

insert  into Permision(name) values('view');
