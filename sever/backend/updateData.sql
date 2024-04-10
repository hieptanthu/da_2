insert DanhMuc(TenDanhMuc,DanhMucConId) values 
('may anh',0),
('phu kien',0),
('may Quay',0),
('flaycam',0),
('thiet bi gi hinh',0),
('len',0)


--may anh
insert DanhMuc(TenDanhMuc,DanhMucConId) values 
('may anh co',1),
('may anh ky thuat so',1),
('may may anh gia co',1),
('may anh du lich',1),
('may anh studio',1)




--may quay
insert DanhMuc(TenDanhMuc,DanhMucConId) values 
('may quay du lich',3),
('may quay fim den Trang',3),
('may may the thao',3),
('may quay mini',3),
('may quay studio',3)


--khac
insert DanhMuc(TenDanhMuc,DanhMucConId) values 
('tui du lic',2),
('chan may anh',2),
('tro sang',2),
('tui may anh',2)


insert ThuongHieu(TenThuongHieu)
 values 
('sony'),
('canon'),
('apple')

insert SanPham(TenSanPham,MotaSp,anh,DanhSachAnh,BaoHanh,TomTatSanPham,NgayTao,SoLuong,slBan,[View],IdDanhMuc,IdThuongHieu,GiaSanPham,LoaiSanPham) values
('may anh sony A344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,10000000,1),
('may anh sony B344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,20000000,1),
('may anh sony C344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,30000000,1),
('may anh sony E344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,40000000,1),
('may anh sony D344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,50000000,1),
('may anh sony GF344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,60000000,0),
('may anh sony HY344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,7000000,0),
('may anh sony J344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,70000000,0),
('may anh sony K344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,80000000,0),
('may anh sony D344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,80000000,0),
('may anh sony E344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,80000000,0),
('may anh sony E344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,50000000,0),
('may anh sony EE344','san pham tu nha sony 2002',N'https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,1,20000000,0)




insert SanPham(TenSanPham,MotaSp,anh,DanhSachAnh,BaoHanh,TomTatSanPham,NgayTao,SoLuong,slBan,[View],IdDanhMuc,IdThuongHieu,GiaSanPham,LoaiSanPham) values
('may anh canon A344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,10000000,0),
('may anh canon B344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,30000000,0),
('may anh canon C344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,40000000,0),
('may anh canon E344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,50000000,0),
('may anh canon D344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,160000000,0),
('may anh canon GF344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,70000000,0),
('may anh canon HY344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,80000000,0),
('may anh canon J344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,80000000,0),
('may anh canon K344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,40000000,0),
('may anh canon D344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,30000000,1),
('may anh canon E344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,40000000,1),
('may anh canon E344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,50000000,1),
('may anh canon EE344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,6,2,60000000,1)





insert SanPham(TenSanPham,MotaSp,anh,DanhSachAnh,BaoHanh,TomTatSanPham,NgayTao,SoLuong,slBan,[View],IdDanhMuc,IdThuongHieu,GiaSanPham,LoaiSanPham) values
('may QUAY canon A344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,10000000,0),
('may QUAY canon B344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,30000000,0),
('may QUAY canon C344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,40000000,0),
('may QUAY canon E344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,50000000,0),
('may QUAY canon D344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,13,2,160000000,0),
('may QUAY canon GF344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,70000000,0),
('may QUAY canon HY344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,80000000,0),
('may QUAY canon J344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,80000000,0),
('may QUAY canon K344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,40000000,0),
('may QUAY canon D344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,14,2,30000000,1),
('may QUAY canon E344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,40000000,1),
('may QUAY canon E344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,50000000,1),
('may QUAY canon EE344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,60000000,1)






insert SanPham(TenSanPham,MotaSp,anh,DanhSachAnh,BaoHanh,TomTatSanPham,NgayTao,SoLuong,slBan,[View],IdDanhMuc,IdThuongHieu,GiaSanPham,LoaiSanPham) values
('may QUAY canon A344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,10000000,0),
('may QUAY canon B344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,30000000,0),
('may QUAY canon C344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,40000000,0),
('may QUAY canon E344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,50000000,0),
('may QUAY canon D344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,13,2,160000000,0),
('may QUAY canon GF344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,70000000,0),
('may QUAY canon HY344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,80000000,0),
('may QUAY canon J344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,80000000,0),
('may QUAY canon K344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,40000000,0),
('may QUAY canon D344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,14,2,30000000,1),
('may QUAY canon E344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,40000000,1),
('may QUAY canon E344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,50000000,1),
('may QUAY canon EE344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,60000000,1)






insert SanPham(TenSanPham,MotaSp,anh,DanhSachAnh,BaoHanh,TomTatSanPham,NgayTao,SoLuong,slBan,[View],IdDanhMuc,IdThuongHieu,GiaSanPham,LoaiSanPham) values
('may QUAY canon A344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,10000000,0),
('may QUAY canon B344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,30000000,0),
('may QUAY canon C344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,40000000,0),
('may QUAY canon E344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,50000000,0),
('may QUAY canon D344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,13,2,160000000,0),
('may QUAY canon GF344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,70000000,0),
('may QUAY canon HY344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,80000000,0),
('may QUAY canon J344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,80000000,0),
('may QUAY canon K344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,40000000,0),
('may QUAY canon D344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,14,2,30000000,1),
('may QUAY canon E344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,2,40000000,1),
('may QUAY canon E344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,50000000,1),
('may QUAY canon EE344','san pham tu nha canon 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,2,60000000,1)



insert SanPham(TenSanPham,MotaSp,anh,DanhSachAnh,BaoHanh,TomTatSanPham,NgayTao,SoLuong,slBan,[View],IdDanhMuc,IdThuongHieu,GiaSanPham,LoaiSanPham) values
('may QUAY SONY A344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,1,10000000,0),
('may QUAY SONY B344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,1,30000000,0),
('may QUAY SONY C344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,1,40000000,0),
('may QUAY SONY E344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,1,50000000,0),
('may QUAY SONY D344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,13,1,160000000,0),
('may QUAY SONY GF344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,1,70000000,0),
('may QUAY SONY HY344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,1,80000000,0),
('may QUAY SONY J344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,1,80000000,0),
('may QUAY SONY K344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,1,40000000,0),
('may QUAY SONY D344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,14,1,30000000,1),
('may QUAY SONY E344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,11,1,40000000,1),
('may QUAY SONY E344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,1,50000000,1),
('may QUAY SONY EE344','san pham tu nha SONY 2002','https://mayanhnhatlinh.com/wp-content/uploads/2018/09/may-anh-dslr-la-gi-va-nguyen-ly-hoat-dong-cua-may-4.jpg',null,'12thang','day la san pham depj v','2020-2-2',4,10,100,12,1,60000000,1)