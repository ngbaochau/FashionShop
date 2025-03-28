create database BTL_API_BLBH
USE [BTL_API_BLBH]
GO
/****** Object:  Table [dbo].[ChiTietHoaDonNhaps]    Script Date: 08/06/2024 4:15:15 PM ******/
select*from KhachHang
delete KhachHang
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDonNhaps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[GiaNhap] [decimal](18, 0) NULL,
	[TongTien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDons]    Script Date: 08/06/2024 4:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDons](
	[MaChiTietHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSanPham] [int] NULL,
	[SoLuong] [int] NULL,
	[TongGia] [decimal](18, 0) NULL,
	[GiamGia] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChiTietHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietTaiKhoan]    Script Date: 08/06/2024 4:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietTaiKhoan](
	[MaChitietTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [int] NULL,
	[HoTen] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](250) NULL,
	[SoDienThoai] [nvarchar](11) NULL,
	[AnhDaiDien] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChitietTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenMucs]    Script Date: 08/06/2024 4:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenMucs](
	[MaChuyenMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenChuyenMuc] [nvarchar](50) NULL,
	[DacBiet] [bit] NULL,
	[NoiDung] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaChuyenMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDonNhaps]    Script Date: 08/06/2024 4:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonNhaps](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaNhaPhanPhoi] [int] NULL,
	[NgayTao] [datetime] NULL,
	[KieuThanhToan] [nvarchar](max) NULL,
	[MaTaiKhoan] [int] NULL,
	[TongTien] [decimal](18, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDons]    Script Date: 08/06/2024 4:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDons](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[TrangThai] [nvarchar](1) NULL,
	[NgayTao] [datetime] NULL,
	[TongGia] [decimal](18, 0) NULL,
	[DiaChiGiaoHang] [nvarchar](350) NULL,
	[ThoiGianGiaoHang] [datetime] NULL,
	[MaKH] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 08/06/2024 4:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[SDT] [char](10) NULL,
	[MaTaiKhoan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiTaiKhoan]    Script Date: 08/06/2024 4:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiTaiKhoan](
	[MaLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenLoai] [nvarchar](50) NULL,
	[Mota] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaPhanPhois]    Script Date: 08/06/2024 4:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaPhanPhois](
	[MaNhaPhanPhoi] [int] IDENTITY(1,1) NOT NULL,
	[TenNhaPhanPhoi] [nvarchar](250) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SoDienThoai] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhaPhanPhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams]    Script Date: 08/06/2024 4:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenMuc] [int] NULL,
	[TenSanPham] [nvarchar](150) NULL,
	[AnhDaiDien] [nvarchar](350) NULL,
	[Gia] [decimal](18, 0) NULL,
	[GiaGiam] [decimal](18, 0) NULL,
	[SoLuong] [int] NULL,
	[TrangThai] [bit] NULL,
	[LuotXem] [int] NULL,
	[DacBiet] [bit] NULL,
	[MaSize] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhams_NhaPhanPhois]    Script Date: 08/06/2024 4:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhams_NhaPhanPhois](
	[MaSanPham] [int] NOT NULL,
	[MaNhaPhanPhoi] [int] NOT NULL,
 CONSTRAINT [FK_CTDHN] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC,
	[MaNhaPhanPhoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 08/06/2024 4:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[MaSize] [int] IDENTITY(1,1) NOT NULL,
	[TenSize] [nvarchar](250) NULL,
	[Ghichu] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSize] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 08/06/2024 4:15:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[MaTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[LoaiTaiKhoan] [int] NULL,
	[TenTaiKhoan] [nvarchar](50) NULL,
	[MatKhau] [nvarchar](50) NULL,
	[Email] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonNhaps] ON 

INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (15, 15, 112, 5, N'Cái', CAST(20000 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (16, 16, 113, 50, N'Cái', CAST(20000 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (17, 17, 114, 53, N'Cái', CAST(20000 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (18, 18, 115, 30, N'Cái', CAST(20000 AS Decimal(18, 0)), CAST(1000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (22, 22, 110, 2, N'string', CAST(223 AS Decimal(18, 0)), CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (23, 23, 114, 3, N'Chiếc', CAST(300000 AS Decimal(18, 0)), CAST(900000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (24, 24, 112, 2, N'2', CAST(2 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (25, 25, 112, 2, N'2', CAST(2 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (26, 26, 112, 2, N'2', CAST(2 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (27, 27, 111, 2, N'2', CAST(2 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (28, 28, 112, 2, N'2', CAST(2 AS Decimal(18, 0)), CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (30, 30, 117, 30, N'Chiếc', CAST(300000 AS Decimal(18, 0)), CAST(9000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (31, 31, 161, 100, N'Cái', CAST(250000 AS Decimal(18, 0)), CAST(25000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (32, 32, 110, 1, N'Cái', CAST(1044 AS Decimal(18, 0)), CAST(52888 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (33, 33, 110, 1, N'Cái', CAST(1044 AS Decimal(18, 0)), CAST(52888 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (34, 34, 110, 1, N'Cái', CAST(1044 AS Decimal(18, 0)), CAST(52888 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (35, 35, 110, 1, N'Cái', CAST(1044 AS Decimal(18, 0)), CAST(52888 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (36, 36, 110, 1, N'Cái', CAST(1044 AS Decimal(18, 0)), CAST(52888 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (37, 37, 110, 1, N'Cái', CAST(1044 AS Decimal(18, 0)), CAST(52888 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (38, 38, 110, 1, N'Cái', CAST(1044 AS Decimal(18, 0)), CAST(52888 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (39, 39, 110, 1, N'Cái', CAST(1044 AS Decimal(18, 0)), CAST(52888 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (40, 40, 111, 1, N'Cái', CAST(300000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (41, 41, 111, 20, N'Cái', CAST(300000 AS Decimal(18, 0)), CAST(6000000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (42, 42, 112, 2, N'Cái', CAST(200000 AS Decimal(18, 0)), CAST(400000 AS Decimal(18, 0)))
INSERT [dbo].[ChiTietHoaDonNhaps] ([Id], [MaHoaDon], [MaSanPham], [SoLuong], [DonViTinh], [GiaNhap], [TongTien]) VALUES (43, 43, 112, 2, N'2', CAST(2222 AS Decimal(18, 0)), CAST(4444 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[ChiTietHoaDonNhaps] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietHoaDons] ON 

INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (178, 134, 112, 1, CAST(200000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (183, 137, 112, 2, CAST(400000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (184, 137, 111, 1, CAST(110000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (185, 138, 115, 2, CAST(620000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (187, 139, 110, 3, CAST(300000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (188, 139, 111, 1, CAST(110000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (195, 143, 119, 1, CAST(100000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (227, 145, 112, 1, CAST(200000 AS Decimal(18, 0)), N'')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (229, 146, 112, 1, CAST(200000 AS Decimal(18, 0)), N'')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (235, 145, 110, 1, CAST(100000 AS Decimal(18, 0)), N'')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (276, 143, 111, 1, CAST(110000 AS Decimal(18, 0)), N'')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (277, 146, 111, 1, CAST(110000 AS Decimal(18, 0)), N'')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (282, 150, 116, 1, CAST(400000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (288, 150, 114, 2, CAST(620000 AS Decimal(18, 0)), N'')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (289, 150, 113, 2, CAST(600000 AS Decimal(18, 0)), N'')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (290, 151, 113, 2, CAST(600000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (291, 152, 112, 2, CAST(400000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (292, 152, 111, 1, CAST(110000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (297, 148, 111, 2, CAST(220000 AS Decimal(18, 0)), N'')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (298, 134, 114, 4, CAST(1240000 AS Decimal(18, 0)), N'')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (299, 156, 111, 1, CAST(110000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (300, 156, 112, 1, CAST(200000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (306, 162, 113, 1, CAST(300000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (307, 163, 117, 1, CAST(200000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (310, 165, 116, 1, CAST(400000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (314, 168, 110, 2, CAST(200000 AS Decimal(18, 0)), N'không có')
INSERT [dbo].[ChiTietHoaDons] ([MaChiTietHoaDon], [MaHoaDon], [MaSanPham], [SoLuong], [TongGia], [GiamGia]) VALUES (315, 169, 111, 1, CAST(110000 AS Decimal(18, 0)), N'không có')
SET IDENTITY_INSERT [dbo].[ChiTietHoaDons] OFF
GO
SET IDENTITY_INSERT [dbo].[ChiTietTaiKhoan] ON 

INSERT [dbo].[ChiTietTaiKhoan] ([MaChitietTaiKhoan], [MaTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (1, 1, N'Vũ Đình Vinh', N'Thanh Miện, Hải Dương', N'0865087460', N'')
INSERT [dbo].[ChiTietTaiKhoan] ([MaChitietTaiKhoan], [MaTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (8, 10, N'1', N'1', N'Admin2', N'')
INSERT [dbo].[ChiTietTaiKhoan] ([MaChitietTaiKhoan], [MaTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (10, 12, N'string', N'string', N'string', N'')
INSERT [dbo].[ChiTietTaiKhoan] ([MaChitietTaiKhoan], [MaTaiKhoan], [HoTen], [DiaChi], [SoDienThoai], [AnhDaiDien]) VALUES (13, 15, N'a', N'a', N'User1', N'')
SET IDENTITY_INSERT [dbo].[ChiTietTaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuyenMucs] ON 

INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (1, N'Áo sơ mi', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (2, N'Áo thun', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (3, N'Áo Polo', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (4, N'Áo khoác', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (5, N'Áo len', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (6, N'Áo vest', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (7, N'Áo ghi lê', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (28, N'Áo Hoodie & Sweatshirt', NULL, N'trống')
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (31, N'Quần Tây', NULL, N'trống')
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (35, N'Quần Jeans', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (36, N'Quần kaki', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (37, N'Quần lót', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (38, N'Quần short', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (39, N'Thắt lưng', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (40, N'Ví da', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (41, N'Cà vạt', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (42, N'Mũ nón', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (43, N'Túi xách', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (44, N'Giày', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (45, N'Dép', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (46, N'Sandal', NULL, NULL)
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (49, N'3', NULL, N'')
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (57, N'1', NULL, N'')
INSERT [dbo].[ChuyenMucs] ([MaChuyenMuc], [TenChuyenMuc], [DacBiet], [NoiDung]) VALUES (58, N'1', NULL, N'')
SET IDENTITY_INSERT [dbo].[ChuyenMucs] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDonNhaps] ON 

INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (15, 1, CAST(N'2023-11-10T11:54:35.007' AS DateTime), N'Tiền mặt', 1, CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (16, 1, CAST(N'2023-11-10T11:54:35.007' AS DateTime), N'Tiền mặt', 1, CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (17, 1, CAST(N'2023-11-10T11:54:35.007' AS DateTime), N'Tiền mặt', 1, CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (18, 1, CAST(N'2023-11-10T11:54:35.007' AS DateTime), N'Tiền mặt', 1, CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (22, 1, CAST(N'2024-05-24T23:36:19.057' AS DateTime), N'string', 1, CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (23, 1, CAST(N'2024-05-24T23:56:12.180' AS DateTime), N'Thẻ', 1, CAST(900000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (24, 62, CAST(N'2024-05-25T00:04:58.543' AS DateTime), N'2', 1, CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (25, 62, CAST(N'2024-05-25T00:05:09.673' AS DateTime), N'2', 1, CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (26, 4, CAST(N'2024-05-25T00:05:18.760' AS DateTime), N'2', 1, CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (27, 3, CAST(N'2024-05-25T00:05:28.457' AS DateTime), N'2', 1, CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (28, 4, CAST(N'2024-05-25T00:05:39.593' AS DateTime), N'2', 1, CAST(4 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (30, 62, CAST(N'2024-06-04T14:22:15.060' AS DateTime), N'Thẻ', 1, CAST(9000000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (31, 63, CAST(N'2024-06-05T07:02:37.330' AS DateTime), N'Thẻ', 1, CAST(25000000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (32, 1, CAST(N'2023-10-08T00:00:00.000' AS DateTime), N'Tiền mặt', 1, CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (33, 1, CAST(N'2023-10-08T00:00:00.000' AS DateTime), N'Tiền mặt', 1, CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (34, 1, CAST(N'2023-10-08T00:00:00.000' AS DateTime), N'Tiền mặt', 1, CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (35, 1, CAST(N'2023-10-08T00:00:00.000' AS DateTime), N'Tiền mặt', 1, CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (36, 1, CAST(N'2023-10-08T00:00:00.000' AS DateTime), N'Tiền mặt', 1, CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (37, 1, CAST(N'2023-10-08T00:00:00.000' AS DateTime), N'Tiền mặt', 1, CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (38, 1, CAST(N'2023-10-08T00:00:00.000' AS DateTime), N'Tiền mặt', 1, CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (39, 1, CAST(N'2023-10-08T00:00:00.000' AS DateTime), N'Tiền mặt', 1, CAST(1 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (40, 4, CAST(N'2024-06-06T12:24:05.307' AS DateTime), N'Tiền', 1, CAST(300000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (41, 63, CAST(N'2024-06-06T12:43:53.917' AS DateTime), N'Thẻ', 1, CAST(6000000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (42, 60, CAST(N'2024-06-07T02:26:16.793' AS DateTime), N'Thẻ', 1, CAST(400000 AS Decimal(18, 0)))
INSERT [dbo].[HoaDonNhaps] ([MaHoaDon], [MaNhaPhanPhoi], [NgayTao], [KieuThanhToan], [MaTaiKhoan], [TongTien]) VALUES (43, 4, CAST(N'2024-06-08T07:26:37.493' AS DateTime), N'2', 1, CAST(4444 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[HoaDonNhaps] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDons] ON 

INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (134, N'0', CAST(N'2023-11-30T08:25:17.523' AS DateTime), CAST(1440000 AS Decimal(18, 0)), N'Hải Dương', NULL, 64)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (137, N'1', CAST(N'2023-11-30T14:09:56.600' AS DateTime), CAST(510000 AS Decimal(18, 0)), N'Yên Bái', NULL, 67)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (138, N'1', CAST(N'2023-11-30T14:17:59.057' AS DateTime), CAST(1240000 AS Decimal(18, 0)), N'Bắc Ninh', NULL, 68)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (139, N'1', CAST(N'2023-12-01T04:04:09.040' AS DateTime), CAST(410000 AS Decimal(18, 0)), N'Bắc Ninh', NULL, 69)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (143, N'1', CAST(N'2023-12-01T15:41:21.453' AS DateTime), CAST(210000 AS Decimal(18, 0)), N'Cà Mau', NULL, 71)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (145, N'1', CAST(N'2023-12-18T06:10:10.433' AS DateTime), CAST(300000 AS Decimal(18, 0)), N'Âm phủ', NULL, 71)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (146, N'1', CAST(N'2024-05-01T14:46:06.853' AS DateTime), CAST(310000 AS Decimal(18, 0)), N'string', NULL, 75)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (148, N'2', CAST(N'2024-05-10T08:42:21.547' AS DateTime), CAST(220000 AS Decimal(18, 0)), N'string', NULL, 86)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (150, N'0', CAST(N'2024-05-10T09:21:29.147' AS DateTime), CAST(2020000 AS Decimal(18, 0)), N'Hải Dương', NULL, 86)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (151, N'0', CAST(N'2024-05-10T10:50:24.147' AS DateTime), CAST(600000 AS Decimal(18, 0)), N'Ninh Giang', NULL, 86)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (152, N'0', CAST(N'2024-05-10T10:52:37.763' AS DateTime), CAST(510000 AS Decimal(18, 0)), N'Thái Bình', NULL, 85)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (156, N'0', CAST(N'2024-05-29T15:30:45.713' AS DateTime), CAST(310000 AS Decimal(18, 0)), N'Hải Dương', NULL, 86)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (162, N'0', CAST(N'2024-06-03T08:12:12.037' AS DateTime), CAST(300000 AS Decimal(18, 0)), N'Thái Bình', NULL, 87)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (163, N'0', CAST(N'2024-06-04T13:17:29.897' AS DateTime), CAST(200000 AS Decimal(18, 0)), N'string', NULL, 87)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (165, N'0', CAST(N'2024-06-04T13:56:23.330' AS DateTime), CAST(400000 AS Decimal(18, 0)), N'Hà Nam', NULL, 87)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (168, N'0', CAST(N'2024-06-06T12:42:01.860' AS DateTime), CAST(200000 AS Decimal(18, 0)), N'Hải Dương', NULL, 87)
INSERT [dbo].[HoaDons] ([MaHoaDon], [TrangThai], [NgayTao], [TongGia], [DiaChiGiaoHang], [ThoiGianGiaoHang], [MaKH]) VALUES (169, N'0', CAST(N'2024-06-07T02:09:14.213' AS DateTime), CAST(510000 AS Decimal(18, 0)), N'HD', NULL, 87)
SET IDENTITY_INSERT [dbo].[HoaDons] OFF
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (64, N'Vũ Đình Vinh', N'Hải Dương', N'098765432 ', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (67, N'Huấn', N'Yên Bái', N'0657687987', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (68, N'Khá Bảnh', N'Bắc Ninh', N'0856472195', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (69, N'Dương Minh Tuyền', N'Bắc Ninh', N'03726172  ', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (71, N'Vũ Minh Hải', N'Cà Mau', N'0398237639', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (73, N'Vũ Hải Đăng', N'Hải Phòng', N'09648364  ', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (75, N'Lê Minh Khôi', N'Thái Bình', N'0957685848', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (76, N'Nguyễn Văn Quyết', N'Hà Nội', N'0984754754', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (83, N'test1', N'1', N'1         ', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (84, N'Vũ Đình Vinh', N'Hải Dương', N'0865087460', 16)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (85, N'Vũ Minh Tuấn', N'Hà Nội', N'0853746586', 17)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (86, N'Vũ Hải Đăng', N'Hải Dương', N'0975847364', 18)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (87, N'Vũ Đình Tuyến', N'Quỳnh Phụng, Thái Bình', N'0974635443', 19)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (88, N'q', N'q', N'q         ', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (89, N'cd', N'cd', N'cd        ', NULL)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (93, N'vinh', N'Hải Dương', N'0947687564', 20)
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [SDT], [MaTaiKhoan]) VALUES (94, N'2', N'2', N'2         ', 21)
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] ON 

INSERT [dbo].[LoaiTaiKhoan] ([MaLoai], [TenLoai], [Mota]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[LoaiTaiKhoan] ([MaLoai], [TenLoai], [Mota]) VALUES (2, N'KhachHang', NULL)
SET IDENTITY_INSERT [dbo].[LoaiTaiKhoan] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaPhanPhois] ON 

INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa]) VALUES (1, N'Vincom Fashion', N'Hà Nội', N'0987654321', N'Chưa có')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa]) VALUES (2, N'Zara', N'Hà Nội', N'0987654322', N'Chưa có')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa]) VALUES (3, N'Topman', N'Hưng Yên', N'0987654323', N'Chưa có')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa]) VALUES (4, N'UNIQLO ', N'Hải Dương', N'0987654324', N'Chưa có')
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa]) VALUES (60, N'Marc Fashion', N'Thái Bình', N'0958475323', NULL)
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa]) VALUES (61, N'YODY CLOTHES', N'Nam Định', N'0395673421', NULL)
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa]) VALUES (62, N'IVY moda', N'Hà Nội', N'0975646583', NULL)
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa]) VALUES (63, N'20Again Store', N'Hà Nội', N'0985647312', NULL)
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa]) VALUES (64, N'string', N'string', N'string', NULL)
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa]) VALUES (65, N'VŨ ĐÌNH VINH', N'13', N'13', NULL)
INSERT [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi], [TenNhaPhanPhoi], [DiaChi], [SoDienThoai], [MoTa]) VALUES (66, N'1', N'1', N'1', NULL)
SET IDENTITY_INSERT [dbo].[NhaPhanPhois] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPhams] ON 

INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (110, 1, N'Áo sơ mi 1', N'/anh/thoitrangbanchay1.2.jpg', CAST(100000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 2)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (111, 1, N'Áo sơ mi 2', N'/anh/aonam4.jpg', CAST(110000 AS Decimal(18, 0)), NULL, 120, NULL, NULL, NULL, 3)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (112, 4, N'Áo Khoác Jeans Regular Minimalism AK048 số 1', N'/anh/thoitrangmoinhat7.jpg', CAST(200000 AS Decimal(18, 0)), NULL, 104, NULL, NULL, NULL, 4)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (113, 4, N'Áo Khoác Kaki Rã Phối Viền Lé Gắn Tag Silicon Form Regular AK055', N'/anh/ao-khoac-du-surfing-form-regular-ak051_2_small-17999.jpg', CAST(300000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (114, 4, N'Áo Khoác Da Lộn Rã Phối Regular AK054', N'/anh/aonam4.jpg', CAST(310000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 5)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (115, 4, N'Áo Khoác Phối Dây Sọc AK021', N'/anh/thoitrangmoinhat5.jpg', CAST(310000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 4)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (116, 4, N'Áo Khoác Raglan Regular Phối Màu AK049', N'/anh/thoitrangmoinhat2.1.jpg', CAST(400000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (117, 4, N'Áo Khoác Da Lộn Trơn AK023', N'/anh/thoitrangmoinhat8.jpg', CAST(200000 AS Decimal(18, 0)), NULL, 150, NULL, NULL, NULL, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (119, 1, N'Áo sơ mi 1', N'/anh/thoitrangbanchay1.2.jpg', CAST(100000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 3)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (123, 2, N'Áo Thun Interlock Wash Acid In Ngực Form Regular AT136', N'/anh/thoitranghotnhat5.5.jpg', CAST(325000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 2)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (124, 2, N'Áo Thun Rã Phối Form Regular AT137 Thum 2', N'/anh/thoitranghotnhat6.2.jpg', CAST(320000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 2)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (125, 4, N'Áo Khoác Da Lộn Túi Đắp AK022', N'/anh/aonam5.2.jpg', CAST(500000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 2)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (126, 4, N'Áo Khoác Dù Trơn AK020', N'/anh/chitietsanpham1.1.jpg', CAST(400000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 2)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (127, 4, N'Áo Khoác Dù Trơn Nón Rời AK019', N'/anh/ao-khoac-du-surfing-form-regular-ak051_2_small-17999.jpg', CAST(99000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 2)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (128, 4, N'Áo Khoác Nẹp Bấm Có Nút Màu AK010', N'/anh/thoitrangmoinhat3.jpg', CAST(101000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 3)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (129, 1, N'Áo sơ mi 1', N'/anh/thoitrangbanchay1.2.jpg', CAST(100000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 1)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (134, 6, N'Áo Vest 01', N'/anh/aonam9.1.jpg', CAST(250000 AS Decimal(18, 0)), NULL, 59, NULL, NULL, NULL, 2)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (159, 3, N'1', N'/anh/thoitranghotnhat4.1.jpg', CAST(1 AS Decimal(18, 0)), NULL, 1, NULL, NULL, NULL, 4)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (160, 1, N'Áo sơ mi màu sắc AGC', N'/anh/ao-so-mi-in-hoa-tiet-form-regular-sm144-18350.jpg', CAST(300000 AS Decimal(18, 0)), NULL, 34, NULL, NULL, NULL, 2)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (161, 1, N'Áo sơ mi dài tay nâu sữa AKU', N'/anh/ao-so-mi-tay-dai-ra-phoi-form-regular-sm140-18312.jpg', CAST(290000 AS Decimal(18, 0)), NULL, 34, NULL, NULL, NULL, 4)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (162, 3, N'2', N'/anh/ao-so-mi-tay-dai-ra-phoi-form-regular-sm140-18312.jpg', CAST(2 AS Decimal(18, 0)), NULL, 2, NULL, NULL, NULL, 2)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (164, 2, N'3', N'/anh/ao-khoac-du-tron-ak020-16275.jfif', CAST(1 AS Decimal(18, 0)), NULL, 3, NULL, NULL, NULL, 2)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (165, 4, N'2', N'/anh/ao-khoac-du-tron-ak020-16275.jfif', CAST(2 AS Decimal(18, 0)), NULL, 2, NULL, NULL, NULL, 3)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (167, 2, N'a', N'/anh/thoitrangbanchay1.2.jpg', CAST(2 AS Decimal(18, 0)), NULL, 2, NULL, NULL, NULL, 2)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (169, 35, N'Quần Jeans Xanh Đậm Giễu Chỉ Màu Cam Form Slimfit QJ097', N'/anh/quan-jeans-xanh-dam-tui-kieu-form-slimfit-qj096-18406.jpg', CAST(400000 AS Decimal(18, 0)), NULL, 100, NULL, NULL, NULL, 3)
INSERT [dbo].[SanPhams] ([MaSanPham], [MaChuyenMuc], [TenSanPham], [AnhDaiDien], [Gia], [GiaGiam], [SoLuong], [TrangThai], [LuotXem], [DacBiet], [MaSize]) VALUES (170, 31, N'Quần tây 3', N'/anh/quan-jeans-xanh-dam-tui-kieu-form-slimfit-qj096-18406.jpg', CAST(3 AS Decimal(18, 0)), NULL, 3, NULL, NULL, NULL, 3)
SET IDENTITY_INSERT [dbo].[SanPhams] OFF
GO
SET IDENTITY_INSERT [dbo].[Size] ON 

INSERT [dbo].[Size] ([MaSize], [TenSize], [Ghichu]) VALUES (1, N'S', NULL)
INSERT [dbo].[Size] ([MaSize], [TenSize], [Ghichu]) VALUES (2, N'M', NULL)
INSERT [dbo].[Size] ([MaSize], [TenSize], [Ghichu]) VALUES (3, N'L', N'')
INSERT [dbo].[Size] ([MaSize], [TenSize], [Ghichu]) VALUES (4, N'XL', NULL)
INSERT [dbo].[Size] ([MaSize], [TenSize], [Ghichu]) VALUES (5, N'2XL', NULL)
SET IDENTITY_INSERT [dbo].[Size] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (1, 1, N'Admin1', N'12345', N'vuv28104@gmail.com')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (2, 2, N'Vinh1', N'12345', N'vuv28104@gmail.com')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (3, 1, N'TestUser', N'MyPassword', N'test@example.com')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (10, 2, N'Admin2', N'12345', N'1')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (12, 2, N'string', N'string', N'string')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (15, 2, N'User1', N'12345', N'a')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (16, 2, N'User2', N'12345', N'string')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (17, 2, N'User3', N'12345', N'trống')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (18, 2, N'User4', N'12345', N'cdcdc')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (19, 2, N'nams2minhanh', N'12345', N'vuv47109@gmail.com')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (20, 2, N'vudinhvinh', N'12345', N'vuv28104@gmail.com')
INSERT [dbo].[TaiKhoan] ([MaTaiKhoan], [LoaiTaiKhoan], [TenTaiKhoan], [MatKhau], [Email]) VALUES (21, 2, N'v', N'12345', N'2')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_TenTaiKhoan]    Script Date: 08/06/2024 4:15:16 PM ******/
ALTER TABLE [dbo].[TaiKhoan] ADD  CONSTRAINT [UC_TenTaiKhoan] UNIQUE NONCLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps]  WITH CHECK ADD FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDonNhaps] ([MaHoaDon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDonNhaps]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDons] ([MaHoaDon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDons]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietTaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonNhaps]  WITH CHECK ADD FOREIGN KEY([MaNhaPhanPhoi])
REFERENCES [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDonNhaps]  WITH CHECK ADD FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDons]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang]  WITH CHECK ADD  CONSTRAINT [FK_KhachHang_TaiKhoan] FOREIGN KEY([MaTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([MaTaiKhoan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KhachHang] CHECK CONSTRAINT [FK_KhachHang_TaiKhoan]
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD FOREIGN KEY([MaChuyenMuc])
REFERENCES [dbo].[ChuyenMucs] ([MaChuyenMuc])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhams]  WITH CHECK ADD FOREIGN KEY([MaSize])
REFERENCES [dbo].[Size] ([MaSize])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois]  WITH CHECK ADD FOREIGN KEY([MaNhaPhanPhoi])
REFERENCES [dbo].[NhaPhanPhois] ([MaNhaPhanPhoi])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPhams_NhaPhanPhois]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SanPhams] ([MaSanPham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([LoaiTaiKhoan])
REFERENCES [dbo].[LoaiTaiKhoan] ([MaLoai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
/****** Object:  StoredProcedure [dbo].[Admin_Selling_Products]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Admin_Selling_Products] (@page_index  INT, 
                                       @page_size   INT,
									   @fr_NgayTao datetime, 
									   @to_NgayTao datetime
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY SUM(c.SoLuong) DESC)) AS RowNumber, 
						      
							  s.TenSanPham,
							  s.AnhDaiDien,
							  SUM(c.SoLuong) AS TongSoLuong,
							  
							  s.Gia
							 
							 
                        INTO #Results1
                        FROM HoaDons  h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
						inner join Size sz on s.MaSize=sz.MaSize
					    WHERE  						
						((@fr_NgayTao IS NULL
                        AND @to_NgayTao IS NULL)
                        OR (@fr_NgayTao IS NOT NULL
                            AND @to_NgayTao IS NULL
                            AND h.NgayTao >= @fr_NgayTao)
                        OR (@fr_NgayTao IS NULL
                            AND @to_NgayTao IS NOT NULL
                            AND h.NgayTao <= @to_NgayTao)
                        OR h.NgayTao >= @fr_NgayTao AND h.NgayTao <= DATEADD(day, 1, @to_NgayTao))  
						GROUP BY s.TenSanPham, s.AnhDaiDien, s.Gia
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY SUM(c.SoLuong) DESC)) AS RowNumber, 
                            
							  s.TenSanPham,
							  s.AnhDaiDien,
							  SUM(c.SoLuong) AS TongSoLuong,
							  
							  s.Gia
                        INTO #Results2
                        FROM HoaDons  h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
						inner join Size sz on s.MaSize=sz.MaSize
					    WHERE  					
						((@fr_NgayTao IS NULL
                        AND @to_NgayTao IS NULL)
                        OR (@fr_NgayTao IS NOT NULL
                            AND @to_NgayTao IS NULL
                            AND h.NgayTao >= @fr_NgayTao)
                        OR (@fr_NgayTao IS NULL
                            AND @to_NgayTao IS NOT NULL
                            AND h.NgayTao <= @to_NgayTao)
                        OR h.NgayTao >= @fr_NgayTao AND h.NgayTao <= DATEADD(day, 1, @to_NgayTao))
						GROUP BY s.TenSanPham, s.AnhDaiDien, s.Gia
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[Chuyenmuc_search]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Chuyenmuc_search] (@page_index  INT, 
                                 @page_size  int)
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaChuyenMuc ASC)) AS RowNumber, 
                              h.MaChuyenMuc,
							  h.TenChuyenMuc,
							  h.DacBiet,
							  h.NoiDung
							  
                        INTO #Results1
                        FROM ChuyenMucs as h 
					      
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
						SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaChuyenMuc ASC)) AS RowNumber, 
                              h.MaChuyenMuc,
							  h.TenChuyenMuc,
							  h.DacBiet,
							  h.NoiDung
                        INTO #Results2
                        FROM ChuyenMucs as h 
						
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[create_chuyen_muc]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[create_chuyen_muc](
@TenChuyenMuc nvarchar(250),
@NoiDung nvarchar(250))
as
begin
	insert into ChuyenMucs(TenChuyenMuc,NoiDung)
	values (@TenChuyenMuc,@NoiDung)
end
GO
/****** Object:  StoredProcedure [dbo].[create_CTTK]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[create_CTTK](
@MaTaiKhoan int,
@Hoten nvarchar(250),
@DiaChi nvarchar(250),
@SDT nvarchar(250),
@Anh nvarchar(250))
as
begin
	insert into ChiTietTaiKhoan(MaTaiKhoan,HoTen,DiaChi,SoDienThoai,AnhDaiDien)
	values (@MaTaiKhoan,@Hoten,@DiaChi,@SDT,@Anh)
end
GO
/****** Object:  StoredProcedure [dbo].[create_gio_hang]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[create_gio_hang](
@MaTaiKhoan int,
@MaSanPham int)
as
begin
	insert into GioHang(MaTaiKhoan,MaSanPham)
	values (@MaTaiKhoan,@MaSanPham)
end
GO
/****** Object:  StoredProcedure [dbo].[create_khach_hang]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[create_khach_hang](
@TenKH nvarchar(50),
@diachi nvarchar(250),
@sdt nvarchar(50))
as
begin
	insert into KhachHang(TenKH,DiaChi,SDT)
	values (@TenKH,@diachi,@sdt)
end
GO
/****** Object:  StoredProcedure [dbo].[create_login]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[create_login](
@LoaiTaiKhoan int,
@TenTaiKhoan nvarchar(250),
@MatKhau nvarchar(250),
@Email nvarchar(250))
as
begin
	insert into TaiKhoan(LoaiTaiKhoan,TenTaiKhoan,MatKhau,Email)
	values (@LoaiTaiKhoan,@TenTaiKhoan,@MatKhau,@Email)
end
GO
/****** Object:  StoredProcedure [dbo].[create_NhaPhanPhoi]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[create_NhaPhanPhoi](
@TenNPP nvarchar(50),
@diachi nvarchar(250),
@sdt nvarchar(50))
as
begin
	insert into NhaPhanPhois(TenNhaPhanPhoi,DiaChi,SoDienThoai)
	values (@TenNPP,@diachi,@sdt)
end
GO
/****** Object:  StoredProcedure [dbo].[create_San_Pham]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[create_San_Pham](

@MaChuyenMuc int,
@Anh nvarchar(250),
@TenSanPham nvarchar(max),
@Gia int,
@SoLuong int,
@MaSize int)
as
begin
	insert into SanPhams(MaChuyenMuc,AnhDaiDien,TenSanPham,Gia,SoLuong,MaSize)
	values (@MaChuyenMuc,@Anh,@TenSanPham,@Gia,@SoLuong,@MaSize)
end
GO
/****** Object:  StoredProcedure [dbo].[create_TaiKhoanVaChiTietTaiKhoan]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[create_TaiKhoanVaChiTietTaiKhoan](
    @LoaiTaiKhoan int,
    @TenTaiKhoan nvarchar(250),
    @MatKhau nvarchar(250),
    @Email nvarchar(250),
    @Hoten nvarchar(250),
    @DiaChi nvarchar(250),
    @SDT nvarchar(250))
AS
BEGIN
    DECLARE @MaTaiKhoan int;

    -- Phần 1: Tạo tài khoản và lấy MaTaiKhoan mới
    BEGIN
        INSERT INTO TaiKhoan(LoaiTaiKhoan, TenTaiKhoan, MatKhau, Email)
        VALUES (@LoaiTaiKhoan, @TenTaiKhoan, @MatKhau, @Email);

        -- Lấy MaTaiKhoan mới tạo
        SET @MaTaiKhoan = SCOPE_IDENTITY();
    END;

    -- Phần 2: Tạo chi tiết tài khoản với MaTaiKhoan mới
    BEGIN
        INSERT INTO KhachHang( TenKH, DiaChi, SDT, MaTaiKhoan)
        VALUES ( @Hoten, @DiaChi, @SDT, @MaTaiKhoan);
    END;
END;
GO
/****** Object:  StoredProcedure [dbo].[CTHD_GetByID]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CTHD_GetByID]
@MaID int
as
begin
select * from ChiTietHoaDons as k inner join SanPhams as s on k.MaSanPham=s.MaSanPham 
where k.MaChiTietHoaDon=@MaID 
end
GO
/****** Object:  StoredProcedure [dbo].[Delete_chuyen_muc]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Delete_chuyen_muc](
@MaChuyenMuc int
)
as
begin
	delete from ChuyenMucs
	where MaChuyenMuc=@MaChuyenMuc
end
GO
/****** Object:  StoredProcedure [dbo].[delete_giohang]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[delete_giohang]
as
begin
	delete from GioHang 
end
GO
/****** Object:  StoredProcedure [dbo].[delete_khachhang]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[delete_khachhang](@MaKH nvarchar(50))
as
begin
	delete from KhachHang where MaKH=@MaKH
end
GO
/****** Object:  StoredProcedure [dbo].[delete_NPP]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[delete_NPP](@MaNPP int)
as
begin
	delete from NhaPhanPhois where MaNhaPhanPhoi=@MaNPP
end
GO
/****** Object:  StoredProcedure [dbo].[Get_all_GioHang]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Get_all_GioHang]
as
begin
	select*from GioHang
end
GO
/****** Object:  StoredProcedure [dbo].[Get_all_Size]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Get_all_Size] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_SP Nvarchar(50)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY sz.TenSize ASC)) AS RowNumber, 
							  s.MaSize,
							  sz.TenSize
							  
                        INTO #Results1
                        FROM SanPhams  s
						inner join Size sz on s.MaSize = sz.MaSize
					    WHERE  (@ten_SP = '' Or s.TenSanPham = @ten_SP) 					
						          
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY sz.TenSize ASC)) AS RowNumber, 
							  s.MaSize,
							  sz.TenSize
							
                        INTO #Results2
                        FROM SanPhams  s
						inner join Size sz on s.MaSize = sz.MaSize
					    WHERE  (@ten_SP = '' Or s.TenSanPham = @ten_SP) 	
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[Get_List_CTHD]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Get_List_CTHD](@MaHD int)
as
	begin
		select*
		from ChiTietHoaDons c inner join SanPhams s on c.MaSanPham=s.MaSanPham inner join Size si on s.MaSize=si.MaSize 
		where c.MaHoaDon=@MaHD
	end
GO
/****** Object:  StoredProcedure [dbo].[Get_List_CTHDN]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Get_List_CTHDN](@MaHD int)
as
	begin
		select *
		from ChiTietHoaDonNhaps c inner join SanPhams s on c.MaSanPham=s.MaSanPham  
		inner join Size as si on s.MaSize=si.MaSize
		where c.MaHoaDon=@MaHD
end
GO
/****** Object:  StoredProcedure [dbo].[Get_NhaPhanPhoi]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Get_NhaPhanPhoi]
@MaID int
as
begin
select * from NhaPhanPhois as k where k.MaNhaPhanPhoi=@MaID 
end
GO
/****** Object:  StoredProcedure [dbo].[getInforTaiKhoan]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[getInforTaiKhoan](@MaTaiKhoan int)
AS
BEGIN
   select*
	from TaiKhoan as tk inner join ChiTietTaiKhoan as cttk on tk.MaTaiKhoan=cttk.MaTaiKhoan
	where tk.MaTaiKhoan = @MaTaiKhoan
END;
GO
/****** Object:  StoredProcedure [dbo].[HoaDon_Delete]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HoaDon_Delete](@MaHoaDon int)
as
begin
	delete from HoaDons where MaHoaDon=@MaHoaDon
end
GO
/****** Object:  StoredProcedure [dbo].[HoaDon_getbyid]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HoaDon_getbyid]
@MaHD int
as
begin
select * from HoaDons as k where k.MaHoaDon=@MaHD
end
GO
/****** Object:  StoredProcedure [dbo].[HoaDon_Search]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[HoaDon_Search] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_khach Nvarchar(50)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaHoaDon ASC)) AS RowNumber, 
                              h.MaHoaDon,
							  h.MaKH,
							  h.TrangThai,
							  h.NgayTao,
							  h.TongGia,
							  h.DiaChiGiaoHang,
							  kh.TenKH

                        INTO #Results1
                        FROM HoaDons  h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join KhachHang kh on h.MaKH=kh.MaKH
					    WHERE  (@ten_khach = '' Or kh.TenKH like N'%'+@ten_khach+'%') 
						group by h.MaHoaDon,
							  h.MaKH,
							  h.TrangThai,
							  h.NgayTao,
							  h.TongGia,
							  h.DiaChiGiaoHang,
							  kh.TenKH
					             
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaHoaDon ASC)) AS RowNumber, 
                              h.MaHoaDon,
							  h.MaKH,
							  h.TrangThai,
							  h.NgayTao,
							  h.TongGia,
							  h.DiaChiGiaoHang,
							  kh.TenKH
                        INTO #Results2
                        FROM HoaDons  h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join KhachHang kh on h.MaKH=kh.MaKH
					    WHERE  (@ten_khach = '' Or kh.TenKH like N'%'+@ten_khach+'%') 		
						group by h.MaHoaDon,
							  h.MaKH,
							  h.TrangThai,
							  h.NgayTao,
							  h.TongGia,
							  h.DiaChiGiaoHang,
							  kh.TenKH

						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[HoaDonNhap_Delete]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[HoaDonNhap_Delete](@MaHD int)
as
begin
	delete from HoaDonNhaps where MaHoaDon=@MaHD
end
GO
/****** Object:  StoredProcedure [dbo].[HoaDonNhap_Search]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[HoaDonNhap_Search] (@page_index  INT, 
                                       @page_size   INT
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaHoaDon ASC)) AS RowNumber, 
                              h.MaHoaDon,
							  h.MaNhaPhanPhoi,
							  h.NgayTao,
							  h.KieuThanhToan,
							  h.MaTaiKhoan,
							  h.TongTien,
							  n.TenNhaPhanPhoi
                        INTO #Results1
                        FROM HoaDonNhaps  h inner join NhaPhanPhois n on h.MaNhaPhanPhoi=n.MaNhaPhanPhoi
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaHoaDon ASC)) AS RowNumber, 
                              h.MaHoaDon,
							  h.MaNhaPhanPhoi,
							  h.NgayTao,
							  h.KieuThanhToan,
							  h.MaTaiKhoan,
							  h.TongTien,
							  n.TenNhaPhanPhoi
                        INTO #Results2
                        FROM HoaDonNhaps  h		inner join NhaPhanPhois n on h.MaNhaPhanPhoi=n.MaNhaPhanPhoi
						
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[KH_get_by_id]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[KH_get_by_id]
@MaID int
as
begin
select * from KhachHang as k where k.MaKH=@MaID 
end
GO
/****** Object:  StoredProcedure [dbo].[NhaPhanPhoi_search]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[NhaPhanPhoi_search] (@page_index  INT, 
                                 @page_size  int 			  
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaNhaPhanPhoi ASC)) AS RowNumber, 
                              h.MaNhaPhanPhoi,
							  h.TenNhaPhanPhoi,
							  h.DiaChi,
							  h.SoDienThoai,
							  h.MoTa
                        INTO #Results1
                        FROM NhaPhanPhois as h 
					      
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
						SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaNhaPhanPhoi ASC)) AS RowNumber, 
                              h.MaNhaPhanPhoi,
							  h.TenNhaPhanPhoi,
							  h.DiaChi,
							  h.SoDienThoai,
							  h.MoTa
                        INTO #Results2
                        FROM NhaPhanPhois as h 
						
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Delete]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SanPham_Delete](@MaSP nvarchar(50))
as
begin
	delete from SanPhams where MaSanPham=@MaSP
end
GO
/****** Object:  StoredProcedure [dbo].[Sanpham_getbyID]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Sanpham_getbyID]
@MaID nvarchar(30)
as
begin
select * from SanPhams as k where k.MaSanPham=@MaID 
end
GO
/****** Object:  StoredProcedure [dbo].[SanPham_search]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPham_search] (@page_index  INT, 
                                       @page_size   INT,
									   @TenSP nvarchar(10)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaSanPham ASC)) AS RowNumber, 
                              h.MaSanPham,
							  h.MaChuyenMuc,
							  h.TenSanPham,
							  h.AnhDaiDien,
							  h.MaSize,
							  h.Gia,
							  h.SoLuong,
							  s.TenSize,
							  c.TenChuyenMuc
                        INTO #Results1
                        FROM SanPhams  h inner join Size s on h.MaSize=s.MaSize
									inner join ChuyenMucs c on c.MaChuyenMuc=h.MaChuyenMuc
					    where
							(@TenSP = '' Or h.TenSanPham like N'%'+@TenSP+'%') 
						
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaSanPham ASC)) AS RowNumber, 
                              h.MaSanPham,
							  h.MaChuyenMuc,
							  h.TenSanPham,
							  h.AnhDaiDien,
							  h.MaSize,
							  h.Gia,
							  h.SoLuong,
							   s.TenSize,
							  c.TenChuyenMuc
                        INTO #Results2
                        FROM SanPhams  h inner join Size s on h.MaSize=s.MaSize
									inner join ChuyenMucs c on c.MaChuyenMuc=h.MaChuyenMuc
		
						where
							(@TenSP = '' Or h.TenSanPham like N'%'+@TenSP+'%') 
						
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[SanPham_Update]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SanPham_Update]
(
@MaSP int,
@MaChuyenMuc int,
@Anh nvarchar(max),
@TenSanPham nvarchar(max),
@Gia int,
@SoLuong int,
@MaSize int
)
AS
BEGIN
    UPDATE SanPhams
    SET MaChuyenMuc = @MaChuyenMuc,
        AnhDaiDien = @Anh,
        TenSanPham = @TenSanPham,
        Gia = @Gia,
		SoLuong=@SoLuong,
		MaSize=@MaSize
    WHERE MaSanPham = @MaSP;
END;
GO
/****** Object:  StoredProcedure [dbo].[Search_MaKH]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Search_MaKH]( @TenKH nvarchar(250),@DiaChi nvarchar(250),@SDT nvarchar(11))
as
begin
	select*
	from KhachHang k 
	where k.TenKH=@TenKH and k.DiaChi=@DiaChi and k.SDT=@SDT
end 
GO
/****** Object:  StoredProcedure [dbo].[Search_sp_TheoSize]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Search_sp_TheoSize]( @TenSP nvarchar(250),
									   @MaSize int)
as
begin
	select s.MaSanPham,s.MaChuyenMuc,s.TenSanPham,s.AnhDaiDien,s.Gia,s.SoLuong,s.MaSize,sz.TenSize
	from SanPhams s inner join Size sz on s.MaSize=sz.MaSize 
	where ( @TenSP = '' Or s.TenSanPham like N'%'+ @TenSP+'%') and
							(@MaSize = s.MaSize)
end 
GO
/****** Object:  StoredProcedure [dbo].[Size_get_by_id]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Size_get_by_id]
@MaID nvarchar(30)
as
begin
select * from Size as k where k.MaSize=@MaID 
end
GO
/****** Object:  StoredProcedure [dbo].[Size_search]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Size_search] (@page_index  INT, 
                                 @page_size  int)
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaSize ASC)) AS RowNumber, 
                              h.MaSize,
							  h.TenSize,
							  h.Ghichu
                        INTO #Results1
                        FROM Size as h 
					      
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
						SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaSize ASC)) AS RowNumber, 
                              h.MaSize,
							  h.TenSize,
							  h.Ghichu
                        INTO #Results2
                        FROM Size as h 
						
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_create_KhachHang_va_HoaDon]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_create_KhachHang_va_HoaDon] (
    @TenKH NVARCHAR(50),
    @diachi NVARCHAR(250),
    @sdt NVARCHAR(50),
    @TrangThai BIT,
    @NgayTao DATETIME,
    @DiaChiGiaoHang NVARCHAR(250),
    @TongGia FLOAT,
    @list_json_chitiethoadon NVARCHAR(MAX)
)
AS
BEGIN
    DECLARE @MaKH INT;

    -- Tạo khách hàng mới và lưu mã khách hàng vào @MaKH
    INSERT INTO KhachHang (TenKH, DiaChi, SDT)
    VALUES (@TenKH, @diachi, @sdt);

    -- Lấy MaKH của khách hàng vừa tạo
    SET @MaKH = SCOPE_IDENTITY();

    -- Tạo hóa đơn bán với mã khách hàng vừa tạo
    INSERT INTO HoaDons (TrangThai, NgayTao, TongGia, DiaChiGiaoHang, MaKH)
    VALUES (@TrangThai, @NgayTao, @TongGia, @DiaChiGiaoHang, @MaKH);

    DECLARE @MaHoaDon INT;
    SET @MaHoaDon = SCOPE_IDENTITY();

    -- Thêm các chi tiết hóa đơn
    IF (@list_json_chitiethoadon IS NOT NULL)
    BEGIN
        INSERT INTO ChiTietHoaDons (MaSanPham, MaHoaDon, SoLuong, TongGia, GiamGia)
        SELECT JSON_VALUE(p.value, '$.maSanPham'), @MaHoaDon, JSON_VALUE(p.value, '$.soLuong'), JSON_VALUE(p.value, '$.tongGia'), JSON_VALUE(p.value, '$.giamGia')
        FROM OPENJSON(@list_json_chitiethoadon) AS p;
    END;

    SELECT @MaKH AS 'MaKH', @MaHoaDon AS 'MaHoaDon'; -- Trả về MaKH và MaHoaDon
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_get_all_hoadons_with_details]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_get_all_hoadons_with_details]
AS
BEGIN
    SELECT
        H.MaHoaDon,
        H.TrangThai,
        H.NgayTao,
        H.TongGia,
        H.DiaChiGiaoHang,
        H.MaKH,
        (
            SELECT
                MaSanPham,
                SoLuong,
                TongGia,
                GiamGia
            FROM ChiTietHoaDons CH
            WHERE CH.MaHoaDon = H.MaHoaDon
            FOR JSON AUTO
        ) AS ChiTietHoaDonJSON
    FROM HoaDons H;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_hoa_don_update]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_hoa_don_update]
(@MaHoaDon        int,  
 @MaKH int,
 @TrangThai         nvarchar(1),  
 @NgayTao datetime,
 @TongGia float,
 @DiaChiGiaoHang nvarchar(250),
 @list_json_chitiethoadon NVARCHAR(MAX)
)
AS
    BEGIN
		UPDATE HoaDons
		SET
			TrangThai = @TrangThai,
			NgayTao=@NgayTao,
			DiaChiGiaoHang=@DiaChiGiaoHang,
			TongGia=@TongGia,
			MaKH=@MaKH
		WHERE MaHoaDon = @MaHoaDon;
		
		IF(@list_json_chitiethoadon IS NOT NULL) 
		BEGIN
			 -- Insert data to temp table 
		   SELECT
			  JSON_VALUE(p.value, '$.maChiTietHoaDon') as maChiTietHoaDon,
			  JSON_VALUE(p.value, '$.maHoaDon') as maHoaDon,
			  JSON_VALUE(p.value, '$.maSanPham') as maSanPham,
			  JSON_VALUE(p.value, '$.soLuong') as soLuong,
			  JSON_VALUE(p.value, '$.tongGia') as tongGia,
			  JSON_VALUE(p.value, '$.giamGia') as giamGia,
			  JSON_VALUE(p.value, '$.status') AS status 
			  INTO #Results 
		   FROM OPENJSON(@list_json_chitiethoadon) AS p;
		 
		 -- Insert data to table with STATUS = 1;
			INSERT INTO ChiTietHoaDons (MaSanPham, 
						  MaHoaDon,
                          SoLuong, 
                          TongGia,
						  GiamGia) 
			   SELECT
				  #Results.maSanPham,
				  @MaHoaDon,
				  #Results.soLuong,
				  #Results.tongGia,
				  #Results.giamGia
			   FROM  #Results 
			   WHERE #Results.status = '1' 
			
			-- Update data to table with STATUS = 2
			  UPDATE ChiTietHoaDons		
			  SET
				 SoLuong = #Results.soLuong,
				 TongGia = #Results.tongGia,
				 GiamGia = #Results.giamGia
			  FROM #Results 
			  WHERE  ChiTietHoaDons.maChiTietHoaDon = #Results.maChiTietHoaDon AND #Results.status = '2';
			
			-- Delete data to table with STATUS = 3
			DELETE C
			FROM ChiTietHoaDons C
			INNER JOIN #Results R
				ON C.maChiTietHoaDon=R.maChiTietHoaDon
			WHERE R.status = '3';
			DROP TABLE #Results;
		END;
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_hoadon_create]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_hoadon_create]
( 
 @TrangThai nvarchar(1),  
 @NgayTao datetime,
 @DiaChiGiaoHang nvarchar(250),
 @TongGia float,
 @MaKH int,
 @list_json_chitiethoadon NVARCHAR(MAX)
)
AS
    BEGIN
		DECLARE @MaHoaDon INT;
        INSERT INTO HoaDons
                (
				TrangThai,
				NgayTao,
				TongGia,
				DiaChiGiaoHang,
				MaKH
                )
                VALUES
                (
                 @TrangThai,
				 @NgayTao,
				 @TongGia,
				 @DiaChiGiaoHang,
				 @MaKH
                );

				SET @MaHoaDon = (SELECT SCOPE_IDENTITY());
                IF(@list_json_chitiethoadon IS NOT NULL)
                    BEGIN
                        INSERT INTO ChiTietHoaDons
						 (MaSanPham, 
						  MaHoaDon,
                          SoLuong, 
                          TongGia,
						  GiamGia
                        )
                    SELECT JSON_VALUE(p.value, '$.maSanPham'), 
                            @MaHoaDon, 
                            JSON_VALUE(p.value, '$.soLuong'), 
                            JSON_VALUE(p.value, '$.tongGia'),
							JSON_VALUE(p.value, '$.giamGia')
                    FROM OPENJSON(@list_json_chitiethoadon) AS p;
				-- Cập nhật số lượng sản phẩm
				UPDATE sp
				SET sp.SoLuong = sp.SoLuong - cthdn.SoLuong
				FROM SanPhams sp
				INNER JOIN ChiTietHoaDons cthdn ON sp.MaSanPham = cthdn.MaSanPham
				WHERE cthdn.MaHoaDon = @MaHoaDon
				AND sp.MaSanPham = cthdn.MaSanPham;
                END;
        SELECT '';
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_hoadonnhap_create]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_hoadonnhap_create]
( 
 @MaNhaPhanPhoi int,
 @NgayTao datetime,
 @KieuThanhToan nvarchar(250),
 @MaTaiKhoan int,
 @TongTien decimal(18, 0),
 @list_js_ChitietHDN NVARCHAR(MAX)
)
AS
BEGIN
    DECLARE @MaHoaDon INT;
    INSERT INTO HoaDonNhaps
            ( 
            MaNhaPhanPhoi,
            NgayTao,
            KieuThanhToan,
            MaTaiKhoan,
            TongTien
            )
            VALUES
            (
             @MaNhaPhanPhoi,
             @NgayTao, 
             @KieuThanhToan,
             @MaTaiKhoan,
             @TongTien
            );
        
            SET @MaHoaDon = (SELECT SCOPE_IDENTITY());
        
            IF(@list_js_ChitietHDN IS NOT NULL)
            BEGIN
                INSERT INTO ChiTietHoaDonNhaps
                 (
                  MaSanPham,
                  MaHoaDon,
                  SoLuong, 
                  DonViTinh,
                  GiaNhap,
                  TongTien               
                )
                SELECT  
                    JSON_VALUE(p.value, '$.maSanPham'),
                    @MaHoaDon,
                    JSON_VALUE(p.value, '$.soLuong'), 
                    JSON_VALUE(p.value, '$.donViTinh'),
                    JSON_VALUE(p.value,'$.giaNhap'),
                    JSON_VALUE(p.value, '$.tongTien')    
                FROM OPENJSON(@list_js_ChitietHDN) AS p;

              -- Cập nhật số lượng sản phẩm
				UPDATE sp
				SET sp.SoLuong = sp.SoLuong + cthdn.SoLuong
				FROM SanPhams sp
				INNER JOIN ChiTietHoaDonNhaps cthdn ON sp.MaSanPham = cthdn.MaSanPham
				WHERE cthdn.MaHoaDon = @MaHoaDon
				AND sp.MaSanPham = cthdn.MaSanPham;
            END;
    
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_khach_search]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_khach_search] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_khach Nvarchar(50),
									   @dia_chi Nvarchar(250),
										@MaTK int
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenKH ASC)) AS RowNumber, 
                              k.MaKH,
							  k.TenKH,
							  k.DiaChi,
							  k.SDT,
							  k.MaTaiKhoan
                        INTO #Results1
                        FROM KhachHang AS k
					    WHERE  (@ten_khach = '' Or k.TenKH like N'%'+@ten_khach+'%') and						
						(@dia_chi = '' Or k.DiaChi like N'%'+@dia_chi+'%') and 
						(@MaTK =0 or @MaTK=k.MaTaiKhoan); 
						
                        SELECT @RecordCount = COUNT(*)--Gắn số lượng hàng vào biến recordCount
                        FROM #Results1;

                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY TenKH ASC)) AS RowNumber, 
                              k.MaKH,
							  k.TenKH,
							  k.DiaChi,
							  k.SDT,
							  k.MaTaiKhoan
                        INTO #Results2
                        FROM KhachHang AS k
					    WHERE  (@ten_khach = '' Or k.TenKH like N'%'+@ten_khach+'%') and						
						(@dia_chi = '' Or k.DiaChi like N'%'+@dia_chi+'%') and
						(@MaTK =0 or @MaTK=k.MaTaiKhoan);                  
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2;                        
                        DROP TABLE #Results1; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_login]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[sp_login](@taikhoan nvarchar(50), @matkhau nvarchar(50))
AS
    BEGIN
      SELECT  *
      FROM TaiKhoan
      where TenTaiKhoan= @taikhoan and MatKhau = @matkhau;
    END;
GO
/****** Object:  StoredProcedure [dbo].[sp_thong_ke_khachhang]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_thong_ke_khachhang] (@page_index  INT, 
                                       @page_size   INT,
									   @ten_khach Nvarchar(50),
									   @fr_NgayTao datetime, 
									   @to_NgayTao datetime
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.NgayTao ASC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  c.SoLuong,
							  c.TongGia,
							  h.NgayTao,
							  kh.TenKH,
							  kh.Diachi
                        INTO #Results1
                        FROM HoaDons  h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham 
						inner join KhachHang kh on h.MaKH=kh.MaKH
					    WHERE  (@ten_khach = '' Or kh.TenKH like N'%'+@ten_khach+'%') and						
							h.NgayTao >= @fr_NgayTao AND h.NgayTao <= DATEADD(day, 1, @to_NgayTao);             
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.NgayTao ASC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  c.SoLuong,
							  c.TongGia,
							  h.NgayTao,
							  kh.TenKH,
							  kh.Diachi
                        INTO #Results2
                        FROM HoaDons  h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
						inner join KhachHang kh on h.MaKH=kh.MaKH
					    WHERE  (@ten_khach = '' Or kh.TenKH like N'%'+@ten_khach+'%') and						
						h.NgayTao >= @fr_NgayTao AND h.NgayTao <= DATEADD(day, 1, @to_NgayTao);
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[ThongKeDoanhThu]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ThongKeDoanhThu]
    @from_Ngay DATETIME,
    @to_Ngay DATETIME
AS
BEGIN
    SET NOCOUNT ON;
    SELECT 
        --N'Tổng' AS Ngay,
        COUNT( c.MaHoaDon) AS SoDonHang,
        SUM(h.TongGia) AS DoanhThu,
		sum(c.SoLuong) as SoLuongSP
    FROM 
        HoaDons h inner join ChiTietHoaDons c on h.MaHoaDon=c.MaHoaDon
    WHERE 
         h.NgayTao >= @from_Ngay AND h.NgayTao <= DATEADD(day, 1, @to_Ngay);
END;
GO
/****** Object:  StoredProcedure [dbo].[thongkeTopCustomer]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[thongkeTopCustomer]( @fr_NgayTao datetime, 
									   @to_NgayTao datetime)
as
begin
	select k.MaKH,k.TenKH,k.DiaChi,k.SDT,Sum(c.SoLuong)as TongMua
	from KhachHang as k inner join HoaDons as h on k.MaKH=h.MaKH
						inner join ChiTietHoaDons as c on c.MaHoaDon=h.MaHoaDon
	where h.NgayTao >= @fr_NgayTao AND h.NgayTao <= DATEADD(day, 1, @to_NgayTao)
	group by k.MaKH,k.TenKH,k.DiaChi,k.SDT
	order by Sum(c.SoLuong) desc
	
end
GO
/****** Object:  StoredProcedure [dbo].[Update_chuyen_muc]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc  [dbo].[Update_chuyen_muc](
@MaChuyenMuc int,
@TenChuyenMuc nvarchar(250),
@NoiDung nvarchar(250)
)
as
begin
	update ChuyenMucs
	set TenChuyenMuc=@TenChuyenMuc,
		NoiDung=@NoiDung
	where
		MaChuyenMuc=@MaChuyenMuc
end
GO
/****** Object:  StoredProcedure [dbo].[update_khach_hang]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_khach_hang](
@MaKH nvarchar(50),
@TenKH nvarchar(50),
@diachi nvarchar(250),
@sdt nvarchar(50))
as
begin
	update KhachHang
	set TenKH=@TenKH, DiaChi=@diachi, SDT=@sdt
	where @MaKH=MaKH
end
GO
/****** Object:  StoredProcedure [dbo].[update_NhaPhanPhoi]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[update_NhaPhanPhoi](
@MaNPP int,
@TenNPP nvarchar(50),
@diachi nvarchar(250),
@sdt nvarchar(50))
as
begin
	update NhaPhanPhois
	set TenNhaPhanPhoi=@TenNPP, DiaChi=@diachi, SoDienThoai=@sdt
	where @MaNPP=MaNhaPhanPhoi
end
GO
/****** Object:  StoredProcedure [dbo].[User_Ao_Nam_Search]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[User_Ao_Nam_Search] (@page_index  INT, 
                                       @page_size   INT,
									   @TenCM nvarchar(10),
									   @TenSize nvarchar(10)
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaSanPham ASC)) AS RowNumber, 
                              h.MaSanPham,
							  h.MaChuyenMuc,
							  c.TenChuyenMuc,
							  h.TenSanPham,
							  h.AnhDaiDien,
							  h.MaSize,
							  s.TenSize,
							  h.Gia,
							  h.SoLuong
							
                        INTO #Results1
                        FROM SanPhams  h
						inner join ChuyenMucs c on c.MaChuyenMuc = h.MaChuyenMuc
						inner join Size s on s.MaSize = h.MaSize
					    where
							(@TenCM = '' Or c.TenChuyenMuc like N'%'+@TenCM+'%') and
							(@TenSize = '' Or s.TenSize like N'%'+@TenSize+'%')
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaSanPham ASC)) AS RowNumber, 
                              h.MaSanPham,
							  h.MaChuyenMuc,
							  c.TenChuyenMuc,
							  h.TenSanPham,
							  h.AnhDaiDien,
							  h.MaSize,
							  s.TenSize,
							  h.Gia,
							  h.SoLuong
                        INTO #Results2
                        FROM SanPhams  h
						inner join ChuyenMucs c on c.MaChuyenMuc = h.MaChuyenMuc
						inner join Size s on s.MaSize = h.MaSize
						where
							(@TenCM = '' Or c.TenChuyenMuc like N'%'+@TenCM+'%') and
							(@TenSize = '' Or s.TenSize like N'%'+@TenSize+'%')
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[User_Chuyenmuc_search]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[User_Chuyenmuc_search] (@page_index  INT, 
                                 @page_size  int,
								 @TenChuyenMuc nvarchar(250))
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaChuyenMuc ASC)) AS RowNumber, 
                              h.MaChuyenMuc,
							  h.TenChuyenMuc,
							  h.DacBiet,
							  h.NoiDung
							  
                        INTO #Results1
                        FROM ChuyenMucs as h 
					    where (@TenChuyenMuc IS NULL OR h.TenChuyenMuc LIKE '%' + @TenChuyenMuc + '%'); -- New condition for category name
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
						SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaChuyenMuc ASC)) AS RowNumber, 
                              h.MaChuyenMuc,
							  h.TenChuyenMuc,
							  h.DacBiet,
							  h.NoiDung
                        INTO #Results2
                        FROM ChuyenMucs as h 
						 where (@TenChuyenMuc IS NULL OR h.TenChuyenMuc LIKE '%' + @TenChuyenMuc + '%'); -- New condition for category name
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[user_HistoryCart]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[user_HistoryCart] (
				@MaKH int,
				@TrangThai nvarchar(1) = null
					)
AS
    BEGIN
       select h.MaHoaDon,h.DiaChiGiaoHang,h.NgayTao,h.TrangThai,s.TenSanPham,s.AnhDaiDien,s.Gia,c.SoLuong,c.TongGia,si.TenSize
	   from HoaDons as h inner join KhachHang as k on k.MaKH=h.MaKH 
	   inner join ChiTietHoaDons as c on c.MaHoaDon = h.MaHoaDon
	   inner join SanPhams as s on s.MaSanPham=c.MaSanPham 
	   inner join Size as si on si.MaSize=s.MaSize
      where @MaKH=k.MaKH and
			(@TrangThai IS NULL OR h.TrangThai = @TrangThai)
    END;
GO
/****** Object:  StoredProcedure [dbo].[User_Hot_Product]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[User_Hot_Product] (@page_index  INT, 
                                       @page_size   INT,
									   @fr_NgayTao datetime, 
									   @to_NgayTao datetime
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY SUM(c.SoLuong) DESC)) AS RowNumber, 
						      s.MaSanPham,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  SUM(c.SoLuong) AS TongSoLuong,
							  s.Gia,
							  h.NgayTao
							 
                        INTO #Results1
                        FROM HoaDons  h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
					    WHERE  						
						((@fr_NgayTao IS NULL
                        AND @to_NgayTao IS NULL)
                        OR (@fr_NgayTao IS NOT NULL
                            AND @to_NgayTao IS NULL
                            AND h.NgayTao >= @fr_NgayTao)
                        OR (@fr_NgayTao IS NULL
                            AND @to_NgayTao IS NOT NULL
                            AND h.NgayTao <= @to_NgayTao)
                        OR (h.NgayTao BETWEEN @fr_NgayTao AND @to_NgayTao))       
						GROUP BY s.MaSanPham, s.TenSanPham, s.AnhDaiDien, s.Gia, h.NgayTao
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY SUM(c.SoLuong) DESC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  SUM(c.SoLuong) AS TongSoLuong,
							  s.Gia,
							  h.NgayTao
                        INTO #Results2
                        FROM HoaDons  h
						inner join ChiTietHoaDons c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham
					    WHERE  					
						((@fr_NgayTao IS NULL
                        AND @to_NgayTao IS NULL)
                        OR (@fr_NgayTao IS NOT NULL
                            AND @to_NgayTao IS NULL
                            AND h.NgayTao >= @fr_NgayTao)
                        OR (@fr_NgayTao IS NULL
                            AND @to_NgayTao IS NOT NULL
                            AND h.NgayTao <= @to_NgayTao)
                        OR (h.NgayTao BETWEEN @fr_NgayTao AND @to_NgayTao))
						GROUP BY s.MaSanPham, s.TenSanPham, s.AnhDaiDien, s.Gia, h.NgayTao
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[User_New_Products]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[User_New_Products] (@page_index  INT, 
                                       @page_size   INT
									   --@fr_NgayTao datetime, 
									   --@to_NgayTao datetime
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.NgayTao DESC)) AS RowNumber, 
						      s.MaSanPham,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  h.NgayTao
							 
                        INTO #Results1
                        FROM HoaDonNhaps  h
						inner join ChiTietHoaDonNhaps c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham 
					 --   WHERE  						
						--((@fr_NgayTao IS NULL
      --                  AND @to_NgayTao IS NULL)
      --                  OR (@fr_NgayTao IS NOT NULL
      --                      AND @to_NgayTao IS NULL
      --                      AND h.NgayTao >= @fr_NgayTao)
      --                  OR (@fr_NgayTao IS NULL
      --                      AND @to_NgayTao IS NOT NULL
      --                      AND h.NgayTao <= @to_NgayTao)
      --                  OR (h.NgayTao BETWEEN @fr_NgayTao AND @to_NgayTao))       
						GROUP BY s.MaSanPham, s.TenSanPham, s.AnhDaiDien, s.Gia, h.NgayTao
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.NgayTao DESC)) AS RowNumber, 
						      s.MaSanPham,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  s.Gia,
							  h.NgayTao
							 
                        INTO #Results2
                        FROM HoaDonNhaps  h
						inner join ChiTietHoaDonNhaps c on c.MaHoaDon = h.MaHoaDon
						inner join SanPhams s on s.MaSanPham = c.MaSanPham 
					 --   WHERE  					
						--((@fr_NgayTao IS NULL
      --                  AND @to_NgayTao IS NULL)
      --                  OR (@fr_NgayTao IS NOT NULL
      --                      AND @to_NgayTao IS NULL
      --                      AND h.NgayTao >= @fr_NgayTao)
      --                  OR (@fr_NgayTao IS NULL
      --                      AND @to_NgayTao IS NOT NULL
      --                      AND h.NgayTao <= @to_NgayTao)
      --                  OR (h.NgayTao BETWEEN @fr_NgayTao AND @to_NgayTao))
						GROUP BY s.MaSanPham, s.TenSanPham, s.AnhDaiDien, s.Gia, h.NgayTao
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[USer_SanPham_search]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[USer_SanPham_search] (@page_index  INT, 
                                       @page_size   INT,
									   @TenSP nvarchar(250),
									   @TenSize nvarchar(10),
									   @MinPrice int,
									   @MaxPrice int
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaSanPham ASC)) AS RowNumber, 
                              h.MaSanPham,
							  h.MaChuyenMuc,
							  c.TenChuyenMuc,
							  h.TenSanPham,
							  h.AnhDaiDien,
							  h.MaSize,
							  s.TenSize,
							  h.Gia,
							  h.SoLuong
							
                        INTO #Results1
                        FROM SanPhams  h
						inner join ChuyenMucs c on c.MaChuyenMuc = h.MaChuyenMuc
						inner join Size s on s.MaSize = h.MaSize
					    where
							(@TenSP = '' Or h.TenSanPham = @TenSP) and
							(@TenSize = '' Or s.TenSize = @TenSize) 
							and	(@MinPrice =0  or h.Gia >= @MinPrice)
							and(@MaxPrice =0  or h.Gia <= @MaxPrice)
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaSanPham ASC)) AS RowNumber, 
                              h.MaSanPham,
							  h.MaChuyenMuc,
							  c.TenChuyenMuc,
							  h.TenSanPham,
							  h.AnhDaiDien,
							  h.MaSize,
							  s.TenSize,
							  h.Gia,
							  h.SoLuong
                        INTO #Results2
                        FROM SanPhams  h
						inner join ChuyenMucs c on c.MaChuyenMuc = h.MaChuyenMuc
						inner join Size s on s.MaSize = h.MaSize
						 where
							(@TenSP = '' Or h.TenSanPham = @TenSP) and
							(@TenSize = '' Or s.TenSize = @TenSize) 
							and	(@MinPrice =0  or h.Gia >= @MinPrice)
							and(@MaxPrice =0  or h.Gia <= @MaxPrice)
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[User_Selling_Products]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[User_Selling_Products] (@page_index  INT, 
                                       @page_size   INT		   
									   )
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT (ROW_NUMBER() OVER(
                              ORDER BY SUM(c.SoLuong) DESC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  SUM(c.SoLuong) AS SoLuongBan,
							  s.Gia
                        INTO #Results1
                        FROM SanPhams  s
						inner join ChiTietHoaDons c on s.MaSanPham= c.MaSanPham
						GROUP BY s.MaSanPham, s.TenSanPham, s.AnhDaiDien, s.Gia
						
					
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT (ROW_NUMBER() OVER(
                              ORDER BY SUM(c.SoLuong) DESC)) AS RowNumber, 
                              s.MaSanPham,
							  s.TenSanPham,
							  s.AnhDaiDien,
							  SUM(c.SoLuong) AS SoLuongBan,
							  s.Gia
                        INTO #Results2
                        FROM SanPhams  s
						inner join ChiTietHoaDons c on s.MaSanPham= c.MaSanPham
						GROUP BY s.MaSanPham, s.TenSanPham, s.AnhDaiDien, s.Gia

					
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
/****** Object:  StoredProcedure [dbo].[User_SP_Search_ChuyenMuc]    Script Date: 08/06/2024 4:15:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[User_SP_Search_ChuyenMuc] (@page_index  INT, 
                                       @page_size   INT,
									   @MaCM int)
									   
									   
AS
    BEGIN
        DECLARE @RecordCount BIGINT;
        IF(@page_size <> 0)
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaSanPham ASC)) AS RowNumber, 
                              h.MaSanPham,
							  h.MaChuyenMuc,
							  c.TenChuyenMuc,
							  h.TenSanPham,
							  h.AnhDaiDien,
							  h.MaSize,
							 
							  h.Gia,
							  h.SoLuong
							
                        INTO #Results1
                        FROM SanPhams  h
						inner join ChuyenMucs c on c.MaChuyenMuc = h.MaChuyenMuc
					    where
							h.MaChuyenMuc=@MaCM
                        SELECT @RecordCount = COUNT(*)
                        FROM #Results1;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results1
                        WHERE ROWNUMBER BETWEEN(@page_index - 1) * @page_size + 1 AND(((@page_index - 1) * @page_size + 1) + @page_size) - 1
                              OR @page_index = -1;
                        DROP TABLE #Results1; 
            END;
            ELSE
            BEGIN
						SET NOCOUNT ON;
                        SELECT(ROW_NUMBER() OVER(
                              ORDER BY h.MaSanPham ASC)) AS RowNumber, 
                              h.MaSanPham,
							  h.MaChuyenMuc,
							  c.TenChuyenMuc,
							  h.TenSanPham,
							  h.AnhDaiDien,
							  h.MaSize,
							  h.Gia,
							  h.SoLuong
                        INTO #Results2
                        FROM SanPhams  h
						inner join ChuyenMucs c on c.MaChuyenMuc = h.MaChuyenMuc
						where
							h.MaChuyenMuc=@MaCM
						SELECT @RecordCount = COUNT(*)
                        FROM #Results2;
                        SELECT *, 
                               @RecordCount AS RecordCount
                        FROM #Results2                        
                        DROP TABLE #Results2; 
        END;
    END;
GO
