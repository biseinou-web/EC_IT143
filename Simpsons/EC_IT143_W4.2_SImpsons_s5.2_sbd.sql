 

USE EC_IT143_DA; 

GO 

 

IF OBJECT_ID('dbo.t_simpsons_spending_by_member', 'U') IS NOT NULL 

    DROP TABLE dbo.t_simpsons_spending_by_member; 

 

CREATE TABLE dbo.t_simpsons_spending_by_member 

( 

    Card_Member VARCHAR(100) NOT NULL, 

    Total_spending FLOAT NOT NULL, 

    CONSTRAINT PK_t_simpsons_spending_by_member PRIMARY KEY CLUSTERED (Card_Member ASC) 

); 