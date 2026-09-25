USE EC_IT143_DA; 

GO 

 

IF OBJECT_ID(‘dbo.t_simpsons_spending_by_member’, ‘U’) IS NOT NULL 

    DROP TABLE dbo.t_simpsons_spending_by_member; 

 

SELECT *  

INTO dbo.t_simpsons_spending_by_member 

FROM dbo.v_simpsons_spending_by_member; 