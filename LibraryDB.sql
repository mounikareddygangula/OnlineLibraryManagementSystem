USE [LIBRARY]
GO
/****** Object:  Table [dbo].[Assign]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Assign](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[assignid]  AS ('AS'+right('000'+CONVERT([varchar](3),[id],(0)),(6))),
	[studentid] [nvarchar](50) NULL,
	[bookid] [nvarchar](50) NULL,
	[assigneddate] [nvarchar](50) NULL,
	[returndate] [nvarchar](50) NULL,
	[penality] [nvarchar](50) NULL,
	[statusid] [nchar](10) NULL,
	[updatestatusdate] [nvarchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BookRecord]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BookRecord](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[bookid] [nvarchar](50) NOT NULL,
	[bookname] [nvarchar](250) NULL,
	[bookpubname] [nvarchar](50) NULL,
	[bookpubyear] [nvarchar](50) NULL,
	[bookprice] [nvarchar](50) NULL,
	[bookquantity] [nvarchar](50) NULL,
	[recorddate] [nvarchar](50) NULL,
 CONSTRAINT [PK_BookRecord] PRIMARY KEY CLUSTERED 
(
	[bookid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[statusdetails]    ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[statusdetails](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[statusid] [nchar](10) NOT NULL,
	[statusname] [nvarchar](50) NULL,
 CONSTRAINT [PK_statusdetails] PRIMARY KEY CLUSTERED 
(
	[statusid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]     ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[studentid] [nvarchar](50) NOT NULL,
	[studentname] [nvarchar](50) NULL,
	[studentbranch] [nvarchar](50) NULL,
	[studentyear] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[studentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Assign] ON 

GO
INSERT [dbo].[Assign] ([id], [studentid], [bookid], [assigneddate], [returndate], [penality], [statusid], [updatestatusdate]) VALUES (25, N'S26', N'LM2018', N'14/11/2016', N'10/11/2016', N'0', N'std3      ', N'14/11/2016')
GO
SET IDENTITY_INSERT [dbo].[Assign] OFF
GO
SET IDENTITY_INSERT [dbo].[BookRecord] ON 

GO
INSERT [dbo].[BookRecord] ([id], [bookid], [bookname], [bookpubname], [bookpubyear], [bookprice], [bookquantity], [recorddate]) VALUES (10, N'', N'', N'', N'ert', N'', N'', N'13/11/2016')
GO
INSERT [dbo].[BookRecord] ([id], [bookid], [bookname], [bookpubname], [bookpubyear], [bookprice], [bookquantity], [recorddate]) VALUES (9, N'456', N'pravin', N'3456', N'2012', N'45', N'34', N'27/10/2016')
GO
INSERT [dbo].[BookRecord] ([id], [bookid], [bookname], [bookpubname], [bookpubyear], [bookprice], [bookquantity], [recorddate]) VALUES (1, N'BID0001', N'ASP.NET Fundamental', N'Hi-Tech Publication', N'2015', N'520', N'40', N'8/21/2015')
GO
INSERT [dbo].[BookRecord] ([id], [bookid], [bookname], [bookpubname], [bookpubyear], [bookprice], [bookquantity], [recorddate]) VALUES (2, N'BID0002', N'C#.NET Unleashed', N'Apress Publication', N'2013', N'315', N'25', N'8/21/2015')
GO
INSERT [dbo].[BookRecord] ([id], [bookid], [bookname], [bookpubname], [bookpubyear], [bookprice], [bookquantity], [recorddate]) VALUES (3, N'BID0003', N'SQL Server 2012', N'Spectrum Publication', N'2012', N'375', N'30', N'8/21/2015')
GO
INSERT [dbo].[BookRecord] ([id], [bookid], [bookname], [bookpubname], [bookpubyear], [bookprice], [bookquantity], [recorddate]) VALUES (4, N'BID0004', N'HTML & CSS', N'Spectrum Publication', N'2012', N'175', N'25', N'8/21/2015')
GO
INSERT [dbo].[BookRecord] ([id], [bookid], [bookname], [bookpubname], [bookpubyear], [bookprice], [bookquantity], [recorddate]) VALUES (5, N'BID0005', N'JQuery Cookbook', N'Wrox', N'2014', N'250', N'35', N'8/21/2015')
GO
INSERT [dbo].[BookRecord] ([id], [bookid], [bookname], [bookpubname], [bookpubyear], [bookprice], [bookquantity], [recorddate]) VALUES (6, N'BID0006', N'ASP.NET MVC', N'Apress', N'2013', N'300', N'15', N'8/21/2015')
GO
INSERT [dbo].[BookRecord] ([id], [bookid], [bookname], [bookpubname], [bookpubyear], [bookprice], [bookquantity], [recorddate]) VALUES (8, N'BID0008', N'PHP 5', N'P6', N'2015', N'370', N'50', N'8/21/2015')
GO
INSERT [dbo].[BookRecord] ([id], [bookid], [bookname], [bookpubname], [bookpubyear], [bookprice], [bookquantity], [recorddate]) VALUES (12, N'LM2018', N'Ragg With C', N'Tata Mc grew Hill', N'2010', N'545', N'19', N'10/08/2016')
GO
SET IDENTITY_INSERT [dbo].[BookRecord] OFF
GO
SET IDENTITY_INSERT [dbo].[statusdetails] ON 

GO
INSERT [dbo].[statusdetails] ([id], [statusid], [statusname]) VALUES (1, N'std1      ', N'Pending')
GO
INSERT [dbo].[statusdetails] ([id], [statusid], [statusname]) VALUES (2, N'std2      ', N'Closed')
GO
INSERT [dbo].[statusdetails] ([id], [statusid], [statusname]) VALUES (3, N'std3      ', N'In Progress')
GO
SET IDENTITY_INSERT [dbo].[statusdetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 

GO
INSERT [dbo].[Student] ([id], [studentid], [studentname], [studentbranch], [studentyear]) VALUES (20, N's20', N'Pravin Kumar', N'MCA', N'3rd Year')
GO
INSERT [dbo].[Student] ([id], [studentid], [studentname], [studentbranch], [studentyear]) VALUES (21, N's21', N'Praveen', N'ME', N'3rd Year')
GO
INSERT [dbo].[Student] ([id], [studentid], [studentname], [studentbranch], [studentyear]) VALUES (22, N's22', N'Surya', N'EEE', N'3rd Year')
GO
INSERT [dbo].[Student] ([id], [studentid], [studentname], [studentbranch], [studentyear]) VALUES (23, N's23', N'Sai Charan', N'MCA', N'1st Year')
GO
INSERT [dbo].[Student] ([id], [studentid], [studentname], [studentbranch], [studentyear]) VALUES (24, N's24', N'Divya', N'CSE', N'2nd Year')
GO
INSERT [dbo].[Student] ([id], [studentid], [studentname], [studentbranch], [studentyear]) VALUES (25, N's25', N'Neeraj Pradhan', N'MCA', N'2nd Year')
GO
INSERT [dbo].[Student] ([id], [studentid], [studentname], [studentbranch], [studentyear]) VALUES (26, N'S26', N'PRAVIN KUMAR', N'BBA', N'4th year')
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
ALTER TABLE [dbo].[Assign]  WITH CHECK ADD  CONSTRAINT [FK_Assign_BookRecord] FOREIGN KEY([bookid])
REFERENCES [dbo].[BookRecord] ([bookid])
GO
ALTER TABLE [dbo].[Assign] CHECK CONSTRAINT [FK_Assign_BookRecord]
GO
ALTER TABLE [dbo].[Assign]  WITH CHECK ADD  CONSTRAINT [FK_Assign_Student] FOREIGN KEY([studentid])
REFERENCES [dbo].[Student] ([studentid])
GO
ALTER TABLE [dbo].[Assign] CHECK CONSTRAINT [FK_Assign_Student]
GO
