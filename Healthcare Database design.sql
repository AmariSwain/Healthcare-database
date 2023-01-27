USE [HI520_Medical_DB]
GO

/****** Object:  Table [dbo].[Patients]    Script Date: 1/27/2023 3:40:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Patients](
	[PatientsID] [int] NOT NULL,
	[PatientFullName] [varchar](50) NOT NULL,
	[DOB] [date] NOT NULL,
	[Gender] [bit] NOT NULL,
	[EmergencyContactPhoneNumber] [int] NOT NULL,
	[EmergencyContactName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Patients] PRIMARY KEY CLUSTERED 
(
	[PatientsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

