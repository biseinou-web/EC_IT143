/***************************************************************************************************************** 

NAME:    EC_IT143_W5.2_MyFC_sh.sql 

ASGN:    Final Project: My Communities Analysis – Create Answers 

DATE:    2026-10-03 

AUTH:    Seinou Bisahi Jean Yves Durand Hortensy 

DESC:    SQL queries answering 4 business questions for the MyFC community dataset. 

******************************************************************************************************************/ 

 

USE MyFC; 

GO

 

-- QUESTION 1 (Author: Seinou Bisahi Jean Yves Durand Hortensy – Self) 

-- Q: Which active players are currently earning a monthly salary above the team average salary? 

SELECT  

    p.pl_id, 

    p.pl_name, 

    p.pl_num, 

    f.mtd_salary 

FROM dbo.tblPlayerDim AS p 

INNER JOIN dbo.tblPlayerFact AS f ON p.pl_id = f.pl_id 

WHERE f.mtd_salary > (SELECT AVG(mtd_salary) FROM dbo.tblPlayerFact) 

ORDER BY f.mtd_salary DESC; 

GO 

 

-- QUESTION 2 (Author: Seinou Bisahi Jean Yves Durand Hortensy – Self) 

-- Q: How has the total monthly salary expenditure for players evolved over the recorded evaluation dates? 

SELECT  

    f.as_of_date, 

    COUNT(DISTINCT f.pl_id) AS total_players, 

    SUM(f.mtd_salary) AS total_monthly_salary_expenditure, 

    AVG(f.mtd_salary) AS average_player_salary 

FROM dbo.tblPlayerFact AS f 

GROUP BY f.as_of_date 

ORDER BY f.as_of_date ASC; 

GO

 

-- QUESTION 3 (Author: Seinou Bisahi Jean Yves Durand Hortensy – Self) 

-- Q: Who are the top three highest-paid players assigned to specific position IDs within the squad? 

SELECT TOP 3 

    p.pl_id, 

    p.pl_name, 

    p.p_id AS position_id, 

    p.pl_num, 

    f.mtd_salary 

FROM dbo.tblPlayerDim AS p 

INNER JOIN dbo.tblPlayerFact AS f ON p.pl_id = f.pl_id 

ORDER BY f.mtd_salary DESC; 

GO

 

-- QUESTION 4 (Author: Joseph Terkper – Peer Question) 

-- Q: How could you use the pl_id field to find the total salary for each player over time? 

SELECT  

    p.pl_id, 

    p.pl_name, 

    SUM(f.mtd_salary) AS total_accumulated_salary, 

    COUNT(f.as_of_date) AS pay_periods_count 

FROM dbo.tblPlayerDim AS p 

INNER JOIN dbo.tblPlayerFact AS f ON p.pl_id = f.pl_id 

GROUP BY p.pl_id, p.pl_name 

ORDER BY total_accumulated_salary DESC; 

GO 

 