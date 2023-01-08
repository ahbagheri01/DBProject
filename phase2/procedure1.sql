
USE dbproject;
DROP PROCEDURE IF EXISTS participate_surveyqd;
CREATE PROCEDURE participate_surveyqd (IN passnum int, IN ticketnum int)
       BEGIN
          SELECT qm.questionid AS ID,qm.txt AS Question FROM q_descriptive qm where questionid in (
               SELECT qu.id FROM dbproject.ticket as tk INNER JOIN dbproject.question as qu on tk.surveyid = qu.surveyid INNER JOIN survey as sr on sr.id = tk.surveyid 
          where sr.active = true AND tk.ticket_typeid = qu.ticket_typeid AND tk.passport_number = passnum AND tk.ticket_number = ticketnum
          AND EXISTS (SELECT ap.questionid FROM dbproject.approving as ap where ap.questionid = qu.id) AND tk.participated = false
          );
       END;
CALL participate_surveyqd(12344,4);


DROP PROCEDURE IF EXISTS participate_surveyqm;
CREATE PROCEDURE participate_surveyqm (IN passnum int, IN ticketnum int)
       BEGIN
          SELECT qm.questionid AS ID,qm.txt AS Question, op.number AS num, op.txt AS choice 
          FROM q_multiple_choice as qm INNER JOIN options as op on op.questionid = qm.questionid
          where qm.questionid in (
               SELECT qu.id FROM dbproject.ticket as tk INNER JOIN dbproject.question as qu on tk.surveyid = qu.surveyid INNER JOIN survey as sr on sr.id = tk.surveyid 
          where sr.active = true AND tk.ticket_typeid = qu.ticket_typeid AND tk.passport_number = passnum AND tk.ticket_number = ticketnum
          AND EXISTS (SELECT ap.questionid FROM dbproject.approving as ap where ap.questionid = qu.id) AND tk.participated = false
          ) ORDER BY ID ASC, num ASC;
       END;
CALL participate_surveyqm(12344,4);
