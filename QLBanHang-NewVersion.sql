
/****** Object:  Database [QLBanHang]    Script Date: 06/20/2016 18:34:38 ******/

CREATE TABLE [dbo].[Nhanvien](
	[MaNV] [int] IDENTITY(1,1) NOT NULL,
	[HoNV] [nvarchar](50) NULL,
	[Ten] [nvarchar](50) NULL,
	[Diachi] [nvarchar](50) NULL,
	[Dienthoai] [nvarchar](50) NULL,
 CONSTRAINT [PK_Nhanvien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Nhanvien] ON
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (1, N'Lê văn', N'Tâm', N'45 Trần Phú', N'8663447')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (2, N'Trần thị', N'An', N'15 Nguyễn Trãi', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (3, N'Tạ Thành', N'Tâm', N'20 Võ thị Sáu', N'8565666')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (4, N'Ngô Thành', N'Sơn', N'122 Trần Phú', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (5, N'Lê thị', N'Thuỷ', N'25 Ngô Quyền', N'9767677')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (6, N'Nguyễn Hữu', N'An', N'12 Lê Thánh Tôn', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (7, N'Thái Chí', N'An', N'97 Võ văn Tần', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (8, N'Trần Văn', N'Thanh', N'25 Trần Văn Đang', N'0918158')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (9, N'Nguyễn Dũng', N'Nghi', N'65 Trần Văn Thời', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (10, N'Lê Thế', N'Bảo', N'12 Lê Quý Đôn', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (11, N'Lê Dũng', N'Nguyễn', N'321 Lê Lợi', N'6987456')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (12, N'Nguyễn Thị', N'Thủy', N'654 Nguyễn Huệ', N'9998745')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (13, N'Nguyễn Thu', N'Hồng', N'987 Lê Lợi', N'9874561')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (14, N'Trần Thị Thủy', N'Tiên', N'6543 Nguyễn Huệ', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (15, N'Lê Thị', N'Hiền', N'654 Mai Xuân Thời', N'')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (16, N'Trần Văn', N'Thanh', N'Tân Bình', N'123456')
INSERT [dbo].[Nhanvien] ([MaNV], [HoNV], [Ten], [Diachi], [Dienthoai]) VALUES (17, N'Trần Văn', N'Thành', N'Tân Bình', N'12345')
SET IDENTITY_INSERT [dbo].[Nhanvien] OFF
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [int] NOT NULL,
	[TenLoaiSP] [nvarchar](255) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (1, N'Rượu')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (2, N'Bia')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (3, N'Nước ngọt')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (4, N'Điện máy')
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP]) VALUES (5, N'Viết')
/****** Object:  Table [dbo].[KhachHang]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](4) NOT NULL,
	[TenKH] [nvarchar](30) NULL,
	[DiaChi] [nvarchar](30) NULL,
	[DienThoai] [nvarchar](7) NULL,
	[Fax] [nvarchar](12) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH01', N'Anh Hang', N'120 Ha Ton Quyen', N'8171717', N'084088171717')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH02', N'Bong Hong', N'24 Ky Con', N'', N'084088800256')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH03', N'Em Anh', N'6 Ky Hoa', N'', N'084088852258')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH04', N'Ho Han', N'8 Pham van Khoe', N'8430156', N'084088430156')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH05', N'Koko Company', N'90 An Duong Vuong', N'8250102', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH06', N'Queen Cozinha', N'891 An Duong Vuong', N'', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH07', N'Quoc Cuong', N'10 Tan Da', N'8950203', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH08', N'Suoi Tra', N'2817 Minh Phung', N'8356210', N'084088356210')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH09', N'Song Trang', N'187 Lao Tu', N'9450210', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH10', N'Vinh Vien', N'45 Su Van hanh', N'', N'084088654790')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH11', N'TRần Vĩnh Viễn', N'87 Trần Hưng Đạo', N'8855464', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH12', N'Lý Văn Trung', N'123 Tân Tẩn', N'', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH13', N'Cty Minh Hằng', N'456 Công Hòa', N'', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH14', N'Cty Nghĩa Đường', N'12 Lý chính Thắng', N'9874564', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH15', N'Minh Anh', N'15/1 Hậu Giang', N'6548797', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH16', N'Trần Tùng', N'12/15 Hậu Nghĩa', N'6547898', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH17', N'Cty Vĩnh Lợi', N'1812 TRần Quang Khải', N'', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH18', N'Cty Thái Bình Dương', N'145 Nguyễn Huệ', N'6548797', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH19', N'Cty Thần Tài', N'14 Lê Lợi', N'6523154', N'')
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [DiaChi], [DienThoai], [Fax]) VALUES (N'KH20', N'Cty Trần Văn Thời', N'45 Nguyễn Thị Minh Khai', N'4561234', N'')
/****** Object:  Table [dbo].[Users]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Users] ([UserName], [Password]) VALUES (N'admin', N'12345')
INSERT [dbo].[Users] ([UserName], [Password]) VALUES (N'us1', N'12345')
INSERT [dbo].[Users] ([UserName], [Password]) VALUES (N'us2', N'12345')
/****** Object:  Table [dbo].[SanPham]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](4) NOT NULL,
	[TenSP] [nvarchar](20) NULL,
	[Donvitinh] [nvarchar](8) NULL,
	[Dongia] [float] NULL,
	[MaLoaiSP] [int] NULL,
	[HinhSP] [nvarchar](max) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'Bb12', N'Bia Bến thành', N'Chai', 10080, 2, N'~/images/biabenthanhchai.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'BH01', N'Bia Heineken', N'Chai', 20000, 2, N'~/images/biaheinekenchai.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'BS01', N'Bia Sapporo', N'Chai', 25000, 2, N'~/images/biasapporochai.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'Bs14', N'Bia Sài gòn', N'Chai', 15000, 2, N'~/images/biasaigonchai.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'BS15', N'Bia 333', N'Thùng', 215000, 2, N'~/Images/bia33thung.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'BT04', N'Beer Tiger', N'Thùng', 255000, 2, N'~/images/biatigerthung.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'CC06', N'Coca Cola', N'Thùng', 115000, 3, N'~/images/cocacolathung.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'CH07', N'Cassette Sharp 100W', N'Cái', 2250000, 4, N'~/images/cassetsharp.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'CH08', N'Cassette Sharp 500W', N'Cái', 4250000, 4, N'~/images/cassetsharp500w.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'PC01', N'But chi den', N'Cái', 2000, 5, N'~/images/butchiden.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'PL02', N'But long kim', N'Cái', 50000, 5, N'~/images/butlongkim.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'PS05', N'But sap', N'Hộp', 60000, 5, N'~/Images/butsap.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'PS15', N'Pepsi', N'Thùng', 150000, 3, N'~/images/pepsithung.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'RC17', N'Ruou chat do', N'Chai', 110000, 1, N'~/images/ruouchatdo.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'RC19', N'Ruou Champagne', N'Chai', 160000, 1, N'~/images/ruouchampagne.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'RN01', N'Rượu nếp Gò đen', N'Chai', 15000, 1, N'~/images/ruounepgoden.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'RN02', N'Rượu Napoleon ', N'Chai', 3100000, 1, N'~/images/ruounapoleon.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'RX01', N'Rượu XO', N'Chai', 1160000, 1, N'~/images/ruouxo.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'RX12', N'Rượu Xuân Thạnh', N'Chai', 12000, 1, N'~/images/ruouxuanthanh.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'TS01', N'Tivi Sharp 14"', N'Cái', 1600000, 4, N'~/images/tivisharp.jpg')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Donvitinh], [Dongia], [MaLoaiSP], [HinhSP]) VALUES (N'TS21', N'Tivi Sony 20"', N'Cái', 1310000, 4, N'~/images/tivisony.jpg')
/****** Object:  Table [dbo].[HoaDon]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](5) NOT NULL,
	[MaKH] [nvarchar](4) NULL,
	[MaNV] [int] NULL,
	[NgayLapHD] [datetime] NOT NULL,
	[NgayGiaoHang] [datetime] NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD001', N'KH01', 4, CAST(0x00008EE400000000 AS DateTime), CAST(0x00008F6300000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD002', N'KH08', 7, CAST(0x0000917600000000 AS DateTime), CAST(0x0000917600000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD003', N'KH10', 8, CAST(0x0000903A00000000 AS DateTime), CAST(0x0000917300000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD004', N'KH09', 7, CAST(0x00008F8400000000 AS DateTime), CAST(0x00008F8600000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD005', N'KH05', 1, CAST(0x00008F8500000000 AS DateTime), CAST(0x00008F8A00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD006', N'KH03', 15, CAST(0x0000945000000000 AS DateTime), CAST(0x0000945100000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD007', N'KH10', 12, CAST(0x000091E400000000 AS DateTime), CAST(0x000091EF00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD008', N'KH09', 1, CAST(0x00008FD200000000 AS DateTime), CAST(0x00008FDB00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD009', N'KH06', 10, CAST(0x0000922300000000 AS DateTime), CAST(0x000092DA00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD010', N'KH04', 9, CAST(0x000090F500000000 AS DateTime), CAST(0x0000916F00000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD011', N'KH03', 3, CAST(0x0000904800000000 AS DateTime), CAST(0x0000906000000000 AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaKH], [MaNV], [NgayLapHD], [NgayGiaoHang]) VALUES (N'HD012', N'KH08', 4, CAST(0x0000928200000000 AS DateTime), CAST(0x000092DD00000000 AS DateTime))
/****** Object:  Table [dbo].[CTHD]    Script Date: 06/20/2016 18:34:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTHD](
	[MaHD] [nvarchar](5) NOT NULL,
	[MaSP] [nvarchar](4) NOT NULL,
	[Soluong] [smallint] NULL,
	[Giamgia] [real] NULL,
 CONSTRAINT [PK_CTHD] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD001', N'Bb12', 10, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD001', N'BH01', 12, 0.5)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD001', N'BS01', 4, 0.5)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD001', N'Bs14', 100, 0.2)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD002', N'BS15', 4, 1)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD002', N'BT04', 10, 0.1)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD002', N'CC06', 2, 0.3)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD004', N'CH07', 2, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD004', N'CH08', 3, 0.8)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD005', N'PC01', 100, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD005', N'PL02', 25, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD005', N'PS05', 32, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD006', N'PS15', 50, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD006', N'RC17', 9, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD006', N'RC19', 5, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD007', N'RN01', 10, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD007', N'RN02', 8, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD008', N'RX01', 7, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD008', N'RX12', 6, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD009', N'TS01', 30, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD009', N'TS21', 20, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD010', N'RX12', 5, 0.4)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD010', N'TS01', 5, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD010', N'TS21', 10, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD011', N'BH01', 10, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD011', N'BS01', 21, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD011', N'Bs14', 12, 0)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD012', N'PC01', 34, 0.5)
INSERT [dbo].[CTHD] ([MaHD], [MaSP], [Soluong], [Giamgia]) VALUES (N'HD012', N'PL02', 20, 0)
/****** Object:  ForeignKey [FK_SanPham_LoaiSP]    Script Date: 06/20/2016 18:34:39 ******/
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
/****** Object:  ForeignKey [FK_HoaDon_KhachHang]    Script Date: 06/20/2016 18:34:39 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
/****** Object:  ForeignKey [FK_HoaDon_Nhanvien]    Script Date: 06/20/2016 18:34:39 ******/
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_Nhanvien] FOREIGN KEY([MaNV])
REFERENCES [dbo].[Nhanvien] ([MaNV])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_Nhanvien]
GO
/****** Object:  ForeignKey [FK_CTHD_HoaDon]    Script Date: 06/20/2016 18:34:39 ******/
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HoaDon] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_HoaDon]
GO
/****** Object:  ForeignKey [FK_CTHD_SanPham]    Script Date: 06/20/2016 18:34:39 ******/
ALTER TABLE [dbo].[CTHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CTHD] CHECK CONSTRAINT [FK_CTHD_SanPham]
GO

create database OnlineShop
Go
use OnlineShop
Go

--Tạo bảng Employee 
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [nvarchar](10) NULL,
	[LastName] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[CompanyEmail] [nvarchar](50) NOT NULL,
	[PersonalEmail] [nvarchar] (50) NULL,
	[Password] [nvarchar] (20) NOT NULL,
	Primary key(ID)
	);
GO
--Nhập dữ liệu cho bảng Employee
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES (1, N'TS0001', N'System', N'Admin', N'', N'', N'', N'admin@ts.com', N'', 'admin@12345')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES (2, N'TS0002', N'Lê văn', N'Tâm', N'45 Trần Phú', N'1989-06-01', N'8663447', N'tam.levan@ts.com', N'tam2205@gmail.com', 'tam12345')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (3, N'TS0003',N'Trần Thị', N'An', N'15 Nguyễn Trãi',N'1980-04-18', N'', N'an.tranthi@ts.com', N'antran@gmail.com', N'antran')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (4,N'TS0004', N'Tạ Thành', N'Tâm', N'20 Võ thị Sáu', N'1990-10-22', N'8565666', N'tam.tathanh@ts.com', N'thanh2210@gmail.com', N'password')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (5,N'TS0005', N'Ngô Thành', N'Sơn', N'122 Trần Phú', N'1984-06-07', N'6172455549', N'son.ngothanh@ts.com', N'ngothanhson1984@gmail.com', N'son1984')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (6,N'TS0006', N'Lê thị', N'Thuỷ', N'25 Ngô Quyền', N'1994-07-25', N'9767677', N'thuy.lethi@ts.com', N'thuyle2507@gmail.com', N'thuyle')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (7,N'TS0007', N'Nguyễn Hữu', N'An', N'12 Lê Thánh Tôn', N'1984-01-04', N'2517515241', N'an.nguyenhuu@ts.com', N'annguyen1984@gmail.com', N'annguyen0401')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (8, N'TS0008',N'Thái Chí', N'Dương', N'97 Võ văn Tần', N'1989-04-02', N'6195177470', N'duong.thaichi@ts.com', N'duong0204@gmail.com', N'duongthai1984')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (9,N'TS0009', N'Trần Văn', N'Thanh', N'25 Trần Văn Đang', N'1988-05-25', N'0918158', N'thanh.tranvan@ts.com', N'thanhtranvan1988@gmail.com', N'thanh2505')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (10, N'TS0010', N'Nguyễn Dũng', N'Nghi', N'65 Trần Văn Thời', N'', N'', N'nghi.nguyendung@ts.com', N'nghinguyen99@gmail.com', N'nghinguyen')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES (11,N'TS0011', N'Lê Thế', N'Bảo', N'12 Lê Quý Đôn', N'', N'', N'bao.lethe@ts.com', N'', N'baole')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (12, N'TS0012', N'Lê Dũng', N'Nguyên', N'321 Lê Lợi', N'' ,N'6987456', N'nguyen.ledung@ts.com', N'', N'nguyenle')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (13,N'TS0013', N'Nguyễn Thị', N'Thủy', N'654 Nguyễn Huệ', N'', N'9998745', N'thuy.nguyenthi@ts.com', N'', N'thuynguyen')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES (14,N'TS0014', N'Nguyễn Thu', N'Hồng', N'987 Lê Lợi', N'',N'9874561', N'hong.nguyenthu@ts.com', N'', N'hongnguyen')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (15, N'TS0015',N'Trần Thị Thủy', N'Tiên', N'6543 Nguyễn Huệ', N'', N'', N'tien.tranthithuy@ts.com', N'', N'thuytien')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (16,N'TS0016', N'Lê Thị', N'Hiền', N'654 Mai Xuân Thời', N'', N'', N'hien.lethi@ts.com', N'', N'hienle')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (17, N'TS0017',N'Nguyễn Đắc Quỳnh', N'Như', N'Tân Bình', N'', N'123456', N'nhu.nguyendacquynh@ts.com', N'', N'nhunguyen')
INSERT [dbo].[Employee] ([ID], [EmployeeID], [LastName], [FirstName], [Address], [DOB], [PhoneNumber], [CompanyEmail], [PersonalEmail], [Password]) VALUES  (18,N'TS0018', N'Hoàng Bảo', N'Trân', N'Tân Bình', N'', N'12345', N'tran.hoangbao@ts.com', N'', N'tranhoang')
SET IDENTITY_INSERT [dbo].[Employee] OFF

--Tạo bảng Categories
CREATE TABLE [dbo].[Categories](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](500) NULL,
	Primary key(ID)
	);
