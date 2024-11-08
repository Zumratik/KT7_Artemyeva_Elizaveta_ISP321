USE [master]
GO
/****** Object:  Database [MasterPol]    Script Date: 06.11.2024 17:23:34 ******/
CREATE DATABASE [MasterPol]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MasterPol', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterPol.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'MasterPol_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\MasterPol_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [MasterPol] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MasterPol].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MasterPol] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MasterPol] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MasterPol] SET ARITHABORT OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MasterPol] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MasterPol] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MasterPol] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MasterPol] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MasterPol] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MasterPol] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MasterPol] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MasterPol] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MasterPol] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MasterPol] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MasterPol] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MasterPol] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MasterPol] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MasterPol] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MasterPol] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MasterPol] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MasterPol] SET  MULTI_USER 
GO
ALTER DATABASE [MasterPol] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MasterPol] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MasterPol] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MasterPol] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [MasterPol] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [MasterPol] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [MasterPol] SET QUERY_STORE = OFF
GO
USE [MasterPol]
GO
/****** Object:  Table [dbo].[Addres]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Addres](
	[Id] [int] IDENTITY(6,1) NOT NULL,
	[UIndex] [nvarchar](50) NOT NULL,
	[IdRegion] [int] NOT NULL,
	[IdCity] [int] NOT NULL,
	[IdStreet] [int] NOT NULL,
	[House] [int] NOT NULL,
 CONSTRAINT [PK_Addres] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[Id] [int] IDENTITY(6,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Directors]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Directors](
	[Id] [int] IDENTITY(6,1) NOT NULL,
	[Surname] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Patronymic] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Directors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialType]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialType](
	[Id] [int] NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[CountBrac] [decimal](18, 10) NOT NULL,
 CONSTRAINT [PK_MaterialType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerName]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerName](
	[Id] [int] IDENTITY(6,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartnerName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerProducts]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerProducts](
	[Id] [int] NOT NULL,
	[IdProductName] [int] NOT NULL,
	[IdPartnerName] [int] NOT NULL,
	[Count] [int] NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_PartnerProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[Id] [int] IDENTITY(6,1) NOT NULL,
	[IdPartnerType] [int] NOT NULL,
	[IdPartnerName] [int] NOT NULL,
	[IdDirectors] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Telephone] [nvarchar](50) NOT NULL,
	[IdAddres] [int] NOT NULL,
	[INN] [nvarchar](50) NULL,
	[Rayting] [int] NOT NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PartnerType]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PartnerType](
	[Id] [int] IDENTITY(5,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PartnerType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductName]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductName](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](80) NOT NULL,
 CONSTRAINT [PK_ProductName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] NOT NULL,
	[IdTypeProduct] [int] NOT NULL,
	[IdProductName] [int] NOT NULL,
	[Article] [nvarchar](50) NOT NULL,
	[MinPrice] [float] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductType]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductType](
	[Id] [int] NOT NULL,
	[IdTypeName] [int] NOT NULL,
	[Coefficient] [float] NOT NULL,
 CONSTRAINT [PK_ProductType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTypeName]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTypeName](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ProductTypeName] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[Id] [int] IDENTITY(6,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Street]    Script Date: 06.11.2024 17:23:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Street](
	[Id] [int] IDENTITY(6,1) NOT NULL,
	[Nme] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Street] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Addres] ON 

INSERT [dbo].[Addres] ([Id], [UIndex], [IdRegion], [IdCity], [IdStreet], [House]) VALUES (1, N'143960', 5, 2, 4, 51)
INSERT [dbo].[Addres] ([Id], [UIndex], [IdRegion], [IdCity], [IdStreet], [House]) VALUES (2, N'164500', 1, 3, 5, 18)
INSERT [dbo].[Addres] ([Id], [UIndex], [IdRegion], [IdCity], [IdStreet], [House]) VALUES (3, N'188910', 4, 1, 2, 21)
INSERT [dbo].[Addres] ([Id], [UIndex], [IdRegion], [IdCity], [IdStreet], [House]) VALUES (4, N'309500', 2, 4, 3, 122)
INSERT [dbo].[Addres] ([Id], [UIndex], [IdRegion], [IdCity], [IdStreet], [House]) VALUES (5, N'652050', 3, 5, 1, 15)
SET IDENTITY_INSERT [dbo].[Addres] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([Id], [Name]) VALUES (1, N'  Приморск')
INSERT [dbo].[City] ([Id], [Name]) VALUES (2, N'  Реутов')
INSERT [dbo].[City] ([Id], [Name]) VALUES (3, N'  Северодвинск')
INSERT [dbo].[City] ([Id], [Name]) VALUES (4, N'  Старый Оскол')
INSERT [dbo].[City] ([Id], [Name]) VALUES (5, N'  Юрга')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Directors] ON 

INSERT [dbo].[Directors] ([Id], [Surname], [Name], [Patronymic]) VALUES (1, N'Воробьева', N'Екатерина', N'Валерьевна')
INSERT [dbo].[Directors] ([Id], [Surname], [Name], [Patronymic]) VALUES (2, N'Иванова', N'Александра', N'Ивановна')
INSERT [dbo].[Directors] ([Id], [Surname], [Name], [Patronymic]) VALUES (3, N'Петров', N'Василий', N'Петрович')
INSERT [dbo].[Directors] ([Id], [Surname], [Name], [Patronymic]) VALUES (4, N'Соловьев', N'Андрей', N'Николаевич')
INSERT [dbo].[Directors] ([Id], [Surname], [Name], [Patronymic]) VALUES (5, N'Степанов', N'Степан', N'Сергеевич')
SET IDENTITY_INSERT [dbo].[Directors] OFF
GO
INSERT [dbo].[MaterialType] ([Id], [TypeName], [CountBrac]) VALUES (1, N'Тип материала 1', CAST(0.0010000000 AS Decimal(18, 10)))
INSERT [dbo].[MaterialType] ([Id], [TypeName], [CountBrac]) VALUES (2, N'Тип материала 2', CAST(0.0095000000 AS Decimal(18, 10)))
INSERT [dbo].[MaterialType] ([Id], [TypeName], [CountBrac]) VALUES (3, N'Тип материала 3', CAST(0.0028000000 AS Decimal(18, 10)))
INSERT [dbo].[MaterialType] ([Id], [TypeName], [CountBrac]) VALUES (4, N'Тип материала 4', CAST(0.0055000000 AS Decimal(18, 10)))
INSERT [dbo].[MaterialType] ([Id], [TypeName], [CountBrac]) VALUES (5, N'Тип материала 5', CAST(0.0034000000 AS Decimal(18, 10)))
GO
SET IDENTITY_INSERT [dbo].[PartnerName] ON 

INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (1, N'База Строитель')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (2, N'МонтажПро')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (3, N'Паркет 29')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (4, N'Ремонт и отделка')
INSERT [dbo].[PartnerName] ([Id], [Name]) VALUES (5, N'Стройсервис')
SET IDENTITY_INSERT [dbo].[PartnerName] OFF
GO
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (1, 4, 1, 15500, CAST(N'2023-03-23' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (2, 2, 1, 12350, CAST(N'2023-12-18' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (3, 3, 1, 37400, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (4, 1, 3, 35000, CAST(N'2022-12-02' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (5, 5, 3, 1250, CAST(N'2023-05-17' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (6, 2, 3, 1000, CAST(N'2024-06-07' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (7, 4, 3, 7550, CAST(N'2024-07-01' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (8, 4, 5, 7250, CAST(N'2023-01-22' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (9, 1, 5, 2500, CAST(N'2024-07-05' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (10, 3, 4, 59050, CAST(N'2023-03-20' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (11, 2, 4, 37200, CAST(N'2024-03-12' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (12, 5, 4, 4500, CAST(N'2024-05-14' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (13, 2, 2, 50000, CAST(N'2023-09-19' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (14, 3, 2, 670000, CAST(N'2023-11-10' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (15, 4, 2, 35000, CAST(N'2024-04-15' AS Date))
INSERT [dbo].[PartnerProducts] ([Id], [IdProductName], [IdPartnerName], [Count], [Date]) VALUES (16, 1, 2, 25000, CAST(N'2024-06-12' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Partners] ON 

INSERT [dbo].[Partners] ([Id], [IdPartnerType], [IdPartnerName], [IdDirectors], [Email], [Telephone], [IdAddres], [INN], [Rayting]) VALUES (1, 1, 1, 2, N'aleksandraivanova@ml.ru', N'+7(493) 123-45-67', 5, N'2222455179', 7)
INSERT [dbo].[Partners] ([Id], [IdPartnerType], [IdPartnerName], [IdDirectors], [Email], [Telephone], [IdAddres], [INN], [Rayting]) VALUES (2, 3, 3, 3, N'vppetrov@vl.ru', N'+7(987) 123-56-78', 2, N'3333888520', 7)
INSERT [dbo].[Partners] ([Id], [IdPartnerType], [IdPartnerName], [IdDirectors], [Email], [Telephone], [IdAddres], [INN], [Rayting]) VALUES (3, 4, 5, 4, N'ansolovev@st.ru', N'+7(812) 223-32-00', 3, N'4440391035', 7)
INSERT [dbo].[Partners] ([Id], [IdPartnerType], [IdPartnerName], [IdDirectors], [Email], [Telephone], [IdAddres], [INN], [Rayting]) VALUES (4, 2, 4, 1, N'ekaterina.vorobeva@ml.ru', N'+7(444) 222-33-11', 1, N'1111520857', 5)
INSERT [dbo].[Partners] ([Id], [IdPartnerType], [IdPartnerName], [IdDirectors], [Email], [Telephone], [IdAddres], [INN], [Rayting]) VALUES (5, 1, 2, 5, N'stepanov@stepan.ru', N'+7(912) 888-33-33', 4, N'5552431140', 10)
SET IDENTITY_INSERT [dbo].[Partners] OFF
GO
SET IDENTITY_INSERT [dbo].[PartnerType] ON 

INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (1, N'ЗАО')
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (2, N'ОАО')
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (3, N'ООО')
INSERT [dbo].[PartnerType] ([Id], [Name]) VALUES (4, N'ПАО')
SET IDENTITY_INSERT [dbo].[PartnerType] OFF
GO
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (1, N'Инженерная доска Дуб Французская елка однополосная 12 мм')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (2, N'Ламинат Дуб дымчато-белый 33 класс 12 мм')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (3, N'Ламинат Дуб серый 32 класс 8 мм с фаской')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (4, N'Паркетная доска Ясень темный однополосная 14 мм')
INSERT [dbo].[ProductName] ([Id], [Name]) VALUES (5, N'Пробковое напольное клеевое покрытие 32 класс 4 мм')
GO
INSERT [dbo].[Products] ([Id], [IdTypeProduct], [IdProductName], [Article], [MinPrice]) VALUES (1, 3, 4, N'8758385', 4456.9)
INSERT [dbo].[Products] ([Id], [IdTypeProduct], [IdProductName], [Article], [MinPrice]) VALUES (2, 3, 1, N'8858958', 7330.99)
INSERT [dbo].[Products] ([Id], [IdTypeProduct], [IdProductName], [Article], [MinPrice]) VALUES (3, 1, 2, N'7750282', 1799.33)
INSERT [dbo].[Products] ([Id], [IdTypeProduct], [IdProductName], [Article], [MinPrice]) VALUES (4, 1, 3, N'7028748', 3890.41)
INSERT [dbo].[Products] ([Id], [IdTypeProduct], [IdProductName], [Article], [MinPrice]) VALUES (5, 4, 5, N'5012543', 5450.59)
GO
INSERT [dbo].[ProductType] ([Id], [IdTypeName], [Coefficient]) VALUES (1, 1, 2.35)
INSERT [dbo].[ProductType] ([Id], [IdTypeName], [Coefficient]) VALUES (2, 2, 5.15)
INSERT [dbo].[ProductType] ([Id], [IdTypeName], [Coefficient]) VALUES (3, 3, 4.34)
INSERT [dbo].[ProductType] ([Id], [IdTypeName], [Coefficient]) VALUES (4, 4, 1.5)
GO
INSERT [dbo].[ProductTypeName] ([Id], [Name]) VALUES (1, N'Ламинат')
INSERT [dbo].[ProductTypeName] ([Id], [Name]) VALUES (2, N'Массивная доска')
INSERT [dbo].[ProductTypeName] ([Id], [Name]) VALUES (3, N'Паркетная доска')
INSERT [dbo].[ProductTypeName] ([Id], [Name]) VALUES (4, N'Пробковое покрытие')
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([Id], [Name]) VALUES (1, N' Архангельская область')
INSERT [dbo].[Region] ([Id], [Name]) VALUES (2, N' Белгородская область')
INSERT [dbo].[Region] ([Id], [Name]) VALUES (3, N' Кемеровская область')
INSERT [dbo].[Region] ([Id], [Name]) VALUES (4, N' Ленинградская область')
INSERT [dbo].[Region] ([Id], [Name]) VALUES (5, N' Московская область')
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Street] ON 

INSERT [dbo].[Street] ([Id], [Nme]) VALUES (1, N'  Лесная')
INSERT [dbo].[Street] ([Id], [Nme]) VALUES (2, N'  Парковая')
INSERT [dbo].[Street] ([Id], [Nme]) VALUES (3, N'  Рабочая')
INSERT [dbo].[Street] ([Id], [Nme]) VALUES (4, N'  Свободы')
INSERT [dbo].[Street] ([Id], [Nme]) VALUES (5, N'  Строителей')
SET IDENTITY_INSERT [dbo].[Street] OFF
GO
ALTER TABLE [dbo].[Addres]  WITH CHECK ADD  CONSTRAINT [FK_Addres_City] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([Id])
GO
ALTER TABLE [dbo].[Addres] CHECK CONSTRAINT [FK_Addres_City]
GO
ALTER TABLE [dbo].[Addres]  WITH CHECK ADD  CONSTRAINT [FK_Addres_Region] FOREIGN KEY([IdRegion])
REFERENCES [dbo].[Region] ([Id])
GO
ALTER TABLE [dbo].[Addres] CHECK CONSTRAINT [FK_Addres_Region]
GO
ALTER TABLE [dbo].[Addres]  WITH CHECK ADD  CONSTRAINT [FK_Addres_Street] FOREIGN KEY([IdStreet])
REFERENCES [dbo].[Street] ([Id])
GO
ALTER TABLE [dbo].[Addres] CHECK CONSTRAINT [FK_Addres_Street]
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_PartnerName] FOREIGN KEY([IdPartnerName])
REFERENCES [dbo].[PartnerName] ([Id])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_PartnerName]
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_ProductName] FOREIGN KEY([IdProductName])
REFERENCES [dbo].[ProductName] ([Id])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_ProductName]
GO
ALTER TABLE [dbo].[PartnerProducts]  WITH CHECK ADD  CONSTRAINT [FK_PartnerProducts_Products] FOREIGN KEY([IdProductName])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[PartnerProducts] CHECK CONSTRAINT [FK_PartnerProducts_Products]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Addres] FOREIGN KEY([IdAddres])
REFERENCES [dbo].[Addres] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Addres]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_Directors] FOREIGN KEY([IdDirectors])
REFERENCES [dbo].[Directors] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_Directors]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_PartnerName] FOREIGN KEY([IdPartnerName])
REFERENCES [dbo].[PartnerName] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_PartnerName]
GO
ALTER TABLE [dbo].[Partners]  WITH CHECK ADD  CONSTRAINT [FK_Partners_PartnerType] FOREIGN KEY([IdPartnerType])
REFERENCES [dbo].[PartnerType] ([Id])
GO
ALTER TABLE [dbo].[Partners] CHECK CONSTRAINT [FK_Partners_PartnerType]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductType] FOREIGN KEY([IdTypeProduct])
REFERENCES [dbo].[ProductType] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductType]
GO
ALTER TABLE [dbo].[ProductType]  WITH CHECK ADD  CONSTRAINT [FK_ProductType_ProductTypeName] FOREIGN KEY([IdTypeName])
REFERENCES [dbo].[ProductTypeName] ([Id])
GO
ALTER TABLE [dbo].[ProductType] CHECK CONSTRAINT [FK_ProductType_ProductTypeName]
GO
USE [master]
GO
ALTER DATABASE [MasterPol] SET  READ_WRITE 
GO
