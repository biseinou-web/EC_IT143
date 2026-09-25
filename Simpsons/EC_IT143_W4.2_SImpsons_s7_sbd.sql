USE EC_IT143_DA; 

GO 

 

CREATE PROCEDURE dbo.p_simpsons_load_spending_by_member 

AS 

/*************************************************************************************************** 

Name: dbo.p_simpsons_load_spending_by_member 

Purpose: Loads data into t_simpsons_spending_by_member from v_simpsons_spending_by_member. 

Author: Seinou Bi Durand 

***************************************************************************************************/ 

BEGIN 

    SET NOCOUNT ON; 

 

    TRUNCATE TABLE dbo.t_simpsons_spending_by_member; 

 

    INSERT INTO dbo.t_simpsons_spending_by_member (Card_Member, total_spending) 

    SELECT Card_Member, total_spending 

    FROM dbo.v_simpsons_spending_by_member; 

END; 

GO 