/*
===============================================================================
Stored Procedure: Load Bronze Layer (Source -> Bronze)
===============================================================================
Script Purpose:
    This stored procedure loads data into the 'bronze' schema from external CSV files. 
    It performs the following actions:
    - Truncates the bronze tables before loading data.
    - Uses the `BULK INSERT` command to load data from csv Files to bronze tables.

Parameters:
    None. 
	  This stored procedure does not accept any parameters or return any values.

Usage Example:
    EXEC bronze.load_bronze;
===============================================================================
*/
CREATE OR ALTER PROCEDURE bronze.load_bronze
AS
BEGIN
DECLARE @start_time DATETIME, @end_time DATETIME, @batch_start_time  DATETIME, @batch_end_time DATETIME;
BEGIN TRY
    SET NOCOUNT ON;

    PRINT '===========================================';
    PRINT 'Loading Bronze Layer';
    PRINT '===========================================';

    ----------------------------------------------------
    -- CRM TABLES
    ----------------------------------------------------
    PRINT '-------------------------------------------';
    PRINT 'Loading CRM Tables';
    PRINT '-------------------------------------------';

    -- CRM Customer Info
    SET @start_time=GETDATE();
    PRINT '>> Truncating bronze.crm_cust_info';
    TRUNCATE TABLE bronze.crm_cust_info;
    PRINT '>> Inserting bronze.crm_cust_info';
    BULK INSERT bronze.crm_cust_info
    FROM 'C:\Users\saisr\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    SET @end_time=GETDATE();
    PRINT'>> LOAD Duration:' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR)+ 'seconds';
    PRINT'--------------------------'

    -- CRM Product Info
    SET @start_time=GETDATE();
    PRINT '>> Truncating bronze.crm_prd_info';
    TRUNCATE TABLE bronze.crm_prd_info;
    PRINT '>> Inserting bronze.crm_prd_info';
    BULK INSERT bronze.crm_prd_info
    FROM 'C:\Users\saisr\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    SET @end_time=GETDATE();
    PRINT'>> LOAD Duration:' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR)+ 'seconds';
    PRINT'--------------------------'
    -- CRM Sales Details
    SET @start_time=GETDATE();
    PRINT '>> Truncating bronze.crm_sales_details';
    TRUNCATE TABLE bronze.crm_sales_details;

    PRINT '>> Inserting bronze.crm_sales_details';
    BULK INSERT bronze.crm_sales_details
    FROM 'C:\Users\saisr\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    SET @end_time=GETDATE();
    PRINT'>> LOAD Duration:' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR)+ 'seconds';
    PRINT'--------------------------'

    ----------------------------------------------------
    -- ERP TABLES
    ----------------------------------------------------
    PRINT '-------------------------------------------';
    PRINT 'Loading ERP Tables';
    PRINT '-------------------------------------------';

    -- ERP Location
    SET @start_time=GETDATE();
    PRINT '>> Truncating bronze.erp_loc_a101';
    TRUNCATE TABLE bronze.erp_loc_a101;

    PRINT '>> Inserting bronze.erp_loc_a101';
    BULK INSERT bronze.erp_loc_a101
    FROM 'C:\Users\saisr\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    SET @end_time=GETDATE();
    PRINT'>> LOAD Duration:' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR)+ 'seconds';
    PRINT'--------------------------'

    -- ERP Customer
    SET @start_time=GETDATE();
    PRINT '>> Truncating bronze.erp_cust_az12';
    TRUNCATE TABLE bronze.erp_cust_az12;

    PRINT '>> Inserting bronze.erp_cust_az12';
    BULK INSERT bronze.erp_cust_az12
    FROM 'C:\Users\saisr\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    SET @end_time=GETDATE();
    PRINT'>> LOAD Duration:' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR)+ 'seconds';
    PRINT'--------------------------'
    -- ERP Product Category
    SET @start_time=GETDATE();
    PRINT '>> Truncating bronze.erp_px_cat_g1v2';
    TRUNCATE TABLE bronze.erp_px_cat_g1v2;
    PRINT '>> Inserting bronze.erp_px_cat_g1v2';
    BULK INSERT bronze.erp_px_cat_g1v2
    FROM 'C:\Users\saisr\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
    WITH
    (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        TABLOCK
    );
    SET @end_time=GETDATE();
    PRINT'>> LOAD Duration:' + CAST(DATEDIFF(second, @start_time, @end_time) AS NVARCHAR)+ 'seconds';
    PRINT'--------------------------'

    PRINT '===========================================';
    PRINT 'Bronze Layer Loaded Successfully';
    PRINT '===========================================';
    END TRY
    BEGIN CATCH
    PRINT'===================================================';
    PRINT'ERROR OCCURED DURING LOADING BRONZE LAYER'
    PRINT'Error Message' + ERROR_MESSAGE();
    PRINT'Error Message' + CAST( ERROR_MESSAGE() AS NVARCHAR);
    PRINT'Error Message' + CAST(ERROR_MESSAGE() AS NVARCHAR);
    PRINT'===================================================';
    END CATCH

END;
GO
