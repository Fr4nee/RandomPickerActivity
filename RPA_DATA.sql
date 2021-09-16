USE [master]
GO
/****** Object:  Database [RPA_db]    Script Date: 16/9/21 15:09:14 ******/
CREATE DATABASE [RPA_db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'RPA_db', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RPA_db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'RPA_db_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\RPA_db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [RPA_db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [RPA_db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [RPA_db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [RPA_db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [RPA_db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [RPA_db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [RPA_db] SET ARITHABORT OFF 
GO
ALTER DATABASE [RPA_db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [RPA_db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [RPA_db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [RPA_db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [RPA_db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [RPA_db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [RPA_db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [RPA_db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [RPA_db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [RPA_db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [RPA_db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [RPA_db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [RPA_db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [RPA_db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [RPA_db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [RPA_db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [RPA_db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [RPA_db] SET RECOVERY FULL 
GO
ALTER DATABASE [RPA_db] SET  MULTI_USER 
GO
ALTER DATABASE [RPA_db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [RPA_db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [RPA_db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [RPA_db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [RPA_db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [RPA_db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'RPA_db', N'ON'
GO
ALTER DATABASE [RPA_db] SET QUERY_STORE = OFF
GO
USE [RPA_db]
GO
/****** Object:  Table [dbo].[Activities]    Script Date: 16/9/21 15:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Activities](
	[id_act] [int] IDENTITY(1,1) NOT NULL,
	[place] [varchar](600) NOT NULL,
	[description] [varchar](1500) NULL,
	[id_zone] [int] NOT NULL,
	[id_type] [int] NOT NULL,
 CONSTRAINT [PK_Activities] PRIMARY KEY CLUSTERED 
(
	[id_act] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Types]    Script Date: 16/9/21 15:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Types](
	[id_type] [int] IDENTITY(1,1) NOT NULL,
	[type] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Types] PRIMARY KEY CLUSTERED 
(
	[id_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zones]    Script Date: 16/9/21 15:09:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zones](
	[id_zone] [int] IDENTITY(1,1) NOT NULL,
	[zone] [varchar](300) NOT NULL,
 CONSTRAINT [PK_Zones] PRIMARY KEY CLUSTERED 
(
	[id_zone] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Activities] ON 
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (1, N'Centro Cultural Matienzo', NULL, 10, 2)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (2, N'Parque Saavedra', NULL, 8, 1)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (3, N'Rio', NULL, 5, 1)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (4, N'Ateneo', NULL, 11, 2)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (5, N'Hipodromo', NULL, 2, 3)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (6, N'Reserva Ecologica', NULL, 12, 1)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (7, N'Jardin Botanico', NULL, 2, 1)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (8, N'Jardin Japones', NULL, 2, 1)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (9, N'Alto Palermo', NULL, 2, 2)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (10, N'Cementerio de Recoleta', NULL, 3, 1)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (11, N'Centro Cultural Recoleta', NULL, 3, 2)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (12, N'Tuneles BSAS', NULL, 1, 2)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (13, N'El Zanjon', NULL, 9, 2)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (14, N'Microteatro', NULL, 2, 2)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (15, N'Cafe Tortoni', NULL, 9, 2)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (16, N'Parque Leloir', NULL, 1, 1)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (17, N'Unicenter', NULL, 7, 2)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (18, N'Dot', NULL, 8, 1)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (19, N'Jardines de la Biblioteca Nacional', NULL, 3, 3)
GO
INSERT [dbo].[Activities] ([id_act], [place], [description], [id_zone], [id_type]) VALUES (20, N'Bosques de Palermo', NULL, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Activities] OFF
GO
SET IDENTITY_INSERT [dbo].[Types] ON 
GO
INSERT [dbo].[Types] ([id_type], [type]) VALUES (1, N'Outdoor')
GO
INSERT [dbo].[Types] ([id_type], [type]) VALUES (2, N'Indoor')
GO
INSERT [dbo].[Types] ([id_type], [type]) VALUES (3, N'Mixed')
GO
SET IDENTITY_INSERT [dbo].[Types] OFF
GO
SET IDENTITY_INSERT [dbo].[Zones] ON 
GO
INSERT [dbo].[Zones] ([id_zone], [zone]) VALUES (1, N'X')
GO
INSERT [dbo].[Zones] ([id_zone], [zone]) VALUES (2, N'Palermo')
GO
INSERT [dbo].[Zones] ([id_zone], [zone]) VALUES (3, N'Recoleta')
GO
INSERT [dbo].[Zones] ([id_zone], [zone]) VALUES (4, N'Puerto Madero')
GO
INSERT [dbo].[Zones] ([id_zone], [zone]) VALUES (5, N'Vicente Lopez')
GO
INSERT [dbo].[Zones] ([id_zone], [zone]) VALUES (6, N'Olivos')
GO
INSERT [dbo].[Zones] ([id_zone], [zone]) VALUES (7, N'Martinez')
GO
INSERT [dbo].[Zones] ([id_zone], [zone]) VALUES (8, N'Saavedra')
GO
INSERT [dbo].[Zones] ([id_zone], [zone]) VALUES (9, N'Centro')
GO
INSERT [dbo].[Zones] ([id_zone], [zone]) VALUES (10, N'Almagro')
GO
INSERT [dbo].[Zones] ([id_zone], [zone]) VALUES (11, N'Barrio Norte')
GO
INSERT [dbo].[Zones] ([id_zone], [zone]) VALUES (12, N'Costanera Sur')
GO
SET IDENTITY_INSERT [dbo].[Zones] OFF
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_Activities_Types] FOREIGN KEY([id_type])
REFERENCES [dbo].[Types] ([id_type])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_Activities_Types]
GO
ALTER TABLE [dbo].[Activities]  WITH CHECK ADD  CONSTRAINT [FK_Activities_Zones] FOREIGN KEY([id_zone])
REFERENCES [dbo].[Zones] ([id_zone])
GO
ALTER TABLE [dbo].[Activities] CHECK CONSTRAINT [FK_Activities_Zones]
GO
USE [master]
GO
ALTER DATABASE [RPA_db] SET  READ_WRITE 
GO
