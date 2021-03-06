USE [seguretat]
GO
/****** Object:  Table [dbo].[rols]    Script Date: 02/01/2021 9:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rols](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nom] [varchar](45) NOT NULL,
	[actiu] [bit] NOT NULL,
 CONSTRAINT [PK__rols__3213E83FB9FD177A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuaris]    Script Date: 02/01/2021 9:58:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuaris](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[correu] [varchar](45) NOT NULL,
	[nom] [varchar](45) NOT NULL,
	[cognoms] [varchar](45) NOT NULL,
	[contrasenya] [varchar](256) NOT NULL,
	[actiu] [bit] NOT NULL,
	[rols_id] [int] NOT NULL,
 CONSTRAINT [PK__usuaris__3213E83F7B6FB574] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[rols] ON 

INSERT [dbo].[rols] ([id], [nom], [actiu]) VALUES (1, N'Administrador', 1)
INSERT [dbo].[rols] ([id], [nom], [actiu]) VALUES (2, N'Professor', 1)
INSERT [dbo].[rols] ([id], [nom], [actiu]) VALUES (3, N'Alumne', 1)
SET IDENTITY_INSERT [dbo].[rols] OFF
GO
SET IDENTITY_INSERT [dbo].[usuaris] ON 

INSERT [dbo].[usuaris] ([id], [correu], [nom], [cognoms], [contrasenya], [actiu], [rols_id]) VALUES (7, N'ffernandez@politecnics.barcelona', N'Francisco', N'Fernández Fernández', N'$2a$11$Y7MFjX/wdZCMGEoBewbPwOKBJBsxNkvqgFQGMUurY2aHlZ./kzfES', 1, 1)
INSERT [dbo].[usuaris] ([id], [correu], [nom], [cognoms], [contrasenya], [actiu], [rols_id]) VALUES (8, N'ivarela@salesians.sarria.cat', N'Isabel', N'Varela', N'$2a$11$6DOm0MPEfA2eqkylRITuDuds/9Y7ZOkj6GtzC2j5znlk5qAysd.1S', 1, 1)
SET IDENTITY_INSERT [dbo].[usuaris] OFF
GO
ALTER TABLE [dbo].[usuaris]  WITH CHECK ADD  CONSTRAINT [fk_usuaris_rols1] FOREIGN KEY([rols_id])
REFERENCES [dbo].[rols] ([id])
GO
ALTER TABLE [dbo].[usuaris] CHECK CONSTRAINT [fk_usuaris_rols1]
GO
USE [master]
GO
ALTER DATABASE [seguretat] SET  READ_WRITE 
GO
