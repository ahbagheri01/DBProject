
USE dbproject;
DROP PROCEDURE IF EXISTS dec_question;
CREATE PROCEDURE dec_question (IN mng int, IN pattern varchar(50), OUT answerids int)
       BEGIN
              SELECT ad.answerid INTO answerids FROM survey as sr INNER JOIN question as qu on qu.surveyid = sr.id INNER JOIN a_descriptive as ad on ad.questionid = qu.id INNER JOIN answer an on an.id = ad.answerid
                     where sr.managerid = mng AND ad.answerid IS NOT NULL AND ad.txt LIKE CONCAT('%',pattern,'%');

       END;

CALL dec_question(1,"ali",@answerids);
SELECT @answerids;

SELECT an.ticketid AS customer_ticketID, qd.txt AS Q, ad.txt AS Ans 
FROM answer as an INNER JOIN q_descriptive as qd on qd.questionid = an.questionid INNER JOIN
a_descriptive as ad on ad.questionid = an.questionid
where ad.answerid in (SELECT @answerids);




