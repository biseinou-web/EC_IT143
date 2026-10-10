-- Step 7: Perform a “0 results expected” test
-- Script name: EC_IT143_6.3_fwf_s7_sbs.sql

WITH CTE_Compare AS (
    SELECT 
        SUBSTRING(ContactName, 1, CHARINDEX(' ', ContactName + ' ') - 1) AS AdHoc_FirstName,
        dbo.fn_GetFirstName(ContactName) AS UDF_FirstName
    FROM dbo.t_w3_schools_customers
)
SELECT * 
FROM CTE_Compare
WHERE AdHoc_FirstName <> UDF_FirstName 
   OR (AdHoc_FirstName IS NULL AND UDF_FirstName IS NOT NULL)
   OR (AdHoc_FirstName IS NOT NULL AND UDF_FirstName IS NULL);