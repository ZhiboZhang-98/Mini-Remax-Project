USE [RemaxDB]
GO
/****** Object:  Table [dbo].[Resident]    Script Date: 2020-04-28 3:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Resident](
	[ResidentId] [int] IDENTITY(1,1) NOT NULL,
	[ResidentName] [nvarchar](50) NOT NULL,
	[ResidentAddress] [nvarchar](50) NOT NULL,
	[Region] [nvarchar](50) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[Room] [int] NOT NULL,
	[Bathroom] [int] NOT NULL,
	[Garage] [nvarchar](50) NOT NULL,
	[Pool] [nvarchar](50) NOT NULL,
	[Fireplace] [nvarchar](50) NOT NULL,
	[Image] [varbinary](max) NULL,
 CONSTRAINT [PK_Resident] PRIMARY KEY CLUSTERED 
(
	[ResidentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 2020-04-28 3:42:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Resident] ON 

INSERT [dbo].[Resident] ([ResidentId], [ResidentName], [ResidentAddress], [Region], [City], [Price], [Room], [Bathroom], [Garage], [Pool], [Fireplace], [Image]) VALUES (1, N'Maze Bank Tower', N'521 King St', N'Near downtown', N'Toronto', 7599.99, 5, 3, N'Yes', N'No', N'No', 0x53797374656D2E427974655B5D)
SET IDENTITY_INSERT [dbo].[Resident] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (1, N'Zhibo', N'123456', N'Admin')
INSERT [dbo].[User] ([UserId], [Username], [Password], [Role]) VALUES (2, N'Josh', N'123456', N'Client')
SET IDENTITY_INSERT [dbo].[User] OFF
