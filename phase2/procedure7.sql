USE dbproject;
DROP PROCEDURE IF EXISTS statsquestionqd;
CREATE PROCEDURE statsquestionqd (IN questionID int)
       BEGIN
                SELECT DISTINCT t.passenger_id,a.txt FROM question as q INNER JOIN survey as s on s.id = q.surveyid INNER JOIN flight on flight.flight_number = s.flightid INNER JOIN a_descriptive as a on a.questionid = q.id
                INNER JOIN ticket as t on t.flight_number = flight.flight_number 
                where flight.airlineid = s.airlineid AND q.id = questionID AND t.passenger_id in (SELECT t2.passenger_id FROM  ticket as t2 INNER JOIN flight as f2 on f2.flight_number = t2.ticket_number
                                                                        WHERE f2.airlineid = s.airlineid GROUP BY t2.passenger_id HAVING (COUNT(*) > 3)
                                                                        )
ORDER BY RAND();
       END;

CALL statsquestionqd(1);