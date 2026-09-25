USE EC_IT143_DA; 

GO 

 

CREATE PROCEDURE dbo.p_myfc_load_player_count_by_team 

AS 

/*************************************************************************************************** 

Name: dbo.p_myfc_load_player_count_by_team 

Purpose: Loads data into t_myfc_player_count_by_team from v_myfc_player_count_by_team. 

Author: Seinou Bi Durand 

***************************************************************************************************/ 

BEGIN 

    SET NOCOUNT ON; 

 

    TRUNCATE TABLE dbo.t_myfc_player_count_by_team; 

 

    INSERT INTO dbo.t_myfc_player_count_by_team (t_id, total_players) 

    SELECT t_id, total_players 

    FROM dbo.v_myfc_player_count_by_team; 

END;

GO 