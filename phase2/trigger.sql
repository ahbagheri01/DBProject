USE dbproject;
DROP trigger IF EXISTS trg1;
create trigger trg1
 before update
 on survey
 for each row
 IF (NEW.start_data < OLD.end_date) or (NEW.start_data > NEW.end_date) THEN
 SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Error!';
 END IF;
 


 
DROP trigger IF EXISTS trg2;
create trigger trg2
 before insert
 on survey
 for each row
 IF (NEW.start_data > NEW.end_date) or (NEW.start_data < some(select end_date from survey)) THEN
 SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'Error';
 END IF;