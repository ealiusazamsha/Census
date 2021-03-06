USE [CENSUS_Group]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2/1/2018 12:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Subject] [varchar](100) NULL,
	[Division] [varchar](20) NULL,
	[Message] [varchar](500) NULL,
	[Time] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[District]    Script Date: 2/1/2018 12:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[District](
	[District_ID] [int] IDENTITY(1,1) NOT NULL,
	[District_Name] [varchar](50) NOT NULL,
	[Division_ID] [int] NOT NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[District_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Division]    Script Date: 2/1/2018 12:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Division](
	[Division_ID] [int] IDENTITY(1,1) NOT NULL,
	[Division_Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Division_1] PRIMARY KEY CLUSTERED 
(
	[Division_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Email]    Script Date: 2/1/2018 12:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Email](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sub] [varchar](100) NULL,
	[Message] [varchar](500) NULL,
	[Sender] [varchar](50) NULL,
	[Receiver] [varchar](50) NULL,
	[Time] [datetime] NULL,
	[Status] [int] NULL,
	[Name] [varchar](50) NULL,
	[ContentType] [varchar](150) NULL,
	[Data] [varbinary](max) NULL,
	[Attach] [varchar](5) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LatestNews]    Script Date: 2/1/2018 12:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LatestNews](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[News] [varchar](250) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_LatestNews] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registration]    Script Date: 2/1/2018 12:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Registration](
	[Public_ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Father] [varchar](50) NULL,
	[Mother] [varchar](50) NULL,
	[Gender] [varchar](10) NULL,
	[Mobile] [varchar](50) NULL,
	[NID] [varchar](50) NULL,
	[Number] [int] NULL,
	[DOB] [date] NULL,
	[Division] [varchar](50) NULL,
	[District] [varchar](50) NULL,
	[Upazila] [varchar](50) NULL,
	[Address] [varchar](100) NULL,
 CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED 
(
	[Public_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SendMessage]    Script Date: 2/1/2018 12:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SendMessage](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Sub] [varchar](100) NULL,
	[Message] [varchar](500) NULL,
	[Sender] [varchar](50) NULL,
	[Receiver] [varchar](50) NULL,
	[Time] [datetime] NULL,
	[Name] [varchar](50) NULL,
	[ContentType] [varchar](150) NULL,
	[Data] [varbinary](max) NULL,
	[Attach] [varchar](5) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Upazila]    Script Date: 2/1/2018 12:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Upazila](
	[Upazila_ID] [int] IDENTITY(1,1) NOT NULL,
	[Upazila_Name] [varchar](50) NOT NULL,
	[District_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Upazila_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2/1/2018 12:21:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[UserInfo](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](50) NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [nvarchar](50) NULL,
	[Role] [varchar](10) NULL,
	[Mobile] [varchar](20) NULL,
	[Address] [varchar](100) NULL,
	[Division] [varchar](20) NULL,
	[Date] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[District] ON 

INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (1, N'Barguna', 1)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (2, N'Barisal', 1)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (3, N'Bhola', 1)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (4, N'Jhalokati', 1)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (5, N'Patuakhali', 1)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (6, N'Pirojpur', 1)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (7, N'Bandarban', 2)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (8, N'Brahmanbaria', 2)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (9, N'Chandpur', 2)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (10, N'Chittagong', 2)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (11, N'Comilla', 2)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (12, N'Cox''s Bazar', 2)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (13, N'Feni', 2)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (14, N'Khagrachhari', 2)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (15, N'Lakshmipur', 2)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (16, N'Noakhali', 2)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (17, N'Rangamati', 2)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (18, N'Dhaka', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (19, N'Faridpur', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (20, N'Gazipur', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (21, N'Gopalganj', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (22, N'Kishoreganj', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (23, N'Madaripur', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (24, N'Manikganj', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (25, N'Munshiganj', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (26, N'Narayanganj', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (27, N'Narsingdi', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (28, N'Rajbari', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (29, N'Shariatpur', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (30, N'Tangail', 3)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (31, N'Jamalpur', 5)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (32, N'Mymensingh', 5)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (33, N'Netrokona', 5)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (34, N'Sherpur', 5)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (35, N'Bogra', 6)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (36, N'Jaipurhat', 6)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (37, N'Naogaon', 6)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (38, N'Natore', 6)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (39, N'Chapai Nawabganj', 6)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (40, N'Pabna', 6)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (41, N'Rajshahi', 6)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (42, N'Sirajganj', 6)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (43, N'Dinajpur', 7)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (45, N'Gaibandha', 7)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (46, N'Kurigram', 7)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (47, N'Lalmonirhat', 7)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (48, N'Nilphamari', 7)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (49, N'Panchagarh', 7)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (50, N'Rangpur', 7)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (51, N'Thakurgaon', 7)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (52, N'Habiganj', 8)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (53, N'Moulvibazar', 8)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (54, N'Sunamganj', 8)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (55, N'Sylhet', 8)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (56, N'Bagerhat', 4)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (57, N'Chuadanga', 4)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (58, N'Jessore', 4)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (59, N'Jhenaidah', 4)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (60, N'Khulna', 4)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (61, N'Kushtia', 4)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (62, N'Magura', 4)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (63, N'Meherpur', 4)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (64, N'Narail', 4)
INSERT [dbo].[District] ([District_ID], [District_Name], [Division_ID]) VALUES (65, N'Satkhira', 4)
SET IDENTITY_INSERT [dbo].[District] OFF
SET IDENTITY_INSERT [dbo].[Division] ON 

INSERT [dbo].[Division] ([Division_ID], [Division_Name]) VALUES (1, N'Barisal')
INSERT [dbo].[Division] ([Division_ID], [Division_Name]) VALUES (2, N'Chittagong')
INSERT [dbo].[Division] ([Division_ID], [Division_Name]) VALUES (3, N'Dhaka')
INSERT [dbo].[Division] ([Division_ID], [Division_Name]) VALUES (4, N'Khulna')
INSERT [dbo].[Division] ([Division_ID], [Division_Name]) VALUES (5, N'Mymensingh')
INSERT [dbo].[Division] ([Division_ID], [Division_Name]) VALUES (6, N'Rajshahi')
INSERT [dbo].[Division] ([Division_ID], [Division_Name]) VALUES (7, N'Rangpur')
INSERT [dbo].[Division] ([Division_ID], [Division_Name]) VALUES (8, N'Sylhet')
SET IDENTITY_INSERT [dbo].[Division] OFF
SET IDENTITY_INSERT [dbo].[Email] ON 

INSERT [dbo].[Email] ([Id], [Sub], [Message], [Sender], [Receiver], [Time], [Status], [Name], [ContentType], [Data], [Attach]) VALUES (1007, N'FW : lmknlm', N'-----Original Message-----
To : sabbir@bcc.com
From: tonmoy@bcc.com
Sent Time: 08:44:19 PM   24 Jan, 2018
Subject: lmknlm


,kjbhgfchjk', N'tonmoy@bcc.com', N'sakib@bcc.com', CAST(0x0000A87901577282 AS DateTime), 0, NULL, NULL, NULL, N'No')
INSERT [dbo].[Email] ([Id], [Sub], [Message], [Sender], [Receiver], [Time], [Status], [Name], [ContentType], [Data], [Attach]) VALUES (1009, N'jgfgh', N'jghfjg', N'tonmoy@bcc.com', N'sakib@bcc.com', CAST(0x0000A87A00A1D261 AS DateTime), 0, NULL, NULL, NULL, N'No')
INSERT [dbo].[Email] ([Id], [Sub], [Message], [Sender], [Receiver], [Time], [Status], [Name], [ContentType], [Data], [Attach]) VALUES (1010, N'FW : lmknlm', N'-----Original Message-----
To : sabbir@bcc.com
From: tonmoy@bcc.com
Sent Time: 08:44:19 PM   24 Jan, 2018
Subject: lmknlm


,kjbhgfchjk', N'tonmoy@bcc.com', N'sabbir@bcc.com', CAST(0x0000A87A00A23674 AS DateTime), 0, NULL, NULL, NULL, N'No')
INSERT [dbo].[Email] ([Id], [Sub], [Message], [Sender], [Receiver], [Time], [Status], [Name], [ContentType], [Data], [Attach]) VALUES (4, N'lmknlm', N',kjbhgfchjk', N'tonmoy@bcc.com', N'sabbir@bcc.com', CAST(0x0000A8720155C2C9 AS DateTime), 0, NULL, NULL, NULL, N'No')
INSERT [dbo].[Email] ([Id], [Sub], [Message], [Sender], [Receiver], [Time], [Status], [Name], [ContentType], [Data], [Attach]) VALUES (6, N'nbvgjhknlk', N'-----Original Message-----
From : tonmoy@bcc.com
To: sakib@bcc.com
Sent Time: 08:40:51 PM   24 Jan, 2018
Subject: nbvgjhknlk


,mvjkbjnlm', N'sakib@bcc.com', N'sabbir@bcc.com', CAST(0x0000A872015731BB AS DateTime), 0, NULL, NULL, NULL, N'No')
SET IDENTITY_INSERT [dbo].[Email] OFF
SET IDENTITY_INSERT [dbo].[LatestNews] ON 

INSERT [dbo].[LatestNews] ([ID], [News], [Date]) VALUES (1, N'MCQ EXAM WILL BE HELD FOR THE POST OF PROGRAMMER.', CAST(0x0000A8FE00000000 AS DateTime))
INSERT [dbo].[LatestNews] ([ID], [News], [Date]) VALUES (2, N'ADMIT CARD WILL BE PUBLISED FOR THE EXAM OF ASSISTANT PROGRAMMER', CAST(0x0000A86500000000 AS DateTime))
INSERT [dbo].[LatestNews] ([ID], [News], [Date]) VALUES (3, N'CIRCULAR WILL BE PUBLISHED FOR THE POST OF ASSISTANT PROGRMMER.', CAST(0x0000A86100000000 AS DateTime))
INSERT [dbo].[LatestNews] ([ID], [News], [Date]) VALUES (4, N'WE WILL PROVIDE SMART CARD.', CAST(0x0000A85A00000000 AS DateTime))
INSERT [dbo].[LatestNews] ([ID], [News], [Date]) VALUES (5, N'WE WILL PUBLISHED POCKET CENSUS BOOK.', CAST(0x0000A83600000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[LatestNews] OFF
SET IDENTITY_INSERT [dbo].[Upazila] ON 

INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (1, N'Keraniganj', 18)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (2, N'Nawabganj', 18)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (3, N'Dhamrai', 18)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (4, N'Dohar', 18)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (5, N'Savar', 18)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (6, N'Faridpur Sadar', 19)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (7, N'Boalmari', 19)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (8, N'Madhukhali', 19)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (9, N'Alfadanga', 19)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (10, N'Bhanga', 19)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (11, N'Sadarpur', 19)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (12, N'Saltha', 19)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (13, N'Nagarkanda', 19)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (14, N'Charbhadrasan', 19)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (15, N'Gazipur Sadar', 20)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (16, N'Kaliakoir', 20)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (17, N'Kaliganj', 20)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (18, N'Kapasia', 20)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (19, N'Sreepur', 20)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (20, N'Gopalganj Sadar', 21)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (21, N'Kasiani', 21)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (22, N'Kotalipara', 21)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (23, N'Muksudpur', 21)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (24, N'Tungipara', 21)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (25, N'Jamalpur Sadar', 31)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (26, N'Bakshiganj', 31)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (27, N'Dewanganj', 31)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (28, N'Islampur', 31)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (29, N'Madarganj', 31)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (30, N'Melendah', 31)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (31, N'Sarishabari', 31)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (32, N'Madaripur Sadar', 23)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (33, N'Kalkini', 23)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (34, N'Rajoir', 23)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (35, N'Shibchar', 23)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (36, N'Manikganj Sadar', 24)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (37, N'Daulatpur', 24)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (38, N'Ghior', 24)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (39, N'Harirampur', 24)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (40, N'Saturia', 24)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (41, N'Shibalaya', 24)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (42, N'Singair', 24)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (43, N'Kishoreganj Sadar', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (44, N'Bajitpur', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (45, N'Pakundia', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (46, N'Nikli', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (47, N'Tarail', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (48, N'Mithamoin', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (49, N'Kuliarchar', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (50, N'Katiadi', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (51, N'Karimganj', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (52, N'Itna', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (53, N'Austagram', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (54, N'Bhairab', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (55, N'Hossainpur', 22)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (56, N'Munshiganj Sadar', 25)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (57, N'Gazaria', 25)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (58, N'Lohajang', 25)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (59, N'Serajdikhan', 25)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (60, N'Sreenagar', 25)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (61, N'Tongibari', 25)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (62, N'Mymensingh Sadar', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (63, N'Ishwarganj', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (64, N'Phulpur', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (65, N'Nandail', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (66, N'Trishal', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (67, N'Haluaghat', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (68, N'Gauripur', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (69, N'Gaffargaon', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (70, N'Fulbari', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (71, N'Dhobaura', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (72, N'Bhaluka', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (73, N'Muktagacha', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (74, N'Tarakanda', 32)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (75, N'Netrokona Sadar', 33)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (76, N'Kendua', 33)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (77, N'Purbadhala', 33)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (78, N'Mohanganj', 33)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (79, N'Madan', 33)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (80, N'Kalmakanda', 33)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (81, N'Khaliajuri', 33)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (82, N'Durgapur', 33)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (83, N'Atpara', 33)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (84, N'Barhatta', 33)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (85, N'Rajbari Sadar', 28)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (86, N'Balia Kandi', 28)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (87, N'Goalandaghat', 28)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (88, N'Pangsha', 28)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (89, N'Kalukhali', 28)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (90, N'Sherpur Sadar', 34)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (91, N'Sreebordi', 34)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (92, N'Nakla', 34)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (93, N'Jhenaigati', 34)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (94, N'Nalitabari', 34)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (95, N'Narayanganj Sadar', 26)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (96, N'Araihazar', 26)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (97, N'Sonargaon', 26)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (98, N'Bandar', 26)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (99, N'Rupganj', 26)
GO
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (100, N'Shariatpur Sadar', 29)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (101, N'Bhedarganj', 29)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (102, N'Damudya', 29)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (103, N'Goshairhat', 29)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (104, N'Naria', 29)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (105, N'Janjira', 29)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (106, N'Tangail Sadar', 30)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (107, N'Basail', 30)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (108, N'Bhuapur', 30)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (109, N'Delduar', 30)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (110, N'Ghatail', 30)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (111, N'Gopalpur', 30)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (112, N'Kalihati', 30)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (113, N'Madhupur', 30)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (114, N'Mirzapur', 30)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (115, N'Nagarpur', 30)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (116, N'Sakhipur', 30)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (117, N'Dhanbari', 30)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (118, N'Narsingdi Sadar', 27)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (119, N'Belabo', 27)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (120, N'Manohardi', 27)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (121, N'Palash', 27)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (122, N'Raipura', 27)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (123, N'Shibpur', 27)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (124, N'Bagerhat Sadar', 56)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (125, N'Chitalmari', 56)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (126, N'Fakirhat', 56)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (127, N'Kachua', 56)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (128, N'Mollahat', 56)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (129, N'Mongla', 56)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (130, N'Morrelganj', 56)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (131, N'Rampal', 56)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (132, N'Sarankhola', 56)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (133, N'Chuadanga Sadar', 57)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (134, N'Alamdanga', 57)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (135, N'Damurhuda', 57)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (136, N'Jiban Nagar', 57)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (137, N'Jessore Sadar', 58)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (138, N'Abhoynagar', 58)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (139, N'Bagher Para', 58)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (140, N'Chaugacha', 58)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (141, N'Jhikargacha', 58)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (142, N'Keshabpur', 58)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (143, N'Manirampur', 58)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (144, N'Sharsha', 58)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (145, N'Jhenaidaha Sadar', 59)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (146, N'Kaliganj', 59)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (147, N'Harinakunda', 59)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (148, N'Kotchandpur', 59)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (149, N'Maheshpur', 59)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (150, N'Shailkupa', 59)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (151, N'Batiaghata', 60)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (152, N'Dacope', 60)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (153, N'Dighalia', 60)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (154, N'Dumuria', 60)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (155, N'Koyra', 60)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (156, N'Paikgacha', 60)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (157, N'Phultala', 60)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (158, N'Rupsa', 60)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (159, N'Terokhada', 60)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (160, N'Kushtia Sadar', 61)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (161, N'Bheramara', 61)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (162, N'Daulatpur', 61)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (163, N'Khoksha', 61)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (164, N'Kumarkhali', 61)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (165, N'Mirpur', 61)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (166, N'Meherpur Sadar', 63)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (167, N'Mojibnagar', 63)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (168, N'Gangni', 63)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (169, N'Magura Sadar', 62)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (170, N'Mohammadpur', 62)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (171, N'Shalikha', 62)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (172, N'Sreepur', 62)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (173, N'Narail Sadar', 64)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (174, N'Lohagara', 64)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (175, N'Kalia', 64)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (176, N'Satkhira Sadar', 65)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (177, N'Assasuni', 65)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (178, N'Debhata', 65)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (179, N'Kalaroa', 65)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (180, N'Kaliganj', 65)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (181, N'Shyamnagar', 65)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (182, N'Tala', 65)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (183, N'Bogra Sadar', 35)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (184, N'Adamdighi', 35)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (185, N'Dhunat', 35)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (186, N'Dhupchanchia', 35)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (187, N'Gabtali', 35)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (188, N'Kahaloo', 35)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (189, N'Nandigram', 35)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (190, N'Sariakandi', 35)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (191, N'Sherpur', 35)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (192, N'Shibganj', 35)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (193, N'Shajahanpur', 35)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (194, N'Sonatola', 35)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (195, N'Joypurhat Sadar', 36)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (196, N'Akkelpur', 36)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (197, N'Kalai', 36)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (198, N'Khetlal', 36)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (199, N'Panchbibi', 36)
GO
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (200, N'Naogaon Sadar', 37)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (201, N'Atrai', 37)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (202, N'Badalgachi', 37)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (203, N'Dhamoirhat', 37)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (204, N'Manda', 37)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (205, N'Mohadevpur', 37)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (206, N'Niamatpur', 37)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (207, N'Patnitala', 37)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (208, N'Porsha', 37)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (209, N'Raninagar', 37)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (210, N'Shapahar', 37)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (211, N'Natore Sadar', 38)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (212, N'Bagatipara', 38)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (213, N'Baraigram', 38)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (214, N'Gurudaspur', 38)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (215, N'Lalpur', 38)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (216, N'Singra', 38)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (217, N'Naldanga', 38)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (218, N'C.Nawabganj Sadar', 39)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (219, N'Bholahat', 39)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (220, N'Gomastapur', 39)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (221, N'Nachole', 39)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (222, N'Shibganj', 39)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (223, N'Pabna Sadar', 40)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (224, N'Atgharia', 40)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (225, N'Bera', 40)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (226, N'Bhangura', 40)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (227, N'Chatmohar', 40)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (228, N'Faridpur', 40)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (229, N'Ishwardi', 40)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (230, N'Santhia', 40)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (231, N'Sujanagar', 40)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (232, N'Bagha', 41)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (233, N'Baghmara', 41)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (234, N'Charghat', 41)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (235, N'Durgapur', 41)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (236, N'Godagari', 41)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (237, N'Mohanpur', 41)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (238, N'Paba', 41)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (239, N'Puthia', 41)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (240, N'Tanore', 41)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (241, N'Sirajganj Sadar', 42)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (242, N'Belkuchi', 42)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (243, N'Chowhali', 42)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (244, N'Kamarkhanda', 42)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (245, N'Kazipur', 42)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (246, N'Raiganj', 42)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (247, N'Shahjadpur', 42)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (248, N'Tarash', 42)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (249, N'Ullahpara', 42)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (250, N'Gaibandha Sadar', 45)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (251, N'Gobindaganj', 45)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (252, N'Fulchhari', 45)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (253, N'Palashbari', 45)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (254, N'Sadullapur', 45)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (255, N'Shaghata', 45)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (256, N'Sundarganj', 45)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (257, N'Kurigram Sadar', 46)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (258, N'Bhurungamari', 46)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (259, N'Char Rajibpur', 46)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (260, N'Chilmari', 46)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (261, N'Phulbari', 46)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (262, N'Nageswari', 46)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (263, N'Rajarhat', 46)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (264, N'Rowmari', 46)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (265, N'Ulipur', 46)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (266, N'Lalmonirhat Sadar', 47)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (267, N'Aditmari', 47)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (268, N'Hatibandha', 47)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (269, N'Patgram', 47)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (270, N'Kaliganj', 47)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (271, N'Nilphamari Sadar', 48)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (272, N'Kishoreganj', 48)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (273, N'Jaldhaka', 48)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (274, N'Domar', 48)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (275, N'Dimla', 48)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (276, N'Sayedpur', 48)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (277, N'Panchagarh Sadar', 49)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (278, N'Atwari', 49)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (279, N'Boda', 49)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (280, N'Debiganj', 49)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (281, N'Tetulia', 49)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (282, N'Rangpur Sadar', 50)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (283, N'Badarganj', 50)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (284, N'Gangachara', 50)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (285, N'Kaunia', 50)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (286, N'Mitah Pukur', 50)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (287, N'Pirgacha', 50)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (288, N'Pirganj', 50)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (289, N'Taraganj', 50)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (290, N'Thakurgaon Sadar', 51)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (291, N'Baliadangi', 51)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (292, N'Haripur', 51)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (293, N'Pirganj', 51)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (294, N'Ranisankail', 51)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (295, N'Dinajpur Sadar', 43)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (296, N'Birampur', 43)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (297, N'Birganj', 43)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (298, N'Bochaganj', 43)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (299, N'Chirirbandar', 43)
GO
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (300, N'Fulbari', 43)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (301, N'Ghoraghat', 43)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (302, N'Hakimpur', 43)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (303, N'Kaharol', 43)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (304, N'Khanshama', 43)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (305, N'Nawabganj', 43)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (306, N'Parbatipur', 43)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (307, N'Biral', 43)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (308, N'Habiganj Sadar', 52)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (309, N'Azmiriganj', 52)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (310, N'Bahubal', 52)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (311, N'Baniachong', 52)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (312, N'Chunarughat', 52)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (313, N'Lakhai', 52)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (314, N'Madhabpur', 52)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (315, N'Nabiganj', 52)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (316, N'Moulvibazar Sadar', 53)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (317, N'Barlekha', 53)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (318, N'Kamalganj', 53)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (319, N'Kulaura', 53)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (320, N'Rajnagar', 53)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (321, N'Sreemangal', 53)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (322, N'Juri', 53)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (323, N'Sunamganj Sadar', 54)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (324, N'Biswamvarpur', 54)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (325, N'Chatak', 54)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (326, N'Derai', 54)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (327, N'Dharampasha', 54)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (328, N'Dowarabazar', 54)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (329, N'Jagannathpur', 54)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (330, N'Jamalganj', 54)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (331, N'Sulla', 54)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (332, N'Tahirpur', 54)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (333, N'Sunamganj Dakshin', 54)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (334, N'Sylhet Sadar', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (335, N'Balaganj', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (336, N'Beani Bazar', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (337, N'Biswanath', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (338, N'Companiganj', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (339, N'Fenchuganj', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (340, N'Golapganj', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (341, N'Gowainghat', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (342, N'Jointiapur', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (343, N'Kanaighat', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (344, N'Dakshin Surma', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (345, N'Zakiganj', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (346, N'Osmaninagar', 55)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (347, N'Barisal Sadar', 2)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (348, N'Agailjhara', 2)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (349, N'Babuganj', 2)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (350, N'Bakerganj', 2)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (351, N'Banaripara', 2)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (352, N'Gouranadi', 2)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (353, N'Hizla', 2)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (354, N'Mehendiganj', 2)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (355, N'Muladi', 2)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (356, N'Uzirpur', 2)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (357, N'Barguna Sadar', 1)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (358, N'Amtali', 1)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (359, N'Bamna', 1)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (360, N'Betagi', 1)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (361, N'Patharghata', 1)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (362, N'Taltali', 1)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (363, N'Bhola Sadar', 3)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (364, N'Burhanuddin', 3)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (365, N'Charfassion', 3)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (366, N'Daulatkhan', 3)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (367, N'Lalmohan', 3)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (368, N'Monpura', 3)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (369, N'Tazumuddin', 3)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (370, N'Jhalokathi Sadar', 4)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (371, N'Kathalia', 4)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (372, N'Nalchity', 4)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (373, N'Rajapur', 4)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (374, N'Patuakhali Sadar', 5)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (375, N'Bauphal', 5)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (376, N'Dashmina', 5)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (377, N'Dumki', 5)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (378, N'Galachipa', 5)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (379, N'Kalapara', 5)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (380, N'Mirza Ganj', 5)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (381, N'Rangabali', 5)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (382, N'Pirojpur Sadar', 6)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (383, N'Bhandaria', 6)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (384, N'Kawkhali', 6)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (385, N'Matbaria', 6)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (386, N'Nazirpur', 6)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (387, N'Nesarabad', 6)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (388, N'Zia Nagar', 6)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (389, N'Bandarban Sadar', 7)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (390, N'Alikadam', 7)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (391, N'Lama', 7)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (392, N'Naikhongchhari', 7)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (393, N'Rowangchhari', 7)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (394, N'Ruma', 7)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (395, N'Thanchi', 7)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (396, N'Brahmanbaria Sadar', 8)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (397, N'Akhaura', 8)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (398, N'Ashuganj', 8)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (399, N'Bancharampur', 8)
GO
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (400, N'Kasba', 8)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (401, N'Nabinagar', 8)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (402, N'Nasirnagar', 8)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (403, N'Sarail', 8)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (404, N'Bijoynagar', 8)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (405, N'Chandpur Sadar', 9)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (406, N'Faridganj', 9)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (407, N'Haim Char', 9)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (408, N'Hajiganj', 9)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (409, N'Kachua', 9)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (410, N'Dakshin Matlab', 9)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (411, N'Uttar Matlab', 9)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (412, N'Shahrasti', 9)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (413, N'Anowara', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (414, N'Banshkhali', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (415, N'Boal Khali', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (416, N'Chandanaish', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (417, N'Fatikchhari', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (418, N'Hathazari', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (419, N'Lohagara', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (420, N'Mirsharai', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (421, N'Patiya', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (422, N'Rangunia', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (423, N'Raujan', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (424, N'Sandwip', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (425, N'Satkania', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (426, N'Karnafuli', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (427, N'Sitakunda', 10)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (428, N'Comilla Sadar', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (429, N'Barura', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (430, N'Brahmanpara', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (431, N'Burichong', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (432, N'Chandina', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (433, N'Chouddagram', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (434, N'Daudkandi', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (435, N'Debidwar', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (436, N'Homna', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (437, N'Laksham', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (438, N'Meghna', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (439, N'Muradnagar', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (440, N'Nangalkot', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (441, N'Titas', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (442, N'Comilla Dakshin', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (443, N'Monohorganj', 11)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (444, N'Cox'' S Bazar Sadar', 12)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (445, N'Chakoria', 12)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (446, N'Kutubdia', 12)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (447, N'Moheskhali', 12)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (448, N'Ramu', 12)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (449, N'Teknaf', 12)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (450, N'Ukhiya', 12)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (451, N'Pekua', 12)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (452, N'Feni Sadar', 13)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (453, N'Chagalniya', 13)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (454, N'Daganbhuiyan', 13)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (455, N'Porshuram', 13)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (456, N'Sonagazi', 13)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (457, N'Fulgazi', 13)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (458, N'Khagrchari Sadar', 14)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (459, N'Dighinala', 14)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (460, N'Laxmichari', 14)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (461, N'Mahalchari', 14)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (462, N'Manikchari', 14)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (463, N'Matiranga', 14)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (464, N'Panchari', 14)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (465, N'Ramgarh', 14)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (466, N'Guimara', 14)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (467, N'Lakshmipur Sadar', 15)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (468, N'Raipur', 15)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (469, N'Ramganj', 15)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (470, N'Ramgati', 15)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (471, N'Kamalnagar', 15)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (472, N'Noakhali Sadar', 16)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (473, N'Begumganj', 16)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (474, N'Chatkhil', 16)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (475, N'Companiganj', 16)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (476, N'Hatiya', 16)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (477, N'Subarna Char', 16)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (478, N'Sonaimuri', 16)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (479, N'Senbagh', 16)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (480, N'Kabirhat', 16)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (481, N'Rangamati Sadar', 17)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (482, N'Baghaichari', 17)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (483, N'Barkal', 17)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (484, N'Kaukhali', 17)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (485, N'Belaichhari', 17)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (486, N'Kaptai', 17)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (487, N'Juraichari', 17)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (488, N'Langadu', 17)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (489, N'Nanniarchar', 17)
INSERT [dbo].[Upazila] ([Upazila_ID], [Upazila_Name], [District_ID]) VALUES (490, N'Rajasthali', 17)
SET IDENTITY_INSERT [dbo].[Upazila] OFF
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([User_ID], [FullName], [UserName], [Password], [Role], [Mobile], [Address], [Division], [Date]) VALUES (1, N'Ataul Haq', N'tonmoy@bcc.com', N'12345', N'Admin', N'0172', N'Badda', N'Dhaka', CAST(0x00009E6700000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
