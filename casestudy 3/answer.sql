SELECT * FROM furama.nhanvien;

-- Cau 2
select * from nhanvien
where hoten like "h%" or hoten like "t%" or hoten like "k%"
having length(hoten) < 15;

-- Cau 3
select * from nhanvien 
where  (timestampdiff(year, ngaysinh, now()) > 18  
and timestampdiff(year, ngaysinh, now()) < 50 ) and diachi ="da nang" or diachi ="quang tri" ;

-- Cau 4
select khachhang.HoTen ,count(hopdong.idhopdong) as so_lan_dat_phong 
from khachhang 
inner join hopdong on khachhang.IDKhachHang = hopdong.IDHopDong
inner join loaikhach on khachhang.IDLoaiKhach = loaikhach.IDLoaiKhach 
where loaikhach.TenLoaiKhach = "Diamond"
group by khachhang.IDKhachHang order by so_lan_dat_phong;

-- Cau 5
create view khachhang_loaikhach
as	
select IDKhachHang, HoTen, TenLoaiKhach ,DiaChi
from khachhang 
inner join loaikhach on khachhang.IDLoaiKhach = loaikhach.IDLoaiKhach;

create view hopdongchitiet_dichvudikem
as
select IDHopDong as ID, soluong , gia 
from dichvudikem 
inner join hopdongchitiet on hopdongchitiet.IDDichVuDiKem = dichvudikem.IDDichVuDiKem;

select khachhang_loaikhach.IDKhachHang, HoTen, TenLoaiKhach, IDHopDong, TenDichVu, NgayLamHopDong, NgayKetThuc,soluong ,gia,Tongtien
from hopdong 
inner join khachhang_loaikhach on khachhang_loaikhach.IDKhachHang = hopdong.IDKhachHang
inner join dichvu on dichvu.IDDichVu = hopdong.IDDichVu
inner join hopdongchitiet_dichvudikem on hopdongchitiet_dichvudikem.ID =hopdong.IDHopDong;

-- Cau 6
create view dichvu_loaidichvu
as
select IDDichVu, TenDichVu, DienTich, ChiPhiThue, TenLoaiDichVu
from Dichvu 
inner join loaidichvu on loaidichvu.IDLoaiDichVu = dichvu.IDLoaiDichVu ;

select *from dichvu_loaidichvu
where not exists (select iddichvu from hopdong where dichvu_loaidichvu.IDDichVu = hopdong.IDDichVu and month(ngaylamhopdong) ="1,2,3" and year(ngaylamhopdong)= "2019");

-- Cau 7
select IDDichVu, TenDichVu, DienTich, SoNguoiToiDa, ChiPhiThue, TenLoaiDichVu 
from dichvu
inner join loaidichvu on loaidichvu.IDLoaiDichVu = dichvu.IDLoaiDichVu
where not exists (select NgayLamHopDong from hopdong where  year(ngaylamhopdong)=2019); -- and year(ngaylamhopdong) != 2019);

-- Cau 8
select distinct hoten
from khachhang;

select hoten
from khachhang
union 
select hoten
from khachhang;

-- Cau 9


-- Cau 10
select hopdong.IDHopDong, NgayLamHopDong, NgayKetthuc, TienDatCoc ,count(IDHopDongChiTiet) as SoLuongDichVuDiKem
from  hopdong 
inner join hopdongchitiet on hopdongchitiet.IDHopDong = hopdong.IDHopDong
group by NgayLamHopDong;

-- Cau 11

select * from dichvudikem ;

-- Cau 12

-- Cau 13
select * from dichvudikem
where 