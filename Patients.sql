/*
   Friday, January 27, 20234:03:29 PM
   User: 
   Server: BEAMMARIPC\SQLEXPRESS
   Database: HI520_Medical_DB
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.Patients
	DROP COLUMN helath
GO
ALTER TABLE dbo.Patients SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Patients', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Patients', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Patients', 'Object', 'CONTROL') as Contr_Per 