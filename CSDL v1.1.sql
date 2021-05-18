CREATE DATABASE CSDL_KARAOKE
GO
Use CSDL_KARAOKE
GO
--Tạo TABLE
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
CONSTRAINT FK_Phong_LoaiPhong FOREIGN KEY (IDLoaiPhong) REFERENCES LoaiPhong(ID),

)

create table HoaDonBanHang(
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

create table DonViTinh(
ID int primary key IDENTITY(1,1) not null,
TenDVT nvarchar(20),
isDeleted tinyint DEFAULT ((0)),
NgayTao datetime DEFAULT GETDATE(),
NguoiTao varchar(30) DEFAULT 'admin',
NgayCapNhat datetime DEFAULT GETDATE(),
NguoiCapNhat varchar(30) DEFAULT 'admin'
)

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

create table ChiTietHoaDonBan(
	IDHoaDon bigint not null,
	IDMatHang int not null,
	SL int,
	DonGia int,
	PRIMARY KEY (IDHoaDon, IDMatHang),
	CONSTRAINT FK_ChiTietHoaDonBan_HoaDonBanHang FOREIGN KEY (IDHoaDon) REFERENCES HoaDonBanHang(IDHoaDon),
	CONSTRAINT FK_ChiTietHoaDonBan_MatHang FOREIGN KEY (IDMatHang) REFERENCES MatHang(ID),
) 

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

create table HoaDonNhap(
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

create table ChiTietHoaDonNhap(
	IDHoaDon bigint not null,
	IDMatHang int not null,
	SoLuong int,
	DonGiaNhap int,
	PRIMARY KEY (IDHoaDon, IDMatHang),
	CONSTRAINT FK_ChiTietHoaDonNhap_HoaDonNhap FOREIGN KEY (IDHoaDon) REFERENCES HoaDonNhap(ID),
	CONSTRAINT FK_ChiTietHoaDonNhap_MatHang FOREIGN KEY (IDMatHang) REFERENCES MatHang(ID),

)

create table CauHinh(
	tukhoa varchar(20) not null,
	giatri nvarchar(150),
	PRIMARY KEY (tukhoa),

)

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