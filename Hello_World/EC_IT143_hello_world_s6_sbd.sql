USE EC_IT143_DA; 

GO 

 

TRUNCATE TABLE dbo.t_hello_world; 

 

INSERT INTO dbo.t_hello_world (my_message) 

SELECT my_message 

FROM dbo.v_hello_world_load; 

); 