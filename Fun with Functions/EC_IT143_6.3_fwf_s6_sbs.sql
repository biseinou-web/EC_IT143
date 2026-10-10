-- Step 6: Verify the user-defined function
-- Script name: EC_IT143_6.3_fwf_s6_sbs.sql
-- Description: Test the function directly with a sample name to verify output.

SELECT dbo.fn_GetFirstName('John Smith') AS TestFirstName;