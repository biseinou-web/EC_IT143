USE EC_IT143_DA; 

GO 

 

CREATE VIEW dbo.v_myfc_player_count_by_team 

AS 

/*************************************************************************************************** 

Name: dbo.v_myfc_player_count_by_team 

Purpose: Counts total players per team. 

Author: Seinou Bi Durand 

***************************************************************************************************/ 

SELECT  

    t_id, 

    COUNT(pl_id) AS total_players 

FROM MyFC.dbo.tblPlayerDim 

GROUP BY t_id; 

GO 