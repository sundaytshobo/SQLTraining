USE [Emade_Dev]
GO

/****** Object:  Table [dbo].[imaging_studies]    Script Date: 5/7/2025 8:06:49 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[imaging_studies](
	[Id] [varchar](50) NULL,
	[DATE] [varchar](50) NULL,
	[PATIENT] [varchar](50) NULL,
	[ENCOUNTER] [varchar](50) NULL,
	[BODYSITE_CODE] [int] NULL,
	[BODYSITE_DESCRIPTION] [varchar](50) NULL,
	[MODALITY_CODE] [varchar](50) NULL,
	[MODALITY_DESCRIPTION] [varchar](50) NULL,
	[SOP_CODE] [varchar](50) NULL,
	[SOP_DESCRIPTION] [varchar](50) NULL
) ON [PRIMARY]
GO


bulk insert [imaging_studies] from 'C:\Users\Owner\Documents\ETL Training\Inbound\Data\Healthcare Project\imaging_studies.csv'with(format='csv', firstrow = 2,fieldterminator=',',rowterminator='0x0a')select *from [imaging_studies]