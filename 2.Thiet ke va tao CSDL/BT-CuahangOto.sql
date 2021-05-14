create database cuahang_oto;
use cuahang_oto;

create table Customers(
maKhachHang int primary key,
tenKhachHang varchar(50),
soDienThoai int ,
diaChi varchar(50)
);

create table Products(
maSanPham int primary key,
tenSanPham varchar(50),
nhaCungCap varchar(50),
soLuong int ,
giaNhap int, 
giaBan int,
loaiSanPham varchar(50)
 );

create table ProductsLine (
maLoaiSanPham int primary key,
moTa varchar(50)
);

create table Orders(
maDonHang int primary key,
ngayMua date,
ngayYeuCauGiaoHang date,
ngayGiaoThucTe date ,
soLuongDatHang int ,
donGia int );

create table Payments(
maThanhToan int primary key,
ngayThanhToan date,
soTien int );

create table Employees(
maNhanVien int primary key,
tenNhanVien varchar(50),
email varchar(50),
tenCongViec varchar(50)
);

create table Offices(
maVanPhong int primary key,
diaChi varchar(50),
dienThoai int,
quocGia varchar(50)
);