Go
--Nhập dữ liệu cho bảng Categories
SET IDENTITY_INSERT [dbo].[Categories] ON
INSERT [dbo].[Categories] ([ID], [CategoryName]) VALUES (1, N'Book')
INSERT [dbo].[Categories] ([ID], [CategoryName]) VALUES (2, N'Wand')
INSERT [dbo].[Categories] ([ID], [CategoryName]) VALUES (3, N'Potion')
SET IDENTITY_INSERT [dbo].[Categories] OFF

--Tạo bảng Customer
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [nvarchar] (5) NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](50) NULL,
	[DOB] [datetime] NULL,
	[Email] [nvarchar] (50) NOT NULL,
	[UserName] [nvarchar] (500) NOT NULL,
	[Password] [nvarchar] (20) NOT NULL,
	Primary key(ID)
 );
GO

SET IDENTITY_INSERT [dbo].[Customer] ON
INSERT [dbo].[Customer] ([ID], [CustomerID], [LastName], [FirstName], [Address], [PhoneNumber],[DOB], [Email], [UserName], [Password]) VALUES (1 , N'KH01', N'Jones', N'Ray', N'Obere Str. 57', N'8171717', N'1983-12-26', N'RayAJones@armyspy.com', N'Taides', N'ohL5aiHu7pe' )
INSERT [dbo].[Customer] ([ID], [CustomerID], [LastName], [FirstName], [Address], [PhoneNumber],[DOB], [Email], [UserName], [Password] ) VALUES (2, N'KH02', N'Brungardt', N'George', N'4410 Kyle Street Julesburg', N'084088800256', N'1979-11-09', N'GeorgeABrungardt@jourrapide.com', N'Whicess', N'Lohpu9iC8kep')
INSERT [dbo].[Customer] ([ID], [CustomerID], [LastName], [FirstName], [Address], [PhoneNumber],[DOB], [Email], [UserName], [Password] ) VALUES (3, N'KH03', N'Baker',N'Doris', N'4852 Golden Street Miam', N'084088852258', N'1980-12-17', N'DorisBBaker@jourrapide.com', N'Mishated', N'oosh5Eaduu')
INSERT [dbo].[Customer] ([ID], [CustomerID], [LastName], [FirstName], [Address], [PhoneNumber],[DOB], [Email], [UserName], [Password] ) VALUES (4, N'KH04', N'Nguyễn Đắc Quỳnh', N'Như', N'8 Phạm Văn Đồng', N'8430156', N'1996-10-05', N'nhunguyen99@gmail.com', N'HeilCatLord', N'catwoman')
INSERT [dbo].[Customer] ([ID], [CustomerID], [LastName], [FirstName], [Address], [PhoneNumber],[DOB], [Email], [UserName], [Password] ) VALUES (5, N'KH05', N'Mason', N'Vera', N'1679 Raoul Wallenberg Place Stamford', N'8250102', N'1989-02-24', N'VeraTMason@rhyta.com', N'Fultakfard', N'Sa0shahjae')
INSERT [dbo].[Customer] ([ID], [CustomerID], [LastName], [FirstName], [Address], [PhoneNumber],[DOB], [Email], [UserName], [Password] ) VALUES (6, N'KH06', N'Solo', N'Napoleon', N'2862 Hamilton Drive Annapolis', N'8250102', N'1980-04-04', N'solo@gmail.com', N'illTakeTheBottom', N'Peril')
INSERT [dbo].[Customer] ([ID], [CustomerID], [LastName], [FirstName], [Address], [PhoneNumber],[DOB], [Email], [UserName], [Password] ) VALUES (7, N'KH07', N'Kuryakin', N'Illya', N'1134 Passaic Street Russia', N'2014358996', N'1991-08-08', N'illyaK@gmail.com', N'ILoveMyFatherWatch', N'Goodjobcowboy')
INSERT [dbo].[Customer] ([ID], [CustomerID], [LastName], [FirstName], [Address], [PhoneNumber],[DOB], [Email], [UserName], [Password] ) VALUES (8, N'KH08', N'Teller', N'Gaby', N'187 Hart Street German', N'8603251024', N'1992-12-17', N'GabyT@gmail.com', N'aCinamonRoll', N'butillkillyou')
INSERT [dbo].[Customer] ([ID], [CustomerID], [LastName], [FirstName], [Address], [PhoneNumber],[DOB], [Email], [UserName], [Password] ) VALUES (9, N'KH09', N'Parker', N'Peter', N'ForestHill, NY', N'6028598048', N'2001-05-14', N'spiderman@gmail.com', N'Spiderman99', N'idontfellsogood')
SET IDENTITY_INSERT [dbo].[Customer] OFF


