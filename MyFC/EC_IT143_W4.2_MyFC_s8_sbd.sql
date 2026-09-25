USE EC_IT143_DA; 

GO 

 

EXEC dbo.p_myfc_load_player_count_by_team; 

 

SELECT * FROM dbo.t_myfc_player_count_by_team; 