USE [master]
GO
/****** Object:  Database [TomilovKT7]    Script Date: 14.11.2024 14:19:23 ******/
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
/****** Object:  Table [dbo].[Adresses]    Script Date: 14.11.2024 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresses](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[indeks] [int] NOT NULL,
	[region_id] [bigint] NOT NULL,
	[city_id] [bigint] NOT NULL,
	[street_id] [bigint] NOT NULL,
 CONSTRAINT [PK_Adresses] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdressesCity]    Script Date: 14.11.2024 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdressesCity](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[city] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AdressesCity] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdressesRegion]    Script Date: 14.11.2024 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdressesRegion](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[region] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AdressesRegion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdressesStreet]    Script Date: 14.11.2024 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdressesStreet](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[street] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_AdressesStreet] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 14.11.2024 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[brak_percent] [decimal](3, 2) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerCompanyType]    Script Date: 14.11.2024 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerCompanyType](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartnerCompanyType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerDirectors]    Script Date: 14.11.2024 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerDirectors](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[director_name] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_PartnerDirectors] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerName]    Script Date: 14.11.2024 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerName](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartnerName] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProduct]    Script Date: 14.11.2024 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProduct](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[partner_product] [nvarchar](100) NOT NULL,
	[partner_id] [bigint] NOT NULL,
	[product_amount] [int] NOT NULL,
	[sale_date] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 14.11.2024 14:19:23 ******/
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
	[rating] [int] NOT NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 14.11.2024 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_type_id] [bigint] NOT NULL,
	[product_name] [nvarchar](200) NOT NULL,
	[article] [int] NOT NULL,
	[minimal_price_for_partner] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 14.11.2024 14:19:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[product_type] [nvarchar](50) NOT NULL,
	[coef_product_type] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adresses] ON 

INSERT [dbo].[Adresses] ([id], [indeks], [region_id], [city_id], [street_id]) VALUES (1, 143960, 5, 2, 4)
INSERT [dbo].[Adresses] ([id], [indeks], [region_id], [city_id], [street_id]) VALUES (2, 164500, 1, 3, 5)
INSERT [dbo].[Adresses] ([id], [indeks], [region_id], [city_id], [street_id]) VALUES (3, 188910, 4, 1, 2)
INSERT [dbo].[Adresses] ([id], [indeks], [region_id], [city_id], [street_id]) VALUES (4, 309500, 2, 4, 3)
INSERT [dbo].[Adresses] ([id], [indeks], [region_id], [city_id], [street_id]) VALUES (5, 652050, 3, 5, 1)
SET IDENTITY_INSERT [dbo].[Adresses] OFF
GO
SET IDENTITY_INSERT [dbo].[AdressesCity] ON 

INSERT [dbo].[AdressesCity] ([id], [city]) VALUES (1, N' Приморск')
INSERT [dbo].[AdressesCity] ([id], [city]) VALUES (2, N' Реутов')
INSERT [dbo].[AdressesCity] ([id], [city]) VALUES (3, N' Северодвинск')
INSERT [dbo].[AdressesCity] ([id], [city]) VALUES (4, N' Старый Оскол')
INSERT [dbo].[AdressesCity] ([id], [city]) VALUES (5, N' Юрга')
SET IDENTITY_INSERT [dbo].[AdressesCity] OFF
GO
SET IDENTITY_INSERT [dbo].[AdressesRegion] ON 

