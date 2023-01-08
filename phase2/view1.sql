create view view1 as 
    SELECT survey.id, survey.start_data, survey.end_date, survey.createtion_date, CASE survey.active
		WHEN 1 THEN 'YES'
        ELSE 'NO'
	end ACTIVE, COUNT(DISTINCT question.id) as ALLQ, 
    COUNT(DISTINCT ticket.ticket_number)/(SELECT COUNT(*) FROM ticket as t WHERE t.flight_number = survey.flightid) AS participantsRatio  
    
FROM ticket INNER JOIN survey on ticket.surveyid = survey.id INNER JOIN question on question.surveyid = survey.id
GROUP BY survey.id, survey.start_data, survey.end_date, survey.createtion_date,survey.active;

SELECT * FROM view1;

