USE EC_IT143_DA; 

GO 

 

IF OBJECT_ID('dbo.t_myfc_player_count_by_team', 'U') IS NOT NULL 

    DROP TABLE dbo.t_myfc_player_count_by_team; 

 

CREATE TABLE dbo.t_myfc_player_count_by_team 

( 

    t_id INT NOT NULL, 

    total_players INT NOT NULL, 

    CONSTRAINT PK_t_myfc_player_count_by_team PRIMARY KEY CLUSTERED (t_id ASC) 

); 