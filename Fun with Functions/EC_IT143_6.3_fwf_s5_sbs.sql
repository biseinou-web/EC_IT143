-- Step 5: Create a user-defined scalar function
-- Script name: EC_IT143_6.3_fwf_s5_sbs.sql
-- What does this function do? It extracts the first name from a full contact name string.

IF OBJECT_ID('dbo.fn_GetFirstName', 'FN') IS NOT NULL
    DROP FUNCTION dbo.fn_GetFirstName;
GO

CREATE FUNCTION dbo.fn_GetFirstName
(
    @FullName VARCHAR(100)
)
RETURNS VARCHAR(50)
AS
BEGIN
    DECLARE @FirstName VARCHAR(50);
    SET @FirstName = SUBSTRING(@FullName, 1, CHARINDEX(' ', @FullName + ' ') - 1);
    RETURN @FirstName;
END;
GO