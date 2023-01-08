USE dbproject;

DROP PROCEDURE IF EXISTS qmmanageraccesss;
CREATE PROCEDURE qmmanageraccesss (IN mng int)
       BEGIN
          SET @COUNTNUM = 1;
          SELECT COUNT(DISTINCT t.ticket_number) INTO @COUNTNUM FROM ticket as t LEFT JOIN survey as sr on sr.id = t.surveyid LEFT JOIN question as q on q.surveyid = sr.id LEFT JOIN ticket_type as tkt on tkt.typeid = t.ticket_typeid where (1 in (SELECT air.managerID FROM ticket as t2 INNER JOIN flight as f INNER JOIN airline as air where t.ticket_number = t2.ticket_number)) OR (mng in (SELECT as2.assistanceid FROM ticket as t2 INNER JOIN flight as f INNER JOIN airline as air INNER JOIN assistance as as2 on as2.adminid = air.managerID where t.ticket_number = t2.ticket_number));
          SELECT q.id,tkt.type_string,COUNT(*)/@COUNTNUM FROM ticket as t LEFT JOIN survey as sr on sr.id = t.surveyid LEFT JOIN question as q on q.surveyid = sr.id LEFT JOIN ticket_type as tkt on tkt.typeid = t.ticket_typeid where ((1 in (SELECT air.managerID FROM ticket as t2 INNER JOIN flight as f INNER JOIN airline as air where t.ticket_number = t2.ticket_number)) OR (mng in (SELECT as2.assistanceid FROM ticket as t2 INNER JOIN flight as f INNER JOIN airline as air INNER JOIN assistance as as2 on as2.adminid = air.managerID where t.ticket_number = t2.ticket_number))) AND q.id IS NOT NULL
          GROUP BY q.id,tkt.type_string;
       END;

CALL qmmanageraccesss(1);