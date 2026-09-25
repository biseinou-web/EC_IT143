USE EC_IT143_DA; 

GO 

 

CREATE VIEW dbo.v_simpsons_spending_by_member 

AS 

/*************************************************************************************************** 

Name: dbo.v_simpsons_spending_by_member 

Purpose: Aggregates spending amount by card member. 

Author: Seinou Bi Durand 

***************************************************************************************************/ 

SELECT  

    Card_Member, 

    SUM(Amount) AS total_spending 

FROM Simpsons.dbo.Planet_Express 

GROUP BY Card_Member; 

GO  