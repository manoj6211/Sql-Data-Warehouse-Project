/* 
======================================================
Create Database and Schemas

=======================================================

Script Purpose:
	This script creates a new database named 'DataWarehouse' after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up threeschemas
	within the database: 'bronze' , 'silver' , and 'gold' .

WARNING:
	Running this script will drop the entire 'DataWarehouse' database if it exists.
	
	All data in the database will be permanently deleted. Proceed with caution

	and ensure you have proper backups before running this script.
*/


USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	
	ALTER DATABASE DataWarehouse SET USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO
-- Create Database 'DataWarehouse' database

CREATE DATABASE DataWarehouse;
GO

Use DataWarehouse;
GO

--Create Schemas
Create Schema bronze;
GO

Create Schema silver;
GO

Create Schema gold;
GO
