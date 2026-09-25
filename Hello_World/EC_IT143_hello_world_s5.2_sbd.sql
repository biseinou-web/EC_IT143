USE EC_IT143_DA; 

GO 

 

IF OBJECT_ID('dbo.t_hello_world', 'U') IS NOT NULL 

    DROP TABLE dbo.t_hello_world; 

 

CREATE TABLE dbo.t_hello_world 

( 

    My_message VARCHAR(50) NOT NULL, 

    CONSTRAINT PK_t_hello_world PRIMARY KEY CLUSTERED (my_message ASC) 

); 