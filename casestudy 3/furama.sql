create database furama ;
use furama ;

create table NhanVien(
IDNhanVien int primary key,
HoTen varchar(50),
IDViTri int,
IDTrinhDo int ,
IDBoPhan int ,
NgaySinh date,
SoCMND varchar(45),
Luong varchar(45),
SDT varchar(45),
Email varchar(45),
DiaChi varchar(45),
foreign key (IDViTri) references ViTri(IDViTri),
foreign key (IDTrinhDo) references TrinhDo(IDTrinhDo),
foreign key (IDBoPhan) references BoPhan(IDBoPhan)
);

create table ViTri(
IDViTri int primary key,
TenViTri varchar(45)
);

create table TrinhDo(
IDTrinhDo int primary key,
TrinhDo varchar(45)
);

create table BoPhan(
IDBoPhan int primary key,
TenBoPhan varchar(45)
);

create table KhachHang(
IDKhachHang int primary key,
IDLoaiKhach int,
HoTen varchar(45),
NgaySinh date,
SoCMND varchar(45),
SDT varchar(45),
Email varchar(45),
DiaChi varchar(45),
foreign key (IDLoaiKhach) references LoaiKhach(IDLoaiKhach)
);

create table LoaiKhach(
IDLoaiKhach int primary key,
TenLoaiKhach varchar(45)
);

create table HopDong(
IDHopDong int primary key ,
IDNhanVien int ,
IDKhachHang int ,
IDDichVu int ,
NgayLamHopDong date ,
NgayKetThuc date,
TienDatCoc int ,
TongTien int,
foreign key (IDNhanVien) references NhanVien(IDNhanVien),
foreign key (IDKhachHang) references KhachHang(IDKhachHang),
foreign key (IDDichVu) references DichVu(IDDichVu)
 );

create table HopDongChiTiet(
IDHopDongChiTiet int primary key,
IDHopDong int,
IDDichVuDiKem int,
SoLuong int,
foreign key (IDHopDong) references HopDong(IDHopDong),
foreign key (IDDichVuDiKem) references DichVuDiKem(IDDichVuDiKem)
);

create table DichVuDiKem(
IDDichVuDiKem int primary key,
TenDichVuDiKem varchar(45),
Gia int ,
DonVi int,
TrangThaiKhaDung varchar(45)
);

create table DichVu(
IDDichVu int primary key ,
TenDichVu varchar(45),
DienTich int,
SoTang int ,
SoNguoiToiDa varchar(45),
ChiPhiThue varchar(45),
IDKieuThue int,
IDLoaiDichVu int,
TrangThai varchar(45),
foreign key (IDKieuThue) references KieuThue(IDKieuThue),
foreign key (IDLoaiDichVu) references LoaiDichVu(IDLoaiDichVu)
);

create table KieuThue(
IDKieuThue int primary key,
TenKieuThue varchar(45),
Gia int);

create table LoaiDichVu(
IDLoaiDichVu int primary key,
TenLoaiDichVu varchar(45)
);