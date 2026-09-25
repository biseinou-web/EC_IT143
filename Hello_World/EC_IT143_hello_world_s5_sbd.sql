USE EC_IT143_DA; 

GO 

 

IF OBJECT_ID('dbo.t_hello_world', 'U') IS NOT NULL 

    DROP TABLE dbo.t_hello_world; 

 

SELECT *  

INTO dbo.t_hello_world 

FROM dbo.v_hello_world_load; 