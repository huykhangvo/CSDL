CREATE DATABASE QUANLYQUANKARAOKE
GO
Use QUANLYQUANKARAOKE
GO
-- Chạy trước theo thứ tự từng table nếu không lỗi sml
--Loại Phòng 1
--DROP TABLE LoaiPhong;
create table LoaiPhong(
	ID int primary key IDENTITY(1,1) not null, -- tăng tự động
	TenLoaiPhong nvarchar(50) not null,
	DonGia int,
	isDeleted tinyint DEFAULT ((0)),
	NgayTao datetime DEFAULT GETDATE(),--ghi chú DEFAULT GETDATE()
	NguoiTao varchar(30) DEFAULT 'admin',--Nhớ đây
	NgayCapNhat datetime DEFAULT GETDATE(),--Ghi chú DEFAULT GETDATE()
	NguoiCapNhat varchar(30) DEFAULT 'admin',
)
--Phòng 2
--DROP TABLE Phong;
create table Phong(
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
CONSTRAINT FK_Phong_LoaiPhong FOREIGN KEY (ID) REFERENCES LoaiPhong(ID),
)
--DROP TABLE LoaiPhong;
--Hóa đơn bán hàng 3
create table HoaDonBanHang(
	IDHoaDon bigint primary key IDENTITY(1,1) not null, --bigint 2/int 1 
	IDPhong int,
	ThoiGianBDau datetime,
	ThoiGianKThuc datetime,
	DonGiaPhong int,
	NguoiBan varchar(30) DEFAULT 'admin',
	NgayTao datetime DEFAULT GETDATE(),
	NguoiTao varchar(30),
	NgayCapNhat datetime DEFAULT GETDATE(),
	NguoiCapNhat varchar(50) DEFAULT 'admin',
	CONSTRAINT FK_HoaDonBanHang_Phong FOREIGN KEY (IDHoaDon) REFERENCES Phong(ID),
)

--Đơn vị tính 4
create table DonViTinh(
ID int primary key IDENTITY(1,1) not null,
TenDVT nvarchar(20),
isDeleted tinyint DEFAULT ((0)),
NgayTao datetime DEFAULT GETDATE(),
NguoiTao varchar(30) DEFAULT 'admin',
NgayCapNhat datetime DEFAULT GETDATE(),
NguoiCapNhat varchar(30) DEFAULT 'admin'
)

--Mặt hàng 5
create table MatHang(
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
--DROP TABLE ChiTietHoaDonBan;
--Chi tiết hóa đơn bán 6
create table ChiTietHoaDonBan(
	IDHoaDon int not null, -- Sua CSDL
	IDMatHang int not null,
	SL int,
	DonGia int,
	PRIMARY KEY (IDHoaDon, IDMatHang),
	CONSTRAINT FK_ChiTietHoaDonBan_HoaDonBanHang FOREIGN KEY (IDHoaDon) REFERENCES HoaDonBanHang(IDHoaDon),
	CONSTRAINT FK_ChiTietHoaDonBan_MatHang FOREIGN KEY (IDMatHang) REFERENCES MatHang(ID),
) 

--Nhà cung cấp 7
create table NhaCungCap(
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
--Hóa Đơn Nhập 8
create table HoaDonNhap(
	ID int primary key IDENTITY(1,1) not null, --Sửa NhaCungCap
	NhanVienNhap varchar(30) not null,
	IDNhaCC int,
	NgayNhap datetime not null,
	DaNhap tinyint,
	TienThanhToan int,
	NgayTao datetime DEFAULT GETDATE() not null,
	NguoiTao varchar(30) DEFAULT 'admin',
	NgayCapNhat datetime DEFAULT GETDATE(),
	NguoiCapNhat varchar(30) DEFAULT 'admin'
	CONSTRAINT FK_HoaDonNhap_NhaCungCap FOREIGN KEY (ID) REFERENCES NhaCungCap(ID),--Cầm chì
)
--Chi tiết hóa đơn nhập 9
create table ChiTietHoaDonNhap(
	IDHoaDon int not null,
	IDMatHang int not null,
	SoLuong int,
	DonGiaNhap int,
	PRIMARY KEY (IDHoaDon, IDMatHang),
	CONSTRAINT FK_ChiTietHoaDonNhap_MatHang FOREIGN KEY (IDHoaDon) REFERENCES MatHang(ID),
	CONSTRAINT FK_ChiTietHoaDonNhap_HoaDonNhap FOREIGN KEY (IDMatHang) REFERENCES HoaDonNhap(ID),
)
--Cấu hình 10
create table CauHinh(
	tukhoa varchar(20) not null,
	giatri nvarchar(150),
	PRIMARY KEY (tukhoa),

)
--Nhân viên 11
--DROP TABLE NhanVien;
create table NhanVien(
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