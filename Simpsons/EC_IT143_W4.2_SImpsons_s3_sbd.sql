SELECT  

    Card_Member, 

    SUM(Amount) AS total_spending 

FROM Simpsons.dbo.Planet_Express 

GROUP BY Card_Member; 