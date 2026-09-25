USE EC_IT143_DA; 

GO 

 

EXEC dbo.p_simpsons_load_spending_by_member; 

 

SELECT * FROM dbo.t_simpsons_spending_by_member; 