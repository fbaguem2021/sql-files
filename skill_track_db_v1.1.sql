
/****** Object:  Database [skill_track]    Script Date: 18/02/2022 12:40:21 ******/
CREATE DATABASE [skill_track]
GO
use [skill_track]
go
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
ALTER DATABASE [skill_track] SET AUTO_CLOSE ON 
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
ALTER DATABASE [skill_track] SET  ENABLE_BROKER 
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
/****** Object:  Table [dbo].[auth_group]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_group_permissions]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_group_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[group_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_permission]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[content_type_id] [int] NOT NULL,
	[codename] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_user]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[password] [nvarchar](128) NOT NULL,
	[last_login] [datetime2](7) NULL,
	[is_superuser] [bit] NOT NULL,
	[username] [nvarchar](150) NOT NULL,
	[first_name] [nvarchar](30) NOT NULL,
	[last_name] [nvarchar](150) NOT NULL,
	[email] [nvarchar](254) NOT NULL,
	[is_staff] [bit] NOT NULL,
	[is_active] [bit] NOT NULL,
	[date_joined] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_user_groups]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_user_groups](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_user_user_permissions]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_user_user_permissions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Company](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[cif] [nvarchar](10) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[image] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_admin_log]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_admin_log](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[action_time] [datetime2](7) NOT NULL,
	[object_id] [nvarchar](max) NULL,
	[object_repr] [nvarchar](200) NOT NULL,
	[action_flag] [smallint] NOT NULL,
	[change_message] [nvarchar](max) NOT NULL,
	[content_type_id] [int] NULL,
	[user_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_content_type]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_content_type](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app_label] [nvarchar](100) NOT NULL,
	[model] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_migrations]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_migrations](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[app] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[applied] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[django_session]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[django_session](
	[session_key] [nvarchar](40) NOT NULL,
	[session_data] [nvarchar](max) NOT NULL,
	[expire_date] [datetime2](7) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[session_key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
	[idCompany_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_SkillList]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_SkillList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[startDate] [date] NOT NULL,
	[finalDate] [date] NULL,
	[groupName_id] [int] NOT NULL,
	[idCompany_id] [int] NOT NULL,
	[idSkillList_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kpi]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kpi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
	[idSkill_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[description] [nvarchar](200) NOT NULL,
	[idCompany_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[type] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostToAdmin]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostToAdmin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[description] [nvarchar](200) NOT NULL,
	[alreadyRead] [bit] NOT NULL,
	[idCompany_id] [int] NOT NULL,
	[idUser_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Review]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[idKpi_id] [int] NOT NULL,
	[idReviewerUser_id] [int] NOT NULL,
	[idValuedUser_id] [int] NOT NULL,
	[idScore_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[isAdmin] [bit] NOT NULL,
	[idCompany_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Interactive_Permission]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Interactive_Permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isActive] [bit] NOT NULL,
	[idPermission_id] [int] NOT NULL,
	[idRolPerformAction_id] [int] NOT NULL,
	[idRolReceiveAction_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Permission]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isActive] [bit] NOT NULL,
	[idPermission_id] [int] NOT NULL,
	[idRol_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
	[shortName] [nvarchar](50) NOT NULL,
	[description] [nvarchar](200) NOT NULL,
	[idCompany_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillList]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
	[idCompany_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillList_Skill]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillList_Skill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idCompany_id] [int] NOT NULL,
	[idSkill_id] [int] NOT NULL,
	[idSkillList_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Score](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mark] [int] NOT NULL,
	[description] [nvarchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[surname] [nvarchar](100) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[password] [nvarchar](200) NOT NULL,
	[image] [nvarchar](100) NULL,
	[idCompany_id] [int] NOT NULL,
	[idRol_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Group]    Script Date: 18/02/2022 12:40:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[startDate] [date] NOT NULL,
	[finalDate] [date] NULL,
	[groupName_id] [int] NOT NULL,
	[idCompany_id] [int] NOT NULL,
	[idUser_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[auth_permission] ON 

INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (1, N'Can add log entry', 1, N'add_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (2, N'Can change log entry', 1, N'change_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (3, N'Can delete log entry', 1, N'delete_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (4, N'Can view log entry', 1, N'view_logentry')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (5, N'Can add permission', 2, N'add_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (6, N'Can change permission', 2, N'change_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (7, N'Can delete permission', 2, N'delete_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (8, N'Can view permission', 2, N'view_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (9, N'Can add group', 3, N'add_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (10, N'Can change group', 3, N'change_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (11, N'Can delete group', 3, N'delete_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (12, N'Can view group', 3, N'view_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (13, N'Can add user', 4, N'add_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (14, N'Can change user', 4, N'change_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (15, N'Can delete user', 4, N'delete_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (16, N'Can view user', 4, N'view_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (17, N'Can add content type', 5, N'add_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (18, N'Can change content type', 5, N'change_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (19, N'Can delete content type', 5, N'delete_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (20, N'Can view content type', 5, N'view_contenttype')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (21, N'Can add session', 6, N'add_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (22, N'Can change session', 6, N'change_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (23, N'Can delete session', 6, N'delete_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (24, N'Can view session', 6, N'view_session')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (25, N'Can add company', 7, N'add_company')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (26, N'Can change company', 7, N'change_company')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (27, N'Can delete company', 7, N'delete_company')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (28, N'Can view company', 7, N'view_company')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (29, N'Can add group', 8, N'add_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (30, N'Can change group', 8, N'change_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (31, N'Can delete group', 8, N'delete_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (32, N'Can view group', 8, N'view_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (33, N'Can add permission', 9, N'add_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (34, N'Can change permission', 9, N'change_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (35, N'Can delete permission', 9, N'delete_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (36, N'Can view permission', 9, N'view_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (37, N'Can add role', 10, N'add_role')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (38, N'Can change role', 10, N'change_role')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (39, N'Can delete role', 10, N'delete_role')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (40, N'Can view role', 10, N'view_role')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (41, N'Can add user', 11, N'add_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (42, N'Can change user', 11, N'change_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (43, N'Can delete user', 11, N'delete_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (44, N'Can view user', 11, N'view_user')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (45, N'Can add skill list', 12, N'add_skilllist')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (46, N'Can change skill list', 12, N'change_skilllist')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (47, N'Can delete skill list', 12, N'delete_skilllist')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (48, N'Can view skill list', 12, N'view_skilllist')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (49, N'Can add skill', 13, N'add_skill')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (50, N'Can change skill', 13, N'change_skill')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (51, N'Can delete skill', 13, N'delete_skill')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (52, N'Can view skill', 13, N'view_skill')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (53, N'Can add post to admin', 14, N'add_posttoadmin')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (54, N'Can change post to admin', 14, N'change_posttoadmin')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (55, N'Can delete post to admin', 14, N'delete_posttoadmin')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (56, N'Can view post to admin', 14, N'view_posttoadmin')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (57, N'Can add notification', 15, N'add_notification')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (58, N'Can change notification', 15, N'change_notification')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (59, N'Can delete notification', 15, N'delete_notification')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (60, N'Can view notification', 15, N'view_notification')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (61, N'Can add kpi', 16, N'add_kpi')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (62, N'Can change kpi', 16, N'change_kpi')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (63, N'Can delete kpi', 16, N'delete_kpi')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (64, N'Can view kpi', 16, N'view_kpi')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (65, N'Can add role_ permission', 17, N'add_role_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (66, N'Can change role_ permission', 17, N'change_role_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (67, N'Can delete role_ permission', 17, N'delete_role_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (68, N'Can view role_ permission', 17, N'view_role_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (69, N'Can add role_ interactive_ permission', 18, N'add_role_interactive_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (70, N'Can change role_ interactive_ permission', 18, N'change_role_interactive_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (71, N'Can delete role_ interactive_ permission', 18, N'delete_role_interactive_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (72, N'Can view role_ interactive_ permission', 18, N'view_role_interactive_permission')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (73, N'Can add review', 19, N'add_review')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (74, N'Can change review', 19, N'change_review')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (75, N'Can delete review', 19, N'delete_review')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (76, N'Can view review', 19, N'view_review')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (77, N'Can add score', 20, N'add_score')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (78, N'Can change score', 20, N'change_score')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (79, N'Can delete score', 20, N'delete_score')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (80, N'Can view score', 20, N'view_score')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (81, N'Can add group_ skill list', 21, N'add_group_skilllist')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (82, N'Can change group_ skill list', 21, N'change_group_skilllist')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (83, N'Can delete group_ skill list', 21, N'delete_group_skilllist')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (84, N'Can view group_ skill list', 21, N'view_group_skilllist')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (85, N'Can add user_ group', 22, N'add_user_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (86, N'Can change user_ group', 22, N'change_user_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (87, N'Can delete user_ group', 22, N'delete_user_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (88, N'Can view user_ group', 22, N'view_user_group')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (89, N'Can add skill list_ skill', 23, N'add_skilllist_skill')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (90, N'Can change skill list_ skill', 23, N'change_skilllist_skill')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (91, N'Can delete skill list_ skill', 23, N'delete_skilllist_skill')
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (92, N'Can view skill list_ skill', 23, N'view_skilllist_skill')
SET IDENTITY_INSERT [dbo].[auth_permission] OFF
GO
SET IDENTITY_INSERT [dbo].[auth_user] ON 

INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (1, N'pbkdf2_sha256$150000$rTy4IY0l9itT$dObF5mmbeZLRfidzbfUcWjyivEu5MT6YzJOKfEdec6E=', CAST(N'2022-02-18T10:11:51.1075370' AS DateTime2), 1, N'cep', N'', N'', N'', 1, 1, CAST(N'2022-02-18T10:11:11.7779030' AS DateTime2))
SET IDENTITY_INSERT [dbo].[auth_user] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 

INSERT [dbo].[Company] ([id], [cif], [name], [image]) VALUES (1, N'1254789CH', N'Centre d''estudis politecnics', N'cep.png')
INSERT [dbo].[Company] ([id], [cif], [name], [image]) VALUES (2, N'126654FV', N'Stucom', N'stucom.png')
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[django_admin_log] ON 

INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (1, CAST(N'2022-02-18T10:12:48.2400340' AS DateTime2), N'1', N'Centre d''estudis politecnics', 1, N'[{"added": {}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (2, CAST(N'2022-02-18T10:12:50.2708290' AS DateTime2), N'1', N'junior', 1, N'[{"added": {}}]', 10, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3, CAST(N'2022-02-18T10:13:17.1274430' AS DateTime2), N'2', N'Stucom', 1, N'[{"added": {}}]', 7, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (4, CAST(N'2022-02-18T10:14:18.5276060' AS DateTime2), N'1', N'Marc', 1, N'[{"added": {}}]', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (5, CAST(N'2022-02-18T10:14:44.4064900' AS DateTime2), N'2', N'Alex', 1, N'[{"added": {}}]', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (6, CAST(N'2022-02-18T10:15:01.9793240' AS DateTime2), N'3', N'David', 1, N'[{"added": {}}]', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (7, CAST(N'2022-02-18T10:15:45.2278450' AS DateTime2), N'4', N'Francesc', 1, N'[{"added": {}}]', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (8, CAST(N'2022-02-18T10:16:06.2387550' AS DateTime2), N'5', N'Oriol', 1, N'[{"added": {}}]', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (9, CAST(N'2022-02-18T10:25:34.1210320' AS DateTime2), N'1', N'clase', 1, N'[{"added": {}}]', 12, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (10, CAST(N'2022-02-18T10:26:20.0151980' AS DateTime2), N'2', N'Acceso a datos', 1, N'[{"added": {}}]', 12, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (11, CAST(N'2022-02-18T10:26:54.6241720' AS DateTime2), N'1', N'constancia', 1, N'[{"added": {}}]', 13, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (12, CAST(N'2022-02-18T10:31:54.1181760' AS DateTime2), N'2', N'legilibilidad', 1, N'[{"added": {}}]', 13, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (13, CAST(N'2022-02-18T10:32:04.4908590' AS DateTime2), N'3', N'adaptabilidad', 1, N'[{"added": {}}]', 13, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (14, CAST(N'2022-02-18T10:47:00.2526160' AS DateTime2), N'4', N'seriedad', 1, N'[{"added": {}}]', 13, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (15, CAST(N'2022-02-18T10:47:23.5785530' AS DateTime2), N'5', N'especialización', 1, N'[{"added": {}}]', 13, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (16, CAST(N'2022-02-18T10:47:44.1419260' AS DateTime2), N'1', N'DAM2A', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (17, CAST(N'2022-02-18T10:47:50.7055700' AS DateTime2), N'2', N'ACOM1A', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (18, CAST(N'2022-02-18T10:47:57.6780420' AS DateTime2), N'3', N'DAM2A', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (19, CAST(N'2022-02-18T10:48:02.6739470' AS DateTime2), N'4', N'ACOM1A', 1, N'[{"added": {}}]', 8, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (20, CAST(N'2022-02-18T10:53:18.9080040' AS DateTime2), N'1', N'DAM2A:Centre d''estudis politecnics // clase', 1, N'[{"added": {}}]', 21, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (21, CAST(N'2022-02-18T10:55:02.3142430' AS DateTime2), N'3', N'stc', 1, N'[{"added": {}}]', 12, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (22, CAST(N'2022-02-18T11:01:52.9479950' AS DateTime2), N'1', N'planifica las tareas', 1, N'[{"added": {}}]', 16, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (23, CAST(N'2022-02-18T11:02:12.2551690' AS DateTime2), N'2', N'hace los deberes cada día', 1, N'[{"added": {}}]', 16, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (24, CAST(N'2022-02-18T11:02:35.2584180' AS DateTime2), N'2', N'DAM2A:Stucom // stc', 1, N'[{"added": {}}]', 21, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (25, CAST(N'2022-02-18T11:03:40.7444880' AS DateTime2), N'1', N'actualización disponible', 1, N'[{"added": {}}]', 15, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (26, CAST(N'2022-02-18T11:03:52.4734350' AS DateTime2), N'1', N'add user', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (27, CAST(N'2022-02-18T11:03:58.2482840' AS DateTime2), N'2', N'add role', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (28, CAST(N'2022-02-18T11:06:42.7449440' AS DateTime2), N'3', N'change app theme', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (29, CAST(N'2022-02-18T11:08:02.1618970' AS DateTime2), N'1', N'No me funcionan las valoraciones.', 1, N'[{"added": {}}]', 14, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (30, CAST(N'2022-02-18T11:08:49.1954770' AS DateTime2), N'1', N'cumple las expectativas justas', 1, N'[{"added": {}}]', 20, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (31, CAST(N'2022-02-18T11:09:17.3217200' AS DateTime2), N'2', N'Sobresale entre los demás alumnos', 1, N'[{"added": {}}]', 20, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (32, CAST(N'2022-02-18T11:11:30.2401230' AS DateTime2), N'2', N'senior', 1, N'[{"added": {}}]', 10, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (33, CAST(N'2022-02-18T11:11:35.1824040' AS DateTime2), N'6', N'JL', 1, N'[{"added": {}}]', 11, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (34, CAST(N'2022-02-18T11:11:48.6124740' AS DateTime2), N'1', N'JL -> Francesc: planifica las tareas (Sobresale entre los demás alumnos)', 1, N'[{"added": {}}]', 19, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (35, CAST(N'2022-02-18T11:12:18.3561960' AS DateTime2), N'4', N'review', 1, N'[{"added": {}}]', 9, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (36, CAST(N'2022-02-18T11:12:23.4261800' AS DateTime2), N'1', N'senior -> junior: review', 1, N'[{"added": {}}]', 18, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (37, CAST(N'2022-02-18T11:12:50.5060940' AS DateTime2), N'3', N'superadmin', 1, N'[{"added": {}}]', 10, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (38, CAST(N'2022-02-18T11:12:53.8593070' AS DateTime2), N'1', N'superadmin // add role', 1, N'[{"added": {}}]', 17, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (39, CAST(N'2022-02-18T11:13:00.6378870' AS DateTime2), N'2', N'superadmin // add user', 1, N'[{"added": {}}]', 17, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (40, CAST(N'2022-02-18T11:13:27.2272630' AS DateTime2), N'1', N'constancia -> clase', 1, N'[{"added": {}}]', 23, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (41, CAST(N'2022-02-18T11:13:32.3596770' AS DateTime2), N'2', N'legilibilidad -> clase', 1, N'[{"added": {}}]', 23, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (42, CAST(N'2022-02-18T11:13:37.6491100' AS DateTime2), N'3', N'adaptabilidad -> clase', 1, N'[{"added": {}}]', 23, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (43, CAST(N'2022-02-18T11:13:45.2640810' AS DateTime2), N'4', N'seriedad -> clase', 1, N'[{"added": {}}]', 23, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (44, CAST(N'2022-02-18T11:13:53.6449820' AS DateTime2), N'5', N'especialización -> clase', 1, N'[{"added": {}}]', 23, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (45, CAST(N'2022-02-18T11:14:15.7246230' AS DateTime2), N'1', N'Alex // DAM2A:Centre d''estudis politecnics', 1, N'[{"added": {}}]', 22, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (46, CAST(N'2022-02-18T11:14:24.9140230' AS DateTime2), N'2', N'David // DAM2A:Centre d''estudis politecnics', 1, N'[{"added": {}}]', 22, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (47, CAST(N'2022-02-18T11:14:33.1932610' AS DateTime2), N'3', N'Francesc // DAM2A:Centre d''estudis politecnics', 1, N'[{"added": {}}]', 22, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (48, CAST(N'2022-02-18T11:14:40.4400430' AS DateTime2), N'4', N'Oriol // DAM2A:Centre d''estudis politecnics', 1, N'[{"added": {}}]', 22, 1)
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (49, CAST(N'2022-02-18T11:14:48.8185590' AS DateTime2), N'5', N'JL // DAM2A:Centre d''estudis politecnics', 1, N'[{"added": {}}]', 22, 1)
SET IDENTITY_INSERT [dbo].[django_admin_log] OFF
GO
SET IDENTITY_INSERT [dbo].[django_content_type] ON 

INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (1, N'admin', N'logentry')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (3, N'auth', N'group')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (2, N'auth', N'permission')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (4, N'auth', N'user')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (5, N'contenttypes', N'contenttype')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (6, N'sessions', N'session')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (7, N'SkillTrack', N'company')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (8, N'SkillTrack', N'group')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (21, N'SkillTrack', N'group_skilllist')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (16, N'SkillTrack', N'kpi')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (15, N'SkillTrack', N'notification')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (9, N'SkillTrack', N'permission')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (14, N'SkillTrack', N'posttoadmin')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (19, N'SkillTrack', N'review')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (10, N'SkillTrack', N'role')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (18, N'SkillTrack', N'role_interactive_permission')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (17, N'SkillTrack', N'role_permission')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (20, N'SkillTrack', N'score')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (13, N'SkillTrack', N'skill')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (12, N'SkillTrack', N'skilllist')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (23, N'SkillTrack', N'skilllist_skill')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (11, N'SkillTrack', N'user')
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (22, N'SkillTrack', N'user_group')
SET IDENTITY_INSERT [dbo].[django_content_type] OFF
GO
SET IDENTITY_INSERT [dbo].[django_migrations] ON 

INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (1, N'SkillTrack', N'0001_initial', CAST(N'2022-02-18T10:10:54.5536390' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (2, N'SkillTrack', N'0002_auto_20220218_0954', CAST(N'2022-02-18T10:10:56.0254010' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (3, N'SkillTrack', N'0003_auto_20220218_1020', CAST(N'2022-02-18T10:10:56.3344840' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (4, N'SkillTrack', N'0004_auto_20220218_1029', CAST(N'2022-02-18T10:10:56.3525580' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (5, N'SkillTrack', N'0005_auto_20220218_1031', CAST(N'2022-02-18T10:10:56.3715070' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (6, N'SkillTrack', N'0006_auto_20220218_1110', CAST(N'2022-02-18T10:10:56.3794900' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (7, N'contenttypes', N'0001_initial', CAST(N'2022-02-18T10:10:56.3879260' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (8, N'auth', N'0001_initial', CAST(N'2022-02-18T10:10:56.4120870' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (9, N'admin', N'0001_initial', CAST(N'2022-02-18T10:10:56.4389760' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (10, N'admin', N'0002_logentry_remove_auto_add', CAST(N'2022-02-18T10:10:56.4529710' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (11, N'admin', N'0003_logentry_add_action_flag_choices', CAST(N'2022-02-18T10:10:56.4644100' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (12, N'contenttypes', N'0002_remove_content_type_name', CAST(N'2022-02-18T10:10:56.7868490' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (13, N'auth', N'0002_alter_permission_name_max_length', CAST(N'2022-02-18T10:10:56.8228340' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (14, N'auth', N'0003_alter_user_email_max_length', CAST(N'2022-02-18T10:10:56.8387890' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (15, N'auth', N'0004_alter_user_username_opts', CAST(N'2022-02-18T10:10:56.8497620' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (16, N'auth', N'0005_alter_user_last_login_null', CAST(N'2022-02-18T10:10:56.8607340' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (17, N'auth', N'0006_require_contenttypes_0002', CAST(N'2022-02-18T10:10:56.8657160' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (18, N'auth', N'0007_alter_validators_add_error_messages', CAST(N'2022-02-18T10:10:56.8776880' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (19, N'auth', N'0008_alter_user_username_max_length', CAST(N'2022-02-18T10:10:57.2165620' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (20, N'auth', N'0009_alter_user_last_name_max_length', CAST(N'2022-02-18T10:10:57.2303180' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (21, N'auth', N'0010_alter_group_name_max_length', CAST(N'2022-02-18T10:10:57.2612380' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (22, N'auth', N'0011_update_proxy_permissions', CAST(N'2022-02-18T10:10:57.2831760' AS DateTime2))
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (23, N'sessions', N'0001_initial', CAST(N'2022-02-18T10:10:57.2891840' AS DateTime2))
SET IDENTITY_INSERT [dbo].[django_migrations] OFF
GO
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'2mrn6umj1qv0zq9p9buzsw9c3w63ppoh', N'MDZjZDY5YjA1MzY3N2E2MmEzZDIyNmEzYTliNDZiMWQ3M2M1N2Y4NDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIxZTQ5OTI4ZGU1ZWZjODhkY2ZlOWRiN2E3MDU0OTM1ODM2ODdiMjhiIn0=', CAST(N'2022-03-04T10:11:51.1108700' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Group] ON 

INSERT [dbo].[Group] ([id], [name], [isActive], [idCompany_id]) VALUES (1, N'DAM2A', 1, 1)
INSERT [dbo].[Group] ([id], [name], [isActive], [idCompany_id]) VALUES (2, N'ACOM1A', 1, 1)
INSERT [dbo].[Group] ([id], [name], [isActive], [idCompany_id]) VALUES (3, N'DAM2A', 1, 2)
INSERT [dbo].[Group] ([id], [name], [isActive], [idCompany_id]) VALUES (4, N'ACOM1A', 1, 2)
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Group_SkillList] ON 

INSERT [dbo].[Group_SkillList] ([id], [startDate], [finalDate], [groupName_id], [idCompany_id], [idSkillList_id]) VALUES (1, CAST(N'2022-02-18' AS Date), CAST(N'2022-02-18' AS Date), 1, 1, 1)
INSERT [dbo].[Group_SkillList] ([id], [startDate], [finalDate], [groupName_id], [idCompany_id], [idSkillList_id]) VALUES (2, CAST(N'2022-02-18' AS Date), CAST(N'2022-02-18' AS Date), 3, 2, 3)
SET IDENTITY_INSERT [dbo].[Group_SkillList] OFF
GO
SET IDENTITY_INSERT [dbo].[Kpi] ON 

INSERT [dbo].[Kpi] ([id], [name], [isActive], [idSkill_id]) VALUES (1, N'planifica las tareas', 1, 1)
INSERT [dbo].[Kpi] ([id], [name], [isActive], [idSkill_id]) VALUES (2, N'hace los deberes cada día', 1, 1)
SET IDENTITY_INSERT [dbo].[Kpi] OFF
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 

INSERT [dbo].[Notification] ([id], [title], [description], [idCompany_id]) VALUES (1, N'actualización disponible', N'una nueva actualización está disponible. Descárgala en la play store', 1)
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([id], [name], [type]) VALUES (2, N'add role', N'forAdmin')
INSERT [dbo].[Permission] ([id], [name], [type]) VALUES (1, N'add user', N'forAdmin')
INSERT [dbo].[Permission] ([id], [name], [type]) VALUES (3, N'change app theme', N'forAdmin')
INSERT [dbo].[Permission] ([id], [name], [type]) VALUES (4, N'review', N'forAdmin')
SET IDENTITY_INSERT [dbo].[Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[PostToAdmin] ON 

INSERT [dbo].[PostToAdmin] ([id], [title], [description], [alreadyRead], [idCompany_id], [idUser_id]) VALUES (1, N'No me funcionan las valoraciones.', N'He accedido a la aplicación y me salta un error cuando accedo a la lista de skills.', 0, 1, 2)
SET IDENTITY_INSERT [dbo].[PostToAdmin] OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON 

INSERT [dbo].[Review] ([id], [date], [idKpi_id], [idReviewerUser_id], [idValuedUser_id], [idScore_id]) VALUES (1, CAST(N'2022-02-18' AS Date), 1, 6, 4, 2)
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([id], [name], [isAdmin], [idCompany_id]) VALUES (1, N'junior', 0, 1)
INSERT [dbo].[Role] ([id], [name], [isAdmin], [idCompany_id]) VALUES (2, N'senior', 0, 1)
INSERT [dbo].[Role] ([id], [name], [isAdmin], [idCompany_id]) VALUES (3, N'superadmin', 1, 1)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Role_Interactive_Permission] ON 

INSERT [dbo].[Role_Interactive_Permission] ([id], [isActive], [idPermission_id], [idRolPerformAction_id], [idRolReceiveAction_id]) VALUES (1, 1, 4, 2, 1)
SET IDENTITY_INSERT [dbo].[Role_Interactive_Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[Role_Permission] ON 

INSERT [dbo].[Role_Permission] ([id], [isActive], [idPermission_id], [idRol_id]) VALUES (1, 1, 2, 3)
INSERT [dbo].[Role_Permission] ([id], [isActive], [idPermission_id], [idRol_id]) VALUES (2, 1, 1, 3)
SET IDENTITY_INSERT [dbo].[Role_Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[Skill] ON 

INSERT [dbo].[Skill] ([id], [name], [isActive], [shortName], [description], [idCompany_id]) VALUES (1, N'constancia', 1, N'C', N'La constancia es la clave para obtener resultados satisfactorios.', 1)
INSERT [dbo].[Skill] ([id], [name], [isActive], [shortName], [description], [idCompany_id]) VALUES (2, N'legilibilidad', 1, N'L', N'El código tiene que ser legible para futuros programadores que intervengan.', 1)
INSERT [dbo].[Skill] ([id], [name], [isActive], [shortName], [description], [idCompany_id]) VALUES (3, N'adaptabilidad', 1, N'A', N'Adaptación a diferentes entornos de trabajo y lenguajes.', 1)
INSERT [dbo].[Skill] ([id], [name], [isActive], [shortName], [description], [idCompany_id]) VALUES (4, N'seriedad', 1, N'S', N'Ser una persona seria en un entorno de trabajo.', 1)
INSERT [dbo].[Skill] ([id], [name], [isActive], [shortName], [description], [idCompany_id]) VALUES (5, N'especialización', 1, N'e', N'Dominar y tener una gran formación en tecnologías concretas.', 1)
SET IDENTITY_INSERT [dbo].[Skill] OFF
GO
SET IDENTITY_INSERT [dbo].[SkillList] ON 

INSERT [dbo].[SkillList] ([id], [name], [isActive], [idCompany_id]) VALUES (1, N'clase', 1, 1)
INSERT [dbo].[SkillList] ([id], [name], [isActive], [idCompany_id]) VALUES (2, N'Acceso a datos', 1, 1)
INSERT [dbo].[SkillList] ([id], [name], [isActive], [idCompany_id]) VALUES (3, N'stc', 1, 2)
SET IDENTITY_INSERT [dbo].[SkillList] OFF
GO
SET IDENTITY_INSERT [dbo].[SkillList_Skill] ON 

INSERT [dbo].[SkillList_Skill] ([id], [idCompany_id], [idSkill_id], [idSkillList_id]) VALUES (1, 1, 1, 1)
INSERT [dbo].[SkillList_Skill] ([id], [idCompany_id], [idSkill_id], [idSkillList_id]) VALUES (2, 1, 2, 1)
INSERT [dbo].[SkillList_Skill] ([id], [idCompany_id], [idSkill_id], [idSkillList_id]) VALUES (3, 1, 3, 1)
INSERT [dbo].[SkillList_Skill] ([id], [idCompany_id], [idSkill_id], [idSkillList_id]) VALUES (4, 1, 4, 1)
INSERT [dbo].[SkillList_Skill] ([id], [idCompany_id], [idSkill_id], [idSkillList_id]) VALUES (5, 1, 5, 1)
SET IDENTITY_INSERT [dbo].[SkillList_Skill] OFF
GO
SET IDENTITY_INSERT [dbo].[Score] ON 

INSERT [dbo].[Score] ([id], [mark], [description]) VALUES (1, 1, N'cumple las expectativas justas')
INSERT [dbo].[Score] ([id], [mark], [description]) VALUES (2, 4, N'Sobresale entre los demás alumnos')
SET IDENTITY_INSERT [dbo].[Score] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([id], [name], [surname], [email], [password], [image], [idCompany_id], [idRol_id]) VALUES (1, N'Marc', N'Desconocido', N'marcdesconocido@gmail.com', N'pass', N'marc.png', 2, 1)
INSERT [dbo].[User] ([id], [name], [surname], [email], [password], [image], [idCompany_id], [idRol_id]) VALUES (2, N'Alex', N'Guirao', N'alexmail@gmail.com', N'pass', N'alex.png', 1, 1)
INSERT [dbo].[User] ([id], [name], [surname], [email], [password], [image], [idCompany_id], [idRol_id]) VALUES (3, N'David', N'Selles', N'davidselles2021@cepnet.net', N'pass', N'david.png', 1, 1)
INSERT [dbo].[User] ([id], [name], [surname], [email], [password], [image], [idCompany_id], [idRol_id]) VALUES (4, N'Francesc', N'Bagué', N'francesc@gmail.com', N'pass', N'francesc.png', 1, 1)
INSERT [dbo].[User] ([id], [name], [surname], [email], [password], [image], [idCompany_id], [idRol_id]) VALUES (5, N'Oriol', N'Holguin', N'oriolholguin2021@cepnet.net', N'pass', N'oriol.png', 1, 1)
INSERT [dbo].[User] ([id], [name], [surname], [email], [password], [image], [idCompany_id], [idRol_id]) VALUES (6, N'JL', N'mañas', N'jl@gmail.com', N'pass', N'jl.png', 1, 2)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Group] ON 

INSERT [dbo].[User_Group] ([id], [startDate], [finalDate], [groupName_id], [idCompany_id], [idUser_id]) VALUES (1, CAST(N'2022-02-18' AS Date), CAST(N'2022-02-18' AS Date), 1, 1, 2)
INSERT [dbo].[User_Group] ([id], [startDate], [finalDate], [groupName_id], [idCompany_id], [idUser_id]) VALUES (2, CAST(N'2022-02-18' AS Date), CAST(N'2022-02-18' AS Date), 1, 1, 3)
INSERT [dbo].[User_Group] ([id], [startDate], [finalDate], [groupName_id], [idCompany_id], [idUser_id]) VALUES (3, CAST(N'2022-02-18' AS Date), CAST(N'2022-02-18' AS Date), 1, 1, 4)
INSERT [dbo].[User_Group] ([id], [startDate], [finalDate], [groupName_id], [idCompany_id], [idUser_id]) VALUES (4, CAST(N'2022-02-18' AS Date), CAST(N'2022-02-18' AS Date), 1, 1, 5)
INSERT [dbo].[User_Group] ([id], [startDate], [finalDate], [groupName_id], [idCompany_id], [idUser_id]) VALUES (5, CAST(N'2022-02-18' AS Date), CAST(N'2022-02-18' AS Date), 1, 1, 6)
SET IDENTITY_INSERT [dbo].[User_Group] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_group_name_a6ea08ec_uniq]    Script Date: 18/02/2022 12:40:21 ******/
ALTER TABLE [dbo].[auth_group] ADD  CONSTRAINT [auth_group_name_a6ea08ec_uniq] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_b120cbf9]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_group_id_b120cbf9] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_permission_id_0cd325b0_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_group_permissions_group_id_permission_id_0cd325b0_uniq] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC,
	[permission_id] ASC
)
WHERE ([group_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_permission_id_84c5c92e]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_permission_id_84c5c92e] ON [dbo].[auth_group_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_permission_content_type_id_2f476e4b]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [auth_permission_content_type_id_2f476e4b] ON [dbo].[auth_permission]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_permission_content_type_id_codename_01ab375a_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_permission_content_type_id_codename_01ab375a_uniq] ON [dbo].[auth_permission]
(
	[content_type_id] ASC,
	[codename] ASC
)
WHERE ([content_type_id] IS NOT NULL AND [codename] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_user_username_6821ab7c_uniq]    Script Date: 18/02/2022 12:40:21 ******/
ALTER TABLE [dbo].[auth_user] ADD  CONSTRAINT [auth_user_username_6821ab7c_uniq] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_group_id_97559544]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [auth_user_groups_group_id_97559544] ON [dbo].[auth_user_groups]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_user_id_6a12ed8b]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [auth_user_groups_user_id_6a12ed8b] ON [dbo].[auth_user_groups]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_user_id_group_id_94350c0c_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_user_groups_user_id_group_id_94350c0c_uniq] ON [dbo].[auth_user_groups]
(
	[user_id] ASC,
	[group_id] ASC
)
WHERE ([user_id] IS NOT NULL AND [group_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_permission_id_1fbb5f2c]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [auth_user_user_permissions_permission_id_1fbb5f2c] ON [dbo].[auth_user_user_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_user_id_a95ead1b]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [auth_user_user_permissions_user_id_a95ead1b] ON [dbo].[auth_user_user_permissions]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_user_id_permission_id_14a6b632_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_user_user_permissions_user_id_permission_id_14a6b632_uniq] ON [dbo].[auth_user_user_permissions]
(
	[user_id] ASC,
	[permission_id] ASC
)
WHERE ([user_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Company__D837D05C96CAFB52]    Script Date: 18/02/2022 12:40:21 ******/
ALTER TABLE [dbo].[Company] ADD UNIQUE NONCLUSTERED 
(
	[cif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_content_type_id_c4bce8eb]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [django_admin_log_content_type_id_c4bce8eb] ON [dbo].[django_admin_log]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_user_id_c564eba6]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [django_admin_log_user_id_c564eba6] ON [dbo].[django_admin_log]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [django_content_type_app_label_model_76bd3d3b_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [django_content_type_app_label_model_76bd3d3b_uniq] ON [dbo].[django_content_type]
(
	[app_label] ASC,
	[model] ASC
)
WHERE ([app_label] IS NOT NULL AND [model] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_session_expire_date_a5c62663]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [django_session_expire_date_a5c62663] ON [dbo].[django_session]
(
	[expire_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Group_idCompany_id_d2776b6b]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Group_idCompany_id_d2776b6b] ON [dbo].[Group]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Group_name_idCompany_id_83a46d54_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Group_name_idCompany_id_83a46d54_uniq] ON [dbo].[Group]
(
	[name] ASC,
	[idCompany_id] ASC
)
WHERE ([name] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [GroupSkillList_groupName_id_44d637ac]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [GroupSkillList_groupName_id_44d637ac] ON [dbo].[Group_SkillList]
(
	[groupName_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [GroupSkillList_groupName_id_idSkillList_id_idCompany_id_12604cb7_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [GroupSkillList_groupName_id_idSkillList_id_idCompany_id_12604cb7_uniq] ON [dbo].[Group_SkillList]
(
	[groupName_id] ASC,
	[idSkillList_id] ASC,
	[idCompany_id] ASC
)
WHERE ([groupName_id] IS NOT NULL AND [idSkillList_id] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [GroupSkillList_idCompany_id_7b51f85c]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [GroupSkillList_idCompany_id_7b51f85c] ON [dbo].[Group_SkillList]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [GroupSkillList_idSkillList_id_b7c0c00f]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [GroupSkillList_idSkillList_id_b7c0c00f] ON [dbo].[Group_SkillList]
(
	[idSkillList_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Kpi_idSkill_id_eeb81175]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Kpi_idSkill_id_eeb81175] ON [dbo].[Kpi]
(
	[idSkill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Kpi_name_idSkill_id_d22bbf48_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Kpi_name_idSkill_id_d22bbf48_uniq] ON [dbo].[Kpi]
(
	[name] ASC,
	[idSkill_id] ASC
)
WHERE ([name] IS NOT NULL AND [idSkill_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Notification_idCompany_id_1c615263]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Notification_idCompany_id_1c615263] ON [dbo].[Notification]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Permission_name_type_6a27e373_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Permission_name_type_6a27e373_uniq] ON [dbo].[Permission]
(
	[name] ASC,
	[type] ASC
)
WHERE ([name] IS NOT NULL AND [type] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PostToAdmin_idCompany_id_3c201f74]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [PostToAdmin_idCompany_id_3c201f74] ON [dbo].[PostToAdmin]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PostToAdmin_idUser_id_a02f9860]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [PostToAdmin_idUser_id_a02f9860] ON [dbo].[PostToAdmin]
(
	[idUser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Review_idKpi_id_342fe69b]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Review_idKpi_id_342fe69b] ON [dbo].[Review]
(
	[idKpi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Review_idKpi_id_idUserValued_id_idUserReviewed_id_date_ef75d0d8_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Review_idKpi_id_idUserValued_id_idUserReviewed_id_date_ef75d0d8_uniq] ON [dbo].[Review]
(
	[idKpi_id] ASC,
	[idValuedUser_id] ASC,
	[idReviewerUser_id] ASC,
	[date] ASC
)
WHERE ([idKpi_id] IS NOT NULL AND [idValuedUser_id] IS NOT NULL AND [idReviewerUser_id] IS NOT NULL AND [date] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Review_idScore_id_c0e03877]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Review_idScore_id_c0e03877] ON [dbo].[Review]
(
	[idScore_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Review_idUserReviewed_id_af2fcffe]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Review_idUserReviewed_id_af2fcffe] ON [dbo].[Review]
(
	[idReviewerUser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Review_idUserValued_id_637e179c]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Review_idUserValued_id_637e179c] ON [dbo].[Review]
(
	[idValuedUser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_idCompany_id_1b56580b]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Role_idCompany_id_1b56580b] ON [dbo].[Role]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Role_name_idCompany_id_22a3a0e7_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Role_name_idCompany_id_22a3a0e7_uniq] ON [dbo].[Role]
(
	[name] ASC,
	[idCompany_id] ASC
)
WHERE ([name] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Interactive_Permission_idPermission_id_1e6fff91]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Role_Interactive_Permission_idPermission_id_1e6fff91] ON [dbo].[Role_Interactive_Permission]
(
	[idPermission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Interactive_Permission_idRolPerformAction_id_159c2568]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Role_Interactive_Permission_idRolPerformAction_id_159c2568] ON [dbo].[Role_Interactive_Permission]
(
	[idRolPerformAction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Interactive_Permission_idRolPerformAction_id_idRolReceiveAction_id_idPermission_id_b8e4f228_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Role_Interactive_Permission_idRolPerformAction_id_idRolReceiveAction_id_idPermission_id_b8e4f228_uniq] ON [dbo].[Role_Interactive_Permission]
(
	[idRolPerformAction_id] ASC,
	[idRolReceiveAction_id] ASC,
	[idPermission_id] ASC
)
WHERE ([idRolPerformAction_id] IS NOT NULL AND [idRolReceiveAction_id] IS NOT NULL AND [idPermission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Interactive_Permission_idRolReceiveAction_id_1a3a2218]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Role_Interactive_Permission_idRolReceiveAction_id_1a3a2218] ON [dbo].[Role_Interactive_Permission]
(
	[idRolReceiveAction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Permission_idPermission_id_6aa2a113]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Role_Permission_idPermission_id_6aa2a113] ON [dbo].[Role_Permission]
(
	[idPermission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Permission_idRol_id_8042cf87]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Role_Permission_idRol_id_8042cf87] ON [dbo].[Role_Permission]
(
	[idRol_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Permission_idRol_id_idPermission_id_378fadcf_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Role_Permission_idRol_id_idPermission_id_378fadcf_uniq] ON [dbo].[Role_Permission]
(
	[idRol_id] ASC,
	[idPermission_id] ASC
)
WHERE ([idRol_id] IS NOT NULL AND [idPermission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Skill_idCompany_id_decc5090]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [Skill_idCompany_id_decc5090] ON [dbo].[Skill]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Skill_name_idCompany_id_d052fd06_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Skill_name_idCompany_id_d052fd06_uniq] ON [dbo].[Skill]
(
	[name] ASC,
	[idCompany_id] ASC
)
WHERE ([name] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [SkillList_idCompany_id_3c830f20]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [SkillList_idCompany_id_3c830f20] ON [dbo].[SkillList]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SkillList_name_idCompany_id_add7eaf6_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [SkillList_name_idCompany_id_add7eaf6_uniq] ON [dbo].[SkillList]
(
	[name] ASC,
	[idCompany_id] ASC
)
WHERE ([name] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [SkillList_Skill_idCompany_id_26f769c2]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [SkillList_Skill_idCompany_id_26f769c2] ON [dbo].[SkillList_Skill]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [SkillList_Skill_idSkill_id_4c409e5e]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [SkillList_Skill_idSkill_id_4c409e5e] ON [dbo].[SkillList_Skill]
(
	[idSkill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [SkillList_Skill_idSkill_id_idSkillList_id_idCompany_id_3a41de80_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [SkillList_Skill_idSkill_id_idSkillList_id_idCompany_id_3a41de80_uniq] ON [dbo].[SkillList_Skill]
(
	[idSkill_id] ASC,
	[idSkillList_id] ASC,
	[idCompany_id] ASC
)
WHERE ([idSkill_id] IS NOT NULL AND [idSkillList_id] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [SkillList_Skill_idSkillList_id_91a6ad7d]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [SkillList_Skill_idSkillList_id_91a6ad7d] ON [dbo].[SkillList_Skill]
(
	[idSkillList_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__AB6E6164D4062E96]    Script Date: 18/02/2022 12:40:21 ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [User_idCompany_id_766d48fc]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [User_idCompany_id_766d48fc] ON [dbo].[User]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [User_idRol_id_4b06b77b]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [User_idRol_id_4b06b77b] ON [dbo].[User]
(
	[idRol_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UserGroup_groupName_id_8e8d521c]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [UserGroup_groupName_id_8e8d521c] ON [dbo].[User_Group]
(
	[groupName_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UserGroup_idCompany_id_6a1507ac]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [UserGroup_idCompany_id_6a1507ac] ON [dbo].[User_Group]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UserGroup_idUser_id_1b4147e6]    Script Date: 18/02/2022 12:40:21 ******/
CREATE NONCLUSTERED INDEX [UserGroup_idUser_id_1b4147e6] ON [dbo].[User_Group]
(
	[idUser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [UserGroup_idUser_id_groupName_id_idCompany_id_7f33ddc8_uniq]    Script Date: 18/02/2022 12:40:21 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserGroup_idUser_id_groupName_id_idCompany_id_7f33ddc8_uniq] ON [dbo].[User_Group]
(
	[idUser_id] ASC,
	[groupName_id] ASC,
	[idCompany_id] ASC
)
WHERE ([idUser_id] IS NOT NULL AND [groupName_id] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_group_id_b120cbf9_fk_auth_group_id]
GO
ALTER TABLE [dbo].[auth_group_permissions]  WITH CHECK ADD  CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[auth_group_permissions] CHECK CONSTRAINT [auth_group_permissions_permission_id_84c5c92e_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[auth_permission]  WITH CHECK ADD  CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[auth_permission] CHECK CONSTRAINT [auth_permission_content_type_id_2f476e4b_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[auth_user_groups]  WITH CHECK ADD  CONSTRAINT [auth_user_groups_group_id_97559544_fk_auth_group_id] FOREIGN KEY([group_id])
REFERENCES [dbo].[auth_group] ([id])
GO
ALTER TABLE [dbo].[auth_user_groups] CHECK CONSTRAINT [auth_user_groups_group_id_97559544_fk_auth_group_id]
GO
ALTER TABLE [dbo].[auth_user_groups]  WITH CHECK ADD  CONSTRAINT [auth_user_groups_user_id_6a12ed8b_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[auth_user_groups] CHECK CONSTRAINT [auth_user_groups_user_id_6a12ed8b_fk_auth_user_id]
GO
ALTER TABLE [dbo].[auth_user_user_permissions]  WITH CHECK ADD  CONSTRAINT [auth_user_user_permissions_permission_id_1fbb5f2c_fk_auth_permission_id] FOREIGN KEY([permission_id])
REFERENCES [dbo].[auth_permission] ([id])
GO
ALTER TABLE [dbo].[auth_user_user_permissions] CHECK CONSTRAINT [auth_user_user_permissions_permission_id_1fbb5f2c_fk_auth_permission_id]
GO
ALTER TABLE [dbo].[auth_user_user_permissions]  WITH CHECK ADD  CONSTRAINT [auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[auth_user_user_permissions] CHECK CONSTRAINT [auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id] FOREIGN KEY([content_type_id])
REFERENCES [dbo].[django_content_type] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_content_type_id_c4bce8eb_fk_django_content_type_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_user_id_c564eba6_fk_auth_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[auth_user] ([id])
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_user_id_c564eba6_fk_auth_user_id]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [Group_idCompany_id_d2776b6b_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [Group_idCompany_id_d2776b6b_fk_Company_id]
GO
ALTER TABLE [dbo].[Group_SkillList]  WITH CHECK ADD  CONSTRAINT [GroupSkillList_groupName_id_44d637ac_fk_Group_id] FOREIGN KEY([groupName_id])
REFERENCES [dbo].[Group] ([id])
GO
ALTER TABLE [dbo].[Group_SkillList] CHECK CONSTRAINT [GroupSkillList_groupName_id_44d637ac_fk_Group_id]
GO
ALTER TABLE [dbo].[Group_SkillList]  WITH CHECK ADD  CONSTRAINT [GroupSkillList_idCompany_id_7b51f85c_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[Group_SkillList] CHECK CONSTRAINT [GroupSkillList_idCompany_id_7b51f85c_fk_Company_id]
GO
ALTER TABLE [dbo].[Group_SkillList]  WITH CHECK ADD  CONSTRAINT [GroupSkillList_idSkillList_id_b7c0c00f_fk_SkillList_id] FOREIGN KEY([idSkillList_id])
REFERENCES [dbo].[SkillList] ([id])
GO
ALTER TABLE [dbo].[Group_SkillList] CHECK CONSTRAINT [GroupSkillList_idSkillList_id_b7c0c00f_fk_SkillList_id]
GO
ALTER TABLE [dbo].[Kpi]  WITH CHECK ADD  CONSTRAINT [Kpi_idSkill_id_eeb81175_fk_Skill_id] FOREIGN KEY([idSkill_id])
REFERENCES [dbo].[Skill] ([id])
GO
ALTER TABLE [dbo].[Kpi] CHECK CONSTRAINT [Kpi_idSkill_id_eeb81175_fk_Skill_id]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [Notification_idCompany_id_1c615263_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [Notification_idCompany_id_1c615263_fk_Company_id]
GO
ALTER TABLE [dbo].[PostToAdmin]  WITH CHECK ADD  CONSTRAINT [PostToAdmin_idCompany_id_3c201f74_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[PostToAdmin] CHECK CONSTRAINT [PostToAdmin_idCompany_id_3c201f74_fk_Company_id]
GO
ALTER TABLE [dbo].[PostToAdmin]  WITH CHECK ADD  CONSTRAINT [PostToAdmin_idUser_id_a02f9860_fk_User_id] FOREIGN KEY([idUser_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[PostToAdmin] CHECK CONSTRAINT [PostToAdmin_idUser_id_a02f9860_fk_User_id]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [Review_idKpi_id_342fe69b_fk_Kpi_id] FOREIGN KEY([idKpi_id])
REFERENCES [dbo].[Kpi] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [Review_idKpi_id_342fe69b_fk_Kpi_id]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [Review_idReviewerUser_id_6b9c80b9_fk_User_id] FOREIGN KEY([idReviewerUser_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [Review_idReviewerUser_id_6b9c80b9_fk_User_id]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [Review_idScore_id_c0e03877_fk_Score_id] FOREIGN KEY([idScore_id])
REFERENCES [dbo].[Score] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [Review_idScore_id_c0e03877_fk_Score_id]
GO
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [Review_idValuedUser_id_f9ee0418_fk_User_id] FOREIGN KEY([idValuedUser_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [Review_idValuedUser_id_f9ee0418_fk_User_id]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [Role_idCompany_id_1b56580b_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [Role_idCompany_id_1b56580b_fk_Company_id]
GO
ALTER TABLE [dbo].[Role_Interactive_Permission]  WITH CHECK ADD  CONSTRAINT [Role_Interactive_Permission_idPermission_id_1e6fff91_fk_Permission_id] FOREIGN KEY([idPermission_id])
REFERENCES [dbo].[Permission] ([id])
GO
ALTER TABLE [dbo].[Role_Interactive_Permission] CHECK CONSTRAINT [Role_Interactive_Permission_idPermission_id_1e6fff91_fk_Permission_id]
GO
ALTER TABLE [dbo].[Role_Interactive_Permission]  WITH CHECK ADD  CONSTRAINT [Role_Interactive_Permission_idRolPerformAction_id_159c2568_fk_Role_id] FOREIGN KEY([idRolPerformAction_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Role_Interactive_Permission] CHECK CONSTRAINT [Role_Interactive_Permission_idRolPerformAction_id_159c2568_fk_Role_id]
GO
ALTER TABLE [dbo].[Role_Interactive_Permission]  WITH CHECK ADD  CONSTRAINT [Role_Interactive_Permission_idRolReceiveAction_id_1a3a2218_fk_Role_id] FOREIGN KEY([idRolReceiveAction_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Role_Interactive_Permission] CHECK CONSTRAINT [Role_Interactive_Permission_idRolReceiveAction_id_1a3a2218_fk_Role_id]
GO
ALTER TABLE [dbo].[Role_Permission]  WITH CHECK ADD  CONSTRAINT [Role_Permission_idPermission_id_6aa2a113_fk_Permission_id] FOREIGN KEY([idPermission_id])
REFERENCES [dbo].[Permission] ([id])
GO
ALTER TABLE [dbo].[Role_Permission] CHECK CONSTRAINT [Role_Permission_idPermission_id_6aa2a113_fk_Permission_id]
GO
ALTER TABLE [dbo].[Role_Permission]  WITH CHECK ADD  CONSTRAINT [Role_Permission_idRol_id_8042cf87_fk_Role_id] FOREIGN KEY([idRol_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[Role_Permission] CHECK CONSTRAINT [Role_Permission_idRol_id_8042cf87_fk_Role_id]
GO
ALTER TABLE [dbo].[Skill]  WITH CHECK ADD  CONSTRAINT [Skill_idCompany_id_decc5090_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[Skill] CHECK CONSTRAINT [Skill_idCompany_id_decc5090_fk_Company_id]
GO
ALTER TABLE [dbo].[SkillList]  WITH CHECK ADD  CONSTRAINT [SkillList_idCompany_id_3c830f20_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[SkillList] CHECK CONSTRAINT [SkillList_idCompany_id_3c830f20_fk_Company_id]
GO
ALTER TABLE [dbo].[SkillList_Skill]  WITH CHECK ADD  CONSTRAINT [SkillList_Skill_idCompany_id_26f769c2_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[SkillList_Skill] CHECK CONSTRAINT [SkillList_Skill_idCompany_id_26f769c2_fk_Company_id]
GO
ALTER TABLE [dbo].[SkillList_Skill]  WITH CHECK ADD  CONSTRAINT [SkillList_Skill_idSkill_id_4c409e5e_fk_Skill_id] FOREIGN KEY([idSkill_id])
REFERENCES [dbo].[Skill] ([id])
GO
ALTER TABLE [dbo].[SkillList_Skill] CHECK CONSTRAINT [SkillList_Skill_idSkill_id_4c409e5e_fk_Skill_id]
GO
ALTER TABLE [dbo].[SkillList_Skill]  WITH CHECK ADD  CONSTRAINT [SkillList_Skill_idSkillList_id_91a6ad7d_fk_SkillList_id] FOREIGN KEY([idSkillList_id])
REFERENCES [dbo].[SkillList] ([id])
GO
ALTER TABLE [dbo].[SkillList_Skill] CHECK CONSTRAINT [SkillList_Skill_idSkillList_id_91a6ad7d_fk_SkillList_id]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [User_idCompany_id_766d48fc_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [User_idCompany_id_766d48fc_fk_Company_id]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [User_idRol_id_4b06b77b_fk_Role_id] FOREIGN KEY([idRol_id])
REFERENCES [dbo].[Role] ([id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [User_idRol_id_4b06b77b_fk_Role_id]
GO
ALTER TABLE [dbo].[User_Group]  WITH CHECK ADD  CONSTRAINT [UserGroup_groupName_id_8e8d521c_fk_Group_id] FOREIGN KEY([groupName_id])
REFERENCES [dbo].[Group] ([id])
GO
ALTER TABLE [dbo].[User_Group] CHECK CONSTRAINT [UserGroup_groupName_id_8e8d521c_fk_Group_id]
GO
ALTER TABLE [dbo].[User_Group]  WITH CHECK ADD  CONSTRAINT [UserGroup_idCompany_id_6a1507ac_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[User_Group] CHECK CONSTRAINT [UserGroup_idCompany_id_6a1507ac_fk_Company_id]
GO
ALTER TABLE [dbo].[User_Group]  WITH CHECK ADD  CONSTRAINT [UserGroup_idUser_id_1b4147e6_fk_User_id] FOREIGN KEY([idUser_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[User_Group] CHECK CONSTRAINT [UserGroup_idUser_id_1b4147e6_fk_User_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_action_flag_a8637d59_check] CHECK  (([action_flag]>=(0)))
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_action_flag_a8637d59_check]
GO
ALTER DATABASE [skill_track] SET  READ_WRITE 
GO
