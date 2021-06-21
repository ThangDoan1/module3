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

select khachhang.IDKhachHang, khachhang.HoTen, loaikhach.TenLoaiKhach, hopdong.IDHopDong, dichvu.TenDichVu, NgayLamHopDong, NgayKetThuc,sum(dichvu.ChiPhiThue +hopdongchitiet.SoLuong*dichvudikem.gia) as Tongtien
from khachhang
left join loaikhach on khachhang.IDLoaiKhach = loaikhach.IDLoaiKhach
left join hopdong on khachhang.IDKhachHang= hopdong.IDKhachHang
left join dichvu on hopdong.IDDichVu=dichvu.IDDichVu
left join hopdongchitiet on hopdong.IDHopDong = hopdongchitiet.IDHopDong
left join dichvudikem on hopdongchitiet.IDDichVuDiKem = dichvudikem.IDDichVuDiKem
group by hopdong.IDHopDong ;

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
where exists (select hopdong.IDHopDong from hopdong where year(hopdong.ngaylamhopdong)="2018" and hopdong.IDDichVu=dichvu.IDDichVu)
and not exists(select hopdong.IDHopDong from hopdong where year(hopdong.ngaylamhopdong)="2019" and hopdong.IDDichVu=dichvu.IDDichVu);

-- Cau 8
select distinct hoten
from khachhang;

select hoten
from khachhang
union 
select hoten
from khachhang;

select hoten
from khachhang
group by khachhang.HoTen;

-- Cau 9
select temp.month ,count(month(hopdong.ngaylamhopdong)) as so_KH_dang_ky ,sum(hopdong.Tongtien) as Tongtien from 
(select  1 as month
union select 2 as month
union select 3 as month
union select 4 as month
union select 5 as month
union select 6 as month
union select 7 as month
union select 8 as month
union select 9 as month
union select 10 as month
union select 11 as month
union select 12 as month) as temp
left join  hopdong on month(hopdong.ngaylamhopdong)=temp.month
left join khachhang on khachhang.idkhachhang =hopdong.idkhachhang
where year (hopdong.ngaylamhopdong) ="2019" or year (hopdong.ngaylamhopdong) is null
group by temp.month ;

-- Cau 10
select hopdong.IDHopDong, NgayLamHopDong, NgayKetthuc, TienDatCoc ,count(IDHopDongChiTiet) as SoLuongDichVuDiKem
from  hopdong 
inner join hopdongchitiet on hopdongchitiet.IDHopDong = hopdong.IDHopDong
group by NgayLamHopDong;

-- Cau 11

select distinct dichvudikem.TenDichVuDiKem ,dichvudikem.gia ,dichvudikem.DonVi from hopdong 
inner join hopdongchitiet on hopdong.IDHopDong = hopdongchitiet.IDHopDong
inner join dichvudikem on hopdongchitiet.IDDichVuDiKem =dichvudikem.IDDichVuDiKem
inner join khachhang on khachhang.IDKhachHang = hopdong.IDKhachHang
inner join loaikhach on khachhang.IDLoaiKhach = loaikhach.IDLoaiKhach
where loaikhach.TenLoaiKhach ="diamond" and khachhang.DiaChi in("Vinh","quang ngai");

-- Cau 12
select hopdong.IDhopdong , hopdong.tongtien , hopdong.tiendatcoc, nhanvien.HoTen ,khachhang.hoten ,khachhang.SDT , dichvu.tendichvu,
count(hopdongchitiet.IDDichVuDiKem) as so_lan_su_dung from hopdong
inner join nhanvien on hopdong.IDNhanVien = nhanvien.IDNhanVien
inner join khachhang on khachhang.IDKhachHang = hopdong.IDKhachHang
inner join dichvu on dichvu.IDDichVu = hopdong.IDDichVu
inner join hopdongchitiet on hopdong.IDHopDong= hopdongchitiet.IDHopDong
where not exists(select hopdong.IDHopDong where hopdong.NgayLamHopDong between "2019-01-01" and "2019-06-31")
and exists(select hopdong.IDHopDong where hopdong.NgayLamHopDong between "2019-09-01" and "2019-12-31") ;

-- Cau 13

create temporary table temp
select dichvudikem.TenDichVuDiKem as ten_dv_di_kem, count(hopdongchitiet.iddichvudikem) as so_lan_su_dung from hopdongchitiet
inner join dichvudikem on dichvudikem.IDDichVuDiKem =hopdongchitiet.IDDichVuDiKem
group by dichvudikem.TenDichVuDiKem;
select *from temp;

