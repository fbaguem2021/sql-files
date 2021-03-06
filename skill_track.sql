/****** Object:  Database [skill_track]    Script Date: 03/02/2022 22:54:08 ******/
CREATE DATABASE [skill_track]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'skill_track', FILENAME = N'D:\Program Files\MSSQL15.SQLEXPRESS\MSSQL\DATA\skill_track.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'skill_track_log', FILENAME = N'D:\Program Files\MSSQL15.SQLEXPRESS\MSSQL\DATA\skill_track_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [skill_track] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [skill_track].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [skill_track] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [skill_track] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [skill_track] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [skill_track] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [skill_track] SET ARITHABORT OFF 
GO
ALTER DATABASE [skill_track] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [skill_track] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [skill_track] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [skill_track] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [skill_track] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [skill_track] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [skill_track] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [skill_track] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [skill_track] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [skill_track] SET  DISABLE_BROKER 
GO
ALTER DATABASE [skill_track] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [skill_track] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [skill_track] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [skill_track] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [skill_track] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [skill_track] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [skill_track] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [skill_track] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [skill_track] SET  MULTI_USER 
GO
ALTER DATABASE [skill_track] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [skill_track] SET DB_CHAINING OFF 
GO
ALTER DATABASE [skill_track] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [skill_track] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [skill_track] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [skill_track] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [skill_track] SET QUERY_STORE = OFF
GO
USE [skill_track]
GO
/****** Object:  Table [dbo].[Modules]    Script Date: 03/02/2022 22:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Modules](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Modules] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 03/02/2022 22:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[idModule] [int] NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review_rol_premission]    Script Date: 03/02/2022 22:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review_rol_premission](
	[id] [int] NOT NULL,
	[idRolReviewer] [int] NOT NULL,
	[idRolReceiver] [int] NOT NULL,
	[idPermission] [int] NOT NULL,
 CONSTRAINT [PK_Review_rol_premission] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[idRolReviewer] ASC,
	[idRolReceiver] ASC,
	[idPermission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_permissions]    Script Date: 03/02/2022 22:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idRole] [int] NOT NULL,
	[idPermission] [int] NOT NULL,
 CONSTRAINT [PK_Role_permissions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rols]    Script Date: 03/02/2022 22:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rols](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Rols] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 03/02/2022 22:54:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[email] [varchar](50) NOT NULL,
	[password] [varchar](200) NOT NULL,
	[idRol] [int] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Modules] ON 

INSERT [dbo].[Modules] ([id], [name]) VALUES (1, N'rols')
INSERT [dbo].[Modules] ([id], [name]) VALUES (2, N'users')
INSERT [dbo].[Modules] ([id], [name]) VALUES (3, N'permissions')
SET IDENTITY_INSERT [dbo].[Modules] OFF
GO
SET IDENTITY_INSERT [dbo].[Permissions] ON 

INSERT [dbo].[Permissions] ([id], [name], [idModule]) VALUES (1, N'add', 1)
INSERT [dbo].[Permissions] ([id], [name], [idModule]) VALUES (2, N'delete', 1)
INSERT [dbo].[Permissions] ([id], [name], [idModule]) VALUES (3, N'modify', 1)
INSERT [dbo].[Permissions] ([id], [name], [idModule]) VALUES (4, N'add', 2)
INSERT [dbo].[Permissions] ([id], [name], [idModule]) VALUES (5, N'delete', 2)
INSERT [dbo].[Permissions] ([id], [name], [idModule]) VALUES (6, N'modify', 2)
SET IDENTITY_INSERT [dbo].[Permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[Role_permissions] ON 

INSERT [dbo].[Role_permissions] ([id], [idRole], [idPermission]) VALUES (1, 1, 1)
INSERT [dbo].[Role_permissions] ([id], [idRole], [idPermission]) VALUES (2, 1, 2)
INSERT [dbo].[Role_permissions] ([id], [idRole], [idPermission]) VALUES (3, 1, 3)
INSERT [dbo].[Role_permissions] ([id], [idRole], [idPermission]) VALUES (4, 1, 4)
INSERT [dbo].[Role_permissions] ([id], [idRole], [idPermission]) VALUES (5, 1, 5)
INSERT [dbo].[Role_permissions] ([id], [idRole], [idPermission]) VALUES (6, 1, 6)
INSERT [dbo].[Role_permissions] ([id], [idRole], [idPermission]) VALUES (7, 2, 1)
INSERT [dbo].[Role_permissions] ([id], [idRole], [idPermission]) VALUES (8, 2, 2)
INSERT [dbo].[Role_permissions] ([id], [idRole], [idPermission]) VALUES (9, 2, 3)
INSERT [dbo].[Role_permissions] ([id], [idRole], [idPermission]) VALUES (10, 2, 4)
INSERT [dbo].[Role_permissions] ([id], [idRole], [idPermission]) VALUES (11, 2, 5)
INSERT [dbo].[Role_permissions] ([id], [idRole], [idPermission]) VALUES (12, 2, 6)
SET IDENTITY_INSERT [dbo].[Role_permissions] OFF
GO
SET IDENTITY_INSERT [dbo].[Rols] ON 

INSERT [dbo].[Rols] ([id], [name]) VALUES (1, N'developer')
INSERT [dbo].[Rols] ([id], [name]) VALUES (2, N'superadmin')
INSERT [dbo].[Rols] ([id], [name]) VALUES (3, N'senior')
INSERT [dbo].[Rols] ([id], [name]) VALUES (4, N'junior')
SET IDENTITY_INSERT [dbo].[Rols] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([id], [name], [email], [password], [idRol]) VALUES (1, N'oriol', N'oriolmail', N'pass', 4)
INSERT [dbo].[Users] ([id], [name], [email], [password], [idRol]) VALUES (2, N'alex', N'alexmail', N'pass', 4)
INSERT [dbo].[Users] ([id], [name], [email], [password], [idRol]) VALUES (3, N'david', N'davidmail', N'pass', 4)
INSERT [dbo].[Users] ([id], [name], [email], [password], [idRol]) VALUES (4, N'francesc', N'francescmail', N'pass', 4)
INSERT [dbo].[Users] ([id], [name], [email], [password], [idRol]) VALUES (5, N'francisco', N'franciscomail', N'pass', 3)
INSERT [dbo].[Users] ([id], [name], [email], [password], [idRol]) VALUES (6, N'antonio', N'antoniomail', N'pass', 2)
INSERT [dbo].[Users] ([id], [name], [email], [password], [idRol]) VALUES (7, N'skilltrack', N'skilltrackmail', N'pass', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Modules] FOREIGN KEY([idModule])
REFERENCES [dbo].[Modules] ([id])
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_Modules]
GO
ALTER TABLE [dbo].[Role_permissions]  WITH CHECK ADD  CONSTRAINT [FK_Role_permissions_Permissions] FOREIGN KEY([idPermission])
REFERENCES [dbo].[Permissions] ([id])
GO
ALTER TABLE [dbo].[Role_permissions] CHECK CONSTRAINT [FK_Role_permissions_Permissions]
GO
ALTER TABLE [dbo].[Role_permissions]  WITH CHECK ADD  CONSTRAINT [FK_Role_permissions_Rols] FOREIGN KEY([idRole])
REFERENCES [dbo].[Rols] ([id])
GO
ALTER TABLE [dbo].[Role_permissions] CHECK CONSTRAINT [FK_Role_permissions_Rols]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rols] ([id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Rol]
GO
USE [master]
GO
ALTER DATABASE [skill_track] SET  READ_WRITE 
GO
