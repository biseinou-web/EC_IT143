SELECT  

    T_id, 

    COUNT(pl_id) AS total_players 

FROM MyFC.dbo.tblPlayerDim 

GROUP BY t_id;