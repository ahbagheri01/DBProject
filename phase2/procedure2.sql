
USE dbproject;
DROP PROCEDURE IF EXISTS optionals_question;
CREATE PROCEDURE optionals_question (IN mng int, IN from_date DATETIME,IN to_date DATETIME)
       BEGIN
              SELECT am.questionid AS QID, op.number AS opt, op.txt, COUNT(*) 
              From a_multi_choice as am INNER JOIN options as op on am.questionid = op.questionid
              where am.answerid in (
                     SELECT am.answerid FROM survey as sr INNER JOIN question as qu on qu.surveyid = sr.id INNER JOIN a_multi_choice as am on am.questionid = qu.id INNER JOIN answer an on an.id = am.answerid
                     where sr.managerid = mng AND an.createtion_date BETWEEN from_date AND to_date
                     AND am.answerid IS NOT NULL
              )
              GROUP BY QID,opt;
       END;

CALL optionals_question(1,"1990-01-23 12:45:56", "2025-01-23 12:45:56");