INSERT [dbo].[AdressesRegion] ([id], [region]) VALUES (1, N' Архангельская область')
INSERT [dbo].[AdressesRegion] ([id], [region]) VALUES (2, N' Белгородская область')
INSERT [dbo].[AdressesRegion] ([id], [region]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[AdressesRegion] ([id], [region]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[AdressesRegion] ([id], [region]) VALUES (5, N' Московская область')
SET IDENTITY_INSERT [dbo].[AdressesRegion] OFF
GO
SET IDENTITY_INSERT [dbo].[AdressesStreet] ON 

INSERT [dbo].[AdressesStreet] ([id], [street]) VALUES (1, N' ул. Лесная, 15')
INSERT [dbo].[AdressesStreet] ([id], [street]) VALUES (2, N' ул. Парковая, 21')
INSERT [dbo].[AdressesStreet] ([id], [street]) VALUES (3, N' ул. Рабочая, 122')
INSERT [dbo].[AdressesStreet] ([id], [street]) VALUES (4, N' ул. Свободы, 51')
INSERT [dbo].[AdressesStreet] ([id], [street]) VALUES (5, N' ул. Строителей, 18')
SET IDENTITY_INSERT [dbo].[AdressesStreet] OFF
GO
SET IDENTITY_INSERT [dbo].[MaterialType] ON 

INSERT [dbo].[MaterialType] ([id], [brak_percent]) VALUES (1, CAST(0.10 AS Decimal(3, 2)))
INSERT [dbo].[MaterialType] ([id], [brak_percent]) VALUES (2, CAST(0.95 AS Decimal(3, 2)))
INSERT [dbo].[MaterialType] ([id], [brak_percent]) VALUES (3, CAST(0.28 AS Decimal(3, 2)))
INSERT [dbo].[MaterialType] ([id], [brak_percent]) VALUES (4, CAST(0.55 AS Decimal(3, 2)))
INSERT [dbo].[MaterialType] ([id], [brak_percent]) VALUES (5, CAST(0.34 AS Decimal(3, 2)))
SET IDENTITY_INSERT [dbo].[MaterialType] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerCompanyType] ON 

INSERT [dbo].[PartnerCompanyType] ([id], [type]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerCompanyType] ([id], [type]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerCompanyType] ([id], [type]) VALUES (3, N'ООО')
INSERT [dbo].[PartnerCompanyType] ([id], [type]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[PartnerCompanyType] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerDirectors] ON 

INSERT [dbo].[PartnerDirectors] ([id], [director_name]) VALUES (1, N'Воробьева Екатерина Валерьевна')
INSERT [dbo].[PartnerDirectors] ([id], [director_name]) VALUES (2, N'Иванова Александра Ивановна')
INSERT [dbo].[PartnerDirectors] ([id], [director_name]) VALUES (3, N'Петров Василий Петрович')
INSERT [dbo].[PartnerDirectors] ([id], [director_name]) VALUES (4, N'Соловьев Андрей Николаевич')
INSERT [dbo].[PartnerDirectors] ([id], [director_name]) VALUES (5, N'Степанов Степан Сергеевич')
SET IDENTITY_INSERT [dbo].[PartnerDirectors] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerName] ON 

INSERT [dbo].[PartnerName] ([id], [name]) VALUES (1, N'База Строитель')
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (2, N'МонтажПро')
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (3, N'Паркет 29')
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[PartnerName] ([id], [name]) VALUES (5, N'Стройсервис')
SET IDENTITY_INSERT [dbo].[PartnerName] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerProduct] ON 

INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (2, N'Паркетная доска Ясень темный однополосная 14 мм', 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм', 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (6, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (7, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (8, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (9, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (10, N'Паркетная доска Ясень темный однополосная 14 мм', 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (11, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (12, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (13, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (14, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 2, 25000, CAST(N'2024-06-12' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (15, N'Паркетная доска Ясень темный однополосная 14 мм', 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProduct] ([id], [partner_product], [partner_id], [product_amount], [sale_date]) VALUES (16, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 5, 2500, CAST(N'2024-07-05' AS Date))
SET IDENTITY_INSERT [dbo].[PartnerProduct] OFF
GO
SET IDENTITY_INSERT [dbo].[Partners] ON 

INSERT [dbo].[Partners] ([id], [partner_type_id], [partner_id], [director_id], [partner_email], [partner_phone], [partner_adress_id], [INN], [rating]) VALUES (1, 1, 1, 2, N'aleksandraivanova@ml.ru', N'4931234567', 5, 2222455179, 7)
INSERT [dbo].[Partners] ([id], [partner_type_id], [partner_id], [director_id], [partner_email], [partner_phone], [partner_adress_id], [INN], [rating]) VALUES (2, 1, 2, 5, N'stepanov@stepan.ru', N'9128883333', 4, 5552431140, 10)
INSERT [dbo].[Partners] ([id], [partner_type_id], [partner_id], [director_id], [partner_email], [partner_phone], [partner_adress_id], [INN], [rating]) VALUES (3, 3, 3, 3, N'vppetrov@vl.ru', N'9871235678', 2, 3333888520, 7)
INSERT [dbo].[Partners] ([id], [partner_type_id], [partner_id], [director_id], [partner_email], [partner_phone], [partner_adress_id], [INN], [rating]) VALUES (4, 2, 4, 1, N'ekaterina.vorobeva@ml.ru', N'4442223311', 1, 1111520857, 5)
INSERT [dbo].[Partners] ([id], [partner_type_id], [partner_id], [director_id], [partner_email], [partner_phone], [partner_adress_id], [INN], [rating]) VALUES (5, 4, 5, 4, N'ansolovev@st.ru', N'8122233200', 3, 4440391035, 7)
SET IDENTITY_INSERT [dbo].[Partners] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [product_type_id], [product_name], [article], [minimal_price_for_partner]) VALUES (1, 3, N'Паркетная доска Ясень темный однополосная 14 мм', 8758385, CAST(4456.90 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([id], [product_type_id], [product_name], [article], [minimal_price_for_partner]) VALUES (2, 3, N'Инженерная доска Дуб Французская елка однополосная 12 мм', 8858958, CAST(7330.99 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([id], [product_type_id], [product_name], [article], [minimal_price_for_partner]) VALUES (3, 1, N'Ламинат Дуб дымчато-белый 33 класс 12 мм', 7750282, CAST(1799.33 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([id], [product_type_id], [product_name], [article], [minimal_price_for_partner]) VALUES (4, 1, N'Ламинат Дуб серый 32 класс 8 мм с фаской', 7028748, CAST(3890.41 AS Decimal(10, 2)))
INSERT [dbo].[Products] ([id], [product_type_id], [product_name], [article], [minimal_price_for_partner]) VALUES (5, 4, N'Пробковое напольное клеевое покрытие 32 класс 4 мм', 5012543, CAST(5450.59 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductType] ON 

INSERT [dbo].[ProductType] ([id], [product_type], [coef_product_type]) VALUES (1, N'Ламинат', CAST(2.35 AS Decimal(10, 2)))
INSERT [dbo].[ProductType] ([id], [product_type], [coef_product_type]) VALUES (2, N'Массивная доска', CAST(5.15 AS Decimal(10, 2)))
INSERT [dbo].[ProductType] ([id], [product_type], [coef_product_type]) VALUES (3, N'Паркетная доска', CAST(4.34 AS Decimal(10, 2)))
INSERT [dbo].[ProductType] ([id], [product_type], [coef_product_type]) VALUES (4, N'Пробковое покрытие', CAST(1.50 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[ProductType] OFF
GO
ALTER TABLE [dbo].[Adresses]  WITH CHECK ADD  CONSTRAINT [FK_Adresses_AdressesCity] FOREIGN KEY([city_id])
REFERENCES [dbo].[AdressesCity] ([id])
GO
ALTER TABLE [dbo].[Adresses] CHECK CONSTRAINT [FK_Adresses_AdressesCity]
GO
ALTER TABLE [dbo].[Adresses]  WITH CHECK ADD  CONSTRAINT [FK_Adresses_AdressesRegion] FOREIGN KEY([region_id])
REFERENCES [dbo].[AdressesRegion] ([id])
GO
ALTER TABLE [dbo].[Adresses] CHECK CONSTRAINT [FK_Adresses_AdressesRegion]
GO
ALTER TABLE [dbo].[Adresses]  WITH CHECK ADD  CONSTRAINT [FK_Adresses_AdressesStreet] FOREIGN KEY([street_id])
REFERENCES [dbo].[AdressesStreet] ([id])
GO
ALTER TABLE [dbo].[Adresses] CHECK CONSTRAINT [FK_Adresses_AdressesStreet]
GO
ALTER TABLE [dbo].[PartnerProduct]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProduct_PartnerName] FOREIGN KEY([partner_id])
REFERENCES [dbo].[PartnerName] ([id])
GO
ALTER TABLE [dbo].[PartnerProduct] CHECK CONSTRAINT [FK_PartnerProduct_PartnerName]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Adresses] FOREIGN KEY([partner_adress_id])
REFERENCES [dbo].[Adresses] ([id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Adresses]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_PartnerCompanyType] FOREIGN KEY([partner_type_id])
REFERENCES [dbo].[PartnerCompanyType] ([id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_PartnerCompanyType]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_PartnerDirectors] FOREIGN KEY([director_id])
REFERENCES [dbo].[PartnerDirectors] ([id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_PartnerDirectors]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_PartnerName] FOREIGN KEY([partner_id])
REFERENCES [dbo].[PartnerName] ([id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_PartnerName]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductType] FOREIGN KEY([product_type_id])
REFERENCES [dbo].[ProductType] ([id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductType]
GO
USE [master]
GO
ALTER DATABASE [TomilovKT7] SET  READ_WRITE 
GO