create temporary table temp1
select max(temp.so_lan_su_dung) as max_so_lan_su_dung from temp;
select *from temp1;

select temp.ten_dv_di_kem, temp.so_lan_su_dung from temp inner join temp1 on temp.so_lan_su_dung= temp1.max_so_lan_su_dung;

-- Yeu cau 14

select hopdong.idhopdong ,loaidichvu.TenLoaiDichVu, dichvudikem.tendichvudikem, count(hopdongchitiet.iddichvudikem) as so_lan_su_dung
from hopdong
inner join dichvu on dichvu.IDDichVu = hopdong.IDDichVu
inner join loaidichvu on dichvu.IDLoaiDichVu = loaidichvu.IDLoaiDichVu
inner join hopdongchitiet on hopdong.IDHopDong =hopdongchitiet.IDHopDong
inner join dichvudikem on dichvudikem.IDDichVuDiKem =hopdongchitiet.IDDichVuDiKem
group by dichvudikem.TenDichVuDiKem 
having 	so_lan_su_dung =1 ;

-- Yeu cau 15
select nhanvien.idnhanvien, nhanvien.hoten, nhanvien.SDT, nhanvien.DiaChi,trinhdo.TrinhDo,bophan.TenBoPhan, count(hopdong.IDNhanVien) as so_lan_tao_hop_dong
from nhanvien 
inner join trinhdo on trinhdo.IDTrinhDo = nhanvien.IDTrinhDo
inner join bophan on  bophan.IDBoPhan = nhanvien.IDBoPhan
inner join hopdong on hopdong.IDNhanVien = nhanvien.IDNhanVien
where hopdong.NgayLamHopDong between "2018-01-01" and "2019-12-31"
group by nhanvien.HoTen
having so_lan_tao_hop_dong < 4;

-- Yeu cau 16
delete from nhanvien
where not exists(select nhanvien.IDNhanVien from hopdong where hopdong.NgayLamHopDong between "2017-01-01" and "2019-12-31"
and hopdong.IDNhanVien = nhanvien.IDNhanVien);

-- Yeu cau 17
update khachhang,(select hopdong.IDKhachHang as id ,sum(hopdong.tongtien) as tong_tien from hopdong
where year (hopdong.ngaylamhopdong)=2019
group by hopdong.IDKhachHang
having tong_tien >10000000) as temp set khachhang.IDLoaiKhach=(select loaikhach.IDLoaiKhach from loaikhach where loaikhach.TenLoaiKhach="diamond")
where khachhang.idloaikhach = (select loaikhach.idloaikhach from loaikhach where loaikhach.TenLoaiKhach ="Platinum")
and temp.id =khachhang.IDKhachHang ;

-- Yeu cau 18
	delete khachhang ,hopdong, hopdongchitiet from khachhang 
    inner join hopdong on  hopdong.IDKhachHang =khachhang.IDKhachHang 
    inner join hopdongchitiet on hopdong.IDHopDong = hopdongchitiet.IDHopDong
    where not exists(select hopdong.IDHopDong where year (hopdong.ngaylamhopdong)>"2016" and khachhang.IDKhachHang= hopdong.IDKhachHang);
    
-- Yeu cau 19
update dichvudikem inner join (select  dichvudikem.TenDichVuDiKem as ten_dv_di_kem
from hopdongchitiet inner join dichvudikem on dichvudikem.IDDichVuDiKem = hopdongchitiet.IDDichVuDiKem
group by dichvudikem.IDDichVuDiKem
having count(hopdongchitiet.IDDichVuDiKem)>3) as temp set dichvudikem.Gia= dichvudikem.gia*2 
where dichvudikem.tendichvudikem= temp.ten_dv_di_kem ;

-- Yeu cau 20
select nhanvien.IDNhanVien as ID , nhanvien.hoten, nhanvien.Email, nhanvien.SDT , nhanvien.NgaySinh ,nhanvien.DiaChi, "nhanvien" as FromTable
from nhanvien
union all
select khachhang.IDkhachhang as ID, khachhang.HoTen,khachhang.Email,khachhang.SDT,khachhang.DiaChi ,khachhang.NgaySinh, "khachhang" as FromTable
from khachhang ;mon_hoc