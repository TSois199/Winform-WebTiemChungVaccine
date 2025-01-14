--Create Database TiemChungVC
--GO
USE [TiemChungVC]
GO
/****** Object:  Schema [HangFire]    Script Date: 17/06/2024 3:36:10 CH ******/
CREATE SCHEMA [HangFire]
GO
/****** Object:  Table [dbo].[CHITIET_COMBO_VACCXINE]    Script Date: 17/06/2024 3:36:10 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_COMBO_VACCXINE](
	[ma_combo] [nchar](15) NOT NULL,
	[ma_vaccine] [nchar](50) NOT NULL,
	[soluong_vaccine] [int] NOT NULL,
 CONSTRAINT [pk_VACCINE_NCC] PRIMARY KEY CLUSTERED 
(
	[ma_vaccine] ASC,
	[ma_combo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIET_HOADON]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_HOADON](
	[ma_hoadon] [nchar](10) NOT NULL,
	[ma_vaccine] [nchar](200) NOT NULL,
	[soluong_vaccine] [int] NULL,
	[chietkhau] [float] NULL,
	[thanhtien] [float] NOT NULL,
	[thoigian_thanhtoan] [datetime] NOT NULL,
	[hinhthuc_thanhtoan] [nvarchar](50) NOT NULL,
 CONSTRAINT [pk_CT_HD] PRIMARY KEY CLUSTERED 
(
	[ma_hoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CHITIET_PHIEUNHAP]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIET_PHIEUNHAP](
	[ma_phieunhap] [nchar](15) NOT NULL,
	[ma_vaccine] [nchar](50) NOT NULL,
	[so_luong] [int] NOT NULL,
	[gia_vaccine] [float] NOT NULL,
 CONSTRAINT [pk_PHIEUNHAPVC_KHO] PRIMARY KEY CLUSTERED 
(
	[ma_vaccine] ASC,
	[ma_phieunhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMBO_VACCINE]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMBO_VACCINE](
	[ma_combo] [nchar](15) NOT NULL,
	[ten_combo] [nvarchar](100) NOT NULL,
	[gia_combo] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_combo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GIOHANG]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GIOHANG](
	[id_giohang] [int] IDENTITY(1,1) NOT NULL,
	[ma_khachhang] [nchar](10) NOT NULL,
	[ma_vaccine] [nchar](50) NULL,
	[ma_combo] [nchar](15) NULL,
	[soluong] [int] NULL,
	[ma_voucher] [nchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_giohang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[ma_hoadon] [nchar](10) NOT NULL,
	[ma_dangky] [nchar](10) NULL,
	[ma_nhanvien] [nchar](10) NULL,
	[ma_khachhang] [nchar](10) NOT NULL,
	[ma_voucher] [nchar](15) NULL,
	[ma_combo] [nchar](200) NULL,
	[trangthai] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_hoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[ma_khachhang] [nchar](10) NOT NULL,
	[hoten_khachhang] [nvarchar](200) NOT NULL,
	[sdt_khachhang] [nvarchar](12) NOT NULL,
	[email_khachhang] [nvarchar](50) NOT NULL,
	[ngaysinh_khachhang] [date] NULL,
	[gioitinh_khachhang] [nvarchar](5) NULL,
	[pass_khachhang] [nvarchar](50) NOT NULL,
	[diemthanthiet] [float] NOT NULL,
	[trangthai] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_khachhang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KHO]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHO](
	[ma_vaccine] [nchar](50) NOT NULL,
	[soluong_vaccine] [int] NOT NULL,
	[donvitinh] [nvarchar](20) NOT NULL,
 CONSTRAINT [pk_VACCINE_KHO] PRIMARY KEY CLUSTERED 
(
	[ma_vaccine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOAIVACCINE]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIVACCINE](
	[ma_loaivaccine] [nchar](15) NOT NULL,
	[ten_loaivaccine] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_loaivaccine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOITIEM_DANGKY]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOITIEM_DANGKY](
	[ma_dangky] [nchar](10) NOT NULL,
	[hoten_nguoitiem] [nvarchar](30) NOT NULL,
	[ngaysinh_nguoitiem] [date] NOT NULL,
	[gioitinh_nguoitiem] [nvarchar](5) NOT NULL,
	[diachi_nguoitiem] [nvarchar](100) NOT NULL,
	[hoten_nguoilienhe] [nvarchar](30) NOT NULL,
	[moiquanhe_nguoitiem] [nvarchar](30) NOT NULL,
	[sdt_nguoilienhe] [int] NOT NULL,
	[ma_khachhang] [nchar](10) NULL,
	[phi_luukho] [float] NULL,
	[tongthanhtoan] [float] NULL,
	[ngay_dangky] [date] NOT NULL,
	[ngay_muontiem] [date] NOT NULL,
	[ma_voucher] [nchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_dangky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOITIEM_MUACOMBO]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOITIEM_MUACOMBO](
	[ma_dangky] [nchar](10) NOT NULL,
	[ma_combo] [nchar](15) NOT NULL,
	[so_luong] [int] NULL,
 CONSTRAINT [fk_nguoitiem_muacombo] PRIMARY KEY CLUSTERED 
(
	[ma_combo] ASC,
	[ma_dangky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NGUOITIEM_MUAVACCINE]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NGUOITIEM_MUAVACCINE](
	[ma_dangky] [nchar](10) NOT NULL,
	[ma_vaccine] [nchar](50) NOT NULL,
	[so_luong] [int] NULL,
 CONSTRAINT [fk_nguoitiem_muavaccine] PRIMARY KEY CLUSTERED 
(
	[ma_vaccine] ASC,
	[ma_dangky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[ma_nhacungcap] [nchar](10) NOT NULL,
	[ten_nhacungcap] [nvarchar](100) NOT NULL,
	[diachi_nhacungcap] [nvarchar](100) NOT NULL,
	[sdt_nhacungcap] [nchar](12) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhacungcap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[ma_nhanvien] [nchar](15) NOT NULL,
	[hoten_nhanvien] [nvarchar](50) NOT NULL,
	[diachi_nhanvien] [nvarchar](100) NOT NULL,
	[sdt_nhanvien] [nchar](11) NOT NULL,
	[email_nhanvien] [nchar](50) NOT NULL,
	[cccd_nhanvien] [nvarchar](12) NOT NULL,
	[ngaysinh_nhanvien] [date] NOT NULL,
	[gioitinh_nhanvien] [nvarchar](5) NOT NULL,
	[anh_nhanvien] [nvarchar](50) NOT NULL,
	[quyen_nhanvien] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[ma_phieunhap] [nchar](15) NOT NULL,
	[ma_nhanvien] [nchar](15) NOT NULL,
	[ma_nhacungcap] [nchar](10) NOT NULL,
	[ngay_nhap] [date] NOT NULL,
	[tong_tien] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_phieunhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAIKHOAN]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAIKHOAN](
	[ma_nhanvien] [nchar](15) NOT NULL,
	[tendangnhap] [nchar](50) NOT NULL,
	[matkhau] [nchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_nhanvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIEMVACCINE_MUI]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIEMVACCINE_MUI](
	[ma_dangky] [nchar](10) NULL,
	[ma_vaccine] [nchar](50) NULL,
	[mui_vaccine] [int] NULL,
	[da_tiem] [bit] NULL,
	[STT] [int] IDENTITY(1,1) NOT NULL,
	[ma_combo] [nchar](50) NULL,
	[ngay_tiem] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VACCINE]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VACCINE](
	[ma_vaccine] [nchar](50) NOT NULL,
	[ma_loaivaccine] [nchar](15) NOT NULL,
	[ten_vaccine] [nvarchar](250) NOT NULL,
	[anh_vaccine] [nvarchar](50) NOT NULL,
	[thongtin_vaccine] [nvarchar](4000) NOT NULL,
	[doituong] [nvarchar](1000) NOT NULL,
	[phacdolichtiem] [nvarchar](2000) NOT NULL,
	[tinhtrangvaccine] [nvarchar](1000) NOT NULL,
	[gia_vacine] [float] NOT NULL,
	[ngay_san_xuat] [date] NOT NULL,
	[hansudung_vaccine] [date] NOT NULL,
	[note] [nvarchar](200) NULL,
	[phongbenh] [nvarchar](300) NOT NULL,
	[nguongoc] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_vaccine] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VACCINE_NCC]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VACCINE_NCC](
	[ma_vaccine] [nchar](50) NOT NULL,
	[ma_nhacungcap] [nchar](10) NOT NULL,
	[gia_vaccine] [float] NOT NULL,
 CONSTRAINT [pk_VACCINE_NCCc] PRIMARY KEY CLUSTERED 
(
	[ma_vaccine] ASC,
	[ma_nhacungcap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VOUCHER]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VOUCHER](
	[ma_voucher] [nchar](15) NOT NULL,
	[ten_voucher] [nvarchar](100) NOT NULL,
	[ngaybatdau_voucher] [date] NOT NULL,
	[ngayketthuc_voucher] [date] NOT NULL,
	[giamgia_voucher] [float] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ma_voucher] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[AggregatedCounter]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[AggregatedCounter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [bigint] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Counter]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Counter](
	[Key] [nvarchar](100) NOT NULL,
	[Value] [int] NOT NULL,
	[ExpireAt] [datetime] NULL,
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_HangFire_Counter] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Hash]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Hash](
	[Key] [nvarchar](100) NOT NULL,
	[Field] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime2](7) NULL,
 CONSTRAINT [PK_HangFire_Hash] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Field] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Job]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Job](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[StateId] [bigint] NULL,
	[StateName] [nvarchar](20) NULL,
	[InvocationData] [nvarchar](max) NOT NULL,
	[Arguments] [nvarchar](max) NOT NULL,
	[CreatedAt] [datetime] NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobParameter]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobParameter](
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](40) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_JobParameter] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[JobQueue]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[JobQueue](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Queue] [nvarchar](50) NOT NULL,
	[FetchedAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED 
(
	[Queue] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[List]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[List](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Key] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](max) NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_List] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Schema]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Schema](
	[Version] [int] NOT NULL,
 CONSTRAINT [PK_HangFire_Schema] PRIMARY KEY CLUSTERED 
(
	[Version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Server]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Server](
	[Id] [nvarchar](200) NOT NULL,
	[Data] [nvarchar](max) NULL,
	[LastHeartbeat] [datetime] NOT NULL,
 CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[Set]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[Set](
	[Key] [nvarchar](100) NOT NULL,
	[Score] [float] NOT NULL,
	[Value] [nvarchar](256) NOT NULL,
	[ExpireAt] [datetime] NULL,
 CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED 
(
	[Key] ASC,
	[Value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [HangFire].[State]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [HangFire].[State](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[JobId] [bigint] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Reason] [nvarchar](100) NULL,
	[CreatedAt] [datetime] NOT NULL,
	[Data] [nvarchar](max) NULL,
 CONSTRAINT [PK_HangFire_State] PRIMARY KEY CLUSTERED 
(
	[JobId] ASC,
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[CHITIET_COMBO_VACCXINE] ([ma_combo], [ma_vaccine], [soluong_vaccine]) VALUES (N'CB003          ', N'VC001                                             ', 3)
INSERT [dbo].[CHITIET_COMBO_VACCXINE] ([ma_combo], [ma_vaccine], [soluong_vaccine]) VALUES (N'CB005          ', N'VC001                                             ', 3)
INSERT [dbo].[CHITIET_COMBO_VACCXINE] ([ma_combo], [ma_vaccine], [soluong_vaccine]) VALUES (N'CB001          ', N'VC0011                                            ', -65)
INSERT [dbo].[CHITIET_COMBO_VACCXINE] ([ma_combo], [ma_vaccine], [soluong_vaccine]) VALUES (N'CB001          ', N'VC003                                             ', 9)
INSERT [dbo].[CHITIET_COMBO_VACCXINE] ([ma_combo], [ma_vaccine], [soluong_vaccine]) VALUES (N'CB002          ', N'VC003                                             ', 3)
INSERT [dbo].[CHITIET_COMBO_VACCXINE] ([ma_combo], [ma_vaccine], [soluong_vaccine]) VALUES (N'CB004          ', N'VC004                                             ', 3)
INSERT [dbo].[CHITIET_COMBO_VACCXINE] ([ma_combo], [ma_vaccine], [soluong_vaccine]) VALUES (N'CB001          ', N'VC009                                             ', 3)
INSERT [dbo].[CHITIET_COMBO_VACCXINE] ([ma_combo], [ma_vaccine], [soluong_vaccine]) VALUES (N'CB001          ', N'VC010                                             ', 1)
GO
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD001     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T14:52:37.660' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD002     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T14:53:15.447' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD003     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T15:40:30.967' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD004     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T15:41:02.977' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD005     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T15:41:26.633' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD006     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T15:41:53.320' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD007     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T15:42:26.110' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD008     ', N'                                                                                                                                                                                                        ', 0, 0, 0, CAST(N'2024-06-06T15:57:25.467' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD009     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T16:03:29.307' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD010     ', N'                                                                                                                                                                                                        ', 0, 0, 0, CAST(N'2024-06-06T16:05:26.467' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD011     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T18:10:25.330' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD012     ', N'VC006                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T18:11:39.800' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD013     ', N'VC002                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T18:13:01.417' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD014     ', N'VC002                                             , VC005                                                                                                                                               ', 2, 0, 0, CAST(N'2024-06-06T18:13:31.773' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD015     ', N'                                                                                                                                                                                                        ', 0, 0, 0, CAST(N'2024-06-06T18:16:22.103' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD016     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T18:18:54.177' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD017     ', N'                                                                                                                                                                                                        ', 0, 0, 0, CAST(N'2024-06-06T18:53:41.387' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD018     ', N'                                                                                                                                                                                                        ', 0, 0, 0, CAST(N'2024-06-06T19:01:58.507' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD019     ', N'                                                                                                                                                                                                        ', 0, 0, 0, CAST(N'2024-06-06T19:10:01.367' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD020     ', N'                                                                                                                                                                                                        ', 0, 0, 0, CAST(N'2024-06-06T21:52:05.790' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD021     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T22:33:11.077' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD022     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T22:33:41.267' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD023     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-06T22:34:59.623' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD024     ', N'VC002                                                                                                                                                                                                   ', NULL, NULL, 130000, CAST(N'2024-06-09T00:54:28.870' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD025     ', N'                                                                                                                                                                                                        ', 0, 0, 0, CAST(N'2024-06-10T15:32:36.873' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD026     ', N'                                                                                                                                                                                                        ', 0, 0, 0, CAST(N'2024-06-11T14:41:44.603' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD027     ', N'VC002                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-11T14:42:20.567' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD028     ', N'VC001                                             ,VC003                                                                                                                                                ', NULL, NULL, 220000, CAST(N'2024-06-11T14:43:43.483' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD029     ', N'                                                                                                                                                                                                        ', NULL, NULL, 0, CAST(N'2024-06-11T14:44:32.060' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD030     ', N'VC008                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-11T14:47:31.873' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD031     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-11T14:51:39.433' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD032     ', N'VC001                                             ,VC002                                                                                                                                                ', NULL, NULL, 100000, CAST(N'2024-06-14T01:40:49.163' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD033     ', N'                                                                                                                                                                                                        ', NULL, NULL, 4200000, CAST(N'2024-06-14T03:14:47.137' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD034     ', N'VC0012                                                                                                                                                                                                  ', NULL, NULL, 1608000, CAST(N'2024-06-14T03:36:24.627' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD035     ', N'                                                                                                                                                                                                        ', NULL, NULL, 0, CAST(N'2024-06-14T03:36:38.343' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD036     ', N'                                                                                                                                                                                                        ', NULL, NULL, 0, CAST(N'2024-06-14T03:36:44.287' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD037     ', N'VC003                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-14T11:44:35.903' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD038     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-14T12:40:59.393' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD039     ', N'VC0011                                                                                                                                                                                                  ', NULL, NULL, -38.400001525878906, CAST(N'2024-06-14T17:12:54.957' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD040     ', N'VC0010                                                                                                                                                                                                  ', NULL, NULL, 1524000, CAST(N'2024-06-14T17:13:44.147' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD041     ', N'VC0013                                                                                                                                                                                                  ', NULL, NULL, 1884000, CAST(N'2024-06-14T17:17:35.483' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD042     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-14T21:41:53.053' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD043     ', N'VC001                                                                                                                                                                                                   ', NULL, NULL, 2112000, CAST(N'2024-06-14T21:54:19.310' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD044     ', N'                                                                                                                                                                                                        ', NULL, NULL, 1800000, CAST(N'2024-06-14T21:55:29.087' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD045     ', N'VC003                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-14T21:57:58.827' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD046     ', N'                                                                                                                                                                                                        ', 0, 0, 0, CAST(N'2024-06-14T21:59:44.097' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD047     ', N'VC006                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-14T22:02:39.583' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD048     ', N'VC005                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-14T22:09:42.650' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD049     ', N'VC008                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-14T22:10:14.010' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD050     ', N'VC002                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-14T22:11:17.520' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD051     ', N'VC0012                                                                                                                                                                                                  ', 1, 0, 0, CAST(N'2024-06-14T22:11:51.740' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD052     ', N'VC001                                             ,VC002                                                                                                                                                ', NULL, NULL, 240000, CAST(N'2024-06-14T22:12:10.187' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD053     ', N'VC002                                             ,VC003                                                                                                                                                ', NULL, NULL, 250000, CAST(N'2024-06-14T22:12:44.700' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD054     ', N'VC008                                                                                                                                                                                                   ', NULL, NULL, 1260000, CAST(N'2024-06-14T22:13:07.830' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD055     ', N'VC002                                             ,VC009                                                                                                                                                ', NULL, NULL, 366507.59375, CAST(N'2024-06-14T22:24:13.767' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD056     ', N'VC005                                                                                                                                                                                                   ', NULL, NULL, 1500000, CAST(N'2024-06-14T22:25:39.167' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD057     ', N'VC001                                                                                                                                                                                                   ', NULL, NULL, 2112000, CAST(N'2024-06-14T22:37:10.297' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD058     ', N'VC001                                             ,VC003                                                                                                                                                ', NULL, NULL, 160000, CAST(N'2024-06-16T14:19:56.300' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD059     ', N'VC0010                                            , VC002                                                                                                                                               ', 2, 0, 0, CAST(N'2024-06-16T14:22:43.760' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD060     ', N'VC009                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-16T14:25:37.770' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD061     ', N'VC001                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-16T14:32:25.303' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD062     ', N'VC0011                                                                                                                                                                                                  ', NULL, NULL, -38.400001525878906, CAST(N'2024-06-16T14:37:56.287' AS DateTime), N'Chuyển khoản')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD063     ', N'                                                                                                                                                                                                        ', 0, 0, 0, CAST(N'2024-06-16T14:41:12.833' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD064     ', N'VC006                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-16T14:50:16.067' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD065     ', N'VC006                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-16T14:51:54.120' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD066     ', N'VC003                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-16T14:56:02.827' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD067     ', N'VC006                                                                                                                                                                                                   ', 1, 0, 0, CAST(N'2024-06-16T14:57:06.760' AS DateTime), N'Thanh toán tại chỗ')
INSERT [dbo].[CHITIET_HOADON] ([ma_hoadon], [ma_vaccine], [soluong_vaccine], [chietkhau], [thanhtien], [thoigian_thanhtoan], [hinhthuc_thanhtoan]) VALUES (N'HD068     ', N'VC008                                                                                                                                                                                                   ', NULL, NULL, 784.79998779296875, CAST(N'2024-06-16T14:57:48.633' AS DateTime), N'Chuyển khoản')
GO
INSERT [dbo].[CHITIET_PHIEUNHAP] ([ma_phieunhap], [ma_vaccine], [so_luong], [gia_vaccine]) VALUES (N'PN003          ', N'VC001                                             ', 3, 43000)
INSERT [dbo].[CHITIET_PHIEUNHAP] ([ma_phieunhap], [ma_vaccine], [so_luong], [gia_vaccine]) VALUES (N'PN004          ', N'VC001                                             ', 12, 43000)
INSERT [dbo].[CHITIET_PHIEUNHAP] ([ma_phieunhap], [ma_vaccine], [so_luong], [gia_vaccine]) VALUES (N'PN005          ', N'VC001                                             ', 10, 43000)
INSERT [dbo].[CHITIET_PHIEUNHAP] ([ma_phieunhap], [ma_vaccine], [so_luong], [gia_vaccine]) VALUES (N'PN006          ', N'VC001                                             ', 2, 43000)
INSERT [dbo].[CHITIET_PHIEUNHAP] ([ma_phieunhap], [ma_vaccine], [so_luong], [gia_vaccine]) VALUES (N'PN007          ', N'VC001                                             ', 4, 43000)
INSERT [dbo].[CHITIET_PHIEUNHAP] ([ma_phieunhap], [ma_vaccine], [so_luong], [gia_vaccine]) VALUES (N'PN008          ', N'VC001                                             ', 4, 43000)
INSERT [dbo].[CHITIET_PHIEUNHAP] ([ma_phieunhap], [ma_vaccine], [so_luong], [gia_vaccine]) VALUES (N'PN009          ', N'VC001                                             ', 4, 43000)
INSERT [dbo].[CHITIET_PHIEUNHAP] ([ma_phieunhap], [ma_vaccine], [so_luong], [gia_vaccine]) VALUES (N'PN010          ', N'VC001                                             ', 4, 43000)
INSERT [dbo].[CHITIET_PHIEUNHAP] ([ma_phieunhap], [ma_vaccine], [so_luong], [gia_vaccine]) VALUES (N'PN011          ', N'VC001                                             ', 2, 43000)
INSERT [dbo].[CHITIET_PHIEUNHAP] ([ma_phieunhap], [ma_vaccine], [so_luong], [gia_vaccine]) VALUES (N'PN012          ', N'VC005                                             ', 3, 45000)
INSERT [dbo].[CHITIET_PHIEUNHAP] ([ma_phieunhap], [ma_vaccine], [so_luong], [gia_vaccine]) VALUES (N'PN001          ', N'VC006                                             ', 12, 45000)
INSERT [dbo].[CHITIET_PHIEUNHAP] ([ma_phieunhap], [ma_vaccine], [so_luong], [gia_vaccine]) VALUES (N'PN002          ', N'VC006                                             ', 21, 45000)
GO
INSERT [dbo].[COMBO_VACCINE] ([ma_combo], [ten_combo], [gia_combo]) VALUES (N'CB001          ', N'Combo 1', 1500000)
INSERT [dbo].[COMBO_VACCINE] ([ma_combo], [ten_combo], [gia_combo]) VALUES (N'CB002          ', N'Combo 2', 987)
INSERT [dbo].[COMBO_VACCINE] ([ma_combo], [ten_combo], [gia_combo]) VALUES (N'CB003          ', N'Combo 3', 2500000)
INSERT [dbo].[COMBO_VACCINE] ([ma_combo], [ten_combo], [gia_combo]) VALUES (N'CB004          ', N'Combo 4', 3000000)
INSERT [dbo].[COMBO_VACCINE] ([ma_combo], [ten_combo], [gia_combo]) VALUES (N'CB005          ', N'Combo 5', 3500000)
INSERT [dbo].[COMBO_VACCINE] ([ma_combo], [ten_combo], [gia_combo]) VALUES (N'CB006          ', N'fsdf', 45)
INSERT [dbo].[COMBO_VACCINE] ([ma_combo], [ten_combo], [gia_combo]) VALUES (N'CB007          ', N'gdfg', 765)
INSERT [dbo].[COMBO_VACCINE] ([ma_combo], [ten_combo], [gia_combo]) VALUES (N'CB008          ', N'fds', 324)
GO
SET IDENTITY_INSERT [dbo].[GIOHANG] ON 

INSERT [dbo].[GIOHANG] ([id_giohang], [ma_khachhang], [ma_vaccine], [ma_combo], [soluong], [ma_voucher]) VALUES (196, N'KH001     ', N'VC001                                             ', NULL, 1, NULL)
SET IDENTITY_INSERT [dbo].[GIOHANG] OFF
GO
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD001     ', N'DK004     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD002     ', N'DK005     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD003     ', N'DK006     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD004     ', N'DK007     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD005     ', N'DK008     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD006     ', N'DK009     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD007     ', N'DK010     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD008     ', N'DK011     ', N'NV001     ', N'          ', NULL, N'CB002          , CB005                                                                                                                                                                                  ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD009     ', N'DK012     ', N'NV001     ', N'          ', NULL, N'CB002          , CB004                                                                                                                                                                                  ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD010     ', N'DK013     ', N'NV001     ', N'          ', NULL, N'CB004          , CB005                                                                                                                                                                                  ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD011     ', N'DK014     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD012     ', N'DK015     ', N'NV001     ', N'          ', NULL, N'CB005                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD013     ', N'DK016     ', N'NV001     ', N'          ', NULL, N'CB005                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD014     ', N'DK017     ', N'NV001     ', N'          ', NULL, N'CB005                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD015     ', N'DK018     ', N'NV001     ', N'          ', NULL, N'CB001                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD016     ', N'DK019     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD017     ', N'DK020     ', N'NV001     ', N'          ', NULL, N'CB001                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD018     ', N'DK021     ', N'NV001     ', N'          ', NULL, N'CB001                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD019     ', N'DK022     ', N'NV001     ', N'          ', NULL, N'CB001                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD020     ', N'DK023     ', N'NV001     ', N'          ', NULL, N'CB001                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD021     ', N'DK024     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD022     ', N'DK025     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD023     ', N'DK026     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD024     ', N'DK054     ', N'NV001     ', N'KH003     ', N'MV003          ', N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD025     ', N'DK098     ', N'NV001     ', N'          ', NULL, N'CB003                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD026     ', N'DK099     ', N'NV001     ', N'          ', NULL, N'CB004                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD027     ', N'DK100     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD028     ', N'DK063     ', N'NV001     ', N'KH012     ', N'MV012          ', N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD029     ', N'DK030     ', N'NV001     ', N'KH001     ', N'               ', N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD030     ', N'DK101     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD031     ', N'DK102     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD032     ', N'DK052     ', N'NV001     ', N'KH001     ', N'MV001          ', N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD033     ', N'DK027     ', N'NV001     ', N'KH001     ', NULL, N'CB005                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD034     ', N'DK088     ', N'NV001     ', N'KH001     ', NULL, NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD035     ', N'DK029     ', N'NV001     ', N'KH001     ', NULL, N'VC001                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD036     ', N'DK031     ', N'NV001     ', N'KH001     ', NULL, NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD037     ', N'DK106     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD038     ', N'DK107     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD039     ', N'DK103     ', N'NV001     ', N'KH001     ', NULL, NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD040     ', N'DK108     ', N'NV001     ', N'KH001     ', NULL, NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD041     ', N'DK044     ', N'NV001     ', N'KH001     ', NULL, NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD042     ', N'DK110     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD043     ', N'DK112     ', N'NV001     ', N'KH001     ', NULL, NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD044     ', N'DK113     ', N'NV001     ', N'KH001     ', NULL, N'CB001                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD045     ', N'DK114     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD046     ', N'DK115     ', N'NV001     ', N'          ', NULL, N'CB002                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD047     ', N'DK116     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD048     ', N'DK117     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD049     ', N'DK118     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD050     ', N'DK119     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD051     ', N'DK120     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD052     ', N'DK065     ', N'NV001     ', N'KH014     ', N'MV014          ', NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD053     ', N'DK066     ', N'NV001     ', N'KH015     ', N'MV015          ', NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD054     ', N'DK090     ', N'NV001     ', N'KH001     ', NULL, NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD055     ', N'DK121     ', N'NV001     ', N'KH001     ', NULL, NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD056     ', N'DK122     ', N'NV001     ', N'KH001     ', NULL, NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD057     ', N'DK111     ', N'NV001     ', N'KH001     ', NULL, NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD058     ', N'DK057     ', N'NV001     ', N'KH006     ', N'MV006          ', NULL, 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD059     ', N'DK125     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD060     ', N'DK126     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD061     ', N'DK127     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD062     ', N'DK124     ', N'NV001     ', N'KH001     ', NULL, N'VC001                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD063     ', N'DK128     ', N'NV001     ', N'          ', NULL, N'CB003                                                                                                                                                                                                   ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD064     ', N'DK129     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD065     ', N'DK130     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD066     ', N'DK131     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD067     ', N'DK132     ', N'NV001     ', N'          ', NULL, N'                                                                                                                                                                                                        ', 1)
INSERT [dbo].[HOADON] ([ma_hoadon], [ma_dangky], [ma_nhanvien], [ma_khachhang], [ma_voucher], [ma_combo], [trangthai]) VALUES (N'HD068     ', N'DK123     ', N'NV001     ', N'KH001     ', NULL, NULL, 1)
GO
INSERT [dbo].[KHACHHANG] ([ma_khachhang], [hoten_khachhang], [sdt_khachhang], [email_khachhang], [ngaysinh_khachhang], [gioitinh_khachhang], [pass_khachhang], [diemthanthiet], [trangthai]) VALUES (N'KH001     ', N'Lâm Thành Đạt', N'0236720017', N'lamthanhdat7747@gmail.com', CAST(N'1999-09-12' AS Date), N'Nam', N'quandss@@', 2650, 1)
INSERT [dbo].[KHACHHANG] ([ma_khachhang], [hoten_khachhang], [sdt_khachhang], [email_khachhang], [ngaysinh_khachhang], [gioitinh_khachhang], [pass_khachhang], [diemthanthiet], [trangthai]) VALUES (N'KH002     ', N'Lê Thị Minh Thư', N'0379854987', N'minhthu1995@gmail.com', CAST(N'1995-10-25' AS Date), N'Nữ', N'thu@@', 3000, 1)
INSERT [dbo].[KHACHHANG] ([ma_khachhang], [hoten_khachhang], [sdt_khachhang], [email_khachhang], [ngaysinh_khachhang], [gioitinh_khachhang], [pass_khachhang], [diemthanthiet], [trangthai]) VALUES (N'KH003     ', N'Lê Huyền Tâm Đoan', N'0373650876', N'tamdoan8876@gmail.com', CAST(N'1992-04-08' AS Date), N'Nữ', N'doan@@', 6000, 1)
INSERT [dbo].[KHACHHANG] ([ma_khachhang], [hoten_khachhang], [sdt_khachhang], [email_khachhang], [ngaysinh_khachhang], [gioitinh_khachhang], [pass_khachhang], [diemthanthiet], [trangthai]) VALUES (N'KH004     ', N'Hồ Minh Nhã', N'0385430987', N'nhaho1122@gmail.com', CAST(N'2001-12-17' AS Date), N'Nữ', N'nha@@', 50, 1)
INSERT [dbo].[KHACHHANG] ([ma_khachhang], [hoten_khachhang], [sdt_khachhang], [email_khachhang], [ngaysinh_khachhang], [gioitinh_khachhang], [pass_khachhang], [diemthanthiet], [trangthai]) VALUES (N'KH005     ', N'Lý Minh Hoàng', N'0382650987', N'hoangly5567@gmail.com', CAST(N'1990-11-15' AS Date), N'Nữ', N'hoang@@', 15, 1)
GO
INSERT [dbo].[KHO] ([ma_vaccine], [soluong_vaccine], [donvitinh]) VALUES (N'VC001                                             ', 50, N'Ống')
INSERT [dbo].[KHO] ([ma_vaccine], [soluong_vaccine], [donvitinh]) VALUES (N'VC002                                             ', 140, N'Ống')
INSERT [dbo].[KHO] ([ma_vaccine], [soluong_vaccine], [donvitinh]) VALUES (N'VC003                                             ', 179, N'Ống')
INSERT [dbo].[KHO] ([ma_vaccine], [soluong_vaccine], [donvitinh]) VALUES (N'VC004                                             ', 241, N'Ống')
INSERT [dbo].[KHO] ([ma_vaccine], [soluong_vaccine], [donvitinh]) VALUES (N'VC005                                             ', 300, N'Ống')
INSERT [dbo].[KHO] ([ma_vaccine], [soluong_vaccine], [donvitinh]) VALUES (N'VC006                                             ', 16, N'Ống')
INSERT [dbo].[KHO] ([ma_vaccine], [soluong_vaccine], [donvitinh]) VALUES (N'VC009                                             ', 38, N'Ống')
INSERT [dbo].[KHO] ([ma_vaccine], [soluong_vaccine], [donvitinh]) VALUES (N'VC010                                             ', 9, N'Ống')
GO
INSERT [dbo].[LOAIVACCINE] ([ma_loaivaccine], [ten_loaivaccine]) VALUES (N'LVC001         ', N'Vaccine giải độc tố')
INSERT [dbo].[LOAIVACCINE] ([ma_loaivaccine], [ten_loaivaccine]) VALUES (N'LVC002         ', N'Vaccine bất hoạt (chết)')
INSERT [dbo].[LOAIVACCINE] ([ma_loaivaccine], [ten_loaivaccine]) VALUES (N'LVC003         ', N'Vaccine sống giảm độc lực')
INSERT [dbo].[LOAIVACCINE] ([ma_loaivaccine], [ten_loaivaccine]) VALUES (N'LVC004         ', N'Vaccine Test')
INSERT [dbo].[LOAIVACCINE] ([ma_loaivaccine], [ten_loaivaccine]) VALUES (N'LVC005         ', N'Vaccine hỗn hợp')
INSERT [dbo].[LOAIVACCINE] ([ma_loaivaccine], [ten_loaivaccine]) VALUES (N'LVC006         ', N'Vaccine Thị Lực ')
INSERT [dbo].[LOAIVACCINE] ([ma_loaivaccine], [ten_loaivaccine]) VALUES (N'LVC007         ', N'Vaccine Nghị Lực')
INSERT [dbo].[LOAIVACCINE] ([ma_loaivaccine], [ten_loaivaccine]) VALUES (N'LVC008         ', N'Vaccine Tăng Lực')
GO
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK001     ', N'Lâm Thành Đạt', CAST(N'2024-05-28' AS Date), N'Nam', N'Tổ 4 Tân Châu', N'Nguyễn Trung Dân', N'Nam', 0, N'KH001     ', 622000, 3732000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-26' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK002     ', N'Lâm Thành Đạt', CAST(N'2024-06-01' AS Date), N'F', N'Tổ 4 Tân Châu', N'Nguyễn Trung Dân', N'self', 362800179, N'KH001     ', 800000, 4800000, CAST(N'2024-06-06' AS Date), CAST(N'2024-07-02' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK003     ', N'Lâm Thành Đạt', CAST(N'2024-06-07' AS Date), N'F', N'Tổ 4 Tân Châu', N'Nguyễn Trung Dân', N'self', 362800179, N'KH001     ', 1822000, 10932000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-22' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK004     ', N'Hello', CAST(N'2024-06-01' AS Date), N'Nữ', N'a', N'a', N'Mẹ', 123456789, N'          ', 35200000, 211200000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK005     ', N'a', CAST(N'2024-06-01' AS Date), N'Nam', N'a', N'a', N'Mẹ', 123456789, N'          ', 35200000, 211200000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK006     ', N'y', CAST(N'2024-06-01' AS Date), N'Nam', N'y', N'y', N'Mẹ', 123456789, N'          ', 35200000, 211200000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK007     ', N'y', CAST(N'2024-06-01' AS Date), N'Nam', N'4', N'r', N'Mẹ', 123456789, N'          ', 35200000, 211200000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK008     ', N'jj', CAST(N'2024-06-02' AS Date), N'Nam', N'jj', N'jj', N'Cha', 123456789, N'          ', 35200000, 211200000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK009     ', N'y', CAST(N'2024-06-02' AS Date), N'Nữ', N'g', N'g', N'Con', 123456789, N'          ', 35200000, 211200000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK010     ', N'h', CAST(N'2024-06-01' AS Date), N'Nam', N'gf', N'gf', N'Chị', 123456789, N'          ', 35200000, 211200000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK011     ', N'f', CAST(N'2024-06-01' AS Date), N'Nữ', N'f', N'f', N'Mẹ', 123456789, N'          ', 110000000, 660000000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK012     ', N'gf', CAST(N'2024-06-01' AS Date), N'Nam', N'gf', N'f', N'Vợ', 123456789, N'          ', 135200000, 811200000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK013     ', N'hg', CAST(N'2024-06-01' AS Date), N'Nam', N'hg', N'hg', N'Vợ', 123456789, N'          ', 130000000, 780000000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK014     ', N'hhhhhh', CAST(N'2024-06-01' AS Date), N'Nữ', N'gfgf', N'gf', N'Con', 123456789, N'          ', 35200000, 211200000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK015     ', N'ooooooo', CAST(N'2024-06-01' AS Date), N'Nam', N'kkgh', N'gfdg', N'Em gái', 123456789, N'          ', 95000000, 570000000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK016     ', N'gfhtrh', CAST(N'2024-06-02' AS Date), N'Nam', N'hgfhh', N'hfgh', N'Vợ', 123456789, N'          ', 76000000, 456000000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK017     ', N'gdfgawe', CAST(N'2024-06-02' AS Date), N'Nam', N'dfgdfg', N'gfer', N'Cha', 123456789, N'          ', 101000000, 606000000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK018     ', N'gfdgdf', CAST(N'2024-06-01' AS Date), N'Nam', N'gdsfsdf', N'gfdg', N'Mẹ', 123456789, N'          ', 30000000, 180000000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK019     ', N'fgdgfd', CAST(N'2024-06-01' AS Date), N'Nam', N'gfdgd', N'dfgfd', N'Mẹ', 213456789, N'          ', 35200000, 211200000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK020     ', N'gfdgfd', CAST(N'2024-06-01' AS Date), N'Nữ', N'gfdgdg', N'tereg', N'Chồng', 213456789, N'          ', 300000, 1800000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK021     ', N'ảgavd', CAST(N'2024-06-01' AS Date), N'Nữ', N'fsgearg', N'gẻagvd', N'Chồng', 123456789, N'          ', 300000, 1800000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK022     ', N'fghfgh', CAST(N'2024-06-01' AS Date), N'Nam', N'dẻg', N'gẻg', N'Mẹ', 123456789, N'          ', 300000, 1800000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK023     ', N'hjgfh', CAST(N'2024-05-29' AS Date), N'Nữ', N'jghj', N'jgh', N'Mẹ', 123456789, N'          ', 300000, 1800000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK024     ', N'fdgf', CAST(N'2024-06-01' AS Date), N'Nam', N'gfdshsrh', N'yuyui', N'Con', 123456789, N'          ', 0, 1760000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK025     ', N'gserg', CAST(N'2024-06-01' AS Date), N'Nam', N'gear', N'gẻ', N'Mẹ', 123456789, N'          ', 0, 1760000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK026     ', N'gsgre', CAST(N'2024-05-30' AS Date), N'Nam', N'gsrg', N'grseg', N'Cha', 123456789, N'          ', 0, 1760000, CAST(N'2024-06-06' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK027     ', N'Lâm Thành Đạt', CAST(N'2024-06-12' AS Date), N'F', N'Tổ 4 Tân Châu', N'Nguyễn Trung Dân', N'self', 362800179, N'KH001     ', 700000, 4200000, CAST(N'2024-06-07' AS Date), CAST(N'2024-06-25' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK028     ', N'Lâm Thành Đạt', CAST(N'2024-05-27' AS Date), N'F', N'Tổ 4 Tân Châu', N'Nguyễn Trung Dân', N'father', 362800179, N'KH001     ', 412000, 2472000, CAST(N'2024-06-07' AS Date), CAST(N'2024-06-22' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK029     ', N'goui', CAST(N'2024-06-01' AS Date), N'F', N'Tổ 4 Tân Châu', N'Nguyễn Thành Danh', N'self', 362800179, N'KH001     ', 0, 0, CAST(N'2024-06-07' AS Date), CAST(N'2024-06-21' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK030     ', N'Lâm Thành Đạt g', CAST(N'2024-05-27' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 0, 0, CAST(N'2024-06-07' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK031     ', N'Nguyễn Thành Danh', CAST(N'2024-05-29' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 0, 0, CAST(N'2024-06-07' AS Date), CAST(N'2024-06-27' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK032     ', N'Lâm Thành Đạtj', CAST(N'2024-05-27' AS Date), N'F', N'ds', N'Nguyễn Thành Danh', N'self', 362800179, N'KH001     ', 432000, 2592000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK033     ', N'Lâm Thành Đạtjnhg', CAST(N'2024-06-03' AS Date), N'F', N'ds', N'Nguyễn Thành Danh', N'self', 362800179, N'KH001     ', 250000, 1500000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-21' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK034     ', N'Lâm Thành Đạtjnhgh', CAST(N'2024-05-26' AS Date), N'F', N'ds', N'Nguyễn Thành Danh', N'self', 362800179, N'KH001     ', 60000, 360000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK035     ', N'Lâm Thành Đạtjnhghrg', CAST(N'2024-05-26' AS Date), N'F', N'ds', N'Nguyễn Thành Danh', N'self', 362800179, N'KH001     ', 60000, 360000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK036     ', N'Lâm Thành Đạto', CAST(N'2024-05-26' AS Date), N'F', N'Tổ 4 Tân Châu', N'Nguyễn Trung Dân', N'self', 362800179, N'KH001     ', 60000, 360000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK037     ', N'Lâm Thành Đạtof', CAST(N'2024-05-30' AS Date), N'F', N'Tổ 4 Tân Châu', N'Nguyễn Trung Dân', N'self', 362800179, N'KH001     ', 250000, 1500000, CAST(N'2024-06-08' AS Date), CAST(N'2024-07-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK038     ', N'Nguyễn Thành Danhjk', CAST(N'2024-05-26' AS Date), N'F', N'ds', N'Nguyễn Trung Dân', N'self', 362800179, N'KH001     ', 390000, 2340000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK039     ', N'Nguyễn Thành Danhjkj', CAST(N'2024-05-26' AS Date), N'F', N'ds', N'Nguyễn Trung Dân', N'self', 362800179, N'KH001     ', 250000, 1500000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK040     ', N'Nguyễn Thành Danhjkjl', CAST(N'2024-05-27' AS Date), N'F', N'ds', N'Nguyễn Trung Dân', N'self', 362800179, N'KH001     ', 254000, 1524000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-20' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK041     ', N'Lâm Thành Đạth', CAST(N'2024-05-26' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 390000, 2340000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-21' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK042     ', N'Lâm Thành Đạthe', CAST(N'2024-05-27' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 250000, 1500000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK043     ', N'Lâm Thành Đạthe', CAST(N'2024-05-27' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 250000, 1500000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK044     ', N'Lâm Thành Đạte', CAST(N'2024-05-28' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 314000, 1884000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-21' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK045     ', N'Lâm Thành Đạteu', CAST(N'2024-06-04' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 620000, 3720000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK046     ', N'Lâm Thành Đạtt', CAST(N'2024-05-26' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 60000, 360000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-18' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK047     ', N'Lâm Thành Đạttl', CAST(N'2023-01-13' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'husband', 362800179, N'KH001     ', 268000, 1608000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK048     ', N'ip', CAST(N'2024-05-26' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 390000, 2340000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK049     ', N'Lâm Thành Đạtpo', CAST(N'2024-06-04' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 390000, 2340000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK050     ', N'Nguyễn Thành Danhlo', CAST(N'2024-05-27' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 210000, 1260000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-27' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK051     ', N'Nguyễn Thành Danhloh', CAST(N'2024-05-30' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 372000, 2232000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK052     ', N'Nguyen Van A', CAST(N'1990-01-01' AS Date), N'Nam', N'123 Nguyen Hue, TP.HCM', N'Nguyen Thi B', N'Me', 123456789, N'KH001     ', 20000, 100000, CAST(N'2024-06-09' AS Date), CAST(N'2024-06-10' AS Date), N'MV001          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK053     ', N'Tran Thi C', CAST(N'1985-05-15' AS Date), N'Nu', N'456 Le Loi, TP.HCM', N'Tran Van D', N'Anh', 987654321, N'KH002     ', 25000, 120000, CAST(N'2024-06-09' AS Date), CAST(N'2024-06-10' AS Date), N'MV002          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK054     ', N'Le Van E', CAST(N'1992-09-20' AS Date), N'Nam', N'789 Tran Hung Dao, TP.HCM', N'Le Thi F', N'Bo', 456789123, N'KH003     ', 30000, 130000, CAST(N'2024-06-10' AS Date), CAST(N'2024-06-11' AS Date), N'MV003          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK055     ', N'Pham Thi G', CAST(N'1988-03-25' AS Date), N'Nu', N'147 Vo Van Tan, TP.HCM', N'Pham Van H', N'Chi', 369258147, N'KH004     ', 35000, 140000, CAST(N'2024-06-10' AS Date), CAST(N'2024-06-11' AS Date), N'MV004          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK056     ', N'Hoang Van I', CAST(N'1995-07-10' AS Date), N'Nam', N'258 Nguyen Trai, TP.HCM', N'Hoang Thi K', N'Em', 159357852, N'KH005     ', 40000, 150000, CAST(N'2024-06-11' AS Date), CAST(N'2024-06-12' AS Date), N'MV005          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK057     ', N'Nguyen Thi L', CAST(N'1982-11-30' AS Date), N'Nu', N'369 Vo Thi Sau, TP.HCM', N'Nguyen Van M', N'Anh', 951753852, N'KH006     ', 45000, 160000, CAST(N'2024-06-11' AS Date), CAST(N'2024-06-12' AS Date), N'MV006          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK058     ', N'Tran Van N', CAST(N'1998-04-05' AS Date), N'Nam', N'741 Le Quang Dinh, TP.HCM', N'Tran Thi O', N'Chi', 753159456, N'KH007     ', 50000, 170000, CAST(N'2024-06-12' AS Date), CAST(N'2024-06-13' AS Date), N'MV007          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK059     ', N'Le Thi P', CAST(N'1990-10-15' AS Date), N'Nu', N'963 Tran Nao, TP.HCM', N'Le Van Q', N'Anh', 159753486, N'KH008     ', 55000, 180000, CAST(N'2024-06-12' AS Date), CAST(N'2024-06-13' AS Date), N'MV008          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK060     ', N'Phan Van R', CAST(N'1983-08-20' AS Date), N'Nam', N'159 Le Duan, TP.HCM', N'Phan Thi S', N'Em', 357951486, N'KH009     ', 60000, 190000, CAST(N'2024-06-13' AS Date), CAST(N'2024-06-14' AS Date), N'MV009          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK061     ', N'Do Thi T', CAST(N'1993-12-25' AS Date), N'Nu', N'357 Vo Van Tan, TP.HCM', N'Do Van U', N'Bo', 852147963, N'KH010     ', 65000, 200000, CAST(N'2024-06-13' AS Date), CAST(N'2024-06-14' AS Date), N'MV010          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK062     ', N'Vo Van V', CAST(N'1987-06-30' AS Date), N'Nam', N'951 Le Van Sy, TP.HCM', N'Vo Thi W', N'Me', 369852147, N'KH011     ', 70000, 210000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-15' AS Date), N'MV011          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK063     ', N'Bui Thi X', CAST(N'1997-02-10' AS Date), N'Nu', N'258 Le Hong Phong, TP.HCM', N'Bui Van Y', N'Chi', 741852963, N'KH012     ', 75000, 220000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-15' AS Date), N'MV012          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK064     ', N'Nguyen Van Z', CAST(N'1986-09-05' AS Date), N'Nam', N'369 Vo Thi Sau, TP.HCM', N'Nguyen Thi A1', N'Anh', 852741963, N'KH013     ', 80000, 230000, CAST(N'2024-06-15' AS Date), CAST(N'2024-06-16' AS Date), N'MV013          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK065     ', N'Tran Thi B1', CAST(N'1994-05-20' AS Date), N'Nu', N'741 Le Quang Dinh, TP.HCM', N'Tran Van C1', N'Bo', 753159852, N'KH014     ', 85000, 240000, CAST(N'2024-06-15' AS Date), CAST(N'2024-06-16' AS Date), N'MV014          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK066     ', N'Le Van D1', CAST(N'1989-11-10' AS Date), N'Nam', N'963 Tran Nao, TP.HCM', N'Le Thi E1', N'Chi', 159753852, N'KH015     ', 90000, 250000, CAST(N'2024-06-16' AS Date), CAST(N'2024-06-17' AS Date), N'MV015          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK067     ', N'Pham Thi F1', CAST(N'1984-07-25' AS Date), N'Nu', N'159 Le Duan, TP.HCM', N'Pham Van G1', N'Anh', 357951852, N'KH016     ', 95000, 260000, CAST(N'2024-06-16' AS Date), CAST(N'2024-06-17' AS Date), N'MV016          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK068     ', N'Hoang Van H1', CAST(N'1996-01-30' AS Date), N'Nam', N'357 Vo Van Tan, TP.HCM', N'Hoang Thi I1', N'Em', 951753159, N'KH017     ', 100000, 270000, CAST(N'2024-06-17' AS Date), CAST(N'2024-06-18' AS Date), N'MV017          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK069     ', N'Nguyen Thi K1', CAST(N'1981-08-15' AS Date), N'Nu', N'258 Le Hong Phong, TP.HCM', N'Nguyen Van L1', N'Anh', 369852741, N'KH018     ', 105000, 280000, CAST(N'2024-06-17' AS Date), CAST(N'2024-06-18' AS Date), N'MV018          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK070     ', N'Tran Van M1', CAST(N'1999-03-05' AS Date), N'Nam', N'369 Vo Thi Sau, TP.HCM', N'Tran Thi N1', N'Chi', 852741369, N'KH019     ', 110000, 290000, CAST(N'2024-06-18' AS Date), CAST(N'2024-06-19' AS Date), N'MV019          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK071     ', N'Le Thi O1', CAST(N'1991-09-20' AS Date), N'Nu', N'741 Le Quang Dinh, TP.HCM', N'Le Van P1', N'Bo', 753159963, N'KH020     ', 115000, 300000, CAST(N'2024-06-18' AS Date), CAST(N'2024-06-19' AS Date), N'MV020          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK072     ', N'Lâm Thành Đạtg', CAST(N'2024-05-29' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 314000, 1884000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK073     ', N'Lâm Thành Đạtgi', CAST(N'2024-06-05' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 254000, 1524000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK074     ', N'Lâm Thành Đạts', CAST(N'2024-05-27' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 268000, 1608000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK075     ', N'Lâm Thành Đạtsf', CAST(N'2024-05-28' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 254000, 1524000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK076     ', N'Lâm Thành Đạtsfd', CAST(N'2024-05-26' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 236000, 1416000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-20' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK077     ', N'Lâm Thành Đạtd', CAST(N'2024-05-27' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 268000, 1608000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK078     ', N'Lâm Thành Đạtdd', CAST(N'2024-05-28' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 352000, 2112000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK079     ', N'Lâm Thành Đạtddt', CAST(N'2024-05-30' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 352000, 2112000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-26' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK080     ', N'Lâm Thành Đạtddth', CAST(N'2024-05-28' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 250000, 1500000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-20' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK081     ', N'Lâm Thành Đạtddthy', CAST(N'2024-05-26' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 352000, 2112000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK082     ', N'Lâm Thành Đạtddthyh', CAST(N'2024-05-26' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 300000, 1800000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK083     ', N'Lâm Thành Đạtddthyhf', CAST(N'2024-05-26' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 268000, 1608000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK084     ', N'Lâm Thành Đạtddthyhfh', CAST(N'2024-05-26' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 250000, 1500000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK085     ', N'Lâm Thành Đạtddthyhfhf', CAST(N'2024-05-27' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 352000, 2112000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-20' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK086     ', N'Lâm Thành Đạtddthyhfhff', CAST(N'2024-05-26' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 352000, 2112000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-21' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK087     ', N'Lâm Thành Đạtddthyhfhfff', CAST(N'2024-05-27' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 210000, 1260000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK088     ', N'Lâm Thành Đạtddthyhfhffft', CAST(N'0001-01-01' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 268000, 1608000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK089     ', N'Lâm Thành Đạtddthyhfhffftg', CAST(N'2024-05-27' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 268000, 1608000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-21' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK090     ', N'Nguyễn Thành Danht', CAST(N'2024-05-28' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 210000, 1260000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK091     ', N'Nguyễn Thành Danhtt', CAST(N'2024-05-27' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 268000, 1608000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK092     ', N'Nguyễn Thành Danhttt', CAST(N'2024-05-27' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 352000, 2112000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-26' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK093     ', N'Nguyễn Thành Danhtttt', CAST(N'2024-05-27' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 268000, 1608000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK094     ', N'Nguyễn Thành Danhtttty', CAST(N'2024-05-27' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 390000, 2340000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-21' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK095     ', N'Nguyễn Thành Danhttttyh', CAST(N'0001-01-01' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 268000, 1608000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK096     ', N'Nguyễn Thành Danhttttyhk', CAST(N'2024-05-26' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 352000, 2112000, CAST(N'2024-06-08' AS Date), CAST(N'2024-06-21' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK097     ', N'Nguy?n Van A', CAST(N'1990-01-01' AS Date), N'Nam', N'123 Nguy?n Hu?, TP.HCM', N'Nguy?n Th? B', N'gf', 123456789, N'KH001     ', 10000, 100000, CAST(N'2024-06-09' AS Date), CAST(N'2024-06-10' AS Date), N'MV001          ')
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK098     ', N'Xi nchao ', CAST(N'2024-06-05' AS Date), N'Nữ', N'hgf', N'gfh', N'Con', 123456789, N'          ', 500000, 3000000, CAST(N'2024-06-10' AS Date), CAST(N'2024-06-10' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK099     ', N'nguyễn vă ná ', CAST(N'2024-05-30' AS Date), N'Nam', N'fdf', N'ds', N'Cha', 123456789, N'          ', 600000, 3600000, CAST(N'2024-06-11' AS Date), CAST(N'2024-06-11' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK100     ', N'fwef', CAST(N'2024-05-07' AS Date), N'Nữ', N'fwef', N'fwef', N'Mẹ', 123456789, N'          ', 0, 300000, CAST(N'2024-06-11' AS Date), CAST(N'2024-06-11' AS Date), NULL)
GO
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK101     ', N'fwe', CAST(N'2024-05-28' AS Date), N'Nữ', N'0123456789', N'fwe', N'Con', 123456789, N'          ', 0, 1050000, CAST(N'2024-06-11' AS Date), CAST(N'2024-06-11' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK102     ', N'fsdf', CAST(N'2024-05-27' AS Date), N'Nữ', N'0123457898', N'ádf', N'Con', 123457898, N'          ', 0, 1760000, CAST(N'2024-06-11' AS Date), CAST(N'2024-06-11' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK103     ', N'Test', CAST(N'2024-05-27' AS Date), N'F', N'Test', N'Test', N'self', 362800179, N'KH001     ', -6.4, -38.4, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK104     ', N'Testt', CAST(N'2024-05-26' AS Date), N'F', N'Test', N'Test', N'self', 362800179, N'KH001     ', 1084.6, 6507.6, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-22' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK105     ', N'Testtt', CAST(N'2024-05-26' AS Date), N'F', N'Test', N'Test', N'self', 362800179, N'KH001     ', 1084.6, 6507.6, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK106     ', N'TEsttttt', CAST(N'2024-05-28' AS Date), N'Nam', N'TEsttttt', N'TEsttttt', N'Cha', 123456789, N'          ', 0, 765, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-22' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK107     ', N'Cá', CAST(N'2024-05-28' AS Date), N'Nam', N'Cá', N'Cá', N'Vợ', 123456789, N'          ', 0, 1760000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-14' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK108     ', N'Testtttttt', CAST(N'2024-05-27' AS Date), N'F', N'Test', N'Test', N'self', 362800179, N'KH001     ', 254000, 1524000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK109     ', N'Lâm Thành Đạtfdgfh', CAST(N'2024-05-26' AS Date), N'F', N'Tổ 4 Tân Châu', N'Nguyễn Trung Dân', N'self', 362800179, N'KH001     ', 300000, 1800000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK110     ', N'Lâm Thành Đạt test ', CAST(N'2024-05-29' AS Date), N'Nữ', N'Lâm Thành Đạt test ', N'Lâm Thành Đạt test ', N'Vợ', 123456789, N'          ', 0, 1760000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-14' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK111     ', N'Lâm Thành Đạt TEST', CAST(N'2024-05-26' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 352000, 2112000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-21' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK112     ', N'Lâm Thành Đạt TESTt', CAST(N'2024-06-03' AS Date), N'F', N'ds', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', 352000, 2112000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK113     ', N'Lâm Thành Đạthl', CAST(N'2024-06-04' AS Date), N'F', N'ds', N'Nguyễn Trung Dân', N'self', 362800179, N'KH001     ', 300000, 1800000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-21' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK114     ', N'grg', CAST(N'2024-05-28' AS Date), N'Nữ', N'rthwhrt', N'erger', N'Cha', 213456789, N'          ', 0, 765, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-14' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK115     ', N'mnbvc', CAST(N'2024-05-28' AS Date), N'Nam', N'mnbvcmnbvc', N'mnbvc', N'Con', 213456789, N'          ', 197, 1184, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-14' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK116     ', N'X', CAST(N'2024-05-27' AS Date), N'Nữ', N'X', N'X', N'Cha', 123456789, N'          ', 0, 1250000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-14' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK117     ', N'fwetg', CAST(N'2024-05-28' AS Date), N'Nữ', N'gẻgreqg', N'regre', N'Con', 123456789, N'          ', 0, 1250000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-14' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK118     ', N'gẻger', CAST(N'2024-05-28' AS Date), N'Nam', N'ẻgerqg', N'fergqr', N'Cha', 123456789, N'          ', 0, 654, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-14' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK119     ', N'dừewf', CAST(N'2024-05-28' AS Date), N'Nam', N'ảegqreg', N'greq', N'Con', 123456789, N'          ', 0, 300000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-14' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK120     ', N'hdafhadh', CAST(N'2024-05-28' AS Date), N'Nữ', N'dfadsf', N'sdhsh', N'Vợ', 123456789, N'          ', 0, 1340000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-14' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK121     ', N'Lâm Thành Đạthlh', CAST(N'2024-05-27' AS Date), N'F', N'ds', N'Nguyễn Trung Dân', N'self', 362800179, N'KH001     ', 61084.6, 366507.6, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-29' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK122     ', N'Nguyễn Thành Danhv', CAST(N'2024-05-29' AS Date), N'F', N'ds', N'Nguyễn Thành Danh', N'self', 362800179, N'KH001     ', 250000, 1500000, CAST(N'2024-06-14' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK123     ', N'Nguyễn Thành Danhvh', CAST(N'2024-05-26' AS Date), N'F', N'ds', N'Nguyễn Thành Danh', N'self', 362800179, N'KH001     ', 130.8, 784.8, CAST(N'2024-06-15' AS Date), CAST(N'2024-06-16' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK124     ', N'Lâm Thành Đạtqư', CAST(N'2015-01-13' AS Date), N'F', N'Tổ 4 Tân Châu', N'Lâm Thành Đạt', N'self', 362800179, N'KH001     ', -6.4, -38.4, CAST(N'2024-06-16' AS Date), CAST(N'2024-06-19' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK125     ', N'cường Anh  chau', CAST(N'2024-06-11' AS Date), N'Nữ', N'fdgreag', N'ưefweg', N'Con', 123456789, N'          ', 0, 1570000, CAST(N'2024-06-16' AS Date), CAST(N'2024-06-06' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK126     ', N'Nguyễn Thành Đạt', CAST(N'2024-06-06' AS Date), N'Nữ', N'Tổ 3 ', N'Nguyễn Thành Đạt', N'Con', 123456789, N'          ', 0, 5423, CAST(N'2024-06-16' AS Date), CAST(N'2024-06-14' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK127     ', N'Châu Phú Cường ', CAST(N'2024-06-12' AS Date), N'Nam', N'Châu Phú Cường ', N'Châu Phú Cường ', N'Con', 123456789, N'          ', 0, 1760000, CAST(N'2024-06-16' AS Date), CAST(N'2024-06-17' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK128     ', N'Lâm Thành Đạt', CAST(N'2024-05-27' AS Date), N'Nam', N'grh', N'Lâm Thành Đạt', N'Em gái', 123456789, N'          ', 500000, 3000000, CAST(N'2024-06-16' AS Date), CAST(N'2024-06-22' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK129     ', N'Test dữ liệu', CAST(N'2024-06-07' AS Date), N'Nam', N'Test dữ liệu', N'Test dữ liệu', N'Chồng', 123456789, N'          ', 0, 1250000, CAST(N'2024-06-16' AS Date), CAST(N'2024-06-28' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK130     ', N'Tets dữ liệu', CAST(N'2024-06-04' AS Date), N'Nam', N'Tets dữ liệu', N'Tets dữ liệu', N'Con', 123456789, N'          ', 0, 1250000, CAST(N'2024-06-16' AS Date), CAST(N'2024-06-22' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK131     ', N'TEst dữ lueuej ', CAST(N'2024-05-29' AS Date), N'Nam', N'TEst dữ lueuej ', N'TEst dữ lueuej ', N'Mẹ', 123456789, N'          ', 0, 765, CAST(N'2024-06-16' AS Date), CAST(N'2024-06-20' AS Date), NULL)
INSERT [dbo].[NGUOITIEM_DANGKY] ([ma_dangky], [hoten_nguoitiem], [ngaysinh_nguoitiem], [gioitinh_nguoitiem], [diachi_nguoitiem], [hoten_nguoilienhe], [moiquanhe_nguoitiem], [sdt_nguoilienhe], [ma_khachhang], [phi_luukho], [tongthanhtoan], [ngay_dangky], [ngay_muontiem], [ma_voucher]) VALUES (N'DK132     ', N'Lấy dữ liệu để test ', CAST(N'2024-06-11' AS Date), N'Nữ', N'TEst dữ lueuej ', N'TEst dữ lueuej ', N'Mẹ', 123456789, N'          ', 0, 1250000, CAST(N'2024-06-16' AS Date), CAST(N'2024-06-29' AS Date), NULL)
GO
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK002     ', N'CB001          ', NULL)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK018     ', N'CB001          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK020     ', N'CB001          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK021     ', N'CB001          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK022     ', N'CB001          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK023     ', N'CB001          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK082     ', N'CB001          ', NULL)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK109     ', N'CB001          ', NULL)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK113     ', N'CB001          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK011     ', N'CB002          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK012     ', N'CB002          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK115     ', N'CB002          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK002     ', N'CB003          ', NULL)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK003     ', N'CB003          ', NULL)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK098     ', N'CB003          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK128     ', N'CB003          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK012     ', N'CB004          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK013     ', N'CB004          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK099     ', N'CB004          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK003     ', N'CB005          ', NULL)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK011     ', N'CB005          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK013     ', N'CB005          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK015     ', N'CB005          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK016     ', N'CB005          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK017     ', N'CB005          ', 1)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK027     ', N'CB005          ', NULL)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK029     ', N'VC001          ', NULL)
INSERT [dbo].[NGUOITIEM_MUACOMBO] ([ma_dangky], [ma_combo], [so_luong]) VALUES (N'DK124     ', N'VC001          ', 1)
GO
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK004     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK005     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK006     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK007     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK008     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK009     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK010     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK012     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK014     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK019     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK024     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK025     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK026     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK028     ', N'VC001                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK045     ', N'VC001                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK052     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK053     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK055     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK056     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK057     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK059     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK060     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK062     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK063     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK065     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK067     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK068     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK069     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK071     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK078     ', N'VC001                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK079     ', N'VC001                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK081     ', N'VC001                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK085     ', N'VC001                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK086     ', N'VC001                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK092     ', N'VC001                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK096     ', N'VC001                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK102     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK107     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK110     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK111     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK112     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK127     ', N'VC001                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK040     ', N'VC0010                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK073     ', N'VC0010                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK075     ', N'VC0010                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK108     ', N'VC0010                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK125     ', N'VC0010                                            ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK074     ', N'VC0011                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK077     ', N'VC0011                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK103     ', N'VC0011                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK124     ', N'VC0011                                            ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK045     ', N'VC0012                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK047     ', N'VC0012                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK083     ', N'VC0012                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK088     ', N'VC0012                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK089     ', N'VC0012                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK091     ', N'VC0012                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK093     ', N'VC0012                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK095     ', N'VC0012                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK120     ', N'VC0012                                            ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK044     ', N'VC0013                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK072     ', N'VC0013                                            ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK016     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK017     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK028     ', N'VC002                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK032     ', N'VC002                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK034     ', N'VC002                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK035     ', N'VC002                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK036     ', N'VC002                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK046     ', N'VC002                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK052     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK054     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK056     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK058     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK059     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK061     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK062     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK064     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK065     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK066     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK068     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK070     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK071     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK100     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK119     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK121     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK125     ', N'VC002                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK038     ', N'VC003                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK041     ', N'VC003                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK048     ', N'VC003                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK049     ', N'VC003                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK053     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK057     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK058     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK060     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK061     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK063     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK064     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK066     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK067     ', N'VC003                                             ', 1)
GO
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK069     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK070     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK094     ', N'VC003                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK106     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK114     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK131     ', N'VC003                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK001     ', N'VC004                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK003     ', N'VC004                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK032     ', N'VC004                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK051     ', N'VC004                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK017     ', N'VC005                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK033     ', N'VC005                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK039     ', N'VC005                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK117     ', N'VC005                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK122     ', N'VC005                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK001     ', N'VC006                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK003     ', N'VC006                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK015     ', N'VC006                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK037     ', N'VC006                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK042     ', N'VC006                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK043     ', N'VC006                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK080     ', N'VC006                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK084     ', N'VC006                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK116     ', N'VC006                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK129     ', N'VC006                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK130     ', N'VC006                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK132     ', N'VC006                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK050     ', N'VC008                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK087     ', N'VC008                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK090     ', N'VC008                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK101     ', N'VC008                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK118     ', N'VC008                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK123     ', N'VC008                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK076     ', N'VC009                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK104     ', N'VC009                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK105     ', N'VC009                                             ', NULL)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK121     ', N'VC009                                             ', 1)
INSERT [dbo].[NGUOITIEM_MUAVACCINE] ([ma_dangky], [ma_vaccine], [so_luong]) VALUES (N'DK126     ', N'VC009                                             ', 1)
GO
INSERT [dbo].[NHACUNGCAP] ([ma_nhacungcap], [ten_nhacungcap], [diachi_nhacungcap], [sdt_nhacungcap]) VALUES (N'NCC001    ', N'Tổng công ty dược Việt Nam – CTCP', N'12 Ngô Tất Tố, Văn Miếu, quận Đống Đa, TP. Hà Nội', N'02838443151 ')
INSERT [dbo].[NHACUNGCAP] ([ma_nhacungcap], [ten_nhacungcap], [diachi_nhacungcap], [sdt_nhacungcap]) VALUES (N'NCC002    ', N'Công ty cổ phần dược phẩm Trung ương CPC1', N'Số 87 phố Nguyễn Văn Trỗi, quận Thanh Xuân, TP. Hà Nội', N'02438643327 ')
INSERT [dbo].[NHACUNGCAP] ([ma_nhacungcap], [ten_nhacungcap], [diachi_nhacungcap], [sdt_nhacungcap]) VALUES (N'NCC004    ', N'Công ty cổ phần dược phẩm thiết bị y tế Hà Nội (Hapharco)', N'Số 2 Hàng Bài, quận Hoàn Kiếm, TP. Hà Nội', N'0438255998  ')
INSERT [dbo].[NHACUNGCAP] ([ma_nhacungcap], [ten_nhacungcap], [diachi_nhacungcap], [sdt_nhacungcap]) VALUES (N'NCC008    ', N'hgfhrt', N'ferwrg', N'45634       ')
GO
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [hoten_nhanvien], [diachi_nhanvien], [sdt_nhanvien], [email_nhanvien], [cccd_nhanvien], [ngaysinh_nhanvien], [gioitinh_nhanvien], [anh_nhanvien], [quyen_nhanvien]) VALUES (N'NV001          ', N'Lê Thành Nhân', N'263 Hoàng Hoa Thám', N'0782511972 ', N'nhanle1111@gmail.com                              ', N'079209875674', CAST(N'2002-09-16' AS Date), N'Nam', N'AnhNV1.png', N'Admin')
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [hoten_nhanvien], [diachi_nhanvien], [sdt_nhanvien], [email_nhanvien], [cccd_nhanvien], [ngaysinh_nhanvien], [gioitinh_nhanvien], [anh_nhanvien], [quyen_nhanvien]) VALUES (N'NV002          ', N'Hoàng Lê Thanh My', N'324 Hòa Bình', N'0782511152 ', N'myhoang001@gmail.com                              ', N'085409875674', CAST(N'1999-05-13' AS Date), N'Nữ', N'AnhNV2.png', N'Nhanvien')
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [hoten_nhanvien], [diachi_nhanvien], [sdt_nhanvien], [email_nhanvien], [cccd_nhanvien], [ngaysinh_nhanvien], [gioitinh_nhanvien], [anh_nhanvien], [quyen_nhanvien]) VALUES (N'NV003          ', N'Nguyễn Uy Tín', N'201 Trần Thị Báo', N'0783001152 ', N'uytin1415@gmail.com                               ', N'079209822814', CAST(N'2000-02-17' AS Date), N'Nam', N'AnhNV3.png', N'Nhanvien')
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [hoten_nhanvien], [diachi_nhanvien], [sdt_nhanvien], [email_nhanvien], [cccd_nhanvien], [ngaysinh_nhanvien], [gioitinh_nhanvien], [anh_nhanvien], [quyen_nhanvien]) VALUES (N'NV004          ', N'Trần Thị Mỹ Nhân', N'402 Lý Thái Tổ', N'0782519652 ', N'mynhan1160@gmail.com                              ', N'079276425674', CAST(N'1997-07-11' AS Date), N'Nữ', N'AnhNV4.png', N'Nhanvien')
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [hoten_nhanvien], [diachi_nhanvien], [sdt_nhanvien], [email_nhanvien], [cccd_nhanvien], [ngaysinh_nhanvien], [gioitinh_nhanvien], [anh_nhanvien], [quyen_nhanvien]) VALUES (N'NV005          ', N'Long Trần Thanh Tuấn', N'117 Nguyễn Tri Phương', N'0782020152 ', N'thanhtuan9923@gmail.com                           ', N'079209111674', CAST(N'1995-04-20' AS Date), N'Nam', N'AnhNV5.png', N'Admin')
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [hoten_nhanvien], [diachi_nhanvien], [sdt_nhanvien], [email_nhanvien], [cccd_nhanvien], [ngaysinh_nhanvien], [gioitinh_nhanvien], [anh_nhanvien], [quyen_nhanvien]) VALUES (N'NV006          ', N'Lê Thành Cam', N'263 Hoàng Hoa Thám', N'0782511972 ', N'nhanle1111@gmail.com                              ', N'079209875674', CAST(N'2002-09-16' AS Date), N'Nam', N'Nhanvien.jpg', N'Admin')
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [hoten_nhanvien], [diachi_nhanvien], [sdt_nhanvien], [email_nhanvien], [cccd_nhanvien], [ngaysinh_nhanvien], [gioitinh_nhanvien], [anh_nhanvien], [quyen_nhanvien]) VALUES (N'NV007          ', N'Lê Thành Cam', N'263 Hoàng Hoa Thám', N'0782511972 ', N'nhanle1111@gmail.com                              ', N'079209875674', CAST(N'2002-09-16' AS Date), N'Nam', N'xinchao.jpg', N'Admin')
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [hoten_nhanvien], [diachi_nhanvien], [sdt_nhanvien], [email_nhanvien], [cccd_nhanvien], [ngaysinh_nhanvien], [gioitinh_nhanvien], [anh_nhanvien], [quyen_nhanvien]) VALUES (N'NV008          ', N'fdsfasef', N'sdfadfwe', N'01234567890', N'fsd                                               ', N'qưertyuioppo', CAST(N'2024-05-28' AS Date), N'Nam', N'Test.jpg', N'Nhanvien')
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [hoten_nhanvien], [diachi_nhanvien], [sdt_nhanvien], [email_nhanvien], [cccd_nhanvien], [ngaysinh_nhanvien], [gioitinh_nhanvien], [anh_nhanvien], [quyen_nhanvien]) VALUES (N'NV009          ', N'sdfasdgasdg', N'sadfasdf', N'0123456789 ', N'12                                                ', N'012345678912', CAST(N'2024-05-28' AS Date), N'Nam', N'gte.htadg.jpg', N'Nhanvien')
INSERT [dbo].[NHANVIEN] ([ma_nhanvien], [hoten_nhanvien], [diachi_nhanvien], [sdt_nhanvien], [email_nhanvien], [cccd_nhanvien], [ngaysinh_nhanvien], [gioitinh_nhanvien], [anh_nhanvien], [quyen_nhanvien]) VALUES (N'NV011          ', N'Chương', N'Chương 11', N'0123456789 ', N'cuong@gmail                                       ', N'123456789098', CAST(N'2024-01-03' AS Date), N'Nam', N'Cường.jpg.jpg.jpg', N'Nhanvien')
GO
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ma_nhanvien], [ma_nhacungcap], [ngay_nhap], [tong_tien]) VALUES (N'PN001          ', N'NV001          ', N'NCC001    ', CAST(N'2024-06-06' AS Date), 540000)
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ma_nhanvien], [ma_nhacungcap], [ngay_nhap], [tong_tien]) VALUES (N'PN002          ', N'NV001          ', N'NCC001    ', CAST(N'2024-06-06' AS Date), 945000)
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ma_nhanvien], [ma_nhacungcap], [ngay_nhap], [tong_tien]) VALUES (N'PN003          ', N'NV001          ', N'NCC001    ', CAST(N'2024-06-06' AS Date), 129000)
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ma_nhanvien], [ma_nhacungcap], [ngay_nhap], [tong_tien]) VALUES (N'PN004          ', N'NV001          ', N'NCC001    ', CAST(N'2024-06-09' AS Date), 516000)
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ma_nhanvien], [ma_nhacungcap], [ngay_nhap], [tong_tien]) VALUES (N'PN005          ', N'NV001          ', N'NCC001    ', CAST(N'2024-06-14' AS Date), 430000)
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ma_nhanvien], [ma_nhacungcap], [ngay_nhap], [tong_tien]) VALUES (N'PN006          ', N'NV001          ', N'NCC001    ', CAST(N'2024-06-14' AS Date), 86000)
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ma_nhanvien], [ma_nhacungcap], [ngay_nhap], [tong_tien]) VALUES (N'PN007          ', N'NV001          ', N'NCC001    ', CAST(N'2024-06-16' AS Date), 172000)
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ma_nhanvien], [ma_nhacungcap], [ngay_nhap], [tong_tien]) VALUES (N'PN008          ', N'NV001          ', N'NCC001    ', CAST(N'2024-06-16' AS Date), 172000)
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ma_nhanvien], [ma_nhacungcap], [ngay_nhap], [tong_tien]) VALUES (N'PN009          ', N'NV001          ', N'NCC001    ', CAST(N'2024-06-16' AS Date), 172000)
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ma_nhanvien], [ma_nhacungcap], [ngay_nhap], [tong_tien]) VALUES (N'PN010          ', N'NV001          ', N'NCC001    ', CAST(N'2024-06-16' AS Date), 172000)
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ma_nhanvien], [ma_nhacungcap], [ngay_nhap], [tong_tien]) VALUES (N'PN011          ', N'NV001          ', N'NCC001    ', CAST(N'2024-06-16' AS Date), 86000)
INSERT [dbo].[PHIEUNHAP] ([ma_phieunhap], [ma_nhanvien], [ma_nhacungcap], [ngay_nhap], [tong_tien]) VALUES (N'PN012          ', N'NV001          ', N'NCC001    ', CAST(N'2024-06-16' AS Date), 135000)
GO
INSERT [dbo].[TAIKHOAN] ([ma_nhanvien], [tendangnhap], [matkhau]) VALUES (N'NV001          ', N'thanhnhan11                                       ', N'123456                                            ')
INSERT [dbo].[TAIKHOAN] ([ma_nhanvien], [tendangnhap], [matkhau]) VALUES (N'NV002          ', N'thanhmy01                                         ', N'aaaaaa                                            ')
INSERT [dbo].[TAIKHOAN] ([ma_nhanvien], [tendangnhap], [matkhau]) VALUES (N'NV003          ', N'uytin324                                          ', N'tin@@324                                          ')
INSERT [dbo].[TAIKHOAN] ([ma_nhanvien], [tendangnhap], [matkhau]) VALUES (N'NV004          ', N'mynhan402                                         ', N'nhan@@402                                         ')
INSERT [dbo].[TAIKHOAN] ([ma_nhanvien], [tendangnhap], [matkhau]) VALUES (N'NV005          ', N'thanhtuan                                         ', N'@@123456                                          ')
INSERT [dbo].[TAIKHOAN] ([ma_nhanvien], [tendangnhap], [matkhau]) VALUES (N'NV006          ', N'caycu                                             ', N'123                                               ')
GO
SET IDENTITY_INSERT [dbo].[TIEMVACCINE_MUI] ON 

INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK004     ', N'VC001                                             ', 1, NULL, 1, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK005     ', N'VC001                                             ', 1, 1, 2, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK006     ', N'VC001                                             ', 1, NULL, 3, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK007     ', N'VC001                                             ', 1, NULL, 4, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK008     ', N'VC001                                             ', 1, NULL, 5, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK009     ', N'VC001                                             ', 1, NULL, 6, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK010     ', N'VC001                                             ', 1, NULL, 7, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK012     ', N'VC001                                             ', 1, NULL, 8, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK014     ', N'VC001                                             ', 1, NULL, 9, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK015     ', N'VC006                                             ', 1, NULL, 10, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK016     ', N'VC002                                             ', 1, NULL, 11, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK017     ', N'VC002                                             ', 1, NULL, 12, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK017     ', N'VC005                                             ', 1, NULL, 13, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK019     ', N'VC001                                             ', 1, NULL, 14, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK024     ', N'VC001                                             ', 1, NULL, 15, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK025     ', N'VC001                                             ', 1, NULL, 16, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK026     ', N'VC001                                             ', 1, 0, 17, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK054     ', N'VC002                                             ', 1, 0, 18, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK098     ', N'VC001                                             ', 1, 1, 19, N'CB003                                             ', NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK098     ', N'VC001                                             ', 2, 0, 20, N'CB003                                             ', NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK100     ', N'VC002                                             ', 1, 0, 21, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK063     ', N'VC001                                             ', 1, 0, 22, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK063     ', N'VC003                                             ', 1, 0, 23, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK101     ', N'VC008                                             ', 1, 0, 24, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK102     ', N'VC001                                             ', 1, 0, 25, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK052     ', N'VC001                                             ', 1, 0, 26, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK052     ', N'VC002                                             ', 1, 0, 27, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK088     ', N'VC0012                                            ', 1, 0, 28, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK106     ', N'VC003                                             ', 1, 1, 29, NULL, CAST(N'2024-06-14' AS Date))
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK107     ', N'VC001                                             ', 1, 0, 30, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK103     ', N'VC0011                                            ', 1, 0, 31, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK108     ', N'VC0010                                            ', 1, 0, 32, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK044     ', N'VC0013                                            ', 1, 0, 33, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK110     ', N'VC001                                             ', 1, 0, 34, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK112     ', N'VC001                                             ', 1, 0, 35, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK114     ', N'VC003                                             ', 1, 0, 36, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK116     ', N'VC006                                             ', 1, 0, 37, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK117     ', N'VC005                                             ', 1, 0, 38, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK118     ', N'VC008                                             ', 1, 0, 39, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK119     ', N'VC002                                             ', 1, 0, 40, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK120     ', N'VC0012                                            ', 1, 0, 41, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK065     ', N'VC001                                             ', 1, 0, 42, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK065     ', N'VC002                                             ', 1, 0, 43, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK066     ', N'VC002                                             ', 1, 0, 44, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK066     ', N'VC003                                             ', 1, 0, 45, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK090     ', N'VC008                                             ', 1, 0, 46, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK121     ', N'VC002                                             ', 1, 0, 47, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK121     ', N'VC009                                             ', 1, 0, 48, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK122     ', N'VC005                                             ', 1, 0, 49, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK111     ', N'VC001                                             ', 1, 0, 50, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK057     ', N'VC001                                             ', 1, 0, 51, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK057     ', N'VC003                                             ', 1, 0, 52, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK124     ', N'VC0011                                            ', 1, 0, 53, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK132     ', N'VC006                                             ', 1, 0, 54, NULL, NULL)
INSERT [dbo].[TIEMVACCINE_MUI] ([ma_dangky], [ma_vaccine], [mui_vaccine], [da_tiem], [STT], [ma_combo], [ngay_tiem]) VALUES (N'DK123     ', N'VC008                                             ', 1, 0, 55, NULL, NULL)
SET IDENTITY_INSERT [dbo].[TIEMVACCINE_MUI] OFF
GO
INSERT [dbo].[VACCINE] ([ma_vaccine], [ma_loaivaccine], [ten_vaccine], [anh_vaccine], [thongtin_vaccine], [doituong], [phacdolichtiem], [tinhtrangvaccine], [gia_vacine], [ngay_san_xuat], [hansudung_vaccine], [note], [phongbenh], [nguongoc]) VALUES (N'VC001                                             ', N'LVC006         ', N'Vắc xin GARDASIL 9 (Mỹ) phòng các bệnh do 9 tuýp virus HPV nguy hiểm', N'AnhVC1.jpg', N'Vắc xin thế hệ mới Gardasil 9 được xem là vắc xin bình đẳng giới vì mở rộng cả đối tượng và phạm vi phòng bệnh rộng hơn ở nam và nữ giới, bảo vệ khỏi 9 tuýp virus HPV phổ biến 6, 11, 16, 18, 31, 33, 45, 52 và 58 gây bệnh ung thư cổ tử cung, ung thư âm hộ, ung thư âm đạo, ung thư hậu môn, ung thư hầu họng, mụn cóc sinh dục, các tổn thương tiền ung thư hoặc loạn sản…, với hiệu quả bảo vệ lên đến trên 90%.', N'Vắc xin Gardasil 9 được chỉ định tiêm chủng cho cả nam giới và nữ giới, từ 9 đến 45 tuổi.', N'không có', N'Để tham khảo thông tin tình trạng vắc xin, Quý khách vui lòng truy cập bảng giá.', 1760000, CAST(N'2012-04-12' AS Date), CAST(N'2034-12-30' AS Date), N'1', N'Bảo vệ khỏi 9 tuýp virus HPV phổ biến 6, 11, 16, 18, 31, 33, 45, 52 và 58 gây bệnh ung thư cổ tử cung, ung thư âm hộ, ung thư âm đạo, ung thư hậu môn, ung thư hầu họng, mụn cóc sinh ...', N'Mỹ')
INSERT [dbo].[VACCINE] ([ma_vaccine], [ma_loaivaccine], [ten_vaccine], [anh_vaccine], [thongtin_vaccine], [doituong], [phacdolichtiem], [tinhtrangvaccine], [gia_vacine], [ngay_san_xuat], [hansudung_vaccine], [note], [phongbenh], [nguongoc]) VALUES (N'VC0010                                            ', N'LVC004         ', N'Vắc xin Pentaxim', N'AnhVC10.jpg', N'Vắc xin Pentaxim là vắc xin kết hợp phòng được 5 loại bệnh trong 1 mũi tiêm, bao gồm: Ho gà, bạch hầu, uốn ván, bại liệt và các bệnh viêm phổi, viêm màng não mủ do H.Influenzae týp B (Hib). Tích hợp trong duy nhất trong 1 vắc xin, 5 trong 1 Pentaxim giúp giảm số mũi tiêm, đồng nghĩa với việc hạn chế đau đớn cho bé khi phải tiêm quá nhiều.Nguồn gốc Vắc xin Pentaxim được nghiên cứu và phát triển bởi tập đoàn hàng đầu thế giới về dược phẩm và chế phẩm sinh học Sanofi Pasteur (Pháp). Đường tiêm Vắc xin Pentaxim được chỉ định tiêm bắp (ở mặt trước – bên đùi). Chống chỉ định Chống chỉ định đối với những trường hợp mẫn cảm với các hoạt chất hay bất cứ tá dược nào trong thuốc. Trẻ bị dị ứng với một trong các thành phần của vắc xin hay với vắc xin ho gà (vô bào hoặc nguyên bào), hay trước đây trẻ đã có phản ứng dị ứng sau khi tiêm vắc xin có chứa các chất tương tự. Trẻ có bệnh não tiến triển hoặc tổn thương ở não. Nếu lần trước trẻ từng bị bệnh não (tổn thương ở não) trong vòng 7 ngày sau khi tiêm vắc xin ho gà (ho gà vô bào hay nguyên bào). Thận trọng khi sử dụng Có nguy cơ bị chảy máu khi tiêm bắp nếu trẻ bị giảm tiểu cầu hay bị rối loạn đông máu. Trong vắc xin có một lượng rất nhỏ glutaraldehyde, neomycin, streptomycin và polymycin B, vì vậy hãy cẩn trọng đối với những trẻ có tiền sử dị ứng với một trong các thành phần này. Cần cân nhắc cẩn thận khi quyết định dùng tiếp các liều vắc xin chứa ho gà nếu đã từng có bất kỳ một trong các triệu chứng sau đây xảy ra: Sốt ≥ 40oC trong vòng 48 giờ sau khi tiêm, mà không phải do một nguyên nhân xác định nào khác. Trụy mạch hay giống sốc với giai đoạn giảm trương lực- giảm đáp ứng trong vòng 38 giờ sau khi tiêm ngừa. Quấy khóc dai dẳng, kéo dài ≥ 3 giờ, xảy ra trong vòng 48 giờ sau khi tiêm. Co giật có kèm theo sốt hay không sốt, xảy ra trong vòng 3 ngày sau khi tiêm. Nếu trẻ đang/ đã có vấn đề sức khỏe hay bị dị ứng. Nếu trước đây, sau khi tiêm vắc xin có chứa giải độc tố uốn ván (vắc xin uốn ván) trẻ bị hội chứng Guillain-Barré (nhạy cảm bất thường, liệt) hay viêm dây thần kinh cánh tay (liệt, đau lan tỏa ở cánh tay và vai), bác sĩ sẽ quyết định có tiếp tục dùng vắc xin có chứa giải độc tố uốn ván nữa hay không. Nếu trẻ đang được điều trị bằng thuốc ức chế miễn dịch hoặc bị suy giảm miễn dịch, thì đáp ứng miễn dịch đối với vắc xin sẽ bị giảm. Tương tác thuốc Nếu đang dùng thuốc hoặc muốn tiêm cùng với các vắc xin khác vào cùng một thời điểm, hãy hỏi ý kiến của bác sĩ hoặc dược sĩ. Tác dụng không mong muốn Các phản ứng thường gặp nhất là bị kích thích, tại nơi tiêm có nổi quầng đỏ, nốt cứng lớn hơn 2 cm. Các dấu hiệu và triệu chứng này thường gặp trong vòng 48 giờ sau khi tiêm và có thể kéo dài 48-72 giờ. Chúng thường tự khỏi mà không cần điều trị đặc hiệu. Các phản ứng toàn thân: sốt, dễ kích động, buồn ngủ, rối loạn giấc ngủ và ăn uống, tiêu chảy, ói mửa, khóc nhè khó dỗ và kéo dài. Hiếm hơn, có thể thấy nổi mề đay, phát ban ngoài da, co giật kèm sốt hoặc không kèm sốt trong vòng 48 giờ sau khi tiêm. Tình trạng giảm trương lực cơ hoặc các đợt giảm trương lực cơ – giảm phản ứng đã được báo cáo. Sau khi tiêm các vắc xin chứa thành phần Haemophilus influenzae týp b, phản ứng sưng phù chi dưới cũng đã được báo cáo. Những phản ứng này đôi khi đi kèm với sốt, đau và quấy khóc. Bảo quản Bảo quản ở nhiệt độ lạnh (từ 2 – 8 độ C). Không được đóng băng. Vắc xin phải được hoàn nguyên trước khi tiêm, tạo nên hỗn dịch màu trắng đục. Sau khi hoàn nguyên nên sử dụng ngay.', N'Vắc xin Pentaxim được chỉ định tiêm cho trẻ từ 2 tháng tuổi đến tròn 2 tuổi phòng 5 bệnh: Bạch hầu, Ho gà, Uốn ván, Bại liệt và các bệnh do Hib.', N'Lịch tiêm vắc xin 5 trong 1 Pentaxim gồm 4 mũi: Mũi 1: lần tiêm đầu tiên Mũi 2: 1 tháng sau mũi 1 Mũi 3: 1 tháng sau mũi 2 Mũi 4: 1 năm sau mũi 3', N'Để tham khảo thông tin tình trạng vắc xin, Quý khách vui lòng truy cập bảng giá.', 1270000, CAST(N'2024-03-05' AS Date), CAST(N'2028-09-29' AS Date), N'3', N'Phòng tránh 5 bệnh gồm: ho gà, uốn ván, bạch hầu, bại liệt và Hib gây viêm màng não mủ/viêm phổi. Vacxin hoạt động bằng cách tạo kháng thể chống lại các bệnh.', N'Pháp')
INSERT [dbo].[VACCINE] ([ma_vaccine], [ma_loaivaccine], [ten_vaccine], [anh_vaccine], [thongtin_vaccine], [doituong], [phacdolichtiem], [tinhtrangvaccine], [gia_vacine], [ngay_san_xuat], [hansudung_vaccine], [note], [phongbenh], [nguongoc]) VALUES (N'VC0011                                            ', N'LVC002         ', N'Vắc xin Avaxim', N'AnhVC11.jpg', N'Vắc xin Avaxim 80U tạo miễn dịch chủ động phòng ngừa virus gây bệnh viêm gan siêu vi A. Nguồn gốc Vắc xin Avaxim 80U được nghiên cứu và phát triển bởi tập đoàn hàng đầu thế giới về dược phẩm và chế phẩm sinh học Sanofi Pasteur (Pháp) Đường tiêm Tiêm bắp vào cơ delta trên cánh tay. Chống chỉ định Hoãn việc tiêm chủng nếu có sốt hay nhiễm trùng cấp tính. Bệnh mãn tính trong giai đoạn tiến triển. Không tiêm cho người bị dị ứng với hoạt chất, với bất kỳ thành phần tá dược nào có trong vắc xin, với neomycin, với polysorbate hoặc nếu trước đây đã từng bị mẩn mãn sau khi tiêm vắc xin này. Thận trọng khi sử dụng Trẻ bị suy giảm miễn dịch. Tác dụng phòng bệnh sẽ mất đi nếu tiêm vắc xin trong thời kỳ ủ bệnh. Trong một số trường hợp đặc biệt, những người bị giảm tiểu cầu hay có nguy cơ bị chảy máu, thì có thể tiêm bằng đường tiêm dưới da. Giống như khi tiêm các vắc xin khác, luôn phải theo dõi và phòng ngừa phản ứng có hại, có sẵn thuốc cấp cứu chống phản ứng phản vệ sau khi tiêm vắc xin. Tác dụng không mong muốn Phản ứng tại chỗ tiêm: Đau tại vết tiêm, đôi khi có quầng đỏ, sưng, nốt cứng. Phản ứng toàn thân: Sốt nhẹ, đau đầu, đau cơ, mệt mỏi, rối loạn tiêu hóa, phát ban… Các tác dụng không mong muốn này đều ở mức nhẹ hoặc vừa phải và sẽ tự khỏi. Tương tác thuốc Đáp ứng miễn dịch có thể giảm trong trường hợp đang dùng thuốc ức chế miễn dịch. Vắc xin có thể tiêm cùng lúc, tại các vị trí khác nhau với các vắc xin khác như bạch hầu, ho gà, uốn ván, Hib, bại liệt. Bảo quản Vắc xin được bảo quản ở nhiệt độ từ 2 đến 8 độ C. Tránh ánh sáng. Không được đông băng.', N'Vắc xin Avaxim 80U được chỉ định cho trẻ từ 12 tháng đến dưới 16 tuổi.', N'Mũi 1: lần tiêm đầu tiên Mũi 2: 6 tháng sau mũi 1', N'Để tham khảo thông tin tình trạng vắc xin, Quý khách vui lòng truy cập bảng giá.', -32, CAST(N'2024-03-21' AS Date), CAST(N'2028-09-17' AS Date), N'5', N'Phòng ngừa virus gây bệnh viêm gan siêu vi A.', N'Pháp')
INSERT [dbo].[VACCINE] ([ma_vaccine], [ma_loaivaccine], [ten_vaccine], [anh_vaccine], [thongtin_vaccine], [doituong], [phacdolichtiem], [tinhtrangvaccine], [gia_vacine], [ngay_san_xuat], [hansudung_vaccine], [note], [phongbenh], [nguongoc]) VALUES (N'VC0012                                            ', N'LVC003         ', N'Vắc xin Imojev', N'AnhVC12.jpg', N'Imojev là vắc xin phòng viêm não Nhật Bản được chỉ định cho trẻ em từ 9 tháng tuổi trở lên và người lớn. Nguồn gốc Vắc xin Imojev được nghiên cứu và phát triển bởi tập đoàn hàng đầu thế giới về dược phẩm và chế phẩm sinh học Sanofi Pasteur (Pháp). Sản xuất tại Thái Lan. Đường tiêm Trẻ từ 9 tháng tuổi đến 24 tháng tuổi: Tiêm tại mặt trước – bên của đùi hoặc vùng cơ Delta ở cánh tay. Trẻ từ 2 tuổi trở lên và người lớn: Tiêm tại vùng cơ Delta ở cánh tay. Liều tiêm: 0,5ml/liều Imojev hoàn nguyên. Chống chỉ định Người có tiền sử phản ứng dị ứng với bất kỳ thành phần nào của Imojev. Người suy giảm miễn dịch bẩm sinh hoặc mắc phải làm suy yếu miễn dịch tế bào. Người nhiễm HIV có triệu chứng hoặc bằng chứng suy giảm chức năng miễn dịch. Phụ nữ có thai hoặc cho con bú sữa mẹ. Thận trọng khi sử dụng Không được tiêm vào lòng mạch máu. Đối với những người điều trị corticosteroid liều cao đường toàn thân trong 14 ngày hay trên 14 ngày, sau khi ngưng điều trị nên chờ ít nhất 1 tháng hoặc đến khi hồi phục chức năng miễn dịch rồi mới tiến hành tiêm vắc xin Imojev. Tác dụng không mong muốn Phản ứng tại chỗ tiêm: Đỏ, ngứa, sưng, đau. Phản ứng toàn thân: Mệt mỏi, khó chịu, đau đầu, đau cơ, ở trẻ em có thể sốt còn người lớn có thể phát ban. Tương tác thuốc Trẻ từ 12 tháng tuổi trở lên có thể tiêm Imojev cùng lúc với các vắc xin phòng bệnh sởi, quai bị hay rubella. Nếu nơi sinh sống có nguy cơ cao mắc bệnh sởi, trẻ từ 9 tháng tuổi trở lên có thể tiêm Imojev cùng lúc với vắc xin phòng bệnh sởi. Khi tiêm Imojev cùng lúc với các vắc xin khác, phải tiêm ở 2 vị trí khác nhau và phải dùng 2 bơm tiêm riêng biệt. Bảo quản Vắc xin Imojev cần bảo quản ở nhiệt độ từ 2 đến 8 độ C, không được để đông băng. Giữ vắc xin trong hộp để tránh ánh sáng.', N'Vắc xin Imojev được chỉ định phòng viêm não Nhật Bản cho trẻ em từ 9 tháng tuổi trở lên và người lớn.', N'Trẻ từ 9 tháng tuổi đến dưới 18 tuổi (chưa tiêm vắc xin Jevax lần nào) có lịch tiêm 2 mũi:  Mũi 1: Là mũi tiêm đầu tiên. Mũi 2: Cách 1 năm sau mũi đầu tiên. Người tròn 18 tuổi trở lên: Tiêm 1 mũi duy nhất.', N'Để tham khảo thông tin tình trạng vắc xin, Quý khách vui lòng truy cập bảng giá.', 1340000, CAST(N'2024-02-21' AS Date), CAST(N'2028-06-15' AS Date), N'Không có', N'Phòng viêm não Nhật Bản được chỉ định cho trẻ em từ 9 tháng tuổi trở lên và người lớn.', N'Thái Lan')
INSERT [dbo].[VACCINE] ([ma_vaccine], [ma_loaivaccine], [ten_vaccine], [anh_vaccine], [thongtin_vaccine], [doituong], [phacdolichtiem], [tinhtrangvaccine], [gia_vacine], [ngay_san_xuat], [hansudung_vaccine], [note], [phongbenh], [nguongoc]) VALUES (N'VC002                                             ', N'LVC002         ', N'VẮC XIN PHÒNG BỆNH VIÊM ĐƯỜNG HÔ HẤP CẤP DO COVID-19 CỦA ASTRAZENECA', N'AnhVC2.jpg', N'Nguồn gốc
 •Vắc xin phòng Covid-19 của AstraZeneca được nghiên cứu và phát triển bởi Đại học Oxford và hãng dược nổi tiếng thế giới AstraZeneca (Vương quốc Anh).
 •AstraZeneca là công ty dược phẩm sinh học toàn cầu tập trung vào việc phát minh, phát triển và thương mại hóa các loại thuốc đặc trị trong ba lĩnh vực chính: Ung thư; tim mạch, thận & chuyển hóa; hô hấp & miễn dịch. Có trụ sở tại Cambridge (Vương quốc Anh), AstraZeneca hoạt động tại hơn 100 quốc gia và các loại thuốc tiên tiến của công ty hiện được sử dụng bởi hàng triệu bệnh nhân trên toàn thế giới.
Chỉ định
 •Vắc xin phòng Covid-19 của AstraZeneca là vắc xin được chỉ định tạo miễn dịch chủ động để phòng bệnh Covid-19 gây ra do virus SARS-CoV-2.
Đối tượng có thể sử dụng vaccine
 •Vắc xin phòng Covid-19 của AstraZeneca được chỉ định tiêm phòng cho những người từ 18 tuổi trở lên.
Lịch tiêm phòng
Lịch tiêm gồm 2 mũi
 •Mũi 1: Lần đầu tiên tiêm.
 •Mũi 2: Sau mũi đầu tiên từ 4 – 12 tuần.', N'Không có', N'không có', N'Để tham khảo thông tin tình trạng vắc xin, Quý khách vui lòng truy cập bảng giá.', 300000, CAST(N'2323-01-17' AS Date), CAST(N'2439-12-17' AS Date), N'9 tháng tuổi', N'Phòng bênh Coivd-19', N'Anh')
INSERT [dbo].[VACCINE] ([ma_vaccine], [ma_loaivaccine], [ten_vaccine], [anh_vaccine], [thongtin_vaccine], [doituong], [phacdolichtiem], [tinhtrangvaccine], [gia_vacine], [ngay_san_xuat], [hansudung_vaccine], [note], [phongbenh], [nguongoc]) VALUES (N'VC003                                             ', N'LVC004         ', N'Vắc xin BEXSERO phòng bệnh viêm màng não mô cầu nhóm B', N'AnhVC3.jpg', N'Vắc xin Bexsero được chỉ định để chủng ngừa cho trẻ và người lớn từ 2 tháng tuổi đến 50 tuổi (chưa đến sinh nhật 51 tuổi) chống lại bệnh não mô cầu xâm lấn do Neisseria meningitidis nhóm B gây ra với hiệu quả lên đến 95%.\nNguồn gốc\nVắc xin Bexsero là loại vắc xin đa thành phần (tái tổ hợp, hấp phụ) do hãng dược phẩm Glaxosmithkline – GSK sản xuất.\nĐường tiêm\n Vắc xin Bexsero được dùng dưới dạng tiêm bắp sâu, nên ưu tiên tiêm ở mặt trước bên cơ đùi của nhũ nhi hoặc vùng cơ delta cánh tay trên ở những đối tượng lớn hơn.\n Nếu phải tiêm đồng thời nhiều loại vắc xin khác thì phải tiêm ở nhiều vị trí riêng biệt.\nChống chỉ định\nQuá mẫn với các hoạt chất hoặc bất kỳ tá dược nào được liệt kê trong bảng thành phần của vắc xin.\nThận trọng khi sử dụng\n Hoãn tiêm vắc xin Bexsero cho những bệnh nhân đang sốt cao cấp tính.\n Vắc xin Bexsero không được tiêm dưới dạng tiêm tĩnh mạch, tiêm dưới da hoặc tiêm trong da.\n Những người bị suy giảm khả năng đáp ứng miễn dịch, dù do sử dụng liệu pháp ức chế miễn dịch, rối loạn di truyền hoặc do các nguyên nhân khác, đều có thể bị giảm đáp ứng kháng thể với chủng ngừa chủ động.\n Không phải tất cả các đối tượng được tiêm vắc xin Bexsero đều có đáp ứng miễn dịch bảo vệ.\n Vắc xin Bexsero không mong đợi bảo vệ chống lại được tất cả các chủng não mô cầu nhóm B đang lưu hành. Dữ liệu về những bệnh nhân mắc bệnh mạn tính còn hạn chế.\n Cần cân nhắc nguy cơ tiềm tàng gây ngưng thở và cần theo dõi chức năng hô hấp trong vòng 48-72 giờ sau khi tiêm vắc xin với các liều cơ bản cho trẻ sinh cực non (≤ 28 tuần tuổi thai) và đặc biệt ở những trẻ sinh có tiền sử phổi chưa trưởng thành. Do lợi ích của việc tiêm vắc xin ở những trẻ này là cao, vì vậy không nên ngưng hoặc trì hoãn việc tiêm phòng.\n Mặc dù không phát hiện mủ cao su tự nhiên trong nắp ống tiêm, vẫn chưa xác định được tính an toàn khi sử dụng Bexsero ở những người nhạy cảm với mủ cao su.\n Kanamycin được sử dụng trong giai đoạn đầu của quá trình sản xuất và bị loại bỏ trong giai đoạn sau. Nếu hiện diện, nồng độ kanamycin trong vắc xin thành phẩm ở mức dưới 0.01 microgram mỗi liều. Việc sử dụng Bexsero ở những người nhạy cảm với kanamycin chưa được thiết lập.\n Vắc xin Bexsero không ảnh hưởng hoặc ảnh hưởng rất ít đến khả năng lái xe và vận hành máy móc.\nTrên phụ nữ có thai\n Chưa có đủ dữ liệu lâm sàng về các trường hợp mang thai bị phơi nhiễm với vắc xin Bexsero.\n Cũng chưa có bằng chứng nào cho thấy việc sử dụng vắc xin Bexsero làm ảnh hưởng đến khả năng sinh sản, tình trạng mang thai hoặc gây hậu quả cho trẻ sơ sinh.\nTrên phụ nữ cho con bú\n Chưa có thông tin về tính an toàn của vắc xin đối với bà mẹ đang cho con bú. Cần cân nhắc và thận trọng nếu sử dụng vắc xin Bexsero cho đối tượng này.\n Thử nghiệm trên thỏ mẹ cho thấy không có phản ứng bất lợi nào ở thỏ con trong giai đoạn bú mẹ.\nTương tác thuốc\nCó thể tiêm vắc xin Bexsero đồng thời với các kháng nguyên vắc xin dưới dạng vắc xin đơn giá hoặc vắc xin phối hợp sau đây: bạch hầu, uốn ván, ho gà vô bào, Haemophilus influenzae nhóm B, bại liệt bất hoạt, viêm gan B, phế cầu cộng hợp bảy tuýp, sởi, quai bị, rubella, thủy đậu, và não mô cầu cộng hợp nhóm A, C, W, Y.\nTác dụng không mong muốn\n Ở trẻ nhũ nhi và trẻ nhỏ (từ 10 tuổi trở xuống), các phản ứng bất lợi thường gặp tại vị trí tiêm và toàn thân bao gồm đau, sưng, đỏ, chai cứng tại vị trí tiêm, sốt, quấy khóc, ăn ít hơn bình thường.\n Ở thanh thiếu niên (11 tuổi trở lên) và người trưởng thành, các phản ứng bất lợi thường gặp tại chỗ và toàn thân là đau, sưng, đỏ, chai cứng tại vị trí tiêm, khó chịu, đau đầu, Không gia tăng đối với tần suất gặp và mức độ trầm trọng của các phản ứng không mong muốn ở các mũi tiêm sau trong các liệu trình tiêm chủng.\nBảo quản\nVắc xin được bảo quản ở nhiệt độ từ 2 độ C đến 8 độ C.\nNước sản xuất: Ý', N'Trẻ em và người lớn từ 2 tháng tuổi đến 50 tuổi (chưa đến sinh nhật 51 tuổi).', N'Đối với người khỏe mạnh\nTrẻ từ 2 tháng tuổi đến < 6 tháng tuổi có lịch tiêm 2 mũi cơ bản:\n Mũi 1: lần tiêm đầu tiên\n Mũi 2: cách mũi 1 ít nhất 2 tháng\nMũi nhắc được khuyến cáo tiêm cho trẻ từ 12 tháng tuổi trở lên và cách mũi 2 tối thiểu 6 tháng.\nTrẻ từ tròn 6 tháng đến dưới 12 tháng tuổi có lịch tiêm 2 mũi cơ bản:\n Mũi 1: lần tiêm đầu tiên\n Mũi 2: cách mũi 1 ít nhất 2 tháng\nMũi nhắc được khuyến cáo tiêm cho trẻ từ 12 tháng tuổi trở lên và cách mũi 2 tối thiểu 2 tháng.\nTrẻ từ tròn 1 tuổi đến dưới 2 tuổi có lịch tiêm 2 mũi cơ bản:\n Mũi 1: lần tiêm đầu tiên\n Mũi 2: cách mũi 1 ít nhất 2 tháng\nMũi nhắc được khuyến cáo cách mũi 2 tối thiểu 12 tháng.\nTrẻ từ tròn 2 tuổi đến 50 tuổi có lịch tiêm 2 mũi cơ bản:\n Mũi 1: lần tiêm đầu tiên\n Mũi 2: cách mũi 1 ít nhất 1 tháng\nĐối với người có nguy cơ mắc não mô cầu\nKhách hàng đến các trung tâm tiêm chủng VNVC để được bác sĩ tư vấn và chỉ định tiêm ngừa', N'Để tham khảo thông tin tình trạng vắc xin, Quý khách vui lòng truy cập bảng giá.', 765, CAST(N'2024-02-11' AS Date), CAST(N'2026-12-17' AS Date), N'Không có', N'Chống lại bệnh não mô cầu xâm lấn do Neisseria meningitidis nhóm B gây ra với hiệu quả lên đến 95%.', N'Ý')
INSERT [dbo].[VACCINE] ([ma_vaccine], [ma_loaivaccine], [ten_vaccine], [anh_vaccine], [thongtin_vaccine], [doituong], [phacdolichtiem], [tinhtrangvaccine], [gia_vacine], [ngay_san_xuat], [hansudung_vaccine], [note], [phongbenh], [nguongoc]) VALUES (N'VC004                                             ', N'LVC003         ', N'Vắc xin VA-MENGOC-BC phòng bệnh viêm màng não do não mô cầu', N'AnhVC4.jpg', N' Vắc xin VA-Mengoc-BC phòng bệnh viêm màng não do não mô cầu khuẩn Meningococcal tuýp B và C gây ra. Nguồn gốc Vắc xin VA-Mengoc-BC được nghiên cứu và sản xuất bởi Finlay Institute (Cu Ba). Đường tiêm Tiêm bắp sâu, tốt nhất là vào vùng cơ delta cánh tay. Tuy nhiên ở trẻ nhỏ có thể tiêm bắp đùi, ở mặt trước ngoài của đùi. Không được tiêm tĩnh mạch. Chống chỉ định Người quá mẫn với các thành phần của vắc xin. Người đang sốt, nhiễm khuẩn cấp tính, dị ứng đang tiến triển. Hiếm khi có phản ứng dị ứng nhưng cần ngưng liều thứ 2 nếu liều 1 có dấu hiệu dị ứng. Thận trọng khi sử dụng Rất thận trọng khi tiêm vắc xin viêm màng não mô cầu BC cho phụ nữ có thai, cần cân nhắc giữa lợi ích và nguy cơ hoặc trong trường hợp thật cần thiết. Luôn có sẵn thiết bị và phác đồ phòng sốc phản vệ. Bệnh nhân suy giảm miễn dịch hoặc đang dùng các thuốc ức chế miễn dịch có thể không đáp miễn dịch đầy đủ với vắc xin. Tác dụng không mong muốn Ít gặp: tại vết tiêm có đau, nổi ban đỏ hoặc sưng nhẹ. Những triệu chứng này thường biến mất sau 72 giờ. Toàn thân: có thể có sốt nhẹ, hoặc cảm giác khó chịu, đau đầu, buồn ngủ. Bảo quản Vắc xin cần được bảo quản ở nhiệt độ từ 2 độ C đến 8 độ C và không được đông băng.', N'Vắc xin phòng viêm màng não do mô cầu BC của CuBa được chỉ định tiêm cho trẻ từ 6 tháng tuổi trở lên và người lớn đến 45 tuổi.', N'Vắc xin VA-Mengoc-BC có lịch tiêm 2 mũi cách nhau 45 ngày.', N'Để tham khảo thông tin tình trạng vắc xin, Quý khách vui lòng truy cập bảng giá.', 123, CAST(N'2024-11-27' AS Date), CAST(N'2026-12-25' AS Date), N'Không có', N'cung cấp khả năng phòng ngừa lây nhiễm và mắc các bệnh do não mô cầu khuẩn nhóm B và C với hiệu quả cao cao nhất đạt 90%,', N'CuBa')
INSERT [dbo].[VACCINE] ([ma_vaccine], [ma_loaivaccine], [ten_vaccine], [anh_vaccine], [thongtin_vaccine], [doituong], [phacdolichtiem], [tinhtrangvaccine], [gia_vacine], [ngay_san_xuat], [hansudung_vaccine], [note], [phongbenh], [nguongoc]) VALUES (N'VC005                                             ', N'LVC001         ', N'Vắc xin Tứ giá Vaxigrip Tetra phòng bệnh Cúm mùa', N'AnhVC5.jpg', N'Vắc xin cúm Tứ giá Vaxigrip Tetra phòng được 4 chủng tuýp virus cúm gồm: 2 chủng cúm A (H1N1, H3N2) và 2 chủng cúm B (Yamagata, Victoria). Nguồn gốc Vắc xin Vaxigrip Tetra được nghiên cứu và phát triển bởi tập đoàn hàng đầu thế giới về dược phẩm và chế phẩm sinh học Sanofi Pasteur (Pháp). Đường tiêm Tiêm bắp hoặc tiêm dưới da. Chống chỉ định Quá mẫn cảm với các hoạt chất, với bất kỳ tá dược liệt kê trong mục “thành phần” hoặc bất kỳ chất nào có thể có trong thành phần dù với một lượng rất nhỏ còn sót lại (vết) như trứng (ovalbumin, protein của gà), neomycin, formaldehyde và octoxynol-9. Hoãn tiêm vắc xin với những người bị sốt vừa hay sốt cao hay bị bệnh cấp tính. Thận trọng khi sử dụng Không được tiêm Vaxigrip Tetra vào tĩnh mạch. Thận trọng khi sử dụng cho người bị suy giảm miễn dịch, suy giảm tiểu cầu hoặc bị rối loạn chảy máu. Tác dụng không mong muốn Phản ứng tại chỗ: ban đỏ (quầng đỏ), sưng, đau, bầm máu, nốt cứng. Phản ứng toàn thân: sốt, khó chịu, run rẩy, mệt mỏi, đau đầu, đổ mồ hôi, đau khớp và đau cơ. Bảo quản Vắc xin Vaxigrip Tetra được bảo quản ở nhiệt độ 2-8 độ C. Không để đông băng và tránh ánh sáng.', N'Vắc xin Vaxigrip Tetra 0.5ml của Pháp phòng cúm mùa, được chỉ định cho trẻ từ 6 tháng tuổi trở lên và người lớn.', N'Vắc xin Vaxigrip Tetra 0,5 ml dành cho trẻ từ 6 tháng tuổi đến dưới 9 tuổi chưa tiêm cúm có lịch tiêm 2 mũi: Mũi 1: lần tiêm đầu tiên. Mũi 2: cách mũi 1 ít nhất 4 tuần và tiêm nhắc hàng năm. Từ 9 tuổi trở lên: Lịch tiêm 01 mũi duy nhất và nhắc lại hằng năm. Tổ chức Y tế Thế giới (WHO) khuyến cáo chỉ cần tiêm nhắc lại vắc xin cúm hàng năm, luôn cách tối thiểu 12 tháng so với mũi trước.', N'Để tham khảo thông tin tình trạng vắc xin, Quý khách vui lòng truy cập bảng giá.', 1250000, CAST(N'2023-12-03' AS Date), CAST(N'2027-11-14' AS Date), N'> 15 tuổi', N'Phòng được 4 chủng tuýp virus cúm gồm: 2 chủng cúm A (H1N1, H3N2) và 2 chủng cúm B (Yamagata, Victoria).', N'Pháp')
INSERT [dbo].[VACCINE] ([ma_vaccine], [ma_loaivaccine], [ten_vaccine], [anh_vaccine], [thongtin_vaccine], [doituong], [phacdolichtiem], [tinhtrangvaccine], [gia_vacine], [ngay_san_xuat], [hansudung_vaccine], [note], [phongbenh], [nguongoc]) VALUES (N'VC006                                             ', N'LVC003         ', N'Vắc xin Havax', N'AnhVC6.jpg', N'Vắc xin Havax được dùng để phòng ngừa bệnh viêm gan A, đặc biệt cho những người có nguy cơ phơi nhiễm với virus viêm gan A.Nguồn gốc Vắc xin Havax được nghiên cứu và sản xuất bởi Vabiotech –Việt Nam. Đường tiêm Tiêm bắp. Không được tiêm vào đường tĩnh mạch hoặc trong da. Ở người lớn thì tiêm vắc-xin vào vùng cơ Delta song ở trẻ em nên tiêm vào vùng đùi ngoài thì tốt hơn vì cơ Delta còn nhỏ. Chống chỉ định Không tiêm Havax cho những người quá nhạy cảm với bất cứ thành phần nào của vắc xin. Bệnh tim, bệnh thận hoặc bệnh gan. Bệnh tiểu đường hoặc suy dinh dưỡng. Bệnh Ung thư máu nói riêng và các bệnh ác tính nói chung. Bệnh quá mẫn. Không được tiêm tĩnh mạch trong bất cứ trường hợp nào. Không tiêm cho trẻ em dưới 2 tuổi (24 tháng tuổi). Không tiêm cho các đối tượng mắc bệnh bẩm sinh. Hoãn tiêm ở người đang Sốt cao hoặc phản ứng toàn thân hoặc bệnh nhiễm trùng đang tiến triển Thận trọng khi sử dụng Cũng giống như tất cả các loại vắc xin khác: luôn phải có sẵn Epinephrine để đề phòng các trường hợp Sốc phản vệ sau khi tiêm vắc xin. Không được tiêm Havax vào mông hoặc trong da vì đáp ứng miễn dịch thấp Với đối tượng bệnh nhân đang chạy thận nhân tạo hoặc suy giảm miễn dịch, thì sau khi tiêm có thể hàm lượng kháng thể không được cao như mong đợi. Với các đối tượng này có thể phải tiêm các liều bổ sung, nhắc lại. Thời kỳ ủ bệnh viêm gan A có thể kéo dài. Vì vậy nếu tiêm vắc xin đang trong giai đoạn ủ bệnh thì vắc xin có thể sẽ không bảo vệ được cho các đối tượng này. Tác dụng không mong muốn Các phản ứng thường gặp: sưng, đỏ tại chỗ tiêm. Các triệu chứng này thường hết trong vòng 2 ngày sau khi tiêm. Ít gặp: Sốt, đau đầu, buồn nôn, mệt mỏi, chóng mặt. Tuy nhiên chưa có đủ bằng chứng để chứng minh có sự liên quan giữa tiêm vắc xin và các tác dụng không mong muốn này. Bảo quản Vắc xin được bảo quản ở nhiệt độ từ 2 đến 8 độ C. Không để đông đá. Tránh ánh sáng.', N'Vắc xin Havax được khuyến cáo chủng ngừa cho trẻ từ 24 tháng tuổi đến dưới 18 tuổi, sử dụng cho những người có nguy cơ phơi nhiễm với virus viêm gan A như: Những người chưa tiêm vắc xin Viêm gan A và có dự định đi du lịch đến những vùng dịch (những vùng thường có virus viêm gan A). Các đối tượng nghề nghiệp có phơi nhiễm: hộ lý, y tá, cán bộ viên chức làm công tác chăm sóc phục vụ trẻ tàn tật, nhân viên xử lý nước, nước thải và thực phẩm công nghiệp. Những người đặc biệt có nguy cơ lây nhiễm (bệnh nhân ưa chảy máu, truyền dịch nhiều lần, tiêm tĩnh mạch,đồng tính). Havax không bảo vệ chống lại được các bệnh gan do các tác nhân gây bệnh và các virút viêm gan khác gây ra.', N'Mũi 1: lần tiêm đầu tiên. Mũi 2: 6 tháng sau mũi 1.', N'Để tham khảo thông tin tình trạng vắc xin, Quý khách vui lòng truy cập bảng giá.', 1250000, CAST(N'2012-03-15' AS Date), CAST(N'2026-05-16' AS Date), N'Không có', N'Phòng ngừa bệnh viêm gan A, đặc biệt cho những người có nguy cơ phơi nhiễm với virus viêm gan A.', N'Việt Nam')
INSERT [dbo].[VACCINE] ([ma_vaccine], [ma_loaivaccine], [ten_vaccine], [anh_vaccine], [thongtin_vaccine], [doituong], [phacdolichtiem], [tinhtrangvaccine], [gia_vacine], [ngay_san_xuat], [hansudung_vaccine], [note], [phongbenh], [nguongoc]) VALUES (N'VC008                                             ', N'LVC001         ', N'Vắc xin STAMARIL phòng bệnh sốt vàng', N'AnhVC8.jpg', N'Vắc xin Stamaril là vắc xin duy nhất cung cấp miễn dịch bảo vệ hiệu quả cao và tạo miễn dịch chủ động suốt đời khỏi virus thuộc họ Flaviviridae gây bệnh Sốt vàng nguy hiểm. Nguồn gốc: Vắc xin Stamaril được nghiên cứu và phát triển bởi tập đoàn hàng đầu thế giới về dược phẩm và chế phẩm sinh học Sanofi Pasteur (Pháp). Đường tiêm: Vắc xin Stamaril được chỉ định tốt nhất nên tiêm dưới da. Tiêm bắp được khuyến nghị như sau: Trẻ dưới 12 tháng tuổi: Tiêm mặt trước của đùi. Trẻ từ 12 – 35 tháng tuổi: Tiêm mặt trước của đùi hoặc cơ delta. Trẻ từ 36 tháng tuổi trở lên và người lớn: Tiêm ở cơ delta. Chống chỉ định: Vắc xin phòng bệnh sốt vàng chống chỉ định với những người có tiền sử dị ứng với protein của trứng gà, thịt gà, và các thành phần có trong vắc xin. Chống chỉ định với người bị suy giảm, rối loạn chức năng tuyến ức. Chống chỉ định với người suy giảm miễn dịch (do bẩm sinh, mắc phải, thuốc, xạ trị), người nhiễm HIV. Không tiêm vắc xin cho phụ nữ có thai và cho con bú. Thận trọng khi sử dụng: Không khuyến cáo tiêm cho trẻ dưới 9 tháng tuổi và người lớn trên 60 tuổi. Không có chống chỉ định về phối hợp giữa vắc xin Stamaril và các vắc xin khác. Vắc xin Stamaril có thể chỉ định cùng thời điểm hoặc chỉ định cách xa nhau 28 ngày khi phối hợp với các vắc xin sống khác. Tương tác thuốc: Stamaril không được trộn lẫn với bất kỳ loại vắc xin hoặc dược phẩm nào khác trong cùng một ống tiêm. Nếu phải tiêm thêm 1 loại vắc xin khác cùng lúc với Stamaril, vắc xin cần được tiêm ở một vị trí riêng biệt (tiêm sang 1 chi khác). Tác dụng không mong muốn: Đau tại vết tiêm, đôi khi sưng và ửng đỏ. Sốt nhẹ và nôn. Bảo quản: Bảo quản ở nhiệt độ lạnh (từ 2 – 8 độ C). Không được đóng băng.', N'Vắc xin Stamaril được chỉ định tiêm cho trẻ từ 9 tháng tuổi đến người lớn 60 tuổi phòng bệnh sốt vàng.', N'Lịch tiêm cơ bản: Tiêm 1 mũi duy nhất vắc xin Stamaril 0.5ml (sau khi đã pha hồi chỉnh). Lịch tiêm nhắc: Cân nhắc tiêm nhắc lại vắc xin Stamaril 0.5ml mỗi 10 năm đối với: Người không tạo đủ đáp ứng miễn dịch sau khi tiêm mũi đầu. Khuyến cáo chính thức của các Cơ quan Quản lý Y tế địa phương và điều kiện nhập cảnh ở một số Quốc gia. Lưu ý: Tiêm vắc xin ít nhất 10 ngày trước khi đi vào vùng lưu hành dịch bệnh.', N'Để tham khảo thông tin tình trạng vắc xin, Quý khách vui lòng truy cập bảng giá.', 654, CAST(N'2024-01-03' AS Date), CAST(N'2028-12-24' AS Date), N'Không có', N'Stamaril là loại vắc xin cho hiệu quả phòng bệnh Sốt vàng vượt trội cho trẻ em từ 6 tháng tuổi và người lớn.', N'Pháp')
INSERT [dbo].[VACCINE] ([ma_vaccine], [ma_loaivaccine], [ten_vaccine], [anh_vaccine], [thongtin_vaccine], [doituong], [phacdolichtiem], [tinhtrangvaccine], [gia_vacine], [ngay_san_xuat], [hansudung_vaccine], [note], [phongbenh], [nguongoc]) VALUES (N'VC009                                             ', N'LVC003         ', N'Vắc xin Hexaxim', N'AnhVC9.jpg', N'Nguồn gốc Vắc xin Hexaxim được nghiên cứu và phát triển bởi tập đoàn hàng đầu thế giới về dược phẩm và chế phẩm sinh học Sanofi Pasteur (Pháp). Đường tiêm Hexaxim được chỉ định tiêm bắp. Vị trí tiêm là mặt trước – ngoài của phần trên đùi và vùng cơ delta ở trẻ 15 tháng tuổi trở lên. Chống chỉ định Tiền sử trước đây bị phản ứng phản vệ sau khi tiêm Hexaxim. Quá mẫn với các hoạt chất hay bất cứ tá dược nào được liệt kê trong thành phần của vắc xin, với các dư lượng vết (glutaraldehyde (1), formaldehyde (2), neomycin, streptomycin, polymyxin B), với vắc xin ho gà bất kỳ, hoặc trước đây từng bị phản ứng quá mẫn sau khi tiêm Hexaxim hoặc sau khi tiêm vắc xin chứa các thành phần tương tự . Đối tượng có bệnh lý não (tổn thương ở não) không rõ nguyên nhân, xảy ra trong vòng 7 ngày sau khi tiêm 1 vắc xin chứa thành phần ho gà (vắc xin ho gà vô bào hay nguyên bào). Trong trường hợp này, nên ngừng tiêm vắc xin ho gà và có thể tiếp tục với quá trình tiêm chủng với các vắc xin Bạch hầu, Uốn ván, Viêm gan B, Bại liệt và Hib. Không nên tiêm vắc xin ho gà cho người có rối loạn thần kinh không kiểm soát hoặc động kinh không kiểm soát cho đến khi bệnh được điều trị, bệnh ổn định và lợi ích rõ ràng vượt trội nguy cơ. Trẻ bị dị ứng với một trong các thành phần của vắc xin hay với vắc xin ho gà (vô bào hoặc nguyên bào), hay trước đây trẻ đã có phản ứng dị ứng sau khi tiêm vắc xin có chứa các chất tương tự. Trẻ có bệnh não tiến triển hoặc tổn thương ở não. Thận trọng khi sử dụng Như tất cả các vắc xin dùng đường tiêm khác, phải thận trọng khi sử dụng vắc xin Hexaxim cho người bị giảm tiểu cầu hay bị rối loạn đông máu vì có thể bị chảy máu sau khi tiêm bắp. Trong vắc xin có một lượng rất nhỏ glutaraldehyde, neomycin, streptomycin và polymycin B, vì vậy hãy cẩn trọng đối với những trẻ có tiền sử dị ứng với một trong các thành phần này. Cần cân nhắc cẩn thận khi quyết định dùng tiếp các liều vắc xin chữa ho gà nếu đã từng có bất kỳ một trong các triệu chứng sau đây xảy ra: Sốt ≥ 40 độ C trong vòng 48 giờ sau khi tiêm, mà không phải do một nguyên nhân xác định nào khác. Trụy mạch hay trạng thái giống sốc (giảm trương lực- giảm cơ đáp ứng) trong vòng 48 giờ sau khi tiêm ngừa. Quấy khóc dai dẳng, kéo dài ≥ 3 giờ, xảy ra trong vòng 48 giờ sau khi tiêm. Co giật có kèm theo sốt hay không sốt, xảy ra trong vòng 3 ngày sau khi tiêm. Nếu trẻ đang/đã có vấn đề sức khỏe hay bị dị ứng. Nếu trước đây, sau khi tiêm vắc xin có chứa giải độc tố uốn ván (vắc xin uốn ván)  trẻ bị hội hội chứng Guillain-Barré (nhạy cảm bất thường, liệt) hay viêm dây thần kinh cánh tay (liệt, đau lan tỏa ở cánh tay và vai), bác sĩ sẽ quyết định có tiếp tục dùng vắc xin có chứa giải độc tố uốn ván nữa hay không. Nếu trẻ đang được điều trị bằng thuốc ức chế miễn dịch hoặc bị suy giảm miễn dịch, thì đáp ứng miễn dịch đối với vắc xin sẽ bị giảm. Tương tác thuốc Nếu đang dùng thuốc hoặc muốn tiêm cùng với các vắc xin khác vào cùng một thời điểm, hãy hỏi ý kiến của bác sĩ hoặc dược sĩ. Tác dụng không mong muốn Các phản ứng thường gặp nhất là đau chỗ tiêm, dễ kích động, quấy khóc, tại nơi tiêm có nổi quầng đỏ. Các dấu hiệu và triệu chứng này thường gặp trong vòng 48 giờ sau khi tiêm và có thể kéo dài 48-72 giờ, thường tự khỏi mà không cần điều trị đặc hiệu. Các phản ứng toàn thân: sốt, dễ kích động, buồn ngủ, chán ăn, tiêu chảy, ói mửa, quấy khóc kéo dài. Hiếm hơn, có thể thấy nổi mề đay, phát ban ngoài da, co giật kèm sốt hoặc không kèm sốt trong vòng 48 giờ sau khi tiêm. Sau khi tiêm các vắc xin chứa thành phần Haemophilus influenzae týp b, phản ứng sưng phù chi dưới cũng đã được báo cáo. Những phản ứng này khởi phát trong 24-72 giờ sau tiêm, đôi khi đi kèm với sốt, đau và quấy khóc và tự khỏi trong 3-5 ngày. Bảo quản Vắc xin được bảo quản ở nhiệt độ từ 2 độ C đến 8 độ C.', N'Vắc xin Hexaxim được chỉ định tiêm cho trẻ từ 6 tuần tuổi đến 2 tuổi phòng 6 bệnh: Bạch hầu, Ho gà, Uốn ván, Bại liệt, Viêm gan B và các bệnh do Hib.', N'Lịch tiêm 6 trong 1 Hexaxim bao gồm 4 mũi: Mũi 1: lần tiêm đầu tiên Mũi 2: 1 tháng sau mũi 1 Mũi 3: 1 tháng sau mũi 2 Mũi 4: cách mũi thứ 3 là 12 tháng (cách tối thiểu 6 tháng).', N'Để tham khảo thông tin tình trạng vắc xin, Quý khách vui lòng truy cập bảng giá.', 5423, CAST(N'2024-03-03' AS Date), CAST(N'2067-12-24' AS Date), N'Không có', N'Phòng được 6 loại bệnh trong 1 mũi tiêm, bao gồm: Ho gà, bạch hầu, uốn ván, bại liệt, viêm gan B và các bệnh viêm phổi, viêm màng não mủ do H. Influenzae týp B (Hib).', N'Pháp')
INSERT [dbo].[VACCINE] ([ma_vaccine], [ma_loaivaccine], [ten_vaccine], [anh_vaccine], [thongtin_vaccine], [doituong], [phacdolichtiem], [tinhtrangvaccine], [gia_vacine], [ngay_san_xuat], [hansudung_vaccine], [note], [phongbenh], [nguongoc]) VALUES (N'VC010                                             ', N'LVC001         ', N'Xin chào', N'xinchao.jpg', N'Xin chào ', N'Xin chào ', N'Xin chào Xin chào ', N'Xin chào Xin chào ', 21, CAST(N'2024-05-29' AS Date), CAST(N'2024-06-30' AS Date), N'> 18 tuổi', N'Xin chào ', N'Xin chào ')
GO
INSERT [dbo].[VACCINE_NCC] ([ma_vaccine], [ma_nhacungcap], [gia_vaccine]) VALUES (N'VC001                                             ', N'NCC001    ', 43000)
INSERT [dbo].[VACCINE_NCC] ([ma_vaccine], [ma_nhacungcap], [gia_vaccine]) VALUES (N'VC0012                                            ', N'NCC008    ', 12)
INSERT [dbo].[VACCINE_NCC] ([ma_vaccine], [ma_nhacungcap], [gia_vaccine]) VALUES (N'VC003                                             ', N'NCC008    ', 12)
INSERT [dbo].[VACCINE_NCC] ([ma_vaccine], [ma_nhacungcap], [gia_vaccine]) VALUES (N'VC005                                             ', N'NCC001    ', 45000)
INSERT [dbo].[VACCINE_NCC] ([ma_vaccine], [ma_nhacungcap], [gia_vaccine]) VALUES (N'VC006                                             ', N'NCC001    ', 45000)
INSERT [dbo].[VACCINE_NCC] ([ma_vaccine], [ma_nhacungcap], [gia_vaccine]) VALUES (N'VC009                                             ', N'NCC008    ', 54)
GO
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH001         ', N'Voucher giảm 10%', CAST(N'2024-06-30' AS Date), CAST(N'2024-12-30' AS Date), 10)
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH002         ', N'Voucher giảm 20%', CAST(N'2024-07-11' AS Date), CAST(N'2024-10-13' AS Date), 20)
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH003         ', N'Voucher giảm 30%', CAST(N'2024-04-25' AS Date), CAST(N'2024-11-23' AS Date), 30)
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH004         ', N'Voucher giảm 50%', CAST(N'2024-03-29' AS Date), CAST(N'2024-12-11' AS Date), 50)
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH005         ', N'Voucher giảm 70%', CAST(N'2024-02-21' AS Date), CAST(N'2024-12-15' AS Date), 70)
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH006         ', N'Voucher giảm 20% a', CAST(N'2024-07-11' AS Date), CAST(N'2024-10-01' AS Date), 20)
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH007         ', N'Xin chài ', CAST(N'2024-07-11' AS Date), CAST(N'2024-10-01' AS Date), 20)
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH008         ', N'Xinc ào', CAST(N'2024-06-30' AS Date), CAST(N'2024-12-30' AS Date), 100)
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH009         ', N'hjhf', CAST(N'2024-05-29' AS Date), CAST(N'2024-12-30' AS Date), 5435)
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH010         ', N'fdsf', CAST(N'2024-06-15' AS Date), CAST(N'2024-06-30' AS Date), 12)
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH011         ', N'hgd', CAST(N'2024-06-22' AS Date), CAST(N'2024-06-28' AS Date), 123)
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH012         ', N'sdaf', CAST(N'2024-06-16' AS Date), CAST(N'2024-06-29' AS Date), 123)
INSERT [dbo].[VOUCHER] ([ma_voucher], [ten_voucher], [ngaybatdau_voucher], [ngayketthuc_voucher], [giamgia_voucher]) VALUES (N'VCH014         ', N'dgahrat', CAST(N'2024-06-18' AS Date), CAST(N'2024-06-22' AS Date), 12)
GO
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded', 3, NULL)
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2024-06-14', 3, CAST(N'2024-07-14T21:21:39.843' AS DateTime))
INSERT [HangFire].[AggregatedCounter] ([Key], [Value], [ExpireAt]) VALUES (N'stats:succeeded:2024-06-15', 1, CAST(N'2024-07-15T09:19:07.133' AS DateTime))
GO
SET IDENTITY_INSERT [HangFire].[Counter] ON 

INSERT [HangFire].[Counter] ([Key], [Value], [ExpireAt], [Id]) VALUES (N'stats:succeeded', 1, NULL, 14)
INSERT [HangFire].[Counter] ([Key], [Value], [ExpireAt], [Id]) VALUES (N'stats:succeeded:2024-06-17', 1, CAST(N'2024-07-17T08:29:42.553' AS DateTime), 15)
INSERT [HangFire].[Counter] ([Key], [Value], [ExpireAt], [Id]) VALUES (N'stats:succeeded:2024-06-17-08', 1, CAST(N'2024-06-18T08:29:42.553' AS DateTime), 16)
SET IDENTITY_INSERT [HangFire].[Counter] OFF
GO
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:CheckAndSendEmailJob', N'CreatedAt', N'2024-06-14T21:19:38.1456446Z', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:CheckAndSendEmailJob', N'Cron', N'20 4 * * *', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:CheckAndSendEmailJob', N'Job', N'{"Type":"Web_TiemChungVaccine.Models.HangfireJobs, Web_TiemChungVaccine, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckAndSendEmailJob","ParameterTypes":"[]","Arguments":"[]"}', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:CheckAndSendEmailJob', N'LastExecution', N'2024-06-17T08:29:32.9664552Z', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:CheckAndSendEmailJob', N'LastJobId', N'4', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:CheckAndSendEmailJob', N'NextExecution', N'2024-06-18T04:20:00.0000000Z', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:CheckAndSendEmailJob', N'Queue', N'default', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:CheckAndSendEmailJob', N'TimeZoneId', N'UTC', NULL)
INSERT [HangFire].[Hash] ([Key], [Field], [Value], [ExpireAt]) VALUES (N'recurring-job:CheckAndSendEmailJob', N'V', N'2', NULL)
GO
SET IDENTITY_INSERT [HangFire].[Job] ON 

INSERT [HangFire].[Job] ([Id], [StateId], [StateName], [InvocationData], [Arguments], [CreatedAt], [ExpireAt]) VALUES (4, 15, N'Succeeded', N'{"Type":"Web_TiemChungVaccine.Models.HangfireJobs, Web_TiemChungVaccine, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null","Method":"CheckAndSendEmailJob","ParameterTypes":"[]","Arguments":null}', N'[]', CAST(N'2024-06-17T08:29:33.913' AS DateTime), CAST(N'2024-06-18T08:29:42.570' AS DateTime))
SET IDENTITY_INSERT [HangFire].[Job] OFF
GO
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (4, N'CurrentCulture', N'"vi-VN"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (4, N'CurrentUICulture', N'"en-US"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (4, N'RecurringJobId', N'"CheckAndSendEmailJob"')
INSERT [HangFire].[JobParameter] ([JobId], [Name], [Value]) VALUES (4, N'Time', N'1718612972')
GO
INSERT [HangFire].[Schema] ([Version]) VALUES (9)
GO
INSERT [HangFire].[Server] ([Id], [Data], [LastHeartbeat]) VALUES (N'desktop-bsije74:16812:8e7d1317-f323-4cc6-98d9-055787b7e17f', N'{"WorkerCount":20,"Queues":["default"],"StartedAt":"2024-06-17T08:29:28.2497236Z"}', CAST(N'2024-06-17T08:30:29.320' AS DateTime))
GO
INSERT [HangFire].[Set] ([Key], [Score], [Value], [ExpireAt]) VALUES (N'recurring-jobs', 1718684400, N'CheckAndSendEmailJob', NULL)
GO
SET IDENTITY_INSERT [HangFire].[State] ON 

INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (13, 4, N'Enqueued', N'Triggered by recurring job scheduler', CAST(N'2024-06-17T08:29:35.020' AS DateTime), N'{"EnqueuedAt":"2024-06-17T08:29:34.9726444Z","Queue":"default"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (14, 4, N'Processing', NULL, CAST(N'2024-06-17T08:29:36.307' AS DateTime), N'{"StartedAt":"2024-06-17T08:29:35.6457447Z","ServerId":"desktop-bsije74:16812:8e7d1317-f323-4cc6-98d9-055787b7e17f","WorkerId":"806fe015-b40e-4e23-957f-061ce3c25494"}')
INSERT [HangFire].[State] ([Id], [JobId], [Name], [Reason], [CreatedAt], [Data]) VALUES (15, 4, N'Succeeded', NULL, CAST(N'2024-06-17T08:29:42.563' AS DateTime), N'{"SucceededAt":"2024-06-17T08:29:42.4582441Z","PerformanceDuration":"5898","Latency":"2645"}')
SET IDENTITY_INSERT [HangFire].[State] OFF
GO
ALTER TABLE [dbo].[TIEMVACCINE_MUI] ADD  DEFAULT ((0)) FOR [da_tiem]
GO
ALTER TABLE [dbo].[CHITIET_COMBO_VACCXINE]  WITH CHECK ADD  CONSTRAINT [fk_COMBOVACCXINE_COMBO] FOREIGN KEY([ma_combo])
REFERENCES [dbo].[COMBO_VACCINE] ([ma_combo])
GO
ALTER TABLE [dbo].[CHITIET_COMBO_VACCXINE] CHECK CONSTRAINT [fk_COMBOVACCXINE_COMBO]
GO
ALTER TABLE [dbo].[CHITIET_COMBO_VACCXINE]  WITH CHECK ADD  CONSTRAINT [fk_VACCINE_COMBO] FOREIGN KEY([ma_vaccine])
REFERENCES [dbo].[VACCINE] ([ma_vaccine])
GO
ALTER TABLE [dbo].[CHITIET_COMBO_VACCXINE] CHECK CONSTRAINT [fk_VACCINE_COMBO]
GO
ALTER TABLE [dbo].[CHITIET_HOADON]  WITH CHECK ADD  CONSTRAINT [fk_HOADON_CTHD_TC] FOREIGN KEY([ma_hoadon])
REFERENCES [dbo].[HOADON] ([ma_hoadon])
GO
ALTER TABLE [dbo].[CHITIET_HOADON] CHECK CONSTRAINT [fk_HOADON_CTHD_TC]
GO
ALTER TABLE [dbo].[CHITIET_PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [fk_PHIEUNHAP_CT] FOREIGN KEY([ma_phieunhap])
REFERENCES [dbo].[PHIEUNHAP] ([ma_phieunhap])
GO
ALTER TABLE [dbo].[CHITIET_PHIEUNHAP] CHECK CONSTRAINT [fk_PHIEUNHAP_CT]
GO
ALTER TABLE [dbo].[CHITIET_PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [fk_VACCINE_CT] FOREIGN KEY([ma_vaccine])
REFERENCES [dbo].[VACCINE] ([ma_vaccine])
GO
ALTER TABLE [dbo].[CHITIET_PHIEUNHAP] CHECK CONSTRAINT [fk_VACCINE_CT]
GO
ALTER TABLE [dbo].[GIOHANG]  WITH CHECK ADD  CONSTRAINT [FK_CUSTOM] FOREIGN KEY([ma_khachhang])
REFERENCES [dbo].[KHACHHANG] ([ma_khachhang])
GO
ALTER TABLE [dbo].[GIOHANG] CHECK CONSTRAINT [FK_CUSTOM]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [fk_TIEMCHUNG_HD] FOREIGN KEY([ma_dangky])
REFERENCES [dbo].[NGUOITIEM_DANGKY] ([ma_dangky])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [fk_TIEMCHUNG_HD]
GO
ALTER TABLE [dbo].[KHO]  WITH CHECK ADD  CONSTRAINT [fk_MAVACCINE_KHO] FOREIGN KEY([ma_vaccine])
REFERENCES [dbo].[VACCINE] ([ma_vaccine])
GO
ALTER TABLE [dbo].[KHO] CHECK CONSTRAINT [fk_MAVACCINE_KHO]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [fk_NHACUNGCAP_PHIEUNHAP] FOREIGN KEY([ma_nhacungcap])
REFERENCES [dbo].[NHACUNGCAP] ([ma_nhacungcap])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [fk_NHACUNGCAP_PHIEUNHAP]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [fk_NHANVIEN_PHIEUNHAP] FOREIGN KEY([ma_nhanvien])
REFERENCES [dbo].[NHANVIEN] ([ma_nhanvien])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [fk_NHANVIEN_PHIEUNHAP]
GO
ALTER TABLE [dbo].[TAIKHOAN]  WITH CHECK ADD  CONSTRAINT [fk_NHANVIEN1_TK] FOREIGN KEY([ma_nhanvien])
REFERENCES [dbo].[NHANVIEN] ([ma_nhanvien])
GO
ALTER TABLE [dbo].[TAIKHOAN] CHECK CONSTRAINT [fk_NHANVIEN1_TK]
GO
ALTER TABLE [dbo].[VACCINE]  WITH CHECK ADD  CONSTRAINT [FK_LoaiVC_VacXin] FOREIGN KEY([ma_loaivaccine])
REFERENCES [dbo].[LOAIVACCINE] ([ma_loaivaccine])
GO
ALTER TABLE [dbo].[VACCINE] CHECK CONSTRAINT [FK_LoaiVC_VacXin]
GO
ALTER TABLE [dbo].[VACCINE_NCC]  WITH CHECK ADD  CONSTRAINT [fk_NCC_VACCINE] FOREIGN KEY([ma_nhacungcap])
REFERENCES [dbo].[NHACUNGCAP] ([ma_nhacungcap])
GO
ALTER TABLE [dbo].[VACCINE_NCC] CHECK CONSTRAINT [fk_NCC_VACCINE]
GO
ALTER TABLE [dbo].[VACCINE_NCC]  WITH CHECK ADD  CONSTRAINT [fk_VACCINE_NCC] FOREIGN KEY([ma_vaccine])
REFERENCES [dbo].[VACCINE] ([ma_vaccine])
GO
ALTER TABLE [dbo].[VACCINE_NCC] CHECK CONSTRAINT [fk_VACCINE_NCC]
GO
ALTER TABLE [HangFire].[JobParameter]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_JobParameter_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[JobParameter] CHECK CONSTRAINT [FK_HangFire_JobParameter_Job]
GO
ALTER TABLE [HangFire].[State]  WITH CHECK ADD  CONSTRAINT [FK_HangFire_State_Job] FOREIGN KEY([JobId])
REFERENCES [HangFire].[Job] ([Id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [HangFire].[State] CHECK CONSTRAINT [FK_HangFire_State_Job]
GO
/****** Object:  StoredProcedure [dbo].[DangNhap]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--PROC DANG NHAP
CREATE PROCEDURE [dbo].[DangNhap]
@tendangnhap NVARCHAR(50),
@matkhau NVARCHAR(50)
AS
BEGIN
    DECLARE @result INT

    IF EXISTS (SELECT 1 FROM TAIKHOAN WHERE tendangnhap = @tendangnhap AND matkhau = @matkhau)
    BEGIN
        SELECT @result = 1 -- Assuming 1 for successful login
    END
    ELSE
    BEGIN
        SELECT @result = 0 -- Assuming 0 for failed login
    END

    RETURN @result
END
GO
/****** Object:  StoredProcedure [dbo].[sp_GetLowStockVaccines]    Script Date: 17/06/2024 3:36:11 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_GetLowStockVaccines]
AS
BEGIN
    SELECT 
        V.ma_vaccine AS [Mã Vaccine],
        V.ten_vaccine AS [Tên Vaccine],
        K.soluong_vaccine AS [Số Lượng Vaccine],
        K.donvitinh AS [Đơn Vị Tính]
    FROM 
        KHO K
    INNER JOIN 
        VACCINE V ON K.ma_vaccine = V.ma_vaccine
    WHERE 
        K.soluong_vaccine < 10;
END;
GO