--Tạo bảng Products
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](500) NULL,
	[CategoryID] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[UnitsInStock] [int] NULL,
	[Discontinued] [bit] NULL,
	[Image] [nvarchar](max) NULL,
	PRIMARY KEY(ID),
	FOREIGN KEY (CategoryID) REFERENCES Categories(ID)
	);
	
GO

SET IDENTITY_INSERT [dbo].[Products] ON
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] ) VALUES (1, N'Fantasic Beast And Where To Find Them', 1, 97980, 100, 0, N'~/images/biabenthanhchai.jpg')
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] ) VALUES (2, N'A History Of Magic', 1, 107000, 100, 0, N'~/images/biaheinekenchai.jpg')
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] ) VALUES (3, N'Quidditch Through The Ages', 1 , 110000, 100,0, N'~/images/biasapporochai.jpg')
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] ) VALUES (4, N'The Tale Of Beedle The Bard', 1, 98000, 100,0, N'~/images/biasaigonchai.jpg')
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] ) VALUES (5,  N'Spell Book For Beginner', 1, 100000, 100,0, N'~/Images/bia33thung.jpg')
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] ) VALUES (6,  N'Draught of Living Death',3, 150000, 100,0, N'~/images/biatigerthung.jpg')
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] )  VALUES (7,  N'Felix Felicis', 3, 115000, 100, 0, N'~/images/cocacolathung.jpg')
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] ) VALUES (8, N'Pepperup Potion', 3, 5490000, 100, 0, N'~/images/cassetsharp.jpg')
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] ) VALUES (9, N'Sleekeazy''s Hair Potion',3, 6090000, 100,0, N'~/images/cassetsharp500w.jpg')
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] ) VALUES (10,  N'Wand #1', 2, 3640000, 1, 0, N'~/images/butchiden.jpg')
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] ) VALUES (11, N'Wand #2',2, 71000, 1, 0,N'~/images/butlongkim.jpg')
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] ) VALUES (12, N'Wand #3',2, 78840, 1 , 0, N'~/Images/butsap.jpg')
INSERT [dbo].[Products] ([ID], [ProductName], [CategoryID], [UnitPrice], [UnitsInStock], [Discontinued], [Image] ) VALUES (13, N'Wand #4',2, 162000, 1,0, N'~/images/pepsithung.jpg')
SET IDENTITY_INSERT [dbo].[Products] OFF


