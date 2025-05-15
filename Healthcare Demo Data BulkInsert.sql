USE [Emade_Dev]
GO

/****** Object:  Table [dbo].[Healthcare Demo Data]    Script Date: 5/7/2025 7:48:39 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Healthcare Demo Data](
	[encounter_id] [varchar](250) NULL,
	[start] [datetime2](7) NULL,
	[stop] [datetime2](7) NULL,
	[encounterclass] [varchar](250) NULL,
	[enc_type] [varchar](250) NULL,
	[base_encounter_cost] [float] NULL,
	[total_claim_cost] [float] NULL,
	[organization] [varchar](250) NULL,
	[enc_reason] [varchar](250) NULL,
	[payer] [varchar](250) NULL,
	[payer_category] [varchar](250) NULL,
	[patient_id] [varchar](250) NULL,
	[first] [varchar](250) NULL,
	[last] [varchar](250) NULL,
	[birthdate] [date] NULL,
	[ethnicity] [varchar](250) NULL,
	[race] [varchar](250) NULL,
	[zip] [smallint] NULL,
	[flu_2022] [bit] NULL,
	[covid] [bit] NULL,
	[org_name] [varchar](250) NULL,
	[org_zip] [int] NULL,
	[org_city] [varchar](250) NULL,
	[org_state] [varchar](250) NULL
) ON [PRIMARY]
GO


bulk insert [Healthcare Demo Data] from 'C:\Users\Owner\Documents\ETL Training\Inbound\Data\Healthcare Project\Healthcare Demo Data.csv'with(format='csv', firstrow = 2,fieldterminator=',',rowterminator='0x0a')select *from HealthcareDemoDataBulkInserts