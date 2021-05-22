CREATE DATABASE CSDL_KARAOKE
GO
Use CSDL_KARAOKE
GO

--XÓA TABLE

--Tạo TABLE Loại Phòng
CREATE TABLE LoaiPhong(
	ID int primary key IDENTITY(1,1) not null, -- tăng tự động
	TenLoaiPhong nvarchar(50) not null,
	DonGia int,
	isDeleted tinyint DEFAULT ((0)),
	NgayTao datetime DEFAULT GETDATE(),--ghi chú DEFAULT GETDATE()
	NguoiTao varchar(30) DEFAULT 'admin',--Nhớ đây
	NgayCapNhat datetime DEFAULT GETDATE(),--Ghi chú DEFAULT GETDATE()
	NguoiCapNhat varchar(30) DEFAULT 'admin',
)
--Thêm Dữ Liệu Loại Phòng

INSERT INTO LoaiPhong 
	(TenLoaiPhong,DonGia,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Phòng Thường' ,'150000' ,'0' ,GETDATE(),'admin',NULL,NULL);

INSERT INTO LoaiPhong 
	(TenLoaiPhong,DonGia,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Phòng V.I.P' ,'200000' ,'0' ,GETDATE(),'admin',NULL,NULL);

INSERT INTO LoaiPhong 
	(TenLoaiPhong,DonGia,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Phòng Đặc Biệt' ,'300000' ,'1' ,GETDATE(),'admin',NULL,NULL);

--Tạo TABLE PHÒNG

CREATE TABLE Phong(
ID int primary key IDENTITY(1,1) not null,-- tăng tự động
TenPhong nvarchar(50) not null,
TrangThai tinyint DEFAULT ((1)),
IDLoaiPhong int,
SucChua int,
isDeleted tinyint DEFAULT ((0)),
NgayTao datetime DEFAULT GETDATE(),
NguoiTao varchar(30) DEFAULT 'admin',
NgayCapNhat datetime DEFAULT GETDATE(),
NguoiCapNhat varchar(30) DEFAULT 'admin',
CONSTRAINT FK_Phong_LoaiPhong FOREIGN KEY (IDLoaiPhong) REFERENCES LoaiPhong(ID),
)

--Thêm Dữ Liệu Phòng
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 01' ,NULL,'1' ,'4','0',GETDATE(),'admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 02' ,NULL,'1' ,'4','0',GETDATE(),'admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 03' ,NULL,'1' ,'4','0',GETDATE(),'admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 04' ,NULL,'1' ,'6','0',GETDATE(),'admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 05' ,NULL,'1' ,'6','0',GETDATE(),'admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 06' ,NULL,'1' ,'6','0',GETDATE(),'admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 01' ,NULL,'2' ,'4','0',GETDATE(),'admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 02' ,NULL,'2' ,'4','0',GETDATE(),'admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 03' ,NULL,'2' ,'4','0',GETDATE(),'admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 04' ,NULL,'2' ,'6','0',GETDATE(),'admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 05' ,NULL,'2' ,'6','0',GETDATE(),'admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 06' ,NULL,'2' ,'6','0',GETDATE(),'admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 01' ,NULL,'3' ,'10','0',GETDATE(),'admin',NULL,NULL);

--Tạo TABLE HoaDonBanHang
CREATE TABLE HoaDonBanHang(
	IDHoaDon bigint primary key IDENTITY(1,1) not null,
	IDPhong int,
	ThoiGianBDau datetime,
	ThoiGianKThuc datetime,
	DonGiaPhong int,
	NguoiBan varchar(30),
	NgayTao datetime DEFAULT GETDATE(),
	NguoiTao varchar(30),
	NgayCapNhat datetime DEFAULT GETDATE(),
	NguoiCapNhat varchar(50),
	CONSTRAINT FK_HoaDonBanHang_Phong FOREIGN KEY (IDPhong) REFERENCES Phong(ID),
)

CREATE TABLE DonViTinh(
ID int primary key IDENTITY(1,1) not null,
TenDVT nvarchar(20),
isDeleted tinyint DEFAULT ((0)),
NgayTao datetime DEFAULT GETDATE(),
NguoiTao varchar(30) DEFAULT 'admin',
NgayCapNhat datetime DEFAULT GETDATE(),
NguoiCapNhat varchar(30) DEFAULT 'admin'
)
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Thùng' ,'0' ,GETDATE(),'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Kết' ,'0' ,GETDATE(),'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Chai' ,'0' ,GETDATE(),'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	('Lon' ,'0' ,GETDATE(),'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Gói' ,'0' ,GETDATE(),'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Dĩa' ,'0' ,GETDATE(),'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Chiếc' ,'0' ,GETDATE(),'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Li' ,'0' ,GETDATE(),'admin',NULL,NULL);
		INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Em' ,'0' ,GETDATE(),'admin',NULL,NULL);
CREATE TABLE MatHang(
ID int primary key IDENTITY(1,1) not null,
TenMatHang nvarchar(50) not null,
isDichVu tinyint DEFAULT ((0)), --kt 0
IDDVT int,
DonGiaBan int not null,
IdCha int,
Tile int,
isDeleted tinyint DEFAULT ((0)),
NguoiTao varchar(30) DEFAULT 'admin',
NgayTao datetime DEFAULT GETDATE(),
NguoiCapNhat varchar(50) DEFAULT 'admin',
NgayCapNhat datetime DEFAULT GETDATE(),
CONSTRAINT FK_MatHang_DonViTinh FOREIGN KEY (ID) REFERENCES DonViTinh(ID),
)

INSERT INTO MatHang
(TenMatHang,isDichVu,IDDVT,DonGiaBan) 
VALUES 
(N'Đào mi nhon','1','9','70000');
INSERT INTO MatHang
(TenMatHang,isDichVu,IDDVT,DonGiaBan) 
VALUES 
(N'Nhân viên rót rượu','1','9','70000');
CREATE TABLE ChiTietHoaDonBan(
	IDHoaDon bigint not null,
	IDMatHang int not null,
	SL int,
	DonGia int,
	PRIMARY KEY (IDHoaDon, IDMatHang),
	CONSTRAINT FK_ChiTietHoaDonBan_HoaDonBanHang FOREIGN KEY (IDHoaDon) REFERENCES HoaDonBanHang(IDHoaDon),
	CONSTRAINT FK_ChiTietHoaDonBan_MatHang FOREIGN KEY (IDMatHang) REFERENCES MatHang(ID),
) 

CREATE TABLE NhaCungCap(
	ID int primary key IDENTITY(1,1) not null, --bigint1 2 / 1 int
	TenNCC nvarchar(150) not null,
	DienThoai varchar(50),
	DiaChi nvarchar(150),
	Email varchar(150),
	isDeleted tinyint DEFAULT ((0)),
	NgayTao datetime DEFAULT GETDATE(),
	NguoiTao varchar(30) DEFAULT 'admin',
	NgayCapNhat datetime DEFAULT GETDATE(),
	NguoiCapNhat varchar(30) DEFAULT 'admin'
)
INSERT INTO NhaCungCap 
(TenNCC,DienThoai,DiaChi,Email) 
VALUES 
(N'Công ty Cổ phần Bia - Rượu - Nước giải khát','094 133 81 33',N'79 Trần Phú, Cái Khế, Ninh Kiều, Cần Thơ','Nhaphanphoinuoc@gmail.com');
CREATE TABLE HoaDonNhap(
	ID bigint primary key IDENTITY(1,1) not null,
	NhanVienNhap varchar(30) not null,
	IDNhaCC int,
	NgayNhap datetime not null,
	DaNhap tinyint,
	TienThanhToan int,
	NgayTao datetime DEFAULT GETDATE() not null,
	NguoiTao varchar(30) DEFAULT 'admin',
	NgayCapNhat datetime DEFAULT GETDATE(),
	NguoiCapNhat varchar(30) DEFAULT 'admin',
	CONSTRAINT FK_HoaDonNhap_NhaCungCap FOREIGN KEY (IDNhaCC) REFERENCES NhaCungCap(ID),
)
/*
INSERT INTO HoaDonNhap
(NhanVienNhap,IDNhaCC,NgayNhap,DaNhap) 
VALUES 
('Admin','1',GETDATE(),'1');
*/
CREATE TABLE ChiTietHoaDonNhap(
	IDHoaDon bigint not null,
	IDMatHang int not null,
	SoLuong int,
	DonGiaNhap int,
	PRIMARY KEY (IDHoaDon, IDMatHang),
	CONSTRAINT FK_ChiTietHoaDonNhap_HoaDonNhap FOREIGN KEY (IDHoaDon) REFERENCES HoaDonNhap(ID),
	CONSTRAINT FK_ChiTietHoaDonNhap_MatHang FOREIGN KEY (IDMatHang) REFERENCES MatHang(ID),

)
/*
INSERT INTO ChiTietHoaDonNhap
(IDHoaDon,IDMatHang,SoLuong,DonGiaNhap) 
VALUES 
(3,2,720,335000); 
*/
CREATE TABLE CauHinh(
	tukhoa varchar(20) not null,
	giatri nvarchar(150),
	PRIMARY KEY (tukhoa),

)
INSERT INTO CauHinh (tukhoa,giatri) VALUES ('diachi' ,N'78 Nguyễn Huệ, Phường 2, TP, Vĩnh Long');
INSERT INTO CauHinh (tukhoa,giatri) VALUES ('ganhet' ,'10');
INSERT INTO CauHinh (tukhoa,giatri) VALUES ('phone' ,'0848741399');
INSERT INTO CauHinh (tukhoa,giatri) VALUES ('tencuahang' ,'KARAOKE SUNNY');
--TẠO TABLE NHÂN VIÊN
CREATE TABLE NhanVien(
Username varchar(30)  primary key not null ,
Password varchar(250) not null,
HoVaTen nvarchar(30),
DienThoai nvarchar(30),
DiaChi nvarchar(150),
isDeleted tinyint  DEFAULT ((0)),
isAdmin tinyint  DEFAULT ((0)),
NguoiTao varchar(30),
NgayTao datetime DEFAULT GETDATE(),
NguoiCapNhat varchar(30),
NgayCapNhat datetime,
)
--THÊM DỮ LIỆU TABLE NHÂN VIÊN
INSERT INTO NhanVien 
	(Username,Password,HoVaTen,DienThoai,DiaChi,isDeleted,isAdmin,NguoiTao,NgayTao,NguoiCapNhat,NgayCapNhat) 
VALUES 
	('Admin','1' ,N'Huy Khang' ,'0848741399' ,N'Vĩnh Long','0','1','admin',GETDATE(),NULL,NULL);
INSERT INTO NhanVien 
	(Username,Password,HoVaTen,DienThoai,DiaChi,isDeleted,isAdmin,NguoiTao,NgayTao,NguoiCapNhat,NgayCapNhat) 
VALUES 
	('Nhan','1' ,N'Minh Nhân' ,'0794943324' ,N'Vĩnh Long','0','0','admin',GETDATE(),NULL,NULL );


-- xem dữ liệu

Use CSDL_KARAOKE
GO
--CÁC LỆNH THƯỜNG DÙNG
--XEM DỮ LIỆU
SELECT * FROM LoaiPhong
SELECT * FROM Phong
SELECT * FROM HoaDonBanHang
SELECT * FROM DonViTinh
SELECT * FROM MatHang
SELECT * FROM ChiTietHoaDonBan
SELECT * FROM NhaCungCap
SELECT * FROM HoaDonNhap
SELECT * FROM ChiTietHoaDonNhap
SELECT * FROM CauHinh
SELECT * FROM NhanVien

UPDATE Phong set TrangThai = 1 where id = 1



SELECT * FROM Phong
SELECT * FROM HoaDonBanHang
SELECT * FROM ChiTietHoaDonBan
UPDATE Phong set TrangThai = 0
delete from ChiTietHoaDonBan
delete from HoaDonBanHang

UPDATE MatHang set isDichVu = 0

delete from MatHang
-- Thêm mặt hàng
UPDATE MatHang set isDichVu = 1 where id = 3
UPDATE MatHang set isDichVu = 1 where id = 4


SELECT * FROM HoaDonBanHang
where ThoiGianKThuc is not null 
select sum(sl*DonGia) from ChiTietHoaDonBan where IDHoaDon = 15




UPDATE HoaDonBanHang 
--set ThoiGianBDau = '2021-05-21 19:00:00.000'
set ThoiGianKThuc = '2021-05-21 20:00:00.000'
where IDHoaDon = 15


select (263000 - 88000)