Create table [dbo].[Shippers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](500)  NOT NULL,
	[Address] [nvarchar](500) NOT NULL,
	[Phone] [int] NULL,
	PRIMARY KEY(ID)
)
GO

SET IDENTITY_INSERT [dbo].[Shippers] ON
INSERT [dbo].[Shippers] ([ID], [Name], [Address], [Phone])
VALUES (1, N'Ninja Van', N'25B Phan Dang Luu St, Ward 3, Binh Thanh Dist', N'088363056')
INSERT [dbo].[Shippers] ([ID], [Name], [Address], [Phone])
VALUES (2, N'Speedy Express', N'29 Nguyen Thi Nghia, Ward 6, Dist.3', N'0839306109')
INSERT [dbo].[Shippers] ([ID], [Name], [Address], [Phone])
VALUES (3, N'Federal Shipping', N'298 Nguyen Trong Tuyen Street, Ward 1, Tan Binh District', N'0838440988')
SET IDENTITY_INSERT [dbo].[Shippers] OFF


CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [nvarchar](7)  NULL,
	[CustomerID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[RequiredDate] [datetime] NOT NULL,
    [ShippedDate] [datetime] NOT NULL,
    [ShipVia] [int] NOT NULL,
    [Freight] [float]NOT NULL,
    [ShipName] [nvarchar](500) NOT NULL,
    [ShipAddress] [nvarchar](500) NOT NULL,
    [ShipCity] [nvarchar](500) NULL,
    [ShipRegion] [nvarchar](500) NULL,
    [ShipPostalCode] [nvarchar](5) NULL,
    [ShipCountry] [nvarchar](500)  NULL,
	[DeliveryCost] [float] NOT NULL,
	PRIMARY KEY(ID),
	FOREIGN KEY (CustomerID) REFERENCES Customer(ID),
	FOREIGN KEY (EmployeeID) REFERENCES Employee(ID),
	FOREIGN KEY (ShipVia) REFERENCES Shippers(ID)

)
GO



