USE [Emade_Dev]
GO

/****** Object:  Table [dbo].[FoodCo]    Script Date: 4/9/2025 9:55:24 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Drop Table if exists FoodCo
CREATE TABLE [dbo].[FoodCo](
ID Int Identity( 1,1), 
	[FruitsName] [varchar](50) NOT NULL,
	[Amount] [int] NULL
) ON [PRIMARY]
GO


