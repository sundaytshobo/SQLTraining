USE [Emade_Dev]
GO

/****** Object:  Table [dbo].[devices]    Script Date: 4/30/2025 10:49:21 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[allergies](
	[START] [date] NULL,
	[STOP] [date] NULL,
	[PATIENT] [varchar](150) NULL,
	[ENCOUNTER] [varchar](150) NULL,
	[CODE] [int] NULL,
	[DESCRIPTION] [varchar](150) NULL,
	[UDI] [varchar](150) NULL
) ON [PRIMARY]
GO


