
USE dbproject;
DROP PROCEDURE IF EXISTS participate_survey;
CREATE PROCEDURE participate_survey (IN passnum int, IN ticketnum int,OUT questions_id int)
       BEGIN
            SELECT qu.id INTO questions_id FROM dbproject.ticket as tk INNER JOIN dbproject.question as qu on tk.surveyid = qu.surveyid INNER JOIN survey as sr on sr.id = tk.surveyid where sr.active = true;
            #SELECT txt FROM q_descriptive where questionid in @questions_id;
       END;

CALL participate_survey(1,2, @questionids);
SELECT * FROM q_descriptive where questionid in (SELECT @questionids);
SELECT * FROM q_descriptive where questionid in (SELECT @questionids);


