/*
===============================================================================
 Project      : SQL Data Warehouse Project
 File Name    : init_database.sql
 Author        : Satwika Alluri
 Description   : Database Initialization Script
===============================================================================

Purpose
-------
This script initializes the SQL Data Warehouse environment by creating a new
database named 'DataWarehouse' and the required schemas used throughout the
project.

The script performs the following operations:

1. Checks whether the DataWarehouse database already exists.
2. Drops the existing database after disconnecting active sessions.
3. Creates a fresh DataWarehouse database.
4. Creates the Bronze, Silver, and Gold schemas.

Schemas
-------
• bronze  : Stores raw data imported directly from source systems.
• silver  : Stores cleansed and transformed datasets.
• gold    : Stores business-ready data optimized for analytics.

Warning
-------
Executing this script will permanently delete the existing DataWarehouse
database along with all tables, views, procedures, and stored data.

Ensure you have a backup before running this script in a production
environment.

===============================================================================
*/

-- ============================================================================
-- Switch to the Master Database
-- ============================================================================

USE master;
GO

-- ============================================================================
-- Drop Existing Database (If It Exists)
-- ============================================================================

IF EXISTS (
    SELECT 1
    FROM sys.databases
    WHERE name = 'DataWarehouse'
)
BEGIN
    ALTER DATABASE DataWarehouse
    SET SINGLE_USER WITH ROLLBACK IMMEDIATE;

    DROP DATABASE DataWarehouse;
END;
GO

-- ============================================================================
-- Create New Database
-- ============================================================================

CREATE DATABASE DataWarehouse;
GO

-- ============================================================================
-- Use the Newly Created Database
-- ============================================================================

USE DataWarehouse;
GO

-- ============================================================================
-- Create Bronze Schema
-- Raw data imported from ERP & CRM systems
-- ============================================================================

CREATE SCHEMA bronze;
GO

-- ============================================================================
-- Create Silver Schema
-- Cleaned, standardized, and validated data
-- ============================================================================

CREATE SCHEMA silver;
GO

-- ============================================================================
-- Create Gold Schema
-- Business-ready analytical data model
-- ============================================================================

CREATE SCHEMA gold;
GO

-- ============================================================================
-- Database Initialization Completed
-- ============================================================================

PRINT '------------------------------------------------------';
PRINT 'DataWarehouse database created successfully.';
PRINT 'Schemas created: bronze, silver, gold.';
PRINT 'Database initialization completed.';
PRINT '------------------------------------------------------';
GO
