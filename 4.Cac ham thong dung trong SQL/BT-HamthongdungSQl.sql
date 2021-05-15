create database hamthongdung;
use hamthongdung;

create table sinhvien(
id int ,
ten varchar(50),
tuoi int,
khoahoc varchar(50),
sotien int );

insert into sinhvien(id, ten, tuoi , khoahoc ,sotien)
values (1,"Hoang",21,"cntt",400000),
(2,"Viet",19,"dtvt",320000),
(3,"Thanh",18,"ktdn",400000),
(4,"Nhan",19,"ck",450000),
(5,"Huong",20,"tcnh",500000),
(5,"Huong",20,"tcnh",200000);

-- Viết câu lệnh hiện thị tất cả các dòng có tên là Huong
select * from hamthongdung.sinhvien
where ten = "Huong";

-- Viết câu lệnh lấy ra tổng số tiền của Huong
select sum(sotien) 
from sinhvien
where ten = "Huong";

-- Viết câu lệnh lấy ra tên danh sách của tất cả học viên, không trùng lặp
select ten 
from sinhvien
union 
select ten from sinhvien;