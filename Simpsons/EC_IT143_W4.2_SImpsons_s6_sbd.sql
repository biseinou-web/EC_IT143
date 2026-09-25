 USE EC_IT143_DA; 

GO 

 

TRUNCATE TABLE dbo.t_simpsons_spending_by_member; 

 

INSERT INTO dbo.t_simpsons_spending_by_member (Card_Member, total_spending) 

SELECT Card_Member, total_spending 

FROM dbo.v_simpsons_spending_by_member; 