USE EC_IT143_DA; 

GO 

 

IF OBJECT_ID('dbo.t_myfc_player_count_by_team', 'U') IS NOT NULL 

    DROP TABLE dbo.t_myfc_player_count_by_team; 

 

SELECT *  

INTO dbo.t_myfc_player_count_by_team 

FROM dbo.v_myfc_player_count_by_team; 