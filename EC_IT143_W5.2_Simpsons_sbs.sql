/***************************************************************************************************************** 

NAME:    EC_IT143_W5.2_Simpsons_sh.sql 

ASGN:    Final Project: My Communities Analysis – Create Answers 

DATE:    2026-10-03 

AUTH:    Seinou Bisahi Jean Yves Durand Hortensy 

DESC:    SQL queries answering 4 business questions for the Simpsons community dataset. 

******************************************************************************************************************/ 

 

USE Simpsons; 

GO

 

-- QUESTION 1 (Author: Seinou Bisahi Jean Yves Durand Hortensy – Self) 

-- Q: What is the total credit card spending for each family member across different transaction descriptions? 

SELECT  

    Member_Name, 

    Description, 

    SUM(Debit) AS total_debit_amount, 

    COUNT(*) AS total_transactions 

FROM dbo.FBS_Viza_Costmo 

GROUP BY Member_Name, Description 

ORDER BY total_debit_amount DESC; 

GO

 

-- QUESTION 2 (Author: Seinou Bisahi Jean Yves Durand Hortensy – Self) 

-- Q: How do the transaction amounts recorded under Planet Express categories compare with individual credit card debits? 

SELECT  

    p.Category, 

    SUM(p.Amount) AS total_planet_express_amount, 

    SUM(v.Debit) AS total_viza_debit_amount 

FROM dbo.Planet_Express AS p 

FULL OUTER JOIN dbo.FBS_Viza_Costmo AS v ON p.Card_Member = v.Member_Name 

GROUP BY p.Category 

ORDER BY total_planet_express_amount DESC; 

GO 

 

-- QUESTION 3 (Author: Seinou Bisahi Jean Yves Durand Hortensy – Self) 

-- Q: Which credit transactions listed under cleared status account for the highest total category spending? 

SELECT  

    Status, 

    Member_Name, 

    SUM(Debit) AS total_cleared_debit 

FROM dbo.FBS_Viza_Costmo 

WHERE Status = 'Cleared' 

GROUP BY Status, Member_Name 

ORDER BY total_cleared_debit DESC; 

GO

 

-- QUESTION 4 (Author: Samuel Bitum - Peer Question ) 

-- Q: How many transactions and how much total Debit did each member make on FBS Viza Costmo, compared with  

--    their total Amount on Planet Express? Show the member name, transaction counts, total Debit, and total Amount  

--    so a household budget manager can compare the two cards. 

WITH VizaSummary AS ( 

    SELECT  

        Member_Name, 

        COUNT(*) AS viza_transaction_count, 

        SUM(Debit) AS total_viza_debit 

    FROM dbo.FBS_Viza_Costmo 

    GROUP BY Member_Name 

), 

PlanetSummary AS ( 

    SELECT  

        Card_Member, 

        COUNT(*) AS planet_transaction_count, 

        SUM(Amount) AS total_planet_amount 

    FROM dbo.Planet_Express 

    GROUP BY Card_Member 

) 

SELECT  

    ISNULL(v.Member_Name, p.Card_Member) AS member_name, 

    ISNULL(v.viza_transaction_count, 0) AS viza_transaction_count, 

    ISNULL(v.total_viza_debit, 0) AS total_viza_debit, 

    ISNULL(p.planet_transaction_count, 0) AS planet_transaction_count, 

    ISNULL(p.total_planet_amount, 0) AS total_planet_amount 

FROM VizaSummary v 

FULL OUTER JOIN PlanetSummary p  

    ON v.Member_Name = p.Card_Member 

ORDER BY member_name; 

GO 

 

 

 

 