-- Step 4: Create an AFTER UPDATE trigger
-- Script name: EC_IT143_6.3_fwt_s4_sbs.sql
-- Description: Automatically updates LastModifiedDate and LastModifiedBy when a row is modified.

IF OBJECT_ID('dbo.trg_t_w3_schools_customers_LastModified', 'TR') IS NOT NULL
    DROP TRIGGER dbo.trg_t_w3_schools_customers_LastModified;
GO

CREATE TRIGGER dbo.trg_t_w3_schools_customers_LastModified
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    
    UPDATE dbo.t_w3_schools_customers
    SET LastModifiedDate = GETDATE(),
        LastModifiedBy = SUSER_NAME()
    FROM dbo.t_w3_schools_customers c
    INNER JOIN inserted i ON c.CustomerID = i.CustomerID;
END;
GO