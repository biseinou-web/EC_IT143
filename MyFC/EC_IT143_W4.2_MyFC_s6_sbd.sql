USE EC_IT143_DA; 

GO 

 

TRUNCATE TABLE dbo.t_myfc_player_count_by_team; 

 

INSERT INTO dbo.t_myfc_player_count_by_team (t_id, total_players) 

SELECT t_id, total_players 

FROM dbo.v_myfc_player_count_by_team; 