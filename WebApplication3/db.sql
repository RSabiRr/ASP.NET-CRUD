USE [ColthingDB]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 23.12.2021 23:42:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Members]    Script Date: 23.12.2021 23:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Members](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Surname] [nvarchar](50) NULL,
	[About] [ntext] NULL,
	[Image] [nvarchar](250) NULL,
	[SosialId] [int] NOT NULL,
	[PositsionId] [int] NOT NULL,
 CONSTRAINT [PK_Members] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Messages]    Script Date: 23.12.2021 23:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Messages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Subject] [nvarchar](500) NULL,
	[Messagee] [ntext] NULL,
	[Title] [nvarchar](150) NULL,
	[About] [ntext] NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Messages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partenrs]    Script Date: 23.12.2021 23:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partenrs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Img] [nvarchar](250) NULL,
 CONSTRAINT [PK_Partenrs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Positsions]    Script Date: 23.12.2021 23:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positsions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Positsions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 23.12.2021 23:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[Content] [ntext] NULL,
	[Price] [money] NOT NULL,
	[ValuationId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 23.12.2021 23:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mapp] [nvarchar](250) NULL,
	[ContAbout] [ntext] NULL,
	[ContTitle] [nvarchar](150) NULL,
	[About] [ntext] NULL,
	[AboutImage] [nvarchar](250) NULL,
	[AbouTitle] [nvarchar](150) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sosials]    Script Date: 23.12.2021 23:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sosials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Icon] [nvarchar](50) NULL,
	[Link] [nvarchar](250) NULL,
 CONSTRAINT [PK_Sosials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Valuations]    Script Date: 23.12.2021 23:43:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Valuations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Valuations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name]) VALUES (1, N'Həmtəsisçi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (2, N'Məhsul Mütəxəssisi')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (3, N'Baş Marketinq')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (4, N'Məhsul Fotoqrafı')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (5, N'Baş menecer')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (6, N'salam')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (7, N'necese')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Members] ON 

INSERT [dbo].[Members] ([Id], [Name], [Surname], [About], [Image], [SosialId], [PositsionId]) VALUES (4, N'Akif', N'Quluzade', N'loremm loremm', N'team_01.jpg', 1, 1)
INSERT [dbo].[Members] ([Id], [Name], [Surname], [About], [Image], [SosialId], [PositsionId]) VALUES (6, N'Emil', N'Abdullayev', N'loremm loremm', N'team_02.jpg', 1, 2)
INSERT [dbo].[Members] ([Id], [Name], [Surname], [About], [Image], [SosialId], [PositsionId]) VALUES (7, N'Nurlan', N'Qasimov', N'loremm loremm', N'team_03.jpg', 1, 3)
INSERT [dbo].[Members] ([Id], [Name], [Surname], [About], [Image], [SosialId], [PositsionId]) VALUES (8, N'Ilkin', N'Beydullayev', N'loremm loremm', N'team_04.jpg', 1, 2)
INSERT [dbo].[Members] ([Id], [Name], [Surname], [About], [Image], [SosialId], [PositsionId]) VALUES (9, N'Ruslan', N'Qurbanov', N'loremm loremm', N'team_01.jpg', 1, 4)
SET IDENTITY_INSERT [dbo].[Members] OFF
GO
SET IDENTITY_INSERT [dbo].[Positsions] ON 

INSERT [dbo].[Positsions] ([Id], [Name]) VALUES (1, N'Həmtəsisçi')
INSERT [dbo].[Positsions] ([Id], [Name]) VALUES (2, N'Məhsul Mütəxəssisi')
INSERT [dbo].[Positsions] ([Id], [Name]) VALUES (3, N'Baş Marketinq')
INSERT [dbo].[Positsions] ([Id], [Name]) VALUES (4, N'Məhsul Fotoqrafı')
INSERT [dbo].[Positsions] ([Id], [Name]) VALUES (5, N'Baş menecer')
SET IDENTITY_INSERT [dbo].[Positsions] OFF
GO
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [Mapp], [ContAbout], [ContTitle], [About], [AboutImage], [AbouTitle]) VALUES (1, N'https://maps.google.com/maps?q=Av.+L%C3%BAcio+Costa,+Rio+de+Janeiro+-+RJ,+Brazil&t=&z=13&ie=UTF8&iwloc=&output=embed', N'salammmm', N'necesenn', N'sagoll', N'feature-image.jpg', N'saadadad')
SET IDENTITY_INSERT [dbo].[Settings] OFF
GO
SET IDENTITY_INSERT [dbo].[Sosials] ON 

INSERT [dbo].[Sosials] ([Id], [Name], [Icon], [Link]) VALUES (1, N'Facebook', N'', NULL)
SET IDENTITY_INSERT [dbo].[Sosials] OFF
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Positsions_PositsionId] FOREIGN KEY([PositsionId])
REFERENCES [dbo].[Positsions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Positsions_PositsionId]
GO
ALTER TABLE [dbo].[Members]  WITH CHECK ADD  CONSTRAINT [FK_Members_Sosials_SosialId] FOREIGN KEY([SosialId])
REFERENCES [dbo].[Sosials] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Members] CHECK CONSTRAINT [FK_Members_Sosials_SosialId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoryId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Valuations_ValuationId] FOREIGN KEY([ValuationId])
REFERENCES [dbo].[Valuations] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Valuations_ValuationId]
GO
