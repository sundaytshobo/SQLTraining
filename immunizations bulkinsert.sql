USE [Emade_Dev]
GO

/****** Object:  Table [dbo].[immunizations]    Script Date: 5/7/2025 8:10:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[immunizations](
	[DATE] [varchar](50) NULL,
	[PATIENT] [varchar](50) NULL,
	[ENCOUNTER] [varchar](50) NULL,
	[CODE] [tinyint] NULL,
	[DESCRIPTION] [varchar](50) NULL,
	[BASE_COST] [float] NULL
) ON [PRIMARY]
GO


bulk insert [immunizations] from 'C:\Users\Owner\Documents\ETL Training\Inbound\Data\Healthcare Project\immunizations.csv'with(format='csv', firstrow = 2,fieldterminator=',',rowterminator='0x0a')select *from [immunizations]