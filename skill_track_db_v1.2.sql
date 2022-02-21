create database skill_track
GO
USE [skill_track]
GO
/****** Object:  Database [skill_track]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[auth_group]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[auth_group_permissions]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[auth_permission]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[auth_user]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[auth_user_groups]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[auth_user_user_permissions]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[Company]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[django_admin_log]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[django_content_type]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[django_migrations]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[django_session]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[Group]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[Group_SkillList]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[Kpi]    Script Date: 21/02/2022 13:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kpi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
	[idCompany_id] [int] NOT NULL,
	[idSkill_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[Permission]    Script Date: 21/02/2022 13:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[description] [nvarchar](200) NOT NULL,
	[type] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostToAdmin]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[Review]    Script Date: 21/02/2022 13:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Review](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[idCompany_id] [int] NOT NULL,
	[idKpi_id] [int] NOT NULL,
	[idReviewerUser_id] [int] NOT NULL,
	[idScore_id] [int] NOT NULL,
	[idValuedUser_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[Role_Interactive_Permission]    Script Date: 21/02/2022 13:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Interactive_Permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isActive] [bit] NOT NULL,
	[idCompany_id] [int] NOT NULL,
	[idPermission_id] [int] NOT NULL,
	[idRolPerformAction_id] [int] NOT NULL,
	[idRolReceiveAction_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Permission]    Script Date: 21/02/2022 13:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Permission](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[isActive] [bit] NOT NULL,
	[idCompany_id] [int] NOT NULL,
	[idPermission_id] [int] NOT NULL,
	[idRol_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Score]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[Skill]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[SkillList]    Script Date: 21/02/2022 13:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[isActive] [bit] NOT NULL,
	[description] [nvarchar](200) NOT NULL,
	[idCompany_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillList_Skill]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Table [dbo].[User]    Script Date: 21/02/2022 13:05:30 ******/
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
	[birthDate] [date] NOT NULL,
	[idCompany_id] [int] NOT NULL,
	[idRol_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Group]    Script Date: 21/02/2022 13:05:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Group](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[startDate] [date] NOT NULL,
	[finalDate] [date] NULL,
	[idCompany_id] [int] NOT NULL,
	[idGroup_id] [int] NOT NULL,
	[idUser_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[auth_permission] ON 
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (1, N'Can add log entry', 1, N'add_logentry')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (2, N'Can change log entry', 1, N'change_logentry')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (3, N'Can delete log entry', 1, N'delete_logentry')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (4, N'Can view log entry', 1, N'view_logentry')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (5, N'Can add permission', 2, N'add_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (6, N'Can change permission', 2, N'change_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (7, N'Can delete permission', 2, N'delete_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (8, N'Can view permission', 2, N'view_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (9, N'Can add group', 3, N'add_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (10, N'Can change group', 3, N'change_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (11, N'Can delete group', 3, N'delete_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (12, N'Can view group', 3, N'view_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (13, N'Can add user', 4, N'add_user')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (14, N'Can change user', 4, N'change_user')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (15, N'Can delete user', 4, N'delete_user')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (16, N'Can view user', 4, N'view_user')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (17, N'Can add content type', 5, N'add_contenttype')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (18, N'Can change content type', 5, N'change_contenttype')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (19, N'Can delete content type', 5, N'delete_contenttype')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (20, N'Can view content type', 5, N'view_contenttype')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (21, N'Can add session', 6, N'add_session')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (22, N'Can change session', 6, N'change_session')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (23, N'Can delete session', 6, N'delete_session')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (24, N'Can view session', 6, N'view_session')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (25, N'Can add company', 7, N'add_company')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (26, N'Can change company', 7, N'change_company')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (27, N'Can delete company', 7, N'delete_company')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (28, N'Can view company', 7, N'view_company')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (29, N'Can add group', 8, N'add_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (30, N'Can change group', 8, N'change_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (31, N'Can delete group', 8, N'delete_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (32, N'Can view group', 8, N'view_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (33, N'Can add permission', 9, N'add_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (34, N'Can change permission', 9, N'change_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (35, N'Can delete permission', 9, N'delete_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (36, N'Can view permission', 9, N'view_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (37, N'Can add role', 10, N'add_role')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (38, N'Can change role', 10, N'change_role')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (39, N'Can delete role', 10, N'delete_role')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (40, N'Can view role', 10, N'view_role')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (41, N'Can add score', 11, N'add_score')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (42, N'Can change score', 11, N'change_score')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (43, N'Can delete score', 11, N'delete_score')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (44, N'Can view score', 11, N'view_score')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (45, N'Can add skill', 12, N'add_skill')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (46, N'Can change skill', 12, N'change_skill')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (47, N'Can delete skill', 12, N'delete_skill')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (48, N'Can view skill', 12, N'view_skill')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (49, N'Can add skill list', 13, N'add_skilllist')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (50, N'Can change skill list', 13, N'change_skilllist')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (51, N'Can delete skill list', 13, N'delete_skilllist')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (52, N'Can view skill list', 13, N'view_skilllist')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (53, N'Can add user', 14, N'add_user')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (54, N'Can change user', 14, N'change_user')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (55, N'Can delete user', 14, N'delete_user')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (56, N'Can view user', 14, N'view_user')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (57, N'Can add post to admin', 15, N'add_posttoadmin')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (58, N'Can change post to admin', 15, N'change_posttoadmin')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (59, N'Can delete post to admin', 15, N'delete_posttoadmin')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (60, N'Can view post to admin', 15, N'view_posttoadmin')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (61, N'Can add notification', 16, N'add_notification')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (62, N'Can change notification', 16, N'change_notification')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (63, N'Can delete notification', 16, N'delete_notification')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (64, N'Can view notification', 16, N'view_notification')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (65, N'Can add kpi', 17, N'add_kpi')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (66, N'Can change kpi', 17, N'change_kpi')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (67, N'Can delete kpi', 17, N'delete_kpi')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (68, N'Can view kpi', 17, N'view_kpi')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (69, N'Can add user_ group', 18, N'add_user_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (70, N'Can change user_ group', 18, N'change_user_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (71, N'Can delete user_ group', 18, N'delete_user_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (72, N'Can view user_ group', 18, N'view_user_group')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (73, N'Can add skill list_ skill', 19, N'add_skilllist_skill')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (74, N'Can change skill list_ skill', 19, N'change_skilllist_skill')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (75, N'Can delete skill list_ skill', 19, N'delete_skilllist_skill')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (76, N'Can view skill list_ skill', 19, N'view_skilllist_skill')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (77, N'Can add role_ permission', 20, N'add_role_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (78, N'Can change role_ permission', 20, N'change_role_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (79, N'Can delete role_ permission', 20, N'delete_role_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (80, N'Can view role_ permission', 20, N'view_role_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (81, N'Can add role_ interactive_ permission', 21, N'add_role_interactive_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (82, N'Can change role_ interactive_ permission', 21, N'change_role_interactive_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (83, N'Can delete role_ interactive_ permission', 21, N'delete_role_interactive_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (84, N'Can view role_ interactive_ permission', 21, N'view_role_interactive_permission')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (85, N'Can add review', 22, N'add_review')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (86, N'Can change review', 22, N'change_review')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (87, N'Can delete review', 22, N'delete_review')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (88, N'Can view review', 22, N'view_review')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (89, N'Can add group_ skill list', 23, N'add_group_skilllist')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (90, N'Can change group_ skill list', 23, N'change_group_skilllist')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (91, N'Can delete group_ skill list', 23, N'delete_group_skilllist')
GO
INSERT [dbo].[auth_permission] ([id], [name], [content_type_id], [codename]) VALUES (92, N'Can view group_ skill list', 23, N'view_group_skilllist')
GO
SET IDENTITY_INSERT [dbo].[auth_permission] OFF
GO
SET IDENTITY_INSERT [dbo].[auth_user] ON 
GO
INSERT [dbo].[auth_user] ([id], [password], [last_login], [is_superuser], [username], [first_name], [last_name], [email], [is_staff], [is_active], [date_joined]) VALUES (1, N'pbkdf2_sha256$150000$yHIa52dBAE1S$6kGeEJ7VLalmZl90KiMcr8Slr0pqL0XPhKgNvfXWvfU=', CAST(N'2022-02-21T11:45:32.3837020' AS DateTime2), 1, N'aresu', N'', N'', N'', 1, 1, CAST(N'2022-02-21T11:45:09.2283610' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[auth_user] OFF
GO
SET IDENTITY_INSERT [dbo].[Company] ON 
GO
INSERT [dbo].[Company] ([id], [cif], [name], [image]) VALUES (1, N'1254789CH', N'Centre d''estudis politecnics', N'cep.png')
GO
INSERT [dbo].[Company] ([id], [cif], [name], [image]) VALUES (2, N'126654FV', N'Stucom', N'stucom.png')
GO
SET IDENTITY_INSERT [dbo].[Company] OFF
GO
SET IDENTITY_INSERT [dbo].[django_admin_log] ON 
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (1, CAST(N'2022-02-21T11:46:11.8736480' AS DateTime2), N'1', N'Centre d''estudis politecnics', 1, N'[{"added": {}}]', 7, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (2, CAST(N'2022-02-21T11:46:15.7779070' AS DateTime2), N'1', N'junior', 1, N'[{"added": {}}]', 10, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (3, CAST(N'2022-02-21T11:46:43.7158170' AS DateTime2), N'1', N'Alex', 1, N'[{"added": {}}]', 14, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (4, CAST(N'2022-02-21T11:46:59.9936140' AS DateTime2), N'2', N'David', 1, N'[{"added": {}}]', 14, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (5, CAST(N'2022-02-21T11:47:08.2936810' AS DateTime2), N'2', N'senior', 1, N'[{"added": {}}]', 10, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (6, CAST(N'2022-02-21T11:49:31.2725970' AS DateTime2), N'3', N'JL', 1, N'[{"added": {}}]', 14, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (7, CAST(N'2022-02-21T11:49:38.4203730' AS DateTime2), N'3', N'superadmin', 1, N'[{"added": {}}]', 10, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (8, CAST(N'2022-02-21T11:49:53.6570020' AS DateTime2), N'4', N'Antonio', 1, N'[{"added": {}}]', 14, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (9, CAST(N'2022-02-21T11:50:07.8583030' AS DateTime2), N'1', N'DAM2A:Centre d''estudis politecnics', 1, N'[{"added": {}}]', 8, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (10, CAST(N'2022-02-21T11:50:33.5742940' AS DateTime2), N'1', N'clase', 1, N'[{"added": {}}]', 13, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (11, CAST(N'2022-02-21T11:50:37.6862160' AS DateTime2), N'1', N'DAM2A:Centre d''estudis politecnics // clase', 1, N'[{"added": {}}]', 23, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (12, CAST(N'2022-02-21T11:51:02.2422150' AS DateTime2), N'1', N'constancia', 1, N'[{"added": {}}]', 12, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (13, CAST(N'2022-02-21T11:51:13.5160010' AS DateTime2), N'1', N'Planifica las tareas', 1, N'[{"added": {}}]', 17, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (14, CAST(N'2022-02-21T11:51:45.1443500' AS DateTime2), N'1', N'Actualización disponible', 1, N'[{"added": {}}]', 16, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (15, CAST(N'2022-02-21T11:54:50.9843990' AS DateTime2), N'1', N'Add user', 1, N'[{"added": {}}]', 9, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (16, CAST(N'2022-02-21T11:55:05.3550820' AS DateTime2), N'2', N'view profile', 1, N'[{"added": {}}]', 9, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (17, CAST(N'2022-02-21T11:56:54.3164320' AS DateTime2), N'1', N'No me funciona la app', 1, N'[{"added": {}}]', 15, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (18, CAST(N'2022-02-21T11:57:21.6814450' AS DateTime2), N'1', N'Ha alcanzado la puntuación máxima.', 1, N'[{"added": {}}]', 11, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (19, CAST(N'2022-02-21T11:57:25.6107590' AS DateTime2), N'1', N'JL -> Alex: Planifica las tareas (Ha alcanzado la puntuación máxima.)', 1, N'[{"added": {}}]', 22, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (20, CAST(N'2022-02-21T11:57:42.4863200' AS DateTime2), N'1', N'Alex // DAM2A:Centre d''estudis politecnics', 1, N'[{"added": {}}]', 18, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (21, CAST(N'2022-02-21T11:57:55.0385520' AS DateTime2), N'1', N'constancia -> clase', 1, N'[{"added": {}}]', 19, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (22, CAST(N'2022-02-21T11:58:19.9132370' AS DateTime2), N'1', N'senior // view profile', 1, N'[{"added": {}}]', 20, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (23, CAST(N'2022-02-21T11:58:26.4961850' AS DateTime2), N'2', N'superadmin // Add user', 1, N'[{"added": {}}]', 20, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (24, CAST(N'2022-02-21T11:58:38.9013420' AS DateTime2), N'2', N'Stucom', 1, N'[{"added": {}}]', 7, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (25, CAST(N'2022-02-21T11:59:21.1177090' AS DateTime2), N'3', N'write review', 1, N'[{"added": {}}]', 9, 1)
GO
INSERT [dbo].[django_admin_log] ([id], [action_time], [object_id], [object_repr], [action_flag], [change_message], [content_type_id], [user_id]) VALUES (26, CAST(N'2022-02-21T11:59:26.5550030' AS DateTime2), N'1', N'senior -> junior: write review', 1, N'[{"added": {}}]', 21, 1)
GO
SET IDENTITY_INSERT [dbo].[django_admin_log] OFF
GO
SET IDENTITY_INSERT [dbo].[django_content_type] ON 
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (1, N'admin', N'logentry')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (3, N'auth', N'group')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (2, N'auth', N'permission')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (4, N'auth', N'user')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (5, N'contenttypes', N'contenttype')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (6, N'sessions', N'session')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (7, N'SkillTrack', N'company')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (8, N'SkillTrack', N'group')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (23, N'SkillTrack', N'group_skilllist')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (17, N'SkillTrack', N'kpi')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (16, N'SkillTrack', N'notification')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (9, N'SkillTrack', N'permission')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (15, N'SkillTrack', N'posttoadmin')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (22, N'SkillTrack', N'review')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (10, N'SkillTrack', N'role')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (21, N'SkillTrack', N'role_interactive_permission')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (20, N'SkillTrack', N'role_permission')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (11, N'SkillTrack', N'score')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (12, N'SkillTrack', N'skill')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (13, N'SkillTrack', N'skilllist')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (19, N'SkillTrack', N'skilllist_skill')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (14, N'SkillTrack', N'user')
GO
INSERT [dbo].[django_content_type] ([id], [app_label], [model]) VALUES (18, N'SkillTrack', N'user_group')
GO
SET IDENTITY_INSERT [dbo].[django_content_type] OFF
GO
SET IDENTITY_INSERT [dbo].[django_migrations] ON 
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (1, N'SkillTrack', N'0001_initial', CAST(N'2022-02-21T11:43:02.3714460' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (2, N'contenttypes', N'0001_initial', CAST(N'2022-02-21T11:43:02.5708950' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (3, N'auth', N'0001_initial', CAST(N'2022-02-21T11:43:02.6018020' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (4, N'admin', N'0001_initial', CAST(N'2022-02-21T11:43:02.6344070' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (5, N'admin', N'0002_logentry_remove_auto_add', CAST(N'2022-02-21T11:43:02.6488780' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (6, N'admin', N'0003_logentry_add_action_flag_choices', CAST(N'2022-02-21T11:43:02.6618460' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (7, N'contenttypes', N'0002_remove_content_type_name', CAST(N'2022-02-21T11:43:03.0293330' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (8, N'auth', N'0002_alter_permission_name_max_length', CAST(N'2022-02-21T11:43:03.0363160' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (9, N'auth', N'0003_alter_user_email_max_length', CAST(N'2022-02-21T11:43:03.0481110' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (10, N'auth', N'0004_alter_user_username_opts', CAST(N'2022-02-21T11:43:03.0590820' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (11, N'auth', N'0005_alter_user_last_login_null', CAST(N'2022-02-21T11:43:03.0731690' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (12, N'auth', N'0006_require_contenttypes_0002', CAST(N'2022-02-21T11:43:03.0766610' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (13, N'auth', N'0007_alter_validators_add_error_messages', CAST(N'2022-02-21T11:43:03.0866340' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (14, N'auth', N'0008_alter_user_username_max_length', CAST(N'2022-02-21T11:43:03.4750180' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (15, N'auth', N'0009_alter_user_last_name_max_length', CAST(N'2022-02-21T11:43:03.4870070' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (16, N'auth', N'0010_alter_group_name_max_length', CAST(N'2022-02-21T11:43:03.8576160' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (17, N'auth', N'0011_update_proxy_permissions', CAST(N'2022-02-21T11:43:03.8795600' AS DateTime2))
GO
INSERT [dbo].[django_migrations] ([id], [app], [name], [applied]) VALUES (18, N'sessions', N'0001_initial', CAST(N'2022-02-21T11:43:03.8885340' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[django_migrations] OFF
GO
INSERT [dbo].[django_session] ([session_key], [session_data], [expire_date]) VALUES (N'2kuzce3r0kheuff6isglttrmlk5snay7', N'ZWExMzg2ZTg2ZjQ4NmRhZTkyYjNhOTk2ZGFkYzdjNGRjOGYyZWVlODp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZjVkY2M4MzRiN2E5MzNkNzFjMTcyOGNiNjhiZjQ3Y2IwZDg4YWY1In0=', CAST(N'2022-03-07T11:45:32.3856930' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Group] ON 
GO
INSERT [dbo].[Group] ([id], [name], [isActive], [idCompany_id]) VALUES (1, N'DAM2A', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Group] OFF
GO
SET IDENTITY_INSERT [dbo].[Group_SkillList] ON 
GO
INSERT [dbo].[Group_SkillList] ([id], [startDate], [finalDate], [groupName_id], [idCompany_id], [idSkillList_id]) VALUES (1, CAST(N'2022-02-21' AS Date), CAST(N'2022-02-21' AS Date), 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Group_SkillList] OFF
GO
SET IDENTITY_INSERT [dbo].[Kpi] ON 
GO
INSERT [dbo].[Kpi] ([id], [name], [isActive], [idCompany_id], [idSkill_id]) VALUES (1, N'Planifica las tareas', 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Kpi] OFF
GO
SET IDENTITY_INSERT [dbo].[Notification] ON 
GO
INSERT [dbo].[Notification] ([id], [title], [description], [idCompany_id]) VALUES (1, N'Actualización disponible', N'Hay una actualización pendiente. Descárgala ya para acceder a las nuevas funcionalidades.', 1)
GO
SET IDENTITY_INSERT [dbo].[Notification] OFF
GO
SET IDENTITY_INSERT [dbo].[Permission] ON 
GO
INSERT [dbo].[Permission] ([id], [name], [description], [type]) VALUES (1, N'Add user', N'Añadir un usuario nuevo.', N'forAdmin')
GO
INSERT [dbo].[Permission] ([id], [name], [description], [type]) VALUES (2, N'view profile', N'revisar el perfil de usuario', N'forAdmin')
GO
INSERT [dbo].[Permission] ([id], [name], [description], [type]) VALUES (3, N'write review', N'Añadir una valoración.', N'forAdmin')
GO
SET IDENTITY_INSERT [dbo].[Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[PostToAdmin] ON 
GO
INSERT [dbo].[PostToAdmin] ([id], [title], [description], [alreadyRead], [idCompany_id], [idUser_id]) VALUES (1, N'No me funciona la app', N'Me ha petado la app y el desktop casi', 0, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[PostToAdmin] OFF
GO
SET IDENTITY_INSERT [dbo].[Review] ON 
GO
INSERT [dbo].[Review] ([id], [date], [idCompany_id], [idKpi_id], [idReviewerUser_id], [idScore_id], [idValuedUser_id]) VALUES (1, CAST(N'2022-02-21' AS Date), 1, 1, 3, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Review] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 
GO
INSERT [dbo].[Role] ([id], [name], [isAdmin], [idCompany_id]) VALUES (1, N'junior', 0, 1)
GO
INSERT [dbo].[Role] ([id], [name], [isAdmin], [idCompany_id]) VALUES (2, N'senior', 0, 1)
GO
INSERT [dbo].[Role] ([id], [name], [isAdmin], [idCompany_id]) VALUES (3, N'superadmin', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Role_Interactive_Permission] ON 
GO
INSERT [dbo].[Role_Interactive_Permission] ([id], [isActive], [idCompany_id], [idPermission_id], [idRolPerformAction_id], [idRolReceiveAction_id]) VALUES (1, 1, 1, 3, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Role_Interactive_Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[Role_Permission] ON 
GO
INSERT [dbo].[Role_Permission] ([id], [isActive], [idCompany_id], [idPermission_id], [idRol_id]) VALUES (1, 1, 1, 2, 2)
GO
INSERT [dbo].[Role_Permission] ([id], [isActive], [idCompany_id], [idPermission_id], [idRol_id]) VALUES (2, 1, 1, 1, 3)
GO
SET IDENTITY_INSERT [dbo].[Role_Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[Score] ON 
GO
INSERT [dbo].[Score] ([id], [mark], [description]) VALUES (1, 3, N'Ha alcanzado la puntuación máxima.')
GO
SET IDENTITY_INSERT [dbo].[Score] OFF
GO
SET IDENTITY_INSERT [dbo].[Skill] ON 
GO
INSERT [dbo].[Skill] ([id], [name], [isActive], [shortName], [description], [idCompany_id]) VALUES (1, N'constancia', 1, N'c', N'La constancia es la clave para obtener resultados satisfactorios.', 1)
GO
SET IDENTITY_INSERT [dbo].[Skill] OFF
GO
SET IDENTITY_INSERT [dbo].[SkillList] ON 
GO
INSERT [dbo].[SkillList] ([id], [name], [isActive], [description], [idCompany_id]) VALUES (1, N'clase', 1, N'lista de soft skills', 1)
GO
SET IDENTITY_INSERT [dbo].[SkillList] OFF
GO
SET IDENTITY_INSERT [dbo].[SkillList_Skill] ON 
GO
INSERT [dbo].[SkillList_Skill] ([id], [idCompany_id], [idSkill_id], [idSkillList_id]) VALUES (1, 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[SkillList_Skill] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([id], [name], [surname], [email], [password], [image], [birthDate], [idCompany_id], [idRol_id]) VALUES (1, N'Alex', N'guirao', N'aresumail', N'pass', N'alex.png', CAST(N'2022-02-21' AS Date), 1, 1)
GO
INSERT [dbo].[User] ([id], [name], [surname], [email], [password], [image], [birthDate], [idCompany_id], [idRol_id]) VALUES (2, N'David', N'Selles', N'Sellesmail@gmail.com', N'pass', N'david.png', CAST(N'2022-02-21' AS Date), 1, 1)
GO
INSERT [dbo].[User] ([id], [name], [surname], [email], [password], [image], [birthDate], [idCompany_id], [idRol_id]) VALUES (3, N'JL', N'mañas', N'jlmail@gmail.com', N'pass', N'jl.png', CAST(N'2022-02-21' AS Date), 1, 2)
GO
INSERT [dbo].[User] ([id], [name], [surname], [email], [password], [image], [birthDate], [idCompany_id], [idRol_id]) VALUES (4, N'Antonio', N'Dominguez', N'antonio@cepnet.net', N'pass', N'antonio.png', CAST(N'2022-02-21' AS Date), 1, 3)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Group] ON 
GO
INSERT [dbo].[User_Group] ([id], [startDate], [finalDate], [idCompany_id], [idGroup_id], [idUser_id]) VALUES (1, CAST(N'2022-02-21' AS Date), CAST(N'2022-02-21' AS Date), 1, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[User_Group] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_group_name_a6ea08ec_uniq]    Script Date: 21/02/2022 13:05:30 ******/
ALTER TABLE [dbo].[auth_group] ADD  CONSTRAINT [auth_group_name_a6ea08ec_uniq] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_b120cbf9]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_group_id_b120cbf9] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_group_id_permission_id_0cd325b0_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_group_permissions_group_id_permission_id_0cd325b0_uniq] ON [dbo].[auth_group_permissions]
(
	[group_id] ASC,
	[permission_id] ASC
)
WHERE ([group_id] IS NOT NULL AND [permission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_group_permissions_permission_id_84c5c92e]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [auth_group_permissions_permission_id_84c5c92e] ON [dbo].[auth_group_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_permission_content_type_id_2f476e4b]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [auth_permission_content_type_id_2f476e4b] ON [dbo].[auth_permission]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [auth_permission_content_type_id_codename_01ab375a_uniq]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Index [auth_user_username_6821ab7c_uniq]    Script Date: 21/02/2022 13:05:30 ******/
ALTER TABLE [dbo].[auth_user] ADD  CONSTRAINT [auth_user_username_6821ab7c_uniq] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_group_id_97559544]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [auth_user_groups_group_id_97559544] ON [dbo].[auth_user_groups]
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_user_id_6a12ed8b]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [auth_user_groups_user_id_6a12ed8b] ON [dbo].[auth_user_groups]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_groups_user_id_group_id_94350c0c_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [auth_user_groups_user_id_group_id_94350c0c_uniq] ON [dbo].[auth_user_groups]
(
	[user_id] ASC,
	[group_id] ASC
)
WHERE ([user_id] IS NOT NULL AND [group_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_permission_id_1fbb5f2c]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [auth_user_user_permissions_permission_id_1fbb5f2c] ON [dbo].[auth_user_user_permissions]
(
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_user_id_a95ead1b]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [auth_user_user_permissions_user_id_a95ead1b] ON [dbo].[auth_user_user_permissions]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [auth_user_user_permissions_user_id_permission_id_14a6b632_uniq]    Script Date: 21/02/2022 13:05:30 ******/
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
/****** Object:  Index [UQ__Company__D837D05C0EB84854]    Script Date: 21/02/2022 13:05:30 ******/
ALTER TABLE [dbo].[Company] ADD UNIQUE NONCLUSTERED 
(
	[cif] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_content_type_id_c4bce8eb]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [django_admin_log_content_type_id_c4bce8eb] ON [dbo].[django_admin_log]
(
	[content_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_admin_log_user_id_c564eba6]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [django_admin_log_user_id_c564eba6] ON [dbo].[django_admin_log]
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [django_content_type_app_label_model_76bd3d3b_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [django_content_type_app_label_model_76bd3d3b_uniq] ON [dbo].[django_content_type]
(
	[app_label] ASC,
	[model] ASC
)
WHERE ([app_label] IS NOT NULL AND [model] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [django_session_expire_date_a5c62663]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [django_session_expire_date_a5c62663] ON [dbo].[django_session]
(
	[expire_date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Group_idCompany_id_d2776b6b]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Group_idCompany_id_d2776b6b] ON [dbo].[Group]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Group_name_idCompany_id_83a46d54_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Group_name_idCompany_id_83a46d54_uniq] ON [dbo].[Group]
(
	[name] ASC,
	[idCompany_id] ASC
)
WHERE ([name] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Group_SkillList_groupName_id_4173e475]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Group_SkillList_groupName_id_4173e475] ON [dbo].[Group_SkillList]
(
	[groupName_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Group_SkillList_groupName_id_idSkillList_id_idCompany_id_913566aa_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Group_SkillList_groupName_id_idSkillList_id_idCompany_id_913566aa_uniq] ON [dbo].[Group_SkillList]
(
	[groupName_id] ASC,
	[idSkillList_id] ASC,
	[idCompany_id] ASC
)
WHERE ([groupName_id] IS NOT NULL AND [idSkillList_id] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Group_SkillList_idCompany_id_77043b54]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Group_SkillList_idCompany_id_77043b54] ON [dbo].[Group_SkillList]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Group_SkillList_idSkillList_id_d73da0b9]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Group_SkillList_idSkillList_id_d73da0b9] ON [dbo].[Group_SkillList]
(
	[idSkillList_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Kpi_idCompany_id_832b6816]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Kpi_idCompany_id_832b6816] ON [dbo].[Kpi]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Kpi_idSkill_id_eeb81175]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Kpi_idSkill_id_eeb81175] ON [dbo].[Kpi]
(
	[idSkill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Kpi_name_idSkill_id_d22bbf48_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Kpi_name_idSkill_id_d22bbf48_uniq] ON [dbo].[Kpi]
(
	[name] ASC,
	[idSkill_id] ASC
)
WHERE ([name] IS NOT NULL AND [idSkill_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Notification_idCompany_id_1c615263]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Notification_idCompany_id_1c615263] ON [dbo].[Notification]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Permission_name_type_6a27e373_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Permission_name_type_6a27e373_uniq] ON [dbo].[Permission]
(
	[name] ASC,
	[type] ASC
)
WHERE ([name] IS NOT NULL AND [type] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PostToAdmin_idCompany_id_3c201f74]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [PostToAdmin_idCompany_id_3c201f74] ON [dbo].[PostToAdmin]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [PostToAdmin_idUser_id_a02f9860]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [PostToAdmin_idUser_id_a02f9860] ON [dbo].[PostToAdmin]
(
	[idUser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Review_idCompany_id_36166525]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Review_idCompany_id_36166525] ON [dbo].[Review]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Review_idKpi_id_342fe69b]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Review_idKpi_id_342fe69b] ON [dbo].[Review]
(
	[idKpi_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Review_idKpi_id_idValuedUser_id_idReviewerUser_id_304dc3a3_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Review_idKpi_id_idValuedUser_id_idReviewerUser_id_304dc3a3_uniq] ON [dbo].[Review]
(
	[idKpi_id] ASC,
	[idValuedUser_id] ASC,
	[idReviewerUser_id] ASC
)
WHERE ([idKpi_id] IS NOT NULL AND [idValuedUser_id] IS NOT NULL AND [idReviewerUser_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Review_idReviewerUser_id_6b9c80b9]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Review_idReviewerUser_id_6b9c80b9] ON [dbo].[Review]
(
	[idReviewerUser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Review_idScore_id_c0e03877]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Review_idScore_id_c0e03877] ON [dbo].[Review]
(
	[idScore_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Review_idValuedUser_id_f9ee0418]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Review_idValuedUser_id_f9ee0418] ON [dbo].[Review]
(
	[idValuedUser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_idCompany_id_1b56580b]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Role_idCompany_id_1b56580b] ON [dbo].[Role]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Role_name_idCompany_id_22a3a0e7_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Role_name_idCompany_id_22a3a0e7_uniq] ON [dbo].[Role]
(
	[name] ASC,
	[idCompany_id] ASC
)
WHERE ([name] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Interactive_Permission_idCompany_id_897b2a5c]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Role_Interactive_Permission_idCompany_id_897b2a5c] ON [dbo].[Role_Interactive_Permission]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Interactive_Permission_idPermission_id_1e6fff91]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Role_Interactive_Permission_idPermission_id_1e6fff91] ON [dbo].[Role_Interactive_Permission]
(
	[idPermission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Interactive_Permission_idRolPerformAction_id_159c2568]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Role_Interactive_Permission_idRolPerformAction_id_159c2568] ON [dbo].[Role_Interactive_Permission]
(
	[idRolPerformAction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Interactive_Permission_idRolPerformAction_id_idRolReceiveAction_id_idPermission_id_b8e4f228_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Role_Interactive_Permission_idRolPerformAction_id_idRolReceiveAction_id_idPermission_id_b8e4f228_uniq] ON [dbo].[Role_Interactive_Permission]
(
	[idRolPerformAction_id] ASC,
	[idRolReceiveAction_id] ASC,
	[idPermission_id] ASC
)
WHERE ([idRolPerformAction_id] IS NOT NULL AND [idRolReceiveAction_id] IS NOT NULL AND [idPermission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Interactive_Permission_idRolReceiveAction_id_1a3a2218]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Role_Interactive_Permission_idRolReceiveAction_id_1a3a2218] ON [dbo].[Role_Interactive_Permission]
(
	[idRolReceiveAction_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Permission_idCompany_id_b4574ae3]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Role_Permission_idCompany_id_b4574ae3] ON [dbo].[Role_Permission]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Permission_idPermission_id_6aa2a113]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Role_Permission_idPermission_id_6aa2a113] ON [dbo].[Role_Permission]
(
	[idPermission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Permission_idRol_id_8042cf87]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Role_Permission_idRol_id_8042cf87] ON [dbo].[Role_Permission]
(
	[idRol_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Role_Permission_idRol_id_idPermission_id_378fadcf_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Role_Permission_idRol_id_idPermission_id_378fadcf_uniq] ON [dbo].[Role_Permission]
(
	[idRol_id] ASC,
	[idPermission_id] ASC
)
WHERE ([idRol_id] IS NOT NULL AND [idPermission_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [Skill_idCompany_id_decc5090]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [Skill_idCompany_id_decc5090] ON [dbo].[Skill]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [Skill_name_idCompany_id_d052fd06_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [Skill_name_idCompany_id_d052fd06_uniq] ON [dbo].[Skill]
(
	[name] ASC,
	[idCompany_id] ASC
)
WHERE ([name] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [SkillList_idCompany_id_3c830f20]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [SkillList_idCompany_id_3c830f20] ON [dbo].[SkillList]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [SkillList_name_idCompany_id_add7eaf6_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [SkillList_name_idCompany_id_add7eaf6_uniq] ON [dbo].[SkillList]
(
	[name] ASC,
	[idCompany_id] ASC
)
WHERE ([name] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [SkillList_Skill_idCompany_id_26f769c2]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [SkillList_Skill_idCompany_id_26f769c2] ON [dbo].[SkillList_Skill]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [SkillList_Skill_idSkill_id_4c409e5e]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [SkillList_Skill_idSkill_id_4c409e5e] ON [dbo].[SkillList_Skill]
(
	[idSkill_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [SkillList_Skill_idSkill_id_idSkillList_id_idCompany_id_3a41de80_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [SkillList_Skill_idSkill_id_idSkillList_id_idCompany_id_3a41de80_uniq] ON [dbo].[SkillList_Skill]
(
	[idSkill_id] ASC,
	[idSkillList_id] ASC,
	[idCompany_id] ASC
)
WHERE ([idSkill_id] IS NOT NULL AND [idSkillList_id] IS NOT NULL AND [idCompany_id] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [SkillList_Skill_idSkillList_id_91a6ad7d]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [SkillList_Skill_idSkillList_id_91a6ad7d] ON [dbo].[SkillList_Skill]
(
	[idSkillList_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__User__AB6E61647BE7D3F8]    Script Date: 21/02/2022 13:05:30 ******/
ALTER TABLE [dbo].[User] ADD UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [User_idCompany_id_766d48fc]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [User_idCompany_id_766d48fc] ON [dbo].[User]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [User_idRol_id_4b06b77b]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [User_idRol_id_4b06b77b] ON [dbo].[User]
(
	[idRol_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [User_Group_idCompany_id_10247122]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [User_Group_idCompany_id_10247122] ON [dbo].[User_Group]
(
	[idCompany_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [User_Group_idGroup_id_2c8eccc4]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [User_Group_idGroup_id_2c8eccc4] ON [dbo].[User_Group]
(
	[idGroup_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [User_Group_idUser_id_48da9eb8]    Script Date: 21/02/2022 13:05:30 ******/
CREATE NONCLUSTERED INDEX [User_Group_idUser_id_48da9eb8] ON [dbo].[User_Group]
(
	[idUser_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [User_Group_idUser_id_idGroup_id_idCompany_id_1a97af1a_uniq]    Script Date: 21/02/2022 13:05:30 ******/
CREATE UNIQUE NONCLUSTERED INDEX [User_Group_idUser_id_idGroup_id_idCompany_id_1a97af1a_uniq] ON [dbo].[User_Group]
(
	[idUser_id] ASC,
	[idGroup_id] ASC,
	[idCompany_id] ASC
)
WHERE ([idUser_id] IS NOT NULL AND [idGroup_id] IS NOT NULL AND [idCompany_id] IS NOT NULL)
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
ALTER TABLE [dbo].[Group_SkillList]  WITH CHECK ADD  CONSTRAINT [Group_SkillList_groupName_id_4173e475_fk_Group_id] FOREIGN KEY([groupName_id])
REFERENCES [dbo].[Group] ([id])
GO
ALTER TABLE [dbo].[Group_SkillList] CHECK CONSTRAINT [Group_SkillList_groupName_id_4173e475_fk_Group_id]
GO
ALTER TABLE [dbo].[Group_SkillList]  WITH CHECK ADD  CONSTRAINT [Group_SkillList_idCompany_id_77043b54_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[Group_SkillList] CHECK CONSTRAINT [Group_SkillList_idCompany_id_77043b54_fk_Company_id]
GO
ALTER TABLE [dbo].[Group_SkillList]  WITH CHECK ADD  CONSTRAINT [Group_SkillList_idSkillList_id_d73da0b9_fk_SkillList_id] FOREIGN KEY([idSkillList_id])
REFERENCES [dbo].[SkillList] ([id])
GO
ALTER TABLE [dbo].[Group_SkillList] CHECK CONSTRAINT [Group_SkillList_idSkillList_id_d73da0b9_fk_SkillList_id]
GO
ALTER TABLE [dbo].[Kpi]  WITH CHECK ADD  CONSTRAINT [Kpi_idCompany_id_832b6816_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[Kpi] CHECK CONSTRAINT [Kpi_idCompany_id_832b6816_fk_Company_id]
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
ALTER TABLE [dbo].[Review]  WITH CHECK ADD  CONSTRAINT [Review_idCompany_id_36166525_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[Review] CHECK CONSTRAINT [Review_idCompany_id_36166525_fk_Company_id]
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
ALTER TABLE [dbo].[Role_Interactive_Permission]  WITH CHECK ADD  CONSTRAINT [Role_Interactive_Permission_idCompany_id_897b2a5c_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[Role_Interactive_Permission] CHECK CONSTRAINT [Role_Interactive_Permission_idCompany_id_897b2a5c_fk_Company_id]
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
ALTER TABLE [dbo].[Role_Permission]  WITH CHECK ADD  CONSTRAINT [Role_Permission_idCompany_id_b4574ae3_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[Role_Permission] CHECK CONSTRAINT [Role_Permission_idCompany_id_b4574ae3_fk_Company_id]
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
ALTER TABLE [dbo].[User_Group]  WITH CHECK ADD  CONSTRAINT [User_Group_idCompany_id_10247122_fk_Company_id] FOREIGN KEY([idCompany_id])
REFERENCES [dbo].[Company] ([id])
GO
ALTER TABLE [dbo].[User_Group] CHECK CONSTRAINT [User_Group_idCompany_id_10247122_fk_Company_id]
GO
ALTER TABLE [dbo].[User_Group]  WITH CHECK ADD  CONSTRAINT [User_Group_idGroup_id_2c8eccc4_fk_Group_id] FOREIGN KEY([idGroup_id])
REFERENCES [dbo].[Group] ([id])
GO
ALTER TABLE [dbo].[User_Group] CHECK CONSTRAINT [User_Group_idGroup_id_2c8eccc4_fk_Group_id]
GO
ALTER TABLE [dbo].[User_Group]  WITH CHECK ADD  CONSTRAINT [User_Group_idUser_id_48da9eb8_fk_User_id] FOREIGN KEY([idUser_id])
REFERENCES [dbo].[User] ([id])
GO
ALTER TABLE [dbo].[User_Group] CHECK CONSTRAINT [User_Group_idUser_id_48da9eb8_fk_User_id]
GO
ALTER TABLE [dbo].[django_admin_log]  WITH CHECK ADD  CONSTRAINT [django_admin_log_action_flag_a8637d59_check] CHECK  (([action_flag]>=(0)))
GO
ALTER TABLE [dbo].[django_admin_log] CHECK CONSTRAINT [django_admin_log_action_flag_a8637d59_check]
GO
USE [master]
GO
ALTER DATABASE [skill_track] SET  READ_WRITE 
GO
