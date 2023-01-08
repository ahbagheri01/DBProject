USE dbproject;
DROP PROCEDURE IF EXISTS statsquestionqd;
CREATE PROCEDURE statsquestionqd (IN questionID)
       BEGIN
               SELECT a.name AS AirlineName, COUNT(*) AS participant_number FROM airline as a INNER JOIN survey as s on s.airlineid = a.id INNER JOIN ticket as t on t.surveyid = s.id
               where t.participated = true 
               GROUP BY a.id 
               ORDER BY participant_number ASC;
       END;

CALL statsquestionqd();

USE dbproject;
DROP PROCEDURE IF EXISTS statsquestionqm;
CREATE PROCEDURE statsquestionqm (IN questionID)
       BEGIN
               SELECT a.name AS AirlineName, COUNT(*) AS participant_number FROM airline as a INNER JOIN survey as s on s.airlineid = a.id INNER JOIN ticket as t on t.surveyid = s.id
               where t.participated = true 
               GROUP BY a.id 
               ORDER BY participant_number ASC;
       END;

CALL statsquestionqm();