SET IDENTITY_INSERT [dbo].[Order] ON
INSERT [dbo].[Order] ([ID], [OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate],[ShippedDate], [ShipVia],[Freight],[ShipName],  [ShipAddress],[ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry], [DeliveryCost]) 
VALUES (1,N'HD001',1,3,N'2018-10-05', N'2018-10-10', N'2018-10-10', 2, 2.0, N'Jones Ray', N'Obere Str. 57', N'', N'', N'', N'', 35000 )

INSERT [dbo].[Order] ([ID], [OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate],[ShippedDate], [ShipVia],[Freight],[ShipName],  [ShipAddress],[ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry], [DeliveryCost] ) 
VALUES (2,N'HD002',1,3,N'2018-10-05', N'2018-10-10', N'2018-10-10', 2, 2.0, N'Jones Ray', N'Obere Str. 57', N'', N'', N'', N'', 35000 )

INSERT [dbo].[Order] ([ID], [OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate],[ShippedDate], [ShipVia],[Freight],[ShipName],  [ShipAddress],[ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry], [DeliveryCost] ) 
VALUES (3,N'HD003',2,5,N'2018-09-01', N'2018-09-10', N'2018-09-09', 3, 1.0, N'Brungardt George', N'4410 Kyle Street Julesburg', N'', N'', N'', N'', 20000 )

