-- Step 5: Test results to see if they are as expected
-- Script name: EC_IT143_6.3_fwt_s5_sbs.sql


UPDATE dbo.t_w3_schools_customers
SET ContactName = ContactName
WHERE CustomerID = 1;


SELECT CustomerID, ContactName, LastModifiedDate, LastModifiedBy
FROM dbo.t_w3_schools_customers
WHERE CustomerID = 1;