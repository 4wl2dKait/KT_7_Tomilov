USE [master]
GO
/****** Object:  Database [TomilovKT7]    Script Date: 12.11.2024 12:33:29 ******/
CREATE DATABASE [TomilovKT7]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'TomilovKT7', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TomilovKT7.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'TomilovKT7_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\TomilovKT7_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TomilovKT7] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TomilovKT7].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TomilovKT7] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TomilovKT7] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TomilovKT7] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TomilovKT7] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TomilovKT7] SET ARITHABORT OFF 
GO
ALTER DATABASE [TomilovKT7] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TomilovKT7] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TomilovKT7] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TomilovKT7] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TomilovKT7] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TomilovKT7] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TomilovKT7] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TomilovKT7] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TomilovKT7] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TomilovKT7] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TomilovKT7] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TomilovKT7] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TomilovKT7] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TomilovKT7] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TomilovKT7] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TomilovKT7] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TomilovKT7] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TomilovKT7] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TomilovKT7] SET  MULTI_USER 
GO
ALTER DATABASE [TomilovKT7] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TomilovKT7] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TomilovKT7] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TomilovKT7] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TomilovKT7] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TomilovKT7] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TomilovKT7] SET QUERY_STORE = OFF
GO
USE [TomilovKT7]
GO
/****** Object:  Table [dbo].[Adresses]    Script Date: 12.11.2024 12:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresses](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[indeks] [int] NOT NULL,
	[region_id] [bigint] NOT NULL,
	[city_id] [bigint] NOT NULL,
	[street_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdressesCity]    Script Date: 12.11.2024 12:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdressesCity](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdressesRegion]    Script Date: 12.11.2024 12:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdressesRegion](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[region] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdressesStreet]    Script Date: 12.11.2024 12:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdressesStreet](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[street] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 12.11.2024 12:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[brak_percent] [decimal](3, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerCompanyType]    Script Date: 12.11.2024 12:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerCompanyType](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerDirectors]    Script Date: 12.11.2024 12:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerDirectors](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[director_lastname] [nvarchar](50) NOT NULL,
	[director_name] [nvarchar](50) NOT NULL,
	[director_surname] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerName]    Script Date: 12.11.2024 12:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerName](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProduct]    Script Date: 12.11.2024 12:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProduct](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[partner_product] [nvarchar](100) NOT NULL,
	[partner_id] [int] NOT NULL,
	[product_amount] [int] NOT NULL,
	[sale_date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 12.11.2024 12:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[partner_type_id] [bigint] NOT NULL,
	[partner_id] [bigint] NOT NULL,
	[director_id] [bigint] NOT NULL,
	[partner_email] [nvarchar](50) NOT NULL,
	[partner_phone] [nvarchar](50) NOT NULL,
	[partner_adress_id] [bigint] NOT NULL,
	[INN] [bigint] NOT NULL,
	[rating] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12.11.2024 12:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_type_id] [int] NOT NULL,
	[product_name] [nvarchar](200) NOT NULL,
	[article] [int] NOT NULL,
	[minimal_price_for_partner] [decimal](10, 2) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 12.11.2024 12:33:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_type] [nvarchar](50) NOT NULL,
	[coef_product_type] [decimal](10, 2) NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [TomilovKT7] SET  READ_WRITE 
GO