INSERT [dbo].[Order] ([ID], [OrderID], [CustomerID], [EmployeeID], [OrderDate], [RequiredDate],[ShippedDate], [ShipVia],[Freight],[ShipName],  [ShipAddress],[ShipCity], [ShipRegion], [ShipPostalCode], [ShipCountry], [DeliveryCost] ) 
VALUES (4,N'HD004',3,6,N'2018-10-05', N'2018-10-10', N'2018-10-10', 2, 1.5, N'Baker Doris', N'4852 Golden Street Miam', N'', N'', N'', N'', 28000 )

SET IDENTITY_INSERT [dbo].[Order] OFF

CREATE TABLE [dbo].[Order Details]
(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[UnitPrice] [float] NOT NULL, 
	[Quantity] [int] NOT NULL,
	[Discount] [real] NULL,
	PRIMARY KEY(ID),
	FOREIGN KEY (ProductID) REFERENCES Products(ID),
	FOREIGN KEY (OrderID) REFERENCES [dbo].[Order](ID)
)
Go

SET IDENTITY_INSERT [dbo].[Order Details] ON
INSERT INTO [dbo].[Order Details] ([ID], [OrderID], [ProductID], [UnitPrice], [Quantity],[Discount] )
VALUES (1, 1, 2, 97980, 2, N'')
INSERT INTO [dbo].[Order Details] ([ID], [OrderID], [ProductID], [UnitPrice], [Quantity],[Discount] )
VALUES (2, 1, 4, 425000, 1, 0.3)
INSERT INTO [dbo].[Order Details] ([ID], [OrderID], [ProductID], [UnitPrice], [Quantity],[Discount] )
VALUES (3, 2, 12, 78840, 1, 0.15)
INSERT INTO [dbo].[Order Details] ([ID], [OrderID], [ProductID], [UnitPrice], [Quantity],[Discount] )
VALUES (4, 3, 13, 250000, 1, N'')
INSERT INTO [dbo].[Order Details] ([ID], [OrderID], [ProductID], [UnitPrice], [Quantity],[Discount] )
VALUES (5, 4, 8, 5490000, 1, N'')
SET IDENTITY_INSERT [dbo].[Order Details] OFF


CREATE TABLE [dbo].[ProductDetail]
(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Description] [nvarchar](500) NULL, 
	PRIMARY KEY(ID),
	FOREIGN KEY (ProductID) REFERENCES Products(ID),
)
Go
SET IDENTITY_INSERT [dbo].[ProductDetail] ON
INSERT INTO [dbo].[ProductDetail] ([ID], [ProductID], [Description])
VALUES (1, 1, N' Written by magizoologist Newt Scamander, contains the history of magizoology and describes 85 magical species found around the world. Scamander says that he collected most of the information found in the book through observations made over years of travel across five continents')
INSERT INTO [dbo].[ProductDetail] ([ID], [ProductID], [Description])
VALUES (2, 2, N'')
INSERT INTO [dbo].[ProductDetail] ([ID], [ProductID], [Description])
VALUES (3, 3, N'')
INSERT INTO [dbo].[ProductDetail] ([ID], [ProductID], [Description])
VALUES (4, 4, N'')
INSERT INTO [dbo].[ProductDetail] ([ID], [ProductID], [Description])
VALUES (5, 5, N'')
SET IDENTITY_INSERT [dbo].[ProductDetail] OFF