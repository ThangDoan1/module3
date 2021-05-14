create database congtyABC;
use congtyABC;

create table congtrinh(
maCT int primary key,
tenCT varchar(50),
diadiem varchar(50),
ngaycapGP varchar(50),
ngayKC date,
ngayHT date,
maNV_id int,
 foreign key(maNV_id) references nhanvien(maNV)
 );

create table nhanvien(
maNV int primary key,
hoten varchar(50),
phai varchar(50),
ngaysinh date,
diachi varchar(50),
songaycong int
);

create table phongban(
maPB int primary key,
tenPB varchar(50),
maNV_id int,
 foreign key(maNV_id) references nhanvien(maNV)
);

create table baohiem(
maBH int primary key,
thoihanBH date,
ngaycapBH date,
maNV_id int,
 foreign key(maNV_id) references nhanvien(maNV)
);
