USE dbproject;
DROP PROCEDURE IF EXISTS qdmanageraccesss;
CREATE PROCEDURE qdmanageraccesss (IN mng int)
       BEGIN
            SELECT * FROM q_descriptive as q 
            where q.questionid in (SELECT question.id from question
            EXCEPT
            SELECT approving.questionid from approving);
       END;

CALL qdmanageraccesss();

DROP PROCEDURE IF EXISTS qmmanageraccesss;
CREATE PROCEDURE qmmanageraccesss (IN mng int)
       BEGIN
            SELECT * FROM q_multiple_choice as q INNER JOIN options as op on op.questionid = q.questionid
            where q.questionid in (SELECT question.id from question
            EXCEPT
            SELECT approving.questionid from approving)
            ORDER BY q.questionid ASC , op.number ASC;
       END;

CALL qmmanageraccesss();