/*
=================================================================
create database and schemas
=================================================================
Script purpose:
       This script creates a new database named 'Datawarehouse' after checking if it already exists.
       If the databse exists, it is dropped and created. Additionally, the script sets up three schemas within the database: 'bronze', 'silver', 'gold'.
WARNING:
      Running this script will drop the entire 'Datawarehouse; database if it exists.
      All data in the database will be permanently deleted, proceed with caution and ensure you have proper backups before running this script
*/

USE master;
GO
--Drop and recreate the 'Datawarehouse' database

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
   ALTER DATABASE Datawarehouse  SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
   DROP DATABASE Datawarehouse;
END;
GO

--create the 'Datawarehouse' database
CREATE DATABASE Datawarehouse;
GO
USE Datawarehouse;
GO

--create schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
