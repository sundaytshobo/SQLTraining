USE [Emade_Dev]
GO

/****** Object:  Table [dbo].[medications]    Script Date: 5/7/2025 8:15:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO
DROP TABLE IF EXISTS  [dbo].[medications]
CREATE TABLE [dbo].[medications](
	[START] [varchar](250) NULL,
	[STOP] [varchar](250) NULL,
	[PATIENT] [varchar](250) NULL,
	[PAYER] [varchar](250) NULL,
	[ENCOUNTER] [varchar](250) NULL,
	[CODE] [bigint] NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[BASE_COST] [float] NULL,
	[PAYER_COVERAGE] [float] NULL,
	[DISPENSES] [smallint] NULL,
	[TOTALCOST] [float] NULL,
	[REASONCODE] [bigint] NULL,
	[REASONDESCRIPTION] [varchar](250) NULL
) ON [PRIMARY]
GO


bulk insert [medications] from 'C:\Users\Owner\Documents\ETL Training\Inbound\Data\Healthcare Project\medications.csv'with(format='csv', firstrow = 2,fieldterminator=',',rowterminator='0x0a')select *from [medications]