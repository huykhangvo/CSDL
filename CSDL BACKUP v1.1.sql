USE [CSDL_KARAOKE]
GO
/****** Object:  Table [dbo].[CauHinh]    Script Date: 18/5/2021 11:24:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CauHinh](
	[tukhoa] [varchar](20) NOT NULL,
	[giatri] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[tukhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonBan]    Script Date: 18/5/2021 11:24:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonBan](
	[IDHoaDon] [bigint] NOT NULL,
	[IDMatHang] [int] NOT NULL,
	[SL] [int] NULL,
	[DonGia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC,
	[IDMatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhap]    Script Date: 18/5/2021 11:24:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhap](
	[IDHoaDon] [bigint] NOT NULL,
	[IDMatHang] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGiaNhap] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC,
	[IDMatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonViTinh]    Script Date: 18/5/2021 11:24:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonViTinh](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenDVT] [nvarchar](20) NULL,
	[isDeleted] [tinyint] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [varchar](30) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NguoiCapNhat] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonBanHang]    Script Date: 18/5/2021 11:24:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonBanHang](
	[IDHoaDon] [bigint] IDENTITY(1,1) NOT NULL,
	[IDPhong] [int] NULL,
	[ThoiGianBDau] [datetime] NULL,
	[ThoiGianKThuc] [datetime] NULL,
	[DonGiaPhong] [int] NULL,
	[NguoiBan] [varchar](30) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [varchar](30) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NguoiCapNhat] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[IDHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhap]    Script Date: 18/5/2021 11:24:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhap](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NhanVienNhap] [varchar](30) NOT NULL,
	[IDNhaCC] [int] NULL,
	[NgayNhap] [datetime] NOT NULL,
	[DaNhap] [tinyint] NULL,
	[TienThanhToan] [int] NULL,
	[NgayTao] [datetime] NOT NULL,
	[NguoiTao] [varchar](30) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NguoiCapNhat] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiPhong]    Script Date: 18/5/2021 11:24:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiPhong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiPhong] [nvarchar](50) NOT NULL,
	[DonGia] [int] NULL,
	[isDeleted] [tinyint] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [varchar](30) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NguoiCapNhat] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MatHang]    Script Date: 18/5/2021 11:24:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatHang](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenMatHang] [nvarchar](50) NOT NULL,
	[isDichVu] [tinyint] NULL,
	[IDDVT] [int] NULL,
	[DonGiaBan] [int] NOT NULL,
	[IdCha] [int] NULL,
	[Tile] [int] NULL,
	[isDeleted] [tinyint] NULL,
	[NguoiTao] [varchar](30) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiCapNhat] [varchar](50) NULL,
	[NgayCapNhat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 18/5/2021 11:24:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](150) NOT NULL,
	[DienThoai] [varchar](50) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[Email] [varchar](150) NULL,
	[isDeleted] [tinyint] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [varchar](30) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NguoiCapNhat] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 18/5/2021 11:24:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[Username] [varchar](30) NOT NULL,
	[Password] [varchar](250) NOT NULL,
	[HoVaTen] [nvarchar](30) NULL,
	[DienThoai] [nvarchar](30) NULL,
	[DiaChi] [nvarchar](150) NULL,
	[isDeleted] [tinyint] NULL,
	[isAdmin] [tinyint] NULL,
	[NguoiTao] [varchar](30) NULL,
	[NgayTao] [datetime] NULL,
	[NguoiCapNhat] [varchar](30) NULL,
	[NgayCapNhat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Phong]    Script Date: 18/5/2021 11:24:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Phong](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TenPhong] [nvarchar](50) NOT NULL,
	[TrangThai] [tinyint] NULL,
	[IDLoaiPhong] [int] NULL,
	[SucChua] [int] NULL,
	[isDeleted] [tinyint] NULL,
	[NgayTao] [datetime] NULL,
	[NguoiTao] [varchar](30) NULL,
	[NgayCapNhat] [datetime] NULL,
	[NguoiCapNhat] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DonViTinh] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[DonViTinh] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[DonViTinh] ADD  DEFAULT ('admin') FOR [NguoiTao]
GO
ALTER TABLE [dbo].[DonViTinh] ADD  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[DonViTinh] ADD  DEFAULT ('admin') FOR [NguoiCapNhat]
GO
ALTER TABLE [dbo].[HoaDonBanHang] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HoaDonBanHang] ADD  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[HoaDonNhap] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[HoaDonNhap] ADD  DEFAULT ('admin') FOR [NguoiTao]
GO
ALTER TABLE [dbo].[HoaDonNhap] ADD  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[HoaDonNhap] ADD  DEFAULT ('admin') FOR [NguoiCapNhat]
GO
ALTER TABLE [dbo].[LoaiPhong] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[LoaiPhong] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[LoaiPhong] ADD  DEFAULT ('admin') FOR [NguoiTao]
GO
ALTER TABLE [dbo].[LoaiPhong] ADD  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[LoaiPhong] ADD  DEFAULT ('admin') FOR [NguoiCapNhat]
GO
ALTER TABLE [dbo].[MatHang] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[MatHang] ADD  DEFAULT ('admin') FOR [NguoiTao]
GO
ALTER TABLE [dbo].[MatHang] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[MatHang] ADD  DEFAULT ('admin') FOR [NguoiCapNhat]
GO
ALTER TABLE [dbo].[MatHang] ADD  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[NhaCungCap] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[NhaCungCap] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[NhaCungCap] ADD  DEFAULT ('admin') FOR [NguoiTao]
GO
ALTER TABLE [dbo].[NhaCungCap] ADD  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[NhaCungCap] ADD  DEFAULT ('admin') FOR [NguoiCapNhat]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT ((0)) FOR [isAdmin]
GO
ALTER TABLE [dbo].[NhanVien] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Phong] ADD  DEFAULT ((1)) FOR [TrangThai]
GO
ALTER TABLE [dbo].[Phong] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Phong] ADD  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[Phong] ADD  DEFAULT ('admin') FOR [NguoiTao]
GO
ALTER TABLE [dbo].[Phong] ADD  DEFAULT (getdate()) FOR [NgayCapNhat]
GO
ALTER TABLE [dbo].[Phong] ADD  DEFAULT ('admin') FOR [NguoiCapNhat]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBan_HoaDonBanHang] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDonBanHang] ([IDHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan] CHECK CONSTRAINT [FK_ChiTietHoaDonBan_HoaDonBanHang]
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonBan_MatHang] FOREIGN KEY([IDMatHang])
REFERENCES [dbo].[MatHang] ([ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDonBan] CHECK CONSTRAINT [FK_ChiTietHoaDonBan_MatHang]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhap_HoaDonNhap] FOREIGN KEY([IDHoaDon])
REFERENCES [dbo].[HoaDonNhap] ([ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap] CHECK CONSTRAINT [FK_ChiTietHoaDonNhap_HoaDonNhap]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDonNhap_MatHang] FOREIGN KEY([IDMatHang])
REFERENCES [dbo].[MatHang] ([ID])
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhap] CHECK CONSTRAINT [FK_ChiTietHoaDonNhap_MatHang]
GO
ALTER TABLE [dbo].[HoaDonBanHang]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonBanHang_Phong] FOREIGN KEY([IDPhong])
REFERENCES [dbo].[Phong] ([ID])
GO
ALTER TABLE [dbo].[HoaDonBanHang] CHECK CONSTRAINT [FK_HoaDonBanHang_Phong]
GO
ALTER TABLE [dbo].[HoaDonNhap]  WITH CHECK ADD  CONSTRAINT [FK_HoaDonNhap_NhaCungCap] FOREIGN KEY([IDNhaCC])
REFERENCES [dbo].[NhaCungCap] ([ID])
GO
ALTER TABLE [dbo].[HoaDonNhap] CHECK CONSTRAINT [FK_HoaDonNhap_NhaCungCap]
GO
ALTER TABLE [dbo].[MatHang]  WITH CHECK ADD  CONSTRAINT [FK_MatHang_DonViTinh] FOREIGN KEY([ID])
REFERENCES [dbo].[DonViTinh] ([ID])
GO
ALTER TABLE [dbo].[MatHang] CHECK CONSTRAINT [FK_MatHang_DonViTinh]
GO
ALTER TABLE [dbo].[Phong]  WITH CHECK ADD  CONSTRAINT [FK_Phong_LoaiPhong] FOREIGN KEY([IDLoaiPhong])
REFERENCES [dbo].[LoaiPhong] ([ID])
GO
ALTER TABLE [dbo].[Phong] CHECK CONSTRAINT [FK_Phong_LoaiPhong]
GO
