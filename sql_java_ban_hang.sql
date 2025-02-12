USE [master]
GO
/****** Object:  Database [phan_mem_ban_hang_java]    Script Date: 1/28/2024 1:11:07 AM ******/
CREATE DATABASE [phan_mem_ban_hang_java]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'phan_mem_ban_hang_java', FILENAME = N'C:\Program Files\Microsoft SQL Server 2017\MSSQL14.SQLEXPRESS\MSSQL\DATA\phan_mem_ban_hang_java.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'phan_mem_ban_hang_java_log', FILENAME = N'C:\Program Files\Microsoft SQL Server 2017\MSSQL14.SQLEXPRESS\MSSQL\DATA\phan_mem_ban_hang_java_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [phan_mem_ban_hang_java].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET ARITHABORT OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET  DISABLE_BROKER 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET  MULTI_USER 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET DB_CHAINING OFF 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET QUERY_STORE = OFF
GO
USE [phan_mem_ban_hang_java]
GO
/****** Object:  Table [dbo].[chitiethoadon]    Script Date: 1/28/2024 1:11:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitiethoadon](
	[MaHD] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[chitietphieunhap]    Script Date: 1/28/2024 1:11:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chitietphieunhap](
	[MaPN] [varchar](10) NOT NULL,
	[MaSP] [varchar](10) NULL,
	[SoLuong] [int] NULL,
	[DonGia] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hoadon]    Script Date: 1/28/2024 1:11:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hoadon](
	[MaHD] [varchar](10) NOT NULL,
	[MaNV] [varchar](10) NULL,
	[MaKH] [varchar](10) NULL,
	[MaKM] [varchar](10) NULL,
	[NgayLap] [date] NULL,
	[GioLap] [time](7) NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khachhang]    Script Date: 1/28/2024 1:11:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khachhang](
	[MaKH] [varchar](10) NOT NULL,
	[TenKH] [varchar](50) NULL,
	[DiaChi] [varchar](100) NULL,
	[SDT] [varchar](15) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[khuyenmai]    Script Date: 1/28/2024 1:11:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[khuyenmai](
	[MaKM] [varchar](10) NOT NULL,
	[TenKM] [varchar](100) NULL,
	[DieuKienKM] [float] NULL,
	[PhanTramKM] [float] NULL,
	[NgayBD] [date] NULL,
	[NgayKT] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[loaisanpham]    Script Date: 1/28/2024 1:11:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[loaisanpham](
	[MaLSP] [varchar](10) NOT NULL,
	[TenLSP] [varchar](70) NULL,
	[Mota] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaLSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhacungcap]    Script Date: 1/28/2024 1:11:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhacungcap](
	[MaNCC] [varchar](10) NOT NULL,
	[TenNCC] [varchar](70) NULL,
	[DiaChi] [varchar](100) NULL,
	[SDT] [varchar](15) NULL,
	[Fax] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nhanvien]    Script Date: 1/28/2024 1:11:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nhanvien](
	[MaNV] [varchar](10) NOT NULL,
	[TenNV] [text] NULL,
	[NgaySinh] [date] NULL,
	[DiaChi] [varchar](100) NULL,
	[SDT] [varchar](15) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phanquyen]    Script Date: 1/28/2024 1:11:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phanquyen](
	[MaQuyen] [varchar](10) NOT NULL,
	[TenQuyen] [varchar](20) NULL,
	[ChiTietQuyen] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[phieunhap]    Script Date: 1/28/2024 1:11:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[phieunhap](
	[MaPN] [varchar](10) NOT NULL,
	[MaNCC] [varchar](10) NULL,
	[MaNV] [varchar](10) NULL,
	[NgayNhap] [date] NULL,
	[GioNhap] [time](7) NULL,
	[TongTien] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sanpham]    Script Date: 1/28/2024 1:11:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sanpham](
	[MaSP] [varchar](10) NOT NULL,
	[MaLSP] [varchar](30) NULL,
	[TenSP] [varchar](70) NULL,
	[DonGia] [float] NULL,
	[SoLuong] [int] NULL,
	[size] [varchar](100) NULL,
	[TrangThai] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taikhoan]    Script Date: 1/28/2024 1:11:07 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taikhoan](
	[TenTaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NULL,
	[MaNV] [varchar](10) NULL,
	[MaQuyen] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [phan_mem_ban_hang_java] SET  READ_WRITE 
GO
