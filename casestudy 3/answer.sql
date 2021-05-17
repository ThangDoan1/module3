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



