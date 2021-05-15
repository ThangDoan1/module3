create database cuahang_oto;
use cuahang_oto;

create table Customers(
maKhachHang int not null primary key,
tenKhachHang varchar(50) not null,
hoKhachHang varchar(50) not null,
tenctyKH varchar(50) not null,
soDienThoai varchar(50) not null,
diaChi1 varchar(50) not null,
diaChi2 varchar(50),
thanhPho varchar(50) not null,
bang_vung varchar(50) not null,
maVung varchar(15) not null,
quocGia varchar(50) not null,
hanTinDung int,
maNhanVien int not null
);

create table Products(
maSanPham varchar(15) not null primary key ,
tenSanPham varchar(70) not null,
tiLeSanPham varchar(10) not null,
nhaCungCap varchar(50) not null,
soLuongTrongKho int not null ,
giaNhap double, 
giaBanLe int,
moTaSanPham text,
maLoaiSanPham varchar(50) not null,
foreign key (maLoaiSanPham) references ProductsLine(maLoaiSanPham)
 );

create table ProductsLine (
maLoaiSanPham varchar(50) not null primary key,
moTa text,
anh text
);

create table Orders(
maHoaDon int primary key not null,
ngayMua date not null ,
ngayYeuCauGiaoHang date not null,
ngayGiaoThucTe date ,
ghiChu text,
trangThai varchar(15) not null,
soLuongDatHang int not null,
donGia double not null,
maKhachHang int not null,
foreign key(maKhachHang) references Customers(maKhachHang)
);

create table Payments(
maKhachHang int not null,
maKiemTra varchar(50) not null,
ngayThanhToan date not null,
soTien int not null,
foreign key(maKhachHang) references Customers(maKhachHang)
);

create table Employees(
maNhanVien int primary key not null,
tenNhanVien varchar(50)not null,
hoNhanVien varchar(50)not null,
email varchar(100) not null,
tenCongViec varchar(50) not null,
baoCao varchar(50),
maVanPhong varchar(10)  not null	,
foreign key (baoCao) references Employees(baoCao),
foreign key (maVanPhong) references Offices(maVanPhong)
);

create table Offices(
maVanPhong varchar(10) primary key not null	,
thanhPho varchar(50) not null,
diaChi1  varchar(50) not null,
diaChi2  varchar(50),
dienThoai  varchar(50) not null,
bang_vung varchar(50),
quocGia varchar(50) not null,
maVung varchar(15) not null
);

create table OrderDetails(
maHoaDon int not null,
maSanPham varchar(15) not null,
primary key(maHoaDon,maSanPham),
foreign key (maHoaDon) references Orders(maHoaDon),
foreign key (maSanPham) references Products(maSanPham)
);

alter table Customers
add foreign key (maNhanVien) references Employees(maNhanVien);




