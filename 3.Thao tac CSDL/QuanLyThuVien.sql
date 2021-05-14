create database Quan_ly_thu_vien ;
use Quan_ly_thu_vien;

create table Sach(
maSach int primary key,
tenSach varchar(50),
nhaXuatBan varchar(50),
tacGia varchar(50),
namXuatBan date,
soLanXuanBan int ,
gia int ,
anh varchar(50),
theLoai varchar(50)
);

create table SinhVien(
maSinhVien int(15) primary key,
tenSinhVien varchar(50),
ngaySinh date,
diaChi varchar(500),
email varchar(50),
soDienThoai int,
anh varchar(50)
);

create table TheLoaiSach(
maSach int primary key,
theLoai varchar(50),
foreign key(maSach) references Sach(maSach)
);

create table PhieuMuon(
maSach int ,
maSinhVien int(15),
noSach varchar(50),
quaHanMuon date,
trangThai varchar(50),	
primary key(maSach , maSinhVien),
foreign key(maSach) references Sach(maSach),
foreign key(maSinhVien) references SinhVien(maSinhVien)
);
