-- Step 3: Add auditing columns to the table
-- Script name: EC_IT143_6.3_fwt_s3_sbs.sql

ALTER TABLE dbo.t_w3_schools_customers
ADD LastModifiedDate DATETIME NULL,
    LastModifiedBy VARCHAR(100) NULL;
GO