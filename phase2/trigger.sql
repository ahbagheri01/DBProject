USE dbproject;
DROP trigger IF EXISTS trgupdate;
create trigger trgupdate
 before update
 on survey
 for each row
 IF (NEW.start_data > NEW.end_date) OR
 (NEW.start_data > OLD.end_date) OR
 (NEW.start_data < some(select end_date from survey where survey.id <> OLD.id)) THEN
 SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Error!';
 END IF;
 


 
DROP trigger IF EXISTS trginsert;
create trigger trginsert
 before insert
 on survey
 for each row
 IF (NEW.start_data > NEW.end_date) or 
 (NEW.start_data < some(select end_date from survey)) THEN
 SIGNAL SQLSTATE '50002' SET MESSAGE_TEXT = 'Error';
 END IF;