
USE dbproject;
DROP PROCEDURE IF EXISTS participate_survey;
CREATE PROCEDURE participate_survey (IN passnum int, IN ticketnum int,OUT questions_id int)
       BEGIN
            SELECT qu.id INTO questions_id FROM dbproject.ticket as tk INNER JOIN dbproject.question as qu on tk.surveyid = qu.surveyid INNER JOIN survey as sr on sr.id = tk.surveyid 
            where sr.active = true AND tk.ticket_typeid = qu.ticket_typeid 
            AND EXISTS (SELECT ap.questionid FROM dbproject.approving as ap where ap.questionid = qu.id);
       END;

CALL participate_survey(1,2, @questionids);
SELECT qm.questionid AS ID,qm.txt AS Question FROM q_descriptive qm where questionid in (SELECT @questionids);

SELECT qm.questionid AS ID,qm.txt AS Question, op.number AS num, op.txt AS choice 
FROM q_multiple_choice as qm INNER JOIN options as op on op.questionid = qm.questionid
where qm.questionid in (SELECT @questionids)
ORDER BY ID ASC, num ASC;


