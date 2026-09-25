USE EC_IT143_DA; 

GO 

 

CREATE PROCEDURE dbo.p_hello_world_load 

AS 

/*************************************************************************************************** 

Name: dbo.p_hello_world_load 

Purpose: Loads data from v_hello_world_load into t_hello_world. 

Author: Seinou Bi Durand 

***************************************************************************************************/ 

BEGIN 

    SET NOCOUNT ON; 

 

    TRUNCATE TABLE dbo.t_hello_world; 

 

    INSERT INTO dbo.t_hello_world (my_message) 

    SELECT my_message 

    FROM dbo.v_hello_world_load; 

END; 

GO  