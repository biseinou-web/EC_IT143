-- Step 4: Test an ad hoc SQL query on the customer table
-- Script name: EC_IT143_6.3_fwf_s4_sbs.sql

SELECT 
    ContactName,
    LTRIM(RTRIM(SUBSTRING(ContactName, 1, CHARINDEX(' ', ContactName + ' ') - 1))) AS FirstNameCleaned
FROM dbo.t_w3_schools_customers;