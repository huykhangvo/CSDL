CREATE DATABASE CSDL_KARAOKE
GO
Use CSDL_KARAOKE
GO

--XÓA TABLE
DROP TABLE LoaiPhong
DROP TABLE Phong
DROP TABLE HoaDonBanHang
DROP TABLE DonViTinh
DROP TABLE MatHang
DROP TABLE ChiTietHoaDonBan
DROP TABLE NhaCungCap
DROP TABLE HoaDonNhap
DROP TABLE ChiTietHoaDonNhap
DROP TABLE CauHinh
DROP TABLE NhanVien


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
	(N'Phòng Thường' ,'150000' ,'0' ,NULL,'admin',NULL,NULL);

INSERT INTO LoaiPhong 
	(TenLoaiPhong,DonGia,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Phòng V.I.P' ,'200000' ,'0' ,NULL,'admin',NULL,NULL);

INSERT INTO LoaiPhong 
	(TenLoaiPhong,DonGia,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Phòng Đặc Biệt' ,'300000' ,'1' ,NULL,'admin',NULL,NULL);

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
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 01' ,NULL,'1' ,'4','0','2021-05-19 21:53:50.867','admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 02' ,NULL,'1' ,'4','0','2021-05-19 21:53:50.867','admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 03' ,NULL,'1' ,'4','0','2021-05-19 21:53:50.867','admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 04' ,NULL,'1' ,'6','0','2021-05-19 21:53:50.867','admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 05' ,NULL,'1' ,'6','0','2021-05-19 21:53:50.867','admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 06' ,NULL,'1' ,'6','0','2021-05-19 21:53:50.867','admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 01' ,NULL,'2' ,'4','0','2021-05-19 21:53:50.867','admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 02' ,NULL,'2' ,'4','0','2021-05-19 21:53:50.867','admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 03' ,NULL,'2' ,'4','0','2021-05-19 21:53:50.867','admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 04' ,NULL,'2' ,'6','0','2021-05-19 21:53:50.867','admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 05' ,NULL,'2' ,'6','0','2021-05-19 21:53:50.867','admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 06' ,NULL,'2' ,'6','0','2021-05-19 21:53:50.867','admin',NULL,NULL);
INSERT INTO Phong (TenPhong,TrangThai,IDLoaiPhong,SucChua,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) VALUES (N'Phòng 01' ,NULL,'3' ,'10','0','2021-05-19 21:53:50.867','admin',NULL,NULL);

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
	(N'Thùng' ,'0' ,NULL,'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Kết' ,'0' ,NULL,'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Chai' ,'0' ,NULL,'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	('Lon' ,'0' ,NULL,'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Gói' ,'0' ,NULL,'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Dĩa' ,'0' ,NULL,'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Chiếc' ,'0' ,NULL,'admin',NULL,NULL);
	INSERT INTO DonViTinh 
	(TenDVT,isDeleted,NgayTao,NguoiTao,NgayCapNhat,NguoiCapNhat) 
VALUES 
	(N'Li' ,'0' ,NULL,'admin',NULL,NULL);
CREATE TABLE MatHang(
ID int primary key IDENTITY(1,1) not null,
TenMatHang nvarchar(50) not null,
isDichVu tinyint, --kt 0
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

CREATE TABLE ChiTietHoaDonNhap(
	IDHoaDon bigint not null,
	IDMatHang int not null,
	SoLuong int,
	DonGiaNhap int,
	PRIMARY KEY (IDHoaDon, IDMatHang),
	CONSTRAINT FK_ChiTietHoaDonNhap_HoaDonNhap FOREIGN KEY (IDHoaDon) REFERENCES HoaDonNhap(ID),
	CONSTRAINT FK_ChiTietHoaDonNhap_MatHang FOREIGN KEY (IDMatHang) REFERENCES MatHang(ID),

)

CREATE TABLE CauHinh(
	tukhoa varchar(20) not null,
	giatri nvarchar(150),
	PRIMARY KEY (tukhoa),

)
INSERT INTO CauHinh (tukhoa,giatri) VALUES ('diachi' ,N'78 Nguyễn Huệ, Phường 2, TP, Vĩnh Long');
INSERT INTO CauHinh (tukhoa,giatri) VALUES ('ganhet' ,'10');
INSERT INTO CauHinh (tukhoa,giatri) VALUES ('phone' ,'+84848741399');
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
	('Admin','1' ,N'Huy Khang' ,'0848741399' ,N'Vĩnh Long','0','1','admin',NULL,NULL,NULL);
INSERT INTO NhanVien 
	(Username,Password,HoVaTen,DienThoai,DiaChi,isDeleted,isAdmin,NguoiTao,NgayTao,NguoiCapNhat,NgayCapNhat) 
VALUES 
	('Nhan','1' ,N'Minh Nhân' ,'0794943324' ,N'Vĩnh Long','0','0','admin',NULL,NULL,NULL );
-- xem dữ liệu

Use HAUKY
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
