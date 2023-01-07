USE dbproject;
DROP PROCEDURE IF EXISTS not_approvedqd;
CREATE PROCEDURE not_approvedqd ()
       BEGIN
            SELECT * FROM q_descriptive as q 
            where q.questionid in (SELECT question.id from question
            EXCEPT
            SELECT approving.questionid from approving);
       END;

CALL not_approvedqd();

DROP PROCEDURE IF EXISTS not_approvedqm;
CREATE PROCEDURE not_approvedqm ()
       BEGIN
            SELECT * FROM q_multiple_choice as q INNER JOIN options as op on op.questionid = q.questionid
            where q.questionid in (SELECT question.id from question
            EXCEPT
            SELECT approving.questionid from approving)
            ORDER BY q.questionid ASC , op.number ASC;
       END;

CALL not_approvedqm();