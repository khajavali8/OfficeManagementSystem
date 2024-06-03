USE [OfficeManagementSystem]
GO

/****** Object:  Table [dbo].[mstregister]    Script Date: 30-05-2024 12:56:15 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[mstregister](
	[username] [varchar](50) NULL,
	[password] [varchar](50) NULL,
	[name] [varchar](50) NULL,
	[mobile] [char](10) NULL,
	[Gender] [nchar](1) NULL,
	[Course] [varchar](50) NULL,
	[address] [varchar](200) NULL
) ON [PRIMARY]
GO


USE [OfficeManagementSystem]
